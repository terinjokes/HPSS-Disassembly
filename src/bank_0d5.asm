; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0d5", ROMX[$4000], BANK[$d5]

    db $d5

    ld bc, $5b00                                  ; $4001: $01 $00 $5b
    ld bc, $058d                                  ; $4004: $01 $8d $05
    ld e, a                                       ; $4007: $5f
    inc bc                                        ; $4008: $03
    ld bc, $5f04                                  ; $4009: $01 $04 $5f
    inc bc                                        ; $400c: $03
    xor e                                         ; $400d: $ab
    inc l                                         ; $400e: $2c
    dec hl                                        ; $400f: $2b
    dec l                                         ; $4010: $2d
    ld bc, $5f04                                  ; $4011: $01 $04 $5f
    inc bc                                        ; $4014: $03

jr_0d5_4015:
    ld sp, $f439                                  ; $4015: $31 $39 $f4
    dec a                                         ; $4018: $3d
    ld bc, $5f00                                  ; $4019: $01 $00 $5f
    inc bc                                        ; $401c: $03
    adc l                                         ; $401d: $8d
    dec b                                         ; $401e: $05
    jr nc, jr_0d5_4056                            ; $401f: $30 $35

    ld [bc], a                                    ; $4021: $02
    nop                                           ; $4022: $00
    adc e                                         ; $4023: $8b
    inc l                                         ; $4024: $2c
    ld e, l                                       ; $4025: $5d
    ld [bc], a                                    ; $4026: $02
    adc l                                         ; $4027: $8d
    dec b                                         ; $4028: $05
    ld hl, $2c04                                  ; $4029: $21 $04 $2c

jr_0d5_402c:
    jr nc, jr_0d5_4015                            ; $402c: $30 $e7

    jr jr_0d5_403b                                ; $402e: $18 $0b

    dec l                                         ; $4030: $2d

Jump_0d5_4031:
    ld bc, $2904                                  ; $4031: $01 $04 $29
    inc h                                         ; $4034: $24
    ld c, c                                       ; $4035: $49
    dec h                                         ; $4036: $25
    db $ec                                        ; $4037: $ec
    jr nc, jr_0d5_403b                            ; $4038: $30 $01

    nop                                           ; $403a: $00

jr_0d5_403b:
    jr nc, jr_0d5_4076                            ; $403b: $30 $39

    ld e, a                                       ; $403d: $5f
    inc bc                                        ; $403e: $03
    ld l, d                                       ; $403f: $6a
    jr z, jr_0d5_4043                             ; $4040: $28 $01

    nop                                           ; $4042: $00

jr_0d5_4043:
    inc l                                         ; $4043: $2c
    add hl, de                                    ; $4044: $19
    ld e, l                                       ; $4045: $5d
    ld [bc], a                                    ; $4046: $02
    ld b, $18                                     ; $4047: $06 $18
    nop                                           ; $4049: $00
    nop                                           ; $404a: $00
    ld b, $18                                     ; $404b: $06 $18
    inc b                                         ; $404d: $04
    db $10                                        ; $404e: $10
    add hl, bc                                    ; $404f: $09
    jr z, jr_0d5_4053                             ; $4050: $28 $01

    inc b                                         ; $4052: $04

jr_0d5_4053:
    ld [$ef24], sp                                ; $4053: $08 $24 $ef

jr_0d5_4056:
    inc a                                         ; $4056: $3c
    xor h                                         ; $4057: $ac
    dec l                                         ; $4058: $2d
    ld bc, $5f00                                  ; $4059: $01 $00 $5f
    inc bc                                        ; $405c: $03
    ld c, h                                       ; $405d: $4c
    jr nc, jr_0d5_40cb                            ; $405e: $30 $6b

    ld de, $0001                                  ; $4060: $11 $01 $00
    ld e, e                                       ; $4063: $5b
    ld bc, $2ccb                                  ; $4064: $01 $cb $2c
    ld e, a                                       ; $4067: $5f
    inc bc                                        ; $4068: $03
    ld bc, $ef08                                  ; $4069: $01 $08 $ef
    inc [hl]                                      ; $406c: $34
    ld b, [hl]                                    ; $406d: $46

Jump_0d5_406e:
    inc e                                         ; $406e: $1c
    or [hl]                                       ; $406f: $b6
    dec h                                         ; $4070: $25
    nop                                           ; $4071: $00
    nop                                           ; $4072: $00
    ld [$3420], sp                                ; $4073: $08 $20 $34

jr_0d5_4076:
    dec l                                         ; $4076: $2d
    ld l, l                                       ; $4077: $6d
    inc [hl]                                      ; $4078: $34
    ld bc, $8d04                                  ; $4079: $01 $04 $8d
    dec b                                         ; $407c: $05
    ld e, a                                       ; $407d: $5f
    inc bc                                        ; $407e: $03
    pop af                                        ; $407f: $f1
    add hl, sp                                    ; $4080: $39
    ld bc, $6c00                                  ; $4081: $01 $00 $6c
    dec h                                         ; $4084: $25
    ld e, l                                       ; $4085: $5d
    ld [bc], a                                    ; $4086: $02
    ld c, b                                       ; $4087: $48
    jr nz, jr_0d5_408a                            ; $4088: $20 $00

jr_0d5_408a:
    nop                                           ; $408a: $00
    cpl                                           ; $408b: $2f
    dec h                                         ; $408c: $25
    ld [$b520], sp                                ; $408d: $08 $20 $b5
    dec h                                         ; $4090: $25
    nop                                           ; $4091: $00
    inc b                                         ; $4092: $04
    dec c                                         ; $4093: $0d
    jr c, jr_0d5_402c                             ; $4094: $38 $96

    add hl, hl                                    ; $4096: $29
    ld a, [bc]                                    ; $4097: $0a
    jr z, jr_0d5_409b                             ; $4098: $28 $01

    nop                                           ; $409a: $00

jr_0d5_409b:
    xor e                                         ; $409b: $ab
    dec l                                         ; $409c: $2d
    ld e, a                                       ; $409d: $5f
    inc bc                                        ; $409e: $03
    xor [hl]                                      ; $409f: $ae
    add hl, bc                                    ; $40a0: $09
    ld bc, $7000                                  ; $40a1: $01 $00 $70
    add hl, hl                                    ; $40a4: $29
    ld e, $1b                                     ; $40a5: $1e $1b
    ld e, e                                       ; $40a7: $5b
    ld bc, $0022                                  ; $40a8: $01 $22 $00
    or [hl]                                       ; $40ab: $b6
    dec h                                         ; $40ac: $25
    ld c, d                                       ; $40ad: $4a
    jr nz, jr_0d5_412a                            ; $40ae: $20 $7a

    ld b, d                                       ; $40b0: $42
    ld [bc], a                                    ; $40b1: $02
    inc b                                         ; $40b2: $04
    ld [de], a                                    ; $40b3: $12
    ld c, b                                       ; $40b4: $48
    ld e, c                                       ; $40b5: $59
    ld a, [hl-]                                   ; $40b6: $3a
    daa                                           ; $40b7: $27
    inc e                                         ; $40b8: $1c
    nop                                           ; $40b9: $00
    nop                                           ; $40ba: $00
    ret nc                                        ; $40bb: $d0

    dec c                                         ; $40bc: $0d
    ld e, a                                       ; $40bd: $5f
    inc bc                                        ; $40be: $03
    ld a, [bc]                                    ; $40bf: $0a
    jr z, jr_0d5_40c3                             ; $40c0: $28 $01

    nop                                           ; $40c2: $00

jr_0d5_40c3:
    ld a, c                                       ; $40c3: $79
    dec c                                         ; $40c4: $0d
    db $ec                                        ; $40c5: $ec
    jr nz, jr_0d5_40e6                            ; $40c6: $20 $1e

    dec de                                        ; $40c8: $1b
    ld l, b                                       ; $40c9: $68
    inc e                                         ; $40ca: $1c

jr_0d5_40cb:
    rst $38                                       ; $40cb: $ff
    ld a, a                                       ; $40cc: $7f
    ld h, e                                       ; $40cd: $63
    ld a, h                                       ; $40ce: $7c
    sub $2d                                       ; $40cf: $d6 $2d
    ld b, h                                       ; $40d1: $44
    ld [$427b], sp                                ; $40d2: $08 $7b $42
    ld h, e                                       ; $40d5: $63
    ld a, h                                       ; $40d6: $7c
    rst $38                                       ; $40d7: $ff
    ld a, a                                       ; $40d8: $7f
    ld bc, $f100                                  ; $40d9: $01 $00 $f1
    ld de, $035f                                  ; $40dc: $11 $5f $03
    inc b                                         ; $40df: $04
    inc d                                         ; $40e0: $14
    ld [bc], a                                    ; $40e1: $02
    nop                                           ; $40e2: $00
    cpl                                           ; $40e3: $2f
    add hl, hl                                    ; $40e4: $29
    ld e, e                                       ; $40e5: $5b

jr_0d5_40e6:
    ld bc, $035f                                  ; $40e6: $01 $5f $03
    ld b, e                                       ; $40e9: $43
    nop                                           ; $40ea: $00
    sub $2d                                       ; $40eb: $d6 $2d
    ld a, [bc]                                    ; $40ed: $0a
    inc l                                         ; $40ee: $2c
    ld a, d                                       ; $40ef: $7a
    ld b, d                                       ; $40f0: $42
    ld [hl+], a                                   ; $40f1: $22
    nop                                           ; $40f2: $00
    ld [hl], e                                    ; $40f3: $73
    add hl, hl                                    ; $40f4: $29
    ld a, d                                       ; $40f5: $7a
    ld b, d                                       ; $40f6: $42
    and a                                         ; $40f7: $a7
    inc e                                         ; $40f8: $1c
    ld bc, $4d00                                  ; $40f9: $01 $00 $4d
    dec l                                         ; $40fc: $2d
    ld e, a                                       ; $40fd: $5f
    inc bc                                        ; $40fe: $03
    inc de                                        ; $40ff: $13
    ld a, [de]                                    ; $4100: $1a
    ld [bc], a                                    ; $4101: $02
    nop                                           ; $4102: $00
    dec l                                         ; $4103: $2d
    dec l                                         ; $4104: $2d
    ld e, e                                       ; $4105: $5b
    ld bc, $035f                                  ; $4106: $01 $5f $03
    or [hl]                                       ; $4109: $b6
    dec h                                         ; $410a: $25
    ld a, d                                       ; $410b: $7a
    ld b, d                                       ; $410c: $42
    rst $30                                       ; $410d: $f7
    ld sp, $469b                                  ; $410e: $31 $9b $46
    ld bc, $b100                                  ; $4111: $01 $00 $b1
    dec l                                         ; $4114: $2d
    sbc e                                         ; $4115: $9b
    ld b, [hl]                                    ; $4116: $46
    rst $00                                       ; $4117: $c7
    stop                                          ; $4118: $10 $00
    nop                                           ; $411a: $00
    ld e, a                                       ; $411b: $5f
    inc bc                                        ; $411c: $03
    ld l, h                                       ; $411d: $6c
    inc l                                         ; $411e: $2c
    ld b, a                                       ; $411f: $47
    dec e                                         ; $4120: $1d
    ld bc, $b600                                  ; $4121: $01 $00 $b6
    dec d                                         ; $4124: $15
    ld e, a                                       ; $4125: $5f
    inc bc                                        ; $4126: $03
    ld h, a                                       ; $4127: $67
    inc e                                         ; $4128: $1c
    db $ed                                        ; $4129: $ed

jr_0d5_412a:
    inc d                                         ; $412a: $14
    rst $30                                       ; $412b: $f7
    ld sp, $427a                                  ; $412c: $31 $7a $42
    sbc e                                         ; $412f: $9b
    ld b, [hl]                                    ; $4130: $46
    nop                                           ; $4131: $00
    nop                                           ; $4132: $00
    ld a, d                                       ; $4133: $7a
    ld b, d                                       ; $4134: $42
    daa                                           ; $4135: $27
    dec e                                         ; $4136: $1d
    inc l                                         ; $4137: $2c
    add hl, hl                                    ; $4138: $29
    ld bc, $2e00                                  ; $4139: $01 $00 $2e
    ld sp, $2677                                  ; $413c: $31 $77 $26
    ld e, a                                       ; $413f: $5f
    inc bc                                        ; $4140: $03
    ld bc, $0e00                                  ; $4141: $01 $00 $0e
    ld sp, $125b                                  ; $4144: $31 $5b $12
    add hl, hl                                    ; $4147: $29
    jr z, jr_0d5_414a                             ; $4148: $28 $00

jr_0d5_414a:
    nop                                           ; $414a: $00
    sub $29                                       ; $414b: $d6 $29
    ld e, d                                       ; $414d: $5a
    ld b, d                                       ; $414e: $42
    adc b                                         ; $414f: $88
    inc c                                         ; $4150: $0c
    nop                                           ; $4151: $00
    inc b                                         ; $4152: $04
    sub e                                         ; $4153: $93
    dec l                                         ; $4154: $2d
    adc d                                         ; $4155: $8a
    db $10                                        ; $4156: $10
    db $db                                        ; $4157: $db
    dec a                                         ; $4158: $3d
    nop                                           ; $4159: $00
    nop                                           ; $415a: $00
    sbc b                                         ; $415b: $98
    ld a, [hl+]                                   ; $415c: $2a
    xor h                                         ; $415d: $ac
    inc l                                         ; $415e: $2c
    ld e, a                                       ; $415f: $5f
    inc bc                                        ; $4160: $03
    ld [bc], a                                    ; $4161: $02
    nop                                           ; $4162: $00
    dec hl                                        ; $4163: $2b
    add hl, hl                                    ; $4164: $29
    ld e, e                                       ; $4165: $5b
    ld bc, $035f                                  ; $4166: $01 $5f $03
    nop                                           ; $4169: $00
    nop                                           ; $416a: $00
    sub $29                                       ; $416b: $d6 $29
    xor d                                         ; $416d: $aa
    inc c                                         ; $416e: $0c
    ld a, d                                       ; $416f: $7a
    ld b, d                                       ; $4170: $42
    nop                                           ; $4171: $00
    nop                                           ; $4172: $00
    ld d, b                                       ; $4173: $50
    ld sp, $423b                                  ; $4174: $31 $3b $42
    ld b, a                                       ; $4177: $47
    inc e                                         ; $4178: $1c
    ld bc, $b904                                  ; $4179: $01 $04 $b9
    ld l, $6b                                     ; $417c: $2e $6b
    jr nc, jr_0d5_41df                            ; $417e: $30 $5f

    inc bc                                        ; $4180: $03
    ld [bc], a                                    ; $4181: $02
    nop                                           ; $4182: $00
    inc c                                         ; $4183: $0c
    ld sp, $015b                                  ; $4184: $31 $5b $01
    ld e, a                                       ; $4187: $5f
    inc bc                                        ; $4188: $03
    nop                                           ; $4189: $00
    nop                                           ; $418a: $00
    sub h                                         ; $418b: $94
    dec h                                         ; $418c: $25
    adc b                                         ; $418d: $88
    ld [$2109], sp                                ; $418e: $08 $09 $21
    nop                                           ; $4191: $00
    nop                                           ; $4192: $00
    ret z                                         ; $4193: $c8

    db $10                                        ; $4194: $10
    adc a                                         ; $4195: $8f
    add hl, hl                                    ; $4196: $29
    ld l, e                                       ; $4197: $6b
    jr nc, jr_0d5_41bb                            ; $4198: $30 $21

    inc b                                         ; $419a: $04
    ld e, a                                       ; $419b: $5f
    inc bc                                        ; $419c: $03
    ld l, d                                       ; $419d: $6a
    inc l                                         ; $419e: $2c
    ld c, h                                       ; $419f: $4c
    ld sp, $0001                                  ; $41a0: $31 $01 $00
    db $eb                                        ; $41a3: $eb
    inc l                                         ; $41a4: $2c
    jr jr_0d5_420a                                ; $41a5: $18 $63

    ld e, l                                       ; $41a7: $5d
    ld [bc], a                                    ; $41a8: $02
    nop                                           ; $41a9: $00
    nop                                           ; $41aa: $00
    inc d                                         ; $41ab: $14
    ld a, [hl-]                                   ; $41ac: $3a
    add sp, $18                                   ; $41ad: $e8 $18
    sbc e                                         ; $41af: $9b
    ld b, [hl]                                    ; $41b0: $46
    nop                                           ; $41b1: $00
    nop                                           ; $41b2: $00
    ld d, $3a                                     ; $41b3: $16 $3a
    xor c                                         ; $41b5: $a9
    jr jr_0d5_41d6                                ; $41b6: $18 $1e

    ld d, a                                       ; $41b8: $57
    nop                                           ; $41b9: $00
    nop                                           ; $41ba: $00

jr_0d5_41bb:
    ld e, a                                       ; $41bb: $5f
    inc bc                                        ; $41bc: $03
    adc e                                         ; $41bd: $8b
    inc l                                         ; $41be: $2c
    ld b, a                                       ; $41bf: $47
    dec e                                         ; $41c0: $1d
    ld bc, $b500                                  ; $41c1: $01 $00 $b5
    ld d, [hl]                                    ; $41c4: $56
    ld e, l                                       ; $41c5: $5d
    ld [bc], a                                    ; $41c6: $02
    jp hl                                         ; $41c7: $e9


    inc e                                         ; $41c8: $1c
    nop                                           ; $41c9: $00
    nop                                           ; $41ca: $00
    ld d, e                                       ; $41cb: $53
    ld c, d                                       ; $41cc: $4a
    add hl, bc                                    ; $41cd: $09
    ld hl, $3618                                  ; $41ce: $21 $18 $36
    nop                                           ; $41d1: $00
    inc b                                         ; $41d2: $04
    or c                                          ; $41d3: $b1
    ld b, l                                       ; $41d4: $45
    jp hl                                         ; $41d5: $e9


jr_0d5_41d6:
    inc e                                         ; $41d6: $1c
    jp c, $0156                                   ; $41d7: $da $56 $01

    nop                                           ; $41da: $00
    ld e, a                                       ; $41db: $5f
    inc bc                                        ; $41dc: $03
    ld a, [bc]                                    ; $41dd: $0a
    inc l                                         ; $41de: $2c

jr_0d5_41df:
    jp z, $0224                                   ; $41df: $ca $24 $02

    nop                                           ; $41e2: $00
    ld e, e                                       ; $41e3: $5b
    ld bc, $035f                                  ; $41e4: $01 $5f $03
    jp z, Jump_0d5_5b24                           ; $41e7: $ca $24 $5b

    ld bc, $035f                                  ; $41ea: $01 $5f $03
    ld e, a                                       ; $41ed: $5f
    inc bc                                        ; $41ee: $03
    jp z, Jump_0d5_5b24                           ; $41ef: $ca $24 $5b

    ld bc, $035f                                  ; $41f2: $01 $5f $03
    ld e, a                                       ; $41f5: $5f
    inc bc                                        ; $41f6: $03
    jp z, $0224                                   ; $41f7: $ca $24 $02

    nop                                           ; $41fa: $00
    ld e, e                                       ; $41fb: $5b
    ld bc, $035f                                  ; $41fc: $01 $5f $03
    jp z, $0224                                   ; $41ff: $ca $24 $02

    nop                                           ; $4202: $00
    ld e, e                                       ; $4203: $5b
    ld bc, $0182                                  ; $4204: $01 $82 $01
    ld e, a                                       ; $4207: $5f
    inc bc                                        ; $4208: $03
    add d                                         ; $4209: $82

jr_0d5_420a:
    ld bc, $035f                                  ; $420a: $01 $5f $03
    add l                                         ; $420d: $85
    nop                                           ; $420e: $00
    ld e, a                                       ; $420f: $5f
    inc bc                                        ; $4210: $03
    add d                                         ; $4211: $82
    ld bc, $035f                                  ; $4212: $01 $5f $03
    add l                                         ; $4215: $85
    nop                                           ; $4216: $00
    rst $20                                       ; $4217: $e7
    inc b                                         ; $4218: $04
    ld [bc], a                                    ; $4219: $02
    nop                                           ; $421a: $00
    ld e, a                                       ; $421b: $5f
    inc bc                                        ; $421c: $03
    add d                                         ; $421d: $82
    ld bc, $04e7                                  ; $421e: $01 $e7 $04
    ld [bc], a                                    ; $4221: $02
    nop                                           ; $4222: $00
    ld e, e                                       ; $4223: $5b
    ld bc, $0182                                  ; $4224: $01 $82 $01
    ld e, a                                       ; $4227: $5f
    inc bc                                        ; $4228: $03
    ld b, d                                       ; $4229: $42
    nop                                           ; $422a: $00
    ld hl, sp+$0a                                 ; $422b: $f8 $0a
    rst $38                                       ; $422d: $ff
    inc hl                                        ; $422e: $23
    ld c, d                                       ; $422f: $4a
    ld bc, $0042                                  ; $4230: $01 $42 $00
    ld hl, sp+$0a                                 ; $4233: $f8 $0a
    rst $38                                       ; $4235: $ff
    rra                                           ; $4236: $1f
    add hl, hl                                    ; $4237: $29
    ld bc, $0002                                  ; $4238: $01 $02 $00
    ld e, a                                       ; $423b: $5f
    inc bc                                        ; $423c: $03
    add d                                         ; $423d: $82
    ld bc, $0085                                  ; $423e: $01 $85 $00
    ld [bc], a                                    ; $4241: $02
    nop                                           ; $4242: $00
    sbc b                                         ; $4243: $98
    ld bc, $0144                  ; $4244: $01 $44 $01
    ld e, [hl]                                    ; $4247: $5e
    dec bc                                        ; $4248: $0b
    add h                                         ; $4249: $84
    nop                                           ; $424a: $00
    ret c                                         ; $424b: $d8

    ld b, $be                                     ; $424c: $06 $be
    rra                                           ; $424e: $1f
    adc h                                         ; $424f: $8c
    ld bc, $00a6                                  ; $4250: $01 $a6 $00
    ret c                                         ; $4253: $d8

    ld b, $be                                     ; $4254: $06 $be
    rra                                           ; $4256: $1f
    xor [hl]                                      ; $4257: $ae
    ld bc, $0064                                  ; $4258: $01 $64 $00
    ld [de], a                                    ; $425b: $12
    ld [bc], a                                    ; $425c: $02
    ld h, e                                       ; $425d: $63
    ld bc, $0b5e                                  ; $425e: $01 $5e $0b
    ld [bc], a                                    ; $4261: $02
    nop                                           ; $4262: $00
    sbc b                                         ; $4263: $98
    ld bc, $179e                                  ; $4264: $01 $9e $17
    ld h, h                                       ; $4267: $64
    ld bc, $00a9                                  ; $4268: $01 $a9 $00
    rst $38                                       ; $426b: $ff
    rra                                           ; $426c: $1f
    ld d, h                                       ; $426d: $54
    ld [bc], a                                    ; $426e: $02
    ld c, d                                       ; $426f: $4a
    ld bc, $0088                                  ; $4270: $01 $88 $00
    rst $38                                       ; $4273: $ff
    rra                                           ; $4274: $1f
    ld d, h                                       ; $4275: $54
    ld [bc], a                                    ; $4276: $02
    ld c, d                                       ; $4277: $4a
    ld bc, $0043                                  ; $4278: $01 $43 $00
    ld [hl-], a                                   ; $427b: $32
    ld [bc], a                                    ; $427c: $02
    sbc [hl]                                      ; $427d: $9e
    rla                                           ; $427e: $17
    ld h, h                                       ; $427f: $64
    ld bc, $0002                                  ; $4280: $01 $02 $00
    or e                                          ; $4283: $b3
    ld bc, $0f7f                                  ; $4284: $01 $7f $0f
    ld h, a                                       ; $4287: $67
    dec b                                         ; $4288: $05
    add a                                         ; $4289: $87
    nop                                           ; $428a: $00
    inc [hl]                                      ; $428b: $34
    ld [bc], a                                    ; $428c: $02
    rst $38                                       ; $428d: $ff
    rla                                           ; $428e: $17
    or l                                          ; $428f: $b5
    dec l                                         ; $4290: $2d
    add a                                         ; $4291: $87
    nop                                           ; $4292: $00
    inc [hl]                                      ; $4293: $34
    ld [bc], a                                    ; $4294: $02
    rst $38                                       ; $4295: $ff
    rla                                           ; $4296: $17
    or l                                          ; $4297: $b5
    dec l                                         ; $4298: $2d
    ld b, e                                       ; $4299: $43
    nop                                           ; $429a: $00
    ld [hl-], a                                   ; $429b: $32
    ld [bc], a                                    ; $429c: $02
    ld a, a                                       ; $429d: $7f
    rrca                                          ; $429e: $0f
    ld l, c                                       ; $429f: $69
    dec b                                         ; $42a0: $05
    ld [bc], a                                    ; $42a1: $02
    nop                                           ; $42a2: $00
    push af                                       ; $42a3: $f5
    ld bc, $04e6                                  ; $42a4: $01 $e6 $04
    ld e, a                                       ; $42a7: $5f
    inc bc                                        ; $42a8: $03
    ld hl, $d500                                  ; $42a9: $21 $00 $d5
    ld sp, $4abc                                  ; $42ac: $31 $bc $4a
    and a                                         ; $42af: $a7
    stop                                          ; $42b0: $10 $00
    nop                                           ; $42b2: $00
    push de                                       ; $42b3: $d5
    ld sp, $4ebd                                  ; $42b4: $31 $bd $4e
    adc b                                         ; $42b7: $88
    inc b                                         ; $42b8: $04
    ld h, [hl]                                    ; $42b9: $66
    nop                                           ; $42ba: $00
    inc sp                                        ; $42bb: $33
    ld [bc], a                                    ; $42bc: $02
    jp $5f09                                      ; $42bd: $c3 $09 $5f


    inc bc                                        ; $42c0: $03
    ld [bc], a                                    ; $42c1: $02
    nop                                           ; $42c2: $00
    or $35                                        ; $42c3: $f6 $35
    and h                                         ; $42c5: $a4
    add hl, bc                                    ; $42c6: $09
    ld e, l                                       ; $42c7: $5d
    ld [bc], a                                    ; $42c8: $02
    nop                                           ; $42c9: $00
    nop                                           ; $42ca: $00
    jp nc, Jump_000_1f31                          ; $42cb: $d2 $31 $1f

    ld d, a                                       ; $42ce: $57
    adc c                                         ; $42cf: $89
    ld [$0000], sp                                ; $42d0: $08 $00 $00
    jp nc, $fe31                                  ; $42d3: $d2 $31 $fe

    ld d, d                                       ; $42d6: $52
    adc c                                         ; $42d7: $89
    ld [$0023], sp                                ; $42d8: $08 $23 $00
    ld a, d                                       ; $42db: $7a
    ld b, d                                       ; $42dc: $42
    push bc                                       ; $42dd: $c5
    add hl, bc                                    ; $42de: $09
    ld e, a                                       ; $42df: $5f
    inc bc                                        ; $42e0: $03
    ld bc, $5d00                                  ; $42e1: $01 $00 $5d
    ld [bc], a                                    ; $42e4: $02
    and l                                         ; $42e5: $a5
    dec c                                         ; $42e6: $0d
    rra                                           ; $42e7: $1f
    ld d, a                                       ; $42e8: $57
    inc h                                         ; $42e9: $24
    nop                                           ; $42ea: $00
    ld [hl], b                                    ; $42eb: $70
    ld d, d                                       ; $42ec: $52
    ld e, a                                       ; $42ed: $5f
    ld h, e                                       ; $42ee: $63
    ldh [rKEY1], a                                ; $42ef: $e0 $4d
    ld b, l                                       ; $42f1: $45
    inc b                                         ; $42f2: $04
    ret                                           ; $42f3: $c9


    ld l, d                                       ; $42f4: $6a
    ld a, $5f                                     ; $42f5: $3e $5f
    ldh [rKEY1], a                                ; $42f7: $e0 $4d
    ld b, h                                       ; $42f9: $44
    inc b                                         ; $42fa: $04
    rra                                           ; $42fb: $1f
    ld d, a                                       ; $42fc: $57
    inc bc                                        ; $42fd: $03
    ld c, $5f                                     ; $42fe: $0e $5f
    inc bc                                        ; $4300: $03
    ld bc, $5d00                                  ; $4301: $01 $00 $5d
    ld [bc], a                                    ; $4304: $02
    push bc                                       ; $4305: $c5
    dec c                                         ; $4306: $0d
    ld a, b                                       ; $4307: $78
    ld b, d                                       ; $4308: $42
    inc hl                                        ; $4309: $23
    nop                                           ; $430a: $00
    jp nc, Jump_0d5_4031                          ; $430b: $d2 $31 $40

    dec a                                         ; $430e: $3d
    rra                                           ; $430f: $1f
    ld d, a                                       ; $4310: $57
    inc hl                                        ; $4311: $23
    nop                                           ; $4312: $00
    jp nc, Jump_0d5_4031                          ; $4313: $d2 $31 $40

    dec a                                         ; $4316: $3d
    rra                                           ; $4317: $1f
    ld d, a                                       ; $4318: $57
    ld b, h                                       ; $4319: $44
    inc b                                         ; $431a: $04
    ld a, b                                       ; $431b: $78
    ld b, d                                       ; $431c: $42
    inc h                                         ; $431d: $24
    ld c, $5f                                     ; $431e: $0e $5f
    inc bc                                        ; $4320: $03
    ld [bc], a                                    ; $4321: $02
    nop                                           ; $4322: $00
    ld b, h                                       ; $4323: $44
    ld c, $5d                                     ; $4324: $0e $5d
    ld [bc], a                                    ; $4326: $02
    dec c                                         ; $4327: $0d
    add hl, de                                    ; $4328: $19
    nop                                           ; $4329: $00
    nop                                           ; $432a: $00
    ld c, [hl]                                    ; $432b: $4e
    ld hl, $571f                                  ; $432c: $21 $1f $57
    jp nc, Jump_000_0031                          ; $432f: $d2 $31 $00

    nop                                           ; $4332: $00
    ld c, [hl]                                    ; $4333: $4e
    ld hl, $571f                                  ; $4334: $21 $1f $57
    jp nc, $0231                                  ; $4337: $d2 $31 $02

    nop                                           ; $433a: $00
    ld e, a                                       ; $433b: $5f
    inc bc                                        ; $433c: $03
    ld b, h                                       ; $433d: $44
    ld c, $0d                                     ; $433e: $0e $0d
    add hl, de                                    ; $4340: $19
    ld [bc], a                                    ; $4341: $02
    nop                                           ; $4342: $00
    ld b, l                                       ; $4343: $45
    ld [de], a                                    ; $4344: $12
    ld e, e                                       ; $4345: $5b
    ld bc, $035f                                  ; $4346: $01 $5f $03
    adc b                                         ; $4349: $88
    inc c                                         ; $434a: $0c
    ld e, d                                       ; $434b: $5a
    ld a, $b1                                     ; $434c: $3e $b1
    dec l                                         ; $434e: $2d
    cp $52                                        ; $434f: $fe $52
    adc b                                         ; $4351: $88
    inc c                                         ; $4352: $0c
    ld e, e                                       ; $4353: $5b
    ld a, $b2                                     ; $4354: $3e $b2
    dec l                                         ; $4356: $2d
    rst $38                                       ; $4357: $ff
    ld d, d                                       ; $4358: $52
    ld [bc], a                                    ; $4359: $02
    nop                                           ; $435a: $00
    ld e, a                                       ; $435b: $5f
    inc bc                                        ; $435c: $03
    ld b, l                                       ; $435d: $45
    ld [de], a                                    ; $435e: $12
    add l                                         ; $435f: $85
    nop                                           ; $4360: $00
    ld [bc], a                                    ; $4361: $02
    nop                                           ; $4362: $00
    ld h, l                                       ; $4363: $65
    ld [de], a                                    ; $4364: $12
    sub a                                         ; $4365: $97
    ld bc, $033c                                  ; $4366: $01 $3c $03
    ret z                                         ; $4369: $c8

    inc c                                         ; $436a: $0c
    rla                                           ; $436b: $17
    ld [hl], $fe                                  ; $436c: $36 $fe
    ld d, d                                       ; $436e: $52
    add hl, de                                    ; $436f: $19
    inc bc                                        ; $4370: $03
    xor b                                         ; $4371: $a8
    ld [$3a38], sp                                ; $4372: $08 $38 $3a
    cp $52                                        ; $4375: $fe $52
    rst $38                                       ; $4377: $ff
    daa                                           ; $4378: $27
    ld b, e                                       ; $4379: $43
    nop                                           ; $437a: $00
    dec a                                         ; $437b: $3d
    inc bc                                        ; $437c: $03
    ld h, l                                       ; $437d: $65
    ld [de], a                                    ; $437e: $12
    ld c, d                                       ; $437f: $4a
    add hl, bc                                    ; $4380: $09
    ld bc, $4700                                  ; $4381: $01 $00 $47
    ld c, $5b                                     ; $4384: $0e $5b
    ld bc, $035f                                  ; $4386: $01 $5f $03
    rst $20                                       ; $4389: $e7
    nop                                           ; $438a: $00
    ld hl, sp+$02                                 ; $438b: $f8 $02
    cp h                                          ; $438d: $bc
    ld c, d                                       ; $438e: $4a
    dec l                                         ; $438f: $2d
    dec e                                         ; $4390: $1d
    ld a, [bc]                                    ; $4391: $0a
    add hl, bc                                    ; $4392: $09
    ld a, [hl-]                                   ; $4393: $3a
    rrca                                          ; $4394: $0f
    cp l                                          ; $4395: $bd
    ld c, d                                       ; $4396: $4a
    or c                                          ; $4397: $b1
    ld hl, $0021                                  ; $4398: $21 $21 $00
    add l                                         ; $439b: $85
    ld d, $5f                                     ; $439c: $16 $5f
    inc bc                                        ; $439e: $03
    ldh a, [$09]                                  ; $439f: $f0 $09
    ld bc, $a600                                  ; $43a1: $01 $00 $a6
    ld d, $d6                                     ; $43a4: $16 $d6
    ld e, d                                       ; $43a6: $5a
    ld e, l                                       ; $43a7: $5d
    ld [bc], a                                    ; $43a8: $02
    jr nz, jr_0d5_43ab                            ; $43a9: $20 $00

jr_0d5_43ab:
    ld sp, $cb46                                  ; $43ab: $31 $46 $cb
    db $10                                        ; $43ae: $10
    rst $30                                       ; $43af: $f7
    ld sp, $0000                                  ; $43b0: $31 $00 $00
    push af                                       ; $43b3: $f5
    dec [hl]                                      ; $43b4: $35
    db $eb                                        ; $43b5: $eb
    inc c                                         ; $43b6: $0c
    sub l                                         ; $43b7: $95
    ld [bc], a                                    ; $43b8: $02
    nop                                           ; $43b9: $00
    nop                                           ; $43ba: $00
    sub $5a                                       ; $43bb: $d6 $5a
    and [hl]                                      ; $43bd: $a6
    ld d, $5f                                     ; $43be: $16 $5f
    inc bc                                        ; $43c0: $03
    ld [bc], a                                    ; $43c1: $02
    nop                                           ; $43c2: $00
    rst $28                                       ; $43c3: $ef
    add hl, sp                                    ; $43c4: $39
    ld e, l                                       ; $43c5: $5d
    ld [bc], a                                    ; $43c6: $02
    sub $56                                       ; $43c7: $d6 $56
    jr nz, jr_0d5_43cb                            ; $43c9: $20 $00

jr_0d5_43cb:
    or l                                          ; $43cb: $b5
    dec l                                         ; $43cc: $2d
    ld a, [bc]                                    ; $43cd: $0a
    add hl, de                                    ; $43ce: $19
    sbc $4e                                       ; $43cf: $de $4e
    jr nz, jr_0d5_43d3                            ; $43d1: $20 $00

jr_0d5_43d3:
    or l                                          ; $43d3: $b5
    dec l                                         ; $43d4: $2d
    ld a, [bc]                                    ; $43d5: $0a
    dec e                                         ; $43d6: $1d
    sbc $4e                                       ; $43d7: $de $4e
    nop                                           ; $43d9: $00
    nop                                           ; $43da: $00
    call $5f35                                    ; $43db: $cd $35 $5f
    inc bc                                        ; $43de: $03
    or l                                          ; $43df: $b5
    ld d, [hl]                                    ; $43e0: $56
    ld [bc], a                                    ; $43e1: $02
    nop                                           ; $43e2: $00
    ld e, e                                       ; $43e3: $5b
    ld bc, $035f                                  ; $43e4: $01 $5f $03
    or l                                          ; $43e7: $b5
    ld d, [hl]                                    ; $43e8: $56
    ld e, e                                       ; $43e9: $5b
    ld bc, $035f                                  ; $43ea: $01 $5f $03
    ld e, a                                       ; $43ed: $5f
    inc bc                                        ; $43ee: $03
    or l                                          ; $43ef: $b5
    ld d, [hl]                                    ; $43f0: $56
    ld e, e                                       ; $43f1: $5b
    ld bc, $035f                                  ; $43f2: $01 $5f $03
    ld e, a                                       ; $43f5: $5f
    inc bc                                        ; $43f6: $03
    or l                                          ; $43f7: $b5
    ld d, [hl]                                    ; $43f8: $56
    ld [bc], a                                    ; $43f9: $02
    nop                                           ; $43fa: $00
    ld e, e                                       ; $43fb: $5b
    ld bc, $035f                                  ; $43fc: $01 $5f $03
    or l                                          ; $43ff: $b5
    ld d, [hl]                                    ; $4400: $56
    ld [bc], a                                    ; $4401: $02
    nop                                           ; $4402: $00
    db $f4                                        ; $4403: $f4

Jump_0d5_4404:
    ld [hl], d                                    ; $4404: $72
    ld e, e                                       ; $4405: $5b
    ld bc, $035f                                  ; $4406: $01 $5f $03
    inc bc                                        ; $4409: $03
    db $10                                        ; $440a: $10
    db $f4                                        ; $440b: $f4
    ld [hl], d                                    ; $440c: $72
    ld e, a                                       ; $440d: $5f
    inc bc                                        ; $440e: $03
    ld e, a                                       ; $440f: $5f
    inc bc                                        ; $4410: $03
    inc bc                                        ; $4411: $03
    db $10                                        ; $4412: $10
    db $f4                                        ; $4413: $f4
    ld [hl], d                                    ; $4414: $72
    ld e, a                                       ; $4415: $5f
    inc bc                                        ; $4416: $03
    ld e, a                                       ; $4417: $5f
    inc bc                                        ; $4418: $03
    ld [bc], a                                    ; $4419: $02
    nop                                           ; $441a: $00
    db $f4                                        ; $441b: $f4
    ld [hl], d                                    ; $441c: $72
    ld e, a                                       ; $441d: $5f
    inc bc                                        ; $441e: $03
    ld e, a                                       ; $441f: $5f
    inc bc                                        ; $4420: $03
    ld [bc], a                                    ; $4421: $02
    nop                                           ; $4422: $00
    di                                            ; $4423: $f3
    ld [hl], d                                    ; $4424: $72
    ld e, e                                       ; $4425: $5b
    ld bc, $035f                                  ; $4426: $01 $5f $03
    inc bc                                        ; $4429: $03
    db $10                                        ; $442a: $10
    ld [$e824], sp                                ; $442b: $08 $24 $e8
    jr nz, jr_0d5_443c                            ; $442e: $20 $0c

    ld sp, $1003                                  ; $4430: $31 $03 $10
    db $f4                                        ; $4433: $f4
    ld [hl], d                                    ; $4434: $72
    jr z, @+$26                                   ; $4435: $28 $24

    jr nc, jr_0d5_4479                            ; $4437: $30 $40

    ld [bc], a                                    ; $4439: $02
    nop                                           ; $443a: $00
    di                                            ; $443b: $f3

jr_0d5_443c:
    ld [hl], d                                    ; $443c: $72
    ld e, a                                       ; $443d: $5f
    inc bc                                        ; $443e: $03
    inc bc                                        ; $443f: $03
    db $10                                        ; $4440: $10
    ld [bc], a                                    ; $4441: $02
    nop                                           ; $4442: $00
    ld l, h                                       ; $4443: $6c
    ld sp, $025d                                  ; $4444: $31 $5d $02
    jp nc, Jump_0d5_406e                          ; $4447: $d2 $6e $40

    inc b                                         ; $444a: $04
    ld l, b                                       ; $444b: $68
    jr nz, @+$0b                                  ; $444c: $20 $09

    dec h                                         ; $444e: $25
    ld h, h                                       ; $444f: $64
    inc d                                         ; $4450: $14
    inc hl                                        ; $4451: $23
    db $10                                        ; $4452: $10
    adc d                                         ; $4453: $8a
    jr z, jr_0d5_44c2                             ; $4454: $28 $6c

    ld sp, $1846                                  ; $4456: $31 $46 $18
    ld [bc], a                                    ; $4459: $02
    ld [$6ed2], sp                                ; $445a: $08 $d2 $6e
    ld e, a                                       ; $445d: $5f
    inc bc                                        ; $445e: $03
    ld [$0224], sp                                ; $445f: $08 $24 $02
    nop                                           ; $4462: $00
    ld [hl], b                                    ; $4463: $70
    ld e, [hl]                                    ; $4464: $5e
    ld e, l                                       ; $4465: $5d
    ld [bc], a                                    ; $4466: $02
    daa                                           ; $4467: $27
    jr nz, jr_0d5_446c                            ; $4468: $20 $02

    inc d                                         ; $446a: $14
    sub d                                         ; $446b: $92

jr_0d5_446c:
    dec h                                         ; $446c: $25
    rlca                                          ; $446d: $07
    inc h                                         ; $446e: $24
    add a                                         ; $446f: $87
    inc e                                         ; $4470: $1c
    ld b, l                                       ; $4471: $45
    inc d                                         ; $4472: $14
    ld l, l                                       ; $4473: $6d
    dec [hl]                                      ; $4474: $35
    rlca                                          ; $4475: $07
    inc h                                         ; $4476: $24
    sub d                                         ; $4477: $92
    dec h                                         ; $4478: $25

jr_0d5_4479:
    ld [bc], a                                    ; $4479: $02
    ld [$6ab1], sp                                ; $447a: $08 $b1 $6a
    ld e, a                                       ; $447d: $5f
    inc bc                                        ; $447e: $03
    dec hl                                        ; $447f: $2b
    inc l                                         ; $4480: $2c
    ld [bc], a                                    ; $4481: $02
    nop                                           ; $4482: $00
    ld [hl], b                                    ; $4483: $70
    ld h, [hl]                                    ; $4484: $66
    ld e, l                                       ; $4485: $5d
    ld [bc], a                                    ; $4486: $02
    rlca                                          ; $4487: $07
    jr nz, @+$09                                  ; $4488: $20 $07

    inc h                                         ; $448a: $24
    add hl, sp                                    ; $448b: $39
    ld [hl], $92                                  ; $448c: $36 $92
    dec h                                         ; $448e: $25
    rlca                                          ; $448f: $07
    jr nz, jr_0d5_4494                            ; $4490: $20 $02

    inc c                                         ; $4492: $0c
    sub d                                         ; $4493: $92

jr_0d5_4494:
    dec h                                         ; $4494: $25
    add a                                         ; $4495: $87
    inc e                                         ; $4496: $1c
    add hl, sp                                    ; $4497: $39
    ld [hl], $02                                  ; $4498: $36 $02
    ld [$6a90], sp                                ; $449a: $08 $90 $6a
    ld e, a                                       ; $449d: $5f
    inc bc                                        ; $449e: $03
    xor d                                         ; $449f: $aa
    jr z, @+$04                                   ; $44a0: $28 $02

    nop                                           ; $44a2: $00
    ldh a, [rLYC]                                 ; $44a3: $f0 $45
    ld e, l                                       ; $44a5: $5d
    ld [bc], a                                    ; $44a6: $02
    inc b                                         ; $44a7: $04
    jr jr_0d5_44ac                                ; $44a8: $18 $02

    inc e                                         ; $44aa: $1c
    add hl, sp                                    ; $44ab: $39

jr_0d5_44ac:
    ld [hl], $03                                  ; $44ac: $36 $03
    inc d                                         ; $44ae: $14
    inc b                                         ; $44af: $04
    jr jr_0d5_44d4                                ; $44b0: $18 $22

    db $10                                        ; $44b2: $10
    ld l, a                                       ; $44b3: $6f
    add hl, hl                                    ; $44b4: $29
    add hl, sp                                    ; $44b5: $39
    ld [hl], $06                                  ; $44b6: $36 $06
    inc h                                         ; $44b8: $24
    inc b                                         ; $44b9: $04
    db $10                                        ; $44ba: $10
    ld c, a                                       ; $44bb: $4f
    ld h, [hl]                                    ; $44bc: $66
    ld e, a                                       ; $44bd: $5f
    inc bc                                        ; $44be: $03
    ld a, [bc]                                    ; $44bf: $0a
    add hl, hl                                    ; $44c0: $29
    ld [bc], a                                    ; $44c1: $02

jr_0d5_44c2:
    nop                                           ; $44c2: $00
    dec l                                         ; $44c3: $2d
    ld h, d                                       ; $44c4: $62
    cp d                                          ; $44c5: $ba
    add hl, de                                    ; $44c6: $19
    ld e, a                                       ; $44c7: $5f
    inc bc                                        ; $44c8: $03
    ld [bc], a                                    ; $44c9: $02
    inc e                                         ; $44ca: $1c
    sub d                                         ; $44cb: $92
    dec h                                         ; $44cc: $25
    add hl, sp                                    ; $44cd: $39
    ld [hl], $03                                  ; $44ce: $36 $03
    inc d                                         ; $44d0: $14
    ld [bc], a                                    ; $44d1: $02
    inc e                                         ; $44d2: $1c
    sub d                                         ; $44d3: $92

jr_0d5_44d4:
    dec h                                         ; $44d4: $25
    ld b, $28                                     ; $44d5: $06 $28
    rlca                                          ; $44d7: $07
    inc h                                         ; $44d8: $24
    inc bc                                        ; $44d9: $03
    inc c                                         ; $44da: $0c
    dec l                                         ; $44db: $2d
    ld h, d                                       ; $44dc: $62
    ld e, a                                       ; $44dd: $5f
    inc bc                                        ; $44de: $03
    sub d                                         ; $44df: $92
    dec h                                         ; $44e0: $25
    ld [bc], a                                    ; $44e1: $02
    nop                                           ; $44e2: $00
    dec de                                        ; $44e3: $1b
    ld b, $0c                                     ; $44e4: $06 $0c
    ld e, [hl]                                    ; $44e6: $5e
    rst $18                                       ; $44e7: $df
    ld a, a                                       ; $44e8: $7f
    ld h, [hl]                                    ; $44e9: $66
    ld [$2dd5], sp                                ; $44ea: $08 $d5 $2d
    rst $38                                       ; $44ed: $ff
    ld a, a                                       ; $44ee: $7f
    ldh [rSB], a                                  ; $44ef: $e0 $01
    ld b, [hl]                                    ; $44f1: $46
    db $10                                        ; $44f2: $10
    rst $38                                       ; $44f3: $ff
    ld a, a                                       ; $44f4: $7f
    sub d                                         ; $44f5: $92
    dec h                                         ; $44f6: $25
    ldh [rSB], a                                  ; $44f7: $e0 $01
    inc hl                                        ; $44f9: $23
    inc b                                         ; $44fa: $04
    inc c                                         ; $44fb: $0c
    ld e, [hl]                                    ; $44fc: $5e
    ld e, a                                       ; $44fd: $5f
    inc bc                                        ; $44fe: $03
    sub d                                         ; $44ff: $92
    dec h                                         ; $4500: $25
    ld [bc], a                                    ; $4501: $02
    nop                                           ; $4502: $00
    dec de                                        ; $4503: $1b
    ld b, $cb                                     ; $4504: $06 $cb
    ld e, c                                       ; $4506: $59
    rst $18                                       ; $4507: $df
    ld a, a                                       ; $4508: $7f
    ld h, l                                       ; $4509: $65
    ld [$2592], sp                                ; $450a: $08 $92 $25
    rst $38                                       ; $450d: $ff
    ld a, a                                       ; $450e: $7f
    add hl, sp                                    ; $450f: $39
    ld [hl], $c0                                  ; $4510: $36 $c0
    nop                                           ; $4512: $00
    rst $38                                       ; $4513: $ff
    ld a, a                                       ; $4514: $7f
    sub d                                         ; $4515: $92
    dec h                                         ; $4516: $25
    ld h, a                                       ; $4517: $67
    db $10                                        ; $4518: $10
    ld [hl+], a                                   ; $4519: $22
    nop                                           ; $451a: $00
    bit 3, c                                      ; $451b: $cb $59
    ld e, a                                       ; $451d: $5f
    inc bc                                        ; $451e: $03
    sub d                                         ; $451f: $92

Call_0d5_4520:
    dec h                                         ; $4520: $25
    ld [bc], a                                    ; $4521: $02
    nop                                           ; $4522: $00
    xor c                                         ; $4523: $a9
    ld d, l                                       ; $4524: $55
    cp d                                          ; $4525: $ba
    add hl, de                                    ; $4526: $19
    ld e, a                                       ; $4527: $5f
    inc bc                                        ; $4528: $03
    ld b, e                                       ; $4529: $43
    inc b                                         ; $452a: $04
    add hl, sp                                    ; $452b: $39
    ld [hl], $88                                  ; $452c: $36 $88
    inc c                                         ; $452e: $0c
    ld e, a                                       ; $452f: $5f
    inc bc                                        ; $4530: $03
    adc b                                         ; $4531: $88
    inc c                                         ; $4532: $0c
    sub d                                         ; $4533: $92
    dec h                                         ; $4534: $25
    add hl, sp                                    ; $4535: $39
    ld [hl], $5f                                  ; $4536: $36 $5f
    inc bc                                        ; $4538: $03
    ld [hl+], a                                   ; $4539: $22
    nop                                           ; $453a: $00
    xor c                                         ; $453b: $a9
    ld d, l                                       ; $453c: $55
    ld e, a                                       ; $453d: $5f
    inc bc                                        ; $453e: $03
    sub d                                         ; $453f: $92
    dec h                                         ; $4540: $25
    ld [bc], a                                    ; $4541: $02
    nop                                           ; $4542: $00
    adc b                                         ; $4543: $88
    ld d, c                                       ; $4544: $51
    halt                                          ; $4545: $76
    ld de, $035f                                  ; $4546: $11 $5f $03
    sub d                                         ; $4549: $92
    dec h                                         ; $454a: $25
    add hl, sp                                    ; $454b: $39
    ld [hl], $76                                  ; $454c: $36 $76
    ld de, $035f                                  ; $454e: $11 $5f $03
    ld b, h                                       ; $4551: $44
    inc b                                         ; $4552: $04
    adc b                                         ; $4553: $88
    ld d, c                                       ; $4554: $51
    add hl, sp                                    ; $4555: $39
    ld [hl], $92                                  ; $4556: $36 $92
    dec h                                         ; $4558: $25
    ld [bc], a                                    ; $4559: $02
    nop                                           ; $455a: $00
    ld e, a                                       ; $455b: $5f
    inc bc                                        ; $455c: $03
    adc b                                         ; $455d: $88
    ld d, c                                       ; $455e: $51
    adc c                                         ; $455f: $89
    ld d, c                                       ; $4560: $51
    ld [bc], a                                    ; $4561: $02
    nop                                           ; $4562: $00
    ld b, [hl]                                    ; $4563: $46
    ld c, l                                       ; $4564: $4d
    ld e, e                                       ; $4565: $5b
    ld bc, $035f                                  ; $4566: $01 $5f $03
    ld b, e                                       ; $4569: $43
    inc b                                         ; $456a: $04
    sub d                                         ; $456b: $92
    dec h                                         ; $456c: $25
    add hl, sp                                    ; $456d: $39
    ld [hl], $88                                  ; $456e: $36 $88
    inc c                                         ; $4570: $0c
    ld hl, $9200                                  ; $4571: $21 $00 $92
    dec h                                         ; $4574: $25
    add hl, sp                                    ; $4575: $39
    ld [hl], $86                                  ; $4576: $36 $86
    inc c                                         ; $4578: $0c
    nop                                           ; $4579: $00
    nop                                           ; $457a: $00
    ld e, a                                       ; $457b: $5f
    inc bc                                        ; $457c: $03
    ld h, a                                       ; $457d: $67
    ld c, l                                       ; $457e: $4d
    add e                                         ; $457f: $83
    db $10                                        ; $4580: $10
    ld bc, $2500                                  ; $4581: $01 $00 $25
    ld c, c                                       ; $4584: $49
    ld e, e                                       ; $4585: $5b
    ld bc, $035f                                  ; $4586: $01 $5f $03
    ld b, e                                       ; $4589: $43
    inc b                                         ; $458a: $04
    sub d                                         ; $458b: $92
    dec h                                         ; $458c: $25
    add hl, sp                                    ; $458d: $39
    ld [hl], $83                                  ; $458e: $36 $83
    db $10                                        ; $4590: $10
    ld hl, $9004                                  ; $4591: $21 $04 $90
    add hl, hl                                    ; $4594: $29
    add hl, sp                                    ; $4595: $39
    ld [hl], $88                                  ; $4596: $36 $88
    inc c                                         ; $4598: $0c
    ld hl, $1804                                  ; $4599: $21 $04 $18
    ld h, e                                       ; $459c: $63
    ld b, a                                       ; $459d: $47
    ld b, c                                       ; $459e: $41
    ld e, a                                       ; $459f: $5f
    inc bc                                        ; $45a0: $03
    ld bc, $2500                                  ; $45a1: $01 $00 $25
    ld b, c                                       ; $45a4: $41
    jr jr_0d5_460a                                ; $45a5: $18 $63

    ld e, l                                       ; $45a7: $5d
    ld [bc], a                                    ; $45a8: $02
    nop                                           ; $45a9: $00
    nop                                           ; $45aa: $00
    adc $39                                       ; $45ab: $ce $39
    sub d                                         ; $45ad: $92
    dec h                                         ; $45ae: $25
    ld b, e                                       ; $45af: $43
    inc b                                         ; $45b0: $04
    ld bc, $9200                                  ; $45b1: $01 $00 $92
    dec h                                         ; $45b4: $25
    jr jr_0d5_461a                                ; $45b5: $18 $63

    add l                                         ; $45b7: $85
    inc c                                         ; $45b8: $0c
    ld hl, $1804                                  ; $45b9: $21 $04 $18
    ld h, e                                       ; $45bc: $63
    ld c, b                                       ; $45bd: $48
    ld b, c                                       ; $45be: $41
    ld e, a                                       ; $45bf: $5f
    inc bc                                        ; $45c0: $03
    ld bc, $8c00                                  ; $45c1: $01 $00 $8c
    ld sp, $025d                                  ; $45c4: $31 $5d $02
    jr jr_0d5_462c                                ; $45c7: $18 $63

    nop                                           ; $45c9: $00
    nop                                           ; $45ca: $00
    xor l                                         ; $45cb: $ad
    dec [hl]                                      ; $45cc: $35
    add hl, de                                    ; $45cd: $19
    ld [hl-], a                                   ; $45ce: $32
    sub d                                         ; $45cf: $92
    dec h                                         ; $45d0: $25
    ld b, d                                       ; $45d1: $42
    ld [$31af], sp                                ; $45d2: $08 $af $31
    jr jr_0d5_463a                                ; $45d5: $18 $63

    add hl, sp                                    ; $45d7: $39
    ld [hl], $21                                  ; $45d8: $36 $21
    inc b                                         ; $45da: $04
    ld e, a                                       ; $45db: $5f
    inc bc                                        ; $45dc: $03
    inc b                                         ; $45dd: $04
    ld c, c                                       ; $45de: $49
    xor l                                         ; $45df: $ad
    dec [hl]                                      ; $45e0: $35
    ld [bc], a                                    ; $45e1: $02
    nop                                           ; $45e2: $00
    ld e, e                                       ; $45e3: $5b
    ld bc, $035f                                  ; $45e4: $01 $5f $03
    xor l                                         ; $45e7: $ad
    dec [hl]                                      ; $45e8: $35
    ld e, e                                       ; $45e9: $5b
    ld bc, $035f                                  ; $45ea: $01 $5f $03
    ld e, a                                       ; $45ed: $5f
    inc bc                                        ; $45ee: $03
    xor l                                         ; $45ef: $ad
    dec [hl]                                      ; $45f0: $35
    ld e, e                                       ; $45f1: $5b
    ld bc, $035f                                  ; $45f2: $01 $5f $03
    ld e, a                                       ; $45f5: $5f
    inc bc                                        ; $45f6: $03
    xor l                                         ; $45f7: $ad
    dec [hl]                                      ; $45f8: $35
    ld [bc], a                                    ; $45f9: $02
    nop                                           ; $45fa: $00
    ld e, e                                       ; $45fb: $5b
    ld bc, $035f                                  ; $45fc: $01 $5f $03
    xor l                                         ; $45ff: $ad
    dec [hl]                                      ; $4600: $35
    ld [bc], a                                    ; $4601: $02
    nop                                           ; $4602: $00
    ld e, e                                       ; $4603: $5b
    ld bc, $4891                                  ; $4604: $01 $91 $48
    ld e, a                                       ; $4607: $5f
    inc bc                                        ; $4608: $03
    sub c                                         ; $4609: $91

jr_0d5_460a:
    ld c, b                                       ; $460a: $48
    ld e, a                                       ; $460b: $5f
    inc bc                                        ; $460c: $03
    sub c                                         ; $460d: $91
    ld c, b                                       ; $460e: $48
    ld e, a                                       ; $460f: $5f
    inc bc                                        ; $4610: $03
    sub c                                         ; $4611: $91
    ld c, b                                       ; $4612: $48
    ld e, a                                       ; $4613: $5f
    inc bc                                        ; $4614: $03
    sub c                                         ; $4615: $91
    ld c, b                                       ; $4616: $48
    ld e, a                                       ; $4617: $5f
    inc bc                                        ; $4618: $03
    ld [bc], a                                    ; $4619: $02

jr_0d5_461a:
    nop                                           ; $461a: $00
    ld e, a                                       ; $461b: $5f
    inc bc                                        ; $461c: $03
    sub c                                         ; $461d: $91
    ld c, b                                       ; $461e: $48
    ld e, a                                       ; $461f: $5f
    inc bc                                        ; $4620: $03
    ld [bc], a                                    ; $4621: $02
    nop                                           ; $4622: $00
    sub c                                         ; $4623: $91
    ld c, b                                       ; $4624: $48
    ld e, e                                       ; $4625: $5b
    ld bc, $035f                                  ; $4626: $01 $5f $03
    ld b, d                                       ; $4629: $42
    nop                                           ; $462a: $00
    rst $38                                       ; $462b: $ff

jr_0d5_462c:
    cpl                                           ; $462c: $2f
    sub c                                         ; $462d: $91
    ld c, b                                       ; $462e: $48
    adc l                                         ; $462f: $8d
    dec b                                         ; $4630: $05
    ld b, d                                       ; $4631: $42
    nop                                           ; $4632: $00
    sub c                                         ; $4633: $91
    ld c, b                                       ; $4634: $48
    ld de, $a516                                  ; $4635: $11 $16 $a5
    nop                                           ; $4638: $00
    ld [bc], a                                    ; $4639: $02

jr_0d5_463a:
    nop                                           ; $463a: $00
    ld e, a                                       ; $463b: $5f
    inc bc                                        ; $463c: $03
    sub c                                         ; $463d: $91
    ld c, b                                       ; $463e: $48
    and l                                         ; $463f: $a5
    nop                                           ; $4640: $00
    ld [bc], a                                    ; $4641: $02
    nop                                           ; $4642: $00
    sub c                                         ; $4643: $91
    ld c, b                                       ; $4644: $48
    cp a                                          ; $4645: $bf
    rra                                           ; $4646: $1f
    ld [hl], a                                    ; $4647: $77
    dec b                                         ; $4648: $05
    dec bc                                        ; $4649: $0b
    dec d                                         ; $464a: $15
    ld e, h                                       ; $464b: $5c
    rla                                           ; $464c: $17
    ldh a, [$09]                                  ; $464d: $f0 $09
    rst $18                                       ; $464f: $df
    dec hl                                        ; $4650: $2b
    ld b, d                                       ; $4651: $42
    nop                                           ; $4652: $00
    sbc l                                         ; $4653: $9d
    daa                                           ; $4654: $27
    sub c                                         ; $4655: $91
    ld c, b                                       ; $4656: $48
    rst $08                                       ; $4657: $cf
    ld bc, $0002                                  ; $4658: $01 $02 $00
    ld e, a                                       ; $465b: $5f
    inc bc                                        ; $465c: $03
    sub c                                         ; $465d: $91
    ld c, b                                       ; $465e: $48
    rst $08                                       ; $465f: $cf
    ld bc, $0002                                  ; $4660: $01 $02 $00
    ld de, $7e0a                                  ; $4663: $11 $0a $7e
    rrca                                          ; $4666: $0f
    ld e, e                                       ; $4667: $5b
    ld bc, $0400                                  ; $4668: $01 $00 $04
    ld [hl-], a                                   ; $466b: $32
    ld [bc], a                                    ; $466c: $02
    ld a, [de]                                    ; $466d: $1a
    dec bc                                        ; $466e: $0b
    sbc $27                                       ; $466f: $de $27
    ld b, d                                       ; $4671: $42
    nop                                           ; $4672: $00
    dec sp                                        ; $4673: $3b
    rrca                                          ; $4674: $0f
    ld de, $df16                                  ; $4675: $11 $16 $df
    dec hl                                        ; $4678: $2b
    ld [hl+], a                                   ; $4679: $22
    nop                                           ; $467a: $00
    ld e, a                                       ; $467b: $5f
    inc bc                                        ; $467c: $03
    sub c                                         ; $467d: $91
    ld c, b                                       ; $467e: $48
    rst $38                                       ; $467f: $ff
    daa                                           ; $4680: $27
    ld [bc], a                                    ; $4681: $02
    nop                                           ; $4682: $00
    sub $01                                       ; $4683: $d6 $01
    cp a                                          ; $4685: $bf
    dec de                                        ; $4686: $1b
    add sp, $08                                   ; $4687: $e8 $08
    nop                                           ; $4689: $00
    nop                                           ; $468a: $00
    ld l, [hl]                                    ; $468b: $6e
    ld bc, $0f7d                                  ; $468c: $01 $7d $0f
    xor c                                         ; $468f: $a9
    nop                                           ; $4690: $00
    ld b, d                                       ; $4691: $42
    nop                                           ; $4692: $00
    ld [hl-], a                                   ; $4693: $32
    ld b, $bd                                     ; $4694: $06 $bd
    rra                                           ; $4696: $1f
    ld hl, sp+$0e                                 ; $4697: $f8 $0e
    ld [hl+], a                                   ; $4699: $22
    nop                                           ; $469a: $00
    sbc [hl]                                      ; $469b: $9e
    dec de                                        ; $469c: $1b
    or c                                          ; $469d: $b1
    ld c, b                                       ; $469e: $48
    ld de, $0116                                  ; $469f: $11 $16 $01
    nop                                           ; $46a2: $00
    or h                                          ; $46a3: $b4
    dec b                                         ; $46a4: $05
    inc a                                         ; $46a5: $3c
    inc bc                                        ; $46a6: $03
    ld [$8601], sp                                ; $46a7: $08 $01 $86
    nop                                           ; $46aa: $00
    dec de                                        ; $46ab: $1b
    ld [hl-], a                                   ; $46ac: $32
    db $fd                                        ; $46ad: $fd
    ld d, d                                       ; $46ae: $52
    ld d, b                                       ; $46af: $50
    dec b                                         ; $46b0: $05
    nop                                           ; $46b1: $00
    ld [$0af7], sp                                ; $46b2: $08 $f7 $0a
    ld a, e                                       ; $46b5: $7b
    ld b, d                                       ; $46b6: $42
    jp z, Jump_0d5_4404                           ; $46b7: $ca $04 $44

    inc b                                         ; $46ba: $04
    ld [hl-], a                                   ; $46bb: $32
    ld [bc], a                                    ; $46bc: $02
    or c                                          ; $46bd: $b1
    ld c, b                                       ; $46be: $48
    ld e, [hl]                                    ; $46bf: $5e
    inc bc                                        ; $46c0: $03
    ld [bc], a                                    ; $46c1: $02
    nop                                           ; $46c2: $00
    sub h                                         ; $46c3: $94
    ld bc, $4554                                  ; $46c4: $01 $54 $45
    ld e, a                                       ; $46c7: $5f
    inc bc                                        ; $46c8: $03
    xor c                                         ; $46c9: $a9
    inc b                                         ; $46ca: $04
    ld e, h                                       ; $46cb: $5c
    ld a, [hl-]                                   ; $46cc: $3a
    ld d, b                                       ; $46cd: $50
    dec b                                         ; $46ce: $05
    db $fd                                        ; $46cf: $fd
    ld d, d                                       ; $46d0: $52
    ld bc, $7404                                  ; $46d1: $01 $04 $74
    ld [bc], a                                    ; $46d4: $02
    ld a, [de]                                    ; $46d5: $1a
    ld [hl-], a                                   ; $46d6: $32
    xor c                                         ; $46d7: $a9
    inc b                                         ; $46d8: $04
    ld [hl+], a                                   ; $46d9: $22
    nop                                           ; $46da: $00
    pop de                                        ; $46db: $d1
    ld c, h                                       ; $46dc: $4c
    jp c, $fd0a                                   ; $46dd: $da $0a $fd

    ld d, d                                       ; $46e0: $52
    ld [bc], a                                    ; $46e1: $02
    nop                                           ; $46e2: $00
    ld de, $554d                                  ; $46e3: $11 $4d $55
    ld bc, $035f                                  ; $46e6: $01 $5f $03
    ld b, b                                       ; $46e9: $40
    ld d, b                                       ; $46ea: $50
    cp e                                          ; $46eb: $bb
    ld c, d                                       ; $46ec: $4a
    rst $38                                       ; $46ed: $ff
    ld a, a                                       ; $46ee: $7f
    db $ec                                        ; $46ef: $ec
    ld [$0800], sp                                ; $46f0: $08 $00 $08
    rst $10                                       ; $46f3: $d7
    ld hl, $3a5c                                  ; $46f4: $21 $5c $3a
    db $eb                                        ; $46f7: $eb
    ld [$0063], sp                                ; $46f8: $08 $63 $00
    ld de, $9f12                                  ; $46fb: $11 $12 $9f
    rrca                                          ; $46fe: $0f
    ld e, h                                       ; $46ff: $5c
    ld a, [hl-]                                   ; $4700: $3a
    ld [bc], a                                    ; $4701: $02
    nop                                           ; $4702: $00
    ld d, d                                       ; $4703: $52
    ld d, c                                       ; $4704: $51
    ld e, e                                       ; $4705: $5b
    ld bc, $035f                                  ; $4706: $01 $5f $03
    nop                                           ; $4709: $00
    ld [$429c], sp                                ; $470a: $08 $9c $42
    add e                                         ; $470d: $83
    ld d, h                                       ; $470e: $54
    ld [$6510], a                                 ; $470f: $ea $10 $65
    inc b                                         ; $4712: $04
    dec sp                                        ; $4713: $3b
    ld [hl], $11                                  ; $4714: $36 $11
    ld de, $52fd                                  ; $4716: $11 $fd $52
    ld b, e                                       ; $4719: $43
    nop                                           ; $471a: $00
    jr jr_0d5_4728                                ; $471b: $18 $0b

    rst $38                                       ; $471d: $ff
    rra                                           ; $471e: $1f
    ld e, a                                       ; $471f: $5f
    inc bc                                        ; $4720: $03
    ld bc, $5d00                                  ; $4721: $01 $00 $5d
    ld [bc], a                                    ; $4724: $02
    ld d, d                                       ; $4725: $52
    ld d, c                                       ; $4726: $51
    rst $38                                       ; $4727: $ff

jr_0d5_4728:
    ld a, a                                       ; $4728: $7f
    nop                                           ; $4729: $00
    nop                                           ; $472a: $00
    ld sp, hl                                     ; $472b: $f9
    dec l                                         ; $472c: $2d
    db $fd                                        ; $472d: $fd
    ld d, d                                       ; $472e: $52
    rlc h                                         ; $472f: $cb $04
    ld b, h                                       ; $4731: $44
    inc b                                         ; $4732: $04
    ld a, [de]                                    ; $4733: $1a
    ld [hl-], a                                   ; $4734: $32
    ld de, $fd11                                  ; $4735: $11 $11 $fd
    ld d, d                                       ; $4738: $52
    ld [hl+], a                                   ; $4739: $22
    nop                                           ; $473a: $00
    ld d, d                                       ; $473b: $52
    ld d, c                                       ; $473c: $51
    reti                                          ; $473d: $d9


    ld [bc], a                                    ; $473e: $02
    ld a, [hl+]                                   ; $473f: $2a
    ld bc, $0002                                  ; $4740: $01 $02 $00
    ld [hl], d                                    ; $4743: $72
    ld d, c                                       ; $4744: $51
    ld e, e                                       ; $4745: $5b
    ld bc, $035f                                  ; $4746: $01 $5f $03
    ld b, e                                       ; $4749: $43
    nop                                           ; $474a: $00
    ld sp, hl                                     ; $474b: $f9
    dec l                                         ; $474c: $2d
    db $fd                                        ; $474d: $fd
    ld d, d                                       ; $474e: $52
    ld de, $4411                                  ; $474f: $11 $11 $44
    inc b                                         ; $4752: $04
    ld a, [de]                                    ; $4753: $1a
    ld [hl-], a                                   ; $4754: $32
    ld de, $fd11                                  ; $4755: $11 $11 $fd
    ld d, d                                       ; $4758: $52
    ld [hl+], a                                   ; $4759: $22
    nop                                           ; $475a: $00
    ld [hl], d                                    ; $475b: $72
    ld d, c                                       ; $475c: $51
    ld e, a                                       ; $475d: $5f
    inc bc                                        ; $475e: $03
    ret z                                         ; $475f: $c8

    ld [$0002], sp                                ; $4760: $08 $02 $00
    sub d                                         ; $4763: $92
    ld d, l                                       ; $4764: $55
    ld e, e                                       ; $4765: $5b
    ld bc, $035f                                  ; $4766: $01 $5f $03
    ld h, l                                       ; $4769: $65
    nop                                           ; $476a: $00
    sub d                                         ; $476b: $92
    ld d, l                                       ; $476c: $55
    ld a, [de]                                    ; $476d: $1a
    ld [hl-], a                                   ; $476e: $32
    db $fd                                        ; $476f: $fd
    ld d, d                                       ; $4770: $52
    ld h, a                                       ; $4771: $67
    inc b                                         ; $4772: $04
    ld hl, sp+$2d                                 ; $4773: $f8 $2d
    db $fd                                        ; $4775: $fd
    ld d, d                                       ; $4776: $52
    ld e, h                                       ; $4777: $5c
    ld a, [hl-]                                   ; $4778: $3a
    nop                                           ; $4779: $00
    nop                                           ; $477a: $00
    sub d                                         ; $477b: $92
    ld d, l                                       ; $477c: $55
    ld e, a                                       ; $477d: $5f
    inc bc                                        ; $477e: $03
    ld [bc], a                                    ; $477f: $02
    nop                                           ; $4780: $00
    ld [bc], a                                    ; $4781: $02
    nop                                           ; $4782: $00
    or d                                          ; $4783: $b2
    ld d, l                                       ; $4784: $55
    ld e, e                                       ; $4785: $5b
    ld bc, $035f                                  ; $4786: $01 $5f $03
    ld hl, $b204                                  ; $4789: $21 $04 $b2
    ld d, l                                       ; $478c: $55
    ret c                                         ; $478d: $d8

    add hl, hl                                    ; $478e: $29
    ld e, h                                       ; $478f: $5c
    ld a, [hl-]                                   ; $4790: $3a
    nop                                           ; $4791: $00
    nop                                           ; $4792: $00
    ld a, [hl-]                                   ; $4793: $3a
    ld [hl], $a9                                  ; $4794: $36 $a9
    inc c                                         ; $4796: $0c
    db $fd                                        ; $4797: $fd
    ld d, d                                       ; $4798: $52
    nop                                           ; $4799: $00
    nop                                           ; $479a: $00
    ld d, c                                       ; $479b: $51
    ld c, d                                       ; $479c: $4a
    ld e, a                                       ; $479d: $5f
    inc bc                                        ; $479e: $03
    rst $20                                       ; $479f: $e7
    inc e                                         ; $47a0: $1c
    ld [bc], a                                    ; $47a1: $02
    nop                                           ; $47a2: $00
    db $d3                                        ; $47a3: $d3
    ld e, c                                       ; $47a4: $59
    ld e, e                                       ; $47a5: $5b
    ld bc, $035f                                  ; $47a6: $01 $5f $03
    nop                                           ; $47a9: $00
    inc b                                         ; $47aa: $04
    xor $3d                                       ; $47ab: $ee $3d
    rst $20                                       ; $47ad: $e7
    inc e                                         ; $47ae: $1c
    or e                                          ; $47af: $b3
    ld e, c                                       ; $47b0: $59
    nop                                           ; $47b1: $00
    nop                                           ; $47b2: $00
    add hl, sp                                    ; $47b3: $39
    ld [hl], $4c                                  ; $47b4: $36 $4c
    dec h                                         ; $47b6: $25
    db $fd                                        ; $47b7: $fd
    ld d, d                                       ; $47b8: $52
    ld bc, $ad00                                  ; $47b9: $01 $00 $ad
    dec [hl]                                      ; $47bc: $35
    add hl, sp                                    ; $47bd: $39
    ld l, e                                       ; $47be: $6b
    ld e, a                                       ; $47bf: $5f
    inc bc                                        ; $47c0: $03
    ld [bc], a                                    ; $47c1: $02
    nop                                           ; $47c2: $00
    db $d3                                        ; $47c3: $d3
    ld e, c                                       ; $47c4: $59
    ld e, e                                       ; $47c5: $5b
    ld bc, $035f                                  ; $47c6: $01 $5f $03
    nop                                           ; $47c9: $00
    inc b                                         ; $47ca: $04
    xor $3d                                       ; $47cb: $ee $3d
    db $d3                                        ; $47cd: $d3
    ld e, c                                       ; $47ce: $59
    or l                                          ; $47cf: $b5
    ld d, [hl]                                    ; $47d0: $56
    ld hl, $3a08                                  ; $47d1: $21 $08 $3a
    ld [hl], $8c                                  ; $47d4: $36 $8c
    ld sp, $5b1c                                  ; $47d6: $31 $1c $5b
    ld bc, $cd08                                  ; $47d9: $01 $08 $cd
    add hl, sp                                    ; $47dc: $39
    ld e, a                                       ; $47dd: $5f
    inc bc                                        ; $47de: $03
    rst $30                                       ; $47df: $f7
    ld h, d                                       ; $47e0: $62
    ld [bc], a                                    ; $47e1: $02
    nop                                           ; $47e2: $00
    ld e, e                                       ; $47e3: $5b
    ld bc, $035f                                  ; $47e4: $01 $5f $03
    rst $30                                       ; $47e7: $f7
    ld h, d                                       ; $47e8: $62
    ld e, e                                       ; $47e9: $5b
    ld bc, $035f                                  ; $47ea: $01 $5f $03
    ld e, a                                       ; $47ed: $5f
    inc bc                                        ; $47ee: $03
    rst $30                                       ; $47ef: $f7
    ld h, d                                       ; $47f0: $62
    ld e, e                                       ; $47f1: $5b
    ld bc, $035f                                  ; $47f2: $01 $5f $03
    ld e, a                                       ; $47f5: $5f
    inc bc                                        ; $47f6: $03
    rst $30                                       ; $47f7: $f7
    ld h, d                                       ; $47f8: $62
    ld [bc], a                                    ; $47f9: $02
    nop                                           ; $47fa: $00
    ld e, e                                       ; $47fb: $5b
    ld bc, $035f                                  ; $47fc: $01 $5f $03
    rst $30                                       ; $47ff: $f7
    ld h, d                                       ; $4800: $62
    ld [bc], a                                    ; $4801: $02
    nop                                           ; $4802: $00

Call_0d5_4803:
    call nc, Call_0d5_5b59                        ; $4803: $d4 $59 $5b
    ld bc, $035f                                  ; $4806: $01 $5f $03
    ld bc, $5f00                                  ; $4809: $01 $00 $5f
    inc bc                                        ; $480c: $03
    call nc, $aa59                                ; $480d: $d4 $59 $aa
    inc c                                         ; $4810: $0c
    ld b, h                                       ; $4811: $44
    nop                                           ; $4812: $00
    ccf                                           ; $4813: $3f
    inc bc                                        ; $4814: $03
    call nc, $ef59                                ; $4815: $d4 $59 $ef
    ld [$0000], sp                                ; $4818: $08 $00 $00
    call nc, $5f59                                ; $481b: $d4 $59 $5f
    inc bc                                        ; $481e: $03
    ld [bc], a                                    ; $481f: $02
    nop                                           ; $4820: $00
    ld bc, $5800                                  ; $4821: $01 $00 $58
    add hl, bc                                    ; $4824: $09
    call nc, $5f59                                ; $4825: $d4 $59 $5f
    inc bc                                        ; $4828: $03
    inc h                                         ; $4829: $24
    nop                                           ; $482a: $00
    call nc, $ae59                                ; $482b: $d4 $59 $ae
    ld [$15bc], sp                                ; $482e: $08 $bc $15
    ld bc, $1200                                  ; $4831: $01 $00 $12
    dec c                                         ; $4834: $0d
    db $dd                                        ; $4835: $dd
    add hl, de                                    ; $4836: $19
    adc c                                         ; $4837: $89
    inc b                                         ; $4838: $04
    ld bc, $d400                                  ; $4839: $01 $00 $d4
    ld e, c                                       ; $483c: $59
    db $dd                                        ; $483d: $dd
    dec d                                         ; $483e: $15
    ld e, a                                       ; $483f: $5f
    inc bc                                        ; $4840: $03
    ld [bc], a                                    ; $4841: $02
    nop                                           ; $4842: $00
    or h                                          ; $4843: $b4
    ld d, l                                       ; $4844: $55
    cp l                                          ; $4845: $bd
    ld de, $035f                                  ; $4846: $11 $5f $03
    inc bc                                        ; $4849: $03
    nop                                           ; $484a: $00
    jp nc, $bb21                                  ; $484b: $d2 $21 $bb

    dec d                                         ; $484e: $15
    xor l                                         ; $484f: $ad
    inc b                                         ; $4850: $04
    inc bc                                        ; $4851: $03
    nop                                           ; $4852: $00
    dec d                                         ; $4853: $15
    ld [hl+], a                                   ; $4854: $22
    xor h                                         ; $4855: $ac
    inc b                                         ; $4856: $04
    cp e                                          ; $4857: $bb
    dec d                                         ; $4858: $15
    nop                                           ; $4859: $00
    nop                                           ; $485a: $00
    call nc, $5f55                                ; $485b: $d4 $55 $5f
    inc bc                                        ; $485e: $03
    cp e                                          ; $485f: $bb
    dec d                                         ; $4860: $15
    ld bc, $9c00                                  ; $4861: $01 $00 $9c
    dec c                                         ; $4864: $0d
    adc d                                         ; $4865: $8a
    inc b                                         ; $4866: $04
    ld e, a                                       ; $4867: $5f
    inc bc                                        ; $4868: $03
    nop                                           ; $4869: $00
    nop                                           ; $486a: $00
    adc $04                                       ; $486b: $ce $04
    ld a, [de]                                    ; $486d: $1a
    ld e, $46                                     ; $486e: $1e $46
    nop                                           ; $4870: $00
    ld [bc], a                                    ; $4871: $02
    nop                                           ; $4872: $00
    rst $28                                       ; $4873: $ef
    ld [$1998], sp                                ; $4874: $08 $98 $19
    adc d                                         ; $4877: $8a
    inc b                                         ; $4878: $04
    nop                                           ; $4879: $00
    nop                                           ; $487a: $00
    cp h                                          ; $487b: $bc
    dec d                                         ; $487c: $15
    adc $08                                       ; $487d: $ce $08
    ld e, a                                       ; $487f: $5f
    inc bc                                        ; $4880: $03
    ld bc, $9c00                                  ; $4881: $01 $00 $9c
    dec c                                         ; $4884: $0d
    xor e                                         ; $4885: $ab
    ld [$035f], sp                                ; $4886: $08 $5f $03
    inc b                                         ; $4889: $04
    nop                                           ; $488a: $00
    jr nc, @+$17                                  ; $488b: $30 $15

    sbc $4e                                       ; $488d: $de $4e
    or a                                          ; $488f: $b7
    dec h                                         ; $4890: $25
    nop                                           ; $4891: $00
    nop                                           ; $4892: $00
    rrca                                          ; $4893: $0f
    ld de, $31d5                                  ; $4894: $11 $d5 $31
    cp e                                          ; $4897: $bb
    dec d                                         ; $4898: $15
    nop                                           ; $4899: $00
    nop                                           ; $489a: $00
    cp h                                          ; $489b: $bc
    add hl, de                                    ; $489c: $19
    adc $08                                       ; $489d: $ce $08
    ld e, a                                       ; $489f: $5f
    inc bc                                        ; $48a0: $03
    ld bc, $9d00                                  ; $48a1: $01 $00 $9d
    dec c                                         ; $48a4: $0d
    adc h                                         ; $48a5: $8c
    nop                                           ; $48a6: $00
    ld e, a                                       ; $48a7: $5f
    inc bc                                        ; $48a8: $03
    ld bc, $de00                                  ; $48a9: $01 $00 $de
    ld c, [hl]                                    ; $48ac: $4e
    rst $28                                       ; $48ad: $ef
    ld [$159a], sp                                ; $48ae: $08 $9a $15
    nop                                           ; $48b1: $00
    nop                                           ; $48b2: $00
    rst $28                                       ; $48b3: $ef
    ld [$29b5], sp                                ; $48b4: $08 $b5 $29
    sbc $4e                                       ; $48b7: $de $4e
    ld [bc], a                                    ; $48b9: $02
    nop                                           ; $48ba: $00
    ld e, a                                       ; $48bb: $5f
    inc bc                                        ; $48bc: $03
    xor h                                         ; $48bd: $ac
    nop                                           ; $48be: $00
    ld [hl], d                                    ; $48bf: $72
    ld b, l                                       ; $48c0: $45
    ld [bc], a                                    ; $48c1: $02
    nop                                           ; $48c2: $00
    ld e, l                                       ; $48c3: $5d
    ld [bc], a                                    ; $48c4: $02
    ld [hl], d                                    ; $48c5: $72
    dec a                                         ; $48c6: $3d
    sbc $4e                                       ; $48c7: $de $4e
    nop                                           ; $48c9: $00
    nop                                           ; $48ca: $00
    sbc $4e                                       ; $48cb: $de $4e
    adc d                                         ; $48cd: $8a
    inc b                                         ; $48ce: $04
    cpl                                           ; $48cf: $2f
    dec e                                         ; $48d0: $1d
    ld bc, $2f00                                  ; $48d1: $01 $00 $2f
    dec e                                         ; $48d4: $1d
    sbc $4e                                       ; $48d5: $de $4e
    push de                                       ; $48d7: $d5
    ld sp, $0422                                  ; $48d8: $31 $22 $04
    ld d, c                                       ; $48db: $51
    add hl, sp                                    ; $48dc: $39
    ld e, a                                       ; $48dd: $5f
    inc bc                                        ; $48de: $03
    or $31                                        ; $48df: $f6 $31
    ld [bc], a                                    ; $48e1: $02
    nop                                           ; $48e2: $00
    ld d, c                                       ; $48e3: $51
    ld sp, $015b                                  ; $48e4: $31 $5b $01
    ld e, a                                       ; $48e7: $5f
    inc bc                                        ; $48e8: $03
    rrca                                          ; $48e9: $0f
    dec d                                         ; $48ea: $15
    db $dd                                        ; $48eb: $dd
    ld b, d                                       ; $48ec: $42
    rst $38                                       ; $48ed: $ff
    ld a, a                                       ; $48ee: $7f
    sbc c                                         ; $48ef: $99
    dec d                                         ; $48f0: $15
    rrca                                          ; $48f1: $0f
    dec d                                         ; $48f2: $15
    db $dd                                        ; $48f3: $dd
    ld a, $ff                                     ; $48f4: $3e $ff
    ld a, a                                       ; $48f6: $7f
    or a                                          ; $48f7: $b7
    ld hl, $0844                                  ; $48f8: $21 $44 $08
    cpl                                           ; $48fb: $2f
    dec e                                         ; $48fc: $1d
    ld e, a                                       ; $48fd: $5f
    inc bc                                        ; $48fe: $03
    jr nc, jr_0d5_493e                            ; $48ff: $30 $3d

    ld [bc], a                                    ; $4901: $02
    nop                                           ; $4902: $00
    jr nc, jr_0d5_4936                            ; $4903: $30 $31

    ld e, e                                       ; $4905: $5b
    ld bc, $1b1e                                  ; $4906: $01 $1e $1b
    ld [hl+], a                                   ; $4909: $22
    inc b                                         ; $490a: $04
    scf                                           ; $490b: $37
    ld a, [hl-]                                   ; $490c: $3a
    cpl                                           ; $490d: $2f
    dec e                                         ; $490e: $1d
    sbc $4e                                       ; $490f: $de $4e
    cpl                                           ; $4911: $2f
    dec e                                         ; $4912: $1d
    sbc $4e                                       ; $4913: $de $4e
    push de                                       ; $4915: $d5
    ld sp, $4ede                                  ; $4916: $31 $de $4e
    ld b, h                                       ; $4919: $44
    ld [$3530], sp                                ; $491a: $08 $30 $35
    ld e, a                                       ; $491d: $5f
    inc bc                                        ; $491e: $03
    push de                                       ; $491f: $d5
    ld sp, $0002                                  ; $4920: $31 $02 $00
    rrca                                          ; $4923: $0f
    ld sp, $015b                                  ; $4924: $31 $5b $01
    ld e, a                                       ; $4927: $5f
    inc bc                                        ; $4928: $03
    cpl                                           ; $4929: $2f
    dec e                                         ; $492a: $1d
    sbc $4e                                       ; $492b: $de $4e
    ld e, e                                       ; $492d: $5b
    ld bc, $035f                                  ; $492e: $01 $5f $03
    ld h, l                                       ; $4931: $65
    inc c                                         ; $4932: $0c
    sbc $4e                                       ; $4933: $de $4e
    push de                                       ; $4935: $d5

jr_0d5_4936:
    ld sp, $035f                                  ; $4936: $31 $5f $03
    ld [bc], a                                    ; $4939: $02
    nop                                           ; $493a: $00
    ld e, a                                       ; $493b: $5f
    inc bc                                        ; $493c: $03
    rrca                                          ; $493d: $0f

jr_0d5_493e:
    ld sp, $0c65                                  ; $493e: $31 $65 $0c
    ld [bc], a                                    ; $4941: $02
    nop                                           ; $4942: $00
    xor $2c                                       ; $4943: $ee $2c
    ld e, e                                       ; $4945: $5b
    ld bc, $035f                                  ; $4946: $01 $5f $03
    ld [hl+], a                                   ; $4949: $22
    inc b                                         ; $494a: $04
    push af                                       ; $494b: $f5
    dec [hl]                                      ; $494c: $35
    sbc $4e                                       ; $494d: $de $4e
    cpl                                           ; $494f: $2f
    dec e                                         ; $4950: $1d
    ld b, e                                       ; $4951: $43
    ld [$31d4], sp                                ; $4952: $08 $d4 $31
    sbc $4e                                       ; $4955: $de $4e
    ld c, $21                                     ; $4957: $0e $21
    ld [bc], a                                    ; $4959: $02
    nop                                           ; $495a: $00

jr_0d5_495b:
    ld e, a                                       ; $495b: $5f
    inc bc                                        ; $495c: $03
    xor $2c                                       ; $495d: $ee $2c
    ld c, $21                                     ; $495f: $0e $21
    ld bc, $cd00                                  ; $4961: $01 $00 $cd
    jr z, jr_0d5_49c1                             ; $4964: $28 $5b

    ld bc, $035f                                  ; $4966: $01 $5f $03
    ld [hl+], a                                   ; $4969: $22
    inc b                                         ; $496a: $04
    push de                                       ; $496b: $d5
    ld sp, $1d2f                                  ; $496c: $31 $2f $1d
    sbc $4e                                       ; $496f: $de $4e
    ld h, l                                       ; $4971: $65
    inc c                                         ; $4972: $0c
    push de                                       ; $4973: $d5
    ld sp, $24ee                                  ; $4974: $31 $ee $24
    sbc $4e                                       ; $4977: $de $4e
    ld [bc], a                                    ; $4979: $02
    nop                                           ; $497a: $00
    ld e, a                                       ; $497b: $5f
    inc bc                                        ; $497c: $03
    call $ee28                                    ; $497d: $cd $28 $ee
    jr z, jr_0d5_4983                             ; $4980: $28 $01

    nop                                           ; $4982: $00

jr_0d5_4983:
    db $ec                                        ; $4983: $ec
    inc h                                         ; $4984: $24
    ld e, e                                       ; $4985: $5b
    ld bc, $035f                                  ; $4986: $01 $5f $03
    ld b, e                                       ; $4989: $43
    ld [$31d5], sp                                ; $498a: $08 $d5 $31
    cpl                                           ; $498d: $2f
    dec e                                         ; $498e: $1d
    sbc $4e                                       ; $498f: $de $4e
    nop                                           ; $4991: $00
    nop                                           ; $4992: $00
    inc c                                         ; $4993: $0c
    dec e                                         ; $4994: $1d
    push de                                       ; $4995: $d5
    ld sp, $0c65                                  ; $4996: $31 $65 $0c
    ld [bc], a                                    ; $4999: $02
    nop                                           ; $499a: $00
    ld e, a                                       ; $499b: $5f
    inc bc                                        ; $499c: $03
    call Call_0d5_6524                            ; $499d: $cd $24 $65
    inc c                                         ; $49a0: $0c
    ld bc, $cb00                                  ; $49a1: $01 $00 $cb
    jr nz, jr_0d5_495b                            ; $49a4: $20 $b5

    ld d, [hl]                                    ; $49a6: $56
    ld e, l                                       ; $49a7: $5d
    ld [bc], a                                    ; $49a8: $02
    ld [hl+], a                                   ; $49a9: $22
    inc b                                         ; $49aa: $04
    push de                                       ; $49ab: $d5
    ld sp, $4ede                                  ; $49ac: $31 $de $4e
    cpl                                           ; $49af: $2f
    dec e                                         ; $49b0: $1d
    ld hl, $d504                                  ; $49b1: $21 $04 $d5
    ld sp, $1d0c                                  ; $49b4: $31 $0c $1d
    sub h                                         ; $49b7: $94
    ld d, d                                       ; $49b8: $52
    nop                                           ; $49b9: $00
    nop                                           ; $49ba: $00
    ld e, a                                       ; $49bb: $5f
    inc bc                                        ; $49bc: $03
    xor l                                         ; $49bd: $ad
    jr nz, @+$04                                  ; $49be: $20 $02

    nop                                           ; $49c0: $00

jr_0d5_49c1:
    ld bc, $9400                                  ; $49c1: $01 $00 $94
    ld d, d                                       ; $49c4: $52
    ld e, l                                       ; $49c5: $5d
    ld [bc], a                                    ; $49c6: $02
    xor h                                         ; $49c7: $ac
    jr nz, jr_0d5_49ca                            ; $49c8: $20 $00

jr_0d5_49ca:
    nop                                           ; $49ca: $00
    push de                                       ; $49cb: $d5
    ld sp, $4ede                                  ; $49cc: $31 $de $4e
    add hl, bc                                    ; $49cf: $09
    ld hl, $0000                                  ; $49d0: $21 $00 $00
    db $f4                                        ; $49d3: $f4
    dec [hl]                                      ; $49d4: $35
    ld a, [$095a]                                 ; $49d5: $fa $5a $09
    ld hl, $0001                                  ; $49d8: $21 $01 $00
    ld e, a                                       ; $49db: $5f
    inc bc                                        ; $49dc: $03
    add hl, bc                                    ; $49dd: $09
    ld hl, $20ad                                  ; $49de: $21 $ad $20
    ld [bc], a                                    ; $49e1: $02
    nop                                           ; $49e2: $00
    ld e, e                                       ; $49e3: $5b
    ld bc, $035f                                  ; $49e4: $01 $5f $03
    xor l                                         ; $49e7: $ad
    jr nz, jr_0d5_4a45                            ; $49e8: $20 $5b

    ld bc, $035f                                  ; $49ea: $01 $5f $03
    ld e, a                                       ; $49ed: $5f
    inc bc                                        ; $49ee: $03
    xor l                                         ; $49ef: $ad
    jr nz, jr_0d5_4a4d                            ; $49f0: $20 $5b

    ld bc, $035f                                  ; $49f2: $01 $5f $03
    ld e, a                                       ; $49f5: $5f
    inc bc                                        ; $49f6: $03
    xor l                                         ; $49f7: $ad
    jr nz, jr_0d5_49fc                            ; $49f8: $20 $02

    nop                                           ; $49fa: $00
    ld e, e                                       ; $49fb: $5b

jr_0d5_49fc:
    ld bc, $035f                                  ; $49fc: $01 $5f $03
    xor l                                         ; $49ff: $ad
    jr nz, jr_0d5_4a04                            ; $4a00: $20 $02

    nop                                           ; $4a02: $00
    ld e, e                                       ; $4a03: $5b

jr_0d5_4a04:
    ld bc, $0adb                                  ; $4a04: $01 $db $0a
    ld e, a                                       ; $4a07: $5f
    inc bc                                        ; $4a08: $03
    nop                                           ; $4a09: $00
    nop                                           ; $4a0a: $00
    db $db                                        ; $4a0b: $db
    ld a, [bc]                                    ; $4a0c: $0a
    ld e, a                                       ; $4a0d: $5f
    inc bc                                        ; $4a0e: $03
    ld hl, $2104                                  ; $4a0f: $21 $04 $21
    inc b                                         ; $4a12: $04
    db $db                                        ; $4a13: $db
    ld a, [bc]                                    ; $4a14: $0a
    ld e, a                                       ; $4a15: $5f
    inc bc                                        ; $4a16: $03
    add h                                         ; $4a17: $84
    db $10                                        ; $4a18: $10
    ld [bc], a                                    ; $4a19: $02
    nop                                           ; $4a1a: $00
    db $db                                        ; $4a1b: $db
    ld a, [bc]                                    ; $4a1c: $0a
    ld e, a                                       ; $4a1d: $5f
    inc bc                                        ; $4a1e: $03
    add h                                         ; $4a1f: $84
    db $10                                        ; $4a20: $10
    ld bc, $5b00                                  ; $4a21: $01 $00 $5b
    ld bc, $0abb                                  ; $4a24: $01 $bb $0a
    ld e, a                                       ; $4a27: $5f
    inc bc                                        ; $4a28: $03
    ld b, d                                       ; $4a29: $42
    ld [$2529], sp                                ; $4a2a: $08 $29 $25
    db $db                                        ; $4a2d: $db
    ld a, [bc]                                    ; $4a2e: $0a
    rst $28                                       ; $4a2f: $ef
    dec a                                         ; $4a30: $3d
    ld hl, $2904                                  ; $4a31: $21 $04 $29
    dec h                                         ; $4a34: $25
    db $db                                        ; $4a35: $db
    ld a, [bc]                                    ; $4a36: $0a
    rst $28                                       ; $4a37: $ef
    dec a                                         ; $4a38: $3d
    ld bc, $bb00                                  ; $4a39: $01 $00 $bb
    ld a, [bc]                                    ; $4a3c: $0a
    ld e, a                                       ; $4a3d: $5f
    inc bc                                        ; $4a3e: $03
    add h                                         ; $4a3f: $84
    db $10                                        ; $4a40: $10
    ld [bc], a                                    ; $4a41: $02
    nop                                           ; $4a42: $00
    rst $28                                       ; $4a43: $ef
    dec a                                         ; $4a44: $3d

jr_0d5_4a45:
    ld e, e                                       ; $4a45: $5b
    ld bc, $06fc                                  ; $4a46: $01 $fc $06
    nop                                           ; $4a49: $00
    nop                                           ; $4a4a: $00
    add hl, hl                                    ; $4a4b: $29
    dec h                                         ; $4a4c: $25

jr_0d5_4a4d:
    rst $28                                       ; $4a4d: $ef
    dec a                                         ; $4a4e: $3d
    add h                                         ; $4a4f: $84
    stop                                          ; $4a50: $10 $00
    nop                                           ; $4a52: $00
    rst $28                                       ; $4a53: $ef
    dec a                                         ; $4a54: $3d
    add hl, hl                                    ; $4a55: $29
    dec h                                         ; $4a56: $25
    add h                                         ; $4a57: $84
    db $10                                        ; $4a58: $10
    ld hl, $1d04                                  ; $4a59: $21 $04 $1d
    inc bc                                        ; $4a5c: $03
    add hl, hl                                    ; $4a5d: $29
    dec h                                         ; $4a5e: $25
    rst $28                                       ; $4a5f: $ef
    dec a                                         ; $4a60: $3d
    ld bc, $ef00                                  ; $4a61: $01 $00 $ef
    dec a                                         ; $4a64: $3d
    ld e, l                                       ; $4a65: $5d
    ld [bc], a                                    ; $4a66: $02
    add $18                                       ; $4a67: $c6 $18
    nop                                           ; $4a69: $00
    nop                                           ; $4a6a: $00
    add hl, hl                                    ; $4a6b: $29
    dec h                                         ; $4a6c: $25
    add h                                         ; $4a6d: $84
    db $10                                        ; $4a6e: $10
    add $18                                       ; $4a6f: $c6 $18
    nop                                           ; $4a71: $00
    nop                                           ; $4a72: $00
    add hl, hl                                    ; $4a73: $29
    dec h                                         ; $4a74: $25
    add h                                         ; $4a75: $84
    db $10                                        ; $4a76: $10
    rst $28                                       ; $4a77: $ef
    dec a                                         ; $4a78: $3d
    ld bc, $ef00                                  ; $4a79: $01 $00 $ef
    dec a                                         ; $4a7c: $3d
    dec e                                         ; $4a7d: $1d
    inc bc                                        ; $4a7e: $03
    add hl, hl                                    ; $4a7f: $29
    dec h                                         ; $4a80: $25
    ld [bc], a                                    ; $4a81: $02
    nop                                           ; $4a82: $00
    ld c, d                                       ; $4a83: $4a
    add hl, hl                                    ; $4a84: $29
    ld e, e                                       ; $4a85: $5b
    ld bc, $035f                                  ; $4a86: $01 $5f $03
    nop                                           ; $4a89: $00
    nop                                           ; $4a8a: $00
    add hl, hl                                    ; $4a8b: $29
    dec h                                         ; $4a8c: $25
    or e                                          ; $4a8d: $b3
    dec l                                         ; $4a8e: $2d
    add hl, sp                                    ; $4a8f: $39
    ld [hl], $00                                  ; $4a90: $36 $00
    nop                                           ; $4a92: $00
    add hl, hl                                    ; $4a93: $29
    dec h                                         ; $4a94: $25
    or e                                          ; $4a95: $b3
    dec l                                         ; $4a96: $2d
    add hl, sp                                    ; $4a97: $39
    ld [hl], $21                                  ; $4a98: $36 $21
    inc b                                         ; $4a9a: $04
    rst $28                                       ; $4a9b: $ef
    dec a                                         ; $4a9c: $3d
    db $fd                                        ; $4a9d: $fd
    ld [bc], a                                    ; $4a9e: $02
    add hl, hl                                    ; $4a9f: $29
    dec h                                         ; $4aa0: $25
    ld bc, $d000                                  ; $4aa1: $01 $00 $d0
    dec [hl]                                      ; $4aa4: $35
    ld e, l                                       ; $4aa5: $5d
    ld [bc], a                                    ; $4aa6: $02
    and l                                         ; $4aa7: $a5
    inc d                                         ; $4aa8: $14
    nop                                           ; $4aa9: $00
    nop                                           ; $4aaa: $00
    rla                                           ; $4aab: $17
    ld [hl-], a                                   ; $4aac: $32
    xor c                                         ; $4aad: $a9
    inc b                                         ; $4aae: $04
    inc c                                         ; $4aaf: $0c
    ld de, $0000                                  ; $4ab0: $11 $00 $00
    or $31                                        ; $4ab3: $f6 $31
    xor c                                         ; $4ab5: $a9
    inc b                                         ; $4ab6: $04
    inc c                                         ; $4ab7: $0c
    ld de, $0422                                  ; $4ab8: $11 $22 $04
    rst $28                                       ; $4abb: $ef
    dec a                                         ; $4abc: $3d
    db $fd                                        ; $4abd: $fd
    ld [bc], a                                    ; $4abe: $02
    add hl, hl                                    ; $4abf: $29
    dec h                                         ; $4ac0: $25
    ld [bc], a                                    ; $4ac1: $02
    nop                                           ; $4ac2: $00
    or c                                          ; $4ac3: $b1
    dec l                                         ; $4ac4: $2d
    ld e, l                                       ; $4ac5: $5d
    ld [bc], a                                    ; $4ac6: $02
    add hl, bc                                    ; $4ac7: $09
    dec e                                         ; $4ac8: $1d
    ld bc, $b300                                  ; $4ac9: $01 $00 $b3
    dec l                                         ; $4acc: $2d
    add hl, sp                                    ; $4acd: $39
    ld [hl], $a7                                  ; $4ace: $36 $a7
    inc c                                         ; $4ad0: $0c
    ld [hl+], a                                   ; $4ad1: $22
    inc b                                         ; $4ad2: $04
    or e                                          ; $4ad3: $b3
    dec l                                         ; $4ad4: $2d
    add hl, sp                                    ; $4ad5: $39
    ld [hl], $a7                                  ; $4ad6: $36 $a7
    inc c                                         ; $4ad8: $0c
    ld hl, $f100                                  ; $4ad9: $21 $00 $f1
    add hl, sp                                    ; $4adc: $39
    ld e, a                                       ; $4add: $5f
    inc bc                                        ; $4ade: $03
    ld a, [bc]                                    ; $4adf: $0a
    dec e                                         ; $4ae0: $1d
    ld [bc], a                                    ; $4ae1: $02
    nop                                           ; $4ae2: $00
    sub d                                         ; $4ae3: $92
    add hl, hl                                    ; $4ae4: $29
    ld e, a                                       ; $4ae5: $5f
    inc bc                                        ; $4ae6: $03
    ld e, e                                       ; $4ae7: $5b
    ld bc, $0061                                  ; $4ae8: $01 $61 $00
    ld l, b                                       ; $4aeb: $68
    rra                                           ; $4aec: $1f
    rla                                           ; $4aed: $17
    ld [hl], $fa                                  ; $4aee: $36 $fa
    ld l, e                                       ; $4af0: $6b
    ld b, d                                       ; $4af1: $42
    inc b                                         ; $4af2: $04
    ld l, b                                       ; $4af3: $68
    rra                                           ; $4af4: $1f
    jr c, @+$38                                   ; $4af5: $38 $36

    ld a, [$016b]                                 ; $4af7: $fa $6b $01
    nop                                           ; $4afa: $00
    dec d                                         ; $4afb: $15
    ld [hl], $2b                                  ; $4afc: $36 $2b
    ld hl, $035f                                  ; $4afe: $21 $5f $03
    ld bc, $7500                                  ; $4b01: $01 $00 $75
    dec d                                         ; $4b04: $15
    ld e, a                                       ; $4b05: $5f
    inc bc                                        ; $4b06: $03
    add hl, hl                                    ; $4b07: $29
    dec h                                         ; $4b08: $25
    jr nz, jr_0d5_4b0b                            ; $4b09: $20 $00

jr_0d5_4b0b:
    or e                                          ; $4b0b: $b3
    dec l                                         ; $4b0c: $2d
    ld [$3914], a                                 ; $4b0d: $ea $14 $39
    ld [hl], $21                                  ; $4b10: $36 $21
    nop                                           ; $4b12: $00
    dec l                                         ; $4b13: $2d
    dec e                                         ; $4b14: $1d
    add hl, sp                                    ; $4b15: $39
    ld [hl], $b3                                  ; $4b16: $36 $b3
    dec l                                         ; $4b18: $2d
    ld bc, $3900                                  ; $4b19: $01 $00 $39
    ld [hl], $2b                                  ; $4b1c: $36 $2b
    dec h                                         ; $4b1e: $25
    ld e, a                                       ; $4b1f: $5f
    inc bc                                        ; $4b20: $03
    ld [bc], a                                    ; $4b21: $02
    nop                                           ; $4b22: $00
    rst $28                                       ; $4b23: $ef
    dec a                                         ; $4b24: $3d
    ld a, c                                       ; $4b25: $79
    dec b                                         ; $4b26: $05
    ld e, a                                       ; $4b27: $5f
    inc bc                                        ; $4b28: $03
    dec l                                         ; $4b29: $2d
    dec e                                         ; $4b2a: $1d
    add hl, sp                                    ; $4b2b: $39
    ld [hl], $b3                                  ; $4b2c: $36 $b3
    dec l                                         ; $4b2e: $2d
    ld e, a                                       ; $4b2f: $5f
    inc bc                                        ; $4b30: $03
    ld b, h                                       ; $4b31: $44
    ld [$2db3], sp                                ; $4b32: $08 $b3 $2d
    add hl, sp                                    ; $4b35: $39
    ld [hl], $2d                                  ; $4b36: $36 $2d
    dec e                                         ; $4b38: $1d
    ld hl, $ef04                                  ; $4b39: $21 $04 $ef
    dec a                                         ; $4b3c: $3d
    or a                                          ; $4b3d: $b7
    add hl, bc                                    ; $4b3e: $09
    ld e, a                                       ; $4b3f: $5f
    inc bc                                        ; $4b40: $03
    ld bc, $7700                                  ; $4b41: $01 $00 $77
    dec b                                         ; $4b44: $05
    ld e, a                                       ; $4b45: $5f
    inc bc                                        ; $4b46: $03
    add hl, hl                                    ; $4b47: $29
    dec h                                         ; $4b48: $25
    ld [hl+], a                                   ; $4b49: $22
    inc b                                         ; $4b4a: $04
    add hl, sp                                    ; $4b4b: $39
    ld [hl], $2c                                  ; $4b4c: $36 $2c
    dec e                                         ; $4b4e: $1d
    ld [de], a                                    ; $4b4f: $12
    ld [$0422], sp                                ; $4b50: $08 $22 $04
    sub [hl]                                      ; $4b53: $96
    add hl, bc                                    ; $4b54: $09
    inc l                                         ; $4b55: $2c
    dec e                                         ; $4b56: $1d
    add hl, sp                                    ; $4b57: $39
    ld [hl], $01                                  ; $4b58: $36 $01
    nop                                           ; $4b5a: $00
    rst $28                                       ; $4b5b: $ef
    dec a                                         ; $4b5c: $3d
    ld e, a                                       ; $4b5d: $5f
    inc bc                                        ; $4b5e: $03
    sub [hl]                                      ; $4b5f: $96
    add hl, bc                                    ; $4b60: $09
    ld bc, $7600                                  ; $4b61: $01 $00 $76
    add hl, bc                                    ; $4b64: $09
    ld e, a                                       ; $4b65: $5f
    inc bc                                        ; $4b66: $03
    ld e, e                                       ; $4b67: $5b
    ld bc, $0423                                  ; $4b68: $01 $23 $04
    halt                                          ; $4b6b: $76
    add hl, bc                                    ; $4b6c: $09
    inc l                                         ; $4b6d: $2c
    dec e                                         ; $4b6e: $1d
    add hl, sp                                    ; $4b6f: $39
    ld [hl], $23                                  ; $4b70: $36 $23
    inc b                                         ; $4b72: $04
    halt                                          ; $4b73: $76
    add hl, bc                                    ; $4b74: $09
    add hl, sp                                    ; $4b75: $39
    ld [hl], $2c                                  ; $4b76: $36 $2c
    dec e                                         ; $4b78: $1d
    ld bc, $7600                                  ; $4b79: $01 $00 $76
    add hl, bc                                    ; $4b7c: $09
    ld e, a                                       ; $4b7d: $5f
    inc bc                                        ; $4b7e: $03
    add hl, hl                                    ; $4b7f: $29
    dec h                                         ; $4b80: $25
    ld [bc], a                                    ; $4b81: $02
    nop                                           ; $4b82: $00
    ld d, l                                       ; $4b83: $55
    add hl, bc                                    ; $4b84: $09
    ld e, a                                       ; $4b85: $5f
    inc bc                                        ; $4b86: $03
    ld e, e                                       ; $4b87: $5b
    ld bc, $0843                                  ; $4b88: $01 $43 $08
    ld d, b                                       ; $4b8b: $50
    add hl, de                                    ; $4b8c: $19
    add hl, sp                                    ; $4b8d: $39
    ld [hl], $ea                                  ; $4b8e: $36 $ea
    jr jr_0d5_4bd5                                ; $4b90: $18 $43

    ld [$1550], sp                                ; $4b92: $08 $50 $15
    add hl, sp                                    ; $4b95: $39
    ld [hl], $e9                                  ; $4b96: $36 $e9
    jr jr_0d5_4b9c                                ; $4b98: $18 $02

    nop                                           ; $4b9a: $00
    ld d, l                                       ; $4b9b: $55

jr_0d5_4b9c:
    add hl, bc                                    ; $4b9c: $09
    ld e, a                                       ; $4b9d: $5f
    inc bc                                        ; $4b9e: $03
    ld [hl], l                                    ; $4b9f: $75
    add hl, bc                                    ; $4ba0: $09
    ld [bc], a                                    ; $4ba1: $02
    nop                                           ; $4ba2: $00
    ld [hl], $05                                  ; $4ba3: $36 $05
    ld e, a                                       ; $4ba5: $5f
    inc bc                                        ; $4ba6: $03
    and l                                         ; $4ba7: $a5
    inc d                                         ; $4ba8: $14
    nop                                           ; $4ba9: $00
    nop                                           ; $4baa: $00
    jr jr_0d5_4c10                                ; $4bab: $18 $63

    ld [$4418], a                                 ; $4bad: $ea $18 $44
    ld [$0000], sp                                ; $4bb0: $08 $00 $00
    ld d, e                                       ; $4bb3: $53
    ld c, d                                       ; $4bb4: $4a
    ld [$4418], a                                 ; $4bb5: $ea $18 $44
    ld [$0002], sp                                ; $4bb8: $08 $02 $00
    dec [hl]                                      ; $4bbb: $35
    add hl, bc                                    ; $4bbc: $09
    ld e, a                                       ; $4bbd: $5f
    inc bc                                        ; $4bbe: $03
    add h                                         ; $4bbf: $84
    db $10                                        ; $4bc0: $10
    ld [bc], a                                    ; $4bc1: $02
    nop                                           ; $4bc2: $00
    ld [hl], $05                                  ; $4bc3: $36 $05
    ld d, e                                       ; $4bc5: $53
    ld c, d                                       ; $4bc6: $4a
    ld e, a                                       ; $4bc7: $5f
    inc bc                                        ; $4bc8: $03
    add h                                         ; $4bc9: $84
    db $10                                        ; $4bca: $10
    jr c, @+$38                                   ; $4bcb: $38 $36

    jr jr_0d5_4c32                                ; $4bcd: $18 $63

    dec bc                                        ; $4bcf: $0b
    dec e                                         ; $4bd0: $1d
    add h                                         ; $4bd1: $84
    db $10                                        ; $4bd2: $10
    dec [hl]                                      ; $4bd3: $35

jr_0d5_4bd4:
    ld b, d                                       ; $4bd4: $42

jr_0d5_4bd5:
    jr jr_0d5_4c3a                                ; $4bd5: $18 $63

    dec bc                                        ; $4bd7: $0b
    dec e                                         ; $4bd8: $1d
    add h                                         ; $4bd9: $84
    db $10                                        ; $4bda: $10
    ld d, e                                       ; $4bdb: $53
    ld c, d                                       ; $4bdc: $4a
    ld e, a                                       ; $4bdd: $5f
    inc bc                                        ; $4bde: $03
    inc d                                         ; $4bdf: $14
    add hl, bc                                    ; $4be0: $09
    ld [bc], a                                    ; $4be1: $02
    nop                                           ; $4be2: $00
    ld e, e                                       ; $4be3: $5b
    ld bc, $035f                                  ; $4be4: $01 $5f $03
    inc d                                         ; $4be7: $14
    add hl, bc                                    ; $4be8: $09
    ld e, e                                       ; $4be9: $5b
    ld bc, $035f                                  ; $4bea: $01 $5f $03
    ld e, a                                       ; $4bed: $5f
    inc bc                                        ; $4bee: $03
    inc d                                         ; $4bef: $14
    add hl, bc                                    ; $4bf0: $09
    ld e, e                                       ; $4bf1: $5b
    ld bc, $035f                                  ; $4bf2: $01 $5f $03
    ld e, a                                       ; $4bf5: $5f

jr_0d5_4bf6:
    inc bc                                        ; $4bf6: $03
    inc d                                         ; $4bf7: $14
    add hl, bc                                    ; $4bf8: $09
    ld [bc], a                                    ; $4bf9: $02
    nop                                           ; $4bfa: $00
    ld e, e                                       ; $4bfb: $5b
    ld bc, $035f                                  ; $4bfc: $01 $5f $03
    inc d                                         ; $4bff: $14
    add hl, bc                                    ; $4c00: $09
    ld bc, $5b00                                  ; $4c01: $01 $00 $5b
    ld bc, $050d                                  ; $4c04: $01 $0d $05
    ld e, a                                       ; $4c07: $5f
    inc bc                                        ; $4c08: $03
    ld [hl], b                                    ; $4c09: $70
    add hl, bc                                    ; $4c0a: $09
    ld e, a                                       ; $4c0b: $5f
    inc bc                                        ; $4c0c: $03
    inc d                                         ; $4c0d: $14
    ld [hl+], a                                   ; $4c0e: $22
    sub c                                         ; $4c0f: $91

jr_0d5_4c10:
    ld de, $0970                                  ; $4c10: $11 $70 $09
    ld e, a                                       ; $4c13: $5f
    inc bc                                        ; $4c14: $03
    or c                                          ; $4c15: $b1
    dec d                                         ; $4c16: $15
    db $d3                                        ; $4c17: $d3
    add hl, de                                    ; $4c18: $19
    ld [bc], a                                    ; $4c19: $02
    nop                                           ; $4c1a: $00
    ld e, a                                       ; $4c1b: $5f
    inc bc                                        ; $4c1c: $03
    dec bc                                        ; $4c1d: $0b
    dec b                                         ; $4c1e: $05
    ld [hl], b                                    ; $4c1f: $70
    dec c                                         ; $4c20: $0d
    ld [bc], a                                    ; $4c21: $02
    nop                                           ; $4c22: $00
    ld c, [hl]                                    ; $4c23: $4e
    add hl, bc                                    ; $4c24: $09
    ld e, l                                       ; $4c25: $5d
    ld [bc], a                                    ; $4c26: $02
    db $10                                        ; $4c27: $10
    ld b, d                                       ; $4c28: $42
    nop                                           ; $4c29: $00
    nop                                           ; $4c2a: $00
    ld l, a                                       ; $4c2b: $6f
    dec c                                         ; $4c2c: $0d
    ld d, [hl]                                    ; $4c2d: $56
    ld l, $d2                                     ; $4c2e: $2e $d2
    add hl, de                                    ; $4c30: $19
    ret                                           ; $4c31: $c9


jr_0d5_4c32:
    nop                                           ; $4c32: $00
    reti                                          ; $4c33: $d9


    ld a, $2d                                     ; $4c34: $3e $2d
    dec c                                         ; $4c36: $0d
    ld [hl], b                                    ; $4c37: $70
    add hl, bc                                    ; $4c38: $09
    inc h                                         ; $4c39: $24

jr_0d5_4c3a:
    nop                                           ; $4c3a: $00
    cp c                                          ; $4c3b: $b9
    ld a, [hl-]                                   ; $4c3c: $3a
    ld l, $09                                     ; $4c3d: $2e $09
    ld e, a                                       ; $4c3f: $5f
    inc bc                                        ; $4c40: $03
    ld bc, $3900                                  ; $4c41: $01 $00 $39
    ld h, a                                       ; $4c44: $67
    ld e, l                                       ; $4c45: $5d
    ld [bc], a                                    ; $4c46: $02
    add h                                         ; $4c47: $84
    inc d                                         ; $4c48: $14
    nop                                           ; $4c49: $00
    nop                                           ; $4c4a: $00
    and l                                         ; $4c4b: $a5
    jr nc, jr_0d5_4c4e                            ; $4c4c: $30 $00

jr_0d5_4c4e:
    jr nz, jr_0d5_4bd4                            ; $4c4e: $20 $84

    inc d                                         ; $4c50: $14
    nop                                           ; $4c51: $00
    nop                                           ; $4c52: $00
    cp c                                          ; $4c53: $b9
    ld a, [hl-]                                   ; $4c54: $3a
    ld c, a                                       ; $4c55: $4f
    add hl, bc                                    ; $4c56: $09
    xor b                                         ; $4c57: $a8
    nop                                           ; $4c58: $00
    ld [bc], a                                    ; $4c59: $02
    nop                                           ; $4c5a: $00
    ld d, [hl]                                    ; $4c5b: $56
    ld [hl-], a                                   ; $4c5c: $32
    ld c, [hl]                                    ; $4c5d: $4e
    dec c                                         ; $4c5e: $0d
    ld e, a                                       ; $4c5f: $5f
    inc bc                                        ; $4c60: $03
    ld bc, $9400                                  ; $4c61: $01 $00 $94
    ld d, d                                       ; $4c64: $52
    ld e, l                                       ; $4c65: $5d
    ld [bc], a                                    ; $4c66: $02
    add [hl]                                      ; $4c67: $86
    inc c                                         ; $4c68: $0c
    nop                                           ; $4c69: $00
    nop                                           ; $4c6a: $00
    and l                                         ; $4c6b: $a5
    inc d                                         ; $4c6c: $14
    nop                                           ; $4c6d: $00
    jr nz, jr_0d5_4bf6                            ; $4c6e: $20 $86

    nop                                           ; $4c70: $00
    nop                                           ; $4c71: $00
    nop                                           ; $4c72: $00
    ld [hl], b                                    ; $4c73: $70
    ld de, $2842                                  ; $4c74: $11 $42 $28
    xor b                                         ; $4c77: $a8
    nop                                           ; $4c78: $00
    ld b, l                                       ; $4c79: $45
    nop                                           ; $4c7a: $00
    cp c                                          ; $4c7b: $b9
    ld a, $4e                                     ; $4c7c: $3e $4e
    add hl, bc                                    ; $4c7e: $09
    ld e, a                                       ; $4c7f: $5f
    inc bc                                        ; $4c80: $03
    ld bc, $3400                                  ; $4c81: $01 $00 $34
    dec b                                         ; $4c84: $05
    ld e, a                                       ; $4c85: $5f
    inc bc                                        ; $4c86: $03
    ld b, d                                       ; $4c87: $42
    inc e                                         ; $4c88: $1c
    nop                                           ; $4c89: $00
    nop                                           ; $4c8a: $00
    db $10                                        ; $4c8b: $10
    ld b, d                                       ; $4c8c: $42
    and l                                         ; $4c8d: $a5
    inc d                                         ; $4c8e: $14
    xor b                                         ; $4c8f: $a8
    nop                                           ; $4c90: $00
    nop                                           ; $4c91: $00
    nop                                           ; $4c92: $00
    and l                                         ; $4c93: $a5
    inc d                                         ; $4c94: $14
    ld [$0004], a                                 ; $4c95: $ea $04 $00
    jr nz, jr_0d5_4c9c                            ; $4c98: $20 $02

    nop                                           ; $4c9a: $00
    ld e, a                                       ; $4c9b: $5f

jr_0d5_4c9c:
    inc bc                                        ; $4c9c: $03
    dec l                                         ; $4c9d: $2d
    dec b                                         ; $4c9e: $05
    jp nc, $011d                                  ; $4c9f: $d2 $1d $01

    nop                                           ; $4ca2: $00

jr_0d5_4ca3:
    ld d, d                                       ; $4ca3: $52
    dec b                                         ; $4ca4: $05
    ld e, a                                       ; $4ca5: $5f
    inc bc                                        ; $4ca6: $03
    ld b, d                                       ; $4ca7: $42
    jr z, jr_0d5_4d0d                             ; $4ca8: $28 $63

    inc c                                         ; $4caa: $0c
    adc $3d                                       ; $4cab: $ce $3d
    add hl, sp                                    ; $4cad: $39
    ld h, a                                       ; $4cae: $67
    dec l                                         ; $4caf: $2d
    add hl, bc                                    ; $4cb0: $09
    nop                                           ; $4cb1: $00
    jr nz, jr_0d5_4ca3                            ; $4cb2: $20 $ef

    dec a                                         ; $4cb4: $3d
    add hl, sp                                    ; $4cb5: $39
    ld h, a                                       ; $4cb6: $67
    and l                                         ; $4cb7: $a5
    inc d                                         ; $4cb8: $14
    ld bc, $b808                                  ; $4cb9: $01 $08 $b8
    ld a, [hl-]                                   ; $4cbc: $3a
    dec l                                         ; $4cbd: $2d
    add hl, bc                                    ; $4cbe: $09
    ld e, a                                       ; $4cbf: $5f
    inc bc                                        ; $4cc0: $03
    ld bc, $5b00                                  ; $4cc1: $01 $00 $5b
    ld bc, $10c9                                  ; $4cc4: $01 $c9 $10
    ld e, a                                       ; $4cc7: $5f
    inc bc                                        ; $4cc8: $03
    and [hl]                                      ; $4cc9: $a6
    inc c                                         ; $4cca: $0c
    rst $28                                       ; $4ccb: $ef
    dec a                                         ; $4ccc: $3d
    add hl, sp                                    ; $4ccd: $39
    ld h, a                                       ; $4cce: $67
    ld l, $09                                     ; $4ccf: $2e $09
    adc $3d                                       ; $4cd1: $ce $3d
    add hl, sp                                    ; $4cd3: $39
    ld h, a                                       ; $4cd4: $67
    db $10                                        ; $4cd5: $10
    ld b, d                                       ; $4cd6: $42
    ld l, $09                                     ; $4cd7: $2e $09
    ld [hl+], a                                   ; $4cd9: $22
    db $10                                        ; $4cda: $10
    add hl, sp                                    ; $4cdb: $39
    ld h, a                                       ; $4cdc: $67
    dec l                                         ; $4cdd: $2d
    dec c                                         ; $4cde: $0d
    ld e, a                                       ; $4cdf: $5f
    inc bc                                        ; $4ce0: $03
    ld bc, $5b00                                  ; $4ce1: $01 $00 $5b
    ld bc, $0cc9                                  ; $4ce4: $01 $c9 $0c
    ld e, a                                       ; $4ce7: $5f
    inc bc                                        ; $4ce8: $03
    nop                                           ; $4ce9: $00
    inc e                                         ; $4cea: $1c
    rst $28                                       ; $4ceb: $ef
    dec a                                         ; $4cec: $3d
    ld l, $09                                     ; $4ced: $2e $09
    and l                                         ; $4cef: $a5
    inc h                                         ; $4cf0: $24
    nop                                           ; $4cf1: $00
    inc e                                         ; $4cf2: $1c
    db $10                                        ; $4cf3: $10
    ld b, d                                       ; $4cf4: $42
    rst $30                                       ; $4cf5: $f7
    ld e, [hl]                                    ; $4cf6: $5e
    and l                                         ; $4cf7: $a5
    jr nc, jr_0d5_4d3d                            ; $4cf8: $30 $43

    db $10                                        ; $4cfa: $10
    xor a                                         ; $4cfb: $af
    dec h                                         ; $4cfc: $25
    add hl, sp                                    ; $4cfd: $39
    ld h, a                                       ; $4cfe: $67
    ld e, a                                       ; $4cff: $5f
    inc bc                                        ; $4d00: $03
    ld [bc], a                                    ; $4d01: $02
    nop                                           ; $4d02: $00
    ld e, e                                       ; $4d03: $5b
    ld bc, $2442                                  ; $4d04: $01 $42 $24
    ld e, a                                       ; $4d07: $5f
    inc bc                                        ; $4d08: $03
    nop                                           ; $4d09: $00
    inc e                                         ; $4d0a: $1c
    rst $28                                       ; $4d0b: $ef
    dec a                                         ; $4d0c: $3d

jr_0d5_4d0d:
    push bc                                       ; $4d0d: $c5
    inc l                                         ; $4d0e: $2c
    and l                                         ; $4d0f: $a5
    inc d                                         ; $4d10: $14
    nop                                           ; $4d11: $00
    nop                                           ; $4d12: $00
    rst $30                                       ; $4d13: $f7
    ld h, d                                       ; $4d14: $62
    and l                                         ; $4d15: $a5
    inc l                                         ; $4d16: $2c
    nop                                           ; $4d17: $00
    inc e                                         ; $4d18: $1c
    ld [hl+], a                                   ; $4d19: $22
    db $10                                        ; $4d1a: $10
    ld d, d                                       ; $4d1b: $52
    ld c, d                                       ; $4d1c: $4a
    ld e, a                                       ; $4d1d: $5f
    inc bc                                        ; $4d1e: $03
    ld [hl], b                                    ; $4d1f: $70
    add hl, bc                                    ; $4d20: $09
    ld bc, $5b00                                  ; $4d21: $01 $00 $5b
    ld bc, $08a8                                  ; $4d24: $01 $a8 $08
    ld e, a                                       ; $4d27: $5f
    inc bc                                        ; $4d28: $03
    ld h, e                                       ; $4d29: $63
    inc d                                         ; $4d2a: $14

jr_0d5_4d2b:
    xor l                                         ; $4d2b: $ad
    dec [hl]                                      ; $4d2c: $35
    and l                                         ; $4d2d: $a5
    inc l                                         ; $4d2e: $2c
    db $10                                        ; $4d2f: $10
    ld b, d                                       ; $4d30: $42
    nop                                           ; $4d31: $00
    nop                                           ; $4d32: $00
    and l                                         ; $4d33: $a5
    jr nc, jr_0d5_4d36                            ; $4d34: $30 $00

jr_0d5_4d36:
    inc e                                         ; $4d36: $1c
    and $2c                                       ; $4d37: $e6 $2c
    nop                                           ; $4d39: $00
    jr nz, jr_0d5_4d2b                            ; $4d3a: $20 $ef

    dec a                                         ; $4d3c: $3d

jr_0d5_4d3d:
    ld e, a                                       ; $4d3d: $5f
    inc bc                                        ; $4d3e: $03
    ld h, e                                       ; $4d3f: $63
    inc c                                         ; $4d40: $0c

jr_0d5_4d41:
    ld bc, $5b00                                  ; $4d41: $01 $00 $5b
    ld bc, $04c9                                  ; $4d44: $01 $c9 $04
    ld e, a                                       ; $4d47: $5f
    inc bc                                        ; $4d48: $03
    nop                                           ; $4d49: $00
    jr nz, @-$0f                                  ; $4d4a: $20 $ef

    dec a                                         ; $4d4c: $3d
    add $18                                       ; $4d4d: $c6 $18
    and $2c                                       ; $4d4f: $e6 $2c
    nop                                           ; $4d51: $00
    nop                                           ; $4d52: $00
    db $10                                        ; $4d53: $10
    ld b, d                                       ; $4d54: $42
    and l                                         ; $4d55: $a5
    inc l                                         ; $4d56: $2c
    nop                                           ; $4d57: $00

jr_0d5_4d58:
    inc e                                         ; $4d58: $1c
    ld h, e                                       ; $4d59: $63
    db $10                                        ; $4d5a: $10
    rst $28                                       ; $4d5b: $ef
    dec a                                         ; $4d5c: $3d
    ld e, a                                       ; $4d5d: $5f
    inc bc                                        ; $4d5e: $03
    add hl, sp                                    ; $4d5f: $39
    ld h, a                                       ; $4d60: $67
    ld [bc], a                                    ; $4d61: $02
    nop                                           ; $4d62: $00
    sub l                                         ; $4d63: $95
    ld de, $00a8                                  ; $4d64: $11 $a8 $00
    ld e, a                                       ; $4d67: $5f
    inc bc                                        ; $4d68: $03
    nop                                           ; $4d69: $00
    nop                                           ; $4d6a: $00
    rst $28                                       ; $4d6b: $ef
    dec a                                         ; $4d6c: $3d
    add $18                                       ; $4d6d: $c6 $18
    nop                                           ; $4d6f: $00
    jr nz, jr_0d5_4d72                            ; $4d70: $20 $00

jr_0d5_4d72:
    inc e                                         ; $4d72: $1c
    rst $28                                       ; $4d73: $ef
    dec a                                         ; $4d74: $3d
    add hl, sp                                    ; $4d75: $39
    ld h, a                                       ; $4d76: $67
    and l                                         ; $4d77: $a5
    inc l                                         ; $4d78: $2c
    ld bc, $b010                                  ; $4d79: $01 $10 $b0
    dec h                                         ; $4d7c: $25

jr_0d5_4d7d:
    ld e, a                                       ; $4d7d: $5f
    inc bc                                        ; $4d7e: $03
    and l                                         ; $4d7f: $a5
    inc d                                         ; $4d80: $14
    ld [bc], a                                    ; $4d81: $02
    nop                                           ; $4d82: $00
    ld d, e                                       ; $4d83: $53
    add hl, bc                                    ; $4d84: $09
    dec a                                         ; $4d85: $3d
    rla                                           ; $4d86: $17
    xor b                                         ; $4d87: $a8
    nop                                           ; $4d88: $00
    nop                                           ; $4d89: $00
    nop                                           ; $4d8a: $00
    adc $39                                       ; $4d8b: $ce $39
    and l                                         ; $4d8d: $a5
    stop                                          ; $4d8e: $10 $00
    jr nz, jr_0d5_4d58                            ; $4d90: $20 $c6

    jr jr_0d5_4d41                                ; $4d92: $18 $ad

    dec [hl]                                      ; $4d94: $35
    db $10                                        ; $4d95: $10
    ld b, d                                       ; $4d96: $42
    and $2c                                       ; $4d97: $e6 $2c
    ld bc, $b100                                  ; $4d99: $01 $00 $b1
    ld de, $035f                                  ; $4d9c: $11 $5f $03
    ld h, e                                       ; $4d9f: $63
    inc d                                         ; $4da0: $14
    ld [bc], a                                    ; $4da1: $02
    nop                                           ; $4da2: $00
    db $eb                                        ; $4da3: $eb
    inc b                                         ; $4da4: $04
    ld e, e                                       ; $4da5: $5b
    ld bc, $035f                                  ; $4da6: $01 $5f $03
    ld hl, $a804                                  ; $4da9: $21 $04 $a8
    nop                                           ; $4dac: $00
    and l                                         ; $4dad: $a5
    inc d                                         ; $4dae: $14
    nop                                           ; $4daf: $00
    jr nz, jr_0d5_4dd3                            ; $4db0: $20 $21

    inc d                                         ; $4db2: $14
    xor l                                         ; $4db3: $ad
    dec [hl]                                      ; $4db4: $35
    and l                                         ; $4db5: $a5
    inc d                                         ; $4db6: $14
    rst $20                                       ; $4db7: $e7
    inc e                                         ; $4db8: $1c
    ld [hl+], a                                   ; $4db9: $22
    ld [$094f], sp                                ; $4dba: $08 $4f $09
    ld e, a                                       ; $4dbd: $5f
    inc bc                                        ; $4dbe: $03
    dec [hl]                                      ; $4dbf: $35
    ld a, [hl+]                                   ; $4dc0: $2a
    ld [bc], a                                    ; $4dc1: $02
    nop                                           ; $4dc2: $00
    inc c                                         ; $4dc3: $0c
    add hl, bc                                    ; $4dc4: $09
    sbc c                                         ; $4dc5: $99
    dec c                                         ; $4dc6: $0d
    ld e, a                                       ; $4dc7: $5f
    inc bc                                        ; $4dc8: $03
    nop                                           ; $4dc9: $00
    nop                                           ; $4dca: $00
    inc d                                         ; $4dcb: $14
    ld a, [hl+]                                   ; $4dcc: $2a
    add a                                         ; $4dcd: $87
    nop                                           ; $4dce: $00
    nop                                           ; $4dcf: $00
    jr nz, jr_0d5_4dd2                            ; $4dd0: $20 $00

jr_0d5_4dd2:
    nop                                           ; $4dd2: $00

jr_0d5_4dd3:
    ld h, e                                       ; $4dd3: $63
    inc c                                         ; $4dd4: $0c
    nop                                           ; $4dd5: $00
    jr nz, jr_0d5_4d7d                            ; $4dd6: $20 $a5

    inc d                                         ; $4dd8: $14
    ld bc, $5f00                                  ; $4dd9: $01 $00 $5f
    inc bc                                        ; $4ddc: $03
    ret                                           ; $4ddd: $c9


    nop                                           ; $4dde: $00
    ld c, [hl]                                    ; $4ddf: $4e
    add hl, bc                                    ; $4de0: $09
    ld [bc], a                                    ; $4de1: $02
    nop                                           ; $4de2: $00
    ld e, e                                       ; $4de3: $5b
    ld bc, $035f                                  ; $4de4: $01 $5f $03
    ld c, [hl]                                    ; $4de7: $4e
    add hl, bc                                    ; $4de8: $09
    ld e, e                                       ; $4de9: $5b
    ld bc, $035f                                  ; $4dea: $01 $5f $03
    ld e, a                                       ; $4ded: $5f
    inc bc                                        ; $4dee: $03
    ld c, [hl]                                    ; $4def: $4e
    add hl, bc                                    ; $4df0: $09
    ld e, e                                       ; $4df1: $5b
    ld bc, $035f                                  ; $4df2: $01 $5f $03
    ld e, a                                       ; $4df5: $5f
    inc bc                                        ; $4df6: $03
    ld c, [hl]                                    ; $4df7: $4e
    add hl, bc                                    ; $4df8: $09
    ld [bc], a                                    ; $4df9: $02
    nop                                           ; $4dfa: $00
    ld e, e                                       ; $4dfb: $5b
    ld bc, $035f                                  ; $4dfc: $01 $5f $03
    ld c, [hl]                                    ; $4dff: $4e
    add hl, bc                                    ; $4e00: $09
    nop                                           ; $4e01: $00
    ld bc, $00e3                                  ; $4e02: $01 $e3 $00
    ld b, b                                       ; $4e05: $40
    rst $38                                       ; $4e06: $ff
    ld bc, $fe40                                  ; $4e07: $01 $40 $fe
    cp $f9                                        ; $4e0a: $fe $f9
    ld hl, sp-$02                                 ; $4e0c: $f8 $fe
    cp $00                                        ; $4e0e: $fe $00
    db $fd                                        ; $4e10: $fd
    db $fc                                        ; $4e11: $fc
    ld a, [c]                                     ; $4e12: $f2
    ldh a, [$ed]                                  ; $4e13: $f0 $ed
    ldh [rHDMA3], a                               ; $4e15: $e0 $53
    ld b, b                                       ; $4e17: $40
    nop                                           ; $4e18: $00
    ld a, [hl+]                                   ; $4e19: $2a
    ld bc, $2093                                  ; $4e1a: $01 $93 $20
    ld [bc], a                                    ; $4e1d: $02
    db $10                                        ; $4e1e: $10
    ld a, a                                       ; $4e1f: $7f
    ld a, a                                       ; $4e20: $7f
    nop                                           ; $4e21: $00
    cp a                                          ; $4e22: $bf
    ccf                                           ; $4e23: $3f
    ld c, a                                       ; $4e24: $4f
    rrca                                          ; $4e25: $0f
    or a                                          ; $4e26: $b7
    rlca                                          ; $4e27: $07
    ld c, c                                       ; $4e28: $49
    add c                                         ; $4e29: $81
    ld [bc], a                                    ; $4e2a: $02
    and h                                         ; $4e2b: $a4
    ld b, b                                       ; $4e2c: $40
    ld [$50e2], sp                                ; $4e2d: $08 $e2 $50
    inc b                                         ; $4e30: $04
    jr nc, jr_0d5_4e7b                            ; $4e31: $30 $48

    ld a, a                                       ; $4e33: $7f
    nop                                           ; $4e34: $00
    ld a, a                                       ; $4e35: $7f
    sbc a                                         ; $4e36: $9f
    rra                                           ; $4e37: $1f
    or $f0                                        ; $4e38: $f6 $f0
    add sp, -$1f                                  ; $4e3a: $e8 $e1
    call nc, $c200                                ; $4e3c: $d4 $00 $c2
    xor b                                         ; $4e3f: $a8
    add c                                         ; $4e40: $81
    ld d, h                                       ; $4e41: $54
    ld [bc], a                                    ; $4e42: $02

jr_0d5_4e43:
    ld [$1700], sp                                ; $4e43: $08 $00 $17
    nop                                           ; $4e46: $00
    jr nz, @+$46                                  ; $4e47: $20 $44

    nop                                           ; $4e49: $00
    nop                                           ; $4e4a: $00
    db $ed                                        ; $4e4b: $ed
    nop                                           ; $4e4c: $00
    add d                                         ; $4e4d: $82
    add hl, de                                    ; $4e4e: $19
    nop                                           ; $4e4f: $00
    and b                                         ; $4e50: $a0
    ld bc, $0a48                                  ; $4e51: $01 $48 $0a
    ret nc                                        ; $4e54: $d0

    ld bc, $01e4                                  ; $4e55: $01 $e4 $01
    nop                                           ; $4e58: $00
    ld [hl], h                                    ; $4e59: $74
    nop                                           ; $4e5a: $00
    add hl, sp                                    ; $4e5b: $39
    ld bc, $0a8c                                  ; $4e5c: $01 $8c $0a
    inc d                                         ; $4e5f: $14
    ld l, b                                       ; $4e60: $68
    nop                                           ; $4e61: $00
    dec d                                         ; $4e62: $15
    ld l, e                                       ; $4e63: $6b
    nop                                           ; $4e64: $00
    db $e4                                        ; $4e65: $e4
    ld [$25c2], sp                                ; $4e66: $08 $c2 $25
    add b                                         ; $4e69: $80
    nop                                           ; $4e6a: $00
    ld e, b                                       ; $4e6b: $58
    nop                                           ; $4e6c: $00
    rra                                           ; $4e6d: $1f
    cpl                                           ; $4e6e: $2f
    rrca                                          ; $4e6f: $0f
    rla                                           ; $4e70: $17
    rlca                                          ; $4e71: $07
    dec bc                                        ; $4e72: $0b
    nop                                           ; $4e73: $00
    and e                                         ; $4e74: $a3
    dec b                                         ; $4e75: $05
    ld d, c                                       ; $4e76: $51
    ld [bc], a                                    ; $4e77: $02
    jr c, jr_0d5_4e7c                             ; $4e78: $38 $02

    ld a, b                                       ; $4e7a: $78

jr_0d5_4e7b:
    ld [bc], a                                    ; $4e7b: $02

jr_0d5_4e7c:
    nop                                           ; $4e7c: $00
    ld hl, sp+$02                                 ; $4e7d: $f8 $02
    ld hl, sp-$5a                                 ; $4e7f: $f8 $a6
    add b                                         ; $4e81: $80
    xor c                                         ; $4e82: $a9
    add b                                         ; $4e83: $80
    xor c                                         ; $4e84: $a9
    nop                                           ; $4e85: $00
    add d                                         ; $4e86: $82
    ret nc                                        ; $4e87: $d0

    jp $c3d0                                      ; $4e88: $c3 $d0 $c3


    pop de                                        ; $4e8b: $d1
    call nz, $00e9                                ; $4e8c: $c4 $e9 $00
    ldh [$e8], a                                  ; $4e8f: $e0 $e8
    ldh [$c1], a                                  ; $4e91: $e0 $c1
    inc e                                         ; $4e93: $1c
    ld bc, $01d8                                  ; $4e94: $01 $d8 $01
    nop                                           ; $4e97: $00
    call nc, $8c41                                ; $4e98: $d4 $41 $8c
    ld b, l                                       ; $4e9b: $45
    sbc b                                         ; $4e9c: $98
    ret z                                         ; $4e9d: $c8

    dec d                                         ; $4e9e: $15
    adc [hl]                                      ; $4e9f: $8e
    nop                                           ; $4ea0: $00
    nop                                           ; $4ea1: $00
    adc [hl]                                      ; $4ea2: $8e
    nop                                           ; $4ea3: $00
    add b                                         ; $4ea4: $80
    ld e, a                                       ; $4ea5: $5f
    nop                                           ; $4ea6: $00
    xor a                                         ; $4ea7: $af
    nop                                           ; $4ea8: $00
    nop                                           ; $4ea9: $00
    or [hl]                                       ; $4eaa: $b6
    jr nz, jr_0d5_4e43                            ; $4eab: $20 $96

    jr nz, jr_0d5_4f00                            ; $4ead: $20 $51

    ld c, c                                       ; $4eaf: $49
    ld [hl+], a                                   ; $4eb0: $22
    ld d, d                                       ; $4eb1: $52
    nop                                           ; $4eb2: $00
    dec b                                         ; $4eb3: $05
    push de                                       ; $4eb4: $d5
    ld [bc], a                                    ; $4eb5: $02
    dec b                                         ; $4eb6: $05
    pop af                                        ; $4eb7: $f1
    dec b                                         ; $4eb8: $05
    ld [hl], c                                    ; $4eb9: $71
    add l                                         ; $4eba: $85
    nop                                           ; $4ebb: $00
    ld sp, $238b                                  ; $4ebc: $31 $8b $23
    dec bc                                        ; $4ebf: $0b
    inc hl                                        ; $4ec0: $23
    ld c, e                                       ; $4ec1: $4b
    inc bc                                        ; $4ec2: $03
    sub a                                         ; $4ec3: $97
    ld bc, $1747                                  ; $4ec4: $01 $47 $17
    rst $00                                       ; $4ec7: $c7
    add sp, -$20                                  ; $4ec8: $e8 $e0
    db $f4                                        ; $4eca: $f4
    ldh a, [rSC]                                  ; $4ecb: $f0 $02
    ld [$fa00], sp                                ; $4ecd: $08 $00 $fa
    ld hl, sp-$06                                 ; $4ed0: $f8 $fa
    ld hl, sp-$05                                 ; $4ed2: $f8 $fb
    ld hl, sp-$04                                 ; $4ed4: $f8 $fc
    db $fc                                        ; $4ed6: $fc
    nop                                           ; $4ed7: $00
    ld b, [hl]                                    ; $4ed8: $46
    add hl, bc                                    ; $4ed9: $09
    add [hl]                                      ; $4eda: $86
    nop                                           ; $4edb: $00
    ld b, [hl]                                    ; $4edc: $46
    ld bc, $0006                                  ; $4edd: $01 $06 $00
    nop                                           ; $4ee0: $00
    ld b, $08                                     ; $4ee1: $06 $08
    nop                                           ; $4ee3: $00
    nop                                           ; $4ee4: $00
    rst $38                                       ; $4ee5: $ff
    nop                                           ; $4ee6: $00
    nop                                           ; $4ee7: $00
    nop                                           ; $4ee8: $00
    nop                                           ; $4ee9: $00
    ret nz                                        ; $4eea: $c0

    cpl                                           ; $4eeb: $2f
    sub b                                         ; $4eec: $90
    ld c, [hl]                                    ; $4eed: $4e
    sub c                                         ; $4eee: $91
    inc l                                         ; $4eef: $2c
    add c                                         ; $4ef0: $81
    ld a, [hl-]                                   ; $4ef1: $3a
    jr nz, jr_0d5_4ef4                            ; $4ef2: $20 $00

jr_0d5_4ef4:
    pop de                                        ; $4ef4: $d1
    db $10                                        ; $4ef5: $10
    jr jr_0d5_4f0f                                ; $4ef6: $18 $17

    rlca                                          ; $4ef8: $07
    xor a                                         ; $4ef9: $af
    rrca                                          ; $4efa: $0f
    xor a                                         ; $4efb: $af
    nop                                           ; $4efc: $00
    rrca                                          ; $4efd: $0f
    cpl                                           ; $4efe: $2f
    adc a                                         ; $4eff: $8f

jr_0d5_4f00:
    ld e, a                                       ; $4f00: $5f
    rra                                           ; $4f01: $1f
    ld e, a                                       ; $4f02: $5f
    rra                                           ; $4f03: $1f
    rst $18                                       ; $4f04: $df
    nop                                           ; $4f05: $00
    rra                                           ; $4f06: $1f
    ccf                                           ; $4f07: $3f
    ccf                                           ; $4f08: $3f
    nop                                           ; $4f09: $00
    ld bc, $00e2                                  ; $4f0a: $01 $e2 $00
    ld b, b                                       ; $4f0d: $40
    rst $38                                       ; $4f0e: $ff

jr_0d5_4f0f:
    ld bc, $fe40                                  ; $4f0f: $01 $40 $fe
    cp $f9                                        ; $4f12: $fe $f9
    ld hl, sp-$02                                 ; $4f14: $f8 $fe
    cp $00                                        ; $4f16: $fe $00
    db $fd                                        ; $4f18: $fd
    db $fc                                        ; $4f19: $fc
    ld a, [c]                                     ; $4f1a: $f2
    ldh a, [$ed]                                  ; $4f1b: $f0 $ed
    ldh [$d2], a                                  ; $4f1d: $e0 $d2
    ret nz                                        ; $4f1f: $c0

    nop                                           ; $4f20: $00
    inc h                                         ; $4f21: $24
    dec bc                                        ; $4f22: $0b
    ret c                                         ; $4f23: $d8

    dec b                                         ; $4f24: $05
    add hl, hl                                    ; $4f25: $29
    ld [de], a                                    ; $4f26: $12
    ld h, a                                       ; $4f27: $67
    ld h, a                                       ; $4f28: $67

jr_0d5_4f29:
    nop                                           ; $4f29: $00
    add e                                         ; $4f2a: $83
    dec de                                        ; $4f2b: $1b
    inc de                                        ; $4f2c: $13
    xor e                                         ; $4f2d: $ab
    inc hl                                        ; $4f2e: $23
    ld e, e                                       ; $4f2f: $5b
    ld c, e                                       ; $4f30: $4b
    inc sp                                        ; $4f31: $33
    ld [bc], a                                    ; $4f32: $02
    ld h, h                                       ; $4f33: $64
    sub b                                         ; $4f34: $90
    db $d3                                        ; $4f35: $d3
    jr nz, jr_0d5_4f8c                            ; $4f36: $20 $54

    xor b                                         ; $4f38: $a8
    jr nc, jr_0d5_4f83                            ; $4f39: $30 $48

    ld a, a                                       ; $4f3b: $7f
    nop                                           ; $4f3c: $00
    ld a, a                                       ; $4f3d: $7f
    sbc a                                         ; $4f3e: $9f
    rra                                           ; $4f3f: $1f
    or $f0                                        ; $4f40: $f6 $f0
    jp hl                                         ; $4f42: $e9


    ldh [$d7], a                                  ; $4f43: $e0 $d7
    nop                                           ; $4f45: $00
    ret nz                                        ; $4f46: $c0

    xor h                                         ; $4f47: $ac
    add c                                         ; $4f48: $81
    ld e, c                                       ; $4f49: $59
    ld [bc], a                                    ; $4f4a: $02
    ld e, b                                       ; $4f4b: $58
    inc b                                         ; $4f4c: $04
    ld d, [hl]                                    ; $4f4d: $56
    nop                                           ; $4f4e: $00
    ld [$1e41], sp                                ; $4f4f: $08 $41 $1e
    or e                                          ; $4f52: $b3
    ld b, h                                       ; $4f53: $44
    ldh [rP1], a                                  ; $4f54: $e0 $00
    rrca                                          ; $4f56: $0f
    nop                                           ; $4f57: $00
    sub b                                         ; $4f58: $90
    ldh [rNR10], a                                ; $4f59: $e0 $10
    inc bc                                        ; $4f5b: $03
    inc c                                         ; $4f5c: $0c
    inc bc                                        ; $4f5d: $03
    call nz, $0002                                ; $4f5e: $c4 $02 $00
    dec e                                         ; $4f61: $1d
    ret nz                                        ; $4f62: $c0

    ld c, $e1                                     ; $4f63: $0e $e1
    ld d, $22                                     ; $4f65: $16 $22
    ld d, l                                       ; $4f67: $55
    add e                                         ; $4f68: $83
    nop                                           ; $4f69: $00
    ld c, b                                       ; $4f6a: $48
    ld de, $0c6a                                  ; $4f6b: $11 $6a $0c
    add d                                         ; $4f6e: $82
    ld [bc], a                                    ; $4f6f: $02
    ld sp, $0060                                  ; $4f70: $31 $60 $00
    sub b                                         ; $4f73: $90
    ld h, $51                                     ; $4f74: $26 $51
    ld l, a                                       ; $4f76: $6f
    rrca                                          ; $4f77: $0f
    sub a                                         ; $4f78: $97
    rlca                                          ; $4f79: $07
    xor e                                         ; $4f7a: $ab
    nop                                           ; $4f7b: $00
    ld b, e                                       ; $4f7c: $43
    ld [hl], l                                    ; $4f7d: $75
    add c                                         ; $4f7e: $81
    xor d                                         ; $4f7f: $aa
    ld d, b                                       ; $4f80: $50
    ld e, d                                       ; $4f81: $5a
    and b                                         ; $4f82: $a0

jr_0d5_4f83:
    ld [hl+], a                                   ; $4f83: $22
    nop                                           ; $4f84: $00
    sub b                                         ; $4f85: $90
    ld a, [bc]                                    ; $4f86: $0a
    jr nz, jr_0d5_4f29                            ; $4f87: $20 $a0

    adc a                                         ; $4f89: $8f
    xor b                                         ; $4f8a: $a8
    add a                                         ; $4f8b: $87

jr_0d5_4f8c:
    and b                                         ; $4f8c: $a0
    db $10                                        ; $4f8d: $10
    adc a                                         ; $4f8e: $8f
    ret nc                                        ; $4f8f: $d0

    rst $00                                       ; $4f90: $c7
    ld [bc], a                                    ; $4f91: $02
    nop                                           ; $4f92: $00
    ret nz                                        ; $4f93: $c0

    jp hl                                         ; $4f94: $e9


    ld [c], a                                     ; $4f95: $e2
    ld [$e100], a                                 ; $4f96: $ea $00 $e1
    dec de                                        ; $4f99: $1b
    call nz, $c817                                ; $4f9a: $c4 $17 $c8
    nop                                           ; $4f9d: $00
    call nc, RST_00                               ; $4f9e: $d4 $00 $00
    db $e3                                        ; $4fa1: $e3
    rrca                                          ; $4fa2: $0f
    sub b                                         ; $4fa3: $90
    nop                                           ; $4fa4: $00
    ld [de], a                                    ; $4fa5: $12
    nop                                           ; $4fa6: $00
    ld b, d                                       ; $4fa7: $42
    ret nz                                        ; $4fa8: $c0

    nop                                           ; $4fa9: $00
    ld [hl], $e0                                  ; $4faa: $36 $e0
    inc e                                         ; $4fac: $1c
    ldh [$03], a                                  ; $4fad: $e0 $03
    ld b, d                                       ; $4faf: $42
    xor l                                         ; $4fb0: $ad
    nop                                           ; $4fb1: $00
    nop                                           ; $4fb2: $00
    ld [hl], b                                    ; $4fb3: $70
    add b                                         ; $4fb4: $80
    inc e                                         ; $4fb5: $1c
    ld [$00d0], sp                                ; $4fb6: $08 $d0 $00
    ld [hl], c                                    ; $4fb9: $71
    ld b, c                                       ; $4fba: $41
    nop                                           ; $4fbb: $00
    add d                                         ; $4fbc: $82
    ld d, l                                       ; $4fbd: $55
    ld bc, $9105                                  ; $4fbe: $01 $05 $91
    dec b                                         ; $4fc1: $05
    ld sp, $004b                                  ; $4fc2: $31 $4b $00
    inc hl                                        ; $4fc5: $23
    dec bc                                        ; $4fc6: $0b
    db $e3                                        ; $4fc7: $e3
    dec bc                                        ; $4fc8: $0b
    jp Jump_000_0717                              ; $4fc9: $c3 $17 $07


    sub a                                         ; $4fcc: $97
    nop                                           ; $4fcd: $00
    ld b, a                                       ; $4fce: $47
    add sp, -$20                                  ; $4fcf: $e8 $e0
    db $f4                                        ; $4fd1: $f4
    pop af                                        ; $4fd2: $f1
    db $f4                                        ; $4fd3: $f4
    ldh a, [$f4]                                  ; $4fd4: $f0 $f4
    nop                                           ; $4fd6: $00

jr_0d5_4fd7:
    ldh a, [$fa]                                  ; $4fd7: $f0 $fa
    ld hl, sp-$06                                 ; $4fd9: $f8 $fa
    ld hl, sp-$05                                 ; $4fdb: $f8 $fb
    ld hl, sp-$04                                 ; $4fdd: $f8 $fc
    nop                                           ; $4fdf: $00
    db $fc                                        ; $4fe0: $fc
    jr nz, jr_0d5_503d                            ; $4fe1: $20 $5a

    jr c, jr_0d5_5026                             ; $4fe3: $38 $41

    inc a                                         ; $4fe5: $3c
    jp Jump_000_0200                              ; $4fe6: $c3 $00 $02


    db $e4                                        ; $4fe9: $e4
    inc sp                                        ; $4fea: $33
    nop                                           ; $4feb: $00
    nop                                           ; $4fec: $00
    nop                                           ; $4fed: $00
    rst $38                                       ; $4fee: $ff
    inc b                                         ; $4fef: $04
    nop                                           ; $4ff0: $00
    ld bc, $1600                                  ; $4ff1: $01 $00 $16
    inc bc                                        ; $4ff4: $03
    and b                                         ; $4ff5: $a0
    ld [hl], b                                    ; $4ff6: $70
    add hl, bc                                    ; $4ff7: $09
    ldh [rNR32], a                                ; $4ff8: $e0 $1c
    call nc, Call_000_2140                        ; $4ffa: $d4 $40 $21
    db $10                                        ; $4ffd: $10
    jr jr_0d5_4fd7                                ; $4ffe: $18 $d7

    rlca                                          ; $5000: $07
    xor a                                         ; $5001: $af
    rrca                                          ; $5002: $0f
    xor a                                         ; $5003: $af
    rrca                                          ; $5004: $0f
    nop                                           ; $5005: $00
    cpl                                           ; $5006: $2f
    adc a                                         ; $5007: $8f
    ld e, a                                       ; $5008: $5f
    rra                                           ; $5009: $1f
    ld e, a                                       ; $500a: $5f
    rra                                           ; $500b: $1f
    rst $18                                       ; $500c: $df
    rra                                           ; $500d: $1f
    nop                                           ; $500e: $00
    ccf                                           ; $500f: $3f
    ccf                                           ; $5010: $3f
    nop                                           ; $5011: $00
    ld bc, $00d3                                  ; $5012: $01 $d3 $00
    ld b, b                                       ; $5015: $40
    rst $38                                       ; $5016: $ff
    ld bc, $fe40                                  ; $5017: $01 $40 $fe
    cp $f9                                        ; $501a: $fe $f9
    ld hl, sp-$10                                 ; $501c: $f8 $f0
    ldh a, [rP1]                                  ; $501e: $f0 $00
    pop hl                                        ; $5020: $e1
    ldh [$ea], a                                  ; $5021: $e0 $ea
    ldh [$ea], a                                  ; $5023: $e0 $ea
    pop hl                                        ; $5025: $e1

jr_0d5_5026:
    jp Jump_000_00c0                              ; $5026: $c3 $c0 $00


    nop                                           ; $5029: $00
    ld bc, $08d2                                  ; $502a: $01 $d2 $08
    dec bc                                        ; $502d: $0b
    db $10                                        ; $502e: $10
    rlca                                          ; $502f: $07
    rlca                                          ; $5030: $07
    nop                                           ; $5031: $00
    inc bc                                        ; $5032: $03
    ld c, e                                       ; $5033: $4b
    ld bc, $4125                                  ; $5034: $01 $25 $41
    add hl, hl                                    ; $5037: $29
    ld bc, $0265                                  ; $5038: $01 $65 $02
    ld b, b                                       ; $503b: $40
    nop                                           ; $503c: $00

jr_0d5_503d:
    ld bc, $0024                                  ; $503d: $01 $24 $00
    ld l, b                                       ; $5040: $68
    jr nc, jr_0d5_508b                            ; $5041: $30 $48

    ld a, a                                       ; $5043: $7f
    nop                                           ; $5044: $00
    ld a, a                                       ; $5045: $7f
    sbc a                                         ; $5046: $9f
    rra                                           ; $5047: $1f
    or $f0                                        ; $5048: $f6 $f0
    add sp, -$1f                                  ; $504a: $e8 $e1
    ret nc                                        ; $504c: $d0

    inc b                                         ; $504d: $04
    rst $00                                       ; $504e: $c7
    and b                                         ; $504f: $a0
    adc a                                         ; $5050: $8f
    ld b, b                                       ; $5051: $40
    rra                                           ; $5052: $1f
    ld [bc], a                                    ; $5053: $02
    jr jr_0d5_5068                                ; $5054: $18 $12

    ret                                           ; $5056: $c9


    nop                                           ; $5057: $00
    dec bc                                        ; $5058: $0b
    ret nc                                        ; $5059: $d0

    ld [bc], a                                    ; $505a: $02
    and c                                         ; $505b: $a1
    jr z, jr_0d5_50b2                             ; $505c: $28 $54

    nop                                           ; $505e: $00
    ld [bc], a                                    ; $505f: $02
    nop                                           ; $5060: $00
    ld a, [bc]                                    ; $5061: $0a
    sub b                                         ; $5062: $90
    jr nz, @+$4c                                  ; $5063: $20 $4a

    ld [$4001], sp                                ; $5065: $08 $01 $40

jr_0d5_5068:
    dec h                                         ; $5068: $25
    nop                                           ; $5069: $00
    nop                                           ; $506a: $00
    ld l, c                                       ; $506b: $69
    ld b, b                                       ; $506c: $40
    jr nz, @+$0a                                  ; $506d: $20 $08

    dec d                                         ; $506f: $15
    ret nz                                        ; $5070: $c0

    ld bc, $0800                                  ; $5071: $01 $00 $08
    and h                                         ; $5074: $a4
    inc b                                         ; $5075: $04
    jp nz, Jump_000_0708                          ; $5076: $c2 $08 $07

    ld l, a                                       ; $5079: $6f
    rrca                                          ; $507a: $0f
    nop                                           ; $507b: $00
    rla                                           ; $507c: $17
    add a                                         ; $507d: $87
    dec bc                                        ; $507e: $0b
    db $e3                                        ; $507f: $e3
    ld b, l                                       ; $5080: $45
    ld sp, $3882                                  ; $5081: $31 $82 $38
    nop                                           ; $5084: $00
    ld [bc], a                                    ; $5085: $02
    ld a, b                                       ; $5086: $78
    ld [bc], a                                    ; $5087: $02

jr_0d5_5088:
    ld hl, sp+$02                                 ; $5088: $f8 $02
    ld a, b                                       ; $508a: $78

jr_0d5_508b:
    and b                                         ; $508b: $a0
    adc a                                         ; $508c: $8f
    adc b                                         ; $508d: $88
    ld [bc], a                                    ; $508e: $02
    nop                                           ; $508f: $00
    adc [hl]                                      ; $5090: $8e
    ret nc                                        ; $5091: $d0

    add $02                                       ; $5092: $c6 $02
    ld [$e0e8], sp                                ; $5094: $08 $e8 $e0
    jp hl                                         ; $5097: $e9


    nop                                           ; $5098: $00
    ldh [rSTAT], a                                ; $5099: $e0 $41
    ld a, [bc]                                    ; $509b: $0a
    ld b, [hl]                                    ; $509c: $46
    ld de, $23cc                                  ; $509d: $11 $cc $23
    call z, $2300                                 ; $50a0: $cc $00 $23
    adc h                                         ; $50a3: $8c
    ld h, e                                       ; $50a4: $63
    adc h                                         ; $50a5: $8c
    ld h, d                                       ; $50a6: $62
    adc b                                         ; $50a7: $88
    ld h, h                                       ; $50a8: $64
    add c                                         ; $50a9: $81
    nop                                           ; $50aa: $00
    ld l, h                                       ; $50ab: $6c
    inc b                                         ; $50ac: $04
    add hl, bc                                    ; $50ad: $09
    ld [$1400], sp                                ; $50ae: $08 $00 $14
    ld a, [bc]                                    ; $50b1: $0a

jr_0d5_50b2:
    jr jr_0d5_50bc                                ; $50b2: $18 $08

    add [hl]                                      ; $50b4: $86
    inc [hl]                                      ; $50b5: $34
    adc d                                         ; $50b6: $8a
    nop                                           ; $50b7: $00
    ld bc, $5000                                  ; $50b8: $01 $00 $50
    adc e                                         ; $50bb: $8b

jr_0d5_50bc:
    dec b                                         ; $50bc: $05
    ld bc, $0571                                  ; $50bd: $01 $71 $05
    or c                                          ; $50c0: $b1
    dec b                                         ; $50c1: $05
    or c                                          ; $50c2: $b1
    dec bc                                        ; $50c3: $0b
    and e                                         ; $50c4: $a3
    ld [bc], a                                    ; $50c5: $02
    nop                                           ; $50c6: $00
    nop                                           ; $50c7: $00
    inc bc                                        ; $50c8: $03
    rla                                           ; $50c9: $17
    rlca                                          ; $50ca: $07
    rla                                           ; $50cb: $17
    ld b, a                                       ; $50cc: $47
    jp hl                                         ; $50cd: $e9


    ldh [$f5], a                                  ; $50ce: $e0 $f5
    ld b, b                                       ; $50d0: $40
    ldh a, [rSC]                                  ; $50d1: $f0 $02
    ld [$f8fa], sp                                ; $50d3: $08 $fa $f8
    ld a, [$fbf8]                                 ; $50d6: $fa $f8 $fb
    ld hl, sp+$00                                 ; $50d9: $f8 $00
    db $fc                                        ; $50db: $fc
    db $fc                                        ; $50dc: $fc
    sub c                                         ; $50dd: $91
    ld l, h                                       ; $50de: $6c
    add c                                         ; $50df: $81
    ld l, h                                       ; $50e0: $6c
    adc b                                         ; $50e1: $88
    ld h, h                                       ; $50e2: $64
    ld bc, $30c5                                  ; $50e3: $01 $c5 $30
    pop bc                                        ; $50e6: $c1
    jr c, jr_0d5_50e9                             ; $50e7: $38 $00

jr_0d5_50e9:
    nop                                           ; $50e9: $00
    rst $38                                       ; $50ea: $ff
    inc sp                                        ; $50eb: $33
    nop                                           ; $50ec: $00
    nop                                           ; $50ed: $00
    add b                                         ; $50ee: $80
    ld c, e                                       ; $50ef: $4b
    ld d, b                                       ; $50f0: $50
    add c                                         ; $50f1: $81
    sub b                                         ; $50f2: $90
    ld c, d                                       ; $50f3: $4a
    nop                                           ; $50f4: $00
    inc bc                                        ; $50f5: $03
    jr nz, jr_0d5_5088                            ; $50f6: $20 $90

    ld c, b                                       ; $50f8: $48
    db $10                                        ; $50f9: $10
    jr @+$19                                      ; $50fa: $18 $17

    ld b, a                                       ; $50fc: $47
    rrca                                          ; $50fd: $0f
    ld c, a                                       ; $50fe: $4f
    rrca                                          ; $50ff: $0f
    nop                                           ; $5100: $00
    rlca                                          ; $5101: $07
    rla                                           ; $5102: $17
    rlca                                          ; $5103: $07
    rra                                           ; $5104: $1f
    ld e, a                                       ; $5105: $5f

Jump_0d5_5106:
    rra                                           ; $5106: $1f
    rra                                           ; $5107: $1f
    rst $18                                       ; $5108: $df
    nop                                           ; $5109: $00
    rra                                           ; $510a: $1f
    ccf                                           ; $510b: $3f
    ccf                                           ; $510c: $3f
    nop                                           ; $510d: $00
    ld bc, $00f1                                  ; $510e: $01 $f1 $00
    nop                                           ; $5111: $00
    cp $ff                                        ; $5112: $fe $ff
    db $fd                                        ; $5114: $fd
    cp $dd                                        ; $5115: $fe $dd
    call z, $9dac                                 ; $5117: $cc $ac $9d
    nop                                           ; $511a: $00
    adc h                                         ; $511b: $8c
    xor h                                         ; $511c: $ac
    sbc l                                         ; $511d: $9d
    sbc l                                         ; $511e: $9d
    cp [hl]                                       ; $511f: $be
    cp [hl]                                       ; $5120: $be
    ldh [$e0], a                                  ; $5121: $e0 $e0
    nop                                           ; $5123: $00
    cp [hl]                                       ; $5124: $be
    ld a, [hl]                                    ; $5125: $7e
    cp c                                          ; $5126: $b9
    jr c, jr_0d5_515b                             ; $5127: $38 $32

    or c                                          ; $5129: $b1
    ld h, h                                       ; $512a: $64
    ld h, b                                       ; $512b: $60
    nop                                           ; $512c: $00
    ret z                                         ; $512d: $c8

    push bc                                       ; $512e: $c5
    db $10                                        ; $512f: $10
    ld [$00a1], sp                                ; $5130: $08 $a1 $00
    ld c, c                                       ; $5133: $49
    inc d                                         ; $5134: $14
    nop                                           ; $5135: $00
    ccf                                           ; $5136: $3f
    ccf                                           ; $5137: $3f
    rst $18                                       ; $5138: $df
    rra                                           ; $5139: $1f
    ld l, $ce                                     ; $513a: $2e $ce
    nop                                           ; $513c: $00
    pop hl                                        ; $513d: $e1
    nop                                           ; $513e: $00
    ld [$6094], sp                                ; $513f: $08 $94 $60
    nop                                           ; $5142: $00
    ld d, l                                       ; $5143: $55
    nop                                           ; $5144: $00
    ld d, b                                       ; $5145: $50
    nop                                           ; $5146: $00
    ld h, b                                       ; $5147: $60
    rst $38                                       ; $5148: $ff
    ld bc, $1400                                  ; $5149: $01 $00 $14
    ld [$3d3d], sp                                ; $514c: $08 $3d $3d
    rst $38                                       ; $514f: $ff
    rst $38                                       ; $5150: $ff
    ld a, e                                       ; $5151: $7b
    nop                                           ; $5152: $00
    ld a, c                                       ; $5153: $79
    sbc l                                         ; $5154: $9d
    dec e                                         ; $5155: $1d
    call c, $c6c2                                 ; $5156: $dc $c2 $c6
    ret c                                         ; $5159: $d8

    add d                                         ; $515a: $82

jr_0d5_515b:
    nop                                           ; $515b: $00
    adc l                                         ; $515c: $8d
    jr nz, jr_0d5_51b3                            ; $515d: $20 $54

    jr @+$23                                      ; $515f: $18 $21

    inc bc                                        ; $5161: $03
    ld d, h                                       ; $5162: $54
    ld [$2500], sp                                ; $5163: $08 $00 $25
    db $10                                        ; $5166: $10
    ld a, [bc]                                    ; $5167: $0a
    add c                                         ; $5168: $81
    inc b                                         ; $5169: $04
    ld sp, $4104                                  ; $516a: $31 $04 $41
    nop                                           ; $516d: $00
    cp b                                          ; $516e: $b8
    ld [bc], a                                    ; $516f: $02
    ld [hl], h                                    ; $5170: $74
    ld bc, $0822                                  ; $5171: $01 $22 $08
    and e                                         ; $5174: $a3
    inc c                                         ; $5175: $0c
    nop                                           ; $5176: $00
    ld h, c                                       ; $5177: $61
    ld [bc], a                                    ; $5178: $02
    and c                                         ; $5179: $a1
    db $f4                                        ; $517a: $f4
    ld [bc], a                                    ; $517b: $02
    ld [de], a                                    ; $517c: $12
    inc b                                         ; $517d: $04
    and h                                         ; $517e: $a4
    nop                                           ; $517f: $00
    ld [$10c9], sp                                ; $5180: $08 $c9 $10
    ld [hl+], a                                   ; $5183: $22
    db $10                                        ; $5184: $10
    ld [$4e30], sp                                ; $5185: $08 $30 $4e
    nop                                           ; $5188: $00
    jr nz, jr_0d5_519f                            ; $5189: $20 $14

    ld h, d                                       ; $518b: $62
    ld l, a                                       ; $518c: $6f
    rrca                                          ; $518d: $0f
    rlca                                          ; $518e: $07
    add a                                         ; $518f: $87
    dec de                                        ; $5190: $1b
    nop                                           ; $5191: $00
    ld b, e                                       ; $5192: $43
    ld bc, $010d                                  ; $5193: $01 $0d $01
    ld b, c                                       ; $5196: $41
    inc c                                         ; $5197: $0c
    sub d                                         ; $5198: $92
    ld d, $00                                     ; $5199: $16 $00
    jr z, jr_0d5_51a9                             ; $519b: $28 $0c

    sub d                                         ; $519d: $92
    and b                                         ; $519e: $a0

jr_0d5_519f:
    add l                                         ; $519f: $85
    and b                                         ; $51a0: $a0
    adc d                                         ; $51a1: $8a
    add h                                         ; $51a2: $84
    nop                                           ; $51a3: $00
    and e                                         ; $51a4: $a3
    ret z                                         ; $51a5: $c8

    sub $c8                                       ; $51a6: $d6 $c8
    ret nz                                        ; $51a8: $c0

jr_0d5_51a9:
    pop bc                                        ; $51a9: $c1
    ret c                                         ; $51aa: $d8

    jp nz, $d100                                  ; $51ab: $c2 $00 $d1

    pop bc                                        ; $51ae: $c1
    jp nz, $214a                                  ; $51af: $c2 $4a $21

    add hl, hl                                    ; $51b2: $29

jr_0d5_51b3:
    sub b                                         ; $51b3: $90
    ld de, $0c00                                  ; $51b4: $11 $00 $0c
    ld [$0406], sp                                ; $51b7: $08 $06 $04
    ld [bc], a                                    ; $51ba: $02
    ld a, [c]                                     ; $51bb: $f2
    nop                                           ; $51bc: $00
    ld [bc], a                                    ; $51bd: $02
    nop                                           ; $51be: $00
    ld hl, sp-$01                                 ; $51bf: $f8 $ff
    nop                                           ; $51c1: $00
    inc h                                         ; $51c2: $24
    ld b, b                                       ; $51c3: $40
    jr nz, jr_0d5_5210                            ; $51c4: $20 $4a

    jr nz, jr_0d5_51c8                            ; $51c6: $20 $00

jr_0d5_51c8:
    ld b, c                                       ; $51c8: $41
    and b                                         ; $51c9: $a0
    ld c, h                                       ; $51ca: $4c
    and b                                         ; $51cb: $a0
    ld b, b                                       ; $51cc: $40
    adc $00                                       ; $51cd: $ce $00
    add c                                         ; $51cf: $81
    nop                                           ; $51d0: $00
    ld c, $fe                                     ; $51d1: $0e $fe
    ld bc, $0d01                                  ; $51d3: $01 $01 $0d
    ld [hl], c                                    ; $51d6: $71
    adc c                                         ; $51d7: $89
    ld bc, $6100                                  ; $51d8: $01 $00 $61
    inc de                                        ; $51db: $13
    adc e                                         ; $51dc: $8b
    dec sp                                        ; $51dd: $3b
    ld b, e                                       ; $51de: $43
    inc de                                        ; $51df: $13
    xor e                                         ; $51e0: $ab
    inc hl                                        ; $51e1: $23
    nop                                           ; $51e2: $00
    ld d, e                                       ; $51e3: $53
    rlca                                          ; $51e4: $07
    rlca                                          ; $51e5: $07
    add sp, -$20                                  ; $51e6: $e8 $e0
    db $ec                                        ; $51e8: $ec
    ldh [$e0], a                                  ; $51e9: $e0 $e0
    nop                                           ; $51eb: $00
    pop hl                                        ; $51ec: $e1
    ldh a, [$f1]                                  ; $51ed: $f0 $f1
    ld a, [$faf8]                                 ; $51ef: $fa $f8 $fa
    ld hl, sp-$05                                 ; $51f2: $f8 $fb
    nop                                           ; $51f4: $00
    ld hl, sp-$04                                 ; $51f5: $f8 $fc
    db $fc                                        ; $51f7: $fc
    nop                                           ; $51f8: $00
    nop                                           ; $51f9: $00
    ld b, b                                       ; $51fa: $40
    ld a, [hl+]                                   ; $51fb: $2a
    ld bc, $2400                                  ; $51fc: $01 $00 $24
    db $10                                        ; $51ff: $10
    and d                                         ; $5200: $a2
    jr nz, jr_0d5_520c                            ; $5201: $20 $09

    nop                                           ; $5203: $00
    nop                                           ; $5204: $00
    rst $38                                       ; $5205: $ff
    ld b, c                                       ; $5206: $41
    nop                                           ; $5207: $00
    ld bc, $aa10                                  ; $5208: $01 $10 $aa
    pop hl                                        ; $520b: $e1

jr_0d5_520c:
    inc b                                         ; $520c: $04
    ld [bc], a                                    ; $520d: $02
    add hl, bc                                    ; $520e: $09
    cp e                                          ; $520f: $bb

jr_0d5_5210:
    nop                                           ; $5210: $00
    add b                                         ; $5211: $80
    db $10                                        ; $5212: $10
    db $10                                        ; $5213: $10
    rlca                                          ; $5214: $07
    rlca                                          ; $5215: $07
    xor a                                         ; $5216: $af
    rrca                                          ; $5217: $0f
    cpl                                           ; $5218: $2f
    adc a                                         ; $5219: $8f
    cpl                                           ; $521a: $2f
    nop                                           ; $521b: $00
    rrca                                          ; $521c: $0f
    ld e, a                                       ; $521d: $5f
    rra                                           ; $521e: $1f
    ld e, a                                       ; $521f: $5f
    rra                                           ; $5220: $1f
    rst $18                                       ; $5221: $df
    rra                                           ; $5222: $1f
    ccf                                           ; $5223: $3f
    nop                                           ; $5224: $00
    ccf                                           ; $5225: $3f
    nop                                           ; $5226: $00
    ld bc, $00f4                                  ; $5227: $01 $f4 $00
    nop                                           ; $522a: $00
    rst $30                                       ; $522b: $f7
    rst $30                                       ; $522c: $f7
    ei                                            ; $522d: $fb
    ei                                            ; $522e: $fb
    ld hl, sp-$06                                 ; $522f: $f8 $fa
    db $fc                                        ; $5231: $fc
    ld hl, sp+$00                                 ; $5232: $f8 $00
    ld a, [c]                                     ; $5234: $f2
    push af                                       ; $5235: $f5
    pop af                                        ; $5236: $f1
    ld a, [c]                                     ; $5237: $f2
    ld sp, hl                                     ; $5238: $f9
    ld a, [$f1f2]                                 ; $5239: $fa $f2 $f1
    nop                                           ; $523c: $00
    cp $fe                                        ; $523d: $fe $fe
    ld de, $c058                                  ; $523f: $11 $58 $c0
    ld l, b                                       ; $5242: $68
    ret z                                         ; $5243: $c8

    dec h                                         ; $5244: $25
    nop                                           ; $5245: $00
    ld c, b                                       ; $5246: $48
    inc b                                         ; $5247: $04
    ld d, b                                       ; $5248: $50
    adc c                                         ; $5249: $89
    sub e                                         ; $524a: $93
    inc b                                         ; $524b: $04
    rst $20                                       ; $524c: $e7
    stop                                          ; $524d: $10 $00
    ld h, a                                       ; $524f: $67
    ld [hl], a                                    ; $5250: $77
    xor b                                         ; $5251: $a8
    ld [hl-], a                                   ; $5252: $32
    ld c, d                                       ; $5253: $4a
    db $10                                        ; $5254: $10
    ld [hl+], a                                   ; $5255: $22
    sub h                                         ; $5256: $94
    nop                                           ; $5257: $00
    inc b                                         ; $5258: $04
    ld sp, $c201                                  ; $5259: $31 $01 $c2
    ld hl, sp+$04                                 ; $525c: $f8 $04
    cp $00                                        ; $525e: $fe $00
    ld b, b                                       ; $5260: $40
    rst $38                                       ; $5261: $ff
    ld bc, $3f00                                  ; $5262: $01 $00 $3f
    cp a                                          ; $5265: $bf
    cp a                                          ; $5266: $bf
    ccf                                           ; $5267: $3f
    cp a                                          ; $5268: $bf

jr_0d5_5269:
    ccf                                           ; $5269: $3f
    nop                                           ; $526a: $00
    ccf                                           ; $526b: $3f
    ld a, a                                       ; $526c: $7f
    rst $08                                       ; $526d: $cf
    ld c, a                                       ; $526e: $4f
    rrca                                          ; $526f: $0f
    rst $38                                       ; $5270: $ff
    ldh a, [$f0]                                  ; $5271: $f0 $f0
    nop                                           ; $5273: $00
    pop hl                                        ; $5274: $e1
    ldh [$d0], a                                  ; $5275: $e0 $d0
    jp nz, $8da0                                  ; $5277: $c2 $a0 $8d

    ld b, c                                       ; $527a: $41
    inc d                                         ; $527b: $14
    nop                                           ; $527c: $00
    ld b, e                                       ; $527d: $43
    db $10                                        ; $527e: $10
    ld b, b                                       ; $527f: $40
    jr jr_0d5_52c2                                ; $5280: $18 $40

    ld e, $73                                     ; $5282: $1e $73
    add h                                         ; $5284: $84
    nop                                           ; $5285: $00
    or e                                          ; $5286: $b3
    ld b, b                                       ; $5287: $40
    pop hl                                        ; $5288: $e1
    ld [de], a                                    ; $5289: $12
    ld h, c                                       ; $528a: $61
    adc h                                         ; $528b: $8c
    xor c                                         ; $528c: $a9
    ld b, h                                       ; $528d: $44
    nop                                           ; $528e: $00
    ld l, c                                       ; $528f: $69
    add h                                         ; $5290: $84
    db $e3                                        ; $5291: $e3
    ld [$26c1], sp                                ; $5292: $08 $c1 $26
    db $10                                        ; $5295: $10
    ld c, l                                       ; $5296: $4d
    nop                                           ; $5297: $00
    ld [$fe62], sp                                ; $5298: $08 $62 $fe
    nop                                           ; $529b: $00
    sub d                                         ; $529c: $92
    nop                                           ; $529d: $00
    sub d                                         ; $529e: $92
    inc h                                         ; $529f: $24
    nop                                           ; $52a0: $00
    ld a, [c]                                     ; $52a1: $f2
    ld [$30c6], sp                                ; $52a2: $08 $c6 $30
    cp [hl]                                       ; $52a5: $be
    ld b, b                                       ; $52a6: $40
    rrca                                          ; $52a7: $0f
    adc a                                         ; $52a8: $8f
    nop                                           ; $52a9: $00
    rla                                           ; $52aa: $17
    ld b, a                                       ; $52ab: $47
    dec bc                                        ; $52ac: $0b
    db $e3                                        ; $52ad: $e3
    add l                                         ; $52ae: $85
    ld [hl], c                                    ; $52af: $71
    add d                                         ; $52b0: $82
    ld a, b                                       ; $52b1: $78
    add b                                         ; $52b2: $80
    ld [bc], a                                    ; $52b3: $02
    ld [$f802], sp                                ; $52b4: $08 $02 $f8
    and b                                         ; $52b7: $a0
    adc [hl]                                      ; $52b8: $8e
    and b                                         ; $52b9: $a0
    adc d                                         ; $52ba: $8a
    and b                                         ; $52bb: $a0
    nop                                           ; $52bc: $00
    adc c                                         ; $52bd: $89
    ret nc                                        ; $52be: $d0

    call nz, $c7d0                                ; $52bf: $c4 $d0 $c7

jr_0d5_52c2:
    ret nc                                        ; $52c2: $d0

    rst $00                                       ; $52c3: $c7
    add sp, $00                                   ; $52c4: $e8 $00
    db $e3                                        ; $52c6: $e3
    add sp, -$1e                                  ; $52c7: $e8 $e2
    add b                                         ; $52c9: $80
    ld e, c                                       ; $52ca: $59
    ld [bc], a                                    ; $52cb: $02
    cp b                                          ; $52cc: $b8
    inc bc                                        ; $52cd: $03
    nop                                           ; $52ce: $00
    ld a, b                                       ; $52cf: $78
    inc bc                                        ; $52d0: $03
    ldh a, [rDIV]                                 ; $52d1: $f0 $04
    ldh [$03], a                                  ; $52d3: $e0 $03
    add sp, $00                                   ; $52d5: $e8 $00
    nop                                           ; $52d7: $00
    dec b                                         ; $52d8: $05
    ld hl, sp+$00                                 ; $52d9: $f8 $00
    ld [$7300], a                                 ; $52db: $ea $00 $73
    adc h                                         ; $52de: $8c
    ccf                                           ; $52df: $3f
    nop                                           ; $52e0: $00
    ld b, b                                       ; $52e1: $40
    adc l                                         ; $52e2: $8d
    ld [de], a                                    ; $52e3: $12
    add b                                         ; $52e4: $80
    ld l, $00                                     ; $52e5: $2e $00
    jr nc, jr_0d5_5269                            ; $52e7: $30 $80

    nop                                           ; $52e9: $00
    rra                                           ; $52ea: $1f
    ld h, b                                       ; $52eb: $60
    rrca                                          ; $52ec: $0f
    dec b                                         ; $52ed: $05
    pop af                                        ; $52ee: $f1
    dec b                                         ; $52ef: $05
    ld [hl], c                                    ; $52f0: $71
    dec b                                         ; $52f1: $05
    nop                                           ; $52f2: $00
    ld [hl], c                                    ; $52f3: $71
    dec bc                                        ; $52f4: $0b
    ld h, e                                       ; $52f5: $63
    dec bc                                        ; $52f6: $0b
    db $e3                                        ; $52f7: $e3
    dec bc                                        ; $52f8: $0b
    db $e3                                        ; $52f9: $e3
    rla                                           ; $52fa: $17
    nop                                           ; $52fb: $00
    rst $00                                       ; $52fc: $c7
    rla                                           ; $52fd: $17
    rst $00                                       ; $52fe: $c7
    jp hl                                         ; $52ff: $e9


    ldh [$f5], a                                  ; $5300: $e0 $f5
    ldh a, [$f4]                                  ; $5302: $f0 $f4
    nop                                           ; $5304: $00
    pop af                                        ; $5305: $f1
    push af                                       ; $5306: $f5
    ldh a, [$fa]                                  ; $5307: $f0 $fa
    ld hl, sp-$06                                 ; $5309: $f8 $fa
    ld hl, sp-$05                                 ; $530b: $f8 $fb
    nop                                           ; $530d: $00
    ld hl, sp-$04                                 ; $530e: $f8 $fc
    db $fc                                        ; $5310: $fc
    xor [hl]                                      ; $5311: $ae
    ld d, b                                       ; $5312: $50
    ld d, a                                       ; $5313: $57
    xor b                                         ; $5314: $a8
    xor e                                         ; $5315: $ab
    nop                                           ; $5316: $00
    ld d, h                                       ; $5317: $54
    ld d, l                                       ; $5318: $55
    xor d                                         ; $5319: $aa
    xor d                                         ; $531a: $aa
    ld d, l                                       ; $531b: $55
    nop                                           ; $531c: $00
    nop                                           ; $531d: $00
    rst $38                                       ; $531e: $ff
    nop                                           ; $531f: $00
    nop                                           ; $5320: $00
    nop                                           ; $5321: $00
    nop                                           ; $5322: $00
    db $10                                        ; $5323: $10
    add e                                         ; $5324: $83
    inc c                                         ; $5325: $0c
    ld hl, $04c2                                  ; $5326: $21 $c2 $04
    inc d                                         ; $5329: $14
    ld h, c                                       ; $532a: $61
    add d                                         ; $532b: $82
    cp b                                          ; $532c: $b8
    ld b, c                                       ; $532d: $41
    db $10                                        ; $532e: $10
    jr jr_0d5_5348                                ; $532f: $18 $17

    rst $00                                       ; $5331: $c7
    jr nz, jr_0d5_5363                            ; $5332: $20 $2f

    adc a                                         ; $5334: $8f
    ld [bc], a                                    ; $5335: $02
    nop                                           ; $5336: $00
    rrca                                          ; $5337: $0f
    ld e, a                                       ; $5338: $5f
    rra                                           ; $5339: $1f

jr_0d5_533a:
    ld e, a                                       ; $533a: $5f
    rra                                           ; $533b: $1f
    nop                                           ; $533c: $00
    rst $18                                       ; $533d: $df
    rra                                           ; $533e: $1f
    ccf                                           ; $533f: $3f
    ccf                                           ; $5340: $3f
    nop                                           ; $5341: $00
    ld bc, $00f7                                  ; $5342: $01 $f7 $00
    nop                                           ; $5345: $00
    rst $38                                       ; $5346: $ff
    rst $38                                       ; $5347: $ff

jr_0d5_5348:
    rst $38                                       ; $5348: $ff
    ld e, a                                       ; $5349: $5f
    ld e, a                                       ; $534a: $5f
    rra                                           ; $534b: $1f
    rst $08                                       ; $534c: $cf
    adc a                                         ; $534d: $8f
    nop                                           ; $534e: $00
    ld d, c                                       ; $534f: $51
    ld bc, $80ca                                  ; $5350: $01 $ca $80
    ld hl, $a044                                  ; $5353: $21 $44 $a0
    add l                                         ; $5356: $85
    nop                                           ; $5357: $00
    ld a, [$fbfa]                                 ; $5358: $fa $fa $fb
    ld hl, sp-$10                                 ; $535b: $f8 $f0
    di                                            ; $535d: $f3
    add sp, -$20                                  ; $535e: $e8 $e0
    nop                                           ; $5360: $00
    rst $10                                       ; $5361: $d7
    ret nz                                        ; $5362: $c0

jr_0d5_5363:
    ld [hl+], a                                   ; $5363: $22
    nop                                           ; $5364: $00
    nop                                           ; $5365: $00
    rrca                                          ; $5366: $0f
    ld b, h                                       ; $5367: $44
    dec bc                                        ; $5368: $0b
    nop                                           ; $5369: $00
    ld a, a                                       ; $536a: $7f
    ld a, a                                       ; $536b: $7f
    add hl, sp                                    ; $536c: $39
    add hl, sp                                    ; $536d: $39
    ld c, b                                       ; $536e: $48
    ld a, [bc]                                    ; $536f: $0a
    inc [hl]                                      ; $5370: $34
    dec b                                         ; $5371: $05
    nop                                           ; $5372: $00
    ld [$0380], sp                                ; $5373: $08 $80 $03
    and b                                         ; $5376: $a0
    ld [bc], a                                    ; $5377: $02
    sub b                                         ; $5378: $90
    ld bc, $80a8                                  ; $5379: $01 $a8 $80
    jr nc, jr_0d5_537e                            ; $537c: $30 $00

jr_0d5_537e:
    rst $38                                       ; $537e: $ff
    adc a                                         ; $537f: $8f
    adc a                                         ; $5380: $8f
    ld b, a                                       ; $5381: $47
    rla                                           ; $5382: $17
    inc hl                                        ; $5383: $23
    adc e                                         ; $5384: $8b
    nop                                           ; $5385: $00
    inc de                                        ; $5386: $13
    ld b, e                                       ; $5387: $43
    dec bc                                        ; $5388: $0b
    inc hl                                        ; $5389: $23
    adc e                                         ; $538a: $8b
    ld d, e                                       ; $538b: $53
    jr nz, jr_0d5_5398                            ; $538c: $20 $0a

    nop                                           ; $538e: $00
    ldh [$ca], a                                  ; $538f: $e0 $ca
    ldh [$c5], a                                  ; $5391: $e0 $c5
    and b                                         ; $5393: $a0
    add b                                         ; $5394: $80
    ld d, b                                       ; $5395: $50
    ld a, [bc]                                    ; $5396: $0a
    nop                                           ; $5397: $00

jr_0d5_5398:
    ld d, b                                       ; $5398: $50
    dec b                                         ; $5399: $05
    ld b, b                                       ; $539a: $40
    ld [bc], a                                    ; $539b: $02
    ld b, b                                       ; $539c: $40
    inc b                                         ; $539d: $04
    ld b, $c1                                     ; $539e: $06 $c1
    nop                                           ; $53a0: $00
    ld [$0c82], sp                                ; $53a1: $08 $82 $0c
    db $10                                        ; $53a4: $10
    inc c                                         ; $53a5: $0c
    ld b, d                                       ; $53a6: $42
    ld [$0086], sp                                ; $53a7: $08 $86 $00
    ld [$0c46], sp                                ; $53aa: $08 $46 $0c
    add e                                         ; $53ad: $83
    nop                                           ; $53ae: $00
    dec b                                         ; $53af: $05
    nop                                           ; $53b0: $00
    inc d                                         ; $53b1: $14
    nop                                           ; $53b2: $00
    ld b, e                                       ; $53b3: $43
    ld [$00e1], sp                                ; $53b4: $08 $e1 $00
    ret nz                                        ; $53b7: $c0

    jr z, jr_0d5_533a                             ; $53b8: $28 $80

    ld h, h                                       ; $53ba: $64
    nop                                           ; $53bb: $00
    add b                                         ; $53bc: $80
    ld l, d                                       ; $53bd: $6a
    nop                                           ; $53be: $00
    ld b, c                                       ; $53bf: $41
    inc bc                                        ; $53c0: $03
    inc b                                         ; $53c1: $04
    push hl                                       ; $53c2: $e5
    add hl, bc                                    ; $53c3: $09
    nop                                           ; $53c4: $00
    push bc                                       ; $53c5: $c5
    add hl, bc                                    ; $53c6: $09
    ld b, l                                       ; $53c7: $45
    ld bc, $09a5                                  ; $53c8: $01 $a5 $09
    ld b, b                                       ; $53cb: $40
    jr nz, jr_0d5_53ce                            ; $53cc: $20 $00

jr_0d5_53ce:
    ld [bc], a                                    ; $53ce: $02
    nop                                           ; $53cf: $00
    ld [c], a                                     ; $53d0: $e2
    ld [$f802], sp                                ; $53d1: $08 $02 $f8
    and c                                         ; $53d4: $a1
    adc b                                         ; $53d5: $88
    nop                                           ; $53d6: $00
    and b                                         ; $53d7: $a0
    add h                                         ; $53d8: $84
    and c                                         ; $53d9: $a1
    adc b                                         ; $53da: $88
    pop de                                        ; $53db: $d1
    call nz, $c2d0                                ; $53dc: $c4 $d0 $c2
    nop                                           ; $53df: $00
    ret nc                                        ; $53e0: $d0

    push bc                                       ; $53e1: $c5
    add sp, -$1e                                  ; $53e2: $e8 $e2
    add sp, -$20                                  ; $53e4: $e8 $e0
    ret nz                                        ; $53e6: $c0

    ld a, [bc]                                    ; $53e7: $0a
    nop                                           ; $53e8: $00
    call z, Call_000_1e11                         ; $53e9: $cc $11 $1e
    nop                                           ; $53ec: $00
    ld [de], a                                    ; $53ed: $12
    ld c, l                                       ; $53ee: $4d
    ld hl, $009e                                  ; $53ef: $21 $9e $00
    ld hl, $4016                                  ; $53f2: $21 $16 $40
    inc hl                                        ; $53f5: $23
    ld b, b                                       ; $53f6: $40
    inc hl                                        ; $53f7: $23
    db $fc                                        ; $53f8: $fc
    inc bc                                        ; $53f9: $03
    nop                                           ; $53fa: $00
    nop                                           ; $53fb: $00
    nop                                           ; $53fc: $00
    ld bc, $0302                                  ; $53fd: $01 $02 $03
    jr nz, jr_0d5_5404                            ; $5400: $20 $02

    dec d                                         ; $5402: $15
    nop                                           ; $5403: $00

jr_0d5_5404:
    add [hl]                                      ; $5404: $86
    ld hl, $0186                                  ; $5405: $21 $86 $01
    add $01                                       ; $5408: $c6 $01
    dec b                                         ; $540a: $05
    pop de                                        ; $540b: $d1
    ld [bc], a                                    ; $540c: $02
    dec b                                         ; $540d: $05
    ld [hl], c                                    ; $540e: $71
    dec b                                         ; $540f: $05
    ld h, c                                       ; $5410: $61
    dec bc                                        ; $5411: $0b
    db $e3                                        ; $5412: $e3
    ld [bc], a                                    ; $5413: $02
    nop                                           ; $5414: $00
    jp $1700                                      ; $5415: $c3 $00 $17


    rst $00                                       ; $5418: $c7
    rla                                           ; $5419: $17
    add a                                         ; $541a: $87
    add sp, -$20                                  ; $541b: $e8 $e0
    push af                                       ; $541d: $f5
    ldh a, [rP1]                                  ; $541e: $f0 $00
    db $f4                                        ; $5420: $f4
    ldh a, [$e0]                                  ; $5421: $f0 $e0
    ld [c], a                                     ; $5423: $e2
    call nc, $88c1                                ; $5424: $d4 $c1 $88
    or [hl]                                       ; $5427: $b6
    nop                                           ; $5428: $00
    add b                                         ; $5429: $80
    sbc h                                         ; $542a: $9c
    ret nz                                        ; $542b: $c0

    ret nz                                        ; $542c: $c0

    add b                                         ; $542d: $80
    ld b, c                                       ; $542e: $41
    nop                                           ; $542f: $00
    ret                                           ; $5430: $c9


    nop                                           ; $5431: $00
    nop                                           ; $5432: $00
    call nc, $0800                                ; $5433: $d4 $00 $08
    nop                                           ; $5436: $00
    inc d                                         ; $5437: $14
    nop                                           ; $5438: $00
    add b                                         ; $5439: $80
    nop                                           ; $543a: $00
    ld a, a                                       ; $543b: $7f
    nop                                           ; $543c: $00
    nop                                           ; $543d: $00
    nop                                           ; $543e: $00
    ld b, d                                       ; $543f: $42
    xor c                                         ; $5440: $a9
    inc h                                         ; $5441: $24
    pop bc                                        ; $5442: $c1
    nop                                           ; $5443: $00
    db $10                                        ; $5444: $10
    db $e3                                        ; $5445: $e3
    ld [$0072], sp                                ; $5446: $08 $72 $00
    inc a                                         ; $5449: $3c
    nop                                           ; $544a: $00
    nop                                           ; $544b: $00
    ld b, d                                       ; $544c: $42
    rst $38                                       ; $544d: $ff
    stop                                          ; $544e: $10 $00
    rla                                           ; $5450: $17
    add a                                         ; $5451: $87
    cpl                                           ; $5452: $2f
    rrca                                          ; $5453: $0f
    ld [bc], a                                    ; $5454: $02
    ld [$005f], sp                                ; $5455: $08 $5f $00
    rra                                           ; $5458: $1f
    ld e, a                                       ; $5459: $5f
    rra                                           ; $545a: $1f
    rst $18                                       ; $545b: $df
    rra                                           ; $545c: $1f
    ccf                                           ; $545d: $3f
    ccf                                           ; $545e: $3f
    nop                                           ; $545f: $00
    ld bc, $00f0                                  ; $5460: $01 $f0 $00
    nop                                           ; $5463: $00
    rst $38                                       ; $5464: $ff
    rst $38                                       ; $5465: $ff
    cp $fe                                        ; $5466: $fe $fe
    db $fc                                        ; $5468: $fc
    db $fc                                        ; $5469: $fc
    ld hl, sp-$08                                 ; $546a: $f8 $f8
    jr nz, @-$05                                  ; $546c: $20 $f9

    ld hl, sp+$06                                 ; $546e: $f8 $06
    ld [$c2c1], sp                                ; $5470: $08 $c1 $c2
    inc a                                         ; $5473: $3c
    inc a                                         ; $5474: $3c
    add hl, bc                                    ; $5475: $09
    nop                                           ; $5476: $00
    ld [$00e3], sp                                ; $5477: $08 $e3 $00
    ld [de], a                                    ; $547a: $12
    jr nz, jr_0d5_547d                            ; $547b: $20 $00

jr_0d5_547d:
    sub l                                         ; $547d: $95
    add b                                         ; $547e: $80
    nop                                           ; $547f: $00
    ld b, b                                       ; $5480: $40
    ccf                                           ; $5481: $3f
    nop                                           ; $5482: $00
    ret nz                                        ; $5483: $c0

    jr nz, jr_0d5_54c5                            ; $5484: $20 $3f

    ccf                                           ; $5486: $3f
    adc a                                         ; $5487: $8f
    nop                                           ; $5488: $00
    rrca                                          ; $5489: $0f
    rst $20                                       ; $548a: $e7
    rlca                                          ; $548b: $07
    and b                                         ; $548c: $a0
    db $10                                        ; $548d: $10
    ld bc, $0e42                                  ; $548e: $01 $42 $0e
    ld [bc], a                                    ; $5491: $02
    ld de, $08f0                                  ; $5492: $11 $f0 $08
    nop                                           ; $5495: $00
    nop                                           ; $5496: $00
    rst $38                                       ; $5497: $ff
    ld bc, $cf00                                  ; $5498: $01 $00 $cf
    nop                                           ; $549b: $00
    rst $08                                       ; $549c: $cf
    scf                                           ; $549d: $37
    rlca                                          ; $549e: $07
    rst $08                                       ; $549f: $cf
    cpl                                           ; $54a0: $2f
    rra                                           ; $54a1: $1f
    rra                                           ; $54a2: $1f
    ld a, a                                       ; $54a3: $7f
    nop                                           ; $54a4: $00
    ld a, a                                       ; $54a5: $7f
    sbc a                                         ; $54a6: $9f
    rra                                           ; $54a7: $1f
    sbc h                                         ; $54a8: $9c
    and d                                         ; $54a9: $a2
    ret nz                                        ; $54aa: $c0

    ret nz                                        ; $54ab: $c0

    ret nc                                        ; $54ac: $d0

    nop                                           ; $54ad: $00
    call nz, $88a3                                ; $54ae: $c4 $a3 $88
    ld b, b                                       ; $54b1: $40
    nop                                           ; $54b2: $00
    ld b, b                                       ; $54b3: $40
    ld [bc], a                                    ; $54b4: $02
    ld b, d                                       ; $54b5: $42
    nop                                           ; $54b6: $00
    inc b                                         ; $54b7: $04
    ld b, [hl]                                    ; $54b8: $46
    ld bc, $0802                                  ; $54b9: $01 $02 $08
    inc bc                                        ; $54bc: $03
    jr jr_0d5_54c0                                ; $54bd: $18 $01

    nop                                           ; $54bf: $00

jr_0d5_54c0:
    inc b                                         ; $54c0: $04
    sub d                                         ; $54c1: $92
    ld [$019a], sp                                ; $54c2: $08 $9a $01

jr_0d5_54c5:
    ld e, b                                       ; $54c5: $58
    nop                                           ; $54c6: $00
    ld hl, $0a00                                  ; $54c7: $21 $00 $0a
    db $10                                        ; $54ca: $10
    daa                                           ; $54cb: $27
    and b                                         ; $54cc: $a0
    dec bc                                        ; $54cd: $0b
    ldh [rTAC], a                                 ; $54ce: $e0 $07
    ld b, b                                       ; $54d0: $40
    nop                                           ; $54d1: $00
    xor e                                         ; $54d2: $ab
    call z, Call_000_0401                         ; $54d3: $cc $01 $04
    ld [$8420], sp                                ; $54d6: $08 $20 $84
    ld d, b                                       ; $54d9: $50
    nop                                           ; $54da: $00
    ld hl, $3080                                  ; $54db: $21 $80 $30
    ld l, a                                       ; $54de: $6f
    rrca                                          ; $54df: $0f
    rla                                           ; $54e0: $17
    add a                                         ; $54e1: $87
    dec bc                                        ; $54e2: $0b
    nop                                           ; $54e3: $00
    jp $9101                                      ; $54e4: $c3 $01 $91


    ld [$6c40], sp                                ; $54e7: $08 $40 $6c
    add b                                         ; $54ea: $80
    or h                                          ; $54eb: $b4
    nop                                           ; $54ec: $00
    nop                                           ; $54ed: $00
    nop                                           ; $54ee: $00
    nop                                           ; $54ef: $00
    and h                                         ; $54f0: $a4
    add d                                         ; $54f1: $82

jr_0d5_54f2:
    and b                                         ; $54f2: $a0
    adc b                                         ; $54f3: $88
    and b                                         ; $54f4: $a0
    nop                                           ; $54f5: $00
    adc c                                         ; $54f6: $89
    pop de                                        ; $54f7: $d1
    ret nz                                        ; $54f8: $c0

    pop de                                        ; $54f9: $d1
    ret nz                                        ; $54fa: $c0

    ret nc                                        ; $54fb: $d0

    pop bc                                        ; $54fc: $c1
    add sp, $00                                   ; $54fd: $e8 $00
    ld [c], a                                     ; $54ff: $e2
    ldh [$e1], a                                  ; $5500: $e0 $e1
    nop                                           ; $5502: $00
    inc bc                                        ; $5503: $03
    nop                                           ; $5504: $00
    ld h, b                                       ; $5505: $60
    nop                                           ; $5506: $00
    nop                                           ; $5507: $00
    ld [hl], a                                    ; $5508: $77
    nop                                           ; $5509: $00
    and a                                         ; $550a: $a7
    add b                                         ; $550b: $80
    rrca                                          ; $550c: $0f
    adc b                                         ; $550d: $88
    inc d                                         ; $550e: $14
    sbc a                                         ; $550f: $9f
    nop                                           ; $5510: $00
    jr nz, jr_0d5_5513                            ; $5511: $20 $00

jr_0d5_5513:
    rra                                           ; $5513: $1f
    adc b                                         ; $5514: $88
    dec h                                         ; $5515: $25
    inc c                                         ; $5516: $0c
    and b                                         ; $5517: $a0
    sub l                                         ; $5518: $95
    nop                                           ; $5519: $00
    nop                                           ; $551a: $00
    inc c                                         ; $551b: $0c
    ld b, b                                       ; $551c: $40
    ld b, e                                       ; $551d: $43
    jr z, @+$22                                   ; $551e: $28 $20

    ld a, [de]                                    ; $5520: $1a
    add b                                         ; $5521: $80
    nop                                           ; $5522: $00
    ld c, c                                       ; $5523: $49
    ldh [rNR21], a                                ; $5524: $e0 $16
    dec b                                         ; $5526: $05
    pop af                                        ; $5527: $f1
    dec b                                         ; $5528: $05
    ld hl, $0091                                  ; $5529: $21 $91 $00
    ld b, c                                       ; $552c: $41
    dec e                                         ; $552d: $1d
    ld hl, $1941                                  ; $552e: $21 $41 $19
    db $e3                                        ; $5531: $e3
    inc de                                        ; $5532: $13
    rlca                                          ; $5533: $07
    nop                                           ; $5534: $00
    rst $20                                       ; $5535: $e7
    rlca                                          ; $5536: $07
    rlca                                          ; $5537: $07
    ld [c], a                                     ; $5538: $e2
    ldh [$e4], a                                  ; $5539: $e0 $e4
    pop hl                                        ; $553b: $e1
    call nz, $c100                                ; $553c: $c4 $00 $c1
    call nc, $f2d0                                ; $553f: $d4 $d0 $f2
    ldh a, [$fa]                                  ; $5542: $f0 $fa
    ld hl, sp-$05                                 ; $5544: $f8 $fb
    add b                                         ; $5546: $80
    call nz, RST_00                               ; $5547: $c4 $00 $00
    xor e                                         ; $554a: $ab
    nop                                           ; $554b: $00
    add h                                         ; $554c: $84
    nop                                           ; $554d: $00
    ld b, b                                       ; $554e: $40
    nop                                           ; $554f: $00
    jr jr_0d5_54f2                                ; $5550: $18 $a0

    nop                                           ; $5552: $00
    ld d, h                                       ; $5553: $54
    xor h                                         ; $5554: $ac
    nop                                           ; $5555: $00
    ld h, b                                       ; $5556: $60
    nop                                           ; $5557: $00
    db $10                                        ; $5558: $10
    ld h, d                                       ; $5559: $62
    ld [$3101], sp                                ; $555a: $08 $01 $31
    ld [$00f2], sp                                ; $555d: $08 $f2 $00
    add hl, de                                    ; $5560: $19
    nop                                           ; $5561: $00
    ld l, h                                       ; $5562: $6c
    db $10                                        ; $5563: $10
    jr jr_0d5_5566                                ; $5564: $18 $00

jr_0d5_5566:
    rla                                           ; $5566: $17
    add a                                         ; $5567: $87
    cpl                                           ; $5568: $2f
    rrca                                          ; $5569: $0f
    cpl                                           ; $556a: $2f
    adc a                                         ; $556b: $8f
    cpl                                           ; $556c: $2f
    rrca                                          ; $556d: $0f
    nop                                           ; $556e: $00
    ld e, a                                       ; $556f: $5f
    rra                                           ; $5570: $1f
    ld e, a                                       ; $5571: $5f
    rra                                           ; $5572: $1f
    rst $18                                       ; $5573: $df
    rra                                           ; $5574: $1f
    ccf                                           ; $5575: $3f
    ccf                                           ; $5576: $3f
    nop                                           ; $5577: $00
    ld bc, $00e1                                  ; $5578: $01 $e1 $00
    ld b, b                                       ; $557b: $40
    rst $38                                       ; $557c: $ff
    ld bc, $fe40                                  ; $557d: $01 $40 $fe
    cp $f9                                        ; $5580: $fe $f9
    ld hl, sp-$02                                 ; $5582: $f8 $fe
    cp $00                                        ; $5584: $fe $00
    db $fd                                        ; $5586: $fd
    db $fc                                        ; $5587: $fc
    ld a, [c]                                     ; $5588: $f2
    ldh a, [$ec]                                  ; $5589: $f0 $ec
    pop hl                                        ; $558b: $e1
    ret nc                                        ; $558c: $d0

    jp Jump_000_2000                              ; $558d: $c3 $00 $20


    ld [$07c0], sp                                ; $5590: $08 $c0 $07
    rlca                                          ; $5593: $07
    jr z, jr_0d5_5615                             ; $5594: $28 $7f

    ld a, a                                       ; $5596: $7f
    nop                                           ; $5597: $00
    cp a                                          ; $5598: $bf
    ccf                                           ; $5599: $3f
    ld c, a                                       ; $559a: $4f
    rrca                                          ; $559b: $0f
    scf                                           ; $559c: $37
    add a                                         ; $559d: $87
    dec bc                                        ; $559e: $0b
    jp $0402                                      ; $559f: $c3 $02 $04


    ldh a, [$03]                                  ; $55a2: $f0 $03
    ld a, b                                       ; $55a4: $78
    nop                                           ; $55a5: $00
    cp h                                          ; $55a6: $bc
    jr nc, @+$4a                                  ; $55a7: $30 $48

    ld a, a                                       ; $55a9: $7f
    nop                                           ; $55aa: $00
    ld a, a                                       ; $55ab: $7f
    sbc a                                         ; $55ac: $9f
    rra                                           ; $55ad: $1f
    or $f0                                        ; $55ae: $f6 $f0
    add sp, -$20                                  ; $55b0: $e8 $e0
    pop de                                        ; $55b2: $d1
    nop                                           ; $55b3: $00
    call nz, $8ca1                                ; $55b4: $c4 $a1 $8c
    ld b, b                                       ; $55b7: $40
    dec e                                         ; $55b8: $1d
    ld b, d                                       ; $55b9: $42
    add hl, de                                    ; $55ba: $19
    ld b, b                                       ; $55bb: $40
    nop                                           ; $55bc: $00
    ld a, [de]                                    ; $55bd: $1a
    ld b, b                                       ; $55be: $40
    inc e                                         ; $55bf: $1c
    ld c, b                                       ; $55c0: $48
    nop                                           ; $55c1: $00
    rla                                           ; $55c2: $17
    ld b, b                                       ; $55c3: $40
    add hl, bc                                    ; $55c4: $09
    nop                                           ; $55c5: $00
    ld h, [hl]                                    ; $55c6: $66
    dec d                                         ; $55c7: $15
    adc b                                         ; $55c8: $88
    ld d, l                                       ; $55c9: $55
    adc b                                         ; $55ca: $88
    ld e, a                                       ; $55cb: $5f
    add b                                         ; $55cc: $80
    ld e, $00                                     ; $55cd: $1e $00
    pop bc                                        ; $55cf: $c1
    add h                                         ; $55d0: $84
    ld [de], a                                    ; $55d1: $12
    add b                                         ; $55d2: $80
    ld e, a                                       ; $55d3: $5f
    ld b, b                                       ; $55d4: $40
    rra                                           ; $55d5: $1f
    nop                                           ; $55d6: $00
    nop                                           ; $55d7: $00
    xor e                                         ; $55d8: $ab
    ld d, b                                       ; $55d9: $50
    rlca                                          ; $55da: $07
    ld d, c                                       ; $55db: $51
    ld b, $c0                                     ; $55dc: $06 $c0
    ld [de], a                                    ; $55de: $12
    ld b, b                                       ; $55df: $40
    nop                                           ; $55e0: $00
    add h                                         ; $55e1: $84
    ld b, c                                       ; $55e2: $41
    sbc h                                         ; $55e3: $9c

jr_0d5_55e4:
    ld l, a                                       ; $55e4: $6f
    rrca                                          ; $55e5: $0f
    rla                                           ; $55e6: $17
    add a                                         ; $55e7: $87
    dec bc                                        ; $55e8: $0b
    nop                                           ; $55e9: $00
    db $e3                                        ; $55ea: $e3
    dec b                                         ; $55eb: $05
    ld sp, $1842                                  ; $55ec: $31 $42 $18
    add d                                         ; $55ef: $82
    jr @+$44                                      ; $55f0: $18 $42

    nop                                           ; $55f2: $00
    adc b                                         ; $55f3: $88
    and d                                         ; $55f4: $a2
    ld [$8ea0], sp                                ; $55f5: $08 $a0 $8e
    and b                                         ; $55f8: $a0
    adc a                                         ; $55f9: $8f
    and b                                         ; $55fa: $a0
    nop                                           ; $55fb: $00
    adc b                                         ; $55fc: $88
    push de                                       ; $55fd: $d5
    jp nz, $c4ca                                  ; $55fe: $c2 $ca $c4

    call nz, $c3d3                                ; $5601: $c4 $d3 $c3
    nop                                           ; $5604: $00
    ret nz                                        ; $5605: $c0

    call nz, $93c8                                ; $5606: $c4 $c8 $93
    ld c, b                                       ; $5609: $48
    inc e                                         ; $560a: $1c
    ld b, b                                       ; $560b: $40
    ld h, $00                                     ; $560c: $26 $00
    nop                                           ; $560e: $00
    jp $1128                                      ; $560f: $c3 $28 $11


    ld h, h                                       ; $5612: $64
    ld b, b                                       ; $5613: $40
    sub d                                         ; $5614: $92

jr_0d5_5615:
    sub b                                         ; $5615: $90
    nop                                           ; $5616: $00
    ld c, a                                       ; $5617: $4f
    ld h, b                                       ; $5618: $60
    ld de, $0e80                                  ; $5619: $11 $80 $0e
    jr nc, jr_0d5_55e4                            ; $561c: $30 $c6

    ld [$1300], sp                                ; $561e: $08 $00 $13
    and h                                         ; $5621: $a4
    ld b, c                                       ; $5622: $41
    ret nz                                        ; $5623: $c0

    dec l                                         ; $5624: $2d
    ld [bc], a                                    ; $5625: $02
    jr @+$04                                      ; $5626: $18 $02

    nop                                           ; $5628: $00
    ldh a, [$0d]                                  ; $5629: $f0 $0d
    and b                                         ; $562b: $a0
    add l                                         ; $562c: $85
    ld h, c                                       ; $562d: $61
    push bc                                       ; $562e: $c5
    ld bc, $1055                                  ; $562f: $01 $55 $10
    ld bc, $034b                                  ; $5632: $01 $4b $03
    ld [bc], a                                    ; $5635: $02
    ld [$0757], sp                                ; $5636: $08 $57 $07
    sub a                                         ; $5639: $97
    rlca                                          ; $563a: $07
    nop                                           ; $563b: $00
    ret z                                         ; $563c: $c8

    sub $e9                                       ; $563d: $d6 $e9
    db $e4                                        ; $563f: $e4
    ldh a, [$f1]                                  ; $5640: $f0 $f1
    db $f4                                        ; $5642: $f4
    pop af                                        ; $5643: $f1
    nop                                           ; $5644: $00
    ld a, [$faf8]                                 ; $5645: $fa $f8 $fa
    ld hl, sp-$05                                 ; $5648: $f8 $fb
    ld hl, sp-$04                                 ; $564a: $f8 $fc
    db $fc                                        ; $564c: $fc
    nop                                           ; $564d: $00
    ld b, $80                                     ; $564e: $06 $80
    add c                                         ; $5650: $81
    ld d, h                                       ; $5651: $54
    nop                                           ; $5652: $00
    call nc, Call_000_007a                        ; $5653: $d4 $7a $00
    nop                                           ; $5656: $00
    pop bc                                        ; $5657: $c1
    ld [bc], a                                    ; $5658: $02
    nop                                           ; $5659: $00
    nop                                           ; $565a: $00
    rst $38                                       ; $565b: $ff
    nop                                           ; $565c: $00
    nop                                           ; $565d: $00
    nop                                           ; $565e: $00
    nop                                           ; $565f: $00
    inc de                                        ; $5660: $13
    nop                                           ; $5661: $00
    pop hl                                        ; $5662: $e1
    jr jr_0d5_5665                                ; $5663: $18 $00

jr_0d5_5665:
    inc a                                         ; $5665: $3c
    rra                                           ; $5666: $1f
    and b                                         ; $5667: $a0
    ld h, b                                       ; $5668: $60
    ldh [$0c], a                                  ; $5669: $e0 $0c
    nop                                           ; $566b: $00
    db $10                                        ; $566c: $10
    ld [$0797], sp                                ; $566d: $08 $97 $07
    cpl                                           ; $5670: $2f
    rrca                                          ; $5671: $0f
    xor a                                         ; $5672: $af
    add b                                         ; $5673: $80
    ld [bc], a                                    ; $5674: $02
    nop                                           ; $5675: $00
    ld e, a                                       ; $5676: $5f
    rra                                           ; $5677: $1f
    ld e, a                                       ; $5678: $5f
    rra                                           ; $5679: $1f
    rst $18                                       ; $567a: $df
    rra                                           ; $567b: $1f
    ccf                                           ; $567c: $3f
    nop                                           ; $567d: $00
    ccf                                           ; $567e: $3f
    nop                                           ; $567f: $00
    ld bc, $00eb                                  ; $5680: $01 $eb $00
    ld b, b                                       ; $5683: $40
    rst $38                                       ; $5684: $ff
    ld bc, $f310                                  ; $5685: $01 $10 $f3
    di                                            ; $5688: $f3
    jp hl                                         ; $5689: $e9


    push hl                                       ; $568a: $e5
    jp c, Jump_000_00c0                           ; $568b: $da $c0 $00

    pop de                                        ; $568e: $d1
    ret z                                         ; $568f: $c8

    and c                                         ; $5690: $a1
    sub b                                         ; $5691: $90
    inc bc                                        ; $5692: $03
    inc bc                                        ; $5693: $03
    inc c                                         ; $5694: $0c
    jr nc, jr_0d5_5697                            ; $5695: $30 $00

jr_0d5_5697:
    add [hl]                                      ; $5697: $86
    sbc b                                         ; $5698: $98
    jp $c0cc                                      ; $5699: $c3 $cc $c0


    rst $00                                       ; $569c: $c7
    jr nz, jr_0d5_56a1                            ; $569d: $20 $02

    nop                                           ; $569f: $00
    ld b, b                                       ; $56a0: $40

jr_0d5_56a1:
    stop                                          ; $56a1: $10 $00
    or c                                          ; $56a3: $b1
    rst $38                                       ; $56a4: $ff
    rst $38                                       ; $56a5: $ff
    ld a, $3e                                     ; $56a6: $3e $3e
    nop                                           ; $56a8: $00
    ld e, c                                       ; $56a9: $59
    jr jr_0d5_56d3                                ; $56aa: $18 $27

    nop                                           ; $56ac: $00
    inc b                                         ; $56ad: $04
    ld b, e                                       ; $56ae: $43
    and b                                         ; $56af: $a0
    ld d, $00                                     ; $56b0: $16 $00
    ld b, c                                       ; $56b2: $41
    inc c                                         ; $56b3: $0c
    ldh [rNR10], a                                ; $56b4: $e0 $10
    rst $38                                       ; $56b6: $ff

jr_0d5_56b7:
    rst $38                                       ; $56b7: $ff
    rrca                                          ; $56b8: $0f
    rrca                                          ; $56b9: $0f
    nop                                           ; $56ba: $00
    rst $00                                       ; $56bb: $c7
    daa                                           ; $56bc: $27
    rra                                           ; $56bd: $1f

jr_0d5_56be:
    rst $18                                       ; $56be: $df
    ccf                                           ; $56bf: $3f
    ccf                                           ; $56c0: $3f
    rst $38                                       ; $56c1: $ff
    rst $38                                       ; $56c2: $ff
    nop                                           ; $56c3: $00
    ld a, a                                       ; $56c4: $7f
    ld a, a                                       ; $56c5: $7f
    sbc a                                         ; $56c6: $9f
    rra                                           ; $56c7: $1f
    ld l, d                                       ; $56c8: $6a
    nop                                           ; $56c9: $00

jr_0d5_56ca:
    ld d, b                                       ; $56ca: $50
    jr z, jr_0d5_56cd                             ; $56cb: $28 $00

jr_0d5_56cd:
    jr nz, jr_0d5_5724                            ; $56cd: $20 $55

    nop                                           ; $56cf: $00
    ld a, [bc]                                    ; $56d0: $0a
    nop                                           ; $56d1: $00
    dec h                                         ; $56d2: $25

jr_0d5_56d3:
    jr nz, @+$14                                  ; $56d3: $20 $12

    nop                                           ; $56d5: $00
    db $10                                        ; $56d6: $10
    ld hl, $0018                                  ; $56d7: $21 $18 $00
    adc l                                         ; $56da: $8d
    jr nz, @-$6d                                  ; $56db: $20 $91

    ld b, b                                       ; $56dd: $40
    nop                                           ; $56de: $00
    ld b, c                                       ; $56df: $41
    nop                                           ; $56e0: $00
    ld b, b                                       ; $56e1: $40
    jr jr_0d5_5704                                ; $56e2: $18 $20

    ld c, h                                       ; $56e4: $4c
    ld hl, $0090                                  ; $56e5: $21 $90 $00
    inc d                                         ; $56e8: $14
    ld bc, $1148                                  ; $56e9: $01 $48 $11
    ld d, h                                       ; $56ec: $54
    ld bc, $40b6                                  ; $56ed: $01 $b6 $40
    nop                                           ; $56f0: $00
    ld d, e                                       ; $56f1: $53
    inc b                                         ; $56f2: $04
    and b                                         ; $56f3: $a0
    rlca                                          ; $56f4: $07
    ld b, b                                       ; $56f5: $40
    and b                                         ; $56f6: $a0
    db $10                                        ; $56f7: $10
    ld bc, $b400                                  ; $56f8: $01 $00 $b4
    nop                                           ; $56fb: $00
    ld h, h                                       ; $56fc: $64
    sub b                                         ; $56fd: $90
    ld l, a                                       ; $56fe: $6f
    rrca                                          ; $56ff: $0f
    rla                                           ; $5700: $17
    add a                                         ; $5701: $87
    nop                                           ; $5702: $00
    dec bc                                        ; $5703: $0b

jr_0d5_5704:
    inc hl                                        ; $5704: $23
    add l                                         ; $5705: $85
    ld de, $8842                                  ; $5706: $11 $42 $88
    ld b, d                                       ; $5709: $42
    stop                                          ; $570a: $10 $00
    ld [bc], a                                    ; $570c: $02
    adc b                                         ; $570d: $88
    ld [bc], a                                    ; $570e: $02
    ld d, b                                       ; $570f: $50
    adc b                                         ; $5710: $88
    sub h                                         ; $5711: $94
    and h                                         ; $5712: $a4
    adc d                                         ; $5713: $8a
    inc b                                         ; $5714: $04
    and d                                         ; $5715: $a2
    add h                                         ; $5716: $84
    jp nc, $d0c0                                  ; $5717: $d2 $c0 $d0

    ld [bc], a                                    ; $571a: $02
    nop                                           ; $571b: $00
    add sp, -$20                                  ; $571c: $e8 $e0
    nop                                           ; $571e: $00
    add sp, -$20                                  ; $571f: $e8 $e0
    ld [$8482], sp                                ; $5721: $08 $82 $84

jr_0d5_5724:
    jr z, jr_0d5_56ca                             ; $5724: $28 $a4

    nop                                           ; $5726: $00
    nop                                           ; $5727: $00
    and d                                         ; $5728: $a2
    inc b                                         ; $5729: $04
    sub e                                         ; $572a: $93
    jr nz, jr_0d5_56be                            ; $572b: $20 $91

    jr nz, jr_0d5_56b7                            ; $572d: $20 $88

    ld hl, $8800                                  ; $572f: $21 $00 $88
    jr nz, jr_0d5_5739                            ; $5732: $20 $05

    ld h, b                                       ; $5734: $60
    nop                                           ; $5735: $00
    sub l                                         ; $5736: $95
    nop                                           ; $5737: $00
    sub h                                         ; $5738: $94

jr_0d5_5739:
    add b                                         ; $5739: $80
    inc b                                         ; $573a: $04
    nop                                           ; $573b: $00
    inc de                                        ; $573c: $13
    ld bc, $8192                                  ; $573d: $01 $92 $81
    ld a, [bc]                                    ; $5740: $0a
    jp nz, RST_08                                 ; $5741: $c2 $08 $00

    dec b                                         ; $5744: $05
    ld hl, $1185                                  ; $5745: $21 $85 $11
    ld b, l                                       ; $5748: $45
    add c                                         ; $5749: $81
    dec hl                                        ; $574a: $2b
    jp $ab00                                      ; $574b: $c3 $00 $ab


    inc bc                                        ; $574e: $03
    ld c, e                                       ; $574f: $4b
    inc hl                                        ; $5750: $23
    ld d, a                                       ; $5751: $57
    rlca                                          ; $5752: $07
    sub a                                         ; $5753: $97
    ld b, a                                       ; $5754: $47
    ld [$e0e8], sp                                ; $5755: $08 $e8 $e0
    db $f4                                        ; $5758: $f4
    ldh a, [rSC]                                  ; $5759: $f0 $02
    ld [$f8fa], sp                                ; $575b: $08 $fa $f8
    ld a, [$f800]                                 ; $575e: $fa $00 $f8
    ei                                            ; $5761: $fb
    ld hl, sp-$04                                 ; $5762: $f8 $fc
    db $fc                                        ; $5764: $fc
    adc b                                         ; $5765: $88
    ld h, h                                       ; $5766: $64
    dec bc                                        ; $5767: $0b
    nop                                           ; $5768: $00
    db $e4                                        ; $5769: $e4
    nop                                           ; $576a: $00
    ret z                                         ; $576b: $c8

    nop                                           ; $576c: $00
    ld bc, $1201                                  ; $576d: $01 $01 $12
    nop                                           ; $5770: $00
    ld bc, $ff00                                  ; $5771: $01 $00 $ff
    nop                                           ; $5774: $00
    nop                                           ; $5775: $00
    nop                                           ; $5776: $00
    ld b, d                                       ; $5777: $42
    adc b                                         ; $5778: $88
    ld b, $08                                     ; $5779: $06 $08
    ld [$2dd0], sp                                ; $577b: $08 $d0 $2d
    and b                                         ; $577e: $a0
    ld e, b                                       ; $577f: $58
    db $10                                        ; $5780: $10
    jr @+$19                                      ; $5781: $18 $17

    rst $00                                       ; $5783: $c7
    xor a                                         ; $5784: $af
    jr nz, @+$11                                  ; $5785: $20 $0f

    cpl                                           ; $5787: $2f
    ld [bc], a                                    ; $5788: $02
    nop                                           ; $5789: $00
    ld e, a                                       ; $578a: $5f
    rra                                           ; $578b: $1f
    ld e, a                                       ; $578c: $5f
    rra                                           ; $578d: $1f
    rst $18                                       ; $578e: $df
    nop                                           ; $578f: $00
    rra                                           ; $5790: $1f
    ccf                                           ; $5791: $3f
    ccf                                           ; $5792: $3f
    nop                                           ; $5793: $00
    ld bc, $00ec                                  ; $5794: $01 $ec $00
    ld b, b                                       ; $5797: $40
    rst $38                                       ; $5798: $ff
    ld bc, $c710                                  ; $5799: $01 $10 $c7
    rst $00                                       ; $579c: $c7
    sbc e                                         ; $579d: $9b
    and e                                         ; $579e: $a3
    xor l                                         ; $579f: $ad
    sub c                                         ; $57a0: $91
    nop                                           ; $57a1: $00
    and [hl]                                      ; $57a2: $a6
    sub b                                         ; $57a3: $90
    add e                                         ; $57a4: $83
    cp b                                          ; $57a5: $b8
    db $fc                                        ; $57a6: $fc
    db $fc                                        ; $57a7: $fc
    ei                                            ; $57a8: $fb
    ld hl, sp+$00                                 ; $57a9: $f8 $00
    rst $30                                       ; $57ab: $f7
    ldh a, [$ef]                                  ; $57ac: $f0 $ef
    ldh [$c2], a                                  ; $57ae: $e0 $c2
    ret nz                                        ; $57b0: $c0

    ld [bc], a                                    ; $57b1: $02
    ld c, b                                       ; $57b2: $48
    nop                                           ; $57b3: $00
    dec l                                         ; $57b4: $2d
    nop                                           ; $57b5: $00
    ld c, a                                       ; $57b6: $4f
    jr nz, @+$41                                  ; $57b7: $20 $3f

jr_0d5_57b9:
    ccf                                           ; $57b9: $3f
    sbc a                                         ; $57ba: $9f
    ld e, a                                       ; $57bb: $5f
    nop                                           ; $57bc: $00
    rst $08                                       ; $57bd: $cf
    cpl                                           ; $57be: $2f
    rst $20                                       ; $57bf: $e7
    rla                                           ; $57c0: $17
    dec hl                                        ; $57c1: $2b
    inc bc                                        ; $57c2: $03
    ld h, b                                       ; $57c3: $60
    adc b                                         ; $57c4: $88
    ld [$08e3], sp                                ; $57c5: $08 $e3 $08
    or h                                          ; $57c8: $b4
    nop                                           ; $57c9: $00
    jr nc, @+$1a                                  ; $57ca: $30 $18

    rst $38                                       ; $57cc: $ff
    rst $38                                       ; $57cd: $ff
    ld a, a                                       ; $57ce: $7f
    nop                                           ; $57cf: $00
    ld a, a                                       ; $57d0: $7f
    rst $38                                       ; $57d1: $ff
    rst $38                                       ; $57d2: $ff
    ld [hl], a                                    ; $57d3: $77
    ld [hl], a                                    ; $57d4: $77
    sub a                                         ; $57d5: $97
    rla                                           ; $57d6: $17
    pop de                                        ; $57d7: $d1
    nop                                           ; $57d8: $00
    call z, $d6c8                                 ; $57d9: $cc $c8 $d6
    ret z                                         ; $57dc: $c8

    add $a4                                       ; $57dd: $c6 $a4
    add e                                         ; $57df: $83
    ld b, d                                       ; $57e0: $42
    nop                                           ; $57e1: $00
    ld de, $1041                                  ; $57e2: $11 $41 $10
    ld b, c                                       ; $57e5: $41
    inc b                                         ; $57e6: $04
    ld c, b                                       ; $57e7: $48
    inc b                                         ; $57e8: $04
    and [hl]                                      ; $57e9: $a6
    nop                                           ; $57ea: $00
    ld [$2493], sp                                ; $57eb: $08 $93 $24
    add b                                         ; $57ee: $80
    dec de                                        ; $57ef: $1b
    ld d, b                                       ; $57f0: $50
    ld [$0041], sp                                ; $57f1: $08 $41 $00
    inc b                                         ; $57f4: $04
    ld b, a                                       ; $57f5: $47
    sub b                                         ; $57f6: $90
    ld c, $00                                     ; $57f7: $0e $00
    ld l, h                                       ; $57f9: $6c
    add b                                         ; $57fa: $80
    ld h, c                                       ; $57fb: $61
    nop                                           ; $57fc: $00
    ld a, [de]                                    ; $57fd: $1a
    jp nz, $0025                                  ; $57fe: $c2 $25 $00

    jp c, $0265                                   ; $5801: $da $65 $02

    ld a, [c]                                     ; $5804: $f2
    nop                                           ; $5805: $00
    inc b                                         ; $5806: $04
    ld sp, $d002                                  ; $5807: $31 $02 $d0
    dec b                                         ; $580a: $05
    ret nc                                        ; $580b: $d0

    rlca                                          ; $580c: $07
    cpl                                           ; $580d: $2f
    nop                                           ; $580e: $00
    rrca                                          ; $580f: $0f
    push bc                                       ; $5810: $c5
    dec b                                         ; $5811: $05
    ld c, e                                       ; $5812: $4b
    and e                                         ; $5813: $a3
    ld hl, $8a91                                  ; $5814: $21 $91 $8a
    nop                                           ; $5817: $00
    ld h, b                                       ; $5818: $60
    ld d, d                                       ; $5819: $52
    adc b                                         ; $581a: $88
    add d                                         ; $581b: $82
    ld d, b                                       ; $581c: $50
    ld d, d                                       ; $581d: $52
    jr z, jr_0d5_57b9                             ; $581e: $28 $99

    nop                                           ; $5820: $00
    add h                                         ; $5821: $84
    or d                                          ; $5822: $b2
    adc b                                         ; $5823: $88
    and d                                         ; $5824: $a2
    sbc b                                         ; $5825: $98
    inc hl                                        ; $5826: $23
    stop                                          ; $5827: $10 $00
    nop                                           ; $5829: $00
    inc l                                         ; $582a: $2c
    db $10                                        ; $582b: $10
    ld b, $38                                     ; $582c: $06 $38
    ld [bc], a                                    ; $582e: $02
    cp b                                          ; $582f: $b8
    add b                                         ; $5830: $80
    xor b                                         ; $5831: $a8
    nop                                           ; $5832: $00
    dec b                                         ; $5833: $05
    and b                                         ; $5834: $a0
    inc bc                                        ; $5835: $03
    ret nz                                        ; $5836: $c0

    dec b                                         ; $5837: $05
    cp b                                          ; $5838: $b8
    ld [bc], a                                    ; $5839: $02
    jr nc, jr_0d5_583c                            ; $583a: $30 $00

jr_0d5_583c:
    ld a, [bc]                                    ; $583c: $0a
    nop                                           ; $583d: $00
    add e                                         ; $583e: $83
    ld d, h                                       ; $583f: $54
    add hl, hl                                    ; $5840: $29
    nop                                           ; $5841: $00
    ld a, l                                       ; $5842: $7d
    push de                                       ; $5843: $d5
    nop                                           ; $5844: $00
    ld [bc], a                                    ; $5845: $02
    jr nc, jr_0d5_584d                            ; $5846: $30 $05

    ld h, h                                       ; $5848: $64
    dec bc                                        ; $5849: $0b
    ld b, b                                       ; $584a: $40
    xor [hl]                                      ; $584b: $ae
    inc b                                         ; $584c: $04

jr_0d5_584d:
    nop                                           ; $584d: $00
    add b                                         ; $584e: $80
    ld [hl+], a                                   ; $584f: $22
    db $10                                        ; $5850: $10
    db $10                                        ; $5851: $10
    ld h, l                                       ; $5852: $65
    jr nz, jr_0d5_5897                            ; $5853: $20 $42

    dec b                                         ; $5855: $05
    nop                                           ; $5856: $00
    pop de                                        ; $5857: $d1
    add l                                         ; $5858: $85
    ld b, c                                       ; $5859: $41
    dec h                                         ; $585a: $25
    ld d, c                                       ; $585b: $51
    adc e                                         ; $585c: $8b
    inc hl                                        ; $585d: $23
    dec bc                                        ; $585e: $0b
    nop                                           ; $585f: $00
    ld b, e                                       ; $5860: $43
    dec bc                                        ; $5861: $0b
    add e                                         ; $5862: $83
    rla                                           ; $5863: $17
    ld b, a                                       ; $5864: $47
    sub a                                         ; $5865: $97
    rlca                                          ; $5866: $07
    ret nz                                        ; $5867: $c0

    nop                                           ; $5868: $00
    pop bc                                        ; $5869: $c1
    db $e4                                        ; $586a: $e4
    ldh [$f4], a                                  ; $586b: $e0 $f4
    pop af                                        ; $586d: $f1
    db $f4                                        ; $586e: $f4
    ldh a, [$fa]                                  ; $586f: $f0 $fa
    nop                                           ; $5871: $00
    ld hl, sp-$06                                 ; $5872: $f8 $fa
    ld hl, sp-$05                                 ; $5874: $f8 $fb
    ld hl, sp-$04                                 ; $5876: $f8 $fc
    db $fc                                        ; $5878: $fc
    nop                                           ; $5879: $00
    nop                                           ; $587a: $00
    jr z, jr_0d5_58a7                             ; $587b: $28 $2a

    sub b                                         ; $587d: $90
    ld [bc], a                                    ; $587e: $02
    jr z, jr_0d5_58bc                             ; $587f: $28 $3b

    add b                                         ; $5881: $80
    ld b, $00                                     ; $5882: $06 $00
    ld b, c                                       ; $5884: $41
    nop                                           ; $5885: $00
    nop                                           ; $5886: $00
    rst $38                                       ; $5887: $ff
    nop                                           ; $5888: $00
    nop                                           ; $5889: $00
    nop                                           ; $588a: $00
    ld b, b                                       ; $588b: $40
    ld bc, $c20d                                  ; $588c: $01 $0d $c2
    jr jr_0d5_58a1                                ; $588f: $18 $10

    ld b, l                                       ; $5891: $45
    nop                                           ; $5892: $00
    ld a, [hl+]                                   ; $5893: $2a
    dec bc                                        ; $5894: $0b
    nop                                           ; $5895: $00
    or b                                          ; $5896: $b0

jr_0d5_5897:
    db $10                                        ; $5897: $10
    db $10                                        ; $5898: $10
    rla                                           ; $5899: $17
    add d                                         ; $589a: $82
    nop                                           ; $589b: $00
    ld [bc], a                                    ; $589c: $02
    ld [$1f5f], sp                                ; $589d: $08 $5f $1f
    ld e, a                                       ; $58a0: $5f

jr_0d5_58a1:
    rra                                           ; $58a1: $1f
    nop                                           ; $58a2: $00
    rst $18                                       ; $58a3: $df
    rra                                           ; $58a4: $1f
    ccf                                           ; $58a5: $3f
    ccf                                           ; $58a6: $3f

jr_0d5_58a7:
    nop                                           ; $58a7: $00

jr_0d5_58a8:
    ld bc, $00e3                                  ; $58a8: $01 $e3 $00
    ld b, b                                       ; $58ab: $40
    rst $38                                       ; $58ac: $ff
    ld bc, $fe40                                  ; $58ad: $01 $40 $fe
    cp $f9                                        ; $58b0: $fe $f9

jr_0d5_58b2:
    ld hl, sp-$08                                 ; $58b2: $f8 $f8
    ld hl, sp+$00                                 ; $58b4: $f8 $00
    ld a, [c]                                     ; $58b6: $f2
    db $f4                                        ; $58b7: $f4
    ld a, [c]                                     ; $58b8: $f2
    db $f4                                        ; $58b9: $f4
    and $e0                                       ; $58ba: $e6 $e0

jr_0d5_58bc:
    sub $c0                                       ; $58bc: $d6 $c0
    nop                                           ; $58be: $00
    inc h                                         ; $58bf: $24
    ld [bc], a                                    ; $58c0: $02
    call nz, $0412                                ; $58c1: $c4 $12 $04
    ld sp, $7f7f                                  ; $58c4: $31 $7f $7f
    nop                                           ; $58c7: $00
    cp a                                          ; $58c8: $bf
    ccf                                           ; $58c9: $3f
    ld b, b                                       ; $58ca: $40
    nop                                           ; $58cb: $00
    rra                                           ; $58cc: $1f
    add b                                         ; $58cd: $80
    nop                                           ; $58ce: $00
    cp h                                          ; $58cf: $bc
    ld [bc], a                                    ; $58d0: $02
    nop                                           ; $58d1: $00
    ld h, e                                       ; $58d2: $63
    ld l, h                                       ; $58d3: $6c
    nop                                           ; $58d4: $00
    ld b, e                                       ; $58d5: $43
    jr nz, jr_0d5_5908                            ; $58d6: $20 $30

    ld [$001f], sp                                ; $58d8: $08 $1f $00
    rra                                           ; $58db: $1f
    rst $08                                       ; $58dc: $cf
    cpl                                           ; $58dd: $2f
    ld [hl], a                                    ; $58de: $77
    add a                                         ; $58df: $87
    inc sp                                        ; $58e0: $33
    ld c, e                                       ; $58e1: $4b
    dec de                                        ; $58e2: $1b
    nop                                           ; $58e3: $00
    and e                                         ; $58e4: $a3
    dec bc                                        ; $58e5: $0b
    ld d, e                                       ; $58e6: $53
    or $f0                                        ; $58e7: $f6 $f0
    add sp, -$1f                                  ; $58e9: $e8 $e1
    ret nc                                        ; $58eb: $d0

    nop                                           ; $58ec: $00
    rst $00                                       ; $58ed: $c7
    and b                                         ; $58ee: $a0
    adc a                                         ; $58ef: $8f
    ld b, b                                       ; $58f0: $40
    inc e                                         ; $58f1: $1c
    ld b, c                                       ; $58f2: $41
    db $10                                        ; $58f3: $10
    ld c, [hl]                                    ; $58f4: $4e
    ld bc, $5800                                  ; $58f5: $01 $00 $58
    inc b                                         ; $58f8: $04
    inc b                                         ; $58f9: $04
    pop af                                        ; $58fa: $f1
    inc b                                         ; $58fb: $04
    jp hl                                         ; $58fc: $e9


    ld [bc], a                                    ; $58fd: $02
    nop                                           ; $58fe: $00
    nop                                           ; $58ff: $00
    add hl, hl                                    ; $5900: $29
    call nz, $e409                                ; $5901: $c4 $09 $e4
    ld bc, $00b4                                  ; $5904: $01 $b4 $00
    sub h                                         ; $5907: $94

jr_0d5_5908:
    nop                                           ; $5908: $00
    ld [hl+], a                                   ; $5909: $22
    ld e, e                                       ; $590a: $5b
    nop                                           ; $590b: $00
    ld d, d                                       ; $590c: $52
    nop                                           ; $590d: $00
    ld e, [hl]                                    ; $590e: $5e
    nop                                           ; $590f: $00
    daa                                           ; $5910: $27
    nop                                           ; $5911: $00
    add b                                         ; $5912: $80
    ld a, [de]                                    ; $5913: $1a
    ret nz                                        ; $5914: $c0

    ld e, $00                                     ; $5915: $1e $00
    adc l                                         ; $5917: $8d
    stop                                          ; $5918: $10 $00
    nop                                           ; $591a: $00
    jr nz, jr_0d5_58a8                            ; $591b: $20 $8b

    inc hl                                        ; $591d: $23
    dec bc                                        ; $591e: $0b
    inc hl                                        ; $591f: $23
    adc e                                         ; $5920: $8b
    inc bc                                        ; $5921: $03
    add hl, bc                                    ; $5922: $09
    nop                                           ; $5923: $00

jr_0d5_5924:
    ld b, c                                       ; $5924: $41
    adc d                                         ; $5925: $8a
    jr nz, jr_0d5_58b2                            ; $5926: $20 $8a

    jr nz, jr_0d5_592c                            ; $5928: $20 $02

    ld l, b                                       ; $592a: $68
    ld [bc], a                                    ; $592b: $02

jr_0d5_592c:
    nop                                           ; $592c: $00
    add sp, -$66                                  ; $592d: $e8 $9a
    add b                                         ; $592f: $80

jr_0d5_5930:
    adc d                                         ; $5930: $8a
    sub b                                         ; $5931: $90
    xor h                                         ; $5932: $ac
    add b                                         ; $5933: $80
    add $00                                       ; $5934: $c6 $00
    ret z                                         ; $5936: $c8

    jp nc, $d0c5                                  ; $5937: $d2 $c5 $d0

    ret nz                                        ; $593a: $c0

    add sp, -$1e                                  ; $593b: $e8 $e2
    add sp, $00                                   ; $593d: $e8 $00
    ld [c], a                                     ; $593f: $e2
    sbc d                                         ; $5940: $9a
    dec b                                         ; $5941: $05
    sbc a                                         ; $5942: $9f
    jr nz, jr_0d5_599e                            ; $5943: $20 $59

    add h                                         ; $5945: $84
    ld l, l                                       ; $5946: $6d
    nop                                           ; $5947: $00
    nop                                           ; $5948: $00
    dec hl                                        ; $5949: $2b
    ld b, b                                       ; $594a: $40
    ld d, $21                                     ; $594b: $16 $21
    inc b                                         ; $594d: $04
    ld [de], a                                    ; $594e: $12
    nop                                           ; $594f: $00
    nop                                           ; $5950: $00
    add hl, bc                                    ; $5951: $09
    inc [hl]                                      ; $5952: $34
    ld b, c                                       ; $5953: $41
    sub d                                         ; $5954: $92
    jr nz, jr_0d5_5930                            ; $5955: $20 $d9

    ld [bc], a                                    ; $5957: $02
    adc l                                         ; $5958: $8d
    nop                                           ; $5959: $00
    jr nz, jr_0d5_5969                            ; $595a: $20 $0d

    and b                                         ; $595c: $a0
    ld b, l                                       ; $595d: $45
    jr z, jr_0d5_5924                             ; $595e: $28 $c4

    add hl, hl                                    ; $5960: $29
    call nz, $2900                                ; $5961: $c4 $00 $29
    ld bc, $01e9                                  ; $5964: $01 $e9 $01
    jp hl                                         ; $5967: $e9


    dec b                                         ; $5968: $05

jr_0d5_5969:
    ld [hl], c                                    ; $5969: $71
    dec bc                                        ; $596a: $0b
    jr nz, jr_0d5_59d0                            ; $596b: $20 $63

    dec bc                                        ; $596d: $0b
    ld c, b                                       ; $596e: $48
    nop                                           ; $596f: $00
    ld d, a                                       ; $5970: $57
    rlca                                          ; $5971: $07
    rla                                           ; $5972: $17
    ld b, a                                       ; $5973: $47
    add sp, $00                                   ; $5974: $e8 $00
    ld [c], a                                     ; $5976: $e2
    db $f4                                        ; $5977: $f4
    ldh a, [$f4]                                  ; $5978: $f0 $f4
    pop af                                        ; $597a: $f1
    db $f4                                        ; $597b: $f4
    pop af                                        ; $597c: $f1
    ld a, [$f800]                                 ; $597d: $fa $00 $f8
    ld a, [$fbf8]                                 ; $5980: $fa $f8 $fb
    ld hl, sp-$04                                 ; $5983: $f8 $fc
    db $fc                                        ; $5985: $fc
    ld [$0002], sp                                ; $5986: $08 $02 $00
    ld a, [hl+]                                   ; $5989: $2a
    nop                                           ; $598a: $00
    ld a, $00                                     ; $598b: $3e $00
    inc e                                         ; $598d: $1c
    ld b, $00                                     ; $598e: $06 $00
    nop                                           ; $5990: $00
    jr nz, jr_0d5_5993                            ; $5991: $20 $00

jr_0d5_5993:
    rst $38                                       ; $5993: $ff
    inc b                                         ; $5994: $04
    nop                                           ; $5995: $00
    ld b, h                                       ; $5996: $44
    xor c                                         ; $5997: $a9
    nop                                           ; $5998: $00

jr_0d5_5999:
    dec hl                                        ; $5999: $2b
    nop                                           ; $599a: $00
    inc b                                         ; $599b: $04
    ld l, e                                       ; $599c: $6b
    nop                                           ; $599d: $00

jr_0d5_599e:
    db $eb                                        ; $599e: $eb
    nop                                           ; $599f: $00
    db $db                                        ; $59a0: $db
    db $10                                        ; $59a1: $10
    jr jr_0d5_59bb                                ; $59a2: $18 $17

    ld b, a                                       ; $59a4: $47
    jr nz, jr_0d5_59d6                            ; $59a5: $20 $2f

    rrca                                          ; $59a7: $0f
    ld [bc], a                                    ; $59a8: $02
    ld [$1f5f], sp                                ; $59a9: $08 $5f $1f
    ld e, a                                       ; $59ac: $5f
    rra                                           ; $59ad: $1f
    rst $18                                       ; $59ae: $df
    nop                                           ; $59af: $00
    rra                                           ; $59b0: $1f
    ccf                                           ; $59b1: $3f
    ccf                                           ; $59b2: $3f
    nop                                           ; $59b3: $00
    ld bc, $0100                                  ; $59b4: $01 $00 $01
    nop                                           ; $59b7: $00
    rst $38                                       ; $59b8: $ff
    db $fd                                        ; $59b9: $fd
    rst $30                                       ; $59ba: $f7

jr_0d5_59bb:
    rst $30                                       ; $59bb: $f7
    db $eb                                        ; $59bc: $eb
    db $e3                                        ; $59bd: $e3
    jp nc, $00c3                                  ; $59be: $d2 $c3 $00

    xor e                                         ; $59c1: $ab
    add e                                         ; $59c2: $83
    sub a                                         ; $59c3: $97
    add c                                         ; $59c4: $81
    cp h                                          ; $59c5: $bc
    add b                                         ; $59c6: $80
    push de                                       ; $59c7: $d5
    ret nz                                        ; $59c8: $c0

    nop                                           ; $59c9: $00
    cp $fe                                        ; $59ca: $fe $fe
    cp $b8                                        ; $59cc: $fe $b8
    or $10                                        ; $59ce: $f6 $10

jr_0d5_59d0:
    ld hl, sp+$01                                 ; $59d0: $f8 $01
    nop                                           ; $59d2: $00
    ld h, b                                       ; $59d3: $60
    add d                                         ; $59d4: $82
    nop                                           ; $59d5: $00

jr_0d5_59d6:
    ld c, h                                       ; $59d6: $4c
    ret nz                                        ; $59d7: $c0

    ld a, [de]                                    ; $59d8: $1a
    inc bc                                        ; $59d9: $03
    inc [hl]                                      ; $59da: $34
    nop                                           ; $59db: $00
    ld a, a                                       ; $59dc: $7f
    ld a, a                                       ; $59dd: $7f
    adc [hl]                                      ; $59de: $8e
    inc c                                         ; $59df: $0c
    dec c                                         ; $59e0: $0d
    inc c                                         ; $59e1: $0c
    ld b, $04                                     ; $59e2: $06 $04
    nop                                           ; $59e4: $00
    add hl, de                                    ; $59e5: $19
    nop                                           ; $59e6: $00
    dec c                                         ; $59e7: $0d
    ld [bc], a                                    ; $59e8: $02
    rlca                                          ; $59e9: $07
    ret nz                                        ; $59ea: $c0

    jp nz, Jump_000_0021                          ; $59eb: $c2 $21 $00

    rst $38                                       ; $59ee: $ff
    rst $38                                       ; $59ef: $ff
    rst $38                                       ; $59f0: $ff
    ld a, a                                       ; $59f1: $7f
    ccf                                           ; $59f2: $3f
    ld a, a                                       ; $59f3: $7f

jr_0d5_59f4:
    sbc a                                         ; $59f4: $9f
    ccf                                           ; $59f5: $3f
    nop                                           ; $59f6: $00
    rra                                           ; $59f7: $1f
    ld d, a                                       ; $59f8: $57

jr_0d5_59f9:
    rra                                           ; $59f9: $1f
    add e                                         ; $59fa: $83
    rra                                           ; $59fb: $1f
    jp $179f                                      ; $59fc: $c3 $9f $17


    nop                                           ; $59ff: $00
    ret z                                         ; $5a00: $c8

    ret nc                                        ; $5a01: $d0

    and $e8                                       ; $5a02: $e6 $e8
    db $d3                                        ; $5a04: $d3
    call nz, $8aa1                                ; $5a05: $c4 $a1 $8a
    nop                                           ; $5a08: $00
    ld h, b                                       ; $5a09: $60
    dec c                                         ; $5a0a: $0d

jr_0d5_5a0b:
    ld d, b                                       ; $5a0b: $50
    dec l                                         ; $5a0c: $2d
    ld h, b                                       ; $5a0d: $60
    dec e                                         ; $5a0e: $1d
    ld b, b                                       ; $5a0f: $40
    inc d                                         ; $5a10: $14
    nop                                           ; $5a11: $00
    dec c                                         ; $5a12: $0d
    ldh a, [$0d]                                  ; $5a13: $f0 $0d
    ldh a, [rTAC]                                 ; $5a15: $f0 $07
    jr nc, jr_0d5_5999                            ; $5a17: $30 $80

    stop                                          ; $5a19: $10 $00
    add b                                         ; $5a1b: $80
    nop                                           ; $5a1c: $00
    jr c, jr_0d5_5a1f                             ; $5a1d: $38 $00

jr_0d5_5a1f:
    ld [hl], h                                    ; $5a1f: $74
    ld bc, $807a                                  ; $5a20: $01 $7a $80
    nop                                           ; $5a23: $00
    ld h, e                                       ; $5a24: $63
    nop                                           ; $5a25: $00
    ld h, [hl]                                    ; $5a26: $66
    ld bc, $02cc                                  ; $5a27: $01 $cc $02
    ld b, b                                       ; $5a2a: $40
    dec d                                         ; $5a2b: $15
    nop                                           ; $5a2c: $00
    nop                                           ; $5a2d: $00
    ld d, e                                       ; $5a2e: $53
    nop                                           ; $5a2f: $00
    add e                                         ; $5a30: $83
    jr c, jr_0d5_5a75                             ; $5a31: $38 $42

    jr c, jr_0d5_59f9                             ; $5a33: $38 $c4

    nop                                           ; $5a35: $00
    cpl                                           ; $5a36: $2f
    adc c                                         ; $5a37: $89
    rla                                           ; $5a38: $17
    ld bc, $6303                                  ; $5a39: $01 $03 $63
    add hl, sp                                    ; $5a3c: $39
    ld bc, $3a00                                  ; $5a3d: $01 $00 $3a
    nop                                           ; $5a40: $00
    ld a, [de]                                    ; $5a41: $1a
    jr nz, @+$04                                  ; $5a42: $20 $02

    nop                                           ; $5a44: $00
    jp nz, RST_18                                 ; $5a45: $c2 $18 $00

    and b                                         ; $5a48: $a0
    adc b                                         ; $5a49: $88
    and b                                         ; $5a4a: $a0
    add [hl]                                      ; $5a4b: $86
    and d                                         ; $5a4c: $a2
    adc b                                         ; $5a4d: $88
    jp hl                                         ; $5a4e: $e9


    call nz, $d100                                ; $5a4f: $c4 $00 $d1
    call nz, $d8c0                                ; $5a52: $c4 $c0 $d8
    db $e3                                        ; $5a55: $e3
    ldh [$e9], a                                  ; $5a56: $e0 $e9
    ld [c], a                                     ; $5a58: $e2
    nop                                           ; $5a59: $00
    ld a, [hl]                                    ; $5a5a: $7e
    add b                                         ; $5a5b: $80
    ld a, $c0                                     ; $5a5c: $3e $c0
    inc e                                         ; $5a5e: $1c
    ld h, b                                       ; $5a5f: $60
    ld [bc], a                                    ; $5a60: $02
    cp c                                          ; $5a61: $b9
    nop                                           ; $5a62: $00
    inc b                                         ; $5a63: $04
    ld bc, $8411                                  ; $5a64: $01 $11 $84
    add hl, bc                                    ; $5a67: $09
    nop                                           ; $5a68: $00
    nop                                           ; $5a69: $00
    nop                                           ; $5a6a: $00
    nop                                           ; $5a6b: $00
    jr c, jr_0d5_59f4                             ; $5a6c: $38 $86

    nop                                           ; $5a6e: $00
    ld [hl], a                                    ; $5a6f: $77
    nop                                           ; $5a70: $00
    ld h, l                                       ; $5a71: $65
    ld b, d                                       ; $5a72: $42
    sbc b                                         ; $5a73: $98
    nop                                           ; $5a74: $00

jr_0d5_5a75:
    jr nz, jr_0d5_5a0b                            ; $5a75: $20 $94

    adc b                                         ; $5a77: $88
    ld hl, $0090                                  ; $5a78: $21 $90 $00
    nop                                           ; $5a7b: $00
    inc b                                         ; $5a7c: $04
    nop                                           ; $5a7d: $00
    ld b, l                                       ; $5a7e: $45
    sub c                                         ; $5a7f: $91
    dec b                                         ; $5a80: $05
    ld sp, $4105                                  ; $5a81: $31 $05 $41
    or e                                          ; $5a84: $b3
    inc bc                                        ; $5a85: $03
    nop                                           ; $5a86: $00
    adc e                                         ; $5a87: $8b
    inc hl                                        ; $5a88: $23
    inc bc                                        ; $5a89: $03
    dec de                                        ; $5a8a: $1b
    rst $00                                       ; $5a8b: $c7
    rlca                                          ; $5a8c: $07
    sub a                                         ; $5a8d: $97
    ld b, a                                       ; $5a8e: $47
    nop                                           ; $5a8f: $00
    ldh [$e0], a                                  ; $5a90: $e0 $e0
    add sp, -$1e                                  ; $5a92: $e8 $e2
    ld [c], a                                     ; $5a94: $e2
    db $e4                                        ; $5a95: $e4
    pop af                                        ; $5a96: $f1
    ldh a, [rP1]                                  ; $5a97: $f0 $00
    ld hl, sp-$06                                 ; $5a99: $f8 $fa
    ld hl, sp-$06                                 ; $5a9b: $f8 $fa
    ld sp, hl                                     ; $5a9d: $f9
    ld a, [$fcfc]                                 ; $5a9e: $fa $fc $fc
    nop                                           ; $5aa1: $00
    sub b                                         ; $5aa2: $90
    nop                                           ; $5aa3: $00
    add hl, bc                                    ; $5aa4: $09
    ld b, d                                       ; $5aa5: $42
    ret nz                                        ; $5aa6: $c0

    inc d                                         ; $5aa7: $14
    ld [$0000], sp                                ; $5aa8: $08 $00 $00
    db $10                                        ; $5aab: $10
    ld a, [hl+]                                   ; $5aac: $2a
    add b                                         ; $5aad: $80
    ld b, b                                       ; $5aae: $40
    ccf                                           ; $5aaf: $3f
    ld b, b                                       ; $5ab0: $40
    nop                                           ; $5ab1: $00
    nop                                           ; $5ab2: $00
    nop                                           ; $5ab3: $00
    adc c                                         ; $5ab4: $89
    ld b, d                                       ; $5ab5: $42
    db $10                                        ; $5ab6: $10
    ld [hl+], a                                   ; $5ab7: $22
    inc bc                                        ; $5ab8: $03
    jr jr_0d5_5acb                                ; $5ab9: $18 $10

    nop                                           ; $5abb: $00
    nop                                           ; $5abc: $00
    ld b, b                                       ; $5abd: $40
    sub c                                         ; $5abe: $91
    ld bc, $fc02                                  ; $5abf: $01 $02 $fc
    ld [bc], a                                    ; $5ac2: $02
    nop                                           ; $5ac3: $00
    nop                                           ; $5ac4: $00
    nop                                           ; $5ac5: $00
    rlca                                          ; $5ac6: $07
    rlca                                          ; $5ac7: $07
    rla                                           ; $5ac8: $17
    ld b, a                                       ; $5ac9: $47
    ld b, a                                       ; $5aca: $47

jr_0d5_5acb:
    scf                                           ; $5acb: $37
    adc a                                         ; $5acc: $8f
    rrca                                          ; $5acd: $0f
    nop                                           ; $5ace: $00
    rra                                           ; $5acf: $1f
    rst $18                                       ; $5ad0: $df
    rra                                           ; $5ad1: $1f
    ld e, a                                       ; $5ad2: $5f
    sbc a                                         ; $5ad3: $9f
    ld e, a                                       ; $5ad4: $5f
    ccf                                           ; $5ad5: $3f
    ccf                                           ; $5ad6: $3f
    nop                                           ; $5ad7: $00
    ld bc, $00ec                                  ; $5ad8: $01 $ec $00
    ld b, b                                       ; $5adb: $40
    rst $38                                       ; $5adc: $ff
    ld bc, $fc10                                  ; $5add: $01 $10 $fc
    db $fc                                        ; $5ae0: $fc
    ld hl, sp-$05                                 ; $5ae1: $f8 $fb
    ldh a, [$f5]                                  ; $5ae3: $f0 $f5
    nop                                           ; $5ae5: $00
    ldh a, [$f2]                                  ; $5ae6: $f0 $f2
    pop af                                        ; $5ae8: $f1
    ldh a, [$f6]                                  ; $5ae9: $f0 $f6
    or $ea                                        ; $5aeb: $f6 $ea
    ld [c], a                                     ; $5aed: $e2
    nop                                           ; $5aee: $00
    dec b                                         ; $5aef: $05
    jr @+$07                                      ; $5af0: $18 $05

    ret c                                         ; $5af2: $d8

    nop                                           ; $5af3: $00
    adc l                                         ; $5af4: $8d
    ld b, b                                       ; $5af5: $40
    jr nc, jr_0d5_5af8                            ; $5af6: $30 $00

jr_0d5_5af8:
    add [hl]                                      ; $5af8: $86
    add hl, hl                                    ; $5af9: $29
    dec d                                         ; $5afa: $15
    ld b, b                                       ; $5afb: $40
    ld a, a                                       ; $5afc: $7f
    ld a, a                                       ; $5afd: $7f
    cp a                                          ; $5afe: $bf
    ccf                                           ; $5aff: $3f
    nop                                           ; $5b00: $00
    rrca                                          ; $5b01: $0f
    add l                                         ; $5b02: $85
    scf                                           ; $5b03: $37
    add l                                         ; $5b04: $85
    dec bc                                        ; $5b05: $0b
    ld bc, $700c                                  ; $5b06: $01 $0c $70
    ld [$300b], sp                                ; $5b09: $08 $0b $30
    db $10                                        ; $5b0c: $10
    inc h                                         ; $5b0d: $24
    jr nc, jr_0d5_5b28                            ; $5b0e: $30 $18

    rst $38                                       ; $5b10: $ff
    rst $38                                       ; $5b11: $ff
    cp a                                          ; $5b12: $bf
    nop                                           ; $5b13: $00
    ccf                                           ; $5b14: $3f
    rst $18                                       ; $5b15: $df
    sbc a                                         ; $5b16: $9f
    ld e, a                                       ; $5b17: $5f
    rra                                           ; $5b18: $1f
    rst $18                                       ; $5b19: $df
    dec de                                        ; $5b1a: $1b
    ld a, [c]                                     ; $5b1b: $f2
    nop                                           ; $5b1c: $00
    ldh a, [$e8]                                  ; $5b1d: $f0 $e8
    ldh [$d0], a                                  ; $5b1f: $e0 $d0
    ret nz                                        ; $5b21: $c0

    and h                                         ; $5b22: $a4
    adc e                                         ; $5b23: $8b

Jump_0d5_5b24:
    ld b, e                                       ; $5b24: $43
    nop                                           ; $5b25: $00
    inc b                                         ; $5b26: $04
    ld b, c                                       ; $5b27: $41

jr_0d5_5b28:
    ld [bc], a                                    ; $5b28: $02
    ld b, b                                       ; $5b29: $40
    ld bc, $0240                                  ; $5b2a: $01 $40 $02
    dec d                                         ; $5b2d: $15
    nop                                           ; $5b2e: $00
    and b                                         ; $5b2f: $a0
    add hl, de                                    ; $5b30: $19
    ld h, $5f                                     ; $5b31: $26 $5f
    jr nz, @-$24                                  ; $5b33: $20 $da

    nop                                           ; $5b35: $00
    sbc l                                         ; $5b36: $9d
    nop                                           ; $5b37: $00
    ld b, b                                       ; $5b38: $40
    ld c, $b1                                     ; $5b39: $0e $b1
    nop                                           ; $5b3b: $00
    ld b, b                                       ; $5b3c: $40
    ld b, $08                                     ; $5b3d: $06 $08
    stop                                          ; $5b3f: $10 $00
    ld b, a                                       ; $5b41: $47
    ld c, b                                       ; $5b42: $48
    inc de                                        ; $5b43: $13
    ld [$0053], sp                                ; $5b44: $08 $53 $00

jr_0d5_5b47:
    dec sp                                        ; $5b47: $3b
    ld hl, $1e00                                  ; $5b48: $21 $00 $1e
    db $10                                        ; $5b4b: $10
    ld c, [hl]                                    ; $5b4c: $4e
    ld de, $048a                                  ; $5b4d: $11 $8a $04
    ld d, c                                       ; $5b50: $51
    ld l, a                                       ; $5b51: $6f
    nop                                           ; $5b52: $00
    dec bc                                        ; $5b53: $0b
    ld c, a                                       ; $5b54: $4f
    sub e                                         ; $5b55: $93
    ld c, e                                       ; $5b56: $4b
    add e                                         ; $5b57: $83
    reti                                          ; $5b58: $d9


Call_0d5_5b59:
    dec b                                         ; $5b59: $05
    sbc d                                         ; $5b5a: $9a
    nop                                           ; $5b5b: $00
    jr nz, @+$14                                  ; $5b5c: $20 $12

    ld l, b                                       ; $5b5e: $68
    ld [hl-], a                                   ; $5b5f: $32
    ret nz                                        ; $5b60: $c0

    ld a, [c]                                     ; $5b61: $f2
    nop                                           ; $5b62: $00
    and l                                         ; $5b63: $a5
    nop                                           ; $5b64: $00
    adc d                                         ; $5b65: $8a
    xor b                                         ; $5b66: $a8
    add b                                         ; $5b67: $80
    and e                                         ; $5b68: $a3
    add h                                         ; $5b69: $84
    rst $10                                       ; $5b6a: $d7
    ret nz                                        ; $5b6b: $c0

    db $d3                                        ; $5b6c: $d3
    nop                                           ; $5b6d: $00
    call nz, $c6d1                                ; $5b6e: $c4 $d1 $c6
    add sp, -$1f                                  ; $5b71: $e8 $e1
    add sp, -$1e                                  ; $5b73: $e8 $e2
    ld b, $00                                     ; $5b75: $06 $00
    ldh [$a0], a                                  ; $5b77: $e0 $a0
    ld e, b                                       ; $5b79: $58
    ld sp, $984a                                  ; $5b7a: $31 $4a $98
    inc h                                         ; $5b7d: $24
    call z, CopyHL2DE_29                         ; $5b7e: $cc $00 $12
    ld h, b                                       ; $5b81: $60
    adc h                                         ; $5b82: $8c
    jr nz, jr_0d5_5b47                            ; $5b83: $20 $c2

    ld d, b                                       ; $5b85: $50
    and b                                         ; $5b86: $a0
    inc c                                         ; $5b87: $0c
    nop                                           ; $5b88: $00
    add b                                         ; $5b89: $80
    ld a, [hl-]                                   ; $5b8a: $3a
    add h                                         ; $5b8b: $84
    dec hl                                        ; $5b8c: $2b
    add b                                         ; $5b8d: $80
    ld a, e                                       ; $5b8e: $7b
    inc b                                         ; $5b8f: $04
    reti                                          ; $5b90: $d9


    nop                                           ; $5b91: $00
    inc b                                         ; $5b92: $04
    di                                            ; $5b93: $f3
    inc c                                         ; $5b94: $0c
    ld a, [hl-]                                   ; $5b95: $3a
    ret nz                                        ; $5b96: $c0

    nop                                           ; $5b97: $00
    nop                                           ; $5b98: $00
    ld h, l                                       ; $5b99: $65
    ld bc, $0581                                  ; $5b9a: $01 $81 $05
    ld de, $7105                                  ; $5b9d: $11 $05 $71
    dec bc                                        ; $5ba0: $0b
    inc hl                                        ; $5ba1: $23
    ld [bc], a                                    ; $5ba2: $02
    nop                                           ; $5ba3: $00
    nop                                           ; $5ba4: $00
    inc bc                                        ; $5ba5: $03
    rlca                                          ; $5ba6: $07
    rlca                                          ; $5ba7: $07
    rla                                           ; $5ba8: $17
    rlca                                          ; $5ba9: $07
    add sp, -$1f                                  ; $5baa: $e8 $e1
    db $f4                                        ; $5bac: $f4
    nop                                           ; $5bad: $00
    ldh a, [$f4]                                  ; $5bae: $f0 $f4
    pop af                                        ; $5bb0: $f1
    db $f4                                        ; $5bb1: $f4
    ldh a, [$fa]                                  ; $5bb2: $f0 $fa
    ld hl, sp-$06                                 ; $5bb4: $f8 $fa
    nop                                           ; $5bb6: $00
    ld hl, sp-$05                                 ; $5bb7: $f8 $fb
    ld hl, sp-$04                                 ; $5bb9: $f8 $fc
    db $fc                                        ; $5bbb: $fc
    inc a                                         ; $5bbc: $3c
    ld [bc], a                                    ; $5bbd: $02
    nop                                           ; $5bbe: $00
    nop                                           ; $5bbf: $00
    add b                                         ; $5bc0: $80
    nop                                           ; $5bc1: $00
    ld d, b                                       ; $5bc2: $50
    nop                                           ; $5bc3: $00
    dec hl                                        ; $5bc4: $2b
    inc bc                                        ; $5bc5: $03
    inc b                                         ; $5bc6: $04
    nop                                           ; $5bc7: $00
    nop                                           ; $5bc8: $00
    nop                                           ; $5bc9: $00
    rst $38                                       ; $5bca: $ff
    nop                                           ; $5bcb: $00
    nop                                           ; $5bcc: $00
    nop                                           ; $5bcd: $00
    and h                                         ; $5bce: $a4
    ld d, d                                       ; $5bcf: $52
    ld b, h                                       ; $5bd0: $44
    ld bc, $00a8                                  ; $5bd1: $01 $a8 $00
    ld [de], a                                    ; $5bd4: $12
    nop                                           ; $5bd5: $00
    and h                                         ; $5bd6: $a4
    add b                                         ; $5bd7: $80
    ld b, b                                       ; $5bd8: $40
    db $10                                        ; $5bd9: $10
    jr jr_0d5_5be0                                ; $5bda: $18 $04

    sub a                                         ; $5bdc: $97
    ld b, a                                       ; $5bdd: $47
    adc a                                         ; $5bde: $8f
    rrca                                          ; $5bdf: $0f

jr_0d5_5be0:
    cpl                                           ; $5be0: $2f
    ld [bc], a                                    ; $5be1: $02
    nop                                           ; $5be2: $00
    ld e, a                                       ; $5be3: $5f
    rra                                           ; $5be4: $1f
    add b                                         ; $5be5: $80
    cp [hl]                                       ; $5be6: $be
    nop                                           ; $5be7: $00
    rra                                           ; $5be8: $1f
    ccf                                           ; $5be9: $3f
    ccf                                           ; $5bea: $3f
    nop                                           ; $5beb: $00
    ld bc, $00ed                                  ; $5bec: $01 $ed $00
    ld b, b                                       ; $5bef: $40
    rst $38                                       ; $5bf0: $ff
    ld bc, $fe40                                  ; $5bf1: $01 $40 $fe
    cp $f9                                        ; $5bf4: $fe $f9
    ld hl, sp-$02                                 ; $5bf6: $f8 $fe
    cp $00                                        ; $5bf8: $fe $00
    db $fd                                        ; $5bfa: $fd
    db $fc                                        ; $5bfb: $fc
    ld a, [c]                                     ; $5bfc: $f2
    ldh a, [$ec]                                  ; $5bfd: $f0 $ec
    pop hl                                        ; $5bff: $e1
    ret nc                                        ; $5c00: $d0

    rlc b                                         ; $5c01: $cb $00
    inc h                                         ; $5c03: $24
    ld [$08d3], sp                                ; $5c04: $08 $d3 $08
    jr nz, jr_0d5_5c60                            ; $5c07: $20 $57

    ld a, a                                       ; $5c09: $7f
    ld a, a                                       ; $5c0a: $7f
    nop                                           ; $5c0b: $00
    sbc a                                         ; $5c0c: $9f
    rra                                           ; $5c0d: $1f
    inc hl                                        ; $5c0e: $23
    inc bc                                        ; $5c0f: $03
    inc l                                         ; $5c10: $2c
    add b                                         ; $5c11: $80
    add hl, de                                    ; $5c12: $19
    and d                                         ; $5c13: $a2
    ld [bc], a                                    ; $5c14: $02
    inc de                                        ; $5c15: $13
    jr z, jr_0d5_5c1e                             ; $5c16: $28 $06

    or c                                          ; $5c18: $b1
    inc b                                         ; $5c19: $04
    ld [$1830], a                                 ; $5c1a: $ea $30 $18
    ld a, a                                       ; $5c1d: $7f

jr_0d5_5c1e:
    nop                                           ; $5c1e: $00
    ld a, a                                       ; $5c1f: $7f
    ccf                                           ; $5c20: $3f
    cp a                                          ; $5c21: $bf
    cp a                                          ; $5c22: $bf
    ccf                                           ; $5c23: $3f
    ccf                                           ; $5c24: $3f
    ccf                                           ; $5c25: $3f
    rst $18                                       ; $5c26: $df
    nop                                           ; $5c27: $00
    rra                                           ; $5c28: $1f
    or $f0                                        ; $5c29: $f6 $f0
    add sp, -$1b                                  ; $5c2b: $e8 $e5
    ret nc                                        ; $5c2d: $d0

    rst $00                                       ; $5c2e: $c7
    and h                                         ; $5c2f: $a4
    nop                                           ; $5c30: $00
    adc e                                         ; $5c31: $8b
    ld b, d                                       ; $5c32: $42
    dec e                                         ; $5c33: $1d
    ld b, b                                       ; $5c34: $40
    rra                                           ; $5c35: $1f
    ld b, b                                       ; $5c36: $40
    ld a, [de]                                    ; $5c37: $1a
    ld b, b                                       ; $5c38: $40
    nop                                           ; $5c39: $00
    ld d, $52                                     ; $5c3a: $16 $52
    and l                                         ; $5c3c: $a5
    add c                                         ; $5c3d: $81
    ld [hl], d                                    ; $5c3e: $72
    ld b, b                                       ; $5c3f: $40
    xor b                                         ; $5c40: $a8
    ld a, [bc]                                    ; $5c41: $0a
    nop                                           ; $5c42: $00
    sub c                                         ; $5c43: $91
    inc hl                                        ; $5c44: $23
    ld e, b                                       ; $5c45: $58
    ld c, d                                       ; $5c46: $4a
    inc [hl]                                      ; $5c47: $34
    ld b, $50                                     ; $5c48: $06 $50
    ld l, $00                                     ; $5c4a: $2e $00
    ld b, b                                       ; $5c4c: $40
    add hl, hl                                    ; $5c4d: $29
    sub b                                         ; $5c4e: $90
    inc bc                                        ; $5c4f: $03
    ld h, b                                       ; $5c50: $60
    ld b, b                                       ; $5c51: $40
    inc e                                         ; $5c52: $1c
    add b                                         ; $5c53: $80
    nop                                           ; $5c54: $00
    dec a                                         ; $5c55: $3d
    ld [hl+], a                                   ; $5c56: $22
    sub c                                         ; $5c57: $91
    ld b, h                                       ; $5c58: $44
    inc bc                                        ; $5c59: $03
    ret                                           ; $5c5a: $c9


    ld d, $c0                                     ; $5c5b: $16 $c0
    nop                                           ; $5c5d: $00
    ld a, [hl+]                                   ; $5c5e: $2a
    rst $28                                       ; $5c5f: $ef

jr_0d5_5c60:
    rrca                                          ; $5c60: $0f
    rlca                                          ; $5c61: $07
    rst $10                                       ; $5c62: $d7
    inc de                                        ; $5c63: $13
    inc hl                                        ; $5c64: $23
    dec h                                         ; $5c65: $25
    nop                                           ; $5c66: $00
    pop bc                                        ; $5c67: $c1
    and d                                         ; $5c68: $a2
    ld c, b                                       ; $5c69: $48
    ld [de], a                                    ; $5c6a: $12
    ldh [rNR12], a                                ; $5c6b: $e0 $12
    add sp, $22                                   ; $5c6d: $e8 $22
    nop                                           ; $5c6f: $00
    ld d, b                                       ; $5c70: $50
    and b                                         ; $5c71: $a0
    adc d                                         ; $5c72: $8a
    and b                                         ; $5c73: $a0
    adc a                                         ; $5c74: $8f
    and b                                         ; $5c75: $a0
    add c                                         ; $5c76: $81
    ret nc                                        ; $5c77: $d0

    nop                                           ; $5c78: $00
    call nz, $c0d0                                ; $5c79: $c4 $d0 $c0
    ret nc                                        ; $5c7c: $d0

    push bc                                       ; $5c7d: $c5
    add sp, -$20                                  ; $5c7e: $e8 $e0
    add sp, $00                                   ; $5c80: $e8 $00
    ld [c], a                                     ; $5c82: $e2
    rlca                                          ; $5c83: $07
    ld [$000f], sp                                ; $5c84: $08 $0f $00
    ld [de], a                                    ; $5c87: $12
    add l                                         ; $5c88: $85
    inc c                                         ; $5c89: $0c
    nop                                           ; $5c8a: $00
    ld b, b                                       ; $5c8b: $40
    inc bc                                        ; $5c8c: $03
    ret nc                                        ; $5c8d: $d0

    ld b, $00                                     ; $5c8e: $06 $00
    ld l, b                                       ; $5c90: $68
    sub l                                         ; $5c91: $95
    ldh [rP1], a                                  ; $5c92: $e0 $00
    ld a, [de]                                    ; $5c94: $1a
    push hl                                       ; $5c95: $e5
    nop                                           ; $5c96: $00
    sbc d                                         ; $5c97: $9a
    nop                                           ; $5c98: $00
    ld b, b                                       ; $5c99: $40
    inc [hl]                                      ; $5c9a: $34
    add h                                         ; $5c9b: $84
    nop                                           ; $5c9c: $00
    dec bc                                        ; $5c9d: $0b
    jr nc, jr_0d5_5ce6                            ; $5c9e: $30 $46

    inc d                                         ; $5ca0: $14
    and e                                         ; $5ca1: $a3
    ret nc                                        ; $5ca2: $d0

    ld b, $42                                     ; $5ca3: $06 $42
    nop                                           ; $5ca5: $00
    sbc h                                         ; $5ca6: $9c
    push bc                                       ; $5ca7: $c5
    ld de, $7901                                  ; $5ca8: $11 $01 $79
    add c                                         ; $5cab: $81
    ld e, l                                       ; $5cac: $5d
    sub e                                         ; $5cad: $93
    nop                                           ; $5cae: $00
    ld b, e                                       ; $5caf: $43
    adc e                                         ; $5cb0: $8b
    inc sp                                        ; $5cb1: $33
    xor e                                         ; $5cb2: $ab
    inc bc                                        ; $5cb3: $03
    rla                                           ; $5cb4: $17
    rst $00                                       ; $5cb5: $c7
    rla                                           ; $5cb6: $17
    nop                                           ; $5cb7: $00
    rst $00                                       ; $5cb8: $c7
    add sp, -$20                                  ; $5cb9: $e8 $e0
    ldh a, [$f2]                                  ; $5cbb: $f0 $f2
    db $f4                                        ; $5cbd: $f4
    ldh a, [$f4]                                  ; $5cbe: $f0 $f4
    nop                                           ; $5cc0: $00
    ldh a, [$f8]                                  ; $5cc1: $f0 $f8
    ld hl, sp-$06                                 ; $5cc3: $f8 $fa
    ld hl, sp-$05                                 ; $5cc5: $f8 $fb
    ld hl, sp-$04                                 ; $5cc7: $f8 $fc
    nop                                           ; $5cc9: $00
    db $fc                                        ; $5cca: $fc
    and e                                         ; $5ccb: $a3
    jr jr_0d5_5cee                                ; $5ccc: $18 $20

    reti                                          ; $5cce: $d9


    add h                                         ; $5ccf: $84
    ld a, b                                       ; $5cd0: $78
    ld b, e                                       ; $5cd1: $43
    nop                                           ; $5cd2: $00
    xor h                                         ; $5cd3: $ac
    add b                                         ; $5cd4: $80
    ld [hl], b                                    ; $5cd5: $70
    adc $21                                       ; $5cd6: $ce $21
    rst $38                                       ; $5cd8: $ff
    nop                                           ; $5cd9: $00
    nop                                           ; $5cda: $00
    nop                                           ; $5cdb: $00
    nop                                           ; $5cdc: $00
    jr z, jr_0d5_5d22                             ; $5cdd: $28 $43

    add h                                         ; $5cdf: $84
    ld [hl-], a                                   ; $5ce0: $32
    ld c, b                                       ; $5ce1: $48
    sub l                                         ; $5ce2: $95
    jr nz, jr_0d5_5ced                            ; $5ce3: $20 $08

    sub e                                         ; $5ce5: $93

jr_0d5_5ce6:
    ld b, l                                       ; $5ce6: $45
    sub b                                         ; $5ce7: $90
    ld [de], a                                    ; $5ce8: $12
    db $10                                        ; $5ce9: $10
    db $10                                        ; $5cea: $10
    rla                                           ; $5ceb: $17
    rst $00                                       ; $5cec: $c7

jr_0d5_5ced:
    rrca                                          ; $5ced: $0f

jr_0d5_5cee:
    nop                                           ; $5cee: $00
    adc a                                         ; $5cef: $8f
    cpl                                           ; $5cf0: $2f
    adc a                                         ; $5cf1: $8f
    cpl                                           ; $5cf2: $2f
    rrca                                          ; $5cf3: $0f
    rra                                           ; $5cf4: $1f
    rra                                           ; $5cf5: $1f
    ld e, a                                       ; $5cf6: $5f
    nop                                           ; $5cf7: $00
    rra                                           ; $5cf8: $1f
    rst $18                                       ; $5cf9: $df
    rra                                           ; $5cfa: $1f
    ccf                                           ; $5cfb: $3f
    ccf                                           ; $5cfc: $3f
    nop                                           ; $5cfd: $00
    ld bc, $00de                                  ; $5cfe: $01 $de $00
    ld b, h                                       ; $5d01: $44
    rst $38                                       ; $5d02: $ff
    ld bc, $fe20                                  ; $5d03: $01 $20 $fe
    cp $fe                                        ; $5d06: $fe $fe
    inc b                                         ; $5d08: $04
    nop                                           ; $5d09: $00
    ld sp, hl                                     ; $5d0a: $f9
    ld hl, sp+$00                                 ; $5d0b: $f8 $00
    cp $fe                                        ; $5d0d: $fe $fe
    db $fd                                        ; $5d0f: $fd
    db $fc                                        ; $5d10: $fc
    ld a, [c]                                     ; $5d11: $f2
    ldh a, [$ec]                                  ; $5d12: $f0 $ec
    pop hl                                        ; $5d14: $e1
    nop                                           ; $5d15: $00
    db $10                                        ; $5d16: $10
    add e                                         ; $5d17: $83
    and b                                         ; $5d18: $a0
    ld c, a                                       ; $5d19: $4f
    ld b, b                                       ; $5d1a: $40
    ld c, $21                                     ; $5d1b: $0e $21
    inc d                                         ; $5d1d: $14
    nop                                           ; $5d1e: $00
    ld a, a                                       ; $5d1f: $7f
    ld a, a                                       ; $5d20: $7f
    cp a                                          ; $5d21: $bf

jr_0d5_5d22:
    ccf                                           ; $5d22: $3f
    ld c, a                                       ; $5d23: $4f
    rrca                                          ; $5d24: $0f
    scf                                           ; $5d25: $37
    add a                                         ; $5d26: $87
    nop                                           ; $5d27: $00
    dec bc                                        ; $5d28: $0b
    jp $f004                                      ; $5d29: $c3 $04 $f0


    inc bc                                        ; $5d2c: $03
    ld e, b                                       ; $5d2d: $58
    and b                                         ; $5d2e: $a0
    inc c                                         ; $5d2f: $0c
    ret nz                                        ; $5d30: $c0

    jr nc, jr_0d5_5d5b                            ; $5d31: $30 $28

    jr c, @+$0a                                   ; $5d33: $38 $08

    ld a, a                                       ; $5d35: $7f
    ld a, a                                       ; $5d36: $7f
    sbc a                                         ; $5d37: $9f
    rra                                           ; $5d38: $1f
    or $f0                                        ; $5d39: $f6 $f0
    nop                                           ; $5d3b: $00
    add sp, -$1f                                  ; $5d3c: $e8 $e1
    ret nc                                        ; $5d3e: $d0

    rst $00                                       ; $5d3f: $c7
    and b                                         ; $5d40: $a0
    adc a                                         ; $5d41: $8f
    ld b, b                                       ; $5d42: $40
    ld e, $00                                     ; $5d43: $1e $00

jr_0d5_5d45:
    ld b, c                                       ; $5d45: $41
    jr jr_0d5_5d8a                                ; $5d46: $18 $42

    inc d                                         ; $5d48: $14
    ld b, c                                       ; $5d49: $41

jr_0d5_5d4a:
    jr jr_0d5_5d5f                                ; $5d4a: $18 $13

    xor b                                         ; $5d4c: $a8
    nop                                           ; $5d4d: $00
    inc b                                         ; $5d4e: $04
    jp nc, $8408                                  ; $5d4f: $d2 $08 $84

    ld h, b                                       ; $5d52: $60
    dec b                                         ; $5d53: $05
    pop af                                        ; $5d54: $f1
    ld [bc], a                                    ; $5d55: $02
    nop                                           ; $5d56: $00
    ld hl, sp+$00                                 ; $5d57: $f8 $00
    ld sp, hl                                     ; $5d59: $f9
    inc b                                         ; $5d5a: $04

jr_0d5_5d5b:
    inc sp                                        ; $5d5b: $33
    ld [$07b0], sp                                ; $5d5c: $08 $b0 $07

jr_0d5_5d5f:
    nop                                           ; $5d5f: $00
    jr jr_0d5_5d45                                ; $5d60: $18 $e3

    inc c                                         ; $5d62: $0c
    db $10                                        ; $5d63: $10
    adc c                                         ; $5d64: $89
    ld b, h                                       ; $5d65: $44
    jp RST_20                                     ; $5d66: $c3 $20 $00


    adc e                                         ; $5d69: $8b
    db $10                                        ; $5d6a: $10
    jp Jump_0d5_6618                              ; $5d6b: $c3 $18 $66


    sub c                                         ; $5d6e: $91
    ld l, a                                       ; $5d6f: $6f
    rrca                                          ; $5d70: $0f
    nop                                           ; $5d71: $00
    rla                                           ; $5d72: $17
    add a                                         ; $5d73: $87
    dec bc                                        ; $5d74: $0b
    db $e3                                        ; $5d75: $e3

jr_0d5_5d76:
    dec b                                         ; $5d76: $05
    ld [hl], c                                    ; $5d77: $71
    add d                                         ; $5d78: $82
    jr c, jr_0d5_5d7b                             ; $5d79: $38 $00

jr_0d5_5d7b:
    jp nz, $2218                                  ; $5d7b: $c2 $18 $22

    adc b                                         ; $5d7e: $88
    ld b, d                                       ; $5d7f: $42
    jr z, jr_0d5_5d22                             ; $5d80: $28 $a0

    adc d                                         ; $5d82: $8a
    adc b                                         ; $5d83: $88
    ld [bc], a                                    ; $5d84: $02
    nop                                           ; $5d85: $00
    adc h                                         ; $5d86: $8c
    ret nc                                        ; $5d87: $d0

    add $02                                       ; $5d88: $c6 $02

jr_0d5_5d8a:
    ld [$e2e8], sp                                ; $5d8a: $08 $e8 $e2
    add sp, $00                                   ; $5d8d: $e8 $00
    db $e3                                        ; $5d8f: $e3
    ld b, e                                       ; $5d90: $43
    adc b                                         ; $5d91: $88
    inc hl                                        ; $5d92: $23
    nop                                           ; $5d93: $00
    adc d                                         ; $5d94: $8a
    ld d, b                                       ; $5d95: $50
    ld b, b                                       ; $5d96: $40
    nop                                           ; $5d97: $00
    and d                                         ; $5d98: $a2
    jr nz, @-$32                                  ; $5d99: $20 $cc

    ret nz                                        ; $5d9b: $c0

    ld c, $81                                     ; $5d9c: $0e $81
    ld [hl], b                                    ; $5d9e: $70
    inc c                                         ; $5d9f: $0c
    nop                                           ; $5da0: $00
    ld h, d                                       ; $5da1: $62
    ret z                                         ; $5da2: $c8

    nop                                           ; $5da3: $00
    ld a, [hl+]                                   ; $5da4: $2a
    ld bc, $04d0                                  ; $5da5: $01 $d0 $04
    add c                                         ; $5da8: $81
    nop                                           ; $5da9: $00
    ld c, b                                       ; $5daa: $48
    ld b, $30                                     ; $5dab: $06 $30
    sub l                                         ; $5dad: $95
    ld [bc], a                                    ; $5dae: $02
    ld [hl+], a                                   ; $5daf: $22
    jr jr_0d5_5d76                                ; $5db0: $18 $c4

    nop                                           ; $5db2: $00
    jr nc, jr_0d5_5d4a                            ; $5db3: $30 $95

    ld b, c                                       ; $5db5: $41
    dec d                                         ; $5db6: $15
    add c                                         ; $5db7: $81
    dec [hl]                                      ; $5db8: $35
    ld bc, $000b                                  ; $5db9: $01 $0b $00
    ld b, e                                       ; $5dbc: $43
    ld c, e                                       ; $5dbd: $4b
    and e                                         ; $5dbe: $a3
    dec hl                                        ; $5dbf: $2b
    ld b, e                                       ; $5dc0: $43
    rla                                           ; $5dc1: $17
    add a                                         ; $5dc2: $87
    rla                                           ; $5dc3: $17
    inc b                                         ; $5dc4: $04
    rst $00                                       ; $5dc5: $c7
    add sp, -$1d                                  ; $5dc6: $e8 $e3
    db $f4                                        ; $5dc8: $f4
    pop af                                        ; $5dc9: $f1
    ld [bc], a                                    ; $5dca: $02
    ld [$f8fa], sp                                ; $5dcb: $08 $fa $f8
    nop                                           ; $5dce: $00
    ld a, [$fbf8]                                 ; $5dcf: $fa $f8 $fb
    ld hl, sp-$04                                 ; $5dd2: $f8 $fc
    db $fc                                        ; $5dd4: $fc
    ld e, b                                       ; $5dd5: $58
    ld b, $00                                     ; $5dd6: $06 $00
    inc h                                         ; $5dd8: $24
    ld e, d                                       ; $5dd9: $5a
    ld c, d                                       ; $5dda: $4a
    inc [hl]                                      ; $5ddb: $34
    db $10                                        ; $5ddc: $10
    xor h                                         ; $5ddd: $ac
    ld bc, $0098                                  ; $5dde: $01 $98 $00
    nop                                           ; $5de1: $00
    nop                                           ; $5de2: $00
    rst $38                                       ; $5de3: $ff
    nop                                           ; $5de4: $00
    nop                                           ; $5de5: $00
    nop                                           ; $5de6: $00
    ld [de], a                                    ; $5de7: $12
    db $ec                                        ; $5de8: $ec
    nop                                           ; $5de9: $00
    ld c, d                                       ; $5dea: $4a
    inc [hl]                                      ; $5deb: $34
    inc h                                         ; $5dec: $24
    ld e, c                                       ; $5ded: $59
    db $10                                        ; $5dee: $10
    dec hl                                        ; $5def: $2b
    add b                                         ; $5df0: $80
    inc bc                                        ; $5df1: $03
    add h                                         ; $5df2: $84
    db $10                                        ; $5df3: $10
    jr jr_0d5_5e0d                                ; $5df4: $18 $17

    rst $00                                       ; $5df6: $c7
    cpl                                           ; $5df7: $2f
    adc a                                         ; $5df8: $8f
    ld [bc], a                                    ; $5df9: $02
    ld [$1f5f], sp                                ; $5dfa: $08 $5f $1f
    nop                                           ; $5dfd: $00
    ld e, a                                       ; $5dfe: $5f
    rra                                           ; $5dff: $1f
    rst $18                                       ; $5e00: $df
    rra                                           ; $5e01: $1f
    ccf                                           ; $5e02: $3f
    ccf                                           ; $5e03: $3f
    nop                                           ; $5e04: $00
    ld bc, $00f7                                  ; $5e05: $01 $f7 $00
    ld b, b                                       ; $5e08: $40
    rst $38                                       ; $5e09: $ff
    ld bc, $fe00                                  ; $5e0a: $01 $00 $fe

jr_0d5_5e0d:
    cp $cd                                        ; $5e0d: $fe $cd
    call z, $b485                                 ; $5e0f: $cc $85 $b4
    nop                                           ; $5e12: $00
    dec [hl]                                      ; $5e13: $35
    ld b, h                                       ; $5e14: $44
    ld b, l                                       ; $5e15: $45
    inc b                                         ; $5e16: $04
    ld e, c                                       ; $5e17: $59

jr_0d5_5e18:
    jr jr_0d5_5e18                                ; $5e18: $18 $fe

    cp $00                                        ; $5e1a: $fe $00
    nop                                           ; $5e1c: $00
    nop                                           ; $5e1d: $00
    ld sp, hl                                     ; $5e1e: $f9
    nop                                           ; $5e1f: $00
    xor b                                         ; $5e20: $a8
    ld d, c                                       ; $5e21: $51
    ld d, e                                       ; $5e22: $53
    and b                                         ; $5e23: $a0
    nop                                           ; $5e24: $00
    and c                                         ; $5e25: $a1
    ld b, d                                       ; $5e26: $42
    call z, Call_0d5_4520                         ; $5e27: $cc $20 $45
    xor b                                         ; $5e2a: $a8
    ld a, a                                       ; $5e2b: $7f
    ld a, a                                       ; $5e2c: $7f
    nop                                           ; $5e2d: $00
    jr c, jr_0d5_5e68                             ; $5e2e: $38 $38

    adc e                                         ; $5e30: $8b
    ld [$01b2], sp                                ; $5e31: $08 $b2 $01
    add hl, bc                                    ; $5e34: $09
    nop                                           ; $5e35: $00
    nop                                           ; $5e36: $00
    ld [hl], b                                    ; $5e37: $70
    nop                                           ; $5e38: $00
    jp z, $8b30                                   ; $5e39: $ca $30 $8b

    ld d, b                                       ; $5e3c: $50
    adc a                                         ; $5e3d: $8f
    adc a                                         ; $5e3e: $8f
    nop                                           ; $5e3f: $00
    ld [hl], e                                    ; $5e40: $73
    inc bc                                        ; $5e41: $03
    add hl, de                                    ; $5e42: $19
    ld h, c                                       ; $5e43: $61
    dec c                                         ; $5e44: $0d
    ld sp, $1a84                                  ; $5e45: $31 $84 $1a
    nop                                           ; $5e48: $00
    ld a, [hl+]                                   ; $5e49: $2a
    add h                                         ; $5e4a: $84
    inc b                                         ; $5e4b: $04
    ld a, [hl+]                                   ; $5e4c: $2a
    ld [bc], a                                    ; $5e4d: $02
    inc c                                         ; $5e4e: $0c
    ld [de], a                                    ; $5e4f: $12
    ld d, c                                       ; $5e50: $51
    nop                                           ; $5e51: $00
    dec h                                         ; $5e52: $25
    ld b, d                                       ; $5e53: $42
    ld a, [de]                                    ; $5e54: $1a
    dec h                                         ; $5e55: $25
    add b                                         ; $5e56: $80
    sbc l                                         ; $5e57: $9d
    ld b, b                                       ; $5e58: $40
    ld a, [bc]                                    ; $5e59: $0a
    nop                                           ; $5e5a: $00
    ld b, b                                       ; $5e5b: $40
    ld bc, $1840                                  ; $5e5c: $01 $40 $18
    ld b, b                                       ; $5e5f: $40
    rra                                           ; $5e60: $1f
    and c                                         ; $5e61: $a1
    ld b, b                                       ; $5e62: $40

jr_0d5_5e63:
    nop                                           ; $5e63: $00
    ld d, e                                       ; $5e64: $53
    and b                                         ; $5e65: $a0
    dec hl                                        ; $5e66: $2b
    ret nc                                        ; $5e67: $d0

jr_0d5_5e68:
    ld [bc], a                                    ; $5e68: $02
    ld d, c                                       ; $5e69: $51
    ld [bc], a                                    ; $5e6a: $02
    xor b                                         ; $5e6b: $a8
    nop                                           ; $5e6c: $00
    ld b, $40                                     ; $5e6d: $06 $40
    inc c                                         ; $5e6f: $0c
    nop                                           ; $5e70: $00
    nop                                           ; $5e71: $00
    ldh [$0a], a                                  ; $5e72: $e0 $0a
    and b                                         ; $5e74: $a0
    nop                                           ; $5e75: $00
    nop                                           ; $5e76: $00
    ld b, c                                       ; $5e77: $41
    inc e                                         ; $5e78: $1c
    ld [hl+], a                                   ; $5e79: $22
    ld c, [hl]                                    ; $5e7a: $4e
    nop                                           ; $5e7b: $00
    inc b                                         ; $5e7c: $04
    or b                                          ; $5e7d: $b0
    nop                                           ; $5e7e: $00
    add b                                         ; $5e7f: $80
    ld [hl-], a                                   ; $5e80: $32
    ret z                                         ; $5e81: $c8

    ld [bc], a                                    ; $5e82: $02
    ld a, h                                       ; $5e83: $7c
    add b                                         ; $5e84: $80
    and h                                         ; $5e85: $a4
    ld [$4000], sp                                ; $5e86: $08 $00 $40
    dec c                                         ; $5e89: $0d
    ld b, c                                       ; $5e8a: $41
    adc b                                         ; $5e8b: $88
    ld c, b                                       ; $5e8c: $48
    ld de, $0251                                  ; $5e8d: $11 $51 $02
    nop                                           ; $5e90: $00
    ld c, d                                       ; $5e91: $4a
    inc d                                         ; $5e92: $14
    ld b, b                                       ; $5e93: $40
    adc h                                         ; $5e94: $8c
    add d                                         ; $5e95: $82
    nop                                           ; $5e96: $00
    and b                                         ; $5e97: $a0
    adc a                                         ; $5e98: $8f
    nop                                           ; $5e99: $00
    and b                                         ; $5e9a: $a0
    adc [hl]                                      ; $5e9b: $8e
    and b                                         ; $5e9c: $a0
    adc [hl]                                      ; $5e9d: $8e
    ret nc                                        ; $5e9e: $d0

    add $d0                                       ; $5e9f: $c6 $d0
    rst $00                                       ; $5ea1: $c7
    nop                                           ; $5ea2: $00
    ret nc                                        ; $5ea3: $d0

    add $e8                                       ; $5ea4: $c6 $e8
    ld [c], a                                     ; $5ea6: $e2
    jp hl                                         ; $5ea7: $e9


    ldh [rP1], a                                  ; $5ea8: $e0 $00
    jr jr_0d5_5eac                                ; $5eaa: $18 $00

jr_0d5_5eac:
    ld h, b                                       ; $5eac: $60
    adc h                                         ; $5ead: $8c
    sub b                                         ; $5eae: $90
    ld h, b                                       ; $5eaf: $60
    db $10                                        ; $5eb0: $10
    add hl, bc                                    ; $5eb1: $09
    ld c, c                                       ; $5eb2: $49
    ld [bc], a                                    ; $5eb3: $02
    nop                                           ; $5eb4: $00
    add h                                         ; $5eb5: $84
    ld h, c                                       ; $5eb6: $61
    add d                                         ; $5eb7: $82
    ld d, b                                       ; $5eb8: $50
    ld bc, $20e2                                  ; $5eb9: $01 $e2 $20
    ld e, h                                       ; $5ebc: $5c
    nop                                           ; $5ebd: $00
    jr jr_0d5_5e63                                ; $5ebe: $18 $a3

    add b                                         ; $5ec0: $80
    ld b, h                                       ; $5ec1: $44
    pop bc                                        ; $5ec2: $c1
    jr nz, @-$1e                                  ; $5ec3: $20 $e0

    ld a, [de]                                    ; $5ec5: $1a
    nop                                           ; $5ec6: $00
    ldh a, [$08]                                  ; $5ec7: $f0 $08
    ld bc, $7b04                                  ; $5ec9: $01 $04 $7b
    nop                                           ; $5ecc: $00
    dec b                                         ; $5ecd: $05
    ld [hl], c                                    ; $5ece: $71
    ld [bc], a                                    ; $5ecf: $02
    dec b                                         ; $5ed0: $05
    pop af                                        ; $5ed1: $f1
    dec b                                         ; $5ed2: $05
    ld sp, $438b                                  ; $5ed3: $31 $8b $43
    ld [bc], a                                    ; $5ed6: $02
    nop                                           ; $5ed7: $00
    inc bc                                        ; $5ed8: $03
    nop                                           ; $5ed9: $00
    rla                                           ; $5eda: $17
    rlca                                          ; $5edb: $07
    rla                                           ; $5edc: $17
    ld b, a                                       ; $5edd: $47
    jp hl                                         ; $5ede: $e9


    ldh [$f4], a                                  ; $5edf: $e0 $f4
    ldh a, [rP1]                                  ; $5ee1: $f0 $00
    db $f4                                        ; $5ee3: $f4
    ldh a, [$f5]                                  ; $5ee4: $f0 $f5
    ldh a, [$fa]                                  ; $5ee6: $f0 $fa
    ld hl, sp-$06                                 ; $5ee8: $f8 $fa
    ld hl, sp+$00                                 ; $5eea: $f8 $00
    ei                                            ; $5eec: $fb
    ld hl, sp-$04                                 ; $5eed: $f8 $fc
    db $fc                                        ; $5eef: $fc
    ld bc, $00c4                                  ; $5ef0: $01 $c4 $00
    xor [hl]                                      ; $5ef3: $ae
    nop                                           ; $5ef4: $00
    ld [$0446], sp                                ; $5ef5: $08 $46 $04
    dec de                                        ; $5ef8: $1b
    adc [hl]                                      ; $5ef9: $8e
    ld d, c                                       ; $5efa: $51
    nop                                           ; $5efb: $00
    nop                                           ; $5efc: $00
    nop                                           ; $5efd: $00
    rst $38                                       ; $5efe: $ff
    nop                                           ; $5eff: $00
    nop                                           ; $5f00: $00
    nop                                           ; $5f01: $00
    ld [bc], a                                    ; $5f02: $02
    nop                                           ; $5f03: $00
    add h                                         ; $5f04: $84
    jr nc, @+$04                                  ; $5f05: $30 $02

    ld c, b                                       ; $5f07: $48
    ld bc, $0231                                  ; $5f08: $01 $31 $02
    inc de                                        ; $5f0b: $13
    and h                                         ; $5f0c: $a4
    db $10                                        ; $5f0d: $10
    jr @+$59                                      ; $5f0e: $18 $57

    nop                                           ; $5f10: $00
    rlca                                          ; $5f11: $07
    xor a                                         ; $5f12: $af
    rrca                                          ; $5f13: $0f
    cpl                                           ; $5f14: $2f
    adc a                                         ; $5f15: $8f
    cpl                                           ; $5f16: $2f
    adc a                                         ; $5f17: $8f
    ld e, a                                       ; $5f18: $5f
    nop                                           ; $5f19: $00
    rra                                           ; $5f1a: $1f
    ld e, a                                       ; $5f1b: $5f
    rra                                           ; $5f1c: $1f
    rst $18                                       ; $5f1d: $df
    rra                                           ; $5f1e: $1f
    ccf                                           ; $5f1f: $3f
    ccf                                           ; $5f20: $3f

    db $00, $01, $f4, $00, $00, $ff, $ff, $e0, $ff, $f0, $ff, $fa, $fd, $00, $f9, $fe
    db $c0, $ff, $c0, $ff, $df, $e0, $00, $fe, $fe, $60, $ff, $03, $fc, $ff, $00, $00
    db $97, $00, $99, $00, $f8, $00, $7c, $80, $00, $7f, $7f, $0d, $ff, $83, $7f, $d8
    db $27, $00, $dc, $23, $ff, $00, $7f, $00, $70, $00, $00, $ff, $ff, $ef, $ff, $3f
    db $ff, $33, $ff, $00, $03, $ff, $07, $ff, $e7, $1f, $ff, $03, $00, $e7, $f8, $a7
    db $e8, $93, $cc, $a7, $98, $00, $4f, $30, $5c, $20, $5f, $20, $4f, $30, $00, $fc
    db $00, $fe, $00, $c0, $00, $9c, $00, $40, $3c, $02, $00, $f8, $00, $d8, $20, $73
    db $00, $18, $67, $00, $0e, $3a, $00, $02, $08, $0e, $00, $0f, $00, $00, $ff, $03
    db $63, $1f, $63, $1f, $f9, $00, $05, $f2, $0c, $be, $00, $a2, $58, $82, $00, $78
    db $80, $bf, $82, $bc, $a6, $88, $dd, $00, $c2, $99, $c6, $a0, $df, $e0, $ff, $c8
    db $00, $f7, $39, $40, $39, $40, $fb, $00, $fb, $00, $00, $bb, $40, $7b, $80, $73
    db $80, $33, $00, $c0, $cf, $00, $cf, $00, $cd, $02, $ce, $00, $01, $cf, $00, $c3
    db $00, $ff, $00, $7e, $00, $80, $05, $f9, $05, $f9, $85, $71, $cb, $00, $37, $0b
    db $f3, $83, $7b, $87, $7f, $07, $00, $f7, $e9, $e6, $82, $f5, $90, $f7, $90, $00
    db $ff, $d8, $fb, $e8, $fa, $fb, $f8, $fc, $00, $fc, $77, $80, $6f, $80, $7f, $80
    db $8e, $00, $71, $06, $f9, $02, $1d, $ff, $00, $00, $01, $00, $b8, $47, $b0, $4f
    db $81, $6e, $3b, $00, $10, $ff, $00, $f4, $10, $08, $e3, $1f, $7b, $8f, $00, $29
    db $8f, $af, $4f, $1f, $df, $5f, $1f, $00, $df, $1f, $3f, $3f

    nop                                           ; $603d: $00
    ld bc, $00dd                                  ; $603e: $01 $dd $00
    ld b, b                                       ; $6041: $40
    rst $38                                       ; $6042: $ff
    ld bc, $fe40                                  ; $6043: $01 $40 $fe
    cp $f9                                        ; $6046: $fe $f9
    ld hl, sp-$02                                 ; $6048: $f8 $fe
    cp $00                                        ; $604a: $fe $00
    push bc                                       ; $604c: $c5
    call nz, $80b2                                ; $604d: $c4 $b2 $80
    and b                                         ; $6050: $a0
    adc c                                         ; $6051: $89
    and b                                         ; $6052: $a0
    sub l                                         ; $6053: $95
    nop                                           ; $6054: $00
    stop                                          ; $6055: $10 $00
    ld d, a                                       ; $6057: $57
    nop                                           ; $6058: $00
    inc bc                                        ; $6059: $03
    call nc, Call_0d5_7f7f                        ; $605a: $d4 $7f $7f
    nop                                           ; $605d: $00
    and e                                         ; $605e: $a3
    inc hl                                        ; $605f: $23
    ld c, l                                       ; $6060: $4d
    ld bc, $9105                                  ; $6061: $01 $05 $91
    dec b                                         ; $6064: $05
    xor c                                         ; $6065: $a9
    ld [bc], a                                    ; $6066: $02
    jr jr_0d5_6069                                ; $6067: $18 $00

jr_0d5_6069:
    add e                                         ; $6069: $83
    ld d, b                                       ; $606a: $50
    jr nz, @-$6e                                  ; $606b: $20 $90

    jr nc, @+$4a                                  ; $606d: $30 $48

    ld a, a                                       ; $606f: $7f
    nop                                           ; $6070: $00
    ld a, a                                       ; $6071: $7f
    sbc a                                         ; $6072: $9f
    rra                                           ; $6073: $1f
    or $f1                                        ; $6074: $f6 $f1
    add sp, -$1c                                  ; $6076: $e8 $e4
    ret nz                                        ; $6078: $c0

    nop                                           ; $6079: $00
    jp $8fa0                                      ; $607a: $c3 $a0 $8f


    ld b, b                                       ; $607d: $40
    rlca                                          ; $607e: $07
    ld b, [hl]                                    ; $607f: $46
    ld bc, $0006                                  ; $6080: $01 $06 $00
    add hl, de                                    ; $6083: $19
    nop                                           ; $6084: $00
    rra                                           ; $6085: $1f
    ld [bc], a                                    ; $6086: $02
    add hl, bc                                    ; $6087: $09
    ret nz                                        ; $6088: $c0

    ld [hl+], a                                   ; $6089: $22
    push de                                       ; $608a: $d5
    nop                                           ; $608b: $00
    jr nz, jr_0d5_60a0                            ; $608c: $20 $12

    push hl                                       ; $608e: $e5
    ld [bc], a                                    ; $608f: $02
    jr nc, jr_0d5_6099                            ; $6090: $30 $07

    jr nc, jr_0d5_6099                            ; $6092: $30 $05

    nop                                           ; $6094: $00
    ldh a, [$09]                                  ; $6095: $f0 $09
    ld [c], a                                     ; $6097: $e2
    ld c, h                                       ; $6098: $4c

jr_0d5_6099:
    ld hl, $0402                                  ; $6099: $21 $02 $04
    pop de                                        ; $609c: $d1
    nop                                           ; $609d: $00
    nop                                           ; $609e: $00
    inc d                                         ; $609f: $14

jr_0d5_60a0:
    ret z                                         ; $60a0: $c8

    ld b, $48                                     ; $60a1: $06 $48
    and b                                         ; $60a3: $a0
    rrca                                          ; $60a4: $0f
    and b                                         ; $60a5: $a0
    nop                                           ; $60a6: $00
    add hl, bc                                    ; $60a7: $09
    ld hl, $6f48                                  ; $60a8: $21 $48 $6f
    rrca                                          ; $60ab: $0f
    rla                                           ; $60ac: $17
    add a                                         ; $60ad: $87
    dec bc                                        ; $60ae: $0b
    nop                                           ; $60af: $00
    ld h, e                                       ; $60b0: $63
    add l                                         ; $60b1: $85
    ld sp, $1842                                  ; $60b2: $31 $42 $18
    ld [hl+], a                                   ; $60b5: $22
    ld [$0202], sp                                ; $60b6: $08 $02 $02
    adc b                                         ; $60b9: $88
    add d                                         ; $60ba: $82
    ld a, b                                       ; $60bb: $78
    and b                                         ; $60bc: $a0
    adc a                                         ; $60bd: $8f
    sub b                                         ; $60be: $90
    inc bc                                        ; $60bf: $03
    nop                                           ; $60c0: $00
    ret nz                                        ; $60c1: $c0

    nop                                           ; $60c2: $00
    jp $c0d2                                      ; $60c3: $c3 $d2 $c0


    add h                                         ; $60c6: $84
    add b                                         ; $60c7: $80
    ld a, c                                       ; $60c8: $79
    inc b                                         ; $60c9: $04
    add b                                         ; $60ca: $80
    nop                                           ; $60cb: $00
    add c                                         ; $60cc: $81
    db $10                                        ; $60cd: $10
    adc b                                         ; $60ce: $88
    ld h, c                                       ; $60cf: $61
    ld [de], a                                    ; $60d0: $12
    add c                                         ; $60d1: $81
    ld b, d                                       ; $60d2: $42
    dec b                                         ; $60d3: $05
    nop                                           ; $60d4: $00
    nop                                           ; $60d5: $00
    ld bc, $4204                                  ; $60d6: $01 $04 $42
    db $10                                        ; $60d9: $10
    ld bc, $214a                                  ; $60da: $01 $4a $21
    nop                                           ; $60dd: $00
    ld [$a611], sp                                ; $60de: $08 $11 $a6
    ld [$84b3], sp                                ; $60e1: $08 $b3 $84
    add hl, bc                                    ; $60e4: $09
    ld b, d                                       ; $60e5: $42
    nop                                           ; $60e6: $00
    inc b                                         ; $60e7: $04
    ld bc, $8442                                  ; $60e8: $01 $42 $84
    db $10                                        ; $60eb: $10
    ld bc, $08a4                                  ; $60ec: $01 $a4 $08
    db $10                                        ; $60ef: $10
    ld hl, $1185                                  ; $60f0: $21 $85 $11
    adc h                                         ; $60f3: $8c
    nop                                           ; $60f4: $00
    pop af                                        ; $60f5: $f1
    dec bc                                        ; $60f6: $0b
    ld h, e                                       ; $60f7: $63
    sub e                                         ; $60f8: $93
    nop                                           ; $60f9: $00
    dec bc                                        ; $60fa: $0b
    ld h, e                                       ; $60fb: $63
    inc de                                        ; $60fc: $13
    daa                                           ; $60fd: $27
    ld b, a                                       ; $60fe: $47
    daa                                           ; $60ff: $27
    rlca                                          ; $6100: $07
    add sp, $10                                   ; $6101: $e8 $10
    ldh [$f4], a                                  ; $6103: $e0 $f4
    ldh a, [rSC]                                  ; $6105: $f0 $02
    ld [$f8fa], sp                                ; $6107: $08 $fa $f8
    ld a, [$00f8]                                 ; $610a: $fa $f8 $00
    ei                                            ; $610d: $fb
    ld hl, sp-$04                                 ; $610e: $f8 $fc
    db $fc                                        ; $6110: $fc
    nop                                           ; $6111: $00
    inc h                                         ; $6112: $24
    nop                                           ; $6113: $00
    sub d                                         ; $6114: $92
    nop                                           ; $6115: $00
    ld b, b                                       ; $6116: $40
    adc b                                         ; $6117: $88
    inc hl                                        ; $6118: $23
    ld b, h                                       ; $6119: $44
    ld [de], a                                    ; $611a: $12
    jr nz, jr_0d5_611d                            ; $611b: $20 $00

jr_0d5_611d:
    nop                                           ; $611d: $00
    jr nz, @+$01                                  ; $611e: $20 $ff

    nop                                           ; $6120: $00
    ld bc, $4800                                  ; $6121: $01 $00 $48
    nop                                           ; $6124: $00
    sub d                                         ; $6125: $92
    inc b                                         ; $6126: $04
    ld [hl+], a                                   ; $6127: $22
    ld [$4488], sp                                ; $6128: $08 $88 $44
    sub b                                         ; $612b: $90
    ld [$1810], sp                                ; $612c: $08 $10 $18
    rla                                           ; $612f: $17
    daa                                           ; $6130: $27
    rra                                           ; $6131: $1f
    nop                                           ; $6132: $00
    rrca                                          ; $6133: $0f
    rrca                                          ; $6134: $0f
    adc a                                         ; $6135: $8f
    cpl                                           ; $6136: $2f
    adc a                                         ; $6137: $8f
    ld e, a                                       ; $6138: $5f
    rra                                           ; $6139: $1f
    ld e, a                                       ; $613a: $5f
    nop                                           ; $613b: $00
    rra                                           ; $613c: $1f
    rst $18                                       ; $613d: $df
    rra                                           ; $613e: $1f
    ccf                                           ; $613f: $3f
    ccf                                           ; $6140: $3f
    nop                                           ; $6141: $00
    ld bc, $00e5                                  ; $6142: $01 $e5 $00
    ld b, b                                       ; $6145: $40
    rst $38                                       ; $6146: $ff
    ld bc, $fe20                                  ; $6147: $01 $20 $fe
    cp $fd                                        ; $614a: $fe $fd
    db $fc                                        ; $614c: $fc
    ld a, [$00f9]                                 ; $614d: $fa $f9 $00
    db $f4                                        ; $6150: $f4
    ld a, [c]                                     ; $6151: $f2
    cp $fe                                        ; $6152: $fe $fe
    ldh a, [$f0]                                  ; $6154: $f0 $f0
    ret nz                                        ; $6156: $c0

    rst $08                                       ; $6157: $cf
    nop                                           ; $6158: $00
    or b                                          ; $6159: $b0
    add c                                         ; $615a: $81
    ld a, [hl]                                    ; $615b: $7e
    ld bc, $0281                                  ; $615c: $01 $81 $02
    nop                                           ; $615f: $00
    db $fc                                        ; $6160: $fc
    nop                                           ; $6161: $00
    ld [bc], a                                    ; $6162: $02
    dec b                                         ; $6163: $05
    ld a, a                                       ; $6164: $7f
    ld a, a                                       ; $6165: $7f
    ccf                                           ; $6166: $3f
    ccf                                           ; $6167: $3f
    rrca                                          ; $6168: $0f
    adc a                                         ; $6169: $8f
    nop                                           ; $616a: $00
    rlca                                          ; $616b: $07
    rst $00                                       ; $616c: $c7
    inc bc                                        ; $616d: $03
    db $e3                                        ; $616e: $e3
    nop                                           ; $616f: $00
    ld [hl], h                                    ; $6170: $74
    add h                                         ; $6171: $84
    ld [hl-], a                                   ; $6172: $32
    jr nc, @+$44                                  ; $6173: $30 $42

    jr c, jr_0d5_61a7                             ; $6175: $38 $30

    jr z, jr_0d5_61b1                             ; $6177: $28 $38

    ld [$7171], sp                                ; $6179: $08 $71 $71
    ld b, $08                                     ; $617c: $06 $08
    nop                                           ; $617e: $00
    db $f4                                        ; $617f: $f4
    pop af                                        ; $6180: $f1
    add sp, -$1d                                  ; $6181: $e8 $e3
    ret nc                                        ; $6183: $d0

    res 4, b                                      ; $6184: $cb $a0
    add [hl]                                      ; $6186: $86
    nop                                           ; $6187: $00
    ld b, c                                       ; $6188: $41
    inc c                                         ; $6189: $0c
    ld b, d                                       ; $618a: $42
    add hl, de                                    ; $618b: $19

jr_0d5_618c:
    ld b, [hl]                                    ; $618c: $46
    db $10                                        ; $618d: $10
    ld b, a                                       ; $618e: $47
    nop                                           ; $618f: $00
    nop                                           ; $6190: $00
    nop                                           ; $6191: $00
    ei                                            ; $6192: $fb
    inc b                                         ; $6193: $04
    add c                                         ; $6194: $81
    dec a                                         ; $6195: $3d
    ld b, b                                       ; $6196: $40
    jp hl                                         ; $6197: $e9


    inc d                                         ; $6198: $14
    nop                                           ; $6199: $00
    sub b                                         ; $619a: $90
    ld b, l                                       ; $619b: $45
    nop                                           ; $619c: $00
    jp nc, Jump_000_0200                          ; $619d: $d2 $00 $02

    ret nz                                        ; $61a0: $c0

    rlca                                          ; $61a1: $07
    nop                                           ; $61a2: $00
    nop                                           ; $61a3: $00
    dec d                                         ; $61a4: $15
    and b                                         ; $61a5: $a0
    inc bc                                        ; $61a6: $03

jr_0d5_61a7:
    jr nc, jr_0d5_61b0                            ; $61a7: $30 $07

    ldh [rTMA], a                                 ; $61a9: $e0 $06
    nop                                           ; $61ab: $00
    ld hl, $824c                                  ; $61ac: $21 $4c $82
    add hl, de                                    ; $61af: $19

jr_0d5_61b0:
    ld b, h                                       ; $61b0: $44

jr_0d5_61b1:
    sub e                                         ; $61b1: $93
    nop                                           ; $61b2: $00
    inc b                                         ; $61b3: $04
    nop                                           ; $61b4: $00
    inc e                                         ; $61b5: $1c
    jp nz, $8d31                                  ; $61b6: $c2 $31 $8d

    ld h, e                                       ; $61b9: $63
    dec de                                        ; $61ba: $1b
    push bc                                       ; $61bb: $c5
    ld hl, $0200                                  ; $61bc: $21 $00 $02
    ret c                                         ; $61bf: $d8

    ld [bc], a                                    ; $61c0: $02
    cp b                                          ; $61c1: $b8
    ld [bc], a                                    ; $61c2: $02
    ld a, b                                       ; $61c3: $78
    ld [bc], a                                    ; $61c4: $02
    ld a, b                                       ; $61c5: $78
    nop                                           ; $61c6: $00
    and h                                         ; $61c7: $a4
    adc e                                         ; $61c8: $8b
    and b                                         ; $61c9: $a0
    adc a                                         ; $61ca: $8f
    and b                                         ; $61cb: $a0
    add [hl]                                      ; $61cc: $86
    ret nc                                        ; $61cd: $d0

    add $00                                       ; $61ce: $c6 $00
    ret nc                                        ; $61d0: $d0

    jp $c5d0                                      ; $61d1: $c3 $d0 $c5


jr_0d5_61d4:
    add sp, -$1e                                  ; $61d4: $e8 $e2
    add sp, -$1f                                  ; $61d6: $e8 $e1
    nop                                           ; $61d8: $00
    jr nc, @-$7c                                  ; $61d9: $30 $82

    ld l, b                                       ; $61db: $68
    ld bc, $0459                                  ; $61dc: $01 $59 $04
    ld d, [hl]                                    ; $61df: $56
    ld [$4000], sp                                ; $61e0: $08 $00 $40
    inc e                                         ; $61e3: $1c
    ld b, h                                       ; $61e4: $44
    ld a, [bc]                                    ; $61e5: $0a
    ld b, b                                       ; $61e6: $40
    inc b                                         ; $61e7: $04
    ld b, b                                       ; $61e8: $40
    inc b                                         ; $61e9: $04
    nop                                           ; $61ea: $00
    ld [de], a                                    ; $61eb: $12
    ret                                           ; $61ec: $c9


    dec b                                         ; $61ed: $05
    or d                                          ; $61ee: $b2
    jr nz, jr_0d5_618c                            ; $61ef: $20 $9b

    ld c, $40                                     ; $61f1: $0e $40
    nop                                           ; $61f3: $00
    add [hl]                                      ; $61f4: $86
    ld h, b                                       ; $61f5: $60
    nop                                           ; $61f6: $00
    ldh [rP1], a                                  ; $61f7: $e0 $00
    pop hl                                        ; $61f9: $e1
    nop                                           ; $61fa: $00
    ld h, c                                       ; $61fb: $61
    nop                                           ; $61fc: $00
    dec b                                         ; $61fd: $05
    ld [hl], c                                    ; $61fe: $71
    dec b                                         ; $61ff: $05
    or c                                          ; $6200: $b1
    add l                                         ; $6201: $85
    ld sp, $03cb                                  ; $6202: $31 $cb $03
    nop                                           ; $6205: $00
    sla e                                         ; $6206: $cb $23
    adc e                                         ; $6208: $8b
    ld h, e                                       ; $6209: $63
    sub a                                         ; $620a: $97

Call_0d5_620b:
    ld b, a                                       ; $620b: $47
    sub a                                         ; $620c: $97
    ld b, a                                       ; $620d: $47
    nop                                           ; $620e: $00
    add sp, -$1e                                  ; $620f: $e8 $e2
    db $f4                                        ; $6211: $f4
    pop af                                        ; $6212: $f1
    db $f4                                        ; $6213: $f4
    ldh a, [$f4]                                  ; $6214: $f0 $f4
    ldh a, [rP1]                                  ; $6216: $f0 $00
    ld a, [$faf8]                                 ; $6218: $fa $f8 $fa
    ld hl, sp-$05                                 ; $621b: $f8 $fb
    ld hl, sp-$04                                 ; $621d: $f8 $fc
    db $fc                                        ; $621f: $fc
    jr nz, jr_0d5_6222                            ; $6220: $20 $00

jr_0d5_6222:
    ld h, h                                       ; $6222: $64
    ld [bc], a                                    ; $6223: $02
    nop                                           ; $6224: $00
    ld h, l                                       ; $6225: $65
    nop                                           ; $6226: $00
    dec l                                         ; $6227: $2d
    nop                                           ; $6228: $00
    dec a                                         ; $6229: $3d
    ld [$0000], sp                                ; $622a: $08 $00 $00
    rst $38                                       ; $622d: $ff
    nop                                           ; $622e: $00
    ld bc, $6100                                  ; $622f: $01 $00 $61
    nop                                           ; $6232: $00
    ld h, e                                       ; $6233: $63
    adc b                                         ; $6234: $88
    ld [bc], a                                    ; $6235: $02
    nop                                           ; $6236: $00
    ld [hl], a                                    ; $6237: $77
    nop                                           ; $6238: $00
    ccf                                           ; $6239: $3f
    db $10                                        ; $623a: $10
    jr jr_0d5_61d4                                ; $623b: $18 $97

    ld b, a                                       ; $623d: $47
    cpl                                           ; $623e: $2f
    nop                                           ; $623f: $00
    rst $08                                       ; $6240: $cf
    cpl                                           ; $6241: $2f
    adc a                                         ; $6242: $8f
    cpl                                           ; $6243: $2f
    rrca                                          ; $6244: $0f
    ld e, a                                       ; $6245: $5f
    rra                                           ; $6246: $1f
    ld e, a                                       ; $6247: $5f
    nop                                           ; $6248: $00
    rra                                           ; $6249: $1f
    rst $18                                       ; $624a: $df
    rra                                           ; $624b: $1f
    ccf                                           ; $624c: $3f
    ccf                                           ; $624d: $3f
    nop                                           ; $624e: $00
    ld bc, $00f7                                  ; $624f: $01 $f7 $00
    ld b, b                                       ; $6252: $40
    rst $38                                       ; $6253: $ff
    ld bc, $fc00                                  ; $6254: $01 $00 $fc
    db $fc                                        ; $6257: $fc
    ei                                            ; $6258: $fb
    ld hl, sp-$07                                 ; $6259: $f8 $f9
    ld a, [$e000]                                 ; $625b: $fa $00 $e0
    ldh [$d8], a                                  ; $625e: $e0 $d8
    ret nz                                        ; $6260: $c0

    ret z                                         ; $6261: $c8

    jp nc, $f2f2                                  ; $6262: $d2 $f2 $f2

    nop                                           ; $6265: $00
    add sp, -$1c                                  ; $6266: $e8 $e4
    ret nc                                        ; $6268: $d0

    add $44                                       ; $6269: $c6 $44
    ld e, d                                       ; $626b: $5a
    ld c, b                                       ; $626c: $48
    ld d, l                                       ; $626d: $55
    nop                                           ; $626e: $00
    nop                                           ; $626f: $00
    jr jr_0d5_62b2                                ; $6270: $18 $40

    xor b                                         ; $6272: $a8
    db $10                                        ; $6273: $10
    ld hl, $0000                                  ; $6274: $21 $00 $00
    nop                                           ; $6277: $00
    ld b, [hl]                                    ; $6278: $46
    add hl, hl                                    ; $6279: $29
    jr nz, @-$2a                                  ; $627a: $20 $d4

    ld [de], a                                    ; $627c: $12
    push bc                                       ; $627d: $c5
    nop                                           ; $627e: $00
    dec c                                         ; $627f: $0d
    nop                                           ; $6280: $00
    nop                                           ; $6281: $00
    jr nc, jr_0d5_62f4                            ; $6282: $30 $70

    adc b                                         ; $6284: $88
    jr jr_0d5_628c                                ; $6285: $18 $05

    sbc a                                         ; $6287: $9f
    sbc a                                         ; $6288: $9f
    nop                                           ; $6289: $00
    ld c, a                                       ; $628a: $4f
    cpl                                           ; $628b: $2f

jr_0d5_628c:
    xor a                                         ; $628c: $af
    ld c, a                                       ; $628d: $4f
    rra                                           ; $628e: $1f
    sbc a                                         ; $628f: $9f
    ccf                                           ; $6290: $3f
    ccf                                           ; $6291: $3f
    ld b, b                                       ; $6292: $40
    ld a, a                                       ; $6293: $7f
    ld bc, $9f00                                  ; $6294: $01 $00 $9f
    rra                                           ; $6297: $1f
    db $e3                                        ; $6298: $e3
    ldh [$e0], a                                  ; $6299: $e0 $e0
    push hl                                       ; $629b: $e5
    nop                                           ; $629c: $00
    ret nz                                        ; $629d: $c0

    jp $80a0                                      ; $629e: $c3 $a0 $80


    add b                                         ; $62a1: $80
    adc [hl]                                      ; $62a2: $8e
    ld l, d                                       ; $62a3: $6a
    dec b                                         ; $62a4: $05
    nop                                           ; $62a5: $00
    dec h                                         ; $62a6: $25
    ld c, d                                       ; $62a7: $4a
    add b                                         ; $62a8: $80
    adc d                                         ; $62a9: $8a
    add hl, bc                                    ; $62aa: $09
    sub d                                         ; $62ab: $92
    ld b, b                                       ; $62ac: $40
    adc d                                         ; $62ad: $8a
    nop                                           ; $62ae: $00
    jr nz, jr_0d5_62f1                            ; $62af: $20 $40

    nop                                           ; $62b1: $00

jr_0d5_62b2:
    or b                                          ; $62b2: $b0
    ld [$8010], sp                                ; $62b3: $08 $10 $80
    ld c, h                                       ; $62b6: $4c
    nop                                           ; $62b7: $00
    nop                                           ; $62b8: $00
    ld a, [c]                                     ; $62b9: $f2
    jr nz, jr_0d5_630c                            ; $62ba: $20 $50

    add b                                         ; $62bc: $80
    add hl, hl                                    ; $62bd: $29
    jp nc, Jump_000_0001                          ; $62be: $d2 $01 $00

    ld sp, hl                                     ; $62c1: $f9
    ld [bc], a                                    ; $62c2: $02
    ld b, b                                       ; $62c3: $40
    adc d                                         ; $62c4: $8a
    ld sp, $8246                                  ; $62c5: $31 $46 $82
    dec b                                         ; $62c8: $05
    nop                                           ; $62c9: $00
    add e                                         ; $62ca: $83
    ld c, b                                       ; $62cb: $48
    add hl, bc                                    ; $62cc: $09
    inc b                                         ; $62cd: $04
    cpl                                           ; $62ce: $2f
    adc a                                         ; $62cf: $8f
    rla                                           ; $62d0: $17
    rlca                                          ; $62d1: $07
    nop                                           ; $62d2: $00
    adc e                                         ; $62d3: $8b
    inc bc                                        ; $62d4: $03
    ld b, l                                       ; $62d5: $45
    add c                                         ; $62d6: $81
    ld a, [bc]                                    ; $62d7: $0a
    ld b, b                                       ; $62d8: $40
    sbc d                                         ; $62d9: $9a
    nop                                           ; $62da: $00
    nop                                           ; $62db: $00
    ld c, d                                       ; $62dc: $4a
    sub b                                         ; $62dd: $90
    add d                                         ; $62de: $82
    ld c, b                                       ; $62df: $48
    add b                                         ; $62e0: $80
    add h                                         ; $62e1: $84
    and b                                         ; $62e2: $a0
    add c                                         ; $62e3: $81
    nop                                           ; $62e4: $00
    and b                                         ; $62e5: $a0
    add e                                         ; $62e6: $83
    pop de                                        ; $62e7: $d1
    jp nz, $c0d1                                  ; $62e8: $c2 $d1 $c0

    ret nc                                        ; $62eb: $d0

    pop bc                                        ; $62ec: $c1
    nop                                           ; $62ed: $00
    ldh [$e1], a                                  ; $62ee: $e0 $e1
    db $ec                                        ; $62f0: $ec

jr_0d5_62f1:
    pop hl                                        ; $62f1: $e1
    ld b, c                                       ; $62f2: $41
    sub d                                         ; $62f3: $92

jr_0d5_62f4:
    add e                                         ; $62f4: $83
    inc h                                         ; $62f5: $24
    nop                                           ; $62f6: $00
    ld bc, $0146                          ; $62f7: $01 $46 $01
    xor h                                         ; $62fa: $ac
    ld bc, $01ca                                  ; $62fb: $01 $ca $01
    add d                                         ; $62fe: $82
    nop                                           ; $62ff: $00
    ld bc, $014a                  ; $6300: $01 $4a $01
    nop                                           ; $6303: $00
    inc b                                         ; $6304: $04
    sub d                                         ; $6305: $92
    add d                                         ; $6306: $82
    ld c, l                                       ; $6307: $4d
    nop                                           ; $6308: $00
    pop bc                                        ; $6309: $c1
    ld [bc], a                                    ; $630a: $02
    ret nz                                        ; $630b: $c0

jr_0d5_630c:
    ld bc, $4482                                  ; $630c: $01 $82 $44
    adc b                                         ; $630f: $88
    ld d, c                                       ; $6310: $51
    nop                                           ; $6311: $00
    add h                                         ; $6312: $84
    ld c, d                                       ; $6313: $4a
    sub d                                         ; $6314: $92
    dec b                                         ; $6315: $05
    push bc                                       ; $6316: $c5
    ld hl, $1125                                  ; $6317: $21 $25 $11
    nop                                           ; $631a: $00
    sub l                                         ; $631b: $95
    ld b, c                                       ; $631c: $41
    sla e                                         ; $631d: $cb $23
    dec bc                                        ; $631f: $0b
    ld b, e                                       ; $6320: $43
    dec bc                                        ; $6321: $0b
    inc bc                                        ; $6322: $03
    nop                                           ; $6323: $00
    ld h, a                                       ; $6324: $67
    rlca                                          ; $6325: $07
    ld b, a                                       ; $6326: $47
    daa                                           ; $6327: $27
    db $e4                                        ; $6328: $e4
    jp hl                                         ; $6329: $e9


    ldh a, [$f0]                                  ; $632a: $f0 $f0
    nop                                           ; $632c: $00
    db $f4                                        ; $632d: $f4
    ldh a, [$f5]                                  ; $632e: $f0 $f5
    ldh a, [$f8]                                  ; $6330: $f0 $f8
    ld sp, hl                                     ; $6332: $f9
    ld hl, sp-$08                                 ; $6333: $f8 $f8
    nop                                           ; $6335: $00
    ei                                            ; $6336: $fb
    ld hl, sp-$04                                 ; $6337: $f8 $fc
    db $fc                                        ; $6339: $fc
    nop                                           ; $633a: $00
    inc bc                                        ; $633b: $03
    nop                                           ; $633c: $00
    ld bc, $0000                                  ; $633d: $01 $00 $00
    inc bc                                        ; $6340: $03
    add b                                         ; $6341: $80
    ld bc, $018c                                  ; $6342: $01 $8c $01
    nop                                           ; $6345: $00
    nop                                           ; $6346: $00
    nop                                           ; $6347: $00
    rst $38                                       ; $6348: $ff
    nop                                           ; $6349: $00
    nop                                           ; $634a: $00
    nop                                           ; $634b: $00
    adc c                                         ; $634c: $89
    ld [de], a                                    ; $634d: $12
    add h                                         ; $634e: $84
    jr z, jr_0d5_6353                             ; $634f: $28 $02

    add c                                         ; $6351: $81
    inc d                                         ; $6352: $14

jr_0d5_6353:
    add c                                         ; $6353: $81
    jr nz, jr_0d5_635e                            ; $6354: $20 $08

    inc b                                         ; $6356: $04
    db $10                                        ; $6357: $10
    jr jr_0d5_6369                                ; $6358: $18 $0f

    nop                                           ; $635a: $00
    rrca                                          ; $635b: $0f
    cpl                                           ; $635c: $2f
    rrca                                          ; $635d: $0f

jr_0d5_635e:
    xor a                                         ; $635e: $af
    rrca                                          ; $635f: $0f
    cpl                                           ; $6360: $2f
    adc a                                         ; $6361: $8f
    ld e, a                                       ; $6362: $5f
    nop                                           ; $6363: $00
    rra                                           ; $6364: $1f
    ld e, a                                       ; $6365: $5f
    rra                                           ; $6366: $1f
    rst $18                                       ; $6367: $df
    rra                                           ; $6368: $1f

jr_0d5_6369:
    ccf                                           ; $6369: $3f
    ccf                                           ; $636a: $3f
    nop                                           ; $636b: $00
    ld bc, $00f6                                  ; $636c: $01 $f6 $00
    nop                                           ; $636f: $00
    rst $38                                       ; $6370: $ff

jr_0d5_6371:
    rst $38                                       ; $6371: $ff
    rst $38                                       ; $6372: $ff
    cp $fe                                        ; $6373: $fe $fe
    rst $30                                       ; $6375: $f7
    db $fc                                        ; $6376: $fc
    ld a, [$fa00]                                 ; $6377: $fa $00 $fa
    ld sp, hl                                     ; $637a: $f9
    ld sp, hl                                     ; $637b: $f9
    db $e4                                        ; $637c: $e4
    db $f4                                        ; $637d: $f4
    ld a, [c]                                     ; $637e: $f2
    ei                                            ; $637f: $fb
    ld hl, sp+$00                                 ; $6380: $f8 $00
    cp $fe                                        ; $6382: $fe $fe
    db $fd                                        ; $6384: $fd
    db $fc                                        ; $6385: $fc
    or d                                          ; $6386: $b2
    ld d, b                                       ; $6387: $50
    ld b, b                                       ; $6388: $40
    and b                                         ; $6389: $a0
    nop                                           ; $638a: $00
    cpl                                           ; $638b: $2f
    ld b, b                                       ; $638c: $40
    inc c                                         ; $638d: $0c
    and e                                         ; $638e: $a3
    adc b                                         ; $638f: $88
    ld b, [hl]                                    ; $6390: $46
    ld d, b                                       ; $6391: $50
    inc h                                         ; $6392: $24
    nop                                           ; $6393: $00
    ld a, a                                       ; $6394: $7f
    ld a, a                                       ; $6395: $7f
    cp a                                          ; $6396: $bf
    ccf                                           ; $6397: $3f
    ld c, a                                       ; $6398: $4f
    rrca                                          ; $6399: $0f
    scf                                           ; $639a: $37
    rlca                                          ; $639b: $07
    nop                                           ; $639c: $00
    add hl, bc                                    ; $639d: $09
    ld b, c                                       ; $639e: $41
    nop                                           ; $639f: $00
    jr nc, @+$07                                  ; $63a0: $30 $05

    ld d, b                                       ; $63a2: $50
    ld c, b                                       ; $63a3: $48
    inc b                                         ; $63a4: $04
    add b                                         ; $63a5: $80
    jr nc, jr_0d5_63a8                            ; $63a6: $30 $00

jr_0d5_63a8:
    rst $38                                       ; $63a8: $ff
    rrca                                          ; $63a9: $0f
    rrca                                          ; $63aa: $0f
    ld [hl], a                                    ; $63ab: $77
    rlca                                          ; $63ac: $07
    inc bc                                        ; $63ad: $03
    dec de                                        ; $63ae: $1b
    nop                                           ; $63af: $00
    and e                                         ; $63b0: $a3
    adc e                                         ; $63b1: $8b
    ld hl, $a115                                  ; $63b2: $21 $15 $a1
    dec d                                         ; $63b5: $15
    ldh a, [$f0]                                  ; $63b6: $f0 $f0
    nop                                           ; $63b8: $00
    add sp, -$1d                                  ; $63b9: $e8 $e3
    rst $10                                       ; $63bb: $d7
    ret nz                                        ; $63bc: $c0

    xor b                                         ; $63bd: $a8
    add h                                         ; $63be: $84
    ld d, b                                       ; $63bf: $50
    ld [bc], a                                    ; $63c0: $02
    nop                                           ; $63c1: $00
    ld b, b                                       ; $63c2: $40
    inc c                                         ; $63c3: $0c
    ld b, b                                       ; $63c4: $40
    dec c                                         ; $63c5: $0d
    ld b, c                                       ; $63c6: $41
    jr jr_0d5_6371                                ; $63c7: $18 $a8

    stop                                          ; $63c9: $10 $00
    ld d, b                                       ; $63cb: $50
    ld [$00ef], sp                                ; $63cc: $08 $ef $00
    nop                                           ; $63cf: $00
    inc c                                         ; $63d0: $0c
    ld [de], a                                    ; $63d1: $12
    ld b, b                                       ; $63d2: $40
    nop                                           ; $63d3: $00
    ld b, b                                       ; $63d4: $40
    sbc [hl]                                      ; $63d5: $9e
    sbc $00                                       ; $63d6: $de $00
    ld [de], a                                    ; $63d8: $12
    ret nz                                        ; $63d9: $c0

    ld c, b                                       ; $63da: $48
    sub e                                         ; $63db: $93
    nop                                           ; $63dc: $00
    jr nc, jr_0d5_63e6                            ; $63dd: $30 $07

    ret nz                                        ; $63df: $c0

    cpl                                           ; $63e0: $2f
    nop                                           ; $63e1: $00
    rra                                           ; $63e2: $1f
    nop                                           ; $63e3: $00
    sbc [hl]                                      ; $63e4: $9e
    nop                                           ; $63e5: $00

jr_0d5_63e6:
    add b                                         ; $63e6: $80
    ld c, d                                       ; $63e7: $4a
    ret nz                                        ; $63e8: $c0

    inc h                                         ; $63e9: $24
    ld h, b                                       ; $63ea: $60
    add d                                         ; $63eb: $82
    ld bc, $000d                                  ; $63ec: $01 $0d $00
    ld de, $21a5                                  ; $63ef: $11 $a5 $21

jr_0d5_63f2:
    ld d, l                                       ; $63f2: $55
    ld b, c                                       ; $63f3: $41
    ld hl, $8840                                  ; $63f4: $21 $40 $88
    nop                                           ; $63f7: $00
    add d                                         ; $63f8: $82
    ld e, b                                       ; $63f9: $58
    add d                                         ; $63fa: $82
    ld d, b                                       ; $63fb: $50
    ld [bc], a                                    ; $63fc: $02
    ret nc                                        ; $63fd: $d0

    and d                                         ; $63fe: $a2
    adc c                                         ; $63ff: $89
    nop                                           ; $6400: $00
    and b                                         ; $6401: $a0
    add d                                         ; $6402: $82
    and b                                         ; $6403: $a0
    add b                                         ; $6404: $80
    pop de                                        ; $6405: $d1
    call nz, $c0d5                                ; $6406: $c4 $d5 $c0
    nop                                           ; $6409: $00
    push de                                       ; $640a: $d5
    ret nz                                        ; $640b: $c0

    jp hl                                         ; $640c: $e9


    ldh [$e8], a                                  ; $640d: $e0 $e8
    ld [c], a                                     ; $640f: $e2
    inc c                                         ; $6410: $0c
    add b                                         ; $6411: $80
    nop                                           ; $6412: $00
    ld h, c                                       ; $6413: $61
    add b                                         ; $6414: $80
    ret nz                                        ; $6415: $c0

    dec l                                         ; $6416: $2d
    adc h                                         ; $6417: $8c
    ld b, b                                       ; $6418: $40
    ld [de], a                                    ; $6419: $12
    xor l                                         ; $641a: $ad
    nop                                           ; $641b: $00
    inc c                                         ; $641c: $0c
    ld h, c                                       ; $641d: $61
    nop                                           ; $641e: $00
    xor l                                         ; $641f: $ad
    add b                                         ; $6420: $80
    ld d, e                                       ; $6421: $53
    jr nz, jr_0d5_6478                            ; $6422: $20 $54

    nop                                           ; $6424: $00
    add b                                         ; $6425: $80
    ld d, d                                       ; $6426: $52
    ret nz                                        ; $6427: $c0

    jr nz, @+$62                                  ; $6428: $20 $60

    sub d                                         ; $642a: $92
    jr z, jr_0d5_646e                             ; $642b: $28 $41

    nop                                           ; $642d: $00
    inc l                                         ; $642e: $2c
    add b                                         ; $642f: $80
    ld a, [bc]                                    ; $6430: $0a
    ld h, h                                       ; $6431: $64
    ld b, h                                       ; $6432: $44
    add hl, hl                                    ; $6433: $29
    dec b                                         ; $6434: $05
    ld b, c                                       ; $6435: $41
    nop                                           ; $6436: $00
    dec b                                         ; $6437: $05
    ld bc, $5185                                  ; $6438: $01 $85 $51
    adc e                                         ; $643b: $8b
    inc hl                                        ; $643c: $23
    dec bc                                        ; $643d: $0b

jr_0d5_643e:
    ld h, e                                       ; $643e: $63
    nop                                           ; $643f: $00
    dec bc                                        ; $6440: $0b
    and e                                         ; $6441: $a3
    sub a                                         ; $6442: $97
    rlca                                          ; $6443: $07
    rla                                           ; $6444: $17
    ld b, a                                       ; $6445: $47
    add sp, -$1e                                  ; $6446: $e8 $e2
    jr nz, jr_0d5_643e                            ; $6448: $20 $f4

    ldh a, [rSC]                                  ; $644a: $f0 $02
    ld [$f8fa], sp                                ; $644c: $08 $fa $f8
    ld a, [$fbf8]                                 ; $644f: $fa $f8 $fb
    nop                                           ; $6452: $00
    ld hl, sp-$04                                 ; $6453: $f8 $fc
    db $fc                                        ; $6455: $fc
    ld c, h                                       ; $6456: $4c
    sub b                                         ; $6457: $90
    ld b, b                                       ; $6458: $40
    sub h                                         ; $6459: $94
    ld b, b                                       ; $645a: $40
    nop                                           ; $645b: $00
    sbc [hl]                                      ; $645c: $9e
    ld c, h                                       ; $645d: $4c
    sub d                                         ; $645e: $92
    ld b, b                                       ; $645f: $40
    sub [hl]                                      ; $6460: $96
    nop                                           ; $6461: $00
    nop                                           ; $6462: $00
    rst $38                                       ; $6463: $ff
    nop                                           ; $6464: $00
    nop                                           ; $6465: $00
    nop                                           ; $6466: $00
    nop                                           ; $6467: $00
    adc c                                         ; $6468: $89
    ld d, h                                       ; $6469: $54
    add b                                         ; $646a: $80
    ld e, [hl]                                    ; $646b: $5e
    add c                                         ; $646c: $81
    inc b                                         ; $646d: $04

jr_0d5_646e:
    inc e                                         ; $646e: $1c
    add d                                         ; $646f: $82
    jr jr_0d5_63f2                                ; $6470: $18 $80

    jr jr_0d5_6484                                ; $6472: $18 $10

    jr jr_0d5_648d                                ; $6474: $18 $17

    ld b, a                                       ; $6476: $47
    nop                                           ; $6477: $00

jr_0d5_6478:
    cpl                                           ; $6478: $2f
    adc a                                         ; $6479: $8f
    cpl                                           ; $647a: $2f
    rrca                                          ; $647b: $0f
    cpl                                           ; $647c: $2f
    adc a                                         ; $647d: $8f
    ld e, a                                       ; $647e: $5f
    rra                                           ; $647f: $1f
    nop                                           ; $6480: $00
    ld e, a                                       ; $6481: $5f
    rra                                           ; $6482: $1f
    rst $18                                       ; $6483: $df

jr_0d5_6484:
    rra                                           ; $6484: $1f
    ccf                                           ; $6485: $3f
    ccf                                           ; $6486: $3f
    nop                                           ; $6487: $00
    ld bc, $00f4                                  ; $6488: $01 $f4 $00
    ld b, b                                       ; $648b: $40
    rst $38                                       ; $648c: $ff

jr_0d5_648d:
    ld bc, $fc00                                  ; $648d: $01 $00 $fc
    db $fc                                        ; $6490: $fc
    ld sp, hl                                     ; $6491: $f9
    ld hl, sp-$0e                                 ; $6492: $f8 $f2
    ldh a, [rP1]                                  ; $6494: $f0 $00
    db $ec                                        ; $6496: $ec
    db $e3                                        ; $6497: $e3
    ldh [$e1], a                                  ; $6498: $e0 $e1
    db $f4                                        ; $649a: $f4
    ld a, [c]                                     ; $649b: $f2
    cp $fe                                        ; $649c: $fe $fe
    nop                                           ; $649e: $00
    db $fd                                        ; $649f: $fd
    db $fc                                        ; $64a0: $fc
    ld a, [c]                                     ; $64a1: $f2
    ldh a, [$6d]                                  ; $64a2: $f0 $6d
    ld h, b                                       ; $64a4: $60
    sub d                                         ; $64a5: $92
    ld bc, $4500                                  ; $64a6: $01 $00 $45
    adc d                                         ; $64a9: $8a
    ld [hl+], a                                   ; $64aa: $22
    push bc                                       ; $64ab: $c5
    jr nz, jr_0d5_646e                            ; $64ac: $20 $c0

    ld a, a                                       ; $64ae: $7f
    ld a, a                                       ; $64af: $7f
    nop                                           ; $64b0: $00
    cp a                                          ; $64b1: $bf
    ccf                                           ; $64b2: $3f
    ld c, a                                       ; $64b3: $4f
    rrca                                          ; $64b4: $0f
    inc [hl]                                      ; $64b5: $34
    add h                                         ; $64b6: $84
    add c                                         ; $64b7: $81
    ld b, b                                       ; $64b8: $40
    ld [bc], a                                    ; $64b9: $02
    ld b, d                                       ; $64ba: $42
    and c                                         ; $64bb: $a1
    sub h                                         ; $64bc: $94
    ld [bc], a                                    ; $64bd: $02
    jr nz, jr_0d5_64d7                            ; $64be: $20 $17

    jr nc, jr_0d5_64ca                            ; $64c0: $30 $08

    ccf                                           ; $64c2: $3f
    db $10                                        ; $64c3: $10
    ccf                                           ; $64c4: $3f
    cp a                                          ; $64c5: $bf
    ccf                                           ; $64c6: $3f
    ld bc, $bf00                                  ; $64c7: $01 $00 $bf

jr_0d5_64ca:
    ld e, a                                       ; $64ca: $5f
    sbc a                                         ; $64cb: $9f
    cpl                                           ; $64cc: $2f
    nop                                           ; $64cd: $00
    adc a                                         ; $64ce: $8f
    add sp, -$1a                                  ; $64cf: $e8 $e6
    ldh [$e4], a                                  ; $64d1: $e0 $e4
    pop bc                                        ; $64d3: $c1
    call z, Call_000_00a0                         ; $64d4: $cc $a0 $00

jr_0d5_64d7:
    adc c                                         ; $64d7: $89
    ld b, c                                       ; $64d8: $41
    ld [bc], a                                    ; $64d9: $02
    ld c, d                                       ; $64da: $4a
    inc b                                         ; $64db: $04
    ld d, h                                       ; $64dc: $54
    ld a, [bc]                                    ; $64dd: $0a
    ld c, b                                       ; $64de: $48
    nop                                           ; $64df: $00

jr_0d5_64e0:
    db $10                                        ; $64e0: $10
    rla                                           ; $64e1: $17
    ld h, b                                       ; $64e2: $60
    dec bc                                        ; $64e3: $0b
    jr nc, jr_0d5_64e8                            ; $64e4: $30 $02

    ld c, b                                       ; $64e6: $48
    ld [hl+], a                                   ; $64e7: $22

jr_0d5_64e8:
    nop                                           ; $64e8: $00
    ld c, l                                       ; $64e9: $4d
    ld [de], a                                    ; $64ea: $12
    dec b                                         ; $64eb: $05
    ld [de], a                                    ; $64ec: $12
    ld b, b                                       ; $64ed: $40
    ld [bc], a                                    ; $64ee: $02
    ldh [rTAC], a                                 ; $64ef: $e0 $07
    nop                                           ; $64f1: $00
    ret nc                                        ; $64f2: $d0

    add b                                         ; $64f3: $80
    ld a, $40                                     ; $64f4: $3e $40
    jr nc, jr_0d5_64f8                            ; $64f6: $30 $00

jr_0d5_64f8:
    db $e4                                        ; $64f8: $e4
    add hl, de                                    ; $64f9: $19
    nop                                           ; $64fa: $00
    add h                                         ; $64fb: $84
    ld c, b                                       ; $64fc: $48
    ld bc, $0041                                  ; $64fd: $01 $41 $00
    nop                                           ; $6500: $00
    inc a                                         ; $6501: $3c
    nop                                           ; $6502: $00
    nop                                           ; $6503: $00
    ld l, [hl]                                    ; $6504: $6e
    rrca                                          ; $6505: $0f
    rst $08                                       ; $6506: $cf
    rla                                           ; $6507: $17
    rst $00                                       ; $6508: $c7
    dec bc                                        ; $6509: $0b
    ld h, e                                       ; $650a: $63
    dec b                                         ; $650b: $05
    nop                                           ; $650c: $00
    ld bc, $2882                                  ; $650d: $01 $82 $28
    ld a, [bc]                                    ; $6510: $0a
    add b                                         ; $6511: $80
    ld b, d                                       ; $6512: $42
    jr z, jr_0d5_655f                             ; $6513: $28 $4a

    nop                                           ; $6515: $00
    sub b                                         ; $6516: $90
    and b                                         ; $6517: $a0
    add c                                         ; $6518: $81
    xor b                                         ; $6519: $a8
    add h                                         ; $651a: $84
    sub b                                         ; $651b: $90
    adc c                                         ; $651c: $89
    and h                                         ; $651d: $a4
    nop                                           ; $651e: $00
    sub d                                         ; $651f: $92
    ret z                                         ; $6520: $c8

    call nz, $cad1                                ; $6521: $c4 $d1 $ca

Call_0d5_6524:
    jp nz, $e4d5                                  ; $6524: $c2 $d5 $e4

    nop                                           ; $6527: $00
    ld [$8802], a                                 ; $6528: $ea $02 $88
    nop                                           ; $652b: $00
    rlca                                          ; $652c: $07
    sbc a                                         ; $652d: $9f
    jr nz, jr_0d5_64e0                            ; $652e: $20 $b0

    nop                                           ; $6530: $00
    nop                                           ; $6531: $00
    nop                                           ; $6532: $00
    adc l                                         ; $6533: $8d
    db $10                                        ; $6534: $10
    rrca                                          ; $6535: $0f
    ld [$0707], sp                                ; $6536: $08 $07 $07
    nop                                           ; $6539: $00
    jr nc, jr_0d5_653c                            ; $653a: $30 $00

jr_0d5_653c:
    adc c                                         ; $653c: $89
    ld bc, $c102                                  ; $653d: $01 $02 $c1
    ld a, [hl+]                                   ; $6540: $2a
    ld h, c                                       ; $6541: $61
    nop                                           ; $6542: $00
    ld a, [bc]                                    ; $6543: $0a
    inc bc                                        ; $6544: $03
    sub h                                         ; $6545: $94
    ld b, h                                       ; $6546: $44
    sub d                                         ; $6547: $92
    add c                                         ; $6548: $81
    ld [$0000], sp                                ; $6549: $08 $00 $00
    ld c, d                                       ; $654c: $4a
    sub l                                         ; $654d: $95
    ld bc, $9105                                  ; $654e: $01 $05 $91
    dec d                                         ; $6551: $15
    ld hl, $000b                                  ; $6552: $21 $0b $00
    add e                                         ; $6555: $83
    add e                                         ; $6556: $83
    ld b, e                                       ; $6557: $43
    inc hl                                        ; $6558: $23
    ld d, e                                       ; $6559: $53
    sbc c                                         ; $655a: $99
    dec h                                         ; $655b: $25
    ld b, e                                       ; $655c: $43
    nop                                           ; $655d: $00
    add e                                         ; $655e: $83

jr_0d5_655f:
    add sp, -$1b                                  ; $655f: $e8 $e5
    pop hl                                        ; $6561: $e1
    ld [$f5f2], a                                 ; $6562: $ea $f2 $f5
    db $f4                                        ; $6565: $f4
    nop                                           ; $6566: $00
    ld a, [c]                                     ; $6567: $f2
    ld hl, sp-$08                                 ; $6568: $f8 $f8
    ld a, [$fbf8]                                 ; $656a: $fa $f8 $fb
    ld hl, sp-$04                                 ; $656d: $f8 $fc
    nop                                           ; $656f: $00
    db $fc                                        ; $6570: $fc
    sub b                                         ; $6571: $90
    ld [$ae00], sp                                ; $6572: $08 $00 $ae
    ld a, [bc]                                    ; $6575: $0a
    inc d                                         ; $6576: $14
    ld de, $2400                                  ; $6577: $11 $00 $24
    nop                                           ; $657a: $00
    dec l                                         ; $657b: $2d
    nop                                           ; $657c: $00
    nop                                           ; $657d: $00
    rst $38                                       ; $657e: $ff
    nop                                           ; $657f: $00
    nop                                           ; $6580: $00
    nop                                           ; $6581: $00
    nop                                           ; $6582: $00
    inc bc                                        ; $6583: $03
    call nz, $8100                                ; $6584: $c4 $00 $81
    ld b, $c8                                     ; $6587: $06 $c8
    ld bc, $a210                                  ; $6589: $01 $10 $a2
    add b                                         ; $658c: $80
    jr nz, jr_0d5_659f                            ; $658d: $20 $10

    jr jr_0d5_6598                                ; $658f: $18 $07

    daa                                           ; $6591: $27
    adc a                                         ; $6592: $8f
    ld c, a                                       ; $6593: $4f
    nop                                           ; $6594: $00
    cpl                                           ; $6595: $2f
    adc a                                         ; $6596: $8f
    cpl                                           ; $6597: $2f

jr_0d5_6598:
    rrca                                          ; $6598: $0f
    ld e, a                                       ; $6599: $5f
    rra                                           ; $659a: $1f
    ld e, a                                       ; $659b: $5f
    rra                                           ; $659c: $1f
    nop                                           ; $659d: $00
    rst $18                                       ; $659e: $df

jr_0d5_659f:
    rra                                           ; $659f: $1f
    ccf                                           ; $65a0: $3f
    ccf                                           ; $65a1: $3f
    nop                                           ; $65a2: $00
    ld bc, $00e3                                  ; $65a3: $01 $e3 $00
    ld d, b                                       ; $65a6: $50
    rst $38                                       ; $65a7: $ff
    ld bc, $fe20                                  ; $65a8: $01 $20 $fe
    ld bc, $f810                                  ; $65ab: $01 $10 $f8
    ld hl, sp-$3a                                 ; $65ae: $f8 $c6
    sub $00                                       ; $65b0: $d6 $00
    pop de                                        ; $65b2: $d1
    ret nz                                        ; $65b3: $c0

    sbc b                                         ; $65b4: $98
    and b                                         ; $65b5: $a0
    or b                                          ; $65b6: $b0
    adc h                                         ; $65b7: $8c
    nop                                           ; $65b8: $00
    ld b, $00                                     ; $65b9: $06 $00
    or b                                          ; $65bb: $b0
    inc bc                                        ; $65bc: $03
    adc b                                         ; $65bd: $88
    ld [de], a                                    ; $65be: $12
    inc l                                         ; $65bf: $2c
    ld de, $7f7f                                  ; $65c0: $11 $7f $7f
    nop                                           ; $65c3: $00
    cp a                                          ; $65c4: $bf
    ccf                                           ; $65c5: $3f
    ld c, a                                       ; $65c6: $4f
    rrca                                          ; $65c7: $0f
    scf                                           ; $65c8: $37
    add a                                         ; $65c9: $87
    dec bc                                        ; $65ca: $0b
    inc bc                                        ; $65cb: $03
    inc bc                                        ; $65cc: $03
    ld d, h                                       ; $65cd: $54
    nop                                           ; $65ce: $00
    rl b                                          ; $65cf: $cb $10
    sub h                                         ; $65d1: $94
    jr z, jr_0d5_6604                             ; $65d2: $28 $30

    jr z, jr_0d5_660e                             ; $65d4: $28 $38

    ld [$7f00], sp                                ; $65d6: $08 $00 $7f
    ld a, a                                       ; $65d9: $7f
    sbc a                                         ; $65da: $9f
    rra                                           ; $65db: $1f
    or $f0                                        ; $65dc: $f6 $f0
    add sp, -$20                                  ; $65de: $e8 $e0
    nop                                           ; $65e0: $00
    db $d3                                        ; $65e1: $d3
    ret nz                                        ; $65e2: $c0

    and h                                         ; $65e3: $a4
    add b                                         ; $65e4: $80
    ld c, b                                       ; $65e5: $48
    nop                                           ; $65e6: $00
    ld b, d                                       ; $65e7: $42
    add hl, bc                                    ; $65e8: $09
    ld b, b                                       ; $65e9: $40
    ld e, l                                       ; $65ea: $5d
    inc b                                         ; $65eb: $04
    nop                                           ; $65ec: $00
    dec h                                         ; $65ed: $25
    nop                                           ; $65ee: $00
    ret nz                                        ; $65ef: $c0

    nop                                           ; $65f0: $00
    ld de, $0024                                  ; $65f1: $11 $24 $00
    ld e, $00                                     ; $65f4: $1e $00
    dec c                                         ; $65f6: $0d
    jr nz, jr_0d5_6642                            ; $65f7: $20 $49

    nop                                           ; $65f9: $00
    rra                                           ; $65fa: $1f
    and b                                         ; $65fb: $a0
    nop                                           ; $65fc: $00
    adc d                                         ; $65fd: $8a
    ld d, c                                       ; $65fe: $51
    ld [bc], a                                    ; $65ff: $02
    add c                                         ; $6600: $81
    inc a                                         ; $6601: $3c
    nop                                           ; $6602: $00
    inc bc                                        ; $6603: $03

jr_0d5_6604:
    ld b, b                                       ; $6604: $40
    nop                                           ; $6605: $00
    jr nz, @-$7e                                  ; $6606: $20 $80

    ld b, b                                       ; $6608: $40
    nop                                           ; $6609: $00
    dec b                                         ; $660a: $05
    xor d                                         ; $660b: $aa
    ld b, d                                       ; $660c: $42
    sub l                                         ; $660d: $95

jr_0d5_660e:
    nop                                           ; $660e: $00
    ld bc, $6f20                                  ; $660f: $01 $20 $6f
    rrca                                          ; $6612: $0f
    rla                                           ; $6613: $17
    add a                                         ; $6614: $87
    dec hl                                        ; $6615: $2b
    inc bc                                        ; $6616: $03
    nop                                           ; $6617: $00

Jump_0d5_6618:
    push de                                       ; $6618: $d5
    ld bc, $0022                                  ; $6619: $01 $22 $00
    ld d, d                                       ; $661c: $52
    add b                                         ; $661d: $80
    add d                                         ; $661e: $82
    ld b, b                                       ; $661f: $40
    nop                                           ; $6620: $00
    ld [de], a                                    ; $6621: $12
    add b                                         ; $6622: $80
    and l                                         ; $6623: $a5
    add d                                         ; $6624: $82
    xor d                                         ; $6625: $aa
    add l                                         ; $6626: $85
    and h                                         ; $6627: $a4
    adc d                                         ; $6628: $8a
    nop                                           ; $6629: $00
    jp nc, $d4c4                                  ; $662a: $d2 $c4 $d4

    jp nz, $c4d2                                  ; $662d: $c2 $d2 $c4

    add sp, -$1e                                  ; $6630: $e8 $e2
    nop                                           ; $6632: $00

jr_0d5_6633:
    ld [$04e0], a                                 ; $6633: $ea $e0 $04
    ld a, [bc]                                    ; $6636: $0a
    ld bc, $0074                                  ; $6637: $01 $74 $00
    ld a, d                                       ; $663a: $7a
    nop                                           ; $663b: $00
    sub l                                         ; $663c: $95
    jr nz, @+$3d                                  ; $663d: $20 $3b

    nop                                           ; $663f: $00
    or c                                          ; $6640: $b1
    ld a, [bc]                                    ; $6641: $0a

jr_0d5_6642:
    nop                                           ; $6642: $00
    dec sp                                        ; $6643: $3b
    nop                                           ; $6644: $00
    nop                                           ; $6645: $00
    ld d, c                                       ; $6646: $51
    adc h                                         ; $6647: $8c
    ld hl, $1448                                  ; $6648: $21 $48 $14
    ld b, d                                       ; $664b: $42
    jr jr_0d5_664e                                ; $664c: $18 $00

jr_0d5_664e:
    inc b                                         ; $664e: $04
    add b                                         ; $664f: $80
    sbc b                                         ; $6650: $98
    ld b, l                                       ; $6651: $45
    add h                                         ; $6652: $84
    ld b, d                                       ; $6653: $42
    jr @-$3a                                      ; $6654: $18 $c4

    nop                                           ; $6656: $00
    ld bc, $a980                                  ; $6657: $01 $80 $a9
    ld de, $9101                                  ; $665a: $11 $01 $91
    add c                                         ; $665d: $81
    ld b, l                                       ; $665e: $45
    nop                                           ; $665f: $00
    ld b, e                                       ; $6660: $43
    xor e                                         ; $6661: $ab
    xor e                                         ; $6662: $ab
    ld b, e                                       ; $6663: $43
    ld c, e                                       ; $6664: $4b
    and e                                         ; $6665: $a3
    sub a                                         ; $6666: $97
    ld b, a                                       ; $6667: $47
    nop                                           ; $6668: $00
    ld d, a                                       ; $6669: $57
    add a                                         ; $666a: $87
    add sp, -$20                                  ; $666b: $e8 $e0
    push af                                       ; $666d: $f5
    ldh a, [$f4]                                  ; $666e: $f0 $f4
    ldh a, [rP1]                                  ; $6670: $f0 $00
    db $f4                                        ; $6672: $f4
    pop af                                        ; $6673: $f1
    ld a, [$faf8]                                 ; $6674: $fa $f8 $fa
    ld hl, sp-$05                                 ; $6677: $f8 $fb
    ld hl, sp+$00                                 ; $6679: $f8 $00
    db $fc                                        ; $667b: $fc
    db $fc                                        ; $667c: $fc
    inc b                                         ; $667d: $04
    ret z                                         ; $667e: $c8

    inc b                                         ; $667f: $04
    ld d, c                                       ; $6680: $51
    add h                                         ; $6681: $84
    ld de, $4400                                  ; $6682: $11 $00 $44
    ld de, $9104                                  ; $6685: $11 $04 $91
    nop                                           ; $6688: $00
    nop                                           ; $6689: $00
    rst $38                                       ; $668a: $ff
    nop                                           ; $668b: $00
    add b                                         ; $668c: $80
    ld bc, $0d00                                  ; $668d: $01 $00 $0d
    inc b                                         ; $6690: $04
    ld [$8802], sp                                ; $6691: $08 $02 $88
    ld hl, $208c                                  ; $6694: $21 $8c $20
    ld [de], a                                    ; $6697: $12
    add b                                         ; $6698: $80
    db $10                                        ; $6699: $10
    jr jr_0d5_6633                                ; $669a: $18 $97

    ld b, a                                       ; $669c: $47
    cpl                                           ; $669d: $2f
    adc a                                         ; $669e: $8f
    cpl                                           ; $669f: $2f
    nop                                           ; $66a0: $00
    rrca                                          ; $66a1: $0f
    cpl                                           ; $66a2: $2f
    rrca                                          ; $66a3: $0f
    ld e, a                                       ; $66a4: $5f
    rra                                           ; $66a5: $1f
    ld e, a                                       ; $66a6: $5f
    rra                                           ; $66a7: $1f
    rst $18                                       ; $66a8: $df
    nop                                           ; $66a9: $00
    rra                                           ; $66aa: $1f
    ccf                                           ; $66ab: $3f
    ccf                                           ; $66ac: $3f
    nop                                           ; $66ad: $00
    ld bc, $00fb                                  ; $66ae: $01 $fb $00
    nop                                           ; $66b1: $00
    rst $38                                       ; $66b2: $ff
    rst $38                                       ; $66b3: $ff
    ei                                            ; $66b4: $fb
    ei                                            ; $66b5: $fb
    pop af                                        ; $66b6: $f1
    push af                                       ; $66b7: $f5
    push af                                       ; $66b8: $f5
    pop af                                        ; $66b9: $f1
    nop                                           ; $66ba: $00
    push hl                                       ; $66bb: $e5
    pop hl                                        ; $66bc: $e1
    call nc, $d4c8                                ; $66bd: $d4 $c8 $d4
    ret nz                                        ; $66c0: $c0

    ret                                           ; $66c1: $c9


    call nc, $fe00                                ; $66c2: $d4 $00 $fe
    cp $fd                                        ; $66c5: $fe $fd
    db $fc                                        ; $66c7: $fc
    ld a, [c]                                     ; $66c8: $f2
    ldh a, [$ed]                                  ; $66c9: $f0 $ed
    ldh [rP1], a                                  ; $66cb: $e0 $00
    sub d                                         ; $66cd: $92
    add c                                         ; $66ce: $81
    ld h, h                                       ; $66cf: $64
    dec bc                                        ; $66d0: $0b
    ld [$9016], sp                                ; $66d1: $08 $16 $90
    dec l                                         ; $66d4: $2d
    nop                                           ; $66d5: $00
    ld a, h                                       ; $66d6: $7c
    ld a, h                                       ; $66d7: $7c
    or b                                          ; $66d8: $b0
    ld [hl-], a                                   ; $66d9: $32
    ld c, l                                       ; $66da: $4d
    nop                                           ; $66db: $00
    ld h, $89                                     ; $66dc: $26 $89
    nop                                           ; $66de: $00
    ld [bc], a                                    ; $66df: $02
    call nz, $6010                                ; $66e0: $c4 $10 $60
    ld [hl+], a                                   ; $66e3: $22
    ld b, b                                       ; $66e4: $40
    ld [$0061], sp                                ; $66e5: $08 $61 $00
    ld a, a                                       ; $66e8: $7f
    ld a, a                                       ; $66e9: $7f
    sbc a                                         ; $66ea: $9f
    rra                                           ; $66eb: $1f
    cpl                                           ; $66ec: $2f
    rst $08                                       ; $66ed: $cf
    sbc a                                         ; $66ee: $9f
    rra                                           ; $66ef: $1f
    nop                                           ; $66f0: $00
    ld a, a                                       ; $66f1: $7f
    ld a, a                                       ; $66f2: $7f
    rst $38                                       ; $66f3: $ff
    rst $38                                       ; $66f4: $ff
    ld a, a                                       ; $66f5: $7f
    ld a, a                                       ; $66f6: $7f
    rra                                           ; $66f7: $1f
    rra                                           ; $66f8: $1f
    nop                                           ; $66f9: $00
    ldh [$e0], a                                  ; $66fa: $e0 $e0
    pop hl                                        ; $66fc: $e1
    add sp, -$40                                  ; $66fd: $e8 $c0
    jp $83a8                                      ; $66ff: $c3 $a8 $83


    nop                                           ; $6702: $00
    ld b, b                                       ; $6703: $40
    ld [bc], a                                    ; $6704: $02
    ld c, b                                       ; $6705: $48
    nop                                           ; $6706: $00
    ld b, c                                       ; $6707: $41
    ld a, [bc]                                    ; $6708: $0a
    ld b, e                                       ; $6709: $43
    inc b                                         ; $670a: $04
    nop                                           ; $670b: $00
    ld hl, $415a                                  ; $670c: $21 $5a $41
    or d                                          ; $670f: $b2
    and e                                         ; $6710: $a3
    ld d, h                                       ; $6711: $54
    ld bc, $00e6                                  ; $6712: $01 $e6 $00
    ld bc, $0042                                  ; $6715: $01 $42 $00
    inc e                                         ; $6718: $1c
    rrca                                          ; $6719: $0f
    jr nc, jr_0d5_671f                            ; $671a: $30 $03

    inc b                                         ; $671c: $04
    nop                                           ; $671d: $00
    inc h                                         ; $671e: $24

jr_0d5_671f:
    ld c, b                                       ; $671f: $48
    add c                                         ; $6720: $81
    ld a, [hl+]                                   ; $6721: $2a
    add c                                         ; $6722: $81
    ld a, [hl+]                                   ; $6723: $2a
    add e                                         ; $6724: $83
    jr nz, jr_0d5_6727                            ; $6725: $20 $00

jr_0d5_6727:
    ld [bc], a                                    ; $6727: $02
    sub l                                         ; $6728: $95
    ld [bc], a                                    ; $6729: $02
    ld b, h                                       ; $672a: $44
    ld b, $88                                     ; $672b: $06 $88
    adc h                                         ; $672d: $8c
    ld b, d                                       ; $672e: $42
    nop                                           ; $672f: $00
    ld l, a                                       ; $6730: $6f
    rrca                                          ; $6731: $0f
    rla                                           ; $6732: $17
    rlca                                          ; $6733: $07
    dec bc                                        ; $6734: $0b
    ld h, e                                       ; $6735: $63
    dec b                                         ; $6736: $05
    ld [hl], c                                    ; $6737: $71

jr_0d5_6738:
    nop                                           ; $6738: $00
    ld a, [hl+]                                   ; $6739: $2a
    ld d, b                                       ; $673a: $50
    ld d, d                                       ; $673b: $52
    xor b                                         ; $673c: $a8
    ld a, [hl+]                                   ; $673d: $2a
    ret nc                                        ; $673e: $d0

    ld d, d                                       ; $673f: $52
    xor b                                         ; $6740: $a8
    nop                                           ; $6741: $00
    add a                                         ; $6742: $87
    sbc b                                         ; $6743: $98
    inc hl                                        ; $6744: $23
    inc c                                         ; $6745: $0c
    inc hl                                        ; $6746: $23
    ld [$8691], sp                                ; $6747: $08 $91 $86
    nop                                           ; $674a: $00
    ret nz                                        ; $674b: $c0

    push bc                                       ; $674c: $c5
    ret nz                                        ; $674d: $c0

    rst $00                                       ; $674e: $c7
    ldh [$e2], a                                  ; $674f: $e0 $e2
    add sp, -$1f                                  ; $6751: $e8 $e1

jr_0d5_6753:
    nop                                           ; $6753: $00
    nop                                           ; $6754: $00
    jr c, @+$14                                   ; $6755: $38 $12

    ld h, b                                       ; $6757: $60
    inc [hl]                                      ; $6758: $34
    ld b, b                                       ; $6759: $40
    ld a, $00                                     ; $675a: $3e $00
    nop                                           ; $675c: $00
    inc e                                         ; $675d: $1c
    nop                                           ; $675e: $00
    nop                                           ; $675f: $00
    jr nz, jr_0d5_6782                            ; $6760: $20 $20

    sub [hl]                                      ; $6762: $96
    ld [hl+], a                                   ; $6763: $22
    sub l                                         ; $6764: $95
    nop                                           ; $6765: $00
    nop                                           ; $6766: $00
    add l                                         ; $6767: $85
    ld sp, $3042                                  ; $6768: $31 $42 $30
    ld c, e                                       ; $676b: $4b
    ld h, c                                       ; $676c: $61
    adc d                                         ; $676d: $8a
    nop                                           ; $676e: $00
    ret nz                                        ; $676f: $c0

    dec de                                        ; $6770: $1b
    add c                                         ; $6771: $81
    ld [hl], d                                    ; $6772: $72
    ld [bc], a                                    ; $6773: $02
    xor c                                         ; $6774: $a9
    ld bc, $0056                                  ; $6775: $01 $56 $00
    and l                                         ; $6778: $a5
    ld d, c                                       ; $6779: $51
    ld d, l                                       ; $677a: $55
    and c                                         ; $677b: $a1
    and l                                         ; $677c: $a5
    ld d, c                                       ; $677d: $51
    ld c, e                                       ; $677e: $4b
    and e                                         ; $677f: $a3
    nop                                           ; $6780: $00
    xor e                                         ; $6781: $ab

jr_0d5_6782:
    ld b, e                                       ; $6782: $43
    ld c, e                                       ; $6783: $4b
    and e                                         ; $6784: $a3
    sub a                                         ; $6785: $97
    ld b, a                                       ; $6786: $47
    ld d, a                                       ; $6787: $57
    add a                                         ; $6788: $87
    nop                                           ; $6789: $00
    add sp, -$20                                  ; $678a: $e8 $e0
    db $f4                                        ; $678c: $f4
    ldh a, [$f4]                                  ; $678d: $f0 $f4
    pop af                                        ; $678f: $f1
    db $f4                                        ; $6790: $f4
    pop af                                        ; $6791: $f1
    nop                                           ; $6792: $00
    ld a, [$faf8]                                 ; $6793: $fa $f8 $fa
    ld hl, sp-$05                                 ; $6796: $f8 $fb
    ld hl, sp-$04                                 ; $6798: $f8 $fc
    db $fc                                        ; $679a: $fc
    nop                                           ; $679b: $00
    inc de                                        ; $679c: $13
    add sp, $13                                   ; $679d: $e8 $13
    ld l, b                                       ; $679f: $68
    ld sp, $114e                                  ; $67a0: $31 $4e $11
    ld h, $00                                     ; $67a3: $26 $00
    ld bc, $0096                                  ; $67a5: $01 $96 $00
    nop                                           ; $67a8: $00
    rst $38                                       ; $67a9: $ff
    nop                                           ; $67aa: $00
    nop                                           ; $67ab: $00
    nop                                           ; $67ac: $00
    nop                                           ; $67ad: $00
    ld [bc], a                                    ; $67ae: $02
    ld h, l                                       ; $67af: $65
    dec b                                         ; $67b0: $05
    ld a, [bc]                                    ; $67b1: $0a
    ld [bc], a                                    ; $67b2: $02
    adc l                                         ; $67b3: $8d
    dec b                                         ; $67b4: $05
    sbc d                                         ; $67b5: $9a
    jr nz, jr_0d5_6738                            ; $67b6: $20 $80

    rra                                           ; $67b8: $1f
    db $10                                        ; $67b9: $10
    jr jr_0d5_6753                                ; $67ba: $18 $97

    ld b, a                                       ; $67bc: $47
    cpl                                           ; $67bd: $2f
    adc a                                         ; $67be: $8f
    xor a                                         ; $67bf: $af
    nop                                           ; $67c0: $00
    rrca                                          ; $67c1: $0f
    cpl                                           ; $67c2: $2f
    adc a                                         ; $67c3: $8f
    ld e, a                                       ; $67c4: $5f
    rra                                           ; $67c5: $1f
    ld e, a                                       ; $67c6: $5f
    rra                                           ; $67c7: $1f
    rst $18                                       ; $67c8: $df
    nop                                           ; $67c9: $00
    rra                                           ; $67ca: $1f
    ccf                                           ; $67cb: $3f
    ccf                                           ; $67cc: $3f
    nop                                           ; $67cd: $00
    ld bc, $00f1                                  ; $67ce: $01 $f1 $00
    nop                                           ; $67d1: $00
    rst $38                                       ; $67d2: $ff
    rst $38                                       ; $67d3: $ff
    ldh [$e0], a                                  ; $67d4: $e0 $e0
    add $c9                                       ; $67d6: $c6 $c9
    and c                                         ; $67d8: $a1
    sub [hl]                                      ; $67d9: $96
    nop                                           ; $67da: $00
    jr nc, @+$0c                                  ; $67db: $30 $0a

    ld b, b                                       ; $67dd: $40
    ld de, $8280                                  ; $67de: $11 $80 $82
    ldh [$e0], a                                  ; $67e1: $e0 $e0
    nop                                           ; $67e3: $00
    cp $fe                                        ; $67e4: $fe $fe
    ld hl, sp-$08                                 ; $67e6: $f8 $f8
    dec d                                         ; $67e8: $15
    db $10                                        ; $67e9: $10
    ld h, [hl]                                    ; $67ea: $66
    add b                                         ; $67eb: $80
    nop                                           ; $67ec: $00
    inc b                                         ; $67ed: $04
    ld [bc], a                                    ; $67ee: $02
    db $e4                                        ; $67ef: $e4
    ld [de], a                                    ; $67f0: $12
    ld c, b                                       ; $67f1: $48
    and l                                         ; $67f2: $a5
    ld de, $0048                                  ; $67f3: $11 $48 $00
    ld a, c                                       ; $67f6: $79
    ld a, c                                       ; $67f7: $79
    or d                                          ; $67f8: $b2
    inc [hl]                                      ; $67f9: $34
    ld c, d                                       ; $67fa: $4a
    nop                                           ; $67fb: $00
    cpl                                           ; $67fc: $2f
    add b                                         ; $67fd: $80
    nop                                           ; $67fe: $00
    add h                                         ; $67ff: $84
    ld [bc], a                                    ; $6800: $02
    ld [$80c0], sp                                ; $6801: $08 $c0 $80
    ld e, b                                       ; $6804: $58
    adc b                                         ; $6805: $88
    ld d, h                                       ; $6806: $54
    ld b, b                                       ; $6807: $40
    rst $38                                       ; $6808: $ff
    ld bc, $7f00                                  ; $6809: $01 $00 $7f
    ld a, a                                       ; $680c: $7f
    cp a                                          ; $680d: $bf
    ccf                                           ; $680e: $3f
    ld a, a                                       ; $680f: $7f
    ld a, a                                       ; $6810: $7f
    add b                                         ; $6811: $80
    ld [$9f08], sp                                ; $6812: $08 $08 $9f
    rra                                           ; $6815: $1f
    ret nz                                        ; $6816: $c0

    call z, $8290                                 ; $6817: $cc $90 $82
    and h                                         ; $681a: $a4
    nop                                           ; $681b: $00
    sub d                                         ; $681c: $92
    ld [$1124], sp                                ; $681d: $08 $24 $11
    ld [$3102], sp                                ; $6820: $08 $02 $31
    ld b, $00                                     ; $6823: $06 $00
    jr nz, jr_0d5_686b                            ; $6825: $20 $44

    add hl, hl                                    ; $6827: $29
    ld sp, $2602                                  ; $6828: $31 $02 $26
    ld c, b                                       ; $682b: $48
    ld e, h                                       ; $682c: $5c
    nop                                           ; $682d: $00
    nop                                           ; $682e: $00
    add [hl]                                      ; $682f: $86
    ld b, c                                       ; $6830: $41
    rrca                                          ; $6831: $0f
    sub b                                         ; $6832: $90
    daa                                           ; $6833: $27
    ld [$0010], sp                                ; $6834: $08 $10 $00
    inc bc                                        ; $6837: $03
    inc b                                         ; $6838: $04
    jr jr_0d5_683f                                ; $6839: $18 $04

    sub d                                         ; $683b: $92
    ld b, $19                                     ; $683c: $06 $19
    inc b                                         ; $683e: $04

jr_0d5_683f:
    nop                                           ; $683f: $00
    dec hl                                        ; $6840: $2b
    inc b                                         ; $6841: $04
    ld [de], a                                    ; $6842: $12
    nop                                           ; $6843: $00
    inc h                                         ; $6844: $24
    jr jr_0d5_6847                                ; $6845: $18 $00

jr_0d5_6847:
    ld [$1000], sp                                ; $6847: $08 $00 $10
    pop bc                                        ; $684a: $c1
    inc b                                         ; $684b: $04
    ld b, a                                       ; $684c: $47
    rlca                                          ; $684d: $07
    inc hl                                        ; $684e: $23
    inc bc                                        ; $684f: $03
    ld e, e                                       ; $6850: $5b

jr_0d5_6851:
    nop                                           ; $6851: $00
    inc bc                                        ; $6852: $03
    ld sp, $a209                                  ; $6853: $31 $09 $a2
    db $10                                        ; $6856: $10
    ld c, d                                       ; $6857: $4a
    nop                                           ; $6858: $00
    and b                                         ; $6859: $a0
    nop                                           ; $685a: $00
    ld [$0c80], sp                                ; $685b: $08 $80 $0c
    nop                                           ; $685e: $00
    ld c, d                                       ; $685f: $4a
    nop                                           ; $6860: $00
    ld c, c                                       ; $6861: $49
    nop                                           ; $6862: $00
    nop                                           ; $6863: $00
    ld a, [bc]                                    ; $6864: $0a
    sub b                                         ; $6865: $90
    add b                                         ; $6866: $80
    ret nc                                        ; $6867: $d0

    jp nz, $c0d0                                  ; $6868: $c2 $d0 $c0

jr_0d5_686b:
    add sp, $00                                   ; $686b: $e8 $00
    ldh [$e8], a                                  ; $686d: $e0 $e8
    ldh [rP1], a                                  ; $686f: $e0 $00
    inc c                                         ; $6871: $0c
    ld [hl-], a                                   ; $6872: $32
    nop                                           ; $6873: $00
    inc l                                         ; $6874: $2c
    nop                                           ; $6875: $00
    sub d                                         ; $6876: $92
    adc b                                         ; $6877: $88
    inc b                                         ; $6878: $04
    add b                                         ; $6879: $80
    ld [hl+], a                                   ; $687a: $22
    and b                                         ; $687b: $a0
    inc d                                         ; $687c: $14
    jr nc, jr_0d5_687f                            ; $687d: $30 $00

jr_0d5_687f:
    add b                                         ; $687f: $80
    ld b, h                                       ; $6880: $44
    ld [hl-], a                                   ; $6881: $32
    pop bc                                        ; $6882: $c1
    db $10                                        ; $6883: $10
    ld [bc], a                                    ; $6884: $02
    jr nz, @+$06                                  ; $6885: $20 $04

    nop                                           ; $6887: $00
    ld b, b                                       ; $6888: $40
    ld [$09a1], sp                                ; $6889: $08 $a1 $09
    ld b, d                                       ; $688c: $42
    db $10                                        ; $688d: $10
    ld bc, $0020                                  ; $688e: $01 $20 $00
    ld [bc], a                                    ; $6891: $02
    add c                                         ; $6892: $81
    inc c                                         ; $6893: $0c
    nop                                           ; $6894: $00
    ld e, $04                                     ; $6895: $1e $04
    ld a, [bc]                                    ; $6897: $0a
    jr jr_0d5_689a                                ; $6898: $18 $00

jr_0d5_689a:
    and h                                         ; $689a: $a4
    inc sp                                        ; $689b: $33
    ld b, e                                       ; $689c: $43
    ld l, e                                       ; $689d: $6b
    inc bc                                        ; $689e: $03
    ld c, e                                       ; $689f: $4b
    inc hl                                        ; $68a0: $23
    rla                                           ; $68a1: $17
    nop                                           ; $68a2: $00
    ld b, a                                       ; $68a3: $47
    rla                                           ; $68a4: $17
    rlca                                          ; $68a5: $07
    add sp, -$20                                  ; $68a6: $e8 $e0
    db $f4                                        ; $68a8: $f4
    pop af                                        ; $68a9: $f1
    db $f4                                        ; $68aa: $f4
    ld b, b                                       ; $68ab: $40
    ldh a, [rSC]                                  ; $68ac: $f0 $02
    nop                                           ; $68ae: $00
    pop af                                        ; $68af: $f1
    ld a, [$fbf8]                                 ; $68b0: $fa $f8 $fb
    ld hl, sp-$04                                 ; $68b3: $f8 $fc
    nop                                           ; $68b5: $00
    db $fc                                        ; $68b6: $fc
    add hl, hl                                    ; $68b7: $29
    add h                                         ; $68b8: $84
    inc hl                                        ; $68b9: $23
    ld c, b                                       ; $68ba: $48
    ld h, b                                       ; $68bb: $60
    ld [$0042], sp                                ; $68bc: $08 $42 $00
    and c                                         ; $68bf: $a1
    ld [bc], a                                    ; $68c0: $02
    ret nz                                        ; $68c1: $c0

    nop                                           ; $68c2: $00
    nop                                           ; $68c3: $00
    rst $38                                       ; $68c4: $ff
    nop                                           ; $68c5: $00
    nop                                           ; $68c6: $00
    nop                                           ; $68c7: $00
    nop                                           ; $68c8: $00
    push bc                                       ; $68c9: $c5
    jr z, jr_0d5_6851                             ; $68ca: $28 $85

    ld c, b                                       ; $68cc: $48
    dec b                                         ; $68cd: $05
    db $10                                        ; $68ce: $10
    inc b                                         ; $68cf: $04
    db $10                                        ; $68d0: $10
    ld hl, $0500                                  ; $68d1: $21 $00 $05
    db $10                                        ; $68d4: $10
    jr @+$19                                      ; $68d5: $18 $17

    rlca                                          ; $68d7: $07
    cpl                                           ; $68d8: $2f
    adc a                                         ; $68d9: $8f
    jr nz, @-$4f                                  ; $68da: $20 $af

    rrca                                          ; $68dc: $0f
    ld [bc], a                                    ; $68dd: $02
    ld [$1f5f], sp                                ; $68de: $08 $5f $1f
    rst $18                                       ; $68e1: $df
    rra                                           ; $68e2: $1f
    ccf                                           ; $68e3: $3f
    nop                                           ; $68e4: $00
    ccf                                           ; $68e5: $3f
    nop                                           ; $68e6: $00
    ld bc, $00e5                                  ; $68e7: $01 $e5 $00
    ld b, b                                       ; $68ea: $40
    rst $38                                       ; $68eb: $ff
    ld bc, $fe30                                  ; $68ec: $01 $30 $fe
    cp $f8                                        ; $68ef: $fe $f8
    ld hl, sp-$07                                 ; $68f1: $f8 $f9
    ld hl, sp+$00                                 ; $68f3: $f8 $00
    cp $fe                                        ; $68f5: $fe $fe
    db $fc                                        ; $68f7: $fc
    db $fc                                        ; $68f8: $fc
    ldh a, [$f1]                                  ; $68f9: $f0 $f1
    pop hl                                        ; $68fb: $e1
    ld [c], a                                     ; $68fc: $e2
    nop                                           ; $68fd: $00
    ld bc, $7802                                  ; $68fe: $01 $02 $78
    add h                                         ; $6901: $84
    rrca                                          ; $6902: $0f
    stop                                          ; $6903: $10 $00
    jr nz, jr_0d5_6907                            ; $6905: $20 $00

jr_0d5_6907:
    ld a, a                                       ; $6907: $7f
    ld a, a                                       ; $6908: $7f
    ccf                                           ; $6909: $3f
    ccf                                           ; $690a: $3f
    adc a                                         ; $690b: $8f
    rrca                                          ; $690c: $0f
    rst $00                                       ; $690d: $c7
    rlca                                          ; $690e: $07
    nop                                           ; $690f: $00
    sla e                                         ; $6910: $cb $23
    nop                                           ; $6912: $00
    nop                                           ; $6913: $00
    and c                                         ; $6914: $a1
    ld e, b                                       ; $6915: $58
    nop                                           ; $6916: $00
    nop                                           ; $6917: $00
    add b                                         ; $6918: $80
    jr nc, jr_0d5_6933                            ; $6919: $30 $18

    di                                            ; $691b: $f3
    jp hl                                         ; $691c: $e9


    db $dd                                        ; $691d: $dd
    jp $c1f5                                      ; $691e: $c3 $f5 $c1


    ld b, e                                       ; $6921: $43
    nop                                           ; $6922: $00
    ld c, c                                       ; $6923: $49
    dec bc                                        ; $6924: $0b
    inc bc                                        ; $6925: $03
    or $f0                                        ; $6926: $f6 $f0
    add sp, -$1f                                  ; $6928: $e8 $e1
    ret nc                                        ; $692a: $d0

    nop                                           ; $692b: $00
    jp nz, $80a0                                  ; $692c: $c2 $a0 $80

    ld b, c                                       ; $692f: $41
    ld [bc], a                                    ; $6930: $02
    ld b, e                                       ; $6931: $43
    inc d                                         ; $6932: $14

jr_0d5_6933:
    ld b, [hl]                                    ; $6933: $46
    nop                                           ; $6934: $00
    ld bc, $0146                          ; $6935: $01 $46 $01
    ld [bc], a                                    ; $6938: $02
    cp b                                          ; $6939: $b8
    ld [bc], a                                    ; $693a: $02
    ld b, b                                       ; $693b: $40
    inc bc                                        ; $693c: $03
    nop                                           ; $693d: $00
    jr jr_0d5_6960                                ; $693e: $18 $20

    ld [bc], a                                    ; $6940: $02
    add h                                         ; $6941: $84
    add hl, de                                    ; $6942: $19
    ld d, $80                                     ; $6943: $16 $80
    inc de                                        ; $6945: $13
    nop                                           ; $6946: $00
    ld c, h                                       ; $6947: $4c
    ld [de], a                                    ; $6948: $12
    ld bc, $09a0                                  ; $6949: $01 $a0 $09
    and b                                         ; $694c: $a0
    inc b                                         ; $694d: $04
    ldh [rP1], a                                  ; $694e: $e0 $00
    ld [$0154], sp                                ; $6950: $08 $54 $01
    call nz, $2918                                ; $6953: $c4 $18 $29
    nop                                           ; $6956: $00
    ldh [rP1], a                                  ; $6957: $e0 $00
    jr @-$55                                      ; $6959: $18 $a9

    inc b                                         ; $695b: $04
    rla                                           ; $695c: $17
    rlca                                          ; $695d: $07
    rla                                           ; $695e: $17
    add a                                         ; $695f: $87

jr_0d5_6960:
    inc hl                                        ; $6960: $23
    nop                                           ; $6961: $00
    ld b, e                                       ; $6962: $43
    dec h                                         ; $6963: $25
    ld bc, $0842                                  ; $6964: $01 $42 $08
    add d                                         ; $6967: $82
    db $10                                        ; $6968: $10
    ld b, d                                       ; $6969: $42
    nop                                           ; $696a: $00
    adc b                                         ; $696b: $88
    add d                                         ; $696c: $82
    ld b, b                                       ; $696d: $40
    and [hl]                                      ; $696e: $a6
    add c                                         ; $696f: $81
    and e                                         ; $6970: $a3
    add b                                         ; $6971: $80
    and c                                         ; $6972: $a1
    nop                                           ; $6973: $00
    add d                                         ; $6974: $82
    db $d3                                        ; $6975: $d3
    ret nz                                        ; $6976: $c0

    db $d3                                        ; $6977: $d3
    call nz, $c0d7                                ; $6978: $c4 $d7 $c0
    db $eb                                        ; $697b: $eb
    nop                                           ; $697c: $00
    ldh [$eb], a                                  ; $697d: $e0 $eb
    ldh [rNR23], a                                ; $697f: $e0 $18
    ld b, c                                       ; $6981: $41
    ld d, $00                                     ; $6982: $16 $00
    dec b                                         ; $6984: $05
    nop                                           ; $6985: $00
    ld d, b                                       ; $6986: $50
    ld [$0da0], sp                                ; $6987: $08 $a0 $0d
    add b                                         ; $698a: $80
    rlca                                          ; $698b: $07
    xor b                                         ; $698c: $a8
    inc b                                         ; $698d: $04
    nop                                           ; $698e: $00
    sub b                                         ; $698f: $90
    inc de                                        ; $6990: $13
    ld [$3008], sp                                ; $6991: $08 $08 $30
    db $d3                                        ; $6994: $d3
    nop                                           ; $6995: $00
    ld b, b                                       ; $6996: $40
    nop                                           ; $6997: $00
    ld de, $0a20                                  ; $6998: $11 $20 $0a
    ld h, d                                       ; $699b: $62
    nop                                           ; $699c: $00
    jp nz, $4428                                  ; $699d: $c2 $28 $44

    nop                                           ; $69a0: $00
    ld [de], a                                    ; $69a1: $12
    sub b                                         ; $69a2: $90
    jr nz, jr_0d5_69fa                            ; $69a3: $20 $55

    add c                                         ; $69a5: $81
    dec b                                         ; $69a6: $05
    sub c                                         ; $69a7: $91
    and l                                         ; $69a8: $a5
    nop                                           ; $69a9: $00
    ld bc, $230b                                  ; $69aa: $01 $0b $23
    dec bc                                        ; $69ad: $0b
    jp $832b                                      ; $69ae: $c3 $2b $83


    daa                                           ; $69b1: $27
    nop                                           ; $69b2: $00
    ld d, a                                       ; $69b3: $57
    rst $20                                       ; $69b4: $e7
    rla                                           ; $69b5: $17
    ld [$f4e1], a                                 ; $69b6: $ea $e1 $f4
    pop af                                        ; $69b9: $f1
    db $f4                                        ; $69ba: $f4
    nop                                           ; $69bb: $00
    ldh a, [$f4]                                  ; $69bc: $f0 $f4
    ldh a, [$fa]                                  ; $69be: $f0 $fa
    ld hl, sp-$06                                 ; $69c0: $f8 $fa
    ld hl, sp-$05                                 ; $69c2: $f8 $fb
    nop                                           ; $69c4: $00
    ld hl, sp-$04                                 ; $69c5: $f8 $fc
    db $fc                                        ; $69c7: $fc
    add hl, bc                                    ; $69c8: $09
    inc d                                         ; $69c9: $14

jr_0d5_69ca:
    inc b                                         ; $69ca: $04
    ld c, c                                       ; $69cb: $49
    nop                                           ; $69cc: $00
    ld h, b                                       ; $69cd: $60
    add l                                         ; $69ce: $85
    inc b                                         ; $69cf: $04
    ld [$00ac], sp                                ; $69d0: $08 $ac $00
    nop                                           ; $69d3: $00
    nop                                           ; $69d4: $00
    nop                                           ; $69d5: $00
    jr nz, jr_0d5_6a29                            ; $69d6: $20 $51

    ld a, [bc]                                    ; $69d8: $0a
    ld b, b                                       ; $69d9: $40
    dec h                                         ; $69da: $25
    nop                                           ; $69db: $00
    ld b, d                                       ; $69dc: $42
    inc b                                         ; $69dd: $04
    nop                                           ; $69de: $00
    ld c, d                                       ; $69df: $4a
    db $10                                        ; $69e0: $10
    jr jr_0d5_69ca                                ; $69e1: $18 $e7

    nop                                           ; $69e3: $00
    rla                                           ; $69e4: $17
    rst $08                                       ; $69e5: $cf
    cpl                                           ; $69e6: $2f
    adc a                                         ; $69e7: $8f
    ld c, a                                       ; $69e8: $4f
    rra                                           ; $69e9: $1f
    rra                                           ; $69ea: $1f
    ld e, a                                       ; $69eb: $5f
    add b                                         ; $69ec: $80
    ld [bc], a                                    ; $69ed: $02
    nop                                           ; $69ee: $00
    rst $18                                       ; $69ef: $df
    rra                                           ; $69f0: $1f
    ccf                                           ; $69f1: $3f
    ccf                                           ; $69f2: $3f
    nop                                           ; $69f3: $00
    ld bc, $00e4                                  ; $69f4: $01 $e4 $00
    nop                                           ; $69f7: $00
    inc e                                         ; $69f8: $1c
    inc e                                         ; $69f9: $1c

jr_0d5_69fa:
    ld l, c                                       ; $69fa: $69
    ld a, [bc]                                    ; $69fb: $0a
    sub e                                         ; $69fc: $93
    and h                                         ; $69fd: $a4
    ret                                           ; $69fe: $c9


    jp nc, $e000                                  ; $69ff: $d2 $00 $e0

    ld [c], a                                     ; $6a02: $e2
    rst $30                                       ; $6a03: $f7
    pop af                                        ; $6a04: $f1
    ld [$d3e4], a                                 ; $6a05: $ea $e4 $d3
    call nz, $e000                                ; $6a08: $c4 $00 $e0
    cp $5e                                        ; $6a0b: $fe $5e
    ld h, c                                       ; $6a0d: $61
    dec l                                         ; $6a0e: $2d
    ld d, d                                       ; $6a0f: $52
    rlca                                          ; $6a10: $07
    ld [$3f00], sp                                ; $6a11: $08 $00 $3f
    ld b, b                                       ; $6a14: $40
    dec l                                         ; $6a15: $2d
    ld d, d                                       ; $6a16: $52
    sbc [hl]                                      ; $6a17: $9e
    ld hl, $1e00                                  ; $6a18: $21 $00 $1e
    nop                                           ; $6a1b: $00
    ld a, a                                       ; $6a1c: $7f
    ld a, a                                       ; $6a1d: $7f
    cp a                                          ; $6a1e: $bf

jr_0d5_6a1f:
    ccf                                           ; $6a1f: $3f
    ld c, a                                       ; $6a20: $4f
    adc a                                         ; $6a21: $8f
    scf                                           ; $6a22: $37
    add a                                         ; $6a23: $87
    nop                                           ; $6a24: $00
    dec bc                                        ; $6a25: $0b
    add e                                         ; $6a26: $83
    dec b                                         ; $6a27: $05
    add c                                         ; $6a28: $81

jr_0d5_6a29:
    ld [bc], a                                    ; $6a29: $02
    nop                                           ; $6a2a: $00
    nop                                           ; $6a2b: $00
    nop                                           ; $6a2c: $00
    ld b, b                                       ; $6a2d: $40
    rst $38                                       ; $6a2e: $ff
    ld bc, $c310                                  ; $6a2f: $01 $10 $c3
    jp $a599                                      ; $6a32: $c3 $99 $a5


    inc a                                         ; $6a35: $3c
    ld b, d                                       ; $6a36: $42
    nop                                           ; $6a37: $00
    ld a, $00                                     ; $6a38: $3e $00
    ld e, $a0                                     ; $6a3a: $1e $a0
    or $f0                                        ; $6a3c: $f6 $f0
    add sp, -$1c                                  ; $6a3e: $e8 $e4
    inc bc                                        ; $6a40: $03
    ret nc                                        ; $6a41: $d0

    call nz, $8880                                ; $6a42: $c4 $80 $88
    ld b, b                                       ; $6a45: $40
    nop                                           ; $6a46: $00
    ld [bc], a                                    ; $6a47: $02
    jr @+$25                                      ; $6a48: $18 $23

    nop                                           ; $6a4a: $00
    nop                                           ; $6a4b: $00
    dec b                                         ; $6a4c: $05
    nop                                           ; $6a4d: $00
    ld a, [bc]                                    ; $6a4e: $0a
    nop                                           ; $6a4f: $00
    dec d                                         ; $6a50: $15
    nop                                           ; $6a51: $00
    ld [bc], a                                    ; $6a52: $02
    inc a                                         ; $6a53: $3c
    nop                                           ; $6a54: $00
    ld b, c                                       ; $6a55: $41
    ld h, h                                       ; $6a56: $64
    ld a, [de]                                    ; $6a57: $1a
    ld c, d                                       ; $6a58: $4a
    and l                                         ; $6a59: $a5
    nop                                           ; $6a5a: $00
    and b                                         ; $6a5b: $a0
    jr jr_0d5_6a5e                                ; $6a5c: $18 $00

jr_0d5_6a5e:
    ld b, l                                       ; $6a5e: $45
    dec c                                         ; $6a5f: $0d
    and b                                         ; $6a60: $a0
    inc b                                         ; $6a61: $04
    ld c, d                                       ; $6a62: $4a
    ld [bc], a                                    ; $6a63: $02
    sub l                                         ; $6a64: $95
    add hl, bc                                    ; $6a65: $09
    nop                                           ; $6a66: $00
    ld [bc], a                                    ; $6a67: $02
    inc h                                         ; $6a68: $24
    sub b                                         ; $6a69: $90
    ld [hl-], a                                   ; $6a6a: $32
    ld [$0846], sp                                ; $6a6b: $08 $46 $08
    inc a                                         ; $6a6e: $3c
    nop                                           ; $6a6f: $00
    ld [bc], a                                    ; $6a70: $02
    add hl, bc                                    ; $6a71: $09
    sub l                                         ; $6a72: $95
    add c                                         ; $6a73: $81
    ld b, c                                       ; $6a74: $41
    ld [bc], a                                    ; $6a75: $02
    ld [$00e2], sp                                ; $6a76: $08 $e2 $00
    jr jr_0d5_6a7d                                ; $6a79: $18 $02

    ret nz                                        ; $6a7b: $c0

    ld [bc], a                                    ; $6a7c: $02

jr_0d5_6a7d:
    jr z, jr_0d5_6a1f                             ; $6a7d: $28 $a0

    add b                                         ; $6a7f: $80
    and b                                         ; $6a80: $a0
    nop                                           ; $6a81: $00
    add b                                         ; $6a82: $80
    and e                                         ; $6a83: $a3
    add b                                         ; $6a84: $80
    ret nc                                        ; $6a85: $d0

    jp nz, $c0d0                                  ; $6a86: $c2 $d0 $c0

    ret nc                                        ; $6a89: $d0

    nop                                           ; $6a8a: $00
    ret nz                                        ; $6a8b: $c0

    add sp, -$20                                  ; $6a8c: $e8 $e0
    add sp, -$20                                  ; $6a8e: $e8 $e0
    sbc b                                         ; $6a90: $98
    ld b, a                                       ; $6a91: $47
    stop                                          ; $6a92: $10 $00
    rrca                                          ; $6a94: $0f
    nop                                           ; $6a95: $00
    adc e                                         ; $6a96: $8b
    ldh [rP1], a                                  ; $6a97: $e0 $00
    db $10                                        ; $6a99: $10
    jr nz, jr_0d5_6a9e                            ; $6a9a: $20 $02

    nop                                           ; $6a9c: $00
    adc b                                         ; $6a9d: $88

jr_0d5_6a9e:
    add c                                         ; $6a9e: $81
    ld d, b                                       ; $6a9f: $50
    ret c                                         ; $6aa0: $d8

    inc b                                         ; $6aa1: $04
    ld bc, $0258                                  ; $6aa2: $01 $58 $02
    nop                                           ; $6aa5: $00
    jr nz, jr_0d5_6aab                            ; $6aa6: $20 $03

    inc b                                         ; $6aa8: $04
    db $10                                        ; $6aa9: $10
    rlca                                          ; $6aaa: $07

jr_0d5_6aab:
    jr z, jr_0d5_6aae                             ; $6aab: $28 $01

    sub h                                         ; $6aad: $94

jr_0d5_6aae:
    nop                                           ; $6aae: $00
    nop                                           ; $6aaf: $00
    ld c, d                                       ; $6ab0: $4a
    nop                                           ; $6ab1: $00
    nop                                           ; $6ab2: $00
    add l                                         ; $6ab3: $85
    dec d                                         ; $6ab4: $15
    ld h, c                                       ; $6ab5: $61
    add c                                         ; $6ab6: $81
    nop                                           ; $6ab7: $00
    add hl, de                                    ; $6ab8: $19
    ld hl, $0341                                  ; $6ab9: $21 $41 $03
    sub e                                         ; $6abc: $93
    dec hl                                        ; $6abd: $2b
    ld b, e                                       ; $6abe: $43
    dec bc                                        ; $6abf: $0b
    nop                                           ; $6ac0: $00
    ld h, e                                       ; $6ac1: $63
    rlca                                          ; $6ac2: $07
    rst $20                                       ; $6ac3: $e7
    rla                                           ; $6ac4: $17
    rlca                                          ; $6ac5: $07
    add sp, -$20                                  ; $6ac6: $e8 $e0
    db $f4                                        ; $6ac8: $f4
    ld b, b                                       ; $6ac9: $40
    ldh a, [rSC]                                  ; $6aca: $f0 $02
    ld [$f8fa], sp                                ; $6acc: $08 $fa $f8
    ld a, [$fbf8]                                 ; $6acf: $fa $f8 $fb
    ld hl, sp+$00                                 ; $6ad2: $f8 $00
    db $fc                                        ; $6ad4: $fc
    db $fc                                        ; $6ad5: $fc
    jr jr_0d5_6b1c                                ; $6ad6: $18 $44

    add b                                         ; $6ad8: $80
    ld bc, $8378                                  ; $6ad9: $01 $78 $83
    jr z, jr_0d5_6ade                             ; $6adc: $28 $00

jr_0d5_6ade:
    ld a, c                                       ; $6ade: $79
    adc c                                         ; $6adf: $89
    ld [$8eff], sp                                ; $6ae0: $08 $ff $8e
    ld [$0062], sp                                ; $6ae3: $08 $62 $00
    ld hl, sp+$02                                 ; $6ae6: $f8 $02
    jr nz, @-$2e                                  ; $6ae8: $20 $d0

    ret nz                                        ; $6aea: $c0

    jr nz, jr_0d5_6aed                            ; $6aeb: $20 $00

jr_0d5_6aed:
    ret nz                                        ; $6aed: $c0

    db $10                                        ; $6aee: $10
    jr @+$19                                      ; $6aef: $18 $17

    db $10                                        ; $6af1: $10
    rlca                                          ; $6af2: $07
    cpl                                           ; $6af3: $2f
    rrca                                          ; $6af4: $0f
    ld [bc], a                                    ; $6af5: $02
    ld [$1f5f], sp                                ; $6af6: $08 $5f $1f
    ld e, a                                       ; $6af9: $5f
    rra                                           ; $6afa: $1f
    nop                                           ; $6afb: $00
    rst $18                                       ; $6afc: $df
    rra                                           ; $6afd: $1f
    ccf                                           ; $6afe: $3f
    ccf                                           ; $6aff: $3f
    nop                                           ; $6b00: $00
    ld bc, $00f6                                  ; $6b01: $01 $f6 $00
    ld b, b                                       ; $6b04: $40
    rst $38                                       ; $6b05: $ff
    ld bc, $f700                                  ; $6b06: $01 $00 $f7
    rst $30                                       ; $6b09: $f7
    db $e3                                        ; $6b0a: $e3
    db $eb                                        ; $6b0b: $eb
    add sp, -$1c                                  ; $6b0c: $e8 $e4
    nop                                           ; $6b0e: $00
    db $f4                                        ; $6b0f: $f4
    ld a, [c]                                     ; $6b10: $f2
    ld a, [c]                                     ; $6b11: $f2
    pop af                                        ; $6b12: $f1
    add c                                         ; $6b13: $81
    adc h                                         ; $6b14: $8c
    db $fc                                        ; $6b15: $fc
    db $fc                                        ; $6b16: $fc
    nop                                           ; $6b17: $00
    ret z                                         ; $6b18: $c8

    res 0, b                                      ; $6b19: $cb $80
    or c                                          ; $6b1b: $b1

jr_0d5_6b1c:
    jr nz, jr_0d5_6b6e                            ; $6b1c: $20 $50

    ld b, $69                                     ; $6b1e: $06 $69
    nop                                           ; $6b20: $00
    nop                                           ; $6b21: $00
    ret nc                                        ; $6b22: $d0

    ld [bc], a                                    ; $6b23: $02
    ld b, l                                       ; $6b24: $45
    ld a, [hl+]                                   ; $6b25: $2a
    add b                                         ; $6b26: $80
    scf                                           ; $6b27: $37
    scf                                           ; $6b28: $37
    nop                                           ; $6b29: $00
    add e                                         ; $6b2a: $83
    ld c, e                                       ; $6b2b: $4b
    adc c                                         ; $6b2c: $89
    ld b, l                                       ; $6b2d: $45
    inc c                                         ; $6b2e: $0c
    ld d, b                                       ; $6b2f: $50
    inc e                                         ; $6b30: $1c
    add c                                         ; $6b31: $81
    ld [bc], a                                    ; $6b32: $02
    ld [$0955], sp                                ; $6b33: $08 $55 $09
    ld [de], a                                    ; $6b36: $12
    and c                                         ; $6b37: $a1
    ld a, [bc]                                    ; $6b38: $0a
    jr nc, jr_0d5_6b43                            ; $6b39: $30 $08

    rst $38                                       ; $6b3b: $ff
    nop                                           ; $6b3c: $00
    rst $38                                       ; $6b3d: $ff
    ccf                                           ; $6b3e: $3f
    ccf                                           ; $6b3f: $3f
    sbc a                                         ; $6b40: $9f
    ld e, a                                       ; $6b41: $5f
    rst $08                                       ; $6b42: $cf

jr_0d5_6b43:
    cpl                                           ; $6b43: $2f
    rst $00                                       ; $6b44: $c7
    nop                                           ; $6b45: $00
    scf                                           ; $6b46: $37
    add a                                         ; $6b47: $87
    ld h, a                                       ; $6b48: $67
    inc c                                         ; $6b49: $0c
    ld [hl-], a                                   ; $6b4a: $32
    add [hl]                                      ; $6b4b: $86
    adc c                                         ; $6b4c: $89
    ret nc                                        ; $6b4d: $d0

    nop                                           ; $6b4e: $00
    pop bc                                        ; $6b4f: $c1
    and b                                         ; $6b50: $a0
    adc b                                         ; $6b51: $88
    ld b, b                                       ; $6b52: $40
    db $10                                        ; $6b53: $10
    ld b, b                                       ; $6b54: $40
    inc d                                         ; $6b55: $14
    inc b                                         ; $6b56: $04
    nop                                           ; $6b57: $00
    ld [bc], a                                    ; $6b58: $02
    ld [hl+], a                                   ; $6b59: $22
    ld d, l                                       ; $6b5a: $55
    sub d                                         ; $6b5b: $92
    jr nz, @+$5a                                  ; $6b5c: $20 $58

    dec b                                         ; $6b5e: $05
    adc b                                         ; $6b5f: $88
    nop                                           ; $6b60: $00
    ld d, d                                       ; $6b61: $52
    ld c, d                                       ; $6b62: $4a
    and b                                         ; $6b63: $a0
    nop                                           ; $6b64: $00
    ld l, b                                       ; $6b65: $68
    ld [bc], a                                    ; $6b66: $02
    dec [hl]                                      ; $6b67: $35
    nop                                           ; $6b68: $00
    nop                                           ; $6b69: $00
    jr nz, jr_0d5_6b74                            ; $6b6a: $20 $08

    ld b, a                                       ; $6b6c: $47
    ld b, e                                       ; $6b6d: $43

jr_0d5_6b6e:
    inc h                                         ; $6b6e: $24
    jp nz, $8415                                  ; $6b6f: $c2 $15 $84

    nop                                           ; $6b72: $00
    ld c, d                                       ; $6b73: $4a

jr_0d5_6b74:
    adc b                                         ; $6b74: $88
    inc [hl]                                      ; $6b75: $34
    nop                                           ; $6b76: $00
    adc c                                         ; $6b77: $89
    jr nc, jr_0d5_6b7a                            ; $6b78: $30 $00

jr_0d5_6b7a:
    ld [bc], a                                    ; $6b7a: $02
    nop                                           ; $6b7b: $00
    inc [hl]                                      ; $6b7c: $34
    ld [c], a                                     ; $6b7d: $e2
    inc c                                         ; $6b7e: $0c
    rlca                                          ; $6b7f: $07
    rst $00                                       ; $6b80: $c7
    rlca                                          ; $6b81: $07
    rla                                           ; $6b82: $17
    inc hl                                        ; $6b83: $23
    nop                                           ; $6b84: $00
    ld b, e                                       ; $6b85: $43
    ld b, l                                       ; $6b86: $45
    xor c                                         ; $6b87: $a9
    adc [hl]                                      ; $6b88: $8e
    ld d, b                                       ; $6b89: $50
    inc c                                         ; $6b8a: $0c
    ld [bc], a                                    ; $6b8b: $02
    ld hl, sp+$00                                 ; $6b8c: $f8 $00
    inc b                                         ; $6b8e: $04
    ld [bc], a                                    ; $6b8f: $02
    ld hl, sp+$1f                                 ; $6b90: $f8 $1f
    jr nz, @-$78                                  ; $6b92: $20 $86

    adc c                                         ; $6b94: $89
    ld l, h                                       ; $6b95: $6c
    nop                                           ; $6b96: $00
    ld [de], a                                    ; $6b97: $12
    sub b                                         ; $6b98: $90
    add l                                         ; $6b99: $85
    xor b                                         ; $6b9a: $a8
    add b                                         ; $6b9b: $80
    ret z                                         ; $6b9c: $c8

    ret nz                                        ; $6b9d: $c0

    ldh [rP1], a                                  ; $6b9e: $e0 $00
    jp hl                                         ; $6ba0: $e9


    pop hl                                        ; $6ba1: $e1
    ld [c], a                                     ; $6ba2: $e2
    rst $00                                       ; $6ba3: $c7
    jr nz, jr_0d5_6ba6                            ; $6ba4: $20 $00

jr_0d5_6ba6:
    nop                                           ; $6ba6: $00
    jr nz, jr_0d5_6ba9                            ; $6ba7: $20 $00

jr_0d5_6ba9:
    sbc e                                         ; $6ba9: $9b
    add b                                         ; $6baa: $80
    ld d, b                                       ; $6bab: $50
    ret nz                                        ; $6bac: $c0

    dec h                                         ; $6bad: $25
    ld h, b                                       ; $6bae: $60
    adc h                                         ; $6baf: $8c
    jr nz, jr_0d5_6bb2                            ; $6bb0: $20 $00

jr_0d5_6bb2:
    ld b, b                                       ; $6bb2: $40
    add a                                         ; $6bb3: $87
    ld [$0e20], sp                                ; $6bb4: $08 $20 $0e
    jr nz, jr_0d5_6bf9                            ; $6bb7: $20 $40

    inc b                                         ; $6bb9: $04
    nop                                           ; $6bba: $00
    ld c, c                                       ; $6bbb: $49
    ld [$0055], sp                                ; $6bbc: $08 $55 $00
    nop                                           ; $6bbf: $00
    jr @+$23                                      ; $6bc0: $18 $21

    nop                                           ; $6bc2: $00
    nop                                           ; $6bc3: $00
    halt                                          ; $6bc4: $76
    ld [bc], a                                    ; $6bc5: $02
    call $0105                                    ; $6bc6: $cd $05 $01
    dec b                                         ; $6bc9: $05
    pop bc                                        ; $6bca: $c1
    push hl                                       ; $6bcb: $e5
    nop                                           ; $6bcc: $00
    ld de, $836b                                  ; $6bcd: $11 $6b $83
    dec bc                                        ; $6bd0: $0b
    ld b, e                                       ; $6bd1: $43
    sla e                                         ; $6bd2: $cb $23
    ld d, a                                       ; $6bd4: $57
    nop                                           ; $6bd5: $00
    add a                                         ; $6bd6: $87
    rla                                           ; $6bd7: $17
    ld b, a                                       ; $6bd8: $47
    db $eb                                        ; $6bd9: $eb
    ldh [$f4], a                                  ; $6bda: $e0 $f4
    pop af                                        ; $6bdc: $f1
    db $f4                                        ; $6bdd: $f4
    nop                                           ; $6bde: $00
    ldh a, [$f4]                                  ; $6bdf: $f0 $f4
    pop af                                        ; $6be1: $f1
    ld a, [$faf8]                                 ; $6be2: $fa $f8 $fa
    ld hl, sp-$05                                 ; $6be5: $f8 $fb
    nop                                           ; $6be7: $00
    ld hl, sp-$04                                 ; $6be8: $f8 $fc
    db $fc                                        ; $6bea: $fc
    nop                                           ; $6beb: $00
    sub b                                         ; $6bec: $90
    nop                                           ; $6bed: $00
    ld c, h                                       ; $6bee: $4c
    ld c, h                                       ; $6bef: $4c
    nop                                           ; $6bf0: $00
    sub d                                         ; $6bf1: $92
    adc h                                         ; $6bf2: $8c
    ld d, d                                       ; $6bf3: $52
    ld [$0094], sp                                ; $6bf4: $08 $94 $00
    nop                                           ; $6bf7: $00
    rst $38                                       ; $6bf8: $ff

jr_0d5_6bf9:
    nop                                           ; $6bf9: $00
    nop                                           ; $6bfa: $00
    nop                                           ; $6bfb: $00
    nop                                           ; $6bfc: $00
    inc bc                                        ; $6bfd: $03
    inc d                                         ; $6bfe: $14
    ld [bc], a                                    ; $6bff: $02
    ld [$0401], sp                                ; $6c00: $08 $01 $04
    ld h, h                                       ; $6c03: $64
    jr nz, @+$52                                  ; $6c04: $20 $50

    jr nc, jr_0d5_6c14                            ; $6c06: $30 $0c

    db $10                                        ; $6c08: $10
    jr @+$19                                      ; $6c09: $18 $17

    add a                                         ; $6c0b: $87
    nop                                           ; $6c0c: $00
    cpl                                           ; $6c0d: $2f
    rrca                                          ; $6c0e: $0f
    ld c, a                                       ; $6c0f: $4f
    adc a                                         ; $6c10: $8f
    ld c, a                                       ; $6c11: $4f
    adc a                                         ; $6c12: $8f
    rra                                           ; $6c13: $1f

jr_0d5_6c14:
    ld e, a                                       ; $6c14: $5f
    nop                                           ; $6c15: $00
    rra                                           ; $6c16: $1f
    rra                                           ; $6c17: $1f
    rst $18                                       ; $6c18: $df
    rra                                           ; $6c19: $1f
    ccf                                           ; $6c1a: $3f
    ccf                                           ; $6c1b: $3f

    db $00, $01, $dd, $00, $50, $ff, $01, $20, $fe, $01, $10, $f8, $f8, $fe, $fe, $00
    db $fd, $fc, $82, $80, $64, $11, $82, $45, $00, $0d, $82, $02, $41, $04, $30, $1f
    db $1f, $00, $4f, $af, $4f, $af, $c7, $27, $8b, $63, $02, $e4, $00, $02, $c8, $00
    db $84, $30, $28, $1f, $00, $1f, $67, $87, $33, $4b, $93, $2b, $f6, $00, $f0, $e8
    db $e1, $d0, $c7, $a0, $8c, $41, $10, $1a, $40, $00, $02, $00, $11, $01, $04, $01
    db $00, $f0, $00, $c0, $07, $18, $00, $80, $00, $01, $10, $12, $21, $20, $98, $70
    db $00, $01, $08, $00, $90, $6a, $00, $01, $00, $00, $23, $14, $00, $85, $02, $03
    db $53, $03, $a3, $0b, $03, $00, $05, $11, $c2, $20, $12, $28, $00, $8c, $08, $00
    db $80, $a0, $8f, $02, $08, $d0, $c4, $d1, $00, $c0, $c2, $d5, $c0, $ce, $d8, $c7
    db $33, $00, $80, $21, $98, $10, $28, $48, $35, $90, $00, $49, $20, $10, $40, $a4
    db $80, $52, $61, $00, $94, $94, $02, $e2, $01, $01, $14, $f0, $00, $05, $20, $48
    db $25, $00, $00, $34, $01, $00, $a1, $85, $31, $05, $11, $8b, $43, $cb, $00, $23
    db $0b, $03, $d7, $07, $57, $87, $c9, $00, $d6, $cd, $d0, $c0, $cd, $e0, $e5, $f2
    db $00, $f0, $fa, $f8, $fb, $f8, $fc, $fc, $00, $01, $84, $10, $08, $20, $14, $40
    db $2a, $8d, $00, $20, $00, $ff, $7a, $08, $40, $40, $98, $08, $04, $08, $08, $04
    db $01, $0a, $10, $18, $17, $07, $2f, $00, $8f, $2f, $0f, $2f, $0f, $5f, $1f, $5f
    db $00, $1f, $df, $1f, $3f, $3f

    nop                                           ; $6d22: $00
    ld bc, $00e1                                  ; $6d23: $01 $e1 $00
    ld b, b                                       ; $6d26: $40
    rst $38                                       ; $6d27: $ff
    ld bc, $fe40                                  ; $6d28: $01 $40 $fe
    cp $f9                                        ; $6d2b: $fe $f9
    ld hl, sp-$02                                 ; $6d2d: $f8 $fe
    cp $00                                        ; $6d2f: $fe $00
    db $fd                                        ; $6d31: $fd
    db $fc                                        ; $6d32: $fc
    di                                            ; $6d33: $f3
    ldh a, [$e8]                                  ; $6d34: $f0 $e8
    ldh [$9a], a                                  ; $6d36: $e0 $9a
    add c                                         ; $6d38: $81
    nop                                           ; $6d39: $00
    nop                                           ; $6d3a: $00
    inc a                                         ; $6d3b: $3c
    add b                                         ; $6d3c: $80
    ld hl, $400f                                  ; $6d3d: $21 $0f $40
    ld a, a                                       ; $6d40: $7f
    ld a, a                                       ; $6d41: $7f
    nop                                           ; $6d42: $00
    cp a                                          ; $6d43: $bf
    ccf                                           ; $6d44: $3f
    rrca                                          ; $6d45: $0f
    rrca                                          ; $6d46: $0f
    ld h, a                                       ; $6d47: $67
    rlca                                          ; $6d48: $07
    sub e                                         ; $6d49: $93
    ld h, e                                       ; $6d4a: $63
    ld [bc], a                                    ; $6d4b: $02
    ld [$0b70], sp                                ; $6d4c: $08 $70 $0b
    jr nc, jr_0d5_6d51                            ; $6d4f: $30 $00

jr_0d5_6d51:
    and h                                         ; $6d51: $a4
    jr nc, jr_0d5_6d9c                            ; $6d52: $30 $48

    ld a, a                                       ; $6d54: $7f
    ld [$9f7f], sp                                ; $6d55: $08 $7f $9f
    rra                                           ; $6d58: $1f
    or $2c                                        ; $6d59: $f6 $2c
    nop                                           ; $6d5b: $00
    rst $10                                       ; $6d5c: $d7
    ret nz                                        ; $6d5d: $c0

    xor a                                         ; $6d5e: $af
    nop                                           ; $6d5f: $00
    add b                                         ; $6d60: $80
    ld c, b                                       ; $6d61: $48
    nop                                           ; $6d62: $00
    ld b, a                                       ; $6d63: $47
    db $10                                        ; $6d64: $10
    ld b, b                                       ; $6d65: $40
    add hl, de                                    ; $6d66: $19
    ld b, d                                       ; $6d67: $42
    nop                                           ; $6d68: $00
    add hl, de                                    ; $6d69: $19
    ld [de], a                                    ; $6d6a: $12
    ret nz                                        ; $6d6b: $c0

    ld a, [bc]                                    ; $6d6c: $0a
    ld b, b                                       ; $6d6d: $40
    sbc a                                         ; $6d6e: $9f
    nop                                           ; $6d6f: $00
    ld l, h                                       ; $6d70: $6c
    nop                                           ; $6d71: $00
    inc bc                                        ; $6d72: $03
    or c                                          ; $6d73: $b1
    ld b, [hl]                                    ; $6d74: $46
    inc de                                        ; $6d75: $13
    and h                                         ; $6d76: $a4
    ld d, b                                       ; $6d77: $50
    ld [$0007], sp                                ; $6d78: $08 $07 $00
    ld e, b                                       ; $6d7b: $58
    nop                                           ; $6d7c: $00
    ld l, e                                       ; $6d7d: $6b
    sub b                                         ; $6d7e: $90
    dec bc                                        ; $6d7f: $0b
    call nc, Call_0d5_4803                        ; $6d80: $d4 $03 $48
    nop                                           ; $6d83: $00
    add l                                         ; $6d84: $85
    ld [hl], $80                                  ; $6d85: $36 $80
    ld h, c                                       ; $6d87: $61
    ld a, [bc]                                    ; $6d88: $0a
    nop                                           ; $6d89: $00
    dec c                                         ; $6d8a: $0d
    ldh [rP1], a                                  ; $6d8b: $e0 $00
    ld d, $6f                                     ; $6d8d: $16 $6f
    rrca                                          ; $6d8f: $0f
    rla                                           ; $6d90: $17
    add a                                         ; $6d91: $87
    dec bc                                        ; $6d92: $0b
    db $e3                                        ; $6d93: $e3
    dec b                                         ; $6d94: $05
    nop                                           ; $6d95: $00
    pop af                                        ; $6d96: $f1
    ld [bc], a                                    ; $6d97: $02
    ld hl, sp+$02                                 ; $6d98: $f8 $02
    ld a, b                                       ; $6d9a: $78
    add d                                         ; $6d9b: $82

jr_0d5_6d9c:
    jr c, jr_0d5_6de0                             ; $6d9c: $38 $42

    nop                                           ; $6d9e: $00
    sbc b                                         ; $6d9f: $98
    and h                                         ; $6da0: $a4
    add d                                         ; $6da1: $82
    and b                                         ; $6da2: $a0
    add [hl]                                      ; $6da3: $86
    xor c                                         ; $6da4: $a9
    add h                                         ; $6da5: $84
    ret nc                                        ; $6da6: $d0

    nop                                           ; $6da7: $00
    push bc                                       ; $6da8: $c5
    ret nc                                        ; $6da9: $d0

    add $d0                                       ; $6daa: $c6 $d0
    add $e8                                       ; $6dac: $c6 $e8
    ld [c], a                                     ; $6dae: $e2

jr_0d5_6daf:
    add sp, $00                                   ; $6daf: $e8 $00
    db $e3                                        ; $6db1: $e3
    adc h                                         ; $6db2: $8c
    ld h, b                                       ; $6db3: $60
    add c                                         ; $6db4: $81
    ld c, b                                       ; $6db5: $48
    ld a, [hl-]                                   ; $6db6: $3a
    add c                                         ; $6db7: $81
    ld d, b                                       ; $6db8: $50
    nop                                           ; $6db9: $00
    cpl                                           ; $6dba: $2f
    and b                                         ; $6dbb: $a0
    ld d, a                                       ; $6dbc: $57
    nop                                           ; $6dbd: $00
    ei                                            ; $6dbe: $fb
    nop                                           ; $6dbf: $00
    ldh a, [rDIV]                                 ; $6dc0: $f0 $04
    nop                                           ; $6dc2: $00
    ld h, d                                       ; $6dc3: $62
    jr @+$05                                      ; $6dc4: $18 $03

    db $ec                                        ; $6dc6: $ec
    ld bc, $8964                                  ; $6dc7: $01 $64 $89
    ld a, [bc]                                    ; $6dca: $0a
    nop                                           ; $6dcb: $00
    db $e4                                        ; $6dcc: $e4
    ld b, $88                                     ; $6dcd: $06 $88
    inc d                                         ; $6dcf: $14
    jp z, $912c                                   ; $6dd0: $ca $2c $91

    ld d, h                                       ; $6dd3: $54
    nop                                           ; $6dd4: $00
    add hl, hl                                    ; $6dd5: $29
    dec b                                         ; $6dd6: $05
    ld d, c                                       ; $6dd7: $51
    ld h, l                                       ; $6dd8: $65
    add c                                         ; $6dd9: $81
    dec h                                         ; $6dda: $25
    ld b, c                                       ; $6ddb: $41
    dec bc                                        ; $6ddc: $0b
    nop                                           ; $6ddd: $00
    add e                                         ; $6dde: $83
    dec bc                                        ; $6ddf: $0b

jr_0d5_6de0:
    and e                                         ; $6de0: $a3
    dec bc                                        ; $6de1: $0b
    jp $8757                                      ; $6de2: $c3 $57 $87


    ld d, a                                       ; $6de5: $57
    inc b                                         ; $6de6: $04
    add a                                         ; $6de7: $87
    add sp, -$1d                                  ; $6de8: $e8 $e3
    db $f4                                        ; $6dea: $f4
    pop af                                        ; $6deb: $f1
    ld [bc], a                                    ; $6dec: $02
    ld [$f9fa], sp                                ; $6ded: $08 $fa $f9
    nop                                           ; $6df0: $00
    ld a, [$fbf8]                                 ; $6df1: $fa $f8 $fb
    ld hl, sp-$04                                 ; $6df4: $f8 $fc
    db $fc                                        ; $6df6: $fc
    inc c                                         ; $6df7: $0c
    add d                                         ; $6df8: $82
    nop                                           ; $6df9: $00
    ld l, b                                       ; $6dfa: $68
    add h                                         ; $6dfb: $84
    ld d, b                                       ; $6dfc: $50
    adc d                                         ; $6dfd: $8a
    inc h                                         ; $6dfe: $24
    sub d                                         ; $6dff: $92
    ld c, [hl]                                    ; $6e00: $4e
    ld hl, $0000                                  ; $6e01: $21 $00 $00
    nop                                           ; $6e04: $00
    rst $38                                       ; $6e05: $ff
    nop                                           ; $6e06: $00
    nop                                           ; $6e07: $00
    nop                                           ; $6e08: $00
    ld h, b                                       ; $6e09: $60
    inc bc                                        ; $6e0a: $03
    nop                                           ; $6e0b: $00
    ld bc, $2296                                  ; $6e0c: $01 $96 $22
    call z, $9845                                 ; $6e0f: $cc $45 $98
    ld [$8071], sp                                ; $6e12: $08 $71 $80
    db $10                                        ; $6e15: $10
    jr jr_0d5_6daf                                ; $6e16: $18 $97

    rlca                                          ; $6e18: $07
    cpl                                           ; $6e19: $2f
    rrca                                          ; $6e1a: $0f
    cpl                                           ; $6e1b: $2f
    adc a                                         ; $6e1c: $8f
    cpl                                           ; $6e1d: $2f
    nop                                           ; $6e1e: $00
    adc a                                         ; $6e1f: $8f
    ld e, a                                       ; $6e20: $5f
    rra                                           ; $6e21: $1f
    ld e, a                                       ; $6e22: $5f
    rra                                           ; $6e23: $1f
    rst $18                                       ; $6e24: $df
    rra                                           ; $6e25: $1f
    ccf                                           ; $6e26: $3f
    nop                                           ; $6e27: $00
    ccf                                           ; $6e28: $3f

    db $00, $01, $ed, $00, $41, $ff, $01, $10, $fe, $fe, $fc, $fd, $fd, $06, $00, $00
    db $e9, $e8, $ee, $ee, $e4, $f4, $e2, $f0, $00, $64, $70, $10, $81, $14, $41, $94
    db $00, $00, $10, $08, $7f, $ff, $bb, $3b, $01, $c3, $00, $83, $27, $80, $28, $80
    db $2b, $83, $2c, $20, $84, $10, $30, $18, $ff, $ff, $3f, $3f, $1f, $00, $bf, $7f
    db $7f, $1f, $1f, $e6, $c0, $e8, $00, $c1, $e2, $c1, $a1, $8c, $10, $26, $48, $00
    db $13, $44, $08, $43, $14, $08, $15, $09, $00, $40, $05, $88, $04, $c8, $80, $05
    db $49, $00, $12, $0a, $b0, $83, $48, $84, $68, $18, $00, $a1, $20, $03, $03, $0c
    db $8c, $52, $c0, $00, $21, $00, $4f, $03, $a4, $0f, $6f, $57, $00, $87, $8b, $43
    db $05, $b1, $12, $60, $22, $00, $d0, $c2, $28, $02, $98, $a0, $88, $a3, $00, $88
    db $a1, $8a, $d0, $c0, $c4, $ca, $ce, $00, $c0, $e4, $ea, $e0, $e1, $01, $22, $01
    db $00, $00, $00, $0a, $01, $82, $03, $a4, $01, $00, $52, $00, $88, $00, $62, $c0
    db $00, $82, $00, $45, $07, $10, $02, $c5, $80, $10, $00, $00, $57, $10, $85, $10
    db $26, $05, $71, $15, $00, $61, $35, $01, $0b, $43, $0b, $03, $0b, $00, $43, $17
    db $47, $17, $07, $e8, $e1, $f4, $00, $f0, $f4, $f1, $f4, $f1, $fa, $f8, $fa, $00
    db $f8, $fb, $f8, $fc, $fc, $22, $98, $10, $00, $8d, $09, $44, $00, $a1, $00, $c8
    db $00, $00, $00, $ff, $00, $00, $00, $02, $14, $82, $01, $4c, $c4, $08, $88, $51
    db $00, $33, $10, $18, $08, $17, $47, $2f, $8f, $02, $08, $5f, $1f, $5f, $00, $1f
    db $df, $1f, $3f, $3f

    nop                                           ; $6f3d: $00
    ld bc, $00ee                                  ; $6f3e: $01 $ee $00
    nop                                           ; $6f41: $00
    rst $38                                       ; $6f42: $ff
    rst $38                                       ; $6f43: $ff
    db $fc                                        ; $6f44: $fc
    db $fc                                        ; $6f45: $fc
    ld a, [$f0f9]                                 ; $6f46: $fa $f9 $f0
    db $f4                                        ; $6f49: $f4
    nop                                           ; $6f4a: $00
    di                                            ; $6f4b: $f3
    di                                            ; $6f4c: $f3
    rst $30                                       ; $6f4d: $f7
    rst $30                                       ; $6f4e: $f7
    cp $fe                                        ; $6f4f: $fe $fe
    db $fd                                        ; $6f51: $fd
    db $fc                                        ; $6f52: $fc
    nop                                           ; $6f53: $00
    add hl, de                                    ; $6f54: $19
    add hl, de                                    ; $6f55: $19
    ldh [rP1], a                                  ; $6f56: $e0 $00
    ld [$04f0], sp                                ; $6f58: $08 $f0 $04
    ld [$a000], sp                                ; $6f5b: $08 $00 $a0
    add l                                         ; $6f5e: $85
    ld b, b                                       ; $6f5f: $40
    ld sp, $4980                                  ; $6f60: $31 $80 $49
    ld [$0092], sp                                ; $6f63: $08 $92 $00
    inc bc                                        ; $6f66: $03
    dec de                                        ; $6f67: $1b
    jp Jump_000_073b                              ; $6f68: $c3 $3b $07


    or a                                          ; $6f6b: $b7
    ld [bc], a                                    ; $6f6c: $02
    cp d                                          ; $6f6d: $ba
    nop                                           ; $6f6e: $00
    nop                                           ; $6f6f: $00
    sbc h                                         ; $6f70: $9c
    ld c, $50                                     ; $6f71: $0e $50
    nop                                           ; $6f73: $00
    ld e, h                                       ; $6f74: $5c
    nop                                           ; $6f75: $00

jr_0d5_6f76:
    ld l, h                                       ; $6f76: $6c
    nop                                           ; $6f77: $00
    rst $38                                       ; $6f78: $ff
    rst $38                                       ; $6f79: $ff
    sbc a                                         ; $6f7a: $9f
    sbc a                                         ; $6f7b: $9f
    ld h, a                                       ; $6f7c: $67
    rlca                                          ; $6f7d: $07
    dec de                                        ; $6f7e: $1b
    ld h, e                                       ; $6f7f: $63
    nop                                           ; $6f80: $00
    ld bc, $7885                                  ; $6f81: $01 $85 $78
    ld a, d                                       ; $6f84: $7a
    db $fc                                        ; $6f85: $fc
    db $fc                                        ; $6f86: $fc
    rrca                                          ; $6f87: $0f
    rrca                                          ; $6f88: $0f
    nop                                           ; $6f89: $00
    ld sp, hl                                     ; $6f8a: $f9
    ld hl, sp-$10                                 ; $6f8b: $f8 $f0
    di                                            ; $6f8d: $f3
    add sp, -$1e                                  ; $6f8e: $e8 $e2
    ret nc                                        ; $6f90: $d0

    jp nz, Jump_000_2008                          ; $6f91: $c2 $08 $20

    adc c                                         ; $6f94: $89
    jr nz, @-$71                                  ; $6f95: $20 $8d

    ld [bc], a                                    ; $6f97: $02
    nop                                           ; $6f98: $00
    adc a                                         ; $6f99: $8f
    ld a, [hl+]                                   ; $6f9a: $2a
    add b                                         ; $6f9b: $80
    nop                                           ; $6f9c: $00
    ld b, c                                       ; $6f9d: $41
    inc b                                         ; $6f9e: $04
    add d                                         ; $6f9f: $82
    ld [$2906], sp                                ; $6fa0: $08 $06 $29
    nop                                           ; $6fa3: $00
    ld b, [hl]                                    ; $6fa4: $46
    nop                                           ; $6fa5: $00
    ld bc, $014c                   ; $6fa6: $01 $4c $01
    call nz, $db00                                ; $6fa9: $c4 $00 $db
    ld c, $60                                     ; $6fac: $0e $60
    nop                                           ; $6fae: $00
    nop                                           ; $6faf: $00
    dec [hl]                                      ; $6fb0: $35
    adc $01                                       ; $6fb1: $ce $01
    ld h, b                                       ; $6fb3: $60
    inc b                                         ; $6fb4: $04
    and c                                         ; $6fb5: $a1
    inc b                                         ; $6fb6: $04
    nop                                           ; $6fb7: $00
    ld [de], a                                    ; $6fb8: $12
    add b                                         ; $6fb9: $80
    jr c, @-$7e                                   ; $6fba: $38 $80

    jr nc, @-$7c                                  ; $6fbc: $30 $82

    ld b, a                                       ; $6fbe: $47
    sub a                                         ; $6fbf: $97
    nop                                           ; $6fc0: $00
    inc de                                        ; $6fc1: $13
    ld c, e                                       ; $6fc2: $4b
    add hl, bc                                    ; $6fc3: $09
    ld b, l                                       ; $6fc4: $45
    ld b, h                                       ; $6fc5: $44
    ld [de], a                                    ; $6fc6: $12
    ld b, c                                       ; $6fc7: $41
    jr jr_0d5_6fca                                ; $6fc8: $18 $00

jr_0d5_6fca:
    ld b, c                                       ; $6fca: $41
    inc e                                         ; $6fcb: $1c
    ld bc, $019c                                  ; $6fcc: $01 $9c $01
    cp h                                          ; $6fcf: $bc
    ret nc                                        ; $6fd0: $d0

    rst $00                                       ; $6fd1: $c7
    ld [bc], a                                    ; $6fd2: $02
    ret nc                                        ; $6fd3: $d0

    add $d1                                       ; $6fd4: $c6 $d1
    call nz, $e1e8                                ; $6fd6: $c4 $e8 $e1
    ld [bc], a                                    ; $6fd9: $02
    ld [$00f4], sp                                ; $6fda: $08 $f4 $00
    pop af                                        ; $6fdd: $f1
    db $f4                                        ; $6fde: $f4
    ldh a, [rNR10]                                ; $6fdf: $f0 $10
    xor d                                         ; $6fe1: $aa
    jr nc, jr_0d5_6fee                            ; $6fe2: $30 $0a

    inc d                                         ; $6fe4: $14
    nop                                           ; $6fe5: $00
    and b                                         ; $6fe6: $a0
    adc [hl]                                      ; $6fe7: $8e
    nop                                           ; $6fe8: $00
    add h                                         ; $6fe9: $84
    jr z, jr_0d5_702d                             ; $6fea: $28 $41

    sub b                                         ; $6fec: $90
    nop                                           ; $6fed: $00

jr_0d5_6fee:
    nop                                           ; $6fee: $00
    call $f600                                    ; $6fef: $cd $00 $f6
    jr c, jr_0d5_6f76                             ; $6ff2: $38 $82

    nop                                           ; $6ff4: $00
    add $10                                       ; $6ff5: $c6 $10
    nop                                           ; $6ff7: $00
    rst $00                                       ; $6ff8: $c7
    nop                                           ; $6ff9: $00
    ld bc, $00b6                                  ; $6ffa: $01 $b6 $00
    add d                                         ; $6ffd: $82
    inc d                                         ; $6ffe: $14
    add b                                         ; $6fff: $80
    nop                                           ; $7000: $00
    rlca                                          ; $7001: $07
    ld b, b                                       ; $7002: $40
    dec sp                                        ; $7003: $3b
    ld [bc], a                                    ; $7004: $02
    cp b                                          ; $7005: $b8
    ld [bc], a                                    ; $7006: $02
    ld hl, sp+$02                                 ; $7007: $f8 $02
    db $10                                        ; $7009: $10
    ld hl, sp+$05                                 ; $700a: $f8 $05
    pop af                                        ; $700c: $f1
    ld [bc], a                                    ; $700d: $02
    nop                                           ; $700e: $00
    ld [hl], c                                    ; $700f: $71

jr_0d5_7010:
    dec bc                                        ; $7010: $0b
    ld h, e                                       ; $7011: $63
    dec bc                                        ; $7012: $0b
    inc b                                         ; $7013: $04
    inc hl                                        ; $7014: $23
    db $f4                                        ; $7015: $f4
    pop af                                        ; $7016: $f1
    ld a, [$02f8]                                 ; $7017: $fa $f8 $02
    ld [$fcfd], sp                                ; $701a: $08 $fd $fc
    add b                                         ; $701d: $80
    ld [bc], a                                    ; $701e: $02
    ld [$fefe], sp                                ; $701f: $08 $fe $fe
    nop                                           ; $7022: $00
    ld a, [de]                                    ; $7023: $1a
    nop                                           ; $7024: $00
    add h                                         ; $7025: $84
    nop                                           ; $7026: $00
    nop                                           ; $7027: $00
    or b                                          ; $7028: $b0
    nop                                           ; $7029: $00
    cp l                                          ; $702a: $bd
    nop                                           ; $702b: $00
    dec e                                         ; $702c: $1d

jr_0d5_702d:
    nop                                           ; $702d: $00
    nop                                           ; $702e: $00
    rst $38                                       ; $702f: $ff
    nop                                           ; $7030: $00
    nop                                           ; $7031: $00
    nop                                           ; $7032: $00
    nop                                           ; $7033: $00
    jr nz, jr_0d5_7010                            ; $7034: $20 $da

    nop                                           ; $7036: $00
    jr nz, jr_0d5_7039                            ; $7037: $20 $00

jr_0d5_7039:
    inc b                                         ; $7039: $04
    sbc b                                         ; $703a: $98
    adc b                                         ; $703b: $88
    ld [de], a                                    ; $703c: $12
    ldh a, [$0e]                                  ; $703d: $f0 $0e
    db $10                                        ; $703f: $10
    jr jr_0d5_704d                                ; $7040: $18 $0b

    add e                                         ; $7042: $83
    nop                                           ; $7043: $00
    rla                                           ; $7044: $17
    add a                                         ; $7045: $87
    rla                                           ; $7046: $17
    rlca                                          ; $7047: $07
    rla                                           ; $7048: $17
    rlca                                          ; $7049: $07
    cpl                                           ; $704a: $2f
    rrca                                          ; $704b: $0f
    nop                                           ; $704c: $00

jr_0d5_704d:
    cpl                                           ; $704d: $2f
    rrca                                          ; $704e: $0f
    rst $28                                       ; $704f: $ef
    rrca                                          ; $7050: $0f
    rra                                           ; $7051: $1f
    rra                                           ; $7052: $1f
    nop                                           ; $7053: $00
    ld bc, $00f2                                  ; $7054: $01 $f2 $00
    ld b, b                                       ; $7057: $40
    rst $38                                       ; $7058: $ff
    ld bc, $f710                                  ; $7059: $01 $10 $f7
    rst $30                                       ; $705c: $f7
    ld a, [c]                                     ; $705d: $f2
    ld a, [c]                                     ; $705e: $f2
    ld [c], a                                     ; $705f: $e2
    ld [$c800], a                                 ; $7060: $ea $00 $c8
    ret nc                                        ; $7063: $d0

    ret c                                         ; $7064: $d8

    call nz, $fefe                                ; $7065: $c4 $fe $fe
    pop af                                        ; $7068: $f1
    ldh a, [rP1]                                  ; $7069: $f0 $00
    add b                                         ; $706b: $80
    add b                                         ; $706c: $80
    jr nz, jr_0d5_70c3                            ; $706d: $20 $54

    ld a, l                                       ; $706f: $7d
    add d                                         ; $7070: $82
    ret c                                         ; $7071: $d8

    jr nz, jr_0d5_7074                            ; $7072: $20 $00

jr_0d5_7074:
    ld h, $50                                     ; $7074: $26 $50
    adc $20                                       ; $7076: $ce $20
    ld a, a                                       ; $7078: $7f
    ld a, a                                       ; $7079: $7f
    cp a                                          ; $707a: $bf
    ccf                                           ; $707b: $3f
    nop                                           ; $707c: $00
    ld b, a                                       ; $707d: $47
    rlca                                          ; $707e: $07
    inc bc                                        ; $707f: $03
    dec bc                                        ; $7080: $0b
    inc bc                                        ; $7081: $03
    dec de                                        ; $7082: $1b

jr_0d5_7083:
    stop                                          ; $7083: $10 $00
    inc c                                         ; $7085: $0c
    inc de                                        ; $7086: $13
    and b                                         ; $7087: $a0
    and b                                         ; $7088: $a0
    db $10                                        ; $7089: $10
    jr nc, jr_0d5_70a4                            ; $708a: $30 $18

    ld [hl], $08                                  ; $708c: $36 $08
    rst $18                                       ; $708e: $df
    rst $18                                       ; $708f: $df
    nop                                           ; $7090: $00
    ld c, a                                       ; $7091: $4f
    ld c, a                                       ; $7092: $4f
    add a                                         ; $7093: $87
    rla                                           ; $7094: $17
    db $dd                                        ; $7095: $dd
    jp nz, $d1ce                                  ; $7096: $c2 $ce $d1

    nop                                           ; $7099: $00
    rst $00                                       ; $709a: $c7
    ret z                                         ; $709b: $c8

    add d                                         ; $709c: $82
    add l                                         ; $709d: $85
    rla                                           ; $709e: $17
    ld [$010e], sp                                ; $709f: $08 $0e $01
    nop                                           ; $70a2: $00
    dec b                                         ; $70a3: $05

jr_0d5_70a4:
    ld a, [bc]                                    ; $70a4: $0a
    dec l                                         ; $70a5: $2d
    db $10                                        ; $70a6: $10
    inc e                                         ; $70a7: $1c
    add d                                         ; $70a8: $82
    jr c, jr_0d5_70eb                             ; $70a9: $38 $40

    nop                                           ; $70ab: $00
    ld l, b                                       ; $70ac: $68
    ld [bc], a                                    ; $70ad: $02
    ld b, b                                       ; $70ae: $40
    add hl, hl                                    ; $70af: $29
    nop                                           ; $70b0: $00
    ld b, c                                       ; $70b1: $41
    ld bc, $0012                                  ; $70b2: $01 $12 $00
    ld b, b                                       ; $70b5: $40
    adc l                                         ; $70b6: $8d
    adc h                                         ; $70b7: $8c
    ld [de], a                                    ; $70b8: $12
    jr nz, jr_0d5_70ff                            ; $70b9: $20 $44

    ld h, b                                       ; $70bb: $60
    ld c, $00                                     ; $70bc: $0e $00
    ld b, b                                       ; $70be: $40
    and a                                         ; $70bf: $a7
    ret nz                                        ; $70c0: $c0

    jr jr_0d5_7083                                ; $70c1: $18 $c0

jr_0d5_70c3:
    ld b, $8f                                     ; $70c3: $06 $8f
    ld b, b                                       ; $70c5: $40
    nop                                           ; $70c6: $00
    ld [bc], a                                    ; $70c7: $02
    add h                                         ; $70c8: $84
    ld hl, $5708                                  ; $70c9: $21 $08 $57
    rlca                                          ; $70cc: $07
    daa                                           ; $70cd: $27
    rla                                           ; $70ce: $17
    nop                                           ; $70cf: $00
    ld c, e                                       ; $70d0: $4b
    inc hl                                        ; $70d1: $23

jr_0d5_70d2:
    dec b                                         ; $70d2: $05
    ld b, c                                       ; $70d3: $41
    ld b, d                                       ; $70d4: $42
    ld [$4822], sp                                ; $70d5: $08 $22 $48
    nop                                           ; $70d8: $00
    ld b, d                                       ; $70d9: $42
    jr nz, @+$24                                  ; $70da: $20 $22

    db $10                                        ; $70dc: $10
    adc l                                         ; $70dd: $8d
    add b                                         ; $70de: $80
    adc c                                         ; $70df: $89
    add d                                         ; $70e0: $82
    nop                                           ; $70e1: $00
    add d                                         ; $70e2: $82
    and l                                         ; $70e3: $a5
    cp h                                          ; $70e4: $bc
    add d                                         ; $70e5: $82
    sub c                                         ; $70e6: $91
    xor b                                         ; $70e7: $a8
    pop bc                                        ; $70e8: $c1
    ret nz                                        ; $70e9: $c0

    nop                                           ; $70ea: $00

jr_0d5_70eb:
    add sp, -$1f                                  ; $70eb: $e8 $e1
    add sp, -$20                                  ; $70ed: $e8 $e0
    rla                                           ; $70ef: $17
    jr nz, jr_0d5_7114                            ; $70f0: $20 $22

    ld d, l                                       ; $70f2: $55
    nop                                           ; $70f3: $00
    ld h, b                                       ; $70f4: $60
    nop                                           ; $70f5: $00
    db $e4                                        ; $70f6: $e4
    add hl, bc                                    ; $70f7: $09
    call z, $cd20                                 ; $70f8: $cc $20 $cd
    nop                                           ; $70fb: $00
    nop                                           ; $70fc: $00
    add $28                                       ; $70fd: $c6 $28

jr_0d5_70ff:
    db $e3                                        ; $70ff: $e3
    inc d                                         ; $7100: $14
    ld b, b                                       ; $7101: $40
    and a                                         ; $7102: $a7
    ldh [rTMA], a                                 ; $7103: $e0 $06
    nop                                           ; $7105: $00
    ld [hl], b                                    ; $7106: $70
    add c                                         ; $7107: $81
    and c                                         ; $7108: $a1
    inc d                                         ; $7109: $14
    ld de, $23a2                                  ; $710a: $11 $a2 $23
    ld b, h                                       ; $710d: $44
    nop                                           ; $710e: $00
    ld bc, $9802                                  ; $710f: $01 $02 $98
    inc h                                         ; $7112: $24
    dec b                                         ; $7113: $05

jr_0d5_7114:
    ld b, c                                       ; $7114: $41
    dec b                                         ; $7115: $05
    pop hl                                        ; $7116: $e1
    nop                                           ; $7117: $00
    pop bc                                        ; $7118: $c1
    add hl, hl                                    ; $7119: $29
    pop bc                                        ; $711a: $c1
    add hl, hl                                    ; $711b: $29
    ret                                           ; $711c: $c9


    dec d                                         ; $711d: $15
    add e                                         ; $711e: $83
    ld c, e                                       ; $711f: $4b
    nop                                           ; $7120: $00
    inc bc                                        ; $7121: $03
    adc e                                         ; $7122: $8b
    inc bc                                        ; $7123: $03
    inc hl                                        ; $7124: $23
    add sp, -$20                                  ; $7125: $e8 $e0
    ld a, [c]                                     ; $7127: $f2
    ldh a, [rLCDC]                                ; $7128: $f0 $40
    pop af                                        ; $712a: $f1
    inc bc                                        ; $712b: $03
    nop                                           ; $712c: $00
    ld hl, sp-$08                                 ; $712d: $f8 $f8
    ld a, [$fbf8]                                 ; $712f: $fa $f8 $fb
    ld hl, sp+$00                                 ; $7132: $f8 $00
    db $fc                                        ; $7134: $fc
    db $fc                                        ; $7135: $fc
    ld d, c                                       ; $7136: $51
    ld a, [hl+]                                   ; $7137: $2a
    nop                                           ; $7138: $00
    ld e, c                                       ; $7139: $59
    ld d, b                                       ; $713a: $50
    ld [bc], a                                    ; $713b: $02
    nop                                           ; $713c: $00
    add b                                         ; $713d: $80
    ld d, b                                       ; $713e: $50
    db $10                                        ; $713f: $10
    adc d                                         ; $7140: $8a
    ld a, [bc]                                    ; $7141: $0a
    inc b                                         ; $7142: $04
    ret nz                                        ; $7143: $c0

    jr nz, jr_0d5_7146                            ; $7144: $20 $00

jr_0d5_7146:
    nop                                           ; $7146: $00
    nop                                           ; $7147: $00
    adc h                                         ; $7148: $8c
    ld d, b                                       ; $7149: $50
    sbc b                                         ; $714a: $98
    inc h                                         ; $714b: $24
    or b                                          ; $714c: $b0
    ld c, b                                       ; $714d: $48
    nop                                           ; $714e: $00
    add b                                         ; $714f: $80
    jr nc, jr_0d5_70d2                            ; $7150: $30 $80

    ld c, c                                       ; $7152: $49
    ld [hl], b                                    ; $7153: $70
    adc b                                         ; $7154: $88
    inc hl                                        ; $7155: $23
    ld d, b                                       ; $7156: $50
    nop                                           ; $7157: $00
    nop                                           ; $7158: $00
    nop                                           ; $7159: $00
    and e                                         ; $715a: $a3
    inc de                                        ; $715b: $13
    rla                                           ; $715c: $17
    daa                                           ; $715d: $27
    xor e                                         ; $715e: $ab
    inc de                                        ; $715f: $13
    nop                                           ; $7160: $00
    dec d                                         ; $7161: $15
    add hl, hl                                    ; $7162: $29
    adc c                                         ; $7163: $89
    dec d                                         ; $7164: $15
    dec b                                         ; $7165: $05
    add hl, de                                    ; $7166: $19
    add c                                         ; $7167: $81
    ld bc, $3f00                                  ; $7168: $01 $00 $3f
    ccf                                           ; $716b: $3f

    db $00, $01, $e5, $00, $40, $ff, $01, $20, $fe, $fe, $f9, $f8, $f5, $f0, $00, $e5
    db $e0, $bc, $bc, $1b, $58, $44, $00, $00, $58, $03, $40, $04, $00, $59, $03, $80
    db $00, $60, $00, $7b, $7b, $b1, $35, $45, $01, $00, $35, $81, $04, $40, $01, $34
    db $81, $02, $20, $0d, $00, $30, $28, $ff, $ff, $3f, $3f, $5f, $00, $1f, $4f, $0f
    db $c4, $d1, $d0, $c4, $c0, $00, $d3, $a6, $81, $46, $08, $40, $04, $48, $00, $00
    db $48, $04, $87, $48, $0f, $90, $40, $00, $1f, $40, $28, $82, $61, $0f, $40, $11
    db $00, $0c, $15, $48, $c2, $25, $e0, $12, $04, $00, $f1, $04, $29, $82, $0c, $e0
    db $04, $10, $00, $62, $50, $25, $47, $17, $17, $47, $03, $00, $93, $c5, $01, $c2
    db $28, $02, $48, $22, $00, $08, $22, $48, $a8, $84, $ac, $81, $a8, $10, $85, $d4
    db $c1, $02, $08, $e8, $e1, $e8, $e1, $00, $4f, $10, $0b, $24, $24, $08, $00, $75
    db $00, $01, $02, $00, $e4, $07, $c0, $07, $10, $00, $e4, $11, $a0, $49, $48, $21
    db $00, $5d, $00, $00, $81, $00, $4f, $c0, $07, $c0, $13, $00, $25, $41, $65, $01
    db $25, $41, $6b, $03, $80, $02, $08, $17, $47, $17, $47, $e8, $e0, $f5, $00, $f0
    db $f4, $f1, $f4, $f0, $f8, $f8, $fa, $00, $f8, $fb, $f8, $fc, $fc, $33, $08, $84
    db $00, $20, $47, $98, $01, $c6, $00, $8c, $00, $00, $00, $ff, $00, $00, $00, $98
    db $20, $43, $01, $08, $c4, $33, $00, $e6, $00, $62, $10, $18, $08, $17, $47, $2f
    db $0f, $02, $08, $5f, $1f, $5f, $00, $1f, $df, $1f, $3f, $3f

    nop                                           ; $7278: $00
    ld bc, $00e3                                  ; $7279: $01 $e3 $00
    ld b, b                                       ; $727c: $40
    rst $38                                       ; $727d: $ff
    ld bc, $0030                                  ; $727e: $01 $30 $00
    nop                                           ; $7281: $00
    add e                                         ; $7282: $83
    sub h                                         ; $7283: $94
    ldh [$e0], a                                  ; $7284: $e0 $e0
    nop                                           ; $7286: $00
    cp $fe                                        ; $7287: $fe $fe
    db $fc                                        ; $7289: $fc
    db $fd                                        ; $728a: $fd
    ldh a, [$f1]                                  ; $728b: $f0 $f1
    db $ec                                        ; $728d: $ec
    pop hl                                        ; $728e: $e1
    nop                                           ; $728f: $00
    ret nc                                        ; $7290: $d0

    ret nz                                        ; $7291: $c0

    nop                                           ; $7292: $00
    rlca                                          ; $7293: $07
    ret nz                                        ; $7294: $c0

    jr nz, jr_0d5_72b4                            ; $7295: $20 $1d

    ld [hl+], a                                   ; $7297: $22
    nop                                           ; $7298: $00
    ld a, a                                       ; $7299: $7f
    ld a, a                                       ; $729a: $7f
    rra                                           ; $729b: $1f
    sbc a                                         ; $729c: $9f
    rst $08                                       ; $729d: $cf
    cpl                                           ; $729e: $2f
    ld [hl], $06                                  ; $729f: $36 $06
    nop                                           ; $72a1: $00
    jr @-$5d                                      ; $72a2: $18 $a1

    add hl, de                                    ; $72a4: $19
    inc h                                         ; $72a5: $24
    dec e                                         ; $72a6: $1d
    ld h, b                                       ; $72a7: $60
    inc c                                         ; $72a8: $0c
    sub c                                         ; $72a9: $91
    add b                                         ; $72aa: $80
    jr nc, jr_0d5_72c5                            ; $72ab: $30 $18

    ld a, a                                       ; $72ad: $7f
    ld a, a                                       ; $72ae: $7f
    sbc a                                         ; $72af: $9f
    rra                                           ; $72b0: $1f
    ld e, a                                       ; $72b1: $5f
    rra                                           ; $72b2: $1f
    cp a                                          ; $72b3: $bf

jr_0d5_72b4:
    nop                                           ; $72b4: $00
    ccf                                           ; $72b5: $3f
    rra                                           ; $72b6: $1f
    rra                                           ; $72b7: $1f
    db $f4                                        ; $72b8: $f4
    ldh a, [$e8]                                  ; $72b9: $f0 $e8
    db $e3                                        ; $72bb: $e3
    ret nc                                        ; $72bc: $d0

    ld bc, $a0c7                                  ; $72bd: $01 $c7 $a0
    adc a                                         ; $72c0: $8f
    ld b, b                                       ; $72c1: $40
    rra                                           ; $72c2: $1f
    ld b, b                                       ; $72c3: $40
    ld a, [bc]                                    ; $72c4: $0a

jr_0d5_72c5:
    inc b                                         ; $72c5: $04
    ld [$0000], sp                                ; $72c6: $08 $00 $00
    nop                                           ; $72c9: $00
    nop                                           ; $72ca: $00
    add d                                         ; $72cb: $82
    ld [bc], a                                    ; $72cc: $02
    push hl                                       ; $72cd: $e5
    ld bc, $00f2                                  ; $72ce: $01 $f2 $00
    nop                                           ; $72d1: $00
    pop hl                                        ; $72d2: $e1
    ld [bc], a                                    ; $72d3: $02
    sbc h                                         ; $72d4: $9c
    ld bc, $08c2                                  ; $72d5: $01 $c2 $08
    sub h                                         ; $72d8: $94
    nop                                           ; $72d9: $00
    ld b, b                                       ; $72da: $40
    add [hl]                                      ; $72db: $86
    nop                                           ; $72dc: $00
    jr z, jr_0d5_72f1                             ; $72dd: $28 $12

    ld b, h                                       ; $72df: $44
    ld c, b                                       ; $72e0: $48
    add d                                         ; $72e1: $82
    nop                                           ; $72e2: $00
    call nz, Call_000_3200                        ; $72e3: $c4 $00 $32
    ld c, b                                       ; $72e6: $48
    add b                                         ; $72e7: $80
    ld bc, $807c                                  ; $72e8: $01 $7c $80
    nop                                           ; $72eb: $00
    ld c, a                                       ; $72ec: $4f
    adc a                                         ; $72ed: $8f
    rla                                           ; $72ee: $17
    rlca                                          ; $72ef: $07
    dec bc                                        ; $72f0: $0b

jr_0d5_72f1:
    ld h, e                                       ; $72f1: $63
    dec b                                         ; $72f2: $05
    pop af                                        ; $72f3: $f1
    nop                                           ; $72f4: $00
    ld [bc], a                                    ; $72f5: $02
    ld hl, sp+$02                                 ; $72f6: $f8 $02
    xor b                                         ; $72f8: $a8
    ld [bc], a                                    ; $72f9: $02
    ld a, b                                       ; $72fa: $78
    add d                                         ; $72fb: $82
    jr z, jr_0d5_72fe                             ; $72fc: $28 $00

jr_0d5_72fe:
    and b                                         ; $72fe: $a0
    add l                                         ; $72ff: $85
    and b                                         ; $7300: $a0
    adc d                                         ; $7301: $8a
    and b                                         ; $7302: $a0
    add h                                         ; $7303: $84
    pop de                                        ; $7304: $d1
    ret nz                                        ; $7305: $c0

    nop                                           ; $7306: $00
    push bc                                       ; $7307: $c5
    jp nz, $c8d5                                  ; $7308: $c2 $d5 $c8

    and h                                         ; $730b: $a4
    sub c                                         ; $730c: $91
    add b                                         ; $730d: $80
    and d                                         ; $730e: $a2
    nop                                           ; $730f: $00
    ld a, $01                                     ; $7310: $3e $01
    rrca                                          ; $7312: $0f
    ret nc                                        ; $7313: $d0

    add h                                         ; $7314: $84
    ld l, d                                       ; $7315: $6a
    ret nz                                        ; $7316: $c0

    dec h                                         ; $7317: $25
    nop                                           ; $7318: $00
    add c                                         ; $7319: $81
    ld b, h                                       ; $731a: $44
    ld bc, $0282                                  ; $731b: $01 $82 $02
    dec b                                         ; $731e: $05
    inc b                                         ; $731f: $04
    dec bc                                        ; $7320: $0b
    nop                                           ; $7321: $00
    nop                                           ; $7322: $00
    jr c, jr_0d5_7325                             ; $7323: $38 $00

jr_0d5_7325:
    sub [hl]                                      ; $7325: $96
    add b                                         ; $7326: $80
    ld b, l                                       ; $7327: $45
    ret nc                                        ; $7328: $d0

    ld [bc], a                                    ; $7329: $02
    nop                                           ; $732a: $00
    add b                                         ; $732b: $80
    ld d, l                                       ; $732c: $55
    and b                                         ; $732d: $a0
    ld a, [bc]                                    ; $732e: $0a
    add b                                         ; $732f: $80
    dec h                                         ; $7330: $25
    ld bc, $008a                                  ; $7331: $01 $8a $00
    dec b                                         ; $7334: $05
    ld d, c                                       ; $7335: $51
    dec h                                         ; $7336: $25
    ld bc, $1105                                  ; $7337: $01 $05 $11
    inc bc                                        ; $733a: $03
    adc e                                         ; $733b: $8b
    nop                                           ; $733c: $00
    inc bc                                        ; $733d: $03
    ld b, e                                       ; $733e: $43
    dec bc                                        ; $733f: $0b
    and e                                         ; $7340: $a3
    rla                                           ; $7341: $17
    ld b, a                                       ; $7342: $47
    rla                                           ; $7343: $17
    rlca                                          ; $7344: $07
    nop                                           ; $7345: $00
    add d                                         ; $7346: $82
    sbc l                                         ; $7347: $9d
    ld c, l                                       ; $7348: $4d
    jr nz, jr_0d5_735c                            ; $7349: $20 $11

    ld d, h                                       ; $734b: $54
    or c                                          ; $734c: $b1
    or b                                          ; $734d: $b0
    nop                                           ; $734e: $00
    ld hl, sp-$08                                 ; $734f: $f8 $f8
    ld a, [$fbf8]                                 ; $7351: $fa $f8 $fb
    ld hl, sp-$04                                 ; $7354: $f8 $fc
    db $fc                                        ; $7356: $fc
    add b                                         ; $7357: $80
    ld l, $00                                     ; $7358: $2e $00
    add hl, hl                                    ; $735a: $29
    nop                                           ; $735b: $00

jr_0d5_735c:
    dec d                                         ; $735c: $15
    nop                                           ; $735d: $00
    ld bc, $5400                                  ; $735e: $01 $00 $54
    jr nz, jr_0d5_7363                            ; $7361: $20 $00

jr_0d5_7363:
    nop                                           ; $7363: $00
    db $d3                                        ; $7364: $d3
    nop                                           ; $7365: $00
    nop                                           ; $7366: $00
    inc bc                                        ; $7367: $03
    ld h, h                                       ; $7368: $64
    rst $38                                       ; $7369: $ff
    nop                                           ; $736a: $00
    ld [bc], a                                    ; $736b: $02
    ld a, h                                       ; $736c: $7c
    add d                                         ; $736d: $82
    or b                                          ; $736e: $b0
    ld c, h                                       ; $736f: $4c
    ld b, b                                       ; $7370: $40
    and c                                         ; $7371: $a1
    db $10                                        ; $7372: $10
    jr @+$19                                      ; $7373: $18 $17

    ld [de], a                                    ; $7375: $12
    ld b, a                                       ; $7376: $47
    cpl                                           ; $7377: $2f
    rrca                                          ; $7378: $0f
    ld [bc], a                                    ; $7379: $02
    nop                                           ; $737a: $00
    adc a                                         ; $737b: $8f
    ld e, a                                       ; $737c: $5f
    ret nz                                        ; $737d: $c0

    nop                                           ; $737e: $00
    rst $18                                       ; $737f: $df
    nop                                           ; $7380: $00
    rra                                           ; $7381: $1f
    ccf                                           ; $7382: $3f
    ccf                                           ; $7383: $3f
    nop                                           ; $7384: $00
    ld bc, $00e1                                  ; $7385: $01 $e1 $00
    ld b, b                                       ; $7388: $40
    rst $38                                       ; $7389: $ff
    ld bc, $fe40                                  ; $738a: $01 $40 $fe
    cp $d9                                        ; $738d: $fe $d9
    ret c                                         ; $738f: $d8

    cp $fe                                        ; $7390: $fe $fe
    nop                                           ; $7392: $00
    db $fd                                        ; $7393: $fd
    db $fc                                        ; $7394: $fc
    ld a, [c]                                     ; $7395: $f2
    ldh a, [$e0]                                  ; $7396: $f0 $e0
    ldh [$c7], a                                  ; $7398: $e0 $c7
    ret z                                         ; $739a: $c8

    nop                                           ; $739b: $00
    ld [$d710], sp                                ; $739c: $08 $10 $d7
    nop                                           ; $739f: $00
    jr jr_0d5_73a9                                ; $73a0: $18 $07

    ld a, a                                       ; $73a2: $7f
    ld a, a                                       ; $73a3: $7f
    nop                                           ; $73a4: $00
    cp a                                          ; $73a5: $bf
    ccf                                           ; $73a6: $3f
    ld c, a                                       ; $73a7: $4f
    rrca                                          ; $73a8: $0f

jr_0d5_73a9:
    scf                                           ; $73a9: $37
    rlca                                          ; $73aa: $07
    rlc e                                         ; $73ab: $cb $03
    ld [bc], a                                    ; $73ad: $02
    inc h                                         ; $73ae: $24
    ret nz                                        ; $73af: $c0

    inc de                                        ; $73b0: $13
    nop                                           ; $73b1: $00
    ret nz                                        ; $73b2: $c0

    jr nz, jr_0d5_73e5                            ; $73b3: $20 $30

    ld c, b                                       ; $73b5: $48
    ld a, a                                       ; $73b6: $7f
    nop                                           ; $73b7: $00
    ld a, a                                       ; $73b8: $7f
    sbc a                                         ; $73b9: $9f
    rra                                           ; $73ba: $1f
    and [hl]                                      ; $73bb: $a6
    add b                                         ; $73bc: $80
    adc b                                         ; $73bd: $88
    and c                                         ; $73be: $a1
    sub b                                         ; $73bf: $90
    nop                                           ; $73c0: $00
    and a                                         ; $73c1: $a7
    add b                                         ; $73c2: $80
    add d                                         ; $73c3: $82
    ld e, l                                       ; $73c4: $5d
    nop                                           ; $73c5: $00
    ld e, a                                       ; $73c6: $5f
    jr nz, @+$54                                  ; $73c7: $20 $52

    nop                                           ; $73c9: $00
    dec c                                         ; $73ca: $0d
    ld b, h                                       ; $73cb: $44
    ld [bc], a                                    ; $73cc: $02
    db $10                                        ; $73cd: $10
    adc b                                         ; $73ce: $88
    rlca                                          ; $73cf: $07
    ld d, b                                       ; $73d0: $50
    ld a, [hl+]                                   ; $73d1: $2a
    nop                                           ; $73d2: $00
    ld b, b                                       ; $73d3: $40
    ld l, b                                       ; $73d4: $68
    nop                                           ; $73d5: $00
    ld h, h                                       ; $73d6: $64
    dec bc                                        ; $73d7: $0b
    ld l, [hl]                                    ; $73d8: $6e
    ld bc, $0066                                  ; $73d9: $01 $66 $00
    ld [$3641], sp                                ; $73dc: $08 $41 $36
    ld l, $41                                     ; $73df: $2e $41
    nop                                           ; $73e1: $00
    nop                                           ; $73e2: $00
    and l                                         ; $73e3: $a5
    nop                                           ; $73e4: $00

jr_0d5_73e5:
    ld c, d                                       ; $73e5: $4a
    xor a                                         ; $73e6: $af
    ld b, b                                       ; $73e7: $40
    inc bc                                        ; $73e8: $03
    and h                                         ; $73e9: $a4
    nop                                           ; $73ea: $00
    jr c, @+$41                                   ; $73eb: $38 $3f

    nop                                           ; $73ed: $00
    ret nz                                        ; $73ee: $c0

    inc bc                                        ; $73ef: $03
    add h                                         ; $73f0: $84
    ld l, a                                       ; $73f1: $6f
    rrca                                          ; $73f2: $0f
    rla                                           ; $73f3: $17
    rlca                                          ; $73f4: $07
    dec bc                                        ; $73f5: $0b
    nop                                           ; $73f6: $00
    add e                                         ; $73f7: $83
    push bc                                       ; $73f8: $c5
    ld hl, $10e2                                  ; $73f9: $21 $e2 $10
    ld [hl-], a                                   ; $73fc: $32
    ld c, b                                       ; $73fd: $48
    ld a, [de]                                    ; $73fe: $1a
    nop                                           ; $73ff: $00
    add b                                         ; $7400: $80
    jp nz, $a228                                  ; $7401: $c2 $28 $a2

    adc c                                         ; $7404: $89
    and c                                         ; $7405: $a1
    adc d                                         ; $7406: $8a
    and b                                         ; $7407: $a0
    nop                                           ; $7408: $00
    adc l                                         ; $7409: $8d
    ret nc                                        ; $740a: $d0

    add $d0                                       ; $740b: $c6 $d0
    rst $00                                       ; $740d: $c7
    ret nc                                        ; $740e: $d0

jr_0d5_740f:
    rst $00                                       ; $740f: $c7
    add sp, $00                                   ; $7410: $e8 $00
    db $e3                                        ; $7412: $e3
    add sp, -$1d                                  ; $7413: $e8 $e3
    jr nz, jr_0d5_7431                            ; $7415: $20 $1a

    adc h                                         ; $7417: $8c
    ld d, c                                       ; $7418: $51
    jp z, Jump_000_2400                           ; $7419: $ca $00 $24

    ld l, d                                       ; $741c: $6a
    add h                                         ; $741d: $84
    inc c                                         ; $741e: $0c
    ld h, c                                       ; $741f: $61
    add hl, bc                                    ; $7420: $09
    sub h                                         ; $7421: $94
    inc de                                        ; $7422: $13
    nop                                           ; $7423: $00
    ret z                                         ; $7424: $c8

    ld h, $80                                     ; $7425: $26 $80
    ld bc, $c07a                                  ; $7427: $01 $7a $c0
    ld sp, $0020                                  ; $742a: $31 $20 $00
    db $10                                        ; $742d: $10
    add b                                         ; $742e: $80
    ld d, b                                       ; $742f: $50
    ret nz                                        ; $7430: $c0

jr_0d5_7431:
    nop                                           ; $7431: $00
    add b                                         ; $7432: $80
    jr nz, jr_0d5_7435                            ; $7433: $20 $00

jr_0d5_7435:
    nop                                           ; $7435: $00
    ld b, b                                       ; $7436: $40
    nop                                           ; $7437: $00
    and b                                         ; $7438: $a0
    push hl                                       ; $7439: $e5
    ld bc, $01f5                                  ; $743a: $01 $f5 $01
    ld [hl], l                                    ; $743d: $75
    nop                                           ; $743e: $00
    add c                                         ; $743f: $81
    dec hl                                        ; $7440: $2b
    ld b, e                                       ; $7441: $43
    dec bc                                        ; $7442: $0b
    inc hl                                        ; $7443: $23
    dec bc                                        ; $7444: $0b
    inc hl                                        ; $7445: $23
    rla                                           ; $7446: $17
    nop                                           ; $7447: $00
    rlca                                          ; $7448: $07

jr_0d5_7449:
    rla                                           ; $7449: $17
    rlca                                          ; $744a: $07
    add sp, -$1d                                  ; $744b: $e8 $e3
    db $f4                                        ; $744d: $f4
    ldh a, [$f5]                                  ; $744e: $f0 $f5
    nop                                           ; $7450: $00
    ldh a, [$f4]                                  ; $7451: $f0 $f4
    pop af                                        ; $7453: $f1
    ld a, [$faf8]                                 ; $7454: $fa $f8 $fa
    ld hl, sp-$05                                 ; $7457: $f8 $fb
    nop                                           ; $7459: $00
    ld hl, sp-$04                                 ; $745a: $f8 $fc
    db $fc                                        ; $745c: $fc
    ld c, h                                       ; $745d: $4c
    ld hl, $4098                                  ; $745e: $21 $98 $40
    jr nz, jr_0d5_7463                            ; $7461: $20 $00

jr_0d5_7463:
    add a                                         ; $7463: $87
    ldh [rIF], a                                  ; $7464: $e0 $0f
    jr jr_0d5_740f                                ; $7466: $18 $a7

    nop                                           ; $7468: $00
    nop                                           ; $7469: $00
    rst $38                                       ; $746a: $ff

jr_0d5_746b:
    ld b, b                                       ; $746b: $40
    nop                                           ; $746c: $00
    ld bc, $c000                                  ; $746d: $01 $00 $c0
    nop                                           ; $7470: $00
    nop                                           ; $7471: $00
    add b                                         ; $7472: $80
    ld b, b                                       ; $7473: $40
    ld b, b                                       ; $7474: $40
    db $10                                        ; $7475: $10
    and b                                         ; $7476: $a0
    jr nz, jr_0d5_7449                            ; $7477: $20 $d0

    db $10                                        ; $7479: $10
    jr jr_0d5_7493                                ; $747a: $18 $17

    rlca                                          ; $747c: $07
    cpl                                           ; $747d: $2f
    rrca                                          ; $747e: $0f
    add b                                         ; $747f: $80
    ld [bc], a                                    ; $7480: $02
    ld [$1f5f], sp                                ; $7481: $08 $5f $1f
    ld e, a                                       ; $7484: $5f
    rra                                           ; $7485: $1f
    rst $18                                       ; $7486: $df
    rra                                           ; $7487: $1f
    ccf                                           ; $7488: $3f
    nop                                           ; $7489: $00
    ccf                                           ; $748a: $3f
    nop                                           ; $748b: $00
    ld bc, $00f4                                  ; $748c: $01 $f4 $00
    nop                                           ; $748f: $00
    rst $38                                       ; $7490: $ff
    rst $38                                       ; $7491: $ff
    ld sp, hl                                     ; $7492: $f9

jr_0d5_7493:
    ld sp, hl                                     ; $7493: $f9
    ld a, [$fdf8]                                 ; $7494: $fa $f8 $fd
    db $fc                                        ; $7497: $fc
    nop                                           ; $7498: $00
    ld hl, sp-$07                                 ; $7499: $f8 $f9
    ldh a, [$f2]                                  ; $749b: $f0 $f2
    di                                            ; $749d: $f3
    db $f4                                        ; $749e: $f4
    pop af                                        ; $749f: $f1
    ld a, [c]                                     ; $74a0: $f2
    nop                                           ; $74a1: $00
    cp $fe                                        ; $74a2: $fe $fe
    cp l                                          ; $74a4: $bd
    cp h                                          ; $74a5: $bc
    ld d, d                                       ; $74a6: $52
    db $10                                        ; $74a7: $10
    jr nz, jr_0d5_746b                            ; $74a8: $20 $c1

    nop                                           ; $74aa: $00
    xor h                                         ; $74ab: $ac
    ld d, d                                       ; $74ac: $52
    inc bc                                        ; $74ad: $03
    add h                                         ; $74ae: $84
    ld bc, $8082                                  ; $74af: $01 $82 $80
    ld b, c                                       ; $74b2: $41
    nop                                           ; $74b3: $00
    ld a, a                                       ; $74b4: $7f
    ld a, a                                       ; $74b5: $7f
    cp a                                          ; $74b6: $bf
    ccf                                           ; $74b7: $3f

jr_0d5_74b8:
    ld c, a                                       ; $74b8: $4f
    rrca                                          ; $74b9: $0f
    or a                                          ; $74ba: $b7
    rlca                                          ; $74bb: $07
    nop                                           ; $74bc: $00
    dec bc                                        ; $74bd: $0b
    ld b, e                                       ; $74be: $43
    inc d                                         ; $74bf: $14
    and b                                         ; $74c0: $a0
    adc e                                         ; $74c1: $8b
    ld d, b                                       ; $74c2: $50
    ret nz                                        ; $74c3: $c0

    jr nz, jr_0d5_7506                            ; $74c4: $20 $40

    rst $38                                       ; $74c6: $ff
    ld bc, $7f40                                  ; $74c7: $01 $40 $7f
    ld a, a                                       ; $74ca: $7f
    sbc a                                         ; $74cb: $9f
    rra                                           ; $74cc: $1f
    ldh a, [$f1]                                  ; $74cd: $f0 $f1
    nop                                           ; $74cf: $00
    ldh [$e2], a                                  ; $74d0: $e0 $e2
    ret nc                                        ; $74d2: $d0

    pop bc                                        ; $74d3: $c1
    and b                                         ; $74d4: $a0
    adc b                                         ; $74d5: $88
    ld c, b                                       ; $74d6: $48
    ld de, $5100                                  ; $74d7: $11 $00 $51
    ld a, [bc]                                    ; $74da: $0a
    ld b, d                                       ; $74db: $42
    ld de, $1640                                  ; $74dc: $11 $40 $16
    pop bc                                        ; $74df: $c1
    ld [hl-], a                                   ; $74e0: $32
    nop                                           ; $74e1: $00
    ld [hl], b                                    ; $74e2: $70
    adc h                                         ; $74e3: $8c
    inc c                                         ; $74e4: $0c
    di                                            ; $74e5: $f3
    nop                                           ; $74e6: $00
    stop                                          ; $74e7: $10 $00
    add d                                         ; $74e9: $82
    nop                                           ; $74ea: $00
    inc b                                         ; $74eb: $04
    rrc a                                         ; $74ec: $cb $0f
    ret nz                                        ; $74ee: $c0

    add hl, bc                                    ; $74ef: $09
    and [hl]                                      ; $74f0: $a6
    ld hl, sp+$05                                 ; $74f1: $f8 $05
    nop                                           ; $74f3: $00
    inc b                                         ; $74f4: $04
    jp z, Jump_000_211e                           ; $74f5: $ca $1e $21

    rlca                                          ; $74f8: $07
    ldh [rP1], a                                  ; $74f9: $e0 $00
    ld a, h                                       ; $74fb: $7c
    nop                                           ; $74fc: $00
    nop                                           ; $74fd: $00
    rrca                                          ; $74fe: $0f
    ld b, b                                       ; $74ff: $40
    inc bc                                        ; $7500: $03
    nop                                           ; $7501: $00
    ld d, b                                       ; $7502: $50
    ld l, a                                       ; $7503: $6f
    rrca                                          ; $7504: $0f
    nop                                           ; $7505: $00

jr_0d5_7506:
    rla                                           ; $7506: $17
    add a                                         ; $7507: $87
    dec bc                                        ; $7508: $0b
    inc hl                                        ; $7509: $23
    push de                                       ; $750a: $d5
    ld bc, $10ca                                  ; $750b: $01 $ca $10
    nop                                           ; $750e: $00
    ld [de], a                                    ; $750f: $12
    adc b                                         ; $7510: $88
    ld a, [bc]                                    ; $7511: $0a
    db $10                                        ; $7512: $10
    ld b, d                                       ; $7513: $42
    ld [$82a4], sp                                ; $7514: $08 $a4 $82
    nop                                           ; $7517: $00
    and l                                         ; $7518: $a5
    adc b                                         ; $7519: $88
    adc l                                         ; $751a: $8d
    add b                                         ; $751b: $80
    call nz, $ccc9                                ; $751c: $c4 $c9 $cc
    pop de                                        ; $751f: $d1
    nop                                           ; $7520: $00
    call nz, $c4c9                                ; $7521: $c4 $c9 $c4
    reti                                          ; $7524: $d9


    call z, $01c1                                 ; $7525: $cc $c1 $01
    xor d                                         ; $7528: $aa
    nop                                           ; $7529: $00
    ld hl, $0142                                  ; $752a: $21 $42 $01
    ld h, d                                       ; $752d: $62
    jr nz, jr_0d5_757d                            ; $752e: $20 $4d

    jr nz, jr_0d5_74b8                            ; $7530: $20 $86

    nop                                           ; $7532: $00
    and b                                         ; $7533: $a0
    rla                                           ; $7534: $17
    and b                                         ; $7535: $a0
    inc de                                        ; $7536: $13
    sub b                                         ; $7537: $90
    add hl, hl                                    ; $7538: $29
    db $10                                        ; $7539: $10
    and b                                         ; $753a: $a0
    nop                                           ; $753b: $00
    ldh a, [$08]                                  ; $753c: $f0 $08
    ld hl, sp+$00                                 ; $753e: $f8 $00
    ret nz                                        ; $7540: $c0

    inc h                                         ; $7541: $24
    nop                                           ; $7542: $00
    inc c                                         ; $7543: $0c
    nop                                           ; $7544: $00
    nop                                           ; $7545: $00
    jp c, $b802                                   ; $7546: $da $02 $b8

    inc b                                         ; $7549: $04
    ld [hl], c                                    ; $754a: $71
    dec h                                         ; $754b: $25
    add c                                         ; $754c: $81
    nop                                           ; $754d: $00
    sub l                                         ; $754e: $95
    ld bc, $8155                                  ; $754f: $01 $55 $81
    ld d, e                                       ; $7552: $53
    add e                                         ; $7553: $83
    ld b, e                                       ; $7554: $43
    sub e                                         ; $7555: $93
    nop                                           ; $7556: $00
    ld b, e                                       ; $7557: $43
    sub e                                         ; $7558: $93
    add a                                         ; $7559: $87
    rlca                                          ; $755a: $07
    sub a                                         ; $755b: $97
    rlca                                          ; $755c: $07
    db $e4                                        ; $755d: $e4
    ld [$e402], a                                 ; $755e: $ea $02 $e4
    ld [$f5f2], a                                 ; $7561: $ea $f2 $f5
    di                                            ; $7564: $f3
    db $f4                                        ; $7565: $f4
    push bc                                       ; $7566: $c5
    nop                                           ; $7567: $00
    ld sp, hl                                     ; $7568: $f9
    nop                                           ; $7569: $00
    ld hl, sp-$08                                 ; $756a: $f8 $f8
    db $fc                                        ; $756c: $fc
    db $fc                                        ; $756d: $fc
    sbc b                                         ; $756e: $98
    ld b, h                                       ; $756f: $44
    ld c, h                                       ; $7570: $4c
    sub d                                         ; $7571: $92
    nop                                           ; $7572: $00
    ld b, [hl]                                    ; $7573: $46
    add hl, hl                                    ; $7574: $29
    ld hl, $9892                                  ; $7575: $21 $92 $98
    ld b, l                                       ; $7578: $45
    ret nz                                        ; $7579: $c0

    ld h, $00                                     ; $757a: $26 $00
    ld [hl], b                                    ; $757c: $70

jr_0d5_757d:
    adc d                                         ; $757d: $8a
    nop                                           ; $757e: $00
    nop                                           ; $757f: $00
    dec c                                         ; $7580: $0d
    ret nz                                        ; $7581: $c0

    ld a, [hl-]                                   ; $7582: $3a
    ld bc, $0000                                  ; $7583: $01 $00 $00
    inc de                                        ; $7586: $13
    add c                                         ; $7587: $81
    ld d, [hl]                                    ; $7588: $56
    ld a, [bc]                                    ; $7589: $0a
    or l                                          ; $758a: $b5
    nop                                           ; $758b: $00
    nop                                           ; $758c: $00
    nop                                           ; $758d: $00
    rst $38                                       ; $758e: $ff
    nop                                           ; $758f: $00
    nop                                           ; $7590: $00
    nop                                           ; $7591: $00
    rla                                           ; $7592: $17
    ld b, a                                       ; $7593: $47
    cpl                                           ; $7594: $2f
    adc a                                         ; $7595: $8f
    nop                                           ; $7596: $00
    xor a                                         ; $7597: $af
    rrca                                          ; $7598: $0f
    cpl                                           ; $7599: $2f
    adc a                                         ; $759a: $8f
    ld e, a                                       ; $759b: $5f
    rra                                           ; $759c: $1f
    ld e, a                                       ; $759d: $5f
    rra                                           ; $759e: $1f
    nop                                           ; $759f: $00
    rst $18                                       ; $75a0: $df
    rra                                           ; $75a1: $1f
    ccf                                           ; $75a2: $3f
    ccf                                           ; $75a3: $3f
    nop                                           ; $75a4: $00
    ld bc, $00f4                                  ; $75a5: $01 $f4 $00
    nop                                           ; $75a8: $00
    rst $38                                       ; $75a9: $ff
    rst $38                                       ; $75aa: $ff
    pop af                                        ; $75ab: $f1
    pop af                                        ; $75ac: $f1
    db $ec                                        ; $75ad: $ec
    ld [c], a                                     ; $75ae: $e2
    rst $20                                       ; $75af: $e7
    add sp, $00                                   ; $75b0: $e8 $00
    pop hl                                        ; $75b2: $e1
    db $ec                                        ; $75b3: $ec
    ret nz                                        ; $75b4: $c0

    db $dd                                        ; $75b5: $dd
    ret nz                                        ; $75b6: $c0

    reti                                          ; $75b7: $d9


    ret nz                                        ; $75b8: $c0

    ret c                                         ; $75b9: $d8

    nop                                           ; $75ba: $00
    cp $fe                                        ; $75bb: $fe $fe
    db $fd                                        ; $75bd: $fd
    db $fc                                        ; $75be: $fc
    ld a, [c]                                     ; $75bf: $f2
    ldh a, [$2c]                                  ; $75c0: $f0 $2c
    ld hl, $9000                                  ; $75c2: $21 $00 $90
    ld b, e                                       ; $75c5: $43
    add sp, $05                                   ; $75c6: $e8 $05
    sbc h                                         ; $75c8: $9c
    ld b, d                                       ; $75c9: $42
    ld e, $a1                                     ; $75ca: $1e $a1
    nop                                           ; $75cc: $00
    ld a, a                                       ; $75cd: $7f
    ld a, a                                       ; $75ce: $7f
    cp b                                          ; $75cf: $b8
    jr c, @+$49                                   ; $75d0: $38 $47

    nop                                           ; $75d2: $00
    add hl, hl                                    ; $75d3: $29
    add b                                         ; $75d4: $80
    nop                                           ; $75d5: $00
    ld bc, $01d0                                  ; $75d6: $01 $d0 $01
    ret nz                                        ; $75d9: $c0

    ld [bc], a                                    ; $75da: $02
    ld sp, hl                                     ; $75db: $f9
    inc b                                         ; $75dc: $04
    ld [hl], d                                    ; $75dd: $72
    ld d, b                                       ; $75de: $50
    rst $38                                       ; $75df: $ff
    ld bc, $7f00                                  ; $75e0: $01 $00 $7f
    ld bc, $7900                                  ; $75e3: $01 $00 $79
    ld a, c                                       ; $75e6: $79
    ld [hl], c                                    ; $75e7: $71
    ld [hl], l                                    ; $75e8: $75
    nop                                           ; $75e9: $00
    ld [hl], l                                    ; $75ea: $75
    ld [hl], c                                    ; $75eb: $71
    sub l                                         ; $75ec: $95
    ld de, $d0c2                                  ; $75ed: $11 $c2 $d0
    pop bc                                        ; $75f0: $c1
    ret nc                                        ; $75f1: $d0

    nop                                           ; $75f2: $00
    add $d9                                       ; $75f3: $c6 $d9
    add b                                         ; $75f5: $80
    sbc [hl]                                      ; $75f6: $9e
    ld b, b                                       ; $75f7: $40
    ld [$0140], sp                                ; $75f8: $08 $40 $01
    nop                                           ; $75fb: $00
    ld b, b                                       ; $75fc: $40
    inc bc                                        ; $75fd: $03
    ld b, b                                       ; $75fe: $40
    ld e, $07                                     ; $75ff: $1e $07
    jr c, jr_0d5_7605                             ; $7601: $38 $02

    inc l                                         ; $7603: $2c
    nop                                           ; $7604: $00

jr_0d5_7605:
    ld bc, $0254                                  ; $7605: $01 $54 $02
    add hl, hl                                    ; $7608: $29
    inc b                                         ; $7609: $04
    ld [$1209], sp                                ; $760a: $08 $09 $12
    nop                                           ; $760d: $00
    nop                                           ; $760e: $00
    inc [hl]                                      ; $760f: $34
    inc bc                                        ; $7610: $03
    ld h, h                                       ; $7611: $64
    ld [$e004], sp                                ; $7612: $08 $04 $e0
    ld [de], a                                    ; $7615: $12
    nop                                           ; $7616: $00
    nop                                           ; $7617: $00
    call nz, $1a00                                ; $7618: $c4 $00 $1a
    nop                                           ; $761b: $00
    ld a, [bc]                                    ; $761c: $0a
    jr nc, jr_0d5_7665                            ; $761d: $30 $46

    nop                                           ; $761f: $00
    ld h, b                                       ; $7620: $60
    adc [hl]                                      ; $7621: $8e
    nop                                           ; $7622: $00
    sbc $45                                       ; $7623: $de $45
    add hl, hl                                    ; $7625: $29
    dec bc                                        ; $7626: $0b
    add e                                         ; $7627: $83
    nop                                           ; $7628: $00
    ld c, e                                       ; $7629: $4b
    inc sp                                        ; $762a: $33
    dec l                                         ; $762b: $2d
    ld b, c                                       ; $762c: $41
    ld c, d                                       ; $762d: $4a
    sub b                                         ; $762e: $90
    sub d                                         ; $762f: $92
    jr z, jr_0d5_7632                             ; $7630: $28 $00

jr_0d5_7632:
    or d                                          ; $7632: $b2
    nop                                           ; $7633: $00
    ld [hl+], a                                   ; $7634: $22
    sub b                                         ; $7635: $90
    add b                                         ; $7636: $80

jr_0d5_7637:
    adc h                                         ; $7637: $8c
    add c                                         ; $7638: $81
    adc b                                         ; $7639: $88
    nop                                           ; $763a: $00
    add d                                         ; $763b: $82
    and c                                         ; $763c: $a1
    and h                                         ; $763d: $a4
    add d                                         ; $763e: $82
    xor b                                         ; $763f: $a8
    add h                                         ; $7640: $84
    sub b                                         ; $7641: $90
    adc c                                         ; $7642: $89
    nop                                           ; $7643: $00
    add b                                         ; $7644: $80
    add e                                         ; $7645: $83
    ret z                                         ; $7646: $c8

    jp $c906                                      ; $7647: $c3 $06 $c9


    ld [bc], a                                    ; $764a: $02
    add h                                         ; $764b: $84
    nop                                           ; $764c: $00
    ld bc, $001a                                  ; $764d: $01 $1a $00
    ld a, c                                       ; $7650: $79
    nop                                           ; $7651: $00
    ldh a, [rP1]                                  ; $7652: $f0 $00
    db $e4                                        ; $7654: $e4
    nop                                           ; $7655: $00
    inc b                                         ; $7656: $04
    sub d                                         ; $7657: $92
    inc h                                         ; $7658: $24
    ld bc, $1f40                                  ; $7659: $01 $40 $1f
    nop                                           ; $765c: $00
    cp a                                          ; $765d: $bf
    nop                                           ; $765e: $00
    ld b, b                                       ; $765f: $40
    rra                                           ; $7660: $1f
    ret nz                                        ; $7661: $c0

    rra                                           ; $7662: $1f
    nop                                           ; $7663: $00
    ccf                                           ; $7664: $3f

jr_0d5_7665:
    nop                                           ; $7665: $00
    add a                                         ; $7666: $87
    nop                                           ; $7667: $00
    add b                                         ; $7668: $80
    ld a, [hl+]                                   ; $7669: $2a
    sub b                                         ; $766a: $90
    inc b                                         ; $766b: $04
    dec h                                         ; $766c: $25
    ld b, c                                       ; $766d: $41
    ld h, l                                       ; $766e: $65
    ld bc, $4500                                  ; $766f: $01 $00 $45
    ld hl, $036b                                  ; $7672: $21 $6b $03
    ld c, e                                       ; $7675: $4b
    inc hl                                        ; $7676: $23
    ld c, e                                       ; $7677: $4b
    inc hl                                        ; $7678: $23
    nop                                           ; $7679: $00
    ld h, a                                       ; $767a: $67
    sub a                                         ; $767b: $97
    ld h, a                                       ; $767c: $67
    sub a                                         ; $767d: $97
    add sp, -$1e                                  ; $767e: $e8 $e2
    db $f4                                        ; $7680: $f4
    ldh a, [$80]                                  ; $7681: $f0 $80
    ld [bc], a                                    ; $7683: $02
    ld [$f8fa], sp                                ; $7684: $08 $fa $f8
    ld a, [$fbf8]                                 ; $7687: $fa $f8 $fb
    ld hl, sp-$04                                 ; $768a: $f8 $fc
    nop                                           ; $768c: $00
    db $fc                                        ; $768d: $fc
    add l                                         ; $768e: $85
    ld [hl+], a                                   ; $768f: $22
    ld b, h                                       ; $7690: $44
    sub d                                         ; $7691: $92
    inc b                                         ; $7692: $04
    ld d, c                                       ; $7693: $51
    ld h, $00                                     ; $7694: $26 $00
    add c                                         ; $7696: $81
    inc b                                         ; $7697: $04
    and d                                         ; $7698: $a2
    nop                                           ; $7699: $00
    nop                                           ; $769a: $00
    rst $38                                       ; $769b: $ff
    nop                                           ; $769c: $00
    nop                                           ; $769d: $00
    nop                                           ; $769e: $00
    nop                                           ; $769f: $00
    add h                                         ; $76a0: $84
    db $10                                        ; $76a1: $10
    adc b                                         ; $76a2: $88
    ld [hl+], a                                   ; $76a3: $22
    add d                                         ; $76a4: $82
    jr z, jr_0d5_7637                             ; $76a5: $28 $90

    db $10                                        ; $76a7: $10
    inc b                                         ; $76a8: $04
    add b                                         ; $76a9: $80
    inc d                                         ; $76aa: $14
    db $10                                        ; $76ab: $10
    jr @-$17                                      ; $76ac: $18 $e7

    rla                                           ; $76ae: $17
    rst $28                                       ; $76af: $ef
    rrca                                          ; $76b0: $0f
    nop                                           ; $76b1: $00
    rst $28                                       ; $76b2: $ef
    rrca                                          ; $76b3: $0f
    ld c, a                                       ; $76b4: $4f
    xor a                                         ; $76b5: $af
    rrca                                          ; $76b6: $0f
    rrca                                          ; $76b7: $0f
    ld e, a                                       ; $76b8: $5f
    rra                                           ; $76b9: $1f
    nop                                           ; $76ba: $00
    rst $18                                       ; $76bb: $df
    rra                                           ; $76bc: $1f
    ccf                                           ; $76bd: $3f
    ccf                                           ; $76be: $3f
    nop                                           ; $76bf: $00
    ld bc, $00f9                                  ; $76c0: $01 $f9 $00
    nop                                           ; $76c3: $00
    pop hl                                        ; $76c4: $e1
    rst $38                                       ; $76c5: $ff
    rst $18                                       ; $76c6: $df
    ldh [$b4], a                                  ; $76c7: $e0 $b4
    res 7, a                                      ; $76c9: $cb $bf
    add b                                         ; $76cb: $80
    nop                                           ; $76cc: $00
    sbc a                                         ; $76cd: $9f
    and b                                         ; $76ce: $a0
    jp z, $e0d5                                   ; $76cf: $ca $d5 $e0

    ldh [$f8], a                                  ; $76d2: $e0 $f8
    ld sp, hl                                     ; $76d4: $f9
    nop                                           ; $76d5: $00
    cp $fe                                        ; $76d6: $fe $fe
    dec a                                         ; $76d8: $3d
    db $fc                                        ; $76d9: $fc
    ld [c], a                                     ; $76da: $e2
    db $10                                        ; $76db: $10
    inc e                                         ; $76dc: $1c
    and b                                         ; $76dd: $a0
    nop                                           ; $76de: $00
    ld [c], a                                     ; $76df: $e2
    inc d                                         ; $76e0: $14
    db $fd                                        ; $76e1: $fd
    ld [bc], a                                    ; $76e2: $02
    nop                                           ; $76e3: $00
    inc d                                         ; $76e4: $14
    nop                                           ; $76e5: $00
    jr nc, jr_0d5_76e8                            ; $76e6: $30 $00

jr_0d5_76e8:
    ld a, a                                       ; $76e8: $7f
    ld a, a                                       ; $76e9: $7f
    cp a                                          ; $76ea: $bf
    ccf                                           ; $76eb: $3f
    ld c, a                                       ; $76ec: $4f
    rrca                                          ; $76ed: $0f
    scf                                           ; $76ee: $37
    rlca                                          ; $76ef: $07
    nop                                           ; $76f0: $00
    dec b                                         ; $76f1: $05
    jp Jump_0d5_5106                              ; $76f2: $c3 $06 $51


    ld [bc], a                                    ; $76f5: $02
    db $ed                                        ; $76f6: $ed
    ld [bc], a                                    ; $76f7: $02
    ld sp, $ff40                                  ; $76f8: $31 $40 $ff
    ld bc, $df00                                  ; $76fb: $01 $00 $df
    rst $38                                       ; $76fe: $ff
    sbc a                                         ; $76ff: $9f
    rst $38                                       ; $7700: $ff
    rst $08                                       ; $7701: $cf
    xor a                                         ; $7702: $af
    nop                                           ; $7703: $00
    ld c, e                                       ; $7704: $4b
    cpl                                           ; $7705: $2f
    ld c, e                                       ; $7706: $4b
    daa                                           ; $7707: $27
    ld c, e                                       ; $7708: $4b
    daa                                           ; $7709: $27
    ldh a, [$f0]                                  ; $770a: $f0 $f0
    nop                                           ; $770c: $00
    ldh [$e0], a                                  ; $770d: $e0 $e0
    ret nz                                        ; $770f: $c0

    jp nz, $8c82                                  ; $7710: $c2 $82 $8c

    ld b, [hl]                                    ; $7713: $46
    ld bc, $4500                                  ; $7714: $01 $00 $45
    ld a, [de]                                    ; $7717: $1a
    ld b, b                                       ; $7718: $40
    inc e                                         ; $7719: $1c
    ld b, b                                       ; $771a: $40
    jr jr_0d5_7724                                ; $771b: $18 $07

    ret nz                                        ; $771d: $c0

    nop                                           ; $771e: $00
    rra                                           ; $771f: $1f
    jr nz, jr_0d5_7783                            ; $7720: $20 $61

    sbc [hl]                                      ; $7722: $9e
    di                                            ; $7723: $f3

jr_0d5_7724:
    inc b                                         ; $7724: $04
    pop af                                        ; $7725: $f1
    ld [$ff00], sp                                ; $7726: $08 $00 $ff
    nop                                           ; $7729: $00
    add c                                         ; $772a: $81
    ld b, d                                       ; $772b: $42
    nop                                           ; $772c: $00
    dec a                                         ; $772d: $3d
    pop bc                                        ; $772e: $c1
    ld c, $00                                     ; $772f: $0e $00
    ldh [rNR11], a                                ; $7731: $e0 $11
    add b                                         ; $7733: $80
    ld h, h                                       ; $7734: $64
    add b                                         ; $7735: $80
    inc hl                                        ; $7736: $23
    add c                                         ; $7737: $81
    inc b                                         ; $7738: $04
    nop                                           ; $7739: $00
    ldh [rSC], a                                  ; $773a: $e0 $02
    ld h, b                                       ; $773c: $60
    ld bc, $1280                                  ; $773d: $01 $80 $12
    ld e, e                                       ; $7740: $5b
    inc hl                                        ; $7741: $23
    nop                                           ; $7742: $00
    or e                                          ; $7743: $b3
    dec bc                                        ; $7744: $0b
    scf                                           ; $7745: $37
    add a                                         ; $7746: $87
    ld hl, $c211                                  ; $7747: $21 $11 $c2
    jr z, jr_0d5_774c                             ; $774a: $28 $00

jr_0d5_774c:
    add d                                         ; $774c: $82
    ld d, b                                       ; $774d: $50
    and d                                         ; $774e: $a2
    ld [$4092], sp                                ; $774f: $08 $92 $40
    and b                                         ; $7752: $a0
    add c                                         ; $7753: $81
    nop                                           ; $7754: $00
    xor h                                         ; $7755: $ac
    add b                                         ; $7756: $80
    and e                                         ; $7757: $a3
    adc h                                         ; $7758: $8c
    ret nc                                        ; $7759: $d0

    rst $00                                       ; $775a: $c7
    ret nc                                        ; $775b: $d0

    jp $d000                                      ; $775c: $c3 $00 $d0


    call nz, $e0eb                                ; $775f: $c4 $eb $e0
    db $eb                                        ; $7762: $eb
    ldh [rP1], a                                  ; $7763: $e0 $00
    ld e, [hl]                                    ; $7765: $5e
    nop                                           ; $7766: $00
    nop                                           ; $7767: $00
    xor c                                         ; $7768: $a9
    nop                                           ; $7769: $00
    rla                                           ; $776a: $17
    ret z                                         ; $776b: $c8

    ld bc, $924c                                  ; $776c: $01 $4c $92
    nop                                           ; $776f: $00
    ld h, $c9                                     ; $7770: $26 $c9
    rla                                           ; $7772: $17
    ld h, b                                       ; $7773: $60
    inc bc                                        ; $7774: $03
    ld [hl], h                                    ; $7775: $74
    nop                                           ; $7776: $00
    jr nc, jr_0d5_7779                            ; $7777: $30 $00

jr_0d5_7779:
    nop                                           ; $7779: $00
    sub $01                                       ; $777a: $d6 $01
    jp nz, $b904                                  ; $777c: $c2 $04 $b9

    ld [bc], a                                    ; $777f: $02
    inc e                                         ; $7780: $1c
    nop                                           ; $7781: $00
    add c                                         ; $7782: $81

jr_0d5_7783:
    ld c, [hl]                                    ; $7783: $4e
    nop                                           ; $7784: $00
    ld d, [hl]                                    ; $7785: $56
    ld b, b                                       ; $7786: $40
    dec c                                         ; $7787: $0d
    dec b                                         ; $7788: $05
    and c                                         ; $7789: $a1
    nop                                           ; $778a: $00
    dec b                                         ; $778b: $05
    ld de, $8105                                  ; $778c: $11 $05 $81
    adc e                                         ; $778f: $8b
    ld h, e                                       ; $7790: $63
    ld l, e                                       ; $7791: $6b
    inc bc                                        ; $7792: $03
    nop                                           ; $7793: $00
    ld c, e                                       ; $7794: $4b
    inc hl                                        ; $7795: $23
    rst $10                                       ; $7796: $d7
    rlca                                          ; $7797: $07
    rst $10                                       ; $7798: $d7
    rlca                                          ; $7799: $07
    add sp, -$1e                                  ; $779a: $e8 $e2
    nop                                           ; $779c: $00
    db $f4                                        ; $779d: $f4
    ldh a, [$f5]                                  ; $779e: $f0 $f5
    ldh a, [$f4]                                  ; $77a0: $f0 $f4
    pop af                                        ; $77a2: $f1
    ld a, [$00f8]                                 ; $77a3: $fa $f8 $00
    ld a, [$fbf8]                                 ; $77a6: $fa $f8 $fb
    ld hl, sp-$04                                 ; $77a9: $f8 $fc
    db $fc                                        ; $77ab: $fc
    inc bc                                        ; $77ac: $03
    ldh a, [rP1]                                  ; $77ad: $f0 $00
    ld bc, $01aa                                  ; $77af: $01 $aa $01
    ld d, h                                       ; $77b2: $54
    add c                                         ; $77b3: $81
    jr z, jr_0d5_77b6                             ; $77b4: $28 $00

jr_0d5_77b6:
    pop de                                        ; $77b6: $d1
    nop                                           ; $77b7: $00
    nop                                           ; $77b8: $00
    nop                                           ; $77b9: $00
    rst $38                                       ; $77ba: $ff
    nop                                           ; $77bb: $00
    nop                                           ; $77bc: $00
    nop                                           ; $77bd: $00
    ld b, d                                       ; $77be: $42
    and h                                         ; $77bf: $a4
    nop                                           ; $77c0: $00
    pop bc                                        ; $77c1: $c1
    ld a, [hl+]                                   ; $77c2: $2a
    and b                                         ; $77c3: $a0
    inc d                                         ; $77c4: $14
    and b                                         ; $77c5: $a0
    ld [de], a                                    ; $77c6: $12
    or b                                          ; $77c7: $b0
    ld b, h                                       ; $77c8: $44
    add b                                         ; $77c9: $80
    db $10                                        ; $77ca: $10
    jr jr_0d5_7824                                ; $77cb: $18 $57

    add a                                         ; $77cd: $87
    cpl                                           ; $77ce: $2f
    rrca                                          ; $77cf: $0f
    cpl                                           ; $77d0: $2f
    adc a                                         ; $77d1: $8f
    cpl                                           ; $77d2: $2f
    nop                                           ; $77d3: $00
    adc a                                         ; $77d4: $8f
    ld e, a                                       ; $77d5: $5f
    rra                                           ; $77d6: $1f
    ld e, a                                       ; $77d7: $5f
    rra                                           ; $77d8: $1f
    rst $18                                       ; $77d9: $df
    rra                                           ; $77da: $1f
    ccf                                           ; $77db: $3f
    nop                                           ; $77dc: $00
    ccf                                           ; $77dd: $3f
    nop                                           ; $77de: $00
    ld bc, $00ec                                  ; $77df: $01 $ec $00
    ld [$ffff], sp                                ; $77e2: $08 $ff $ff
    rst $38                                       ; $77e5: $ff
    db $fd                                        ; $77e6: $fd
    ld [bc], a                                    ; $77e7: $02
    nop                                           ; $77e8: $00
    db $fc                                        ; $77e9: $fc
    db $fd                                        ; $77ea: $fd
    db $fc                                        ; $77eb: $fc
    ld b, b                                       ; $77ec: $40
    db $fd                                        ; $77ed: $fd
    inc bc                                        ; $77ee: $03
    nop                                           ; $77ef: $00
    ld sp, hl                                     ; $77f0: $f9
    ld hl, sp-$02                                 ; $77f1: $f8 $fe
    cp $fd                                        ; $77f3: $fe $fd
    db $fc                                        ; $77f5: $fc
    nop                                           ; $77f6: $00
    db $d3                                        ; $77f7: $d3
    ret nc                                        ; $77f8: $d0

    adc [hl]                                      ; $77f9: $8e
    and c                                         ; $77fa: $a1
    ld [hl+], a                                   ; $77fb: $22
    ld b, b                                       ; $77fc: $40
    ld a, d                                       ; $77fd: $7a
    nop                                           ; $77fe: $00
    nop                                           ; $77ff: $00
    jp z, $8230                                   ; $7800: $ca $30 $82

    ld a, h                                       ; $7803: $7c
    ld a, a                                       ; $7804: $7f
    ld a, a                                       ; $7805: $7f
    ccf                                           ; $7806: $3f
    cp [hl]                                       ; $7807: $be
    nop                                           ; $7808: $00
    rrca                                          ; $7809: $0f
    adc a                                         ; $780a: $8f
    scf                                           ; $780b: $37
    rlca                                          ; $780c: $07
    add hl, de                                    ; $780d: $19
    pop bc                                        ; $780e: $c1
    daa                                           ; $780f: $27
    ret nz                                        ; $7810: $c0

    nop                                           ; $7811: $00
    ld h, $c9                                     ; $7812: $26 $c9
    ld h, $c9                                     ; $7814: $26 $c9
    rst $38                                       ; $7816: $ff
    rst $18                                       ; $7817: $df

jr_0d5_7818:
    rst $38                                       ; $7818: $ff
    rst $08                                       ; $7819: $cf
    add b                                         ; $781a: $80
    ld [bc], a                                    ; $781b: $02
    nop                                           ; $781c: $00
    db $ed                                        ; $781d: $ed
    rst $38                                       ; $781e: $ff
    ld a, c                                       ; $781f: $79
    rst $38                                       ; $7820: $ff
    dec sp                                        ; $7821: $3b
    rst $38                                       ; $7822: $ff
    rrca                                          ; $7823: $0f

jr_0d5_7824:
    nop                                           ; $7824: $00
    cp a                                          ; $7825: $bf
    ld c, a                                       ; $7826: $4f
    push af                                       ; $7827: $f5
    ldh a, [$e8]                                  ; $7828: $f0 $e8
    ld [c], a                                     ; $782a: $e2
    ret nc                                        ; $782b: $d0

    jp nz, $a000                                  ; $782c: $c2 $00 $a0

    adc b                                         ; $782f: $88
    ld b, b                                       ; $7830: $40
    dec de                                        ; $7831: $1b
    ld b, b                                       ; $7832: $40
    db $10                                        ; $7833: $10
    ld c, b                                       ; $7834: $48
    ld bc, $4c00                                  ; $7835: $01 $00 $4c
    inc bc                                        ; $7838: $03
    ld [bc], a                                    ; $7839: $02
    db $fc                                        ; $783a: $fc
    inc b                                         ; $783b: $04
    ld sp, hl                                     ; $783c: $f9
    inc b                                         ; $783d: $04
    ld bc, $f900                                  ; $783e: $01 $00 $f9
    nop                                           ; $7841: $00
    nop                                           ; $7842: $00
    rst $38                                       ; $7843: $ff
    nop                                           ; $7844: $00
    ld [$00b7], sp                                ; $7845: $08 $b7 $00
    nop                                           ; $7848: $00
    ld l, e                                       ; $7849: $6b
    db $10                                        ; $784a: $10
    ld b, d                                       ; $784b: $42
    sbc c                                         ; $784c: $99

jr_0d5_784d:
    ld b, d                                       ; $784d: $42
    add hl, de                                    ; $784e: $19
    ld [bc], a                                    ; $784f: $02
    cp c                                          ; $7850: $b9
    nop                                           ; $7851: $00
    ld [bc], a                                    ; $7852: $02
    jr c, jr_0d5_7855                             ; $7853: $38 $00

jr_0d5_7855:
    sbc e                                         ; $7855: $9b
    nop                                           ; $7856: $00
    ld e, e                                       ; $7857: $5b
    nop                                           ; $7858: $00
    sbc l                                         ; $7859: $9d
    nop                                           ; $785a: $00
    add b                                         ; $785b: $80
    ld b, h                                       ; $785c: $44
    rra                                           ; $785d: $1f
    xor e                                         ; $785e: $ab
    xor a                                         ; $785f: $af
    ld d, e                                       ; $7860: $53
    rlca                                          ; $7861: $07
    or e                                          ; $7862: $b3
    nop                                           ; $7863: $00
    ld bc, $02ad                                  ; $7864: $01 $ad $02
    ld e, b                                       ; $7867: $58
    ld [bc], a                                    ; $7868: $02
    cp b                                          ; $7869: $b8
    ld [bc], a                                    ; $786a: $02
    or b                                          ; $786b: $b0
    nop                                           ; $786c: $00
    ld [bc], a                                    ; $786d: $02
    xor b                                         ; $786e: $a8
    and l                                         ; $786f: $a5
    add d                                         ; $7870: $82
    and c                                         ; $7871: $a1
    adc d                                         ; $7872: $8a
    and d                                         ; $7873: $a2
    adc b                                         ; $7874: $88
    nop                                           ; $7875: $00
    ret nc                                        ; $7876: $d0

    push bc                                       ; $7877: $c5
    pop de                                        ; $7878: $d1
    jp nz, $c5d2                                  ; $7879: $c2 $d2 $c5

jr_0d5_787c:
    add sp, -$1a                                  ; $787c: $e8 $e6
    nop                                           ; $787e: $00
    add sp, -$1f                                  ; $787f: $e8 $e1
    ld d, b                                       ; $7881: $50
    jr z, jr_0d5_78ab                             ; $7882: $28 $27

    ld d, b                                       ; $7884: $50
    dec bc                                        ; $7885: $0b
    jr nz, @+$04                                  ; $7886: $20 $02

    ld e, h                                       ; $7888: $5c
    ld bc, $aa00                                  ; $7889: $01 $00 $aa
    nop                                           ; $788c: $00
    ld d, a                                       ; $788d: $57
    inc b                                         ; $788e: $04
    nop                                           ; $788f: $00
    inc b                                         ; $7890: $04
    nop                                           ; $7891: $00
    add hl, de                                    ; $7892: $19
    ld b, b                                       ; $7893: $40
    add l                                         ; $7894: $85
    jr c, jr_0d5_7818                             ; $7895: $38 $81

    inc a                                         ; $7897: $3c
    inc b                                         ; $7898: $04
    ld e, c                                       ; $7899: $59
    nop                                           ; $789a: $00
    ld b, h                                       ; $789b: $44
    xor c                                         ; $789c: $a9
    jr z, jr_0d5_78f0                             ; $789d: $28 $51

    ld [$1882], sp                                ; $789f: $08 $82 $18
    nop                                           ; $78a2: $00
    nop                                           ; $78a3: $00
    dec b                                         ; $78a4: $05
    ld bc, $a105                                  ; $78a5: $01 $05 $a1
    dec b                                         ; $78a8: $05
    and c                                         ; $78a9: $a1
    dec bc                                        ; $78aa: $0b

jr_0d5_78ab:
    ld b, e                                       ; $78ab: $43
    nop                                           ; $78ac: $00
    dec bc                                        ; $78ad: $0b
    add e                                         ; $78ae: $83
    ld c, e                                       ; $78af: $4b
    inc bc                                        ; $78b0: $03
    sub a                                         ; $78b1: $97
    ld b, a                                       ; $78b2: $47
    rla                                           ; $78b3: $17
    ld b, a                                       ; $78b4: $47
    inc b                                         ; $78b5: $04
    add sp, -$20                                  ; $78b6: $e8 $e0
    db $f4                                        ; $78b8: $f4
    ldh a, [$f5]                                  ; $78b9: $f0 $f5
    ld [bc], a                                    ; $78bb: $02
    nop                                           ; $78bc: $00
    ld a, [$00f8]                                 ; $78bd: $fa $f8 $00
    ld a, [$fbf8]                                 ; $78c0: $fa $f8 $fb
    ld hl, sp-$04                                 ; $78c3: $f8 $fc
    db $fc                                        ; $78c5: $fc
    jr jr_0d5_78c8                                ; $78c6: $18 $00

jr_0d5_78c8:
    ld a, [bc]                                    ; $78c8: $0a
    ld h, [hl]                                    ; $78c9: $66
    jr jr_0d5_784d                                ; $78ca: $18 $81

    ld a, [hl]                                    ; $78cc: $7e
    ld a, [hl]                                    ; $78cd: $7e
    nop                                           ; $78ce: $00
    rst $38                                       ; $78cf: $ff
    add e                                         ; $78d0: $83
    ld [$0000], sp                                ; $78d1: $08 $00 $00
    nop                                           ; $78d4: $00
    ld d, e                                       ; $78d5: $53
    ld [$4093], sp                                ; $78d6: $08 $93 $40
    ld b, [hl]                                    ; $78d9: $46
    jr z, jr_0d5_787c                             ; $78da: $28 $a0

    db $10                                        ; $78dc: $10
    rra                                           ; $78dd: $1f
    ld d, b                                       ; $78de: $50
    adc a                                         ; $78df: $8f
    db $10                                        ; $78e0: $10
    jr jr_0d5_78fa                                ; $78e1: $18 $17

    rlca                                          ; $78e3: $07
    cpl                                           ; $78e4: $2f
    rrca                                          ; $78e5: $0f
    nop                                           ; $78e6: $00
    cpl                                           ; $78e7: $2f
    adc a                                         ; $78e8: $8f
    cpl                                           ; $78e9: $2f
    adc a                                         ; $78ea: $8f
    ld e, a                                       ; $78eb: $5f
    rra                                           ; $78ec: $1f
    ld e, a                                       ; $78ed: $5f
    rra                                           ; $78ee: $1f
    nop                                           ; $78ef: $00

jr_0d5_78f0:
    rst $18                                       ; $78f0: $df
    rra                                           ; $78f1: $1f
    ccf                                           ; $78f2: $3f
    ccf                                           ; $78f3: $3f
    nop                                           ; $78f4: $00
    ld bc, $00d9                                  ; $78f5: $01 $d9 $00
    ld b, b                                       ; $78f8: $40
    rst $38                                       ; $78f9: $ff

jr_0d5_78fa:
    ld bc, $fe40                                  ; $78fa: $01 $40 $fe
    cp $d9                                        ; $78fd: $fe $d9
    ret c                                         ; $78ff: $d8

    cp $fe                                        ; $7900: $fe $fe
    nop                                           ; $7902: $00
    db $fc                                        ; $7903: $fc
    db $fc                                        ; $7904: $fc
    ldh a, [$f0]                                  ; $7905: $f0 $f0
    db $ec                                        ; $7907: $ec
    ldh [$90], a                                  ; $7908: $e0 $90
    add b                                         ; $790a: $80
    nop                                           ; $790b: $00
    ld b, b                                       ; $790c: $40
    inc c                                         ; $790d: $0c
    ldh [$08], a                                  ; $790e: $e0 $08
    sub e                                         ; $7910: $93
    ld h, b                                       ; $7911: $60
    ld a, a                                       ; $7912: $7f
    ld a, a                                       ; $7913: $7f
    nop                                           ; $7914: $00
    cp a                                          ; $7915: $bf

jr_0d5_7916:
    ccf                                           ; $7916: $3f
    rst $08                                       ; $7917: $cf
    rrca                                          ; $7918: $0f
    rst $20                                       ; $7919: $e7
    rlca                                          ; $791a: $07
    dec hl                                        ; $791b: $2b
    jp Jump_000_1402                              ; $791c: $c3 $02 $14


    ldh [rSC], a                                  ; $791f: $e0 $02
    ld [hl], b                                    ; $7921: $70

jr_0d5_7922:
    adc h                                         ; $7922: $8c
    nop                                           ; $7923: $00
    jr nc, @+$4a                                  ; $7924: $30 $48

    ccf                                           ; $7926: $3f
    nop                                           ; $7927: $00
    ccf                                           ; $7928: $3f
    rst $18                                       ; $7929: $df
    rra                                           ; $792a: $1f
    push bc                                       ; $792b: $c5
    ret nz                                        ; $792c: $c0

    xor e                                         ; $792d: $ab
    add b                                         ; $792e: $80
    and d                                         ; $792f: $a2
    nop                                           ; $7930: $00
    add c                                         ; $7931: $81
    and d                                         ; $7932: $a2
    adc c                                         ; $7933: $89
    ld [hl], d                                    ; $7934: $72
    ld bc, $015e                                  ; $7935: $01 $5e $01
    ld c, h                                       ; $7938: $4c
    nop                                           ; $7939: $00
    ld [de], a                                    ; $793a: $12
    ld b, b                                       ; $793b: $40
    ld e, $1e                                     ; $793c: $1e $1e
    and c                                         ; $793e: $a1
    inc c                                         ; $793f: $0c
    inc de                                        ; $7940: $13
    ld [$0600], sp                                ; $7941: $08 $00 $06
    nop                                           ; $7944: $00
    inc l                                         ; $7945: $2c
    ld [bc], a                                    ; $7946: $02
    jr z, jr_0d5_794f                             ; $7947: $28 $06

    ld h, b                                       ; $7949: $60
    inc b                                         ; $794a: $04
    nop                                           ; $794b: $00
    ld [hl], b                                    ; $794c: $70
    nop                                           ; $794d: $00
    ld l, h                                       ; $794e: $6c

jr_0d5_794f:
    ld d, e                                       ; $794f: $53
    adc h                                         ; $7950: $8c
    nop                                           ; $7951: $00
    rlca                                          ; $7952: $07
    ld h, b                                       ; $7953: $60
    nop                                           ; $7954: $00
    inc d                                         ; $7955: $14
    sub b                                         ; $7956: $90
    ld h, h                                       ; $7957: $64
    and h                                         ; $7958: $a4
    nop                                           ; $7959: $00
    and [hl]                                      ; $795a: $a6
    nop                                           ; $795b: $00
    call nz, Call_000_1000                        ; $795c: $c4 $00 $10
    ld [hl], b                                    ; $795f: $70
    add d                                         ; $7960: $82
    ld c, a                                       ; $7961: $4f
    adc a                                         ; $7962: $8f
    ld d, a                                       ; $7963: $57
    add a                                         ; $7964: $87
    ld c, e                                       ; $7965: $4b
    inc b                                         ; $7966: $04
    add e                                         ; $7967: $83
    ld b, l                                       ; $7968: $45
    sub c                                         ; $7969: $91
    ld b, d                                       ; $796a: $42
    sub b                                         ; $796b: $90
    ld [bc], a                                    ; $796c: $02
    ld [$804a], sp                                ; $796d: $08 $4a $80
    nop                                           ; $7970: $00
    and b                                         ; $7971: $a0
    adc h                                         ; $7972: $8c
    and b                                         ; $7973: $a0
    adc c                                         ; $7974: $89
    and b                                         ; $7975: $a0
    add d                                         ; $7976: $82
    pop de                                        ; $7977: $d1
    call nz, $d000                                ; $7978: $c4 $00 $d0
    push bc                                       ; $797b: $c5
    sub $c0                                       ; $797c: $d6 $c0
    ld [$e9e0], a                                 ; $797e: $ea $e0 $e9
    ld [c], a                                     ; $7981: $e2
    nop                                           ; $7982: $00
    db $10                                        ; $7983: $10
    ret nz                                        ; $7984: $c0

    ld [de], a                                    ; $7985: $12
    jr nz, jr_0d5_7922                            ; $7986: $20 $9a

    jr nz, jr_0d5_7916                            ; $7988: $20 $8c

    stop                                          ; $798a: $10 $00
    add e                                         ; $798c: $83
    nop                                           ; $798d: $00
    ld b, h                                       ; $798e: $44
    add d                                         ; $798f: $82
    jr nc, @+$42                                  ; $7990: $30 $40

    dec e                                         ; $7992: $1d
    jr nz, jr_0d5_7995                            ; $7993: $20 $00

jr_0d5_7995:
    ld [$d402], sp                                ; $7995: $08 $02 $d4
    ld bc, $0154                                  ; $7998: $01 $54 $01
    nop                                           ; $799b: $00
    nop                                           ; $799c: $00
    nop                                           ; $799d: $00
    inc h                                         ; $799e: $24
    ld d, b                                       ; $799f: $50
    ld [hl+], a                                   ; $79a0: $22
    ld d, h                                       ; $79a1: $54
    ret c                                         ; $79a2: $d8

    nop                                           ; $79a3: $00
    ld d, l                                       ; $79a4: $55
    adc b                                         ; $79a5: $88
    nop                                           ; $79a6: $00
    add hl, hl                                    ; $79a7: $29
    ld b, c                                       ; $79a8: $41
    add hl, de                                    ; $79a9: $19
    ld hl, $9109                                  ; $79aa: $21 $09 $91
    inc bc                                        ; $79ad: $03
    inc bc                                        ; $79ae: $03
    nop                                           ; $79af: $00
    inc hl                                        ; $79b0: $23
    inc bc                                        ; $79b1: $03
    ld c, e                                       ; $79b2: $4b
    inc hl                                        ; $79b3: $23
    adc e                                         ; $79b4: $8b
    ld b, e                                       ; $79b5: $43
    sub e                                         ; $79b6: $93
    dec bc                                        ; $79b7: $0b
    ld [$e1e8], sp                                ; $79b8: $08 $e8 $e1
    db $f4                                        ; $79bb: $f4
    ldh a, [rSC]                                  ; $79bc: $f0 $02
    ld [$f8fa], sp                                ; $79be: $08 $fa $f8
    ld a, [$f800]                                 ; $79c1: $fa $00 $f8
    ei                                            ; $79c4: $fb
    ld hl, sp-$04                                 ; $79c5: $f8 $fc
    db $fc                                        ; $79c7: $fc
    add d                                         ; $79c8: $82
    ld bc, $107a                                  ; $79c9: $01 $7a $10
    add c                                         ; $79cc: $81
    nop                                           ; $79cd: $00
    add hl, de                                    ; $79ce: $19

jr_0d5_79cf:
    ld [bc], a                                    ; $79cf: $02
    nop                                           ; $79d0: $00
    jr jr_0d5_79d3                                ; $79d1: $18 $00

jr_0d5_79d3:
    nop                                           ; $79d3: $00
    rst $38                                       ; $79d4: $ff
    nop                                           ; $79d5: $00
    nop                                           ; $79d6: $00
    nop                                           ; $79d7: $00
    nop                                           ; $79d8: $00
    ld [bc], a                                    ; $79d9: $02
    adc h                                         ; $79da: $8c
    ld [hl+], a                                   ; $79db: $22
    adc h                                         ; $79dc: $8c
    jr nz, @-$1e                                  ; $79dd: $20 $e0

    ld [bc], a                                    ; $79df: $02
    ld [$000c], sp                                ; $79e0: $08 $0c $00
    db $10                                        ; $79e3: $10
    ld [$17e7], sp                                ; $79e4: $08 $e7 $17
    rrca                                          ; $79e7: $0f
    rrca                                          ; $79e8: $0f
    cpl                                           ; $79e9: $2f
    add b                                         ; $79ea: $80
    ld [bc], a                                    ; $79eb: $02
    nop                                           ; $79ec: $00
    ld e, a                                       ; $79ed: $5f
    rra                                           ; $79ee: $1f
    ld e, a                                       ; $79ef: $5f
    rra                                           ; $79f0: $1f
    rst $18                                       ; $79f1: $df
    rra                                           ; $79f2: $1f
    ccf                                           ; $79f3: $3f
    nop                                           ; $79f4: $00
    ccf                                           ; $79f5: $3f
    nop                                           ; $79f6: $00
    ld bc, $00eb                                  ; $79f7: $01 $eb $00
    ld b, b                                       ; $79fa: $40
    rst $38                                       ; $79fb: $ff
    ld bc, $fe40                                  ; $79fc: $01 $40 $fe
    cp $f9                                        ; $79ff: $fe $f9
    ld hl, sp-$02                                 ; $7a01: $f8 $fe
    cp $00                                        ; $7a03: $fe $00
    db $fc                                        ; $7a05: $fc
    db $fc                                        ; $7a06: $fc
    ldh [$e0], a                                  ; $7a07: $e0 $e0
    ret c                                         ; $7a09: $d8

    call nz, $c8d4                                ; $7a0a: $c4 $d4 $c8
    nop                                           ; $7a0d: $00
    ld [bc], a                                    ; $7a0e: $02
    ld [$13c4], sp                                ; $7a0f: $08 $c4 $13
    ld b, $09                                     ; $7a12: $06 $09
    nop                                           ; $7a14: $00
    nop                                           ; $7a15: $00
    nop                                           ; $7a16: $00
    jr c, jr_0d5_7a20                             ; $7a17: $38 $07

    ld h, c                                       ; $7a19: $61
    inc d                                         ; $7a1a: $14
    ld [bc], a                                    ; $7a1b: $02
    ld a, c                                       ; $7a1c: $79
    ld [bc], a                                    ; $7a1d: $02
    add hl, hl                                    ; $7a1e: $29
    nop                                           ; $7a1f: $00

jr_0d5_7a20:
    inc bc                                        ; $7a20: $03
    ld d, b                                       ; $7a21: $50
    nop                                           ; $7a22: $00
    dec hl                                        ; $7a23: $2b
    nop                                           ; $7a24: $00
    add c                                         ; $7a25: $81
    ld a, a                                       ; $7a26: $7f
    ld a, a                                       ; $7a27: $7f
    nop                                           ; $7a28: $00
    ccf                                           ; $7a29: $3f
    ccf                                           ; $7a2a: $3f
    sbc a                                         ; $7a2b: $9f
    rra                                           ; $7a2c: $1f
    sbc a                                         ; $7a2d: $9f
    ld e, a                                       ; $7a2e: $5f
    sbc a                                         ; $7a2f: $9f
    ld e, a                                       ; $7a30: $5f
    nop                                           ; $7a31: $00
    rra                                           ; $7a32: $1f
    sbc a                                         ; $7a33: $9f
    ccf                                           ; $7a34: $3f
    cp a                                          ; $7a35: $bf
    rra                                           ; $7a36: $1f
    rra                                           ; $7a37: $1f
    or $f0                                        ; $7a38: $f6 $f0
    nop                                           ; $7a3a: $00
    add sp, -$1f                                  ; $7a3b: $e8 $e1
    ret nc                                        ; $7a3d: $d0

    rst $00                                       ; $7a3e: $c7
    and b                                         ; $7a3f: $a0
    adc a                                         ; $7a40: $8f
    ld b, b                                       ; $7a41: $40
    rra                                           ; $7a42: $1f
    add b                                         ; $7a43: $80
    ld [bc], a                                    ; $7a44: $02
    db $10                                        ; $7a45: $10
    dec e                                         ; $7a46: $1d
    ld [$1092], sp                                ; $7a47: $08 $92 $10
    xor l                                         ; $7a4a: $ad
    jr nc, jr_0d5_79cf                            ; $7a4b: $30 $82

    nop                                           ; $7a4d: $00
    jr nz, @-$69                                  ; $7a4e: $20 $95

    nop                                           ; $7a50: $00
    add d                                         ; $7a51: $82
    nop                                           ; $7a52: $00
    ret z                                         ; $7a53: $c8

    nop                                           ; $7a54: $00
    push hl                                       ; $7a55: $e5
    nop                                           ; $7a56: $00
    ld a, [bc]                                    ; $7a57: $0a
    ldh [$80], a                                  ; $7a58: $e0 $80
    ld b, d                                       ; $7a5a: $42
    nop                                           ; $7a5b: $00
    ld [hl+], a                                   ; $7a5c: $22
    ld [bc], a                                    ; $7a5d: $02
    ret nc                                        ; $7a5e: $d0

    nop                                           ; $7a5f: $00
    ld [$0222], sp                                ; $7a60: $08 $22 $02
    nop                                           ; $7a63: $00
    ld d, c                                       ; $7a64: $51
    adc d                                         ; $7a65: $8a
    rl b                                          ; $7a66: $cb $10
    nop                                           ; $7a68: $00
    ret                                           ; $7a69: $c9


    ld [bc], a                                    ; $7a6a: $02
    ld l, a                                       ; $7a6b: $6f
    rrca                                          ; $7a6c: $0f
    rla                                           ; $7a6d: $17
    add a                                         ; $7a6e: $87
    dec bc                                        ; $7a6f: $0b
    db $e3                                        ; $7a70: $e3
    nop                                           ; $7a71: $00
    dec b                                         ; $7a72: $05
    ld [hl], c                                    ; $7a73: $71
    add d                                         ; $7a74: $82
    jr c, jr_0d5_7a79                             ; $7a75: $38 $02

    ld e, b                                       ; $7a77: $58
    ld b, d                                       ; $7a78: $42

jr_0d5_7a79:
    jr jr_0d5_7a7b                                ; $7a79: $18 $00

jr_0d5_7a7b:
    ld h, d                                       ; $7a7b: $62
    ld [$88a2], sp                                ; $7a7c: $08 $a2 $88
    and c                                         ; $7a7f: $a1
    adc d                                         ; $7a80: $8a
    and b                                         ; $7a81: $a0
    adc l                                         ; $7a82: $8d
    nop                                           ; $7a83: $00
    ret nc                                        ; $7a84: $d0

    ret nz                                        ; $7a85: $c0

    db $d3                                        ; $7a86: $d3
    call nz, $c1d0                                ; $7a87: $c4 $d0 $c1
    add sp, -$20                                  ; $7a8a: $e8 $e0
    nop                                           ; $7a8c: $00
    pop hl                                        ; $7a8d: $e1
    ldh [$0a], a                                  ; $7a8e: $e0 $0a
    add b                                         ; $7a90: $80
    ld b, a                                       ; $7a91: $47
    nop                                           ; $7a92: $00
    and h                                         ; $7a93: $a4
    nop                                           ; $7a94: $00
    nop                                           ; $7a95: $00
    ld b, b                                       ; $7a96: $40
    inc de                                        ; $7a97: $13
    sub b                                         ; $7a98: $90
    ld [$04d0], sp                                ; $7a99: $08 $d0 $04
    ld b, b                                       ; $7a9c: $40
    nop                                           ; $7a9d: $00
    nop                                           ; $7a9e: $00
    adc a                                         ; $7a9f: $8f
    ld d, b                                       ; $7aa0: $50
    add e                                         ; $7aa1: $83
    jr nc, jr_0d5_7aa5                            ; $7aa2: $30 $01

    ld [hl], d                                    ; $7aa4: $72

jr_0d5_7aa5:
    inc bc                                        ; $7aa5: $03
    ret z                                         ; $7aa6: $c8

    nop                                           ; $7aa7: $00
    ld bc, $0192                                  ; $7aa8: $01 $92 $01
    ld a, [hl+]                                   ; $7aab: $2a
    dec b                                         ; $7aac: $05
    ld d, b                                       ; $7aad: $50
    inc b                                         ; $7aae: $04
    jr z, jr_0d5_7ab1                             ; $7aaf: $28 $00

jr_0d5_7ab1:
    nop                                           ; $7ab1: $00
    sub b                                         ; $7ab2: $90
    dec h                                         ; $7ab3: $25
    ld b, c                                       ; $7ab4: $41
    dec b                                         ; $7ab5: $05
    ld h, c                                       ; $7ab6: $61
    dec b                                         ; $7ab7: $05
    ld hl, $4b00                                  ; $7ab8: $21 $00 $4b
    inc bc                                        ; $7abb: $03
    ld c, e                                       ; $7abc: $4b
    inc bc                                        ; $7abd: $03
    dec bc                                        ; $7abe: $0b
    ld b, e                                       ; $7abf: $43
    rla                                           ; $7ac0: $17
    add a                                         ; $7ac1: $87
    ld bc, $0797                                  ; $7ac2: $01 $97 $07
    ld [c], a                                     ; $7ac5: $e2
    push hl                                       ; $7ac6: $e5
    ldh a, [$f0]                                  ; $7ac7: $f0 $f0
    db $f4                                        ; $7ac9: $f4
    ld [bc], a                                    ; $7aca: $02
    nop                                           ; $7acb: $00
    nop                                           ; $7acc: $00
    ld a, [$faf8]                                 ; $7acd: $fa $f8 $fa
    ld hl, sp-$05                                 ; $7ad0: $f8 $fb
    ld hl, sp-$04                                 ; $7ad2: $f8 $fc
    db $fc                                        ; $7ad4: $fc
    nop                                           ; $7ad5: $00
    ld a, [hl-]                                   ; $7ad6: $3a
    dec b                                         ; $7ad7: $05
    ld [hl], h                                    ; $7ad8: $74
    ld a, [bc]                                    ; $7ad9: $0a
    ld d, b                                       ; $7ada: $50
    xor l                                         ; $7adb: $ad
    and b                                         ; $7adc: $a0
    ld e, d                                       ; $7add: $5a
    nop                                           ; $7ade: $00
    nop                                           ; $7adf: $00
    push af                                       ; $7ae0: $f5
    nop                                           ; $7ae1: $00
    nop                                           ; $7ae2: $00
    rst $38                                       ; $7ae3: $ff
    nop                                           ; $7ae4: $00
    nop                                           ; $7ae5: $00
    nop                                           ; $7ae6: $00
    nop                                           ; $7ae7: $00
    ld bc, $084c                                  ; $7ae8: $01 $4c $08
    sub l                                         ; $7aeb: $95
    db $10                                        ; $7aec: $10
    dec c                                         ; $7aed: $0d
    ld sp, $200c                                  ; $7aee: $31 $0c $20
    nop                                           ; $7af1: $00
    jr nc, jr_0d5_7b04                            ; $7af2: $30 $10

    jr jr_0d5_7b0d                                ; $7af4: $18 $17

    rlca                                          ; $7af6: $07
    xor a                                         ; $7af7: $af
    rrca                                          ; $7af8: $0f
    cpl                                           ; $7af9: $2f
    nop                                           ; $7afa: $00
    adc a                                         ; $7afb: $8f
    cpl                                           ; $7afc: $2f
    rrca                                          ; $7afd: $0f
    ld e, a                                       ; $7afe: $5f
    rra                                           ; $7aff: $1f
    ld e, a                                       ; $7b00: $5f
    rra                                           ; $7b01: $1f
    rst $18                                       ; $7b02: $df
    nop                                           ; $7b03: $00

jr_0d5_7b04:
    rra                                           ; $7b04: $1f
    ccf                                           ; $7b05: $3f
    ccf                                           ; $7b06: $3f
    nop                                           ; $7b07: $00
    ld bc, $00ea                                  ; $7b08: $01 $ea $00
    ld b, b                                       ; $7b0b: $40
    rst $38                                       ; $7b0c: $ff

jr_0d5_7b0d:
    ld bc, $fe30                                  ; $7b0d: $01 $30 $fe
    cp $fc                                        ; $7b10: $fe $fc
    db $fd                                        ; $7b12: $fd
    ld hl, sp-$07                                 ; $7b13: $f8 $f9
    nop                                           ; $7b15: $00
    ldh a, [$f0]                                  ; $7b16: $f0 $f0
    call $a2c2                                    ; $7b18: $cd $c2 $a2
    sbc c                                         ; $7b1b: $99
    add b                                         ; $7b1c: $80
    add b                                         ; $7b1d: $80
    nop                                           ; $7b1e: $00
    add hl, bc                                    ; $7b1f: $09
    ld d, d                                       ; $7b20: $52
    sub h                                         ; $7b21: $94
    ld l, d                                       ; $7b22: $6a
    xor b                                         ; $7b23: $a8
    dec b                                         ; $7b24: $05
    ld bc, $006a                                  ; $7b25: $01 $6a $00
    ld a, a                                       ; $7b28: $7f
    ld a, a                                       ; $7b29: $7f
    rra                                           ; $7b2a: $1f
    sbc a                                         ; $7b2b: $9f
    rst $08                                       ; $7b2c: $cf
    cpl                                           ; $7b2d: $2f
    ld h, a                                       ; $7b2e: $67
    sub a                                         ; $7b2f: $97
    nop                                           ; $7b30: $00
    inc de                                        ; $7b31: $13
    dec hl                                        ; $7b32: $2b
    jr jr_0d5_7b75                                ; $7b33: $18 $40

    add e                                         ; $7b35: $83
    ld d, b                                       ; $7b36: $50
    add b                                         ; $7b37: $80
    ld e, b                                       ; $7b38: $58
    add b                                         ; $7b39: $80
    jr nc, jr_0d5_7b74                            ; $7b3a: $30 $38

    rst $38                                       ; $7b3c: $ff
    rst $38                                       ; $7b3d: $ff
    ld a, a                                       ; $7b3e: $7f

jr_0d5_7b3f:
    ld a, a                                       ; $7b3f: $7f
    sbc a                                         ; $7b40: $9f
    rra                                           ; $7b41: $1f
    db $f4                                        ; $7b42: $f4
    nop                                           ; $7b43: $00
    ldh a, [$e8]                                  ; $7b44: $f0 $e8
    ldh [$d0], a                                  ; $7b46: $e0 $d0
    pop bc                                        ; $7b48: $c1
    and b                                         ; $7b49: $a0
    add h                                         ; $7b4a: $84
    ld b, b                                       ; $7b4b: $40
    nop                                           ; $7b4c: $00
    inc b                                         ; $7b4d: $04
    ld b, b                                       ; $7b4e: $40
    inc b                                         ; $7b4f: $04
    ld b, d                                       ; $7b50: $42
    dec b                                         ; $7b51: $05
    ld b, b                                       ; $7b52: $40
    ld [bc], a                                    ; $7b53: $02
    nop                                           ; $7b54: $00
    nop                                           ; $7b55: $00
    dec h                                         ; $7b56: $25
    nop                                           ; $7b57: $00
    sbc b                                         ; $7b58: $98
    ld e, a                                       ; $7b59: $5f
    and b                                         ; $7b5a: $a0
    ld [hl], c                                    ; $7b5b: $71
    ld [bc], a                                    ; $7b5c: $02
    xor b                                         ; $7b5d: $a8
    nop                                           ; $7b5e: $00
    ld bc, $4120                                  ; $7b5f: $01 $20 $41
    inc c                                         ; $7b62: $0c
    ld [de], a                                    ; $7b63: $12
    ld b, c                                       ; $7b64: $41
    nop                                           ; $7b65: $00
    stop                                          ; $7b66: $10 $00
    xor b                                         ; $7b68: $a8
    nop                                           ; $7b69: $00
    ld e, b                                       ; $7b6a: $58
    nop                                           ; $7b6b: $00
    db $e4                                        ; $7b6c: $e4
    add c                                         ; $7b6d: $81
    ld b, d                                       ; $7b6e: $42
    add b                                         ; $7b6f: $80
    nop                                           ; $7b70: $00
    inc d                                         ; $7b71: $14
    dec b                                         ; $7b72: $05
    ld [hl-], a                                   ; $7b73: $32

jr_0d5_7b74:
    ld b, [hl]                                    ; $7b74: $46

jr_0d5_7b75:
    and c                                         ; $7b75: $a1
    jp $6f04                                      ; $7b76: $c3 $04 $6f


    nop                                           ; $7b79: $00
    rrca                                          ; $7b7a: $0f
    rla                                           ; $7b7b: $17
    rlca                                          ; $7b7c: $07
    dec bc                                        ; $7b7d: $0b
    inc bc                                        ; $7b7e: $03
    push bc                                       ; $7b7f: $c5
    ld hl, $0062                                  ; $7b80: $21 $62 $00
    sub b                                         ; $7b83: $90
    ld [hl+], a                                   ; $7b84: $22
    ld d, b                                       ; $7b85: $50
    ld [bc], a                                    ; $7b86: $02
    ld [hl], b                                    ; $7b87: $70
    ld [bc], a                                    ; $7b88: $02
    ld h, b                                       ; $7b89: $60
    and b                                         ; $7b8a: $a0
    nop                                           ; $7b8b: $00
    add b                                         ; $7b8c: $80
    add b                                         ; $7b8d: $80
    adc [hl]                                      ; $7b8e: $8e
    adc h                                         ; $7b8f: $8c
    sub e                                         ; $7b90: $93
    call nc, $c6c2                                ; $7b91: $d4 $c2 $c6
    nop                                           ; $7b94: $00
    ret                                           ; $7b95: $c9


    pop bc                                        ; $7b96: $c1
    jp c, $ccc0                                   ; $7b97: $da $c0 $cc

    ldh [$e1], a                                  ; $7b9a: $e0 $e1
    ld a, a                                       ; $7b9c: $7f
    nop                                           ; $7b9d: $00
    add b                                         ; $7b9e: $80
    sbc a                                         ; $7b9f: $9f
    jr nz, jr_0d5_7bf0                            ; $7ba0: $20 $4e

    ld bc, $021c                                  ; $7ba2: $01 $1c $02
    jr nc, jr_0d5_7ba7                            ; $7ba5: $30 $00

jr_0d5_7ba7:
    ld c, l                                       ; $7ba7: $4d
    nop                                           ; $7ba8: $00
    add e                                         ; $7ba9: $83
    nop                                           ; $7baa: $00
    ld c, a                                       ; $7bab: $4f
    adc d                                         ; $7bac: $8a
    dec d                                         ; $7bad: $15
    add b                                         ; $7bae: $80
    nop                                           ; $7baf: $00
    ld c, e                                       ; $7bb0: $4b
    nop                                           ; $7bb1: $00
    sub h                                         ; $7bb2: $94
    ld [bc], a                                    ; $7bb3: $02
    dec h                                         ; $7bb4: $25
    jr nz, jr_0d5_7b3f                            ; $7bb5: $20 $88

    ld b, [hl]                                    ; $7bb7: $46
    nop                                           ; $7bb8: $00
    adc b                                         ; $7bb9: $88
    inc bc                                        ; $7bba: $03
    sub h                                         ; $7bbb: $94
    db $10                                        ; $7bbc: $10
    adc c                                         ; $7bbd: $89
    db $10                                        ; $7bbe: $10
    adc d                                         ; $7bbf: $8a
    dec b                                         ; $7bc0: $05
    nop                                           ; $7bc1: $00
    pop bc                                        ; $7bc2: $c1
    dec b                                         ; $7bc3: $05
    ld hl, $9125                                  ; $7bc4: $21 $25 $91
    ld d, e                                       ; $7bc7: $53
    xor e                                         ; $7bc8: $ab
    sub e                                         ; $7bc9: $93
    nop                                           ; $7bca: $00
    dec hl                                        ; $7bcb: $2b
    adc e                                         ; $7bcc: $8b
    inc hl                                        ; $7bcd: $23
    rla                                           ; $7bce: $17
    rlca                                          ; $7bcf: $07
    rla                                           ; $7bd0: $17
    ld b, a                                       ; $7bd1: $47
    add sp, $00                                   ; $7bd2: $e8 $00
    ld [c], a                                     ; $7bd4: $e2
    push af                                       ; $7bd5: $f5
    ldh a, [$f4]                                  ; $7bd6: $f0 $f4
    pop af                                        ; $7bd8: $f1
    db $f4                                        ; $7bd9: $f4
    pop af                                        ; $7bda: $f1
    ld a, [$f800]                                 ; $7bdb: $fa $00 $f8
    ld a, [$fbf8]                                 ; $7bde: $fa $f8 $fb
    ld hl, sp-$04                                 ; $7be1: $f8 $fc
    db $fc                                        ; $7be3: $fc
    sub a                                         ; $7be4: $97
    nop                                           ; $7be5: $00
    ld c, b                                       ; $7be6: $48
    ld c, $91                                     ; $7be7: $0e $91
    sbc h                                         ; $7be9: $9c
    ld b, d                                       ; $7bea: $42
    ld c, b                                       ; $7beb: $48
    dec d                                         ; $7bec: $15
    ld bc, $8800                                  ; $7bed: $01 $00 $88

jr_0d5_7bf0:
    nop                                           ; $7bf0: $00
    nop                                           ; $7bf1: $00
    rst $38                                       ; $7bf2: $ff
    nop                                           ; $7bf3: $00
    nop                                           ; $7bf4: $00
    nop                                           ; $7bf5: $00
    ld bc, $9a00                                  ; $7bf6: $01 $00 $9a
    ld [de], a                                    ; $7bf9: $12
    ld hl, $8660                                  ; $7bfa: $21 $60 $86
    add d                                         ; $7bfd: $82
    ld h, l                                       ; $7bfe: $65
    ld b, $40                                     ; $7bff: $06 $40
    or b                                          ; $7c01: $b0
    db $10                                        ; $7c02: $10
    jr jr_0d5_7c1c                                ; $7c03: $18 $17

    add a                                         ; $7c05: $87
    cpl                                           ; $7c06: $2f
    rrca                                          ; $7c07: $0f
    cpl                                           ; $7c08: $2f
    adc a                                         ; $7c09: $8f
    nop                                           ; $7c0a: $00
    cpl                                           ; $7c0b: $2f
    rrca                                          ; $7c0c: $0f
    ld e, a                                       ; $7c0d: $5f
    rra                                           ; $7c0e: $1f
    ld e, a                                       ; $7c0f: $5f
    rra                                           ; $7c10: $1f
    rst $18                                       ; $7c11: $df
    rra                                           ; $7c12: $1f
    nop                                           ; $7c13: $00
    ccf                                           ; $7c14: $3f
    ccf                                           ; $7c15: $3f
    nop                                           ; $7c16: $00
    ld bc, $00f7                                  ; $7c17: $01 $f7 $00
    nop                                           ; $7c1a: $00
    rst $38                                       ; $7c1b: $ff

jr_0d5_7c1c:
    db $fd                                        ; $7c1c: $fd
    rst $38                                       ; $7c1d: $ff
    db $fc                                        ; $7c1e: $fc
    rst $38                                       ; $7c1f: $ff
    cp $ff                                        ; $7c20: $fe $ff
    cp $10                                        ; $7c22: $fe $10
    db $fc                                        ; $7c24: $fc
    db $fc                                        ; $7c25: $fc
    cp $01                                        ; $7c26: $fe $01
    nop                                           ; $7c28: $00
    pop hl                                        ; $7c29: $e1
    ldh [$fe], a                                  ; $7c2a: $e0 $fe
    cp $00                                        ; $7c2c: $fe $00
    push af                                       ; $7c2e: $f5
    db $f4                                        ; $7c2f: $f4
    ldh a, [$f2]                                  ; $7c30: $f0 $f2
    call $c040                                    ; $7c32: $cd $40 $c0
    ld d, c                                       ; $7c35: $51
    nop                                           ; $7c36: $00
    and l                                         ; $7c37: $a5
    ld [$05c2], sp                                ; $7c38: $08 $c2 $05
    ld b, b                                       ; $7c3b: $40
    jr nz, @+$81                                  ; $7c3c: $20 $7f

    ld a, a                                       ; $7c3e: $7f
    nop                                           ; $7c3f: $00
    or a                                          ; $7c40: $b7
    scf                                           ; $7c41: $37
    ld c, e                                       ; $7c42: $4b
    dec bc                                        ; $7c43: $0b
    rla                                           ; $7c44: $17
    ld b, a                                       ; $7c45: $47
    ld b, e                                       ; $7c46: $43
    inc de                                        ; $7c47: $13
    ld [bc], a                                    ; $7c48: $02
    inc b                                         ; $7c49: $04
    ld b, b                                       ; $7c4a: $40
    ld [hl+], a                                   ; $7c4b: $22
    nop                                           ; $7c4c: $00
    inc de                                        ; $7c4d: $13
    ld c, b                                       ; $7c4e: $48
    jr nc, jr_0d5_7c51                            ; $7c4f: $30 $00

jr_0d5_7c51:
    ld sp, hl                                     ; $7c51: $f9
    nop                                           ; $7c52: $00
    rst $38                                       ; $7c53: $ff
    ei                                            ; $7c54: $fb
    sbc a                                         ; $7c55: $9f
    sbc e                                         ; $7c56: $9b
    rrca                                          ; $7c57: $0f
    inc bc                                        ; $7c58: $03
    rra                                           ; $7c59: $1f
    ld d, a                                       ; $7c5a: $57
    nop                                           ; $7c5b: $00
    rra                                           ; $7c5c: $1f
    ld b, a                                       ; $7c5d: $47
    rra                                           ; $7c5e: $1f
    ld c, a                                       ; $7c5f: $4f
    ldh a, [$f0]                                  ; $7c60: $f0 $f0
    add sp, -$1e                                  ; $7c62: $e8 $e2
    nop                                           ; $7c64: $00
    ret nc                                        ; $7c65: $d0

    jp Jump_000_0580                              ; $7c66: $c3 $80 $05


    ret nz                                        ; $7c69: $c0

    jr z, jr_0d5_7cac                             ; $7c6a: $28 $40

    nop                                           ; $7c6c: $00
    nop                                           ; $7c6d: $00
    ld h, b                                       ; $7c6e: $60
    ld a, [bc]                                    ; $7c6f: $0a
    ld d, b                                       ; $7c70: $50
    dec b                                         ; $7c71: $05
    ld b, l                                       ; $7c72: $45
    sub b                                         ; $7c73: $90
    ld h, l                                       ; $7c74: $65
    ld [$2300], sp                                ; $7c75: $08 $00 $23
    sub h                                         ; $7c78: $94
    ld [hl+], a                                   ; $7c79: $22
    jr jr_0d5_7cad                                ; $7c7a: $18 $31

    nop                                           ; $7c7c: $00
    inc d                                         ; $7c7d: $14
    ld b, c                                       ; $7c7e: $41
    nop                                           ; $7c7f: $00
    dec d                                         ; $7c80: $15
    add b                                         ; $7c81: $80
    jr jr_0d5_7c89                                ; $7c82: $18 $05

    and b                                         ; $7c84: $a0
    nop                                           ; $7c85: $00
    and b                                         ; $7c86: $a0
    rrca                                          ; $7c87: $0f
    nop                                           ; $7c88: $00

jr_0d5_7c89:
    ret nz                                        ; $7c89: $c0

    ld [hl+], a                                   ; $7c8a: $22
    ld d, b                                       ; $7c8b: $50
    dec b                                         ; $7c8c: $05
    sub c                                         ; $7c8d: $91
    ld [bc], a                                    ; $7c8e: $02
    ld hl, $0084                                  ; $7c8f: $21 $84 $00
    and e                                         ; $7c92: $a3
    nop                                           ; $7c93: $00
    ld b, $a8                                     ; $7c94: $06 $a8
    ccf                                           ; $7c96: $3f
    adc a                                         ; $7c97: $8f
    ld h, a                                       ; $7c98: $67
    rlca                                          ; $7c99: $07
    nop                                           ; $7c9a: $00
    rlc e                                         ; $7c9b: $cb $03
    sub l                                         ; $7c9d: $95
    ld bc, $0098                                  ; $7c9e: $01 $98 $00
    stop                                          ; $7ca1: $10 $00
    nop                                           ; $7ca3: $00
    ld [bc], a                                    ; $7ca4: $02
    ret nz                                        ; $7ca5: $c0

    ld [bc], a                                    ; $7ca6: $02
    ld [hl], b                                    ; $7ca7: $70
    xor h                                         ; $7ca8: $ac
    add d                                         ; $7ca9: $82
    and a                                         ; $7caa: $a7
    add b                                         ; $7cab: $80

jr_0d5_7cac:
    nop                                           ; $7cac: $00

jr_0d5_7cad:
    and c                                         ; $7cad: $a1
    add d                                         ; $7cae: $82
    ret nz                                        ; $7caf: $c0

    ret nz                                        ; $7cb0: $c0

    pop bc                                        ; $7cb1: $c1
    ret nz                                        ; $7cb2: $c0

    jp nc, Jump_000_00c1                          ; $7cb3: $d2 $c1 $00

    add sp, -$1e                                  ; $7cb6: $e8 $e2
    jp hl                                         ; $7cb8: $e9


    ld [c], a                                     ; $7cb9: $e2
    jr jr_0d5_7cdc                                ; $7cba: $18 $20

    ld c, $70                                     ; $7cbc: $0e $70
    nop                                           ; $7cbe: $00
    inc l                                         ; $7cbf: $2c
    ld b, b                                       ; $7cc0: $40
    call nc, Call_0d5_620b                        ; $7cc1: $d4 $0b $62
    add h                                         ; $7cc4: $84
    inc sp                                        ; $7cc5: $33
    adc b                                         ; $7cc6: $88
    nop                                           ; $7cc7: $00
    ld e, a                                       ; $7cc8: $5f
    jr nz, jr_0d5_7d12                            ; $7cc9: $20 $47

    db $10                                        ; $7ccb: $10
    inc b                                         ; $7ccc: $04
    ld a, [de]                                    ; $7ccd: $1a
    ld l, b                                       ; $7cce: $68
    inc de                                        ; $7ccf: $13
    nop                                           ; $7cd0: $00
    ld a, [de]                                    ; $7cd1: $1a
    ld bc, $8934                                  ; $7cd2: $01 $34 $89
    ld h, e                                       ; $7cd5: $63
    sbc h                                         ; $7cd6: $9c
    and $09                                       ; $7cd7: $e6 $09
    nop                                           ; $7cd9: $00
    db $fc                                        ; $7cda: $fc
    nop                                           ; $7cdb: $00

jr_0d5_7cdc:
    pop hl                                        ; $7cdc: $e1
    jr jr_0d5_7ce4                                ; $7cdd: $18 $05

    ld bc, $110d                                  ; $7cdf: $01 $0d $11
    nop                                           ; $7ce2: $00
    dec [hl]                                      ; $7ce3: $35

jr_0d5_7ce4:
    ld bc, $03eb                                  ; $7ce4: $01 $eb $03
    add e                                         ; $7ce7: $83
    inc hl                                        ; $7ce8: $23
    inc bc                                        ; $7ce9: $03
    add e                                         ; $7cea: $83
    nop                                           ; $7ceb: $00
    rlca                                          ; $7cec: $07
    rst $00                                       ; $7ced: $c7
    rla                                           ; $7cee: $17
    ld b, a                                       ; $7cef: $47
    add sp, -$1d                                  ; $7cf0: $e8 $e3
    ldh a, [$f1]                                  ; $7cf2: $f0 $f1
    nop                                           ; $7cf4: $00
    db $f4                                        ; $7cf5: $f4
    ldh a, [$f4]                                  ; $7cf6: $f0 $f4
    ldh a, [$f9]                                  ; $7cf8: $f0 $f9
    ld a, [$f8ff]                                 ; $7cfa: $fa $ff $f8
    nop                                           ; $7cfd: $00
    rst $38                                       ; $7cfe: $ff
    ldh [$fc], a                                  ; $7cff: $e0 $fc
    call z, Call_000_102b                         ; $7d01: $cc $2b $10
    inc bc                                        ; $7d04: $03
    add h                                         ; $7d05: $84
    nop                                           ; $7d06: $00
    ld e, $20                                     ; $7d07: $1e $20
    ld [hl], b                                    ; $7d09: $70
    adc a                                         ; $7d0a: $8f
    ret nz                                        ; $7d0b: $c0

    jr nz, jr_0d5_7d0e                            ; $7d0c: $20 $00

jr_0d5_7d0e:
    add b                                         ; $7d0e: $80
    nop                                           ; $7d0f: $00
    rst $38                                       ; $7d10: $ff
    nop                                           ; $7d11: $00

jr_0d5_7d12:
    nop                                           ; $7d12: $00
    nop                                           ; $7d13: $00
    jp nz, $e239                                  ; $7d14: $c2 $39 $e2

    ld bc, $6006                                  ; $7d17: $01 $06 $60
    sub b                                         ; $7d1a: $90
    jr nz, @-$1f                                  ; $7d1b: $20 $df

    jr nc, jr_0d5_7d8f                            ; $7d1d: $30 $70

    nop                                           ; $7d1f: $00
    db $10                                        ; $7d20: $10
    ld [$0097], sp                                ; $7d21: $08 $97 $00
    ld b, a                                       ; $7d24: $47
    cpl                                           ; $7d25: $2f
    adc a                                         ; $7d26: $8f
    rrca                                          ; $7d27: $0f
    rrca                                          ; $7d28: $0f
    cpl                                           ; $7d29: $2f
    adc a                                         ; $7d2a: $8f
    ld e, a                                       ; $7d2b: $5f
    nop                                           ; $7d2c: $00
    rra                                           ; $7d2d: $1f
    ld e, a                                       ; $7d2e: $5f
    rra                                           ; $7d2f: $1f
    rst $18                                       ; $7d30: $df
    rra                                           ; $7d31: $1f
    ccf                                           ; $7d32: $3f
    ccf                                           ; $7d33: $3f
    nop                                           ; $7d34: $00
    ld bc, $00e5                                  ; $7d35: $01 $e5 $00
    ld b, b                                       ; $7d38: $40
    rst $38                                       ; $7d39: $ff
    ld bc, $fd00                                  ; $7d3a: $01 $00 $fd
    db $fc                                        ; $7d3d: $fc
    push af                                       ; $7d3e: $f5
    ldh a, [$f7]                                  ; $7d3f: $f0 $f7
    ldh a, [rP1]                                  ; $7d41: $f0 $00
    ld sp, hl                                     ; $7d43: $f9
    ld hl, sp-$05                                 ; $7d44: $f8 $fb
    ld hl, sp-$01                                 ; $7d46: $f8 $ff
    ld hl, sp-$02                                 ; $7d48: $f8 $fe
    cp $00                                        ; $7d4a: $fe $00
    db $fd                                        ; $7d4c: $fd
    db $fc                                        ; $7d4d: $fc
    ld a, [c]                                     ; $7d4e: $f2
    or b                                          ; $7d4f: $b0
    xor h                                         ; $7d50: $ac
    ld hl, $4350                                  ; $7d51: $21 $50 $43
    nop                                           ; $7d54: $00
    ld hl, $5f0e                                  ; $7d55: $21 $0e $5f
    nop                                           ; $7d58: $00
    ret nz                                        ; $7d59: $c0

    jr nc, jr_0d5_7ddb                            ; $7d5a: $30 $7f

    ld a, a                                       ; $7d5c: $7f
    nop                                           ; $7d5d: $00
    cp a                                          ; $7d5e: $bf
    ccf                                           ; $7d5f: $3f
    ld c, a                                       ; $7d60: $4f
    rrca                                          ; $7d61: $0f
    scf                                           ; $7d62: $37
    add [hl]                                      ; $7d63: $86
    dec bc                                        ; $7d64: $0b
    ret nz                                        ; $7d65: $c0

    inc bc                                        ; $7d66: $03
    rst $38                                       ; $7d67: $ff
    nop                                           ; $7d68: $00
    add b                                         ; $7d69: $80
    ld h, c                                       ; $7d6a: $61
    nop                                           ; $7d6b: $00
    inc e                                         ; $7d6c: $1c
    jr nc, jr_0d5_7d77                            ; $7d6d: $30 $08

    inc [hl]                                      ; $7d6f: $34
    nop                                           ; $7d70: $00
    nop                                           ; $7d71: $00
    ccf                                           ; $7d72: $3f
    rst $38                                       ; $7d73: $ff
    rra                                           ; $7d74: $1f
    rst $38                                       ; $7d75: $ff
    rra                                           ; $7d76: $1f

jr_0d5_7d77:
    sbc a                                         ; $7d77: $9f
    rra                                           ; $7d78: $1f
    rra                                           ; $7d79: $1f
    nop                                           ; $7d7a: $00
    rra                                           ; $7d7b: $1f
    ld hl, sp-$1c                                 ; $7d7c: $f8 $e4
    jp $d1c0                                      ; $7d7e: $c3 $c0 $d1


    call nz, $00a1                                ; $7d81: $c4 $a1 $00
    adc h                                         ; $7d84: $8c
    ld b, e                                       ; $7d85: $43
    inc e                                         ; $7d86: $1c
    ld b, e                                       ; $7d87: $43
    jr jr_0d5_7dcf                                ; $7d88: $18 $45

    db $10                                        ; $7d8a: $10
    ld b, h                                       ; $7d8b: $44
    nop                                           ; $7d8c: $00
    stop                                          ; $7d8d: $10 $00

jr_0d5_7d8f:
    rrca                                          ; $7d8f: $0f
    ld b, b                                       ; $7d90: $40
    rra                                           ; $7d91: $1f
    nop                                           ; $7d92: $00
    rra                                           ; $7d93: $1f
    nop                                           ; $7d94: $00
    nop                                           ; $7d95: $00
    ld a, a                                       ; $7d96: $7f
    nop                                           ; $7d97: $00
    ld a, h                                       ; $7d98: $7c
    nop                                           ; $7d99: $00
    dec sp                                        ; $7d9a: $3b
    add d                                         ; $7d9b: $82
    ld [$00b1], sp                                ; $7d9c: $08 $b1 $00
    inc b                                         ; $7d9f: $04
    nop                                           ; $7da0: $00
    pop bc                                        ; $7da1: $c1
    ld a, $80                                     ; $7da2: $3e $80
    ld hl, $309e                                  ; $7da4: $21 $9e $30
    nop                                           ; $7da7: $00
    ld c, l                                       ; $7da8: $4d
    jr nz, jr_0d5_7ded                            ; $7da9: $20 $42

    ld a, [de]                                    ; $7dab: $1a
    ld b, c                                       ; $7dac: $41
    inc de                                        ; $7dad: $13
    ret nz                                        ; $7dae: $c0

    ld a, [hl-]                                   ; $7daf: $3a
    nop                                           ; $7db0: $00
    nop                                           ; $7db1: $00
    ld l, a                                       ; $7db2: $6f
    rrca                                          ; $7db3: $0f
    ld de, $0a81                                  ; $7db4: $11 $81 $0a
    jr nz, jr_0d5_7dbb                            ; $7db7: $20 $02

    nop                                           ; $7db9: $00
    or h                                          ; $7dba: $b4

jr_0d5_7dbb:
    ld b, $b0                                     ; $7dbb: $06 $b0
    ld b, $30                                     ; $7dbd: $06 $30
    inc b                                         ; $7dbf: $04
    sub d                                         ; $7dc0: $92
    inc h                                         ; $7dc1: $24
    nop                                           ; $7dc2: $00
    ld d, b                                       ; $7dc3: $50
    and h                                         ; $7dc4: $a4
    add b                                         ; $7dc5: $80
    and h                                         ; $7dc6: $a4
    add b                                         ; $7dc7: $80
    and b                                         ; $7dc8: $a0
    add h                                         ; $7dc9: $84
    ret nz                                        ; $7dca: $c0

    ld b, b                                       ; $7dcb: $40
    call z, $0802                                 ; $7dcc: $cc $02 $08

jr_0d5_7dcf:
    ldh [$ec], a                                  ; $7dcf: $e0 $ec
    ldh [$ec], a                                  ; $7dd1: $e0 $ec
    jr jr_0d5_7dd6                                ; $7dd3: $18 $01

    nop                                           ; $7dd5: $00

jr_0d5_7dd6:
    ld e, [hl]                                    ; $7dd6: $5e
    nop                                           ; $7dd7: $00
    ld e, a                                       ; $7dd8: $5f
    nop                                           ; $7dd9: $00
    rra                                           ; $7dda: $1f

jr_0d5_7ddb:
    ld b, b                                       ; $7ddb: $40
    ld e, a                                       ; $7ddc: $5f
    nop                                           ; $7ddd: $00
    nop                                           ; $7dde: $00
    ld a, [bc]                                    ; $7ddf: $0a
    ld d, l                                       ; $7de0: $55
    dec d                                         ; $7de1: $15
    jp z, $df00                                   ; $7de2: $ca $00 $df

    cp h                                          ; $7de5: $bc
    nop                                           ; $7de6: $00
    nop                                           ; $7de7: $00
    sbc c                                         ; $7de8: $99
    nop                                           ; $7de9: $00
    ld hl, $bc02                                  ; $7dea: $21 $02 $bc

jr_0d5_7ded:
    ld [bc], a                                    ; $7ded: $02
    inc b                                         ; $7dee: $04
    or d                                          ; $7def: $b2
    nop                                           ; $7df0: $00
    inc c                                         ; $7df1: $0c
    sub d                                         ; $7df2: $92
    nop                                           ; $7df3: $00
    sbc l                                         ; $7df4: $9d
    nop                                           ; $7df5: $00
    sbc l                                         ; $7df6: $9d
    dec h                                         ; $7df7: $25
    pop de                                        ; $7df8: $d1
    ld [bc], a                                    ; $7df9: $02
    ld b, c                                       ; $7dfa: $41
    ld hl, $0175                                  ; $7dfb: $21 $75 $01
    dec bc                                        ; $7dfe: $0b
    and e                                         ; $7dff: $a3
    ld [bc], a                                    ; $7e00: $02
    ld [$1017], sp                                ; $7e01: $08 $17 $10
    rlca                                          ; $7e04: $07
    rla                                           ; $7e05: $17

jr_0d5_7e06:
    ld b, a                                       ; $7e06: $47
    inc [hl]                                      ; $7e07: $34
    nop                                           ; $7e08: $00
    db $ed                                        ; $7e09: $ed
    ldh [$ef], a                                  ; $7e0a: $e0 $ef
    ldh a, [$08]                                  ; $7e0c: $f0 $08
    ldh a, [$fa]                                  ; $7e0e: $f0 $fa
    ld hl, sp-$06                                 ; $7e10: $f8 $fa
    ret nz                                        ; $7e12: $c0

    nop                                           ; $7e13: $00
    db $fc                                        ; $7e14: $fc
    db $fc                                        ; $7e15: $fc
    nop                                           ; $7e16: $00
    nop                                           ; $7e17: $00
    rst $18                                       ; $7e18: $df
    nop                                           ; $7e19: $00
    adc [hl]                                      ; $7e1a: $8e
    nop                                           ; $7e1b: $00
    add c                                         ; $7e1c: $81
    nop                                           ; $7e1d: $00
    ld a, c                                       ; $7e1e: $79
    nop                                           ; $7e1f: $00
    inc b                                         ; $7e20: $04
    ei                                            ; $7e21: $fb
    nop                                           ; $7e22: $00
    nop                                           ; $7e23: $00
    rst $38                                       ; $7e24: $ff
    nop                                           ; $7e25: $00
    ld bc, $5b00                                  ; $7e26: $01 $00 $5b
    nop                                           ; $7e29: $00
    jr jr_0d5_7e06                                ; $7e2a: $18 $da

    nop                                           ; $7e2c: $00
    jp z, $1002                                   ; $7e2d: $ca $02 $10

    db $10                                        ; $7e30: $10
    db $10                                        ; $7e31: $10
    rla                                           ; $7e32: $17
    ld b, a                                       ; $7e33: $47
    cpl                                           ; $7e34: $2f
    nop                                           ; $7e35: $00
    rrca                                          ; $7e36: $0f
    cpl                                           ; $7e37: $2f
    adc a                                         ; $7e38: $8f
    cpl                                           ; $7e39: $2f
    adc a                                         ; $7e3a: $8f
    ld e, a                                       ; $7e3b: $5f
    rra                                           ; $7e3c: $1f
    ld e, a                                       ; $7e3d: $5f
    nop                                           ; $7e3e: $00
    rra                                           ; $7e3f: $1f
    rst $18                                       ; $7e40: $df
    rra                                           ; $7e41: $1f

jr_0d5_7e42:
    ccf                                           ; $7e42: $3f
    ccf                                           ; $7e43: $3f
    nop                                           ; $7e44: $00
    ld bc, $00ed                                  ; $7e45: $01 $ed $00
    ld bc, $fcfc                                  ; $7e48: $01 $fc $fc
    db $fc                                        ; $7e4b: $fc
    db $fd                                        ; $7e4c: $fd
    db $fc                                        ; $7e4d: $fc
    db $fc                                        ; $7e4e: $fc
    cp $01                                        ; $7e4f: $fe $01

jr_0d5_7e51:
    nop                                           ; $7e51: $00
    nop                                           ; $7e52: $00
    rst $38                                       ; $7e53: $ff
    rst $38                                       ; $7e54: $ff
    cp $fe                                        ; $7e55: $fe $fe
    ld sp, hl                                     ; $7e57: $f9
    ld hl, sp+$3e                                 ; $7e58: $f8 $3e
    ld a, $00                                     ; $7e5a: $3e $00
    ret nc                                        ; $7e5c: $d0

    db $10                                        ; $7e5d: $10
    jr nz, @-$37                                  ; $7e5e: $20 $c7

    jr jr_0d5_7e42                                ; $7e60: $18 $e0

    inc b                                         ; $7e62: $04
    ld a, c                                       ; $7e63: $79
    nop                                           ; $7e64: $00
    ld [bc], a                                    ; $7e65: $02
    inc b                                         ; $7e66: $04
    add b                                         ; $7e67: $80
    nop                                           ; $7e68: $00
    ccf                                           ; $7e69: $3f
    nop                                           ; $7e6a: $00
    ld a, a                                       ; $7e6b: $7f
    ld a, a                                       ; $7e6c: $7f
    nop                                           ; $7e6d: $00
    cp a                                          ; $7e6e: $bf
    ccf                                           ; $7e6f: $3f
    ld c, h                                       ; $7e70: $4c
    inc c                                         ; $7e71: $0c
    jr nc, @+$05                                  ; $7e72: $30 $03

    rlca                                          ; $7e74: $07
    ret nz                                        ; $7e75: $c0

    ld bc, $c31c                                  ; $7e76: $01 $1c $c3
    ld [hl], b                                    ; $7e79: $70
    nop                                           ; $7e7a: $00
    nop                                           ; $7e7b: $00
    ld [$01ff], sp                                ; $7e7c: $08 $ff $01
    nop                                           ; $7e7f: $00
    nop                                           ; $7e80: $00
    ld bc, $f801                                  ; $7e81: $01 $01 $f8
    ld b, $81                                     ; $7e84: $06 $81
    ld [hl], c                                    ; $7e86: $71
    rrca                                          ; $7e87: $0f
    adc a                                         ; $7e88: $8f
    nop                                           ; $7e89: $00
    ld a, a                                       ; $7e8a: $7f
    ld a, a                                       ; $7e8b: $7f
    sbc a                                         ; $7e8c: $9f
    rra                                           ; $7e8d: $1f

jr_0d5_7e8e:
    or $f0                                        ; $7e8e: $f6 $f0
    jp hl                                         ; $7e90: $e9


    ldh [rP1], a                                  ; $7e91: $e0 $00
    ret nc                                        ; $7e93: $d0

    jp nz, $84a0                                  ; $7e94: $c2 $a0 $84

    ld b, c                                       ; $7e97: $41
    ld [$1441], sp                                ; $7e98: $08 $41 $14
    add b                                         ; $7e9b: $80
    inc b                                         ; $7e9c: $04
    nop                                           ; $7e9d: $00
    db $10                                        ; $7e9e: $10
    sub c                                         ; $7e9f: $91
    nop                                           ; $7ea0: $00
    ld a, $81                                     ; $7ea1: $3e $81
    inc e                                         ; $7ea3: $1c
    ld [hl+], a                                   ; $7ea4: $22
    nop                                           ; $7ea5: $00
    adc b                                         ; $7ea6: $88
    ld b, l                                       ; $7ea7: $45
    sbc b                                         ; $7ea8: $98
    ld [bc], a                                    ; $7ea9: $02
    add c                                         ; $7eaa: $81
    jr z, jr_0d5_7ee8                             ; $7eab: $28 $3b

    add b                                         ; $7ead: $80
    nop                                           ; $7eae: $00
    inc bc                                        ; $7eaf: $03
    jr z, jr_0d5_7eb2                             ; $7eb0: $28 $00

jr_0d5_7eb2:
    ld [bc], a                                    ; $7eb2: $02
    ld [$0411], sp                                ; $7eb3: $08 $11 $04
    jr c, jr_0d5_7eb8                             ; $7eb6: $38 $00

jr_0d5_7eb8:
    nop                                           ; $7eb8: $00
    ld b, b                                       ; $7eb9: $40
    add e                                         ; $7eba: $83
    ld b, b                                       ; $7ebb: $40
    add a                                         ; $7ebc: $87
    ld d, b                                       ; $7ebd: $50
    add [hl]                                      ; $7ebe: $86
    ld d, c                                       ; $7ebf: $51
    nop                                           ; $7ec0: $00

jr_0d5_7ec1:
    inc h                                         ; $7ec1: $24
    sub e                                         ; $7ec2: $93
    ld l, a                                       ; $7ec3: $6f
    rrca                                          ; $7ec4: $0f

jr_0d5_7ec5:
    rla                                           ; $7ec5: $17
    rlca                                          ; $7ec6: $07
    dec bc                                        ; $7ec7: $0b
    and e                                         ; $7ec8: $a3
    nop                                           ; $7ec9: $00
    dec b                                         ; $7eca: $05
    ld d, c                                       ; $7ecb: $51
    add d                                         ; $7ecc: $82
    jr z, jr_0d5_7e51                             ; $7ecd: $28 $82

    db $10                                        ; $7ecf: $10
    ld [bc], a                                    ; $7ed0: $02
    xor b                                         ; $7ed1: $a8
    nop                                           ; $7ed2: $00
    ld [bc], a                                    ; $7ed3: $02
    sub b                                         ; $7ed4: $90
    and c                                         ; $7ed5: $a1
    adc b                                         ; $7ed6: $88
    and c                                         ; $7ed7: $a1
    add b                                         ; $7ed8: $80
    and c                                         ; $7ed9: $a1
    add h                                         ; $7eda: $84
    nop                                           ; $7edb: $00
    pop de                                        ; $7edc: $d1
    ret nz                                        ; $7edd: $c0

    pop de                                        ; $7ede: $d1
    call nz, $c0d1                                ; $7edf: $c4 $d1 $c0
    add sp, -$20                                  ; $7ee2: $e8 $e0
    nop                                           ; $7ee4: $00
    add sp, -$20                                  ; $7ee5: $e8 $e0
    nop                                           ; $7ee7: $00

jr_0d5_7ee8:
    ld d, e                                       ; $7ee8: $53
    nop                                           ; $7ee9: $00
    jr z, jr_0d5_7f27                             ; $7eea: $28 $3b

    nop                                           ; $7eec: $00
    nop                                           ; $7eed: $00
    nop                                           ; $7eee: $00
    dec hl                                        ; $7eef: $2b
    nop                                           ; $7ef0: $00
    ld d, b                                       ; $7ef1: $50
    ld [bc], a                                    ; $7ef2: $02
    add hl, hl                                    ; $7ef3: $29
    nop                                           ; $7ef4: $00
    ld bc, $c400                                  ; $7ef5: $01 $00 $c4
    ld bc, $3244                                  ; $7ef8: $01 $44 $32
    adc h                                         ; $7efb: $8c
    ld h, d                                       ; $7efc: $62
    ld [$00c4], sp                                ; $7efd: $08 $c4 $00
    jr jr_0d5_7f07                                ; $7f00: $18 $05

    jr jr_0d5_7ec5                                ; $7f02: $18 $c1

    db $10                                        ; $7f04: $10
    rlc b                                         ; $7f05: $cb $00

jr_0d5_7f07:
    add e                                         ; $7f07: $83
    nop                                           ; $7f08: $00
    jr jr_0d5_7e8e                                ; $7f09: $18 $83

    dec b                                         ; $7f0b: $05
    ld hl, $9145                                  ; $7f0c: $21 $45 $91
    ld b, l                                       ; $7f0f: $45
    add c                                         ; $7f10: $81
    jr nz, jr_0d5_7f1e                            ; $7f11: $20 $0b

    jp $0802                                      ; $7f13: $c3 $02 $08


    rla                                           ; $7f16: $17
    add a                                         ; $7f17: $87
    rla                                           ; $7f18: $17
    rlca                                          ; $7f19: $07
    jp hl                                         ; $7f1a: $e9


    nop                                           ; $7f1b: $00
    ldh [$f4], a                                  ; $7f1c: $e0 $f4

jr_0d5_7f1e:
    pop af                                        ; $7f1e: $f1
    db $f4                                        ; $7f1f: $f4
    ldh a, [$f4]                                  ; $7f20: $f0 $f4
    ldh a, [$fa]                                  ; $7f22: $f0 $fa
    nop                                           ; $7f24: $00
    ld hl, sp-$06                                 ; $7f25: $f8 $fa

jr_0d5_7f27:
    ld hl, sp-$05                                 ; $7f27: $f8 $fb
    ld hl, sp-$04                                 ; $7f29: $f8 $fc
    db $fc                                        ; $7f2b: $fc
    call nc, Call_000_0310                        ; $7f2c: $d4 $10 $03
    inc a                                         ; $7f2f: $3c
    add e                                         ; $7f30: $83
    or a                                          ; $7f31: $b7
    nop                                           ; $7f32: $00
    ccf                                           ; $7f33: $3f
    nop                                           ; $7f34: $00
    ld e, $00                                     ; $7f35: $1e $00
    nop                                           ; $7f37: $00
    nop                                           ; $7f38: $00
    rst $38                                       ; $7f39: $ff
    nop                                           ; $7f3a: $00
    nop                                           ; $7f3b: $00
    nop                                           ; $7f3c: $00
    jr c, jr_0d5_7ec1                             ; $7f3d: $38 $82

    ld bc, $b003                                  ; $7f3f: $01 $03 $b0
    inc bc                                        ; $7f42: $03
    add b                                         ; $7f43: $80
    inc bc                                        ; $7f44: $03
    nop                                           ; $7f45: $00
    inc bc                                        ; $7f46: $03
    inc c                                         ; $7f47: $0c
    nop                                           ; $7f48: $00
    db $10                                        ; $7f49: $10
    ld [$9708], sp                                ; $7f4a: $08 $08 $97
    rlca                                          ; $7f4d: $07
    xor a                                         ; $7f4e: $af
    rrca                                          ; $7f4f: $0f
    ld [bc], a                                    ; $7f50: $02
    ld [$1f5f], sp                                ; $7f51: $08 $5f $1f
    ld e, a                                       ; $7f54: $5f
    nop                                           ; $7f55: $00
    rra                                           ; $7f56: $1f
    rst $18                                       ; $7f57: $df
    rra                                           ; $7f58: $1f
    ccf                                           ; $7f59: $3f
    ccf                                           ; $7f5a: $3f
    rra                                           ; $7f5b: $1f
    ld a, h                                       ; $7f5c: $7c
    rst $38                                       ; $7f5d: $ff
    inc bc                                        ; $7f5e: $03
    add hl, de                                    ; $7f5f: $19
    nop                                           ; $7f60: $00
    nop                                           ; $7f61: $00
    nop                                           ; $7f62: $00
    rra                                           ; $7f63: $1f
    ld a, h                                       ; $7f64: $7c
    rst $38                                       ; $7f65: $ff
    ld [bc], a                                    ; $7f66: $02
    ld de, $0000                                  ; $7f67: $11 $00 $00
    nop                                           ; $7f6a: $00
    rra                                           ; $7f6b: $1f
    ld a, h                                       ; $7f6c: $7c
    ld a, a                                       ; $7f6d: $7f
    ld bc, $000d                                  ; $7f6e: $01 $0d $00
    nop                                           ; $7f71: $00
    nop                                           ; $7f72: $00
    rra                                           ; $7f73: $1f
    ld a, h                                       ; $7f74: $7c
    rra                                           ; $7f75: $1f
    nop                                           ; $7f76: $00
    rrca                                          ; $7f77: $0f
    nop                                           ; $7f78: $00
    nop                                           ; $7f79: $00
    nop                                           ; $7f7a: $00
    ldh [$7d], a                                  ; $7f7b: $e0 $7d
    ldh [$7d], a                                  ; $7f7d: $e0 $7d

Call_0d5_7f7f:
    ldh [$7d], a                                  ; $7f7f: $e0 $7d
    ldh [$7d], a                                  ; $7f81: $e0 $7d
    ldh [$7d], a                                  ; $7f83: $e0 $7d
    ld e, [hl]                                    ; $7f85: $5e
    ld de, $2491                                  ; $7f86: $11 $91 $24
    inc b                                         ; $7f89: $04
    db $10                                        ; $7f8a: $10
    ldh [$7d], a                                  ; $7f8b: $e0 $7d
    ld [hl], c                                    ; $7f8d: $71
    inc hl                                        ; $7f8e: $23
    rlca                                          ; $7f8f: $07
    ld [de], a                                    ; $7f90: $12
    jp nz, Jump_000_000c                          ; $7f91: $c2 $0c $00

    ld a, h                                       ; $7f94: $7c
    rst $38                                       ; $7f95: $ff
    ld a, a                                       ; $7f96: $7f
    dec d                                         ; $7f97: $15
    ld d, h                                       ; $7f98: $54
    nop                                           ; $7f99: $00
    nop                                           ; $7f9a: $00

    db $e0, $03, $aa, $48, $0d, $00, $00, $00, $a0, $02, $9f, $06, $77, $00, $00, $24
    db $aa, $50, $ff, $7f, $ff, $02, $b5, $01, $00, $24, $10, $18, $77, $00, $9f, $06
    db $00, $24, $10, $18, $77, $00, $ff, $06, $00, $24, $10, $18, $77, $00, $5f, $07
    db $00, $24, $10, $18, $77, $00, $ff, $07, $00, $00, $45, $20, $aa, $48, $c0, $00

    rst $38                                       ; $7fdb: $ff
    ld a, a                                       ; $7fdc: $7f
    sub $77                                       ; $7fdd: $d6 $77
    inc a                                         ; $7fdf: $3c
    inc bc                                        ; $7fe0: $03
    ld a, [hl+]                                   ; $7fe1: $2a
    inc d                                         ; $7fe2: $14
    rst $38                                       ; $7fe3: $ff
    ld a, a                                       ; $7fe4: $7f
    add l                                         ; $7fe5: $85
    dec bc                                        ; $7fe6: $0b
    adc c                                         ; $7fe7: $89
    ld e, h                                       ; $7fe8: $5c
    ld b, b                                       ; $7fe9: $40
    db $10                                        ; $7fea: $10
    rst $38                                       ; $7feb: $ff
    ld a, a                                       ; $7fec: $7f
    inc e                                         ; $7fed: $1c
    ld d, a                                       ; $7fee: $57
    ld [hl], d                                    ; $7fef: $72
    dec c                                         ; $7ff0: $0d
    inc bc                                        ; $7ff1: $03
    inc d                                         ; $7ff2: $14
    rst $38                                       ; $7ff3: $ff
    ld a, a                                       ; $7ff4: $7f
    cp d                                          ; $7ff5: $ba
    ld b, [hl]                                    ; $7ff6: $46
    ld l, h                                       ; $7ff7: $6c
    jr z, jr_0d5_7ffe                             ; $7ff8: $28 $04

    ld [hl], d                                    ; $7ffa: $72
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff

jr_0d5_7ffe:
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
