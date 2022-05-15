; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0d3", ROMX[$4000], BANK[$d3]

    db $d3                                        ; $4000: $d3
    ld [bc], a                                    ; $4001: $02
    nop                                           ; $4002: $00
    ld e, e                                       ; $4003: $5b
    ld bc, $3ca3                                  ; $4004: $01 $a3 $3c
    ld e, a                                       ; $4007: $5f
    inc bc                                        ; $4008: $03
    sbc h                                         ; $4009: $9c
    ld [hl], $5f                                  ; $400a: $36 $5f
    inc bc                                        ; $400c: $03
    db $fd                                        ; $400d: $fd
    ld c, d                                       ; $400e: $4a
    ld e, $4b                                     ; $400f: $1e $4b
    adc e                                         ; $4011: $8b
    nop                                           ; $4012: $00
    ld e, a                                       ; $4013: $5f
    inc bc                                        ; $4014: $03
    jr jr_0d3_403d                                ; $4015: $18 $26

    ld e, $4b                                     ; $4017: $1e $4b
    ld [bc], a                                    ; $4019: $02
    nop                                           ; $401a: $00
    ld e, a                                       ; $401b: $5f
    inc bc                                        ; $401c: $03
    and e                                         ; $401d: $a3
    inc a                                         ; $401e: $3c
    ld e, $4b                                     ; $401f: $1e $4b
    ld [bc], a                                    ; $4021: $02
    nop                                           ; $4022: $00
    ld e, l                                       ; $4023: $5d
    ld [bc], a                                    ; $4024: $02
    and e                                         ; $4025: $a3
    inc a                                         ; $4026: $3c
    db $dd                                        ; $4027: $dd
    ld b, d                                       ; $4028: $42
    db $fd                                        ; $4029: $fd
    ld c, d                                       ; $402a: $4a
    sbc a                                         ; $402b: $9f
    ld e, e                                       ; $402c: $5b
    ld e, $4b                                     ; $402d: $1e $4b
    dec e                                         ; $402f: $1d
    ld c, e                                       ; $4030: $4b
    jr jr_0d3_4059                                ; $4031: $18 $26

    dec e                                         ; $4033: $1d
    ld c, e                                       ; $4034: $4b
    cp $4a                                        ; $4035: $fe $4a
    ld e, $4b                                     ; $4037: $1e $4b
    ld b, [hl]                                    ; $4039: $46
    nop                                           ; $403a: $00
    jr jr_0d3_4063                                ; $403b: $18 $26

jr_0d3_403d:
    and e                                         ; $403d: $a3
    inc a                                         ; $403e: $3c
    ld e, a                                       ; $403f: $5f
    inc bc                                        ; $4040: $03
    ld [bc], a                                    ; $4041: $02
    nop                                           ; $4042: $00
    ld e, l                                       ; $4043: $5d
    ld [bc], a                                    ; $4044: $02
    jp $fd40                                      ; $4045: $c3 $40 $fd


    ld b, [hl]                                    ; $4048: $46
    db $fd                                        ; $4049: $fd
    ld c, d                                       ; $404a: $4a
    ld e, $4b                                     ; $404b: $1e $4b
    jp $fd40                                      ; $404d: $c3 $40 $fd


    ld b, [hl]                                    ; $4050: $46
    jr jr_0d3_4079                                ; $4051: $18 $26

    cp $4a                                        ; $4053: $fe $4a
    ld e, $4b                                     ; $4055: $1e $4b
    db $fd                                        ; $4057: $fd
    ld b, [hl]                                    ; $4058: $46

jr_0d3_4059:
    dec h                                         ; $4059: $25
    nop                                           ; $405a: $00
    jr jr_0d3_4083                                ; $405b: $18 $26

    jp $5f40                                      ; $405d: $c3 $40 $5f


    inc bc                                        ; $4060: $03
    ld [bc], a                                    ; $4061: $02
    nop                                           ; $4062: $00

jr_0d3_4063:
    ld e, l                                       ; $4063: $5d
    ld [bc], a                                    ; $4064: $02
    db $fd                                        ; $4065: $fd
    ld b, [hl]                                    ; $4066: $46
    db $e4                                        ; $4067: $e4
    ld b, b                                       ; $4068: $40
    db $fd                                        ; $4069: $fd
    ld c, d                                       ; $406a: $4a
    ld e, $4b                                     ; $406b: $1e $4b
    db $fd                                        ; $406d: $fd
    ld b, [hl]                                    ; $406e: $46
    db $e4                                        ; $406f: $e4
    ld b, b                                       ; $4070: $40
    jr jr_0d3_4099                                ; $4071: $18 $26

    ld e, $4b                                     ; $4073: $1e $4b
    db $fd                                        ; $4075: $fd
    ld b, [hl]                                    ; $4076: $46
    db $e4                                        ; $4077: $e4
    ld b, b                                       ; $4078: $40

jr_0d3_4079:
    dec h                                         ; $4079: $25
    nop                                           ; $407a: $00
    jr jr_0d3_40a3                                ; $407b: $18 $26

    db $e4                                        ; $407d: $e4
    ld b, b                                       ; $407e: $40
    ld e, a                                       ; $407f: $5f
    inc bc                                        ; $4080: $03
    ld [bc], a                                    ; $4081: $02
    nop                                           ; $4082: $00

jr_0d3_4083:
    ld e, l                                       ; $4083: $5d
    ld [bc], a                                    ; $4084: $02
    dec e                                         ; $4085: $1d
    ld c, e                                       ; $4086: $4b
    push hl                                       ; $4087: $e5
    inc l                                         ; $4088: $2c
    db $fd                                        ; $4089: $fd
    ld c, d                                       ; $408a: $4a
    ld e, $4b                                     ; $408b: $1e $4b
    dec e                                         ; $408d: $1d
    ld c, e                                       ; $408e: $4b
    push hl                                       ; $408f: $e5
    inc l                                         ; $4090: $2c
    jr jr_0d3_40b9                                ; $4091: $18 $26

    db $fd                                        ; $4093: $fd
    ld c, d                                       ; $4094: $4a
    ld e, $4b                                     ; $4095: $1e $4b
    push hl                                       ; $4097: $e5
    inc l                                         ; $4098: $2c

jr_0d3_4099:
    dec h                                         ; $4099: $25
    nop                                           ; $409a: $00
    jr jr_0d3_40c3                                ; $409b: $18 $26

    dec b                                         ; $409d: $05
    ld b, l                                       ; $409e: $45
    ld e, a                                       ; $409f: $5f
    inc bc                                        ; $40a0: $03
    ld [bc], a                                    ; $40a1: $02
    nop                                           ; $40a2: $00

jr_0d3_40a3:
    ld e, l                                       ; $40a3: $5d
    ld [bc], a                                    ; $40a4: $02
    call Call_000_3d39                            ; $40a5: $cd $39 $3d
    ld e, e                                       ; $40a8: $5b
    add $18                                       ; $40a9: $c6 $18
    db $fd                                        ; $40ab: $fd
    ld c, d                                       ; $40ac: $4a
    ld e, $4b                                     ; $40ad: $1e $4b
    dec a                                         ; $40af: $3d
    ld e, e                                       ; $40b0: $5b
    add $18                                       ; $40b1: $c6 $18
    jr jr_0d3_40db                                ; $40b3: $18 $26

    db $fd                                        ; $40b5: $fd
    ld c, d                                       ; $40b6: $4a
    ld e, $4b                                     ; $40b7: $1e $4b

jr_0d3_40b9:
    ld h, l                                       ; $40b9: $65
    inc c                                         ; $40ba: $0c
    push de                                       ; $40bb: $d5
    ld e, [hl]                                    ; $40bc: $5e
    ld e, a                                       ; $40bd: $5f
    inc bc                                        ; $40be: $03
    dec h                                         ; $40bf: $25
    ld c, c                                       ; $40c0: $49
    ld [bc], a                                    ; $40c1: $02
    nop                                           ; $40c2: $00

jr_0d3_40c3:
    ld e, l                                       ; $40c3: $5d
    ld [bc], a                                    ; $40c4: $02
    ld [hl], d                                    ; $40c5: $72
    ld d, d                                       ; $40c6: $52
    db $dd                                        ; $40c7: $dd
    ld b, d                                       ; $40c8: $42
    nop                                           ; $40c9: $00
    nop                                           ; $40ca: $00
    ld e, c                                       ; $40cb: $59
    ld l, a                                       ; $40cc: $6f
    add $18                                       ; $40cd: $c6 $18
    nop                                           ; $40cf: $00
    inc b                                         ; $40d0: $04
    ld b, c                                       ; $40d1: $41
    inc c                                         ; $40d2: $0c
    ld e, c                                       ; $40d3: $59
    ld l, a                                       ; $40d4: $6f
    sub d                                         ; $40d5: $92
    dec e                                         ; $40d6: $1d
    ld e, $4b                                     ; $40d7: $1e $4b
    ld [bc], a                                    ; $40d9: $02
    nop                                           ; $40da: $00

jr_0d3_40db:
    cp e                                          ; $40db: $bb
    ld a, [bc]                                    ; $40dc: $0a
    ld e, c                                       ; $40dd: $59
    ld l, a                                       ; $40de: $6f
    ld h, [hl]                                    ; $40df: $66
    ld c, c                                       ; $40e0: $49
    ld [bc], a                                    ; $40e1: $02
    nop                                           ; $40e2: $00
    ld e, l                                       ; $40e3: $5d
    ld [bc], a                                    ; $40e4: $02
    rrca                                          ; $40e5: $0f
    ld b, d                                       ; $40e6: $42
    ld e, $4b                                     ; $40e7: $1e $4b
    ld b, h                                       ; $40e9: $44
    add hl, bc                                    ; $40ea: $09
    cp [hl]                                       ; $40eb: $be
    ld [hl], e                                    ; $40ec: $73
    push de                                       ; $40ed: $d5
    dec e                                         ; $40ee: $1d
    ret z                                         ; $40ef: $c8

    ld a, [hl-]                                   ; $40f0: $3a
    nop                                           ; $40f1: $00
    nop                                           ; $40f2: $00
    ld e, $4f                                     ; $40f3: $1e $4f
    dec b                                         ; $40f5: $05
    ld [de], a                                    ; $40f6: $12
    ld c, a                                       ; $40f7: $4f
    dec d                                         ; $40f8: $15
    ld h, [hl]                                    ; $40f9: $66
    ld [$035f], sp                                ; $40fa: $08 $5f $03
    rst $38                                       ; $40fd: $ff
    ld a, a                                       ; $40fe: $7f
    add a                                         ; $40ff: $87
    ld c, l                                       ; $4100: $4d
    ld [bc], a                                    ; $4101: $02
    nop                                           ; $4102: $00
    xor h                                         ; $4103: $ac
    dec a                                         ; $4104: $3d
    ld e, l                                       ; $4105: $5d
    ld [bc], a                                    ; $4106: $02
    db $fd                                        ; $4107: $fd
    ld b, [hl]                                    ; $4108: $46
    db $e4                                        ; $4109: $e4
    add hl, bc                                    ; $410a: $09
    ld e, $4b                                     ; $410b: $1e $4b
    rst $38                                       ; $410d: $ff
    ld a, a                                       ; $410e: $7f
    xor c                                         ; $410f: $a9
    inc b                                         ; $4110: $04
    add h                                         ; $4111: $84
    inc b                                         ; $4112: $04
    push af                                       ; $4113: $f5
    add hl, hl                                    ; $4114: $29
    sub d                                         ; $4115: $92
    add hl, de                                    ; $4116: $19
    ld e, $4b                                     ; $4117: $1e $4b
    ld b, [hl]                                    ; $4119: $46
    nop                                           ; $411a: $00
    call c, $c80e                                 ; $411b: $dc $0e $c8
    ld d, c                                       ; $411e: $51
    ld c, b                                       ; $411f: $48
    dec d                                         ; $4120: $15
    ld [bc], a                                    ; $4121: $02
    nop                                           ; $4122: $00
    jp hl                                         ; $4123: $e9


    ld d, l                                       ; $4124: $55
    ld e, l                                       ; $4125: $5d
    ld [bc], a                                    ; $4126: $02
    or l                                          ; $4127: $b5
    ld e, d                                       ; $4128: $5a
    sub c                                         ; $4129: $91
    dec e                                         ; $412a: $1d
    ld e, $4b                                     ; $412b: $1e $4b
    ld e, l                                       ; $412d: $5d
    ld [bc], a                                    ; $412e: $02
    or l                                          ; $412f: $b5
    ld e, d                                       ; $4130: $5a
    add a                                         ; $4131: $87
    inc b                                         ; $4132: $04
    cp $46                                        ; $4133: $fe $46
    sub d                                         ; $4135: $92
    add hl, de                                    ; $4136: $19
    jr jr_0d3_415f                                ; $4137: $18 $26

    ld b, h                                       ; $4139: $44
    ld [$21f6], sp                                ; $413a: $08 $f6 $21
    jp z, Jump_0d3_5f45                           ; $413d: $ca $45 $5f

    inc bc                                        ; $4140: $03
    ld [bc], a                                    ; $4141: $02
    nop                                           ; $4142: $00
    ld e, l                                       ; $4143: $5d
    ld [bc], a                                    ; $4144: $02
    ld d, e                                       ; $4145: $53
    ld c, [hl]                                    ; $4146: $4e
    ld e, c                                       ; $4147: $59
    ld l, a                                       ; $4148: $6f
    ld h, h                                       ; $4149: $64
    ld [$4afc], sp                                ; $414a: $08 $fc $4a
    ld l, a                                       ; $414d: $6f
    ld hl, $41ee                                  ; $414e: $21 $ee $41
    add a                                         ; $4151: $87
    inc b                                         ; $4152: $04
    sbc h                                         ; $4153: $9c
    ld [hl], $70                                  ; $4154: $36 $70
    add hl, de                                    ; $4156: $19
    ld e, $4b                                     ; $4157: $1e $4b
    ld b, d                                       ; $4159: $42
    inc b                                         ; $415a: $04
    call c, $070e                                 ; $415b: $dc $0e $07
    dec h                                         ; $415e: $25

jr_0d3_415f:
    ld a, [bc]                                    ; $415f: $0a
    ld d, [hl]                                    ; $4160: $56
    ld [bc], a                                    ; $4161: $02
    nop                                           ; $4162: $00
    ld e, l                                       ; $4163: $5d
    ld [bc], a                                    ; $4164: $02
    push de                                       ; $4165: $d5
    ld e, d                                       ; $4166: $5a
    add hl, bc                                    ; $4167: $09
    ld hl, $0000                                  ; $4168: $21 $00 $00
    db $10                                        ; $416b: $10
    ld b, d                                       ; $416c: $42
    ld a, e                                       ; $416d: $7b
    ld [hl], e                                    ; $416e: $73
    rlca                                          ; $416f: $07
    ld hl, $0043                                  ; $4170: $21 $43 $00
    ldh a, [$39]                                  ; $4173: $f0 $39
    and $1c                                       ; $4175: $e6 $1c
    rla                                           ; $4177: $17
    ld h, a                                       ; $4178: $67
    ld bc, $ef00                                  ; $4179: $01 $00 $ef
    add hl, sp                                    ; $417c: $39
    ld e, a                                       ; $417d: $5f
    inc bc                                        ; $417e: $03
    add $18                                       ; $417f: $c6 $18
    ld [bc], a                                    ; $4181: $02
    nop                                           ; $4182: $00
    ld c, d                                       ; $4183: $4a
    add hl, hl                                    ; $4184: $29
    or l                                          ; $4185: $b5
    ld e, d                                       ; $4186: $5a
    ld e, l                                       ; $4187: $5d
    ld [bc], a                                    ; $4188: $02
    ld hl, $f708                                  ; $4189: $21 $08 $f7
    ld e, [hl]                                    ; $418c: $5e
    xor l                                         ; $418d: $ad
    dec [hl]                                      ; $418e: $35
    ld [$0021], sp                                ; $418f: $08 $21 $00
    nop                                           ; $4192: $00
    jr jr_0d3_41bb                                ; $4193: $18 $26

    ld a, [hl+]                                   ; $4195: $2a
    ld hl, $42dd                                  ; $4196: $21 $dd $42
    ld bc, $ad00                                  ; $4199: $01 $00 $ad
    dec [hl]                                      ; $419c: $35
    ld e, a                                       ; $419d: $5f
    inc bc                                        ; $419e: $03
    and l                                         ; $419f: $a5
    inc d                                         ; $41a0: $14
    ld [bc], a                                    ; $41a1: $02
    nop                                           ; $41a2: $00
    ld e, l                                       ; $41a3: $5d
    ld [bc], a                                    ; $41a4: $02
    adc $39                                       ; $41a5: $ce $39
    jr c, jr_0d3_4210                             ; $41a7: $38 $67

    ld h, e                                       ; $41a9: $63
    inc c                                         ; $41aa: $0c
    ld a, d                                       ; $41ab: $7a
    ld l, a                                       ; $41ac: $6f
    ld c, d                                       ; $41ad: $4a
    dec h                                         ; $41ae: $25
    adc $39                                       ; $41af: $ce $39
    ld bc, $0f00                                  ; $41b1: $01 $00 $0f
    ld b, d                                       ; $41b4: $42
    jr jr_0d3_41dd                                ; $41b5: $18 $26

    rst $20                                       ; $41b7: $e7
    inc e                                         ; $41b8: $1c
    ld h, h                                       ; $41b9: $64
    inc c                                         ; $41ba: $0c

jr_0d3_41bb:
    rst $28                                       ; $41bb: $ef
    dec a                                         ; $41bc: $3d
    ld e, a                                       ; $41bd: $5f
    inc bc                                        ; $41be: $03
    jr jr_0d3_4224                                ; $41bf: $18 $63

    ld [bc], a                                    ; $41c1: $02
    nop                                           ; $41c2: $00
    ld e, l                                       ; $41c3: $5d
    ld [bc], a                                    ; $41c4: $02
    sub $5a                                       ; $41c5: $d6 $5a
    ld [$001d], sp                                ; $41c7: $08 $1d $00
    nop                                           ; $41ca: $00
    jr @+$69                                      ; $41cb: $18 $67

    adc h                                         ; $41cd: $8c
    ld sp, $14a5                                  ; $41ce: $31 $a5 $14
    nop                                           ; $41d1: $00
    nop                                           ; $41d2: $00
    ld d, c                                       ; $41d3: $51
    ld b, [hl]                                    ; $41d4: $46
    ld e, d                                       ; $41d5: $5a
    ld l, e                                       ; $41d6: $6b
    rst $20                                       ; $41d7: $e7
    inc e                                         ; $41d8: $1c
    ld [hl+], a                                   ; $41d9: $22
    inc b                                         ; $41da: $04
    ld [hl], e                                    ; $41db: $73
    ld c, [hl]                                    ; $41dc: $4e

jr_0d3_41dd:
    ld e, a                                       ; $41dd: $5f
    inc bc                                        ; $41de: $03
    ld c, d                                       ; $41df: $4a
    add hl, hl                                    ; $41e0: $29
    ld [bc], a                                    ; $41e1: $02
    nop                                           ; $41e2: $00
    ld e, e                                       ; $41e3: $5b
    ld bc, $035f                                  ; $41e4: $01 $5f $03
    ld c, d                                       ; $41e7: $4a
    add hl, hl                                    ; $41e8: $29
    ld e, e                                       ; $41e9: $5b
    ld bc, $035f                                  ; $41ea: $01 $5f $03
    ld e, a                                       ; $41ed: $5f
    inc bc                                        ; $41ee: $03
    ld c, d                                       ; $41ef: $4a
    add hl, hl                                    ; $41f0: $29
    ld e, e                                       ; $41f1: $5b
    ld bc, $035f                                  ; $41f2: $01 $5f $03
    ld e, a                                       ; $41f5: $5f
    inc bc                                        ; $41f6: $03
    ld c, d                                       ; $41f7: $4a
    add hl, hl                                    ; $41f8: $29
    ld [bc], a                                    ; $41f9: $02
    nop                                           ; $41fa: $00
    ld e, e                                       ; $41fb: $5b
    ld bc, $035f                                  ; $41fc: $01 $5f $03
    ld c, d                                       ; $41ff: $4a
    add hl, hl                                    ; $4200: $29
    ld [bc], a                                    ; $4201: $02
    nop                                           ; $4202: $00
    add hl, sp                                    ; $4203: $39
    dec b                                         ; $4204: $05
    ld e, a                                       ; $4205: $5f
    inc bc                                        ; $4206: $03
    ld e, e                                       ; $4207: $5b
    ld bc, $04c0                                  ; $4208: $01 $c0 $04
    ld e, a                                       ; $420b: $5f
    inc bc                                        ; $420c: $03
    add hl, sp                                    ; $420d: $39
    dec b                                         ; $420e: $05
    ld e, e                                       ; $420f: $5b

jr_0d3_4210:
    ld bc, $04c0                                  ; $4210: $01 $c0 $04
    add hl, sp                                    ; $4213: $39
    dec b                                         ; $4214: $05
    ld e, a                                       ; $4215: $5f
    inc bc                                        ; $4216: $03
    ld e, e                                       ; $4217: $5b
    ld bc, $0002                                  ; $4218: $01 $02 $00
    ld e, a                                       ; $421b: $5f
    inc bc                                        ; $421c: $03
    add hl, sp                                    ; $421d: $39
    dec b                                         ; $421e: $05
    ld e, e                                       ; $421f: $5b
    ld bc, $0002                                  ; $4220: $01 $02 $00
    add hl, sp                                    ; $4223: $39

jr_0d3_4224:
    dec b                                         ; $4224: $05
    ld e, a                                       ; $4225: $5f
    inc bc                                        ; $4226: $03
    ld e, e                                       ; $4227: $5b
    ld bc, $00c0                                  ; $4228: $01 $c0 $00
    add hl, sp                                    ; $422b: $39
    dec b                                         ; $422c: $05
    ld h, b                                       ; $422d: $60
    ld bc, $0641                                  ; $422e: $01 $41 $06
    ret nz                                        ; $4231: $c0

    nop                                           ; $4232: $00
    sbc $0b                                       ; $4233: $de $0b
    rst $38                                       ; $4235: $ff
    ld a, a                                       ; $4236: $7f
    and b                                         ; $4237: $a0
    ld [bc], a                                    ; $4238: $02
    ret nz                                        ; $4239: $c0

    nop                                           ; $423a: $00
    add hl, sp                                    ; $423b: $39
    dec b                                         ; $423c: $05
    ld e, a                                       ; $423d: $5f
    inc bc                                        ; $423e: $03
    ld [bc], a                                    ; $423f: $02
    nop                                           ; $4240: $00
    ld [bc], a                                    ; $4241: $02
    nop                                           ; $4242: $00
    jr c, @+$07                                   ; $4243: $38 $05

    ld e, a                                       ; $4245: $5f
    inc bc                                        ; $4246: $03
    ld e, e                                       ; $4247: $5b
    ld bc, $00c0                                  ; $4248: $01 $c0 $00
    adc l                                         ; $424b: $8d
    scf                                           ; $424c: $37
    jr c, @+$07                                   ; $424d: $38 $05

    jr nz, @+$05                                  ; $424f: $20 $03

    ret nz                                        ; $4251: $c0

    inc b                                         ; $4252: $04
    sbc $0b                                       ; $4253: $de $0b
    jr nz, jr_0d3_425a                            ; $4255: $20 $03

    ldh [rSB], a                                  ; $4257: $e0 $01
    ld h, c                                       ; $4259: $61

jr_0d3_425a:
    nop                                           ; $425a: $00
    jr c, jr_0d3_4262                             ; $425b: $38 $05

    ld a, [hl]                                    ; $425d: $7e
    inc bc                                        ; $425e: $03
    push af                                       ; $425f: $f5
    ld d, a                                       ; $4260: $57
    ld [bc], a                                    ; $4261: $02

jr_0d3_4262:
    nop                                           ; $4262: $00
    rla                                           ; $4263: $17
    dec b                                         ; $4264: $05
    ld e, a                                       ; $4265: $5f
    inc bc                                        ; $4266: $03
    ld e, e                                       ; $4267: $5b
    ld bc, $0060                                  ; $4268: $01 $60 $00
    ldh [rSB], a                                  ; $426b: $e0 $01
    jr c, jr_0d3_4274                             ; $426d: $38 $05

    jr nz, jr_0d3_4274                            ; $426f: $20 $03

    nop                                           ; $4271: $00
    nop                                           ; $4272: $00
    sub c                                         ; $4273: $91

jr_0d3_4274:
    add hl, de                                    ; $4274: $19
    cp $0b                                        ; $4275: $fe $0b
    add b                                         ; $4277: $80
    ld [bc], a                                    ; $4278: $02
    ld h, b                                       ; $4279: $60
    nop                                           ; $427a: $00
    rla                                           ; $427b: $17
    dec b                                         ; $427c: $05
    ld a, [hl]                                    ; $427d: $7e
    inc bc                                        ; $427e: $03
    ld h, b                                       ; $427f: $60
    ld [bc], a                                    ; $4280: $02
    ld [bc], a                                    ; $4281: $02
    nop                                           ; $4282: $00
    rla                                           ; $4283: $17
    dec b                                         ; $4284: $05
    ld e, a                                       ; $4285: $5f
    inc bc                                        ; $4286: $03
    ld e, e                                       ; $4287: $5b
    ld bc, $0000                                  ; $4288: $01 $00 $00
    sub c                                         ; $428b: $91
    add hl, de                                    ; $428c: $19
    cp $4e                                        ; $428d: $fe $4e
    ld [c], a                                     ; $428f: $e2
    nop                                           ; $4290: $00
    nop                                           ; $4291: $00
    nop                                           ; $4292: $00
    cp $52                                        ; $4293: $fe $52
    cp $0b                                        ; $4295: $fe $0b
    call $2009                                    ; $4297: $cd $09 $20
    nop                                           ; $429a: $00
    ld d, $05                                     ; $429b: $16 $05
    ld e, a                                       ; $429d: $5f
    inc bc                                        ; $429e: $03
    ldh [rSB], a                                  ; $429f: $e0 $01
    ld [bc], a                                    ; $42a1: $02
    nop                                           ; $42a2: $00
    ld d, $01                                     ; $42a3: $16 $01
    ld e, a                                       ; $42a5: $5f
    inc bc                                        ; $42a6: $03
    rst $38                                       ; $42a7: $ff
    inc sp                                        ; $42a8: $33
    ld [hl+], a                                   ; $42a9: $22
    nop                                           ; $42aa: $00
    db $d3                                        ; $42ab: $d3
    dec e                                         ; $42ac: $1d
    cp $4e                                        ; $42ad: $fe $4e
    cp $0b                                        ; $42af: $fe $0b
    dec l                                         ; $42b1: $2d
    add hl, de                                    ; $42b2: $19
    cp $4e                                        ; $42b3: $fe $4e
    call $fe09                                    ; $42b5: $cd $09 $fe
    dec bc                                        ; $42b8: $0b
    ld [bc], a                                    ; $42b9: $02
    nop                                           ; $42ba: $00
    ld e, a                                       ; $42bb: $5f
    inc bc                                        ; $42bc: $03
    dec d                                         ; $42bd: $15
    ld bc, $4b3e                                  ; $42be: $01 $3e $4b
    ld [bc], a                                    ; $42c1: $02
    nop                                           ; $42c2: $00
    dec d                                         ; $42c3: $15
    ld bc, $037f                                  ; $42c4: $01 $7f $03
    rst $38                                       ; $42c7: $ff
    inc sp                                        ; $42c8: $33
    ld l, b                                       ; $42c9: $68
    ld bc, $0bfe                                  ; $42ca: $01 $fe $0b
    ld a, $5f                                     ; $42cd: $3e $5f
    ld [hl], b                                    ; $42cf: $70
    add hl, de                                    ; $42d0: $19
    ret nz                                        ; $42d1: $c0

    ld e, h                                       ; $42d2: $5c
    cp $4e                                        ; $42d3: $fe $4e
    dec l                                         ; $42d5: $2d
    add hl, de                                    ; $42d6: $19
    rst $38                                       ; $42d7: $ff
    ld a, a                                       ; $42d8: $7f
    ld [bc], a                                    ; $42d9: $02
    nop                                           ; $42da: $00
    sbc l                                         ; $42db: $9d
    inc bc                                        ; $42dc: $03
    ld [hl-], a                                   ; $42dd: $32
    dec b                                         ; $42de: $05
    rst $38                                       ; $42df: $ff
    ld b, e                                       ; $42e0: $43
    ld [bc], a                                    ; $42e1: $02
    nop                                           ; $42e2: $00
    dec d                                         ; $42e3: $15
    ld bc, $037f                                  ; $42e4: $01 $7f $03
    xor e                                         ; $42e7: $ab
    nop                                           ; $42e8: $00
    and h                                         ; $42e9: $a4
    nop                                           ; $42ea: $00
    ld e, $3f                                     ; $42eb: $1e $3f
    db $e3                                        ; $42ed: $e3
    ld a, l                                       ; $42ee: $7d
    ld [hl], c                                    ; $42ef: $71
    dec e                                         ; $42f0: $1d
    ld [bc], a                                    ; $42f1: $02
    inc b                                         ; $42f2: $04
    cp $52                                        ; $42f3: $fe $52
    db $e3                                        ; $42f5: $e3
    ld a, l                                       ; $42f6: $7d
    ld l, $19                                     ; $42f7: $2e $19
    ld [bc], a                                    ; $42f9: $02
    nop                                           ; $42fa: $00
    ld a, [hl]                                    ; $42fb: $7e
    inc bc                                        ; $42fc: $03
    ld [hl-], a                                   ; $42fd: $32
    dec b                                         ; $42fe: $05
    rst $38                                       ; $42ff: $ff
    ld b, e                                       ; $4300: $43
    ld [bc], a                                    ; $4301: $02
    nop                                           ; $4302: $00
    ld [de], a                                    ; $4303: $12
    ld bc, $077e                                  ; $4304: $01 $7e $07
    ld e, e                                       ; $4307: $5b
    ld bc, $0060                                  ; $4308: $01 $60 $00
    ld e, $47                                     ; $430b: $1e $47
    or h                                          ; $430d: $b4
    dec d                                         ; $430e: $15
    ld b, b                                       ; $430f: $40
    inc bc                                        ; $4310: $03
    ld b, d                                       ; $4311: $42
    inc b                                         ; $4312: $04
    cp $4e                                        ; $4313: $fe $4e
    cpl                                           ; $4315: $2f
    add hl, de                                    ; $4316: $19
    or l                                          ; $4317: $b5
    dec h                                         ; $4318: $25
    ld [bc], a                                    ; $4319: $02
    nop                                           ; $431a: $00
    cp [hl]                                       ; $431b: $be
    dec bc                                        ; $431c: $0b
    ld a, [c]                                     ; $431d: $f2
    ld [$01d1], sp                                ; $431e: $08 $d1 $01
    ld [bc], a                                    ; $4321: $02
    nop                                           ; $4322: $00
    pop de                                        ; $4323: $d1
    nop                                           ; $4324: $00
    ld e, a                                       ; $4325: $5f
    inc bc                                        ; $4326: $03
    ld e, e                                       ; $4327: $5b
    ld bc, $0000                                  ; $4328: $01 $00 $00
    ld d, c                                       ; $432b: $51
    dec e                                         ; $432c: $1d
    cp $4e                                        ; $432d: $fe $4e
    add b                                         ; $432f: $80
    ld [bc], a                                    ; $4330: $02
    ld [c], a                                     ; $4331: $e2
    nop                                           ; $4332: $00
    sbc [hl]                                      ; $4333: $9e
    ld c, d                                       ; $4334: $4a
    adc a                                         ; $4335: $8f
    inc c                                         ; $4336: $0c
    ret c                                         ; $4337: $d8

    inc e                                         ; $4338: $1c
    ld [bc], a                                    ; $4339: $02
    nop                                           ; $433a: $00
    pop de                                        ; $433b: $d1
    ld bc, $035f                                  ; $433c: $01 $5f $03
    jp nc, Jump_000_0200                          ; $433f: $d2 $00 $02

    nop                                           ; $4342: $00
    db $d3                                        ; $4343: $d3
    nop                                           ; $4344: $00
    add a                                         ; $4345: $87
    rra                                           ; $4346: $1f
    ld e, a                                       ; $4347: $5f
    inc bc                                        ; $4348: $03
    jr nz, jr_0d3_434d                            ; $4349: $20 $02

    cp h                                          ; $434b: $bc
    ld b, [hl]                                    ; $434c: $46

jr_0d3_434d:
    and l                                         ; $434d: $a5
    nop                                           ; $434e: $00
    cpl                                           ; $434f: $2f
    add hl, de                                    ; $4350: $19
    nop                                           ; $4351: $00
    ld [bc], a                                    ; $4352: $02
    sbc $4a                                       ; $4353: $de $4a
    rst $08                                       ; $4355: $cf
    db $10                                        ; $4356: $10
    add b                                         ; $4357: $80
    inc bc                                        ; $4358: $03
    ld [bc], a                                    ; $4359: $02
    nop                                           ; $435a: $00
    ret                                           ; $435b: $c9


    daa                                           ; $435c: $27
    ld e, a                                       ; $435d: $5f
    inc bc                                        ; $435e: $03
    pop de                                        ; $435f: $d1
    nop                                           ; $4360: $00
    ld bc, $8a00                                  ; $4361: $01 $00 $8a
    dec hl                                        ; $4364: $2b
    ld e, l                                       ; $4365: $5d
    ld [bc], a                                    ; $4366: $02
    or b                                          ; $4367: $b0
    nop                                           ; $4368: $00
    ldh [rSC], a                                  ; $4369: $e0 $02
    db $eb                                        ; $436b: $eb
    cpl                                           ; $436c: $2f
    and l                                         ; $436d: $a5
    nop                                           ; $436e: $00
    ld e, $37                                     ; $436f: $1e $37
    ld h, b                                       ; $4371: $60
    ld [bc], a                                    ; $4372: $02
    cpl                                           ; $4373: $2f
    add hl, de                                    ; $4374: $19
    add hl, sp                                    ; $4375: $39
    scf                                           ; $4376: $37
    ld h, h                                       ; $4377: $64
    inc b                                         ; $4378: $04
    ld [hl+], a                                   ; $4379: $22
    nop                                           ; $437a: $00
    ld a, c                                       ; $437b: $79
    rla                                           ; $437c: $17
    or b                                          ; $437d: $b0
    nop                                           ; $437e: $00
    and e                                         ; $437f: $a3
    ld c, $01                                     ; $4380: $0e $01
    nop                                           ; $4382: $00
    add c                                         ; $4383: $81
    ld a, [bc]                                    ; $4384: $0a
    ld e, e                                       ; $4385: $5b
    ld bc, $035f                                  ; $4386: $01 $5f $03
    and [hl]                                      ; $4389: $a6
    nop                                           ; $438a: $00
    pop af                                        ; $438b: $f1
    ld c, a                                       ; $438c: $4f
    ret nz                                        ; $438d: $c0

    ld [bc], a                                    ; $438e: $02
    inc e                                         ; $438f: $1c
    inc de                                        ; $4390: $13
    ld h, e                                       ; $4391: $63
    ld [$3f96], sp                                ; $4392: $08 $96 $3f
    pop bc                                        ; $4395: $c1
    ld a, l                                       ; $4396: $7d
    ld [bc], a                                    ; $4397: $02
    dec bc                                        ; $4398: $0b
    ld hl, $5f00                                  ; $4399: $21 $00 $5f
    inc bc                                        ; $439c: $03
    ld bc, $000a                                  ; $439d: $01 $0a $00
    dec b                                         ; $43a0: $05
    ld bc, $5b00                                  ; $43a1: $01 $00 $5b
    ld bc, $0120                                  ; $43a4: $01 $20 $01
    ld e, a                                       ; $43a7: $5f
    inc bc                                        ; $43a8: $03
    jr nz, jr_0d3_43ab                            ; $43a9: $20 $00

jr_0d3_43ab:
    add b                                         ; $43ab: $80
    ld [bc], a                                    ; $43ac: $02
    db $ed                                        ; $43ad: $ed
    dec sp                                        ; $43ae: $3b
    ld h, b                                       ; $43af: $60
    ld bc, $0001                                  ; $43b0: $01 $01 $00
    pop bc                                        ; $43b3: $c1
    ld a, [bc]                                    ; $43b4: $0a
    ld a, [c]                                     ; $43b5: $f2
    ld c, e                                       ; $43b6: $4b
    ld b, b                                       ; $43b7: $40
    jr nc, jr_0d3_43ba                            ; $43b8: $30 $00

jr_0d3_43ba:
    nop                                           ; $43ba: $00
    ld e, a                                       ; $43bb: $5f
    inc bc                                        ; $43bc: $03
    add e                                         ; $43bd: $83
    ld c, $00                                     ; $43be: $0e $00
    ld bc, $0001                                  ; $43c0: $01 $01 $00
    ld e, e                                       ; $43c3: $5b
    ld bc, $0101                                  ; $43c4: $01 $01 $01
    ld e, a                                       ; $43c7: $5f
    inc bc                                        ; $43c8: $03
    add c                                         ; $43c9: $81
    nop                                           ; $43ca: $00
    ld c, b                                       ; $43cb: $48
    rra                                           ; $43cc: $1f
    and c                                         ; $43cd: $a1
    ld [bc], a                                    ; $43ce: $02
    rst $08                                       ; $43cf: $cf
    dec sp                                        ; $43d0: $3b
    ld b, c                                       ; $43d1: $41
    nop                                           ; $43d2: $00
    pop bc                                        ; $43d3: $c1
    ld [bc], a                                    ; $43d4: $02
    db $f4                                        ; $43d5: $f4
    ld d, e                                       ; $43d6: $53
    ld h, d                                       ; $43d7: $62
    ld bc, $0081                                  ; $43d8: $01 $81 $00
    sla a                                         ; $43db: $cb $27
    jp hl                                         ; $43dd: $e9


    ld hl, $035f                                  ; $43de: $21 $5f $03
    ld [bc], a                                    ; $43e1: $02
    nop                                           ; $43e2: $00
    ld e, e                                       ; $43e3: $5b
    ld bc, $035f                                  ; $43e4: $01 $5f $03
    ld e, a                                       ; $43e7: $5f
    inc bc                                        ; $43e8: $03
    ld e, e                                       ; $43e9: $5b
    ld bc, $035f                                  ; $43ea: $01 $5f $03
    ld e, a                                       ; $43ed: $5f
    inc bc                                        ; $43ee: $03
    ld e, a                                       ; $43ef: $5f
    inc bc                                        ; $43f0: $03
    ld e, e                                       ; $43f1: $5b
    ld bc, $035f                                  ; $43f2: $01 $5f $03
    ld e, a                                       ; $43f5: $5f
    inc bc                                        ; $43f6: $03
    ld e, a                                       ; $43f7: $5f
    inc bc                                        ; $43f8: $03
    ld [bc], a                                    ; $43f9: $02
    nop                                           ; $43fa: $00
    ld e, e                                       ; $43fb: $5b
    ld bc, $035f                                  ; $43fc: $01 $5f $03
    ld e, a                                       ; $43ff: $5f
    inc bc                                        ; $4400: $03
    ld [bc], a                                    ; $4401: $02
    nop                                           ; $4402: $00
    and $61                                       ; $4403: $e6 $61
    ld e, e                                       ; $4405: $5b
    ld bc, $035f                                  ; $4406: $01 $5f $03
    and h                                         ; $4409: $a4
    inc d                                         ; $440a: $14
    ld e, a                                       ; $440b: $5f
    inc bc                                        ; $440c: $03
    call z, $b441                                 ; $440d: $cc $41 $b4
    ld d, [hl]                                    ; $4410: $56
    ld b, d                                       ; $4411: $42
    ld [$035f], sp                                ; $4412: $08 $5f $03
    add $18                                       ; $4415: $c6 $18
    add hl, hl                                    ; $4417: $29
    dec h                                         ; $4418: $25
    ld [bc], a                                    ; $4419: $02
    nop                                           ; $441a: $00
    ld e, a                                       ; $441b: $5f
    inc bc                                        ; $441c: $03

Call_0d3_441d:
    and $61                                       ; $441d: $e6 $61
    add hl, hl                                    ; $441f: $29
    dec h                                         ; $4420: $25
    ld bc, $e600                                  ; $4421: $01 $00 $e6
    ld h, c                                       ; $4424: $61
    ld e, e                                       ; $4425: $5b
    ld bc, $035f                                  ; $4426: $01 $5f $03
    jr nz, jr_0d3_442f                            ; $4429: $20 $04

    adc $39                                       ; $442b: $ce $39
    or h                                          ; $442d: $b4
    ld d, [hl]                                    ; $442e: $56

jr_0d3_442f:
    add hl, hl                                    ; $442f: $29
    dec h                                         ; $4430: $25
    nop                                           ; $4431: $00
    nop                                           ; $4432: $00
    add $18                                       ; $4433: $c6 $18
    add hl, hl                                    ; $4435: $29
    dec h                                         ; $4436: $25
    ld h, e                                       ; $4437: $63
    inc c                                         ; $4438: $0c
    nop                                           ; $4439: $00
    nop                                           ; $443a: $00
    and $61                                       ; $443b: $e6 $61
    ld e, a                                       ; $443d: $5f
    inc bc                                        ; $443e: $03
    ld [bc], a                                    ; $443f: $02
    nop                                           ; $4440: $00
    ld [bc], a                                    ; $4441: $02
    nop                                           ; $4442: $00
    rst $20                                       ; $4443: $e7
    ld e, c                                       ; $4444: $59
    ld e, e                                       ; $4445: $5b
    ld bc, $035f                                  ; $4446: $01 $5f $03
    and l                                         ; $4449: $a5
    inc d                                         ; $444a: $14
    adc $39                                       ; $444b: $ce $39
    or h                                          ; $444d: $b4

Call_0d3_444e:
    ld d, [hl]                                    ; $444e: $56
    add hl, hl                                    ; $444f: $29
    dec h                                         ; $4450: $25
    nop                                           ; $4451: $00
    nop                                           ; $4452: $00
    add $18                                       ; $4453: $c6 $18
    add hl, hl                                    ; $4455: $29
    dec h                                         ; $4456: $25
    ld h, e                                       ; $4457: $63
    inc c                                         ; $4458: $0c
    nop                                           ; $4459: $00
    nop                                           ; $445a: $00
    add $5d                                       ; $445b: $c6 $5d
    ld e, a                                       ; $445d: $5f
    inc bc                                        ; $445e: $03
    ld [bc], a                                    ; $445f: $02
    nop                                           ; $4460: $00
    ld [bc], a                                    ; $4461: $02
    nop                                           ; $4462: $00
    ld e, a                                       ; $4463: $5f
    inc bc                                        ; $4464: $03
    ld e, e                                       ; $4465: $5b
    ld bc, $7bde                                  ; $4466: $01 $de $7b
    ld hl, $ce04                                  ; $4469: $21 $04 $ce
    add hl, sp                                    ; $446c: $39
    sub $5a                                       ; $446d: $d6 $5a
    ld a, d                                       ; $446f: $7a
    ld l, a                                       ; $4470: $6f
    nop                                           ; $4471: $00
    nop                                           ; $4472: $00
    add $18                                       ; $4473: $c6 $18
    ld b, d                                       ; $4475: $42
    ld [$0c63], sp                                ; $4476: $08 $63 $0c
    nop                                           ; $4479: $00
    nop                                           ; $447a: $00
    push bc                                       ; $447b: $c5
    ld e, c                                       ; $447c: $59
    ld e, a                                       ; $447d: $5f
    inc bc                                        ; $447e: $03
    ld [bc], a                                    ; $447f: $02
    nop                                           ; $4480: $00
    ld bc, $5d00                                  ; $4481: $01 $00 $5d
    ld [bc], a                                    ; $4484: $02
    add hl, sp                                    ; $4485: $39
    ld h, a                                       ; $4486: $67
    add $14                                       ; $4487: $c6 $14
    and l                                         ; $4489: $a5
    inc d                                         ; $448a: $14
    ld l, $1d                                     ; $448b: $2e $1d
    add hl, sp                                    ; $448d: $39
    ld h, a                                       ; $448e: $67
    add $14                                       ; $448f: $c6 $14
    ld hl, $ee04                                  ; $4491: $21 $04 $ee
    dec a                                         ; $4494: $3d
    sub h                                         ; $4495: $94
    ld d, [hl]                                    ; $4496: $56
    and l                                         ; $4497: $a5
    inc d                                         ; $4498: $14
    nop                                           ; $4499: $00
    nop                                           ; $449a: $00
    and l                                         ; $449b: $a5
    ld d, l                                       ; $449c: $55
    ld e, a                                       ; $449d: $5f
    inc bc                                        ; $449e: $03
    ld [bc], a                                    ; $449f: $02
    nop                                           ; $44a0: $00
    ld [bc], a                                    ; $44a1: $02
    nop                                           ; $44a2: $00
    ld l, h                                       ; $44a3: $6c
    dec l                                         ; $44a4: $2d
    ld e, l                                       ; $44a5: $5d
    ld [bc], a                                    ; $44a6: $02
    ld a, d                                       ; $44a7: $7a
    ld l, a                                       ; $44a8: $6f
    and e                                         ; $44a9: $a3

jr_0d3_44aa:
    jr jr_0d3_44aa                                ; $44aa: $18 $fe

    ld c, [hl]                                    ; $44ac: $4e
    inc c                                         ; $44ad: $0c
    dec d                                         ; $44ae: $15
    ld a, d                                       ; $44af: $7a
    ld l, a                                       ; $44b0: $6f
    ld h, d                                       ; $44b1: $62
    db $10                                        ; $44b2: $10
    xor l                                         ; $44b3: $ad
    dec [hl]                                      ; $44b4: $35
    ld a, d                                       ; $44b5: $7a
    ld l, a                                       ; $44b6: $6f
    ld l, $1d                                     ; $44b7: $2e $1d
    ld [hl+], a                                   ; $44b9: $22
    inc b                                         ; $44ba: $04
    ld e, a                                       ; $44bb: $5f
    inc bc                                        ; $44bc: $03
    add l                                         ; $44bd: $85
    ld d, l                                       ; $44be: $55
    ld c, d                                       ; $44bf: $4a
    add hl, hl                                    ; $44c0: $29
    ld [bc], a                                    ; $44c1: $02
    nop                                           ; $44c2: $00
    adc b                                         ; $44c3: $88
    ld b, c                                       ; $44c4: $41
    ld e, l                                       ; $44c5: $5d
    ld [bc], a                                    ; $44c6: $02
    jr c, @+$69                                   ; $44c7: $38 $67

    ld h, e                                       ; $44c9: $63
    db $10                                        ; $44ca: $10
    or d                                          ; $44cb: $b2
    add hl, hl                                    ; $44cc: $29
    rst $30                                       ; $44cd: $f7
    ld e, [hl]                                    ; $44ce: $5e
    cp $4e                                        ; $44cf: $fe $4e
    add d                                         ; $44d1: $82
    inc d                                         ; $44d2: $14
    or l                                          ; $44d3: $b5
    ld d, [hl]                                    ; $44d4: $56
    ld a, d                                       ; $44d5: $7a
    ld l, a                                       ; $44d6: $6f
    ld l, $1d                                     ; $44d7: $2e $1d
    ld hl, $5f04                                  ; $44d9: $21 $04 $5f
    inc bc                                        ; $44dc: $03
    add h                                         ; $44dd: $84
    db $10                                        ; $44de: $10
    rst $00                                       ; $44df: $c7
    jr jr_0d3_44e3                                ; $44e0: $18 $01

    nop                                           ; $44e2: $00

jr_0d3_44e3:
    ld h, h                                       ; $44e3: $64
    ld c, l                                       ; $44e4: $4d
    ld e, l                                       ; $44e5: $5d
    ld [bc], a                                    ; $44e6: $02
    sub $5a                                       ; $44e7: $d6 $5a
    nop                                           ; $44e9: $00
    nop                                           ; $44ea: $00
    or c                                          ; $44eb: $b1
    add hl, hl                                    ; $44ec: $29
    ld b, e                                       ; $44ed: $43
    inc l                                         ; $44ee: $2c
    ld a, $5b                                     ; $44ef: $3e $5b
    nop                                           ; $44f1: $00
    inc b                                         ; $44f2: $04
    ld [hl], d                                    ; $44f3: $72
    ld c, [hl]                                    ; $44f4: $4e
    rst $38                                       ; $44f5: $ff
    ld a, a                                       ; $44f6: $7f
    ld l, $1d                                     ; $44f7: $2e $1d
    ld [hl+], a                                   ; $44f9: $22
    inc b                                         ; $44fa: $04
    ld d, [hl]                                    ; $44fb: $56
    ld b, d                                       ; $44fc: $42
    ld e, a                                       ; $44fd: $5f
    inc bc                                        ; $44fe: $03
    inc e                                         ; $44ff: $1c
    ld e, a                                       ; $4500: $5f
    ld [bc], a                                    ; $4501: $02
    nop                                           ; $4502: $00
    ld b, e                                       ; $4503: $43
    ld b, l                                       ; $4504: $45
    ld e, l                                       ; $4505: $5d
    ld [bc], a                                    ; $4506: $02
    sub h                                         ; $4507: $94
    ld d, d                                       ; $4508: $52
    dec l                                         ; $4509: $2d
    dec e                                         ; $450a: $1d
    cp $4e                                        ; $450b: $fe $4e
    rra                                           ; $450d: $1f
    ld c, e                                       ; $450e: $4b
    ld l, $1d                                     ; $450f: $2e $1d
    ld b, b                                       ; $4511: $40
    inc c                                         ; $4512: $0c
    ld e, e                                       ; $4513: $5b
    ld [hl], $2b                                  ; $4514: $36 $2b
    dec e                                         ; $4516: $1d
    db $fd                                        ; $4517: $fd
    ld d, d                                       ; $4518: $52
    ld [hl+], a                                   ; $4519: $22
    inc b                                         ; $451a: $04
    pop de                                        ; $451b: $d1
    ld sp, $173f                                  ; $451c: $31 $3f $17
    ld b, l                                       ; $451f: $45
    add hl, sp                                    ; $4520: $39
    ld [bc], a                                    ; $4521: $02
    nop                                           ; $4522: $00
    sub h                                         ; $4523: $94
    ld d, d                                       ; $4524: $52
    dec h                                         ; $4525: $25
    ld sp, $025d                                  ; $4526: $31 $5d $02
    jr nz, jr_0d3_4533                            ; $4529: $20 $08

    sub h                                         ; $452b: $94
    ld d, d                                       ; $452c: $52
    add hl, bc                                    ; $452d: $09
    dec e                                         ; $452e: $1d
    cp $4e                                        ; $452f: $fe $4e
    ld b, b                                       ; $4531: $40
    inc c                                         ; $4532: $0c

jr_0d3_4533:
    scf                                           ; $4533: $37
    ld a, $fe                                     ; $4534: $3e $fe
    ld c, [hl]                                    ; $4536: $4e
    rlca                                          ; $4537: $07
    ld hl, $0842                                  ; $4538: $21 $42 $08
    ret nc                                        ; $453b: $d0

    add hl, sp                                    ; $453c: $39
    rra                                           ; $453d: $1f
    rla                                           ; $453e: $17
    ld b, e                                       ; $453f: $43
    ld b, l                                       ; $4540: $45
    ld bc, $9400                                  ; $4541: $01 $00 $94
    ld d, d                                       ; $4544: $52
    dec b                                         ; $4545: $05
    ld sp, $025d                                  ; $4546: $31 $5d $02
    ld b, b                                       ; $4549: $40
    inc c                                         ; $454a: $0c
    sub h                                         ; $454b: $94
    ld d, d                                       ; $454c: $52
    dec bc                                        ; $454d: $0b
    dec e                                         ; $454e: $1d
    cp $4e                                        ; $454f: $fe $4e
    add e                                         ; $4551: $83
    db $10                                        ; $4552: $10
    sub h                                         ; $4553: $94
    ld d, d                                       ; $4554: $52
    cp $4a                                        ; $4555: $fe $4a
    add hl, de                                    ; $4557: $19
    ld l, $43                                     ; $4558: $2e $43
    ld [$4e72], sp                                ; $455a: $08 $72 $4e
    ld e, a                                       ; $455d: $5f
    inc bc                                        ; $455e: $03
    inc h                                         ; $455f: $24
    add hl, sp                                    ; $4560: $39
    ld bc, $5b00                                  ; $4561: $01 $00 $5b
    ld bc, $4102                                  ; $4564: $01 $02 $41
    ld e, a                                       ; $4567: $5f
    inc bc                                        ; $4568: $03
    ld b, b                                       ; $4569: $40
    inc c                                         ; $456a: $0c
    cp $4e                                        ; $456b: $fe $4e
    cpl                                           ; $456d: $2f
    dec e                                         ; $456e: $1d
    ld [bc], a                                    ; $456f: $02
    ld b, c                                       ; $4570: $41
    jr nz, jr_0d3_4577                            ; $4571: $20 $04

    ld e, e                                       ; $4573: $5b
    ld [hl], $6a                                  ; $4574: $36 $6a
    dec l                                         ; $4576: $2d

jr_0d3_4577:
    cp $4e                                        ; $4577: $fe $4e
    ld [hl+], a                                   ; $4579: $22
    inc b                                         ; $457a: $04
    ld a, e                                       ; $457b: $7b
    ld l, e                                       ; $457c: $6b
    inc bc                                        ; $457d: $03
    add hl, sp                                    ; $457e: $39
    ld e, a                                       ; $457f: $5f
    inc bc                                        ; $4580: $03
    ld [bc], a                                    ; $4581: $02
    nop                                           ; $4582: $00
    ld e, e                                       ; $4583: $5b
    ld bc, $3d01                                  ; $4584: $01 $01 $3d
    ld e, a                                       ; $4587: $5f
    inc bc                                        ; $4588: $03
    ld bc, $fe3d                                  ; $4589: $01 $3d $fe
    ld c, [hl]                                    ; $458c: $4e
    ld l, $1d                                     ; $458d: $2e $1d
    ld [bc], a                                    ; $458f: $02
    dec a                                         ; $4590: $3d
    nop                                           ; $4591: $00
    nop                                           ; $4592: $00
    ld e, e                                       ; $4593: $5b
    ld [hl], $2e                                  ; $4594: $36 $2e
    dec e                                         ; $4596: $1d
    cp $4e                                        ; $4597: $fe $4e
    ld [bc], a                                    ; $4599: $02
    nop                                           ; $459a: $00
    ld e, a                                       ; $459b: $5f
    inc bc                                        ; $459c: $03
    ld bc, $a53d                                  ; $459d: $01 $3d $a5
    inc d                                         ; $45a0: $14
    pop hl                                        ; $45a1: $e1
    jr c, jr_0d3_45ff                             ; $45a2: $38 $5b

    ld bc, $0002                                  ; $45a4: $01 $02 $00
    ld e, a                                       ; $45a7: $5f
    inc bc                                        ; $45a8: $03
    nop                                           ; $45a9: $00
    nop                                           ; $45aa: $00
    ld sp, $9c4a                                  ; $45ab: $31 $4a $9c
    ld a, $e1                                     ; $45ae: $3e $e1
    inc a                                         ; $45b0: $3c
    ld [hl+], a                                   ; $45b1: $22
    ld [$365b], sp                                ; $45b2: $08 $5b $36
    ld l, $1d                                     ; $45b5: $2e $1d
    dec sp                                        ; $45b7: $3b
    ld e, a                                       ; $45b8: $5f
    ld bc, $5200                                  ; $45b9: $01 $00 $52
    ld c, d                                       ; $45bc: $4a
    pop hl                                        ; $45bd: $e1
    jr c, jr_0d3_461f                             ; $45be: $38 $5f

    inc bc                                        ; $45c0: $03
    ld bc, $f700                                  ; $45c1: $01 $00 $f7
    ld e, [hl]                                    ; $45c4: $5e
    ret nz                                        ; $45c5: $c0

    inc [hl]                                      ; $45c6: $34
    ld e, l                                       ; $45c7: $5d
    ld [bc], a                                    ; $45c8: $02
    ld b, e                                       ; $45c9: $43
    inc b                                         ; $45ca: $04
    ld e, e                                       ; $45cb: $5b
    ld [hl], $f7                                  ; $45cc: $36 $f7
    ld e, [hl]                                    ; $45ce: $5e
    add sp, $18                                   ; $45cf: $e8 $18
    jr nz, jr_0d3_45db                            ; $45d1: $20 $08

    jr jr_0d3_4634                                ; $45d3: $18 $5f

    ld c, h                                       ; $45d5: $4c
    add hl, hl                                    ; $45d6: $29
    ld e, e                                       ; $45d7: $5b
    ld [hl], $01                                  ; $45d8: $36 $01
    nop                                           ; $45da: $00

jr_0d3_45db:
    ld hl, sp+$5e                                 ; $45db: $f8 $5e
    ld e, a                                       ; $45dd: $5f
    inc bc                                        ; $45de: $03
    jp nz, $0230                                  ; $45df: $c2 $30 $02

    nop                                           ; $45e2: $00
    ld e, e                                       ; $45e3: $5b
    ld bc, $035f                                  ; $45e4: $01 $5f $03
    jp nz, $5b30                                  ; $45e7: $c2 $30 $5b

    ld bc, $035f                                  ; $45ea: $01 $5f $03
    ld e, a                                       ; $45ed: $5f
    inc bc                                        ; $45ee: $03
    jp nz, $5b30                                  ; $45ef: $c2 $30 $5b

    ld bc, $035f                                  ; $45f2: $01 $5f $03
    ld e, a                                       ; $45f5: $5f
    inc bc                                        ; $45f6: $03
    jp nz, $0230                                  ; $45f7: $c2 $30 $02

    nop                                           ; $45fa: $00
    ld e, e                                       ; $45fb: $5b
    ld bc, $035f                                  ; $45fc: $01 $5f $03

jr_0d3_45ff:
    jp nz, $0230                                  ; $45ff: $c2 $30 $02

    nop                                           ; $4602: $00
    add sp, $75                                   ; $4603: $e8 $75
    ld e, e                                       ; $4605: $5b
    ld bc, $035f                                  ; $4606: $01 $5f $03
    add sp, $75                                   ; $4609: $e8 $75
    ld e, a                                       ; $460b: $5f
    inc bc                                        ; $460c: $03
    xor h                                         ; $460d: $ac
    nop                                           ; $460e: $00
    ld e, a                                       ; $460f: $5f
    inc bc                                        ; $4610: $03
    add sp, $75                                   ; $4611: $e8 $75
    ld e, a                                       ; $4613: $5f
    inc bc                                        ; $4614: $03
    xor h                                         ; $4615: $ac
    nop                                           ; $4616: $00
    ld e, a                                       ; $4617: $5f
    inc bc                                        ; $4618: $03
    ld [bc], a                                    ; $4619: $02
    nop                                           ; $461a: $00
    ld e, a                                       ; $461b: $5f
    inc bc                                        ; $461c: $03
    add sp, $75                                   ; $461d: $e8 $75

jr_0d3_461f:
    ld e, a                                       ; $461f: $5f
    inc bc                                        ; $4620: $03
    ld [bc], a                                    ; $4621: $02
    nop                                           ; $4622: $00
    add sp, $75                                   ; $4623: $e8 $75
    ld e, a                                       ; $4625: $5f
    inc bc                                        ; $4626: $03
    ld e, e                                       ; $4627: $5b
    ld bc, $00ac                                  ; $4628: $01 $ac $00
    ld a, [de]                                    ; $462b: $1a
    ld [hl+], a                                   ; $462c: $22
    ld e, a                                       ; $462d: $5f
    ld c, e                                       ; $462e: $4b
    ld [hl-], a                                   ; $462f: $32
    dec b                                         ; $4630: $05
    call $e804                                    ; $4631: $cd $04 $e8

jr_0d3_4634:
    ld [hl], l                                    ; $4634: $75
    ld a, [de]                                    ; $4635: $1a
    ld [hl+], a                                   ; $4636: $22
    ld e, a                                       ; $4637: $5f
    ld c, e                                       ; $4638: $4b
    ld [bc], a                                    ; $4639: $02
    nop                                           ; $463a: $00
    add sp, $75                                   ; $463b: $e8 $75
    ld e, a                                       ; $463d: $5f
    inc bc                                        ; $463e: $03
    xor h                                         ; $463f: $ac
    nop                                           ; $4640: $00
    ld [bc], a                                    ; $4641: $02
    nop                                           ; $4642: $00
    add sp, $75                                   ; $4643: $e8 $75
    ld e, e                                       ; $4645: $5b
    ld bc, $1f1f                                  ; $4646: $01 $1f $1f
    inc hl                                        ; $4649: $23
    nop                                           ; $464a: $00
    ld de, $1b05                                  ; $464b: $11 $05 $1b
    ld [hl+], a                                   ; $464e: $22
    halt                                          ; $464f: $76
    dec c                                         ; $4650: $0d
    dec h                                         ; $4651: $25
    nop                                           ; $4652: $00
    rst $28                                       ; $4653: $ef
    inc b                                         ; $4654: $04
    reti                                          ; $4655: $d9


    add hl, de                                    ; $4656: $19
    inc sp                                        ; $4657: $33
    add hl, bc                                    ; $4658: $09
    ld b, a                                       ; $4659: $47
    nop                                           ; $465a: $00
    add sp, $75                                   ; $465b: $e8 $75
    db $dd                                        ; $465d: $dd
    ld a, [bc]                                    ; $465e: $0a
    ld e, a                                       ; $465f: $5f
    ld c, e                                       ; $4660: $4b
    ld [bc], a                                    ; $4661: $02
    nop                                           ; $4662: $00
    add sp, $75                                   ; $4663: $e8 $75
    ld d, a                                       ; $4665: $57
    dec b                                         ; $4666: $05
    ld e, a                                       ; $4667: $5f
    daa                                           ; $4668: $27
    ld [bc], a                                    ; $4669: $02
    nop                                           ; $466a: $00
    ld [hl-], a                                   ; $466b: $32
    add hl, bc                                    ; $466c: $09
    adc d                                         ; $466d: $8a
    nop                                           ; $466e: $00
    ld [hl], l                                    ; $466f: $75
    ld de, $0002                                  ; $4670: $11 $02 $00
    db $ed                                        ; $4673: $ed
    ld [$006a], sp                                ; $4674: $08 $6a $00
    ld [hl], l                                    ; $4677: $75
    dec c                                         ; $4678: $0d
    adc d                                         ; $4679: $8a
    nop                                           ; $467a: $00
    add sp, $75                                   ; $467b: $e8 $75
    db $dd                                        ; $467d: $dd
    ld a, [bc]                                    ; $467e: $0a
    ld e, a                                       ; $467f: $5f
    ld c, e                                       ; $4680: $4b
    ld [bc], a                                    ; $4681: $02
    nop                                           ; $4682: $00
    add sp, $6d                                   ; $4683: $e8 $6d
    ld a, c                                       ; $4685: $79
    dec c                                         ; $4686: $0d
    ld e, a                                       ; $4687: $5f
    dec de                                        ; $4688: $1b
    ld bc, $bd00                                  ; $4689: $01 $00 $bd
    ld b, [hl]                                    ; $468c: $46
    xor c                                         ; $468d: $a9
    inc c                                         ; $468e: $0c
    ld [hl-], a                                   ; $468f: $32
    add hl, bc                                    ; $4690: $09
    ld bc, $5b00                                  ; $4691: $01 $00 $5b
    ld [hl], $48                                  ; $4694: $36 $48
    nop                                           ; $4696: $00
    ret                                           ; $4697: $c9


    inc d                                         ; $4698: $14
    adc d                                         ; $4699: $8a
    nop                                           ; $469a: $00
    add sp, $6d                                   ; $469b: $e8 $6d
    db $dd                                        ; $469d: $dd
    ld a, [bc]                                    ; $469e: $0a
    ld e, a                                       ; $469f: $5f
    ld c, e                                       ; $46a0: $4b
    ld [bc], a                                    ; $46a1: $02
    nop                                           ; $46a2: $00
    add hl, bc                                    ; $46a3: $09
    ld h, d                                       ; $46a4: $62
    ld d, a                                       ; $46a5: $57
    add hl, bc                                    ; $46a6: $09
    ld e, a                                       ; $46a7: $5f
    inc bc                                        ; $46a8: $03
    inc hl                                        ; $46a9: $23
    nop                                           ; $46aa: $00
    db $dd                                        ; $46ab: $dd
    ld b, [hl]                                    ; $46ac: $46
    ldh a, [rP1]                                  ; $46ad: $f0 $00
    halt                                          ; $46af: $76
    ld de, $0002                                  ; $46b0: $11 $02 $00
    ld e, e                                       ; $46b3: $5b
    ld [hl], $ce                                  ; $46b4: $36 $ce
    nop                                           ; $46b6: $00
    cp $4e                                        ; $46b7: $fe $4e
    inc h                                         ; $46b9: $24
    nop                                           ; $46ba: $00
    add hl, bc                                    ; $46bb: $09
    ld h, d                                       ; $46bc: $62
    inc sp                                        ; $46bd: $33
    add hl, bc                                    ; $46be: $09
    cp l                                          ; $46bf: $bd
    ld [de], a                                    ; $46c0: $12
    ld [bc], a                                    ; $46c1: $02
    nop                                           ; $46c2: $00
    ld c, c                                       ; $46c3: $49
    ld d, [hl]                                    ; $46c4: $56
    ld a, b                                       ; $46c5: $78
    add hl, bc                                    ; $46c6: $09
    ld e, a                                       ; $46c7: $5f
    inc bc                                        ; $46c8: $03
    nop                                           ; $46c9: $00
    nop                                           ; $46ca: $00
    inc c                                         ; $46cb: $0c
    daa                                           ; $46cc: $27
    ld c, l                                       ; $46cd: $4d
    dec c                                         ; $46ce: $0d
    db $fd                                        ; $46cf: $fd
    ld d, d                                       ; $46d0: $52
    nop                                           ; $46d1: $00
    nop                                           ; $46d2: $00
    inc c                                         ; $46d3: $0c
    daa                                           ; $46d4: $27
    db $fd                                        ; $46d5: $fd
    ld d, d                                       ; $46d6: $52
    jr z, jr_0d3_46de                             ; $46d7: $28 $05

    inc hl                                        ; $46d9: $23
    nop                                           ; $46da: $00
    ld c, c                                       ; $46db: $49
    ld d, d                                       ; $46dc: $52
    sub a                                         ; $46dd: $97

jr_0d3_46de:
    ld de, $035f                                  ; $46de: $11 $5f $03
    ld [bc], a                                    ; $46e1: $02
    nop                                           ; $46e2: $00
    adc d                                         ; $46e3: $8a
    ld c, d                                       ; $46e4: $4a
    ld e, e                                       ; $46e5: $5b
    ld bc, $035f                                  ; $46e6: $01 $5f $03
    and e                                         ; $46e9: $a3
    inc b                                         ; $46ea: $04
    sbc h                                         ; $46eb: $9c
    ld a, $75                                     ; $46ec: $3e $75
    ld de, $7ffe                                  ; $46ee: $11 $fe $7f
    ld b, e                                       ; $46f1: $43
    inc b                                         ; $46f2: $04
    sbc h                                         ; $46f3: $9c
    ld b, d                                       ; $46f4: $42
    jp hl                                         ; $46f5: $e9


    dec d                                         ; $46f6: $15
    cp $7f                                        ; $46f7: $fe $7f
    inc hl                                        ; $46f9: $23
    nop                                           ; $46fa: $00
    adc d                                         ; $46fb: $8a
    ld c, d                                       ; $46fc: $4a
    ld [hl], e                                    ; $46fd: $73
    dec d                                         ; $46fe: $15
    ld e, a                                       ; $46ff: $5f
    inc bc                                        ; $4700: $03
    ld [bc], a                                    ; $4701: $02
    nop                                           ; $4702: $00
    xor d                                         ; $4703: $aa
    ld a, [hl-]                                   ; $4704: $3a
    ld e, e                                       ; $4705: $5b
    ld bc, $035f                                  ; $4706: $01 $5f $03
    adc b                                         ; $4709: $88
    ld [$367c], sp                                ; $470a: $08 $7c $36
    jr nc, jr_0d3_4720                            ; $470d: $30 $11

    cp $4e                                        ; $470f: $fe $4e
    ld h, a                                       ; $4711: $67
    ld [$365b], sp                                ; $4712: $08 $5b $36
    jr nc, @+$17                                  ; $4715: $30 $15

    cp $4e                                        ; $4717: $fe $4e
    inc hl                                        ; $4719: $23
    nop                                           ; $471a: $00
    xor d                                         ; $471b: $aa
    ld a, $7d                                     ; $471c: $3e $7d
    ld a, [hl+]                                   ; $471e: $2a
    ld e, a                                       ; $471f: $5f

jr_0d3_4720:
    inc bc                                        ; $4720: $03
    ld [bc], a                                    ; $4721: $02
    nop                                           ; $4722: $00
    db $eb                                        ; $4723: $eb
    ld l, $3c                                     ; $4724: $2e $3c
    ld b, $5f                                     ; $4726: $06 $5f
    ld c, e                                       ; $4728: $4b
    add a                                         ; $4729: $87
    inc c                                         ; $472a: $0c
    sbc $46                                       ; $472b: $de $46
    inc [hl]                                      ; $472d: $34
    dec c                                         ; $472e: $0d
    cp c                                          ; $472f: $b9
    dec h                                         ; $4730: $25
    add a                                         ; $4731: $87
    inc c                                         ; $4732: $0c
    db $dd                                        ; $4733: $dd
    ld c, d                                       ; $4734: $4a
    inc de                                        ; $4735: $13
    ld de, $1197                                  ; $4736: $11 $97 $11
    inc hl                                        ; $4739: $23
    nop                                           ; $473a: $00
    db $eb                                        ; $473b: $eb
    ld l, $bc                                     ; $473c: $2e $bc
    ld [de], a                                    ; $473e: $12
    ld e, a                                       ; $473f: $5f
    ld c, e                                       ; $4740: $4b
    ld [bc], a                                    ; $4741: $02
    nop                                           ; $4742: $00
    inc c                                         ; $4743: $0c
    inc hl                                        ; $4744: $23
    ccf                                           ; $4745: $3f
    ld c, e                                       ; $4746: $4b
    dec sp                                        ; $4747: $3b
    ld [de], a                                    ; $4748: $12
    nop                                           ; $4749: $00
    nop                                           ; $474a: $00
    ld hl, sp+$25                                 ; $474b: $f8 $25
    cp $4e                                        ; $474d: $fe $4e
    adc c                                         ; $474f: $89
    inc b                                         ; $4750: $04
    ld h, [hl]                                    ; $4751: $66
    inc b                                         ; $4752: $04
    sub a                                         ; $4753: $97
    ld de, $429c                                  ; $4754: $11 $9c $42
    ld sp, $2509                                  ; $4757: $31 $09 $25
    nop                                           ; $475a: $00
    inc c                                         ; $475b: $0c
    inc hl                                        ; $475c: $23
    cp b                                          ; $475d: $b8
    add hl, de                                    ; $475e: $19
    ld e, a                                       ; $475f: $5f
    inc bc                                        ; $4760: $03
    ld [bc], a                                    ; $4761: $02
    nop                                           ; $4762: $00
    inc l                                         ; $4763: $2c
    dec de                                        ; $4764: $1b
    ld e, l                                       ; $4765: $5d
    ld [bc], a                                    ; $4766: $02
    adc e                                         ; $4767: $8b
    nop                                           ; $4768: $00
    inc hl                                        ; $4769: $23
    nop                                           ; $476a: $00
    ld d, d                                       ; $476b: $52
    dec d                                         ; $476c: $15
    ld e, e                                       ; $476d: $5b
    ld [hl], $8a                                  ; $476e: $36 $8a
    nop                                           ; $4770: $00
    ld bc, $3000                                  ; $4771: $01 $00 $30
    dec d                                         ; $4774: $15
    ld e, e                                       ; $4775: $5b
    ld [hl], $69                                  ; $4776: $36 $69
    inc b                                         ; $4778: $04
    ld [bc], a                                    ; $4779: $02
    nop                                           ; $477a: $00
    inc l                                         ; $477b: $2c
    dec de                                        ; $477c: $1b
    ld e, a                                       ; $477d: $5f
    inc bc                                        ; $477e: $03
    xor l                                         ; $477f: $ad
    nop                                           ; $4780: $00
    ld [bc], a                                    ; $4781: $02
    nop                                           ; $4782: $00
    inc l                                         ; $4783: $2c
    dec de                                        ; $4784: $1b
    ld e, e                                       ; $4785: $5b
    ld bc, $035f                                  ; $4786: $01 $5f $03
    ld [bc], a                                    ; $4789: $02
    nop                                           ; $478a: $00
    inc a                                         ; $478b: $3c
    ld h, $fe                                     ; $478c: $26 $fe
    ld c, [hl]                                    ; $478e: $4e
    xor h                                         ; $478f: $ac
    nop                                           ; $4790: $00
    inc hl                                        ; $4791: $23
    nop                                           ; $4792: $00
    cp d                                          ; $4793: $ba
    dec c                                         ; $4794: $0d
    sbc h                                         ; $4795: $9c
    ld b, d                                       ; $4796: $42
    rst $28                                       ; $4797: $ef
    ld [$0001], sp                                ; $4798: $08 $01 $00
    inc l                                         ; $479b: $2c
    dec de                                        ; $479c: $1b
    ld e, a                                       ; $479d: $5f
    inc bc                                        ; $479e: $03
    ld b, l                                       ; $479f: $45
    nop                                           ; $47a0: $00
    ld bc, $1200                                  ; $47a1: $01 $00 $12
    dec c                                         ; $47a4: $0d
    sbc l                                         ; $47a5: $9d
    ld [de], a                                    ; $47a6: $12
    rra                                           ; $47a7: $1f
    ld d, e                                       ; $47a8: $53
    ld [bc], a                                    ; $47a9: $02
    nop                                           ; $47aa: $00
    ld e, l                                       ; $47ab: $5d
    ld [hl+], a                                   ; $47ac: $22
    cp $4e                                        ; $47ad: $fe $4e
    adc $00                                       ; $47af: $ce $00
    inc hl                                        ; $47b1: $23
    nop                                           ; $47b2: $00
    inc e                                         ; $47b3: $1c
    ld a, [de]                                    ; $47b4: $1a
    ld de, $de01                                  ; $47b5: $11 $01 $de
    ld b, d                                       ; $47b8: $42
    ld [bc], a                                    ; $47b9: $02
    nop                                           ; $47ba: $00
    rra                                           ; $47bb: $1f
    ld d, a                                       ; $47bc: $57
    inc l                                         ; $47bd: $2c
    dec de                                        ; $47be: $1b
    ld e, a                                       ; $47bf: $5f
    inc bc                                        ; $47c0: $03
    ld [bc], a                                    ; $47c1: $02
    nop                                           ; $47c2: $00
    rst $28                                       ; $47c3: $ef
    inc d                                         ; $47c4: $14
    ld e, a                                       ; $47c5: $5f
    inc bc                                        ; $47c6: $03
    cp e                                          ; $47c7: $bb
    dec e                                         ; $47c8: $1d
    ld b, e                                       ; $47c9: $43
    nop                                           ; $47ca: $00
    cp d                                          ; $47cb: $ba
    dec c                                         ; $47cc: $0d
    db $ed                                        ; $47cd: $ed
    db $10                                        ; $47ce: $10
    rst $18                                       ; $47cf: $df
    ld l, $43                                     ; $47d0: $2e $43
    nop                                           ; $47d2: $00
    sbc b                                         ; $47d3: $98
    add hl, bc                                    ; $47d4: $09
    call z, $5a10                                 ; $47d5: $cc $10 $5a
    ld l, $68                                     ; $47d8: $2e $68
    ld [$25db], sp                                ; $47da: $08 $db $25
    rra                                           ; $47dd: $1f
    ld d, a                                       ; $47de: $57
    ld e, a                                       ; $47df: $5f
    inc bc                                        ; $47e0: $03
    ld [bc], a                                    ; $47e1: $02
    nop                                           ; $47e2: $00
    ld e, e                                       ; $47e3: $5b
    ld bc, $035f                                  ; $47e4: $01 $5f $03
    ld e, a                                       ; $47e7: $5f
    inc bc                                        ; $47e8: $03
    ld e, e                                       ; $47e9: $5b
    ld bc, $035f                                  ; $47ea: $01 $5f $03
    ld e, a                                       ; $47ed: $5f
    inc bc                                        ; $47ee: $03
    ld e, a                                       ; $47ef: $5f
    inc bc                                        ; $47f0: $03
    ld e, e                                       ; $47f1: $5b
    ld bc, $035f                                  ; $47f2: $01 $5f $03
    ld e, a                                       ; $47f5: $5f
    inc bc                                        ; $47f6: $03
    ld e, a                                       ; $47f7: $5f
    inc bc                                        ; $47f8: $03
    ld [bc], a                                    ; $47f9: $02
    nop                                           ; $47fa: $00
    ld e, e                                       ; $47fb: $5b
    ld bc, $035f                                  ; $47fc: $01 $5f $03
    ld e, a                                       ; $47ff: $5f
    inc bc                                        ; $4800: $03
    ld [bc], a                                    ; $4801: $02
    nop                                           ; $4802: $00
    ld e, e                                       ; $4803: $5b
    ld bc, $035f                                  ; $4804: $01 $5f $03
    rra                                           ; $4807: $1f
    ld bc, $0445                                  ; $4808: $01 $45 $04
    call nc, Call_0d3_5f2d                        ; $480b: $d4 $2d $5f
    inc bc                                        ; $480e: $03
    xor c                                         ; $480f: $a9
    inc c                                         ; $4810: $0c
    ld b, [hl]                                    ; $4811: $46
    inc b                                         ; $4812: $04
    ld e, d                                       ; $4813: $5a
    ld a, [hl-]                                   ; $4814: $3a
    ld e, a                                       ; $4815: $5f
    inc bc                                        ; $4816: $03
    ld d, b                                       ; $4817: $50
    ld hl, $0000                                  ; $4818: $21 $00 $00
    rra                                           ; $481b: $1f
    ld bc, $035f                                  ; $481c: $01 $5f $03
    ld [bc], a                                    ; $481f: $02
    nop                                           ; $4820: $00
    ld [bc], a                                    ; $4821: $02
    nop                                           ; $4822: $00
    ld e, $01                                     ; $4823: $1e $01
    sbc e                                         ; $4825: $9b
    ld e, $c9                                     ; $4826: $1e $c9
    inc d                                         ; $4828: $14
    ld [bc], a                                    ; $4829: $02
    nop                                           ; $482a: $00
    ld c, a                                       ; $482b: $4f
    dec e                                         ; $482c: $1d
    ld h, a                                       ; $482d: $67
    inc b                                         ; $482e: $04
    sub $2d                                       ; $482f: $d6 $2d
    inc h                                         ; $4831: $24
    nop                                           ; $4832: $00
    or h                                          ; $4833: $b4
    add hl, hl                                    ; $4834: $29
    jp z, $5a10                                   ; $4835: $ca $10 $5a

    ld a, [hl-]                                   ; $4838: $3a
    ld b, l                                       ; $4839: $45
    ld [$011f], sp                                ; $483a: $08 $1f $01
    cp e                                          ; $483d: $bb
    ld b, [hl]                                    ; $483e: $46
    ld e, a                                       ; $483f: $5f
    inc bc                                        ; $4840: $03
    ld bc, $5a00                                  ; $4841: $01 $00 $5a
    add hl, bc                                    ; $4844: $09
    ret                                           ; $4845: $c9


    inc d                                         ; $4846: $14
    ld e, a                                       ; $4847: $5f
    inc bc                                        ; $4848: $03
    inc hl                                        ; $4849: $23
    nop                                           ; $484a: $00
    ld [hl], c                                    ; $484b: $71
    ld hl, $3617                                  ; $484c: $21 $17 $36
    ld h, a                                       ; $484f: $67
    inc b                                         ; $4850: $04
    inc bc                                        ; $4851: $03

Jump_0d3_4852:
    nop                                           ; $4852: $00
    ld [hl], d                                    ; $4853: $72
    ld hl, $10a9                                  ; $4854: $21 $a9 $10
    or $2d                                        ; $4857: $f6 $2d
    inc h                                         ; $4859: $24
    nop                                           ; $485a: $00
    jp nc, Jump_000_1f31                          ; $485b: $d2 $31 $1f

    ld bc, $035f                                  ; $485e: $01 $5f $03
    ld [bc], a                                    ; $4861: $02
    nop                                           ; $4862: $00
    inc c                                         ; $4863: $0c
    dec e                                         ; $4864: $1d
    cp c                                          ; $4865: $b9
    add hl, de                                    ; $4866: $19
    ld e, a                                       ; $4867: $5f
    inc bc                                        ; $4868: $03
    ld bc, $d500                                  ; $4869: $01 $00 $d5
    dec l                                         ; $486c: $2d
    xor c                                         ; $486d: $a9
    inc c                                         ; $486e: $0c
    rla                                           ; $486f: $17
    ld [hl-], a                                   ; $4870: $32
    ld bc, $5000                                  ; $4871: $01 $00 $50
    dec e                                         ; $4874: $1d
    ld h, [hl]                                    ; $4875: $66
    ld [$29d5], sp                                ; $4876: $08 $d5 $29
    ld [bc], a                                    ; $4879: $02
    nop                                           ; $487a: $00
    push af                                       ; $487b: $f5
    ld sp, $023f                                  ; $487c: $31 $3f $02
    rl b                                          ; $487f: $cb $10
    ld [bc], a                                    ; $4881: $02
    nop                                           ; $4882: $00
    inc sp                                        ; $4883: $33
    dec d                                         ; $4884: $15
    cp $16                                        ; $4885: $fe $16
    ret                                           ; $4887: $c9


    stop                                          ; $4888: $10 $00
    nop                                           ; $488a: $00
    push de                                       ; $488b: $d5
    dec l                                         ; $488c: $2d
    jp z, Jump_0d3_7b14                           ; $488d: $ca $14 $7b

    ld a, $00                                     ; $4890: $3e $00
    nop                                           ; $4892: $00
    ld a, [c]                                     ; $4893: $f2
    inc b                                         ; $4894: $04
    ld l, $1d                                     ; $4895: $2e $1d
    ld h, [hl]                                    ; $4897: $66
    ld [$0023], sp                                ; $4898: $08 $23 $00
    or $31                                        ; $489b: $f6 $31
    ld e, [hl]                                    ; $489d: $5e
    ld [bc], a                                    ; $489e: $02
    ld a, [bc]                                    ; $489f: $0a
    dec e                                         ; $48a0: $1d
    ld [bc], a                                    ; $48a1: $02
    nop                                           ; $48a2: $00
    dec c                                         ; $48a3: $0d
    add hl, de                                    ; $48a4: $19
    ld e, l                                       ; $48a5: $5d
    ld [bc], a                                    ; $48a6: $02
    xor b                                         ; $48a7: $a8
    inc c                                         ; $48a8: $0c
    ld [hl+], a                                   ; $48a9: $22
    nop                                           ; $48aa: $00
    sub d                                         ; $48ab: $92
    ld hl, $46bb                                  ; $48ac: $21 $bb $46
    db $eb                                        ; $48af: $eb
    jr @+$25                                      ; $48b0: $18 $23

    inc b                                         ; $48b2: $04
    push af                                       ; $48b3: $f5
    dec l                                         ; $48b4: $2d
    rst $18                                       ; $48b5: $df
    ld l, a                                       ; $48b6: $6f
    xor $0c                                       ; $48b7: $ee $0c
    inc h                                         ; $48b9: $24
    nop                                           ; $48ba: $00
    sbc h                                         ; $48bb: $9c
    ld bc, $212d                                  ; $48bc: $01 $2d $21
    ld e, a                                       ; $48bf: $5f
    inc bc                                        ; $48c0: $03
    ld [bc], a                                    ; $48c1: $02
    nop                                           ; $48c2: $00
    ld e, e                                       ; $48c3: $5b
    ld bc, $0ca8                                  ; $48c4: $01 $a8 $0c
    ld e, a                                       ; $48c7: $5f
    inc bc                                        ; $48c8: $03
    ld bc, $0d00                                  ; $48c9: $01 $00 $0d
    add hl, de                                    ; $48cc: $19
    di                                            ; $48cd: $f3
    ld sp, $0466                                  ; $48ce: $31 $66 $04
    inc hl                                        ; $48d1: $23
    inc b                                         ; $48d2: $04
    push af                                       ; $48d3: $f5
    ld sp, $14ec                                  ; $48d4: $31 $ec $14
    ccf                                           ; $48d7: $3f
    ld d, a                                       ; $48d8: $57
    ld [bc], a                                    ; $48d9: $02
    nop                                           ; $48da: $00
    rst $18                                       ; $48db: $df
    ld [bc], a                                    ; $48dc: $02
    ld c, $09                                     ; $48dd: $0e $09
    ld h, [hl]                                    ; $48df: $66
    inc b                                         ; $48e0: $04
    ld [bc], a                                    ; $48e1: $02
    nop                                           ; $48e2: $00
    ld e, e                                       ; $48e3: $5b
    ld bc, $52fd                                  ; $48e4: $01 $fd $52
    ld e, a                                       ; $48e7: $5f
    inc bc                                        ; $48e8: $03
    nop                                           ; $48e9: $00
    inc d                                         ; $48ea: $14
    di                                            ; $48eb: $f3
    dec [hl]                                      ; $48ec: $35
    dec de                                        ; $48ed: $1b
    ld e, a                                       ; $48ee: $5f
    xor c                                         ; $48ef: $a9
    inc c                                         ; $48f0: $0c
    ld b, b                                       ; $48f1: $40
    inc e                                         ; $48f2: $1c
    dec [hl]                                      ; $48f3: $35
    ld a, [hl-]                                   ; $48f4: $3a
    ld a, [hl]                                    ; $48f5: $7e
    ld h, a                                       ; $48f6: $67
    ld c, h                                       ; $48f7: $4c
    dec h                                         ; $48f8: $25
    ld [bc], a                                    ; $48f9: $02
    nop                                           ; $48fa: $00
    ld a, [de]                                    ; $48fb: $1a
    ld [bc], a                                    ; $48fc: $02
    ld c, $01                                     ; $48fd: $0e $01
    rra                                           ; $48ff: $1f
    inc bc                                        ; $4900: $03
    ld bc, $7d00                                  ; $4901: $01 $00 $7d
    ld [bc], a                                    ; $4904: $02
    cp a                                          ; $4905: $bf
    ld h, a                                       ; $4906: $67
    ld a, [bc]                                    ; $4907: $0a
    add hl, de                                    ; $4908: $19
    inc h                                         ; $4909: $24
    nop                                           ; $490a: $00
    ld e, c                                       ; $490b: $59
    ld a, $4c                                     ; $490c: $3e $4c
    dec h                                         ; $490e: $25
    ld a, [hl]                                    ; $490f: $7e
    ld e, a                                       ; $4910: $5f
    inc h                                         ; $4911: $24
    inc b                                         ; $4912: $04
    ld e, [hl]                                    ; $4913: $5e
    ld e, e                                       ; $4914: $5b
    inc l                                         ; $4915: $2c
    dec e                                         ; $4916: $1d
    jp nc, $0135                                  ; $4917: $d2 $35 $01

    nop                                           ; $491a: $00
    sbc e                                         ; $491b: $9b
    ld [bc], a                                    ; $491c: $02
    xor b                                         ; $491d: $a8
    nop                                           ; $491e: $00
    ld e, a                                       ; $491f: $5f
    inc bc                                        ; $4920: $03
    ld bc, $7900                                  ; $4921: $01 $00 $79
    ld de, $031d                                  ; $4924: $11 $1d $03
    xor d                                         ; $4927: $aa
    inc c                                         ; $4928: $0c
    nop                                           ; $4929: $00
    nop                                           ; $492a: $00
    sbc e                                         ; $492b: $9b
    ld b, [hl]                                    ; $492c: $46
    dec hl                                        ; $492d: $2b
    dec e                                         ; $492e: $1d
    ccf                                           ; $492f: $3f
    ld d, a                                       ; $4930: $57
    ld b, e                                       ; $4931: $43
    inc b                                         ; $4932: $04
    sbc e                                         ; $4933: $9b
    ld b, [hl]                                    ; $4934: $46
    ld c, l                                       ; $4935: $4d
    dec e                                         ; $4936: $1d
    ld a, a                                       ; $4937: $7f
    ld e, a                                       ; $4938: $5f
    ld [bc], a                                    ; $4939: $02
    nop                                           ; $493a: $00
    call c, $5f02                                 ; $493b: $dc $02 $5f
    inc bc                                        ; $493e: $03
    ei                                            ; $493f: $fb
    ld [bc], a                                    ; $4940: $02
    ld bc, $5b00                                  ; $4941: $01 $00 $5b
    ld bc, $031b                                  ; $4944: $01 $1b $03
    rst $20                                       ; $4947: $e7
    nop                                           ; $4948: $00
    ld [hl+], a                                   ; $4949: $22
    inc b                                         ; $494a: $04
    rst $30                                       ; $494b: $f7
    dec l                                         ; $494c: $2d
    sub b                                         ; $494d: $90
    add hl, hl                                    ; $494e: $29
    db $fd                                        ; $494f: $fd
    ld c, [hl]                                    ; $4950: $4e
    inc hl                                        ; $4951: $23
    inc b                                         ; $4952: $04
    dec sp                                        ; $4953: $3b
    inc bc                                        ; $4954: $03
    db $fd                                        ; $4955: $fd
    ld d, d                                       ; $4956: $52
    ld c, h                                       ; $4957: $4c
    ld de, $0002                                  ; $4958: $11 $02 $00
    dec de                                        ; $495b: $1b
    inc bc                                        ; $495c: $03
    ld e, a                                       ; $495d: $5f
    inc bc                                        ; $495e: $03
    dec sp                                        ; $495f: $3b
    inc bc                                        ; $4960: $03
    ld [bc], a                                    ; $4961: $02
    nop                                           ; $4962: $00
    ld e, e                                       ; $4963: $5b
    ld bc, $033b                                  ; $4964: $01 $3b $03
    add hl, hl                                    ; $4967: $29
    add hl, de                                    ; $4968: $19
    ld b, e                                       ; $4969: $43
    inc c                                         ; $496a: $0c
    add hl, sp                                    ; $496b: $39
    ld [hl], $51                                  ; $496c: $36 $51
    dec e                                         ; $496e: $1d
    cp $52                                        ; $496f: $fe $52
    nop                                           ; $4971: $00
    nop                                           ; $4972: $00
    sbc d                                         ; $4973: $9a
    ld b, [hl]                                    ; $4974: $46
    ld e, d                                       ; $4975: $5a
    inc bc                                        ; $4976: $03
    xor $0c                                       ; $4977: $ee $0c
    ld [bc], a                                    ; $4979: $02
    nop                                           ; $497a: $00
    ld e, d                                       ; $497b: $5a
    inc bc                                        ; $497c: $03
    ld e, a                                       ; $497d: $5f
    inc bc                                        ; $497e: $03
    ld e, e                                       ; $497f: $5b
    inc bc                                        ; $4980: $03
    ld [bc], a                                    ; $4981: $02
    nop                                           ; $4982: $00
    ld e, e                                       ; $4983: $5b
    ld bc, $035b                                  ; $4984: $01 $5b $03
    ld h, e                                       ; $4987: $63
    db $10                                        ; $4988: $10
    ret z                                         ; $4989: $c8

    db $10                                        ; $498a: $10
    inc d                                         ; $498b: $14
    ld [hl], $71                                  ; $498c: $36 $71
    dec h                                         ; $498e: $25
    cp $52                                        ; $498f: $fe $52
    ld h, e                                       ; $4991: $63
    ld [$037a], sp                                ; $4992: $08 $7a $03
    ld a, $5b                                     ; $4995: $3e $5b
    jr z, jr_0d3_49d2                             ; $4997: $28 $39

    ld [bc], a                                    ; $4999: $02
    nop                                           ; $499a: $00
    ld a, d                                       ; $499b: $7a
    inc bc                                        ; $499c: $03
    ld e, a                                       ; $499d: $5f
    inc bc                                        ; $499e: $03
    cp e                                          ; $499f: $bb
    inc bc                                        ; $49a0: $03
    ld bc, $ef00                                  ; $49a1: $01 $00 $ef
    dec a                                         ; $49a4: $3d
    ld a, h                                       ; $49a5: $7c
    inc bc                                        ; $49a6: $03
    ld e, e                                       ; $49a7: $5b
    ld bc, $10ca                                  ; $49a8: $01 $ca $10
    ld d, c                                       ; $49ab: $51
    ld c, d                                       ; $49ac: $4a
    ld l, e                                       ; $49ad: $6b
    dec l                                         ; $49ae: $2d
    jr @+$69                                      ; $49af: $18 $67

    ld bc, $7300                                  ; $49b1: $01 $00 $73
    ld c, [hl]                                    ; $49b4: $4e
    dec c                                         ; $49b5: $0d
    dec e                                         ; $49b6: $1d
    jr jr_0d3_4a1c                                ; $49b7: $18 $63

    nop                                           ; $49b9: $00
    nop                                           ; $49ba: $00
    ld e, a                                       ; $49bb: $5f
    inc bc                                        ; $49bc: $03
    and [hl]                                      ; $49bd: $a6
    jr jr_0d3_4a02                                ; $49be: $18 $42

    inc b                                         ; $49c0: $04
    ld bc, $5b00                                  ; $49c1: $01 $00 $5b
    ld bc, $18c6                                  ; $49c4: $01 $c6 $18
    ld e, a                                       ; $49c7: $5f
    inc bc                                        ; $49c8: $03
    nop                                           ; $49c9: $00
    nop                                           ; $49ca: $00
    sub h                                         ; $49cb: $94
    ld d, d                                       ; $49cc: $52
    sub $5a                                       ; $49cd: $d6 $5a
    ld h, d                                       ; $49cf: $62
    inc c                                         ; $49d0: $0c
    add h                                         ; $49d1: $84

jr_0d3_49d2:
    db $10                                        ; $49d2: $10
    ld sp, $3946                                  ; $49d3: $31 $46 $39
    ld h, a                                       ; $49d6: $67
    ld l, e                                       ; $49d7: $6b
    dec l                                         ; $49d8: $2d
    ld [hl+], a                                   ; $49d9: $22
    inc b                                         ; $49da: $04
    ld e, a                                       ; $49db: $5f
    inc bc                                        ; $49dc: $03
    add h                                         ; $49dd: $84
    db $10                                        ; $49de: $10
    and [hl]                                      ; $49df: $a6

jr_0d3_49e0:
    jr jr_0d3_49e4                                ; $49e0: $18 $02

    nop                                           ; $49e2: $00
    ld e, e                                       ; $49e3: $5b

jr_0d3_49e4:
    ld bc, $035f                                  ; $49e4: $01 $5f $03
    and [hl]                                      ; $49e7: $a6
    jr jr_0d3_4a45                                ; $49e8: $18 $5b

    ld bc, $035f                                  ; $49ea: $01 $5f $03
    ld e, a                                       ; $49ed: $5f
    inc bc                                        ; $49ee: $03
    and [hl]                                      ; $49ef: $a6
    jr @+$5d                                      ; $49f0: $18 $5b

    ld bc, $035f                                  ; $49f2: $01 $5f $03
    ld e, a                                       ; $49f5: $5f
    inc bc                                        ; $49f6: $03
    and [hl]                                      ; $49f7: $a6
    jr jr_0d3_49fc                                ; $49f8: $18 $02

    nop                                           ; $49fa: $00
    ld e, e                                       ; $49fb: $5b

jr_0d3_49fc:
    ld bc, $035f                                  ; $49fc: $01 $5f $03
    and [hl]                                      ; $49ff: $a6
    jr jr_0d3_4a03                                ; $4a00: $18 $01

jr_0d3_4a02:
    nop                                           ; $4a02: $00

jr_0d3_4a03:
    ld e, e                                       ; $4a03: $5b
    ld bc, $035f                                  ; $4a04: $01 $5f $03
    add h                                         ; $4a07: $84
    db $10                                        ; $4a08: $10
    ld [$5f21], sp                                ; $4a09: $08 $21 $5f
    inc bc                                        ; $4a0c: $03
    adc h                                         ; $4a0d: $8c
    add hl, sp                                    ; $4a0e: $39
    rst $28                                       ; $4a0f: $ef
    ld b, l                                       ; $4a10: $45
    ld b, d                                       ; $4a11: $42
    ld [$035f], sp                                ; $4a12: $08 $5f $03
    rst $28                                       ; $4a15: $ef
    ld b, l                                       ; $4a16: $45
    add $1c                                       ; $4a17: $c6 $1c
    nop                                           ; $4a19: $00
    nop                                           ; $4a1a: $00
    ld e, a                                       ; $4a1b: $5f

jr_0d3_4a1c:
    inc bc                                        ; $4a1c: $03
    ld [bc], a                                    ; $4a1d: $02
    nop                                           ; $4a1e: $00
    add $1c                                       ; $4a1f: $c6 $1c
    ld bc, $ad00                                  ; $4a21: $01 $00 $ad
    ld b, c                                       ; $4a24: $41
    ld e, l                                       ; $4a25: $5d
    ld [bc], a                                    ; $4a26: $02
    push bc                                       ; $4a27: $c5
    jr jr_0d3_4a6c                                ; $4a28: $18 $42

    inc h                                         ; $4a2a: $24
    ld l, e                                       ; $4a2b: $6b
    add hl, sp                                    ; $4a2c: $39
    and l                                         ; $4a2d: $a5
    ld b, h                                       ; $4a2e: $44
    rrca                                          ; $4a2f: $0f
    ld e, d                                       ; $4a30: $5a
    add h                                         ; $4a31: $84
    inc d                                         ; $4a32: $14
    rst $20                                       ; $4a33: $e7
    inc l                                         ; $4a34: $2c
    xor l                                         ; $4a35: $ad
    dec a                                         ; $4a36: $3d
    push bc                                       ; $4a37: $c5
    ld d, b                                       ; $4a38: $50
    nop                                           ; $4a39: $00
    nop                                           ; $4a3a: $00
    ld e, a                                       ; $4a3b: $5f
    inc bc                                        ; $4a3c: $03
    ld hl, $0204                                  ; $4a3d: $21 $04 $02
    nop                                           ; $4a40: $00
    ld bc, $ad00                                  ; $4a41: $01 $00 $ad
    dec a                                         ; $4a44: $3d

jr_0d3_4a45:
    ld e, l                                       ; $4a45: $5d
    ld [bc], a                                    ; $4a46: $02
    and l                                         ; $4a47: $a5
    inc d                                         ; $4a48: $14
    ld h, e                                       ; $4a49: $63
    inc l                                         ; $4a4a: $2c
    call $c66d                                    ; $4a4b: $cd $6d $c6

jr_0d3_4a4e:
    ld c, b                                       ; $4a4e: $48
    ld d, d                                       ; $4a4f: $52
    ld [hl], d                                    ; $4a50: $72
    and l                                         ; $4a51: $a5
    jr jr_0d3_49e0                                ; $4a52: $18 $8c

    ld d, l                                       ; $4a54: $55
    ld sp, $086a                                  ; $4a55: $31 $6a $08
    dec [hl]                                      ; $4a58: $35
    nop                                           ; $4a59: $00
    nop                                           ; $4a5a: $00

jr_0d3_4a5b:
    ld e, a                                       ; $4a5b: $5f
    inc bc                                        ; $4a5c: $03
    ld b, d                                       ; $4a5d: $42
    ld [$0001], sp                                ; $4a5e: $08 $01 $00
    ld [bc], a                                    ; $4a61: $02
    nop                                           ; $4a62: $00
    adc h                                         ; $4a63: $8c
    ld c, c                                       ; $4a64: $49
    ld e, l                                       ; $4a65: $5d
    ld [bc], a                                    ; $4a66: $02
    and h                                         ; $4a67: $a4
    ld b, b                                       ; $4a68: $40
    add h                                         ; $4a69: $84
    jr z, jr_0d3_4a5b                             ; $4a6a: $28 $ef

jr_0d3_4a6c:
    ld h, l                                       ; $4a6c: $65
    ld [$7245], sp                                ; $4a6d: $08 $45 $72
    ld a, [hl]                                    ; $4a70: $7e
    and l                                         ; $4a71: $a5
    jr z, jr_0d3_4abe                             ; $4a72: $28 $4a

    ld c, l                                       ; $4a74: $4d
    rst $20                                       ; $4a75: $e7
    ld b, b                                       ; $4a76: $40
    adc $49                                       ; $4a77: $ce $49
    ld bc, $5f00                                  ; $4a79: $01 $00 $5f
    inc bc                                        ; $4a7c: $03
    ld h, e                                       ; $4a7d: $63
    inc c                                         ; $4a7e: $0c
    and l                                         ; $4a7f: $a5
    inc d                                         ; $4a80: $14
    ld [bc], a                                    ; $4a81: $02
    nop                                           ; $4a82: $00

jr_0d3_4a83:
    rst $28                                       ; $4a83: $ef
    ld d, l                                       ; $4a84: $55
    ld e, l                                       ; $4a85: $5d
    ld [bc], a                                    ; $4a86: $02
    add $24                                       ; $4a87: $c6 $24
    ld h, e                                       ; $4a89: $63
    inc h                                         ; $4a8a: $24
    ld sp, $9c66                                  ; $4a8b: $31 $66 $9c
    ld a, a                                       ; $4a8e: $7f
    add hl, hl                                    ; $4a8f: $29
    ld c, c                                       ; $4a90: $49
    ld h, e                                       ; $4a91: $63
    jr jr_0d3_4a83                                ; $4a92: $18 $ef

    ld d, c                                       ; $4a94: $51
    ld e, d                                       ; $4a95: $5a
    ld a, a                                       ; $4a96: $7f
    and $34                                       ; $4a97: $e6 $34
    ld hl, $5f04                                  ; $4a99: $21 $04 $5f
    inc bc                                        ; $4a9c: $03
    and l                                         ; $4a9d: $a5
    inc d                                         ; $4a9e: $14
    ld [$0225], sp                                ; $4a9f: $08 $25 $02
    nop                                           ; $4aa2: $00
    xor l                                         ; $4aa3: $ad
    dec a                                         ; $4aa4: $3d
    add e                                         ; $4aa5: $83
    inc l                                         ; $4aa6: $2c
    ld e, l                                       ; $4aa7: $5d
    ld [bc], a                                    ; $4aa8: $02

jr_0d3_4aa9:
    add h                                         ; $4aa9: $84
    inc h                                         ; $4aaa: $24
    ld sp, $7b6e                                  ; $4aab: $31 $6e $7b
    ld a, e                                       ; $4aae: $7b
    ld c, d                                       ; $4aaf: $4a
    ld c, c                                       ; $4ab0: $49
    rst $20                                       ; $4ab1: $e7
    inc [hl]                                      ; $4ab2: $34
    ld e, d                                       ; $4ab3: $5a
    ld a, a                                       ; $4ab4: $7f
    db $10                                        ; $4ab5: $10
    ld e, [hl]                                    ; $4ab6: $5e
    adc h                                         ; $4ab7: $8c
    ld c, c                                       ; $4ab8: $49
    ld [hl+], a                                   ; $4ab9: $22
    inc b                                         ; $4aba: $04
    ld e, a                                       ; $4abb: $5f
    inc bc                                        ; $4abc: $03
    and l                                         ; $4abd: $a5

jr_0d3_4abe:
    inc d                                         ; $4abe: $14
    ld c, d                                       ; $4abf: $4a
    dec l                                         ; $4ac0: $2d
    ld bc, $ef00                                  ; $4ac1: $01 $00 $ef
    ld c, c                                       ; $4ac4: $49
    ld e, l                                       ; $4ac5: $5d
    ld [bc], a                                    ; $4ac6: $02
    add h                                         ; $4ac7: $84
    jr jr_0d3_4a4e                                ; $4ac8: $18 $84

    inc [hl]                                      ; $4aca: $34
    ld e, d                                       ; $4acb: $5a
    ld [hl], a                                    ; $4acc: $77
    ld l, e                                       ; $4acd: $6b
    add hl, sp                                    ; $4ace: $39
    xor l                                         ; $4acf: $ad
    ld d, c                                       ; $4ad0: $51
    and l                                         ; $4ad1: $a5
    inc e                                         ; $4ad2: $1c
    sbc h                                         ; $4ad3: $9c
    ld a, a                                       ; $4ad4: $7f
    adc $41                                       ; $4ad5: $ce $41
    xor $55                                       ; $4ad7: $ee $55
    ld [hl+], a                                   ; $4ad9: $22
    inc b                                         ; $4ada: $04
    db $10                                        ; $4adb: $10
    ld c, d                                       ; $4adc: $4a
    ld e, a                                       ; $4add: $5f
    inc bc                                        ; $4ade: $03
    rst $20                                       ; $4adf: $e7
    inc e                                         ; $4ae0: $1c
    ld [bc], a                                    ; $4ae1: $02
    nop                                           ; $4ae2: $00
    adc h                                         ; $4ae3: $8c
    dec a                                         ; $4ae4: $3d
    ld e, l                                       ; $4ae5: $5d
    ld [bc], a                                    ; $4ae6: $02
    add h                                         ; $4ae7: $84
    inc [hl]                                      ; $4ae8: $34
    and l                                         ; $4ae9: $a5
    jr c, jr_0d3_4aa9                             ; $4aea: $38 $bd

    ld a, e                                       ; $4aec: $7b
    ld d, d                                       ; $4aed: $52
    ld d, [hl]                                    ; $4aee: $56
    ld c, d                                       ; $4aef: $4a
    dec [hl]                                      ; $4af0: $35
    ld h, e                                       ; $4af1: $63
    jr @+$75                                      ; $4af2: $18 $73

    ld h, d                                       ; $4af4: $62
    push bc                                       ; $4af5: $c5
    ld h, b                                       ; $4af6: $60
    ld c, d                                       ; $4af7: $4a
    add hl, sp                                    ; $4af8: $39
    add h                                         ; $4af9: $84
    db $10                                        ; $4afa: $10
    adc $45                                       ; $4afb: $ce $45
    ld e, a                                       ; $4afd: $5f
    inc bc                                        ; $4afe: $03
    or l                                          ; $4aff: $b5
    ld h, [hl]                                    ; $4b00: $66
    ld [bc], a                                    ; $4b01: $02
    nop                                           ; $4b02: $00
    xor l                                         ; $4b03: $ad
    dec a                                         ; $4b04: $3d
    ld e, l                                       ; $4b05: $5d
    ld [bc], a                                    ; $4b06: $02
    and l                                         ; $4b07: $a5
    inc d                                         ; $4b08: $14
    ld h, e                                       ; $4b09: $63
    inc d                                         ; $4b0a: $14
    ld a, e                                       ; $4b0b: $7b
    ld a, e                                       ; $4b0c: $7b
    push bc                                       ; $4b0d: $c5
    ld h, b                                       ; $4b0e: $60
    adc h                                         ; $4b0f: $8c
    ld b, c                                       ; $4b10: $41
    ld h, e                                       ; $4b11: $63
    ld b, b                                       ; $4b12: $40
    xor l                                         ; $4b13: $ad
    ld b, c                                       ; $4b14: $41
    sub $6e                                       ; $4b15: $d6 $6e
    adc e                                         ; $4b17: $8b
    ld h, c                                       ; $4b18: $61
    ld [bc], a                                    ; $4b19: $02
    nop                                           ; $4b1a: $00
    rst $28                                       ; $4b1b: $ef
    ld c, l                                       ; $4b1c: $4d
    ld e, a                                       ; $4b1d: $5f
    inc bc                                        ; $4b1e: $03
    rst $20                                       ; $4b1f: $e7
    jr nz, @+$04                                  ; $4b20: $20 $02

    nop                                           ; $4b22: $00
    jr nc, jr_0d3_4b6f                            ; $4b23: $30 $4a

    ld e, e                                       ; $4b25: $5b
    ld bc, $035f                                  ; $4b26: $01 $5f $03
    add h                                         ; $4b29: $84
    jr nz, jr_0d3_4ba6                            ; $4b2a: $20 $7a

    ld a, a                                       ; $4b2c: $7f
    add hl, hl                                    ; $4b2d: $29
    dec a                                         ; $4b2e: $3d
    xor l                                         ; $4b2f: $ad
    ld b, l                                       ; $4b30: $45
    nop                                           ; $4b31: $00
    jr @+$4c                                      ; $4b32: $18 $4a

    ld b, c                                       ; $4b34: $41
    ld [hl], e                                    ; $4b35: $73
    ld h, d                                       ; $4b36: $62
    rst $20                                       ; $4b37: $e7
    inc l                                         ; $4b38: $2c

jr_0d3_4b39:
    ld [bc], a                                    ; $4b39: $02
    nop                                           ; $4b3a: $00
    rst $28                                       ; $4b3b: $ef
    ld c, c                                       ; $4b3c: $49
    ld e, a                                       ; $4b3d: $5f
    inc bc                                        ; $4b3e: $03
    ld [$0125], sp                                ; $4b3f: $08 $25 $01
    nop                                           ; $4b42: $00
    xor l                                         ; $4b43: $ad
    dec a                                         ; $4b44: $3d
    ld e, e                                       ; $4b45: $5b
    ld bc, $035f                                  ; $4b46: $01 $5f $03
    nop                                           ; $4b49: $00
    inc d                                         ; $4b4a: $14
    ld e, d                                       ; $4b4b: $5a
    ld a, e                                       ; $4b4c: $7b
    ld [$ad41], sp                                ; $4b4d: $08 $41 $ad
    ld b, l                                       ; $4b50: $45
    add hl, hl                                    ; $4b51: $29
    dec l                                         ; $4b52: $2d
    ld [hl], e                                    ; $4b53: $73
    ld h, d                                       ; $4b54: $62
    ld e, d                                       ; $4b55: $5a
    ld a, e                                       ; $4b56: $7b
    xor l                                         ; $4b57: $ad
    ld b, l                                       ; $4b58: $45
    ld bc, $5f00                                  ; $4b59: $01 $00 $5f
    inc bc                                        ; $4b5c: $03
    rst $20                                       ; $4b5d: $e7
    inc e                                         ; $4b5e: $1c
    ld h, e                                       ; $4b5f: $63
    db $10                                        ; $4b60: $10
    ld [bc], a                                    ; $4b61: $02
    nop                                           ; $4b62: $00
    adc h                                         ; $4b63: $8c
    ld b, c                                       ; $4b64: $41
    ld e, e                                       ; $4b65: $5b
    ld bc, $035f                                  ; $4b66: $01 $5f $03
    ld hl, $ce14                                  ; $4b69: $21 $14 $ce
    ld b, c                                       ; $4b6c: $41
    ld e, c                                       ; $4b6d: $59
    ld [hl], a                                    ; $4b6e: $77

jr_0d3_4b6f:
    rst $20                                       ; $4b6f: $e7
    inc a                                         ; $4b70: $3c
    ld hl, $730c                                  ; $4b71: $21 $0c $73
    ld e, [hl]                                    ; $4b74: $5e
    ld c, c                                       ; $4b75: $49
    dec l                                         ; $4b76: $2d
    add hl, sp                                    ; $4b77: $39
    ld [hl], a                                    ; $4b78: $77

jr_0d3_4b79:
    ld bc, $5f00                                  ; $4b79: $01 $00 $5f
    inc bc                                        ; $4b7c: $03
    add $14                                       ; $4b7d: $c6 $14
    ld c, d                                       ; $4b7f: $4a
    add hl, hl                                    ; $4b80: $29
    ld [bc], a                                    ; $4b81: $02
    nop                                           ; $4b82: $00
    ld c, d                                       ; $4b83: $4a
    dec [hl]                                      ; $4b84: $35
    ld e, e                                       ; $4b85: $5b
    ld bc, $035f                                  ; $4b86: $01 $5f $03
    ld h, e                                       ; $4b89: $63
    jr jr_0d3_4b39                                ; $4b8a: $18 $ad

    ld c, c                                       ; $4b8c: $49
    ld d, d                                       ; $4b8d: $52
    ld l, d                                       ; $4b8e: $6a
    ld e, c                                       ; $4b8f: $59
    ld a, a                                       ; $4b90: $7f
    ld b, d                                       ; $4b91: $42
    db $10                                        ; $4b92: $10
    rst $28                                       ; $4b93: $ef
    ld e, c                                       ; $4b94: $59
    add hl, sp                                    ; $4b95: $39
    ld [hl], e                                    ; $4b96: $73
    ld b, $39                                     ; $4b97: $06 $39
    ld bc, $ad00                                  ; $4b99: $01 $00 $ad
    ld b, c                                       ; $4b9c: $41
    ld e, a                                       ; $4b9d: $5f
    inc bc                                        ; $4b9e: $03
    and l                                         ; $4b9f: $a5
    inc d                                         ; $4ba0: $14
    ld [bc], a                                    ; $4ba1: $02
    nop                                           ; $4ba2: $00
    xor l                                         ; $4ba3: $ad
    ld b, c                                       ; $4ba4: $41
    ld e, l                                       ; $4ba5: $5d

jr_0d3_4ba6:
    ld [bc], a                                    ; $4ba6: $02
    and l                                         ; $4ba7: $a5
    inc e                                         ; $4ba8: $1c
    ld h, e                                       ; $4ba9: $63
    jr jr_0d3_4c17                                ; $4baa: $18 $6b

    ld b, l                                       ; $4bac: $45
    sub h                                         ; $4bad: $94
    ld l, [hl]                                    ; $4bae: $6e
    rst $28                                       ; $4baf: $ef
    ld d, c                                       ; $4bb0: $51
    ld hl, $ae14                                  ; $4bb1: $21 $14 $ae
    ld c, c                                       ; $4bb4: $49
    add hl, sp                                    ; $4bb5: $39
    ld a, e                                       ; $4bb6: $7b
    ld sp, $6472                                  ; $4bb7: $31 $72 $64
    db $10                                        ; $4bba: $10
    xor l                                         ; $4bbb: $ad
    dec a                                         ; $4bbc: $3d
    ld e, a                                       ; $4bbd: $5f
    inc bc                                        ; $4bbe: $03
    ld [hl], e                                    ; $4bbf: $73
    ld l, [hl]                                    ; $4bc0: $6e
    ld [bc], a                                    ; $4bc1: $02
    nop                                           ; $4bc2: $00
    adc $3d                                       ; $4bc3: $ce $3d
    ld e, e                                       ; $4bc5: $5b
    ld bc, $035f                                  ; $4bc6: $01 $5f $03
    ld h, d                                       ; $4bc9: $62
    jr jr_0d3_4b79                                ; $4bca: $18 $ad

    ld h, l                                       ; $4bcc: $65
    rst $30                                       ; $4bcd: $f7
    halt                                          ; $4bce: $76
    and $38                                       ; $4bcf: $e6 $38
    ld h, e                                       ; $4bd1: $63
    inc d                                         ; $4bd2: $14
    xor l                                         ; $4bd3: $ad
    ld d, c                                       ; $4bd4: $51
    ld d, d                                       ; $4bd5: $52
    ld [hl], d                                    ; $4bd6: $72
    and $38                                       ; $4bd7: $e6 $38
    ld h, h                                       ; $4bd9: $64
    inc d                                         ; $4bda: $14
    call Call_0d3_5f41                            ; $4bdb: $cd $41 $5f
    inc bc                                        ; $4bde: $03
    sub h                                         ; $4bdf: $94
    ld l, d                                       ; $4be0: $6a
    ld [bc], a                                    ; $4be1: $02
    nop                                           ; $4be2: $00
    ld e, e                                       ; $4be3: $5b
    ld bc, $035f                                  ; $4be4: $01 $5f $03
    sub h                                         ; $4be7: $94
    ld l, d                                       ; $4be8: $6a
    ld e, e                                       ; $4be9: $5b
    ld bc, $035f                                  ; $4bea: $01 $5f $03
    ld e, a                                       ; $4bed: $5f
    inc bc                                        ; $4bee: $03
    sub h                                         ; $4bef: $94
    ld l, d                                       ; $4bf0: $6a
    ld e, e                                       ; $4bf1: $5b
    ld bc, $035f                                  ; $4bf2: $01 $5f $03
    ld e, a                                       ; $4bf5: $5f
    inc bc                                        ; $4bf6: $03
    sub h                                         ; $4bf7: $94
    ld l, d                                       ; $4bf8: $6a
    ld [bc], a                                    ; $4bf9: $02
    nop                                           ; $4bfa: $00
    ld e, e                                       ; $4bfb: $5b
    ld bc, $035f                                  ; $4bfc: $01 $5f $03
    sub h                                         ; $4bff: $94
    ld l, d                                       ; $4c00: $6a
    ld [bc], a                                    ; $4c01: $02
    nop                                           ; $4c02: $00
    call nc, $5f01                                ; $4c03: $d4 $01 $5f
    inc bc                                        ; $4c06: $03
    ld e, e                                       ; $4c07: $5b
    ld bc, $0402                                  ; $4c08: $01 $02 $04
    ld e, a                                       ; $4c0b: $5f
    inc bc                                        ; $4c0c: $03
    ld e, a                                       ; $4c0d: $5f
    inc bc                                        ; $4c0e: $03
    ld e, e                                       ; $4c0f: $5b
    ld bc, $0402                                  ; $4c10: $01 $02 $04
    call nc, $5f01                                ; $4c13: $d4 $01 $5f
    inc bc                                        ; $4c16: $03

jr_0d3_4c17:
    ld e, e                                       ; $4c17: $5b
    ld bc, $0002                                  ; $4c18: $01 $02 $00
    ld e, a                                       ; $4c1b: $5f
    inc bc                                        ; $4c1c: $03
    call nc, Call_0d3_5b01                        ; $4c1d: $d4 $01 $5b
    ld bc, $0002                                  ; $4c20: $01 $02 $00
    call nc, $5f01                                ; $4c23: $d4 $01 $5f
    inc bc                                        ; $4c26: $03
    ld e, e                                       ; $4c27: $5b
    ld bc, $0402                                  ; $4c28: $01 $02 $04
    ld l, h                                       ; $4c2b: $6c
    dec l                                         ; $4c2c: $2d
    sub l                                         ; $4c2d: $95
    ld d, d                                       ; $4c2e: $52
    ld e, e                                       ; $4c2f: $5b
    ld bc, $0402                                  ; $4c30: $01 $02 $04
    ld l, h                                       ; $4c33: $6c
    dec l                                         ; $4c34: $2d
    sub l                                         ; $4c35: $95
    ld d, d                                       ; $4c36: $52
    add a                                         ; $4c37: $87
    ld [$0002], sp                                ; $4c38: $08 $02 $00
    call nc, $5f01                                ; $4c3b: $d4 $01 $5f
    inc bc                                        ; $4c3e: $03
    call nc, $0205                                ; $4c3f: $d4 $05 $02
    nop                                           ; $4c42: $00
    or l                                          ; $4c43: $b5
    ld bc, $5295                                  ; $4c44: $01 $95 $52
    ld e, a                                       ; $4c47: $5f
    inc bc                                        ; $4c48: $03
    ld [bc], a                                    ; $4c49: $02
    inc b                                         ; $4c4a: $04
    ld l, h                                       ; $4c4b: $6c
    dec l                                         ; $4c4c: $2d
    sub l                                         ; $4c4d: $95
    ld d, d                                       ; $4c4e: $52
    ld e, a                                       ; $4c4f: $5f
    inc bc                                        ; $4c50: $03
    ld [bc], a                                    ; $4c51: $02
    inc b                                         ; $4c52: $04
    ld l, h                                       ; $4c53: $6c
    dec l                                         ; $4c54: $2d
    add a                                         ; $4c55: $87
    ld [$1d50], sp                                ; $4c56: $08 $50 $1d
    ld [bc], a                                    ; $4c59: $02
    nop                                           ; $4c5a: $00
    or h                                          ; $4c5b: $b4
    dec b                                         ; $4c5c: $05
    sub l                                         ; $4c5d: $95
    ld d, d                                       ; $4c5e: $52
    ld e, a                                       ; $4c5f: $5f
    inc bc                                        ; $4c60: $03
    ld [bc], a                                    ; $4c61: $02
    nop                                           ; $4c62: $00
    sub h                                         ; $4c63: $94
    dec b                                         ; $4c64: $05
    ld e, a                                       ; $4c65: $5f
    inc bc                                        ; $4c66: $03
    ld e, e                                       ; $4c67: $5b
    ld bc, $0402                                  ; $4c68: $01 $02 $04
    ld l, h                                       ; $4c6b: $6c
    dec l                                         ; $4c6c: $2d
    ccf                                           ; $4c6d: $3f
    ld d, a                                       ; $4c6e: $57
    or $2d                                        ; $4c6f: $f6 $2d
    ld [bc], a                                    ; $4c71: $02
    inc b                                         ; $4c72: $04
    ld l, h                                       ; $4c73: $6c
    dec l                                         ; $4c74: $2d
    ccf                                           ; $4c75: $3f
    ld d, a                                       ; $4c76: $57
    or $2d                                        ; $4c77: $f6 $2d
    ld [bc], a                                    ; $4c79: $02
    nop                                           ; $4c7a: $00
    or h                                          ; $4c7b: $b4
    dec b                                         ; $4c7c: $05
    ld e, a                                       ; $4c7d: $5f
    inc bc                                        ; $4c7e: $03
    ld [bc], a                                    ; $4c7f: $02
    inc b                                         ; $4c80: $04
    ld [bc], a                                    ; $4c81: $02
    nop                                           ; $4c82: $00
    ld l, h                                       ; $4c83: $6c
    dec l                                         ; $4c84: $2d
    ld e, a                                       ; $4c85: $5f
    inc bc                                        ; $4c86: $03
    halt                                          ; $4c87: $76
    dec b                                         ; $4c88: $05
    nop                                           ; $4c89: $00
    nop                                           ; $4c8a: $00
    or $2d                                        ; $4c8b: $f6 $2d
    ccf                                           ; $4c8d: $3f
    ld d, a                                       ; $4c8e: $57
    ld [bc], a                                    ; $4c8f: $02
    inc b                                         ; $4c90: $04
    nop                                           ; $4c91: $00
    nop                                           ; $4c92: $00
    or $2d                                        ; $4c93: $f6 $2d
    ccf                                           ; $4c95: $3f
    ld d, a                                       ; $4c96: $57
    ld [bc], a                                    ; $4c97: $02
    inc b                                         ; $4c98: $04
    nop                                           ; $4c99: $00
    nop                                           ; $4c9a: $00
    sub h                                         ; $4c9b: $94
    add hl, bc                                    ; $4c9c: $09
    ld e, a                                       ; $4c9d: $5f
    inc bc                                        ; $4c9e: $03
    ld [bc], a                                    ; $4c9f: $02
    nop                                           ; $4ca0: $00
    ld [bc], a                                    ; $4ca1: $02
    nop                                           ; $4ca2: $00
    ld l, h                                       ; $4ca3: $6c
    dec l                                         ; $4ca4: $2d
    ld e, a                                       ; $4ca5: $5f
    inc bc                                        ; $4ca6: $03
    ld d, a                                       ; $4ca7: $57
    dec b                                         ; $4ca8: $05
    ld bc, $f604                                  ; $4ca9: $01 $04 $f6
    dec l                                         ; $4cac: $2d
    ccf                                           ; $4cad: $3f
    ld d, a                                       ; $4cae: $57
    daa                                           ; $4caf: $27
    nop                                           ; $4cb0: $00
    ld bc, $f600                                  ; $4cb1: $01 $00 $f6
    dec l                                         ; $4cb4: $2d
    ccf                                           ; $4cb5: $3f
    ld d, a                                       ; $4cb6: $57
    daa                                           ; $4cb7: $27
    nop                                           ; $4cb8: $00
    ld [bc], a                                    ; $4cb9: $02
    nop                                           ; $4cba: $00
    ld l, h                                       ; $4cbb: $6c
    dec l                                         ; $4cbc: $2d
    ld e, a                                       ; $4cbd: $5f
    inc bc                                        ; $4cbe: $03
    ld [hl], l                                    ; $4cbf: $75
    add hl, bc                                    ; $4cc0: $09
    ld [bc], a                                    ; $4cc1: $02
    nop                                           ; $4cc2: $00
    ld l, h                                       ; $4cc3: $6c
    dec l                                         ; $4cc4: $2d
    ld e, a                                       ; $4cc5: $5f
    inc bc                                        ; $4cc6: $03
    ld d, a                                       ; $4cc7: $57
    add hl, bc                                    ; $4cc8: $09
    inc bc                                        ; $4cc9: $03
    nop                                           ; $4cca: $00
    or $2d                                        ; $4ccb: $f6 $2d
    ld a, a                                       ; $4ccd: $7f
    ld h, e                                       ; $4cce: $63
    call Call_000_040c                            ; $4ccf: $cd $0c $04
    nop                                           ; $4cd2: $00
    or $2d                                        ; $4cd3: $f6 $2d
    sbc a                                         ; $4cd5: $9f
    ld l, a                                       ; $4cd6: $6f
    call Call_000_020c                            ; $4cd7: $cd $0c $02
    nop                                           ; $4cda: $00
    ld d, l                                       ; $4cdb: $55
    dec c                                         ; $4cdc: $0d
    ld e, a                                       ; $4cdd: $5f
    inc bc                                        ; $4cde: $03
    ld bc, $0204                                  ; $4cdf: $01 $04 $02
    nop                                           ; $4ce2: $00
    ld l, h                                       ; $4ce3: $6c
    dec l                                         ; $4ce4: $2d
    ld e, a                                       ; $4ce5: $5f
    inc bc                                        ; $4ce6: $03
    scf                                           ; $4ce7: $37
    add hl, bc                                    ; $4ce8: $09
    ld [bc], a                                    ; $4ce9: $02
    inc b                                         ; $4cea: $04
    or $2d                                        ; $4ceb: $f6 $2d
    ccf                                           ; $4ced: $3f
    ld d, a                                       ; $4cee: $57
    scf                                           ; $4cef: $37
    add hl, bc                                    ; $4cf0: $09
    inc b                                         ; $4cf1: $04
    nop                                           ; $4cf2: $00
    or $2d                                        ; $4cf3: $f6 $2d
    ccf                                           ; $4cf5: $3f
    ld d, a                                       ; $4cf6: $57
    call Call_000_020c                            ; $4cf7: $cd $0c $02
    nop                                           ; $4cfa: $00
    ld [hl], $11                                  ; $4cfb: $36 $11
    ld e, a                                       ; $4cfd: $5f
    inc bc                                        ; $4cfe: $03
    ld d, l                                       ; $4cff: $55
    ld de, $0001                                  ; $4d00: $11 $01 $00
    ld l, h                                       ; $4d03: $6c
    dec l                                         ; $4d04: $2d
    ld e, a                                       ; $4d05: $5f
    inc bc                                        ; $4d06: $03
    jr c, jr_0d3_4d12                             ; $4d07: $38 $09

    ld [bc], a                                    ; $4d09: $02
    inc b                                         ; $4d0a: $04
    or $2d                                        ; $4d0b: $f6 $2d
    ccf                                           ; $4d0d: $3f
    ld d, a                                       ; $4d0e: $57
    jr c, jr_0d3_4d1a                             ; $4d0f: $38 $09

    inc b                                         ; $4d11: $04

jr_0d3_4d12:
    nop                                           ; $4d12: $00
    or $2d                                        ; $4d13: $f6 $2d
    ccf                                           ; $4d15: $3f
    ld d, a                                       ; $4d16: $57
    call Call_000_020c                            ; $4d17: $cd $0c $02

jr_0d3_4d1a:
    nop                                           ; $4d1a: $00
    ld l, h                                       ; $4d1b: $6c
    dec l                                         ; $4d1c: $2d
    ld e, a                                       ; $4d1d: $5f
    inc bc                                        ; $4d1e: $03
    ld d, $11                                     ; $4d1f: $16 $11
    ld [bc], a                                    ; $4d21: $02
    nop                                           ; $4d22: $00
    ld l, h                                       ; $4d23: $6c
    dec l                                         ; $4d24: $2d
    ld e, a                                       ; $4d25: $5f
    inc bc                                        ; $4d26: $03
    jr jr_0d3_4d36                                ; $4d27: $18 $0d

    inc bc                                        ; $4d29: $03
    nop                                           ; $4d2a: $00
    or $2d                                        ; $4d2b: $f6 $2d
    ccf                                           ; $4d2d: $3f
    ld d, a                                       ; $4d2e: $57
    call Call_000_020c                            ; $4d2f: $cd $0c $02
    inc b                                         ; $4d32: $04
    or $2d                                        ; $4d33: $f6 $2d
    ccf                                           ; $4d35: $3f

jr_0d3_4d36:
    ld d, a                                       ; $4d36: $57
    jr z, jr_0d3_4d39                             ; $4d37: $28 $00

jr_0d3_4d39:
    ld [bc], a                                    ; $4d39: $02
    nop                                           ; $4d3a: $00
    ld l, h                                       ; $4d3b: $6c
    dec l                                         ; $4d3c: $2d
    ld e, a                                       ; $4d3d: $5f
    inc bc                                        ; $4d3e: $03
    or $14                                        ; $4d3f: $f6 $14
    ld bc, $6c00                                  ; $4d41: $01 $00 $6c
    dec l                                         ; $4d44: $2d
    ld e, a                                       ; $4d45: $5f
    inc bc                                        ; $4d46: $03
    ld hl, sp+$0c                                 ; $4d47: $f8 $0c
    inc bc                                        ; $4d49: $03
    nop                                           ; $4d4a: $00
    or $2d                                        ; $4d4b: $f6 $2d
    ccf                                           ; $4d4d: $3f
    ld d, a                                       ; $4d4e: $57
    call Call_000_020c                            ; $4d4f: $cd $0c $02
    inc b                                         ; $4d52: $04
    or $2d                                        ; $4d53: $f6 $2d
    ld c, d                                       ; $4d55: $4a
    nop                                           ; $4d56: $00
    call Call_000_020c                            ; $4d57: $cd $0c $02
    nop                                           ; $4d5a: $00
    ld l, h                                       ; $4d5b: $6c
    dec l                                         ; $4d5c: $2d
    ld e, a                                       ; $4d5d: $5f
    inc bc                                        ; $4d5e: $03
    rst $30                                       ; $4d5f: $f7
    inc d                                         ; $4d60: $14
    ld bc, $d700                                  ; $4d61: $01 $00 $d7
    jr jr_0d3_4dc5                                ; $4d64: $18 $5f

    inc bc                                        ; $4d66: $03
    ld e, e                                       ; $4d67: $5b
    ld bc, $0003                                  ; $4d68: $01 $03 $00
    call nc, Call_000_3f2d                        ; $4d6b: $d4 $2d $3f
    ld d, a                                       ; $4d6e: $57
    xor e                                         ; $4d6f: $ab
    ld [$0004], sp                                ; $4d70: $08 $04 $00
    ld l, h                                       ; $4d73: $6c
    dec l                                         ; $4d74: $2d
    ccf                                           ; $4d75: $3f
    ld d, a                                       ; $4d76: $57
    sub [hl]                                      ; $4d77: $96
    dec h                                         ; $4d78: $25
    ld [bc], a                                    ; $4d79: $02
    nop                                           ; $4d7a: $00
    rst $10                                       ; $4d7b: $d7
    jr jr_0d3_4ddd                                ; $4d7c: $18 $5f

    inc bc                                        ; $4d7e: $03
    ld [bc], a                                    ; $4d7f: $02
    inc b                                         ; $4d80: $04
    ld [bc], a                                    ; $4d81: $02
    nop                                           ; $4d82: $00
    rst $10                                       ; $4d83: $d7
    jr @+$61                                      ; $4d84: $18 $5f

    inc bc                                        ; $4d86: $03
    ld e, e                                       ; $4d87: $5b
    ld bc, $0000                                  ; $4d88: $01 $00 $00
    ld [hl], c                                    ; $4d8b: $71
    ld hl, $6739                                  ; $4d8c: $21 $39 $67
    ld b, [hl]                                    ; $4d8f: $46
    inc b                                         ; $4d90: $04
    nop                                           ; $4d91: $00
    nop                                           ; $4d92: $00
    ld sp, $3919                                  ; $4d93: $31 $19 $39
    ld h, a                                       ; $4d96: $67
    ld b, [hl]                                    ; $4d97: $46
    inc b                                         ; $4d98: $04
    ld [bc], a                                    ; $4d99: $02
    nop                                           ; $4d9a: $00
    rst $10                                       ; $4d9b: $d7
    jr @+$61                                      ; $4d9c: $18 $5f

    inc bc                                        ; $4d9e: $03
    ld b, [hl]                                    ; $4d9f: $46
    inc b                                         ; $4da0: $04
    ld bc, $d700                                  ; $4da1: $01 $00 $d7
    jr jr_0d3_4e05                                ; $4da4: $18 $5f

    inc bc                                        ; $4da6: $03
    ld e, e                                       ; $4da7: $5b
    ld bc, $0000                                  ; $4da8: $01 $00 $00
    or $2d                                        ; $4dab: $f6 $2d
    rst $38                                       ; $4dad: $ff
    ld a, a                                       ; $4dae: $7f
    ld l, h                                       ; $4daf: $6c
    dec l                                         ; $4db0: $2d
    nop                                           ; $4db1: $00
    nop                                           ; $4db2: $00
    or $2d                                        ; $4db3: $f6 $2d
    rst $38                                       ; $4db5: $ff
    ld a, a                                       ; $4db6: $7f
    ld l, h                                       ; $4db7: $6c
    dec l                                         ; $4db8: $2d
    nop                                           ; $4db9: $00
    nop                                           ; $4dba: $00
    rst $10                                       ; $4dbb: $d7
    jr jr_0d3_4e1d                                ; $4dbc: $18 $5f

    inc bc                                        ; $4dbe: $03
    ld [bc], a                                    ; $4dbf: $02
    nop                                           ; $4dc0: $00
    ld bc, $6c00                                  ; $4dc1: $01 $00 $6c
    dec l                                         ; $4dc4: $2d

jr_0d3_4dc5:
    ld e, a                                       ; $4dc5: $5f
    inc bc                                        ; $4dc6: $03
    ld hl, sp+$10                                 ; $4dc7: $f8 $10
    nop                                           ; $4dc9: $00
    nop                                           ; $4dca: $00
    and h                                         ; $4dcb: $a4
    db $10                                        ; $4dcc: $10
    ld e, a                                       ; $4dcd: $5f
    inc bc                                        ; $4dce: $03
    ld hl, sp+$10                                 ; $4dcf: $f8 $10
    nop                                           ; $4dd1: $00
    nop                                           ; $4dd2: $00
    ld l, h                                       ; $4dd3: $6c
    dec l                                         ; $4dd4: $2d
    and h                                         ; $4dd5: $a4
    db $10                                        ; $4dd6: $10
    ld hl, sp+$10                                 ; $4dd7: $f8 $10
    ld bc, $6c00                                  ; $4dd9: $01 $00 $6c
    dec l                                         ; $4ddc: $2d

jr_0d3_4ddd:
    ld e, a                                       ; $4ddd: $5f
    inc bc                                        ; $4dde: $03
    rst $10                                       ; $4ddf: $d7
    jr jr_0d3_4de4                                ; $4de0: $18 $02

    nop                                           ; $4de2: $00
    ld e, e                                       ; $4de3: $5b

jr_0d3_4de4:
    ld bc, $035f                                  ; $4de4: $01 $5f $03
    rst $10                                       ; $4de7: $d7
    jr jr_0d3_4e45                                ; $4de8: $18 $5b

    ld bc, $035f                                  ; $4dea: $01 $5f $03
    ld e, a                                       ; $4ded: $5f
    inc bc                                        ; $4dee: $03
    rst $10                                       ; $4def: $d7
    jr jr_0d3_4e4d                                ; $4df0: $18 $5b

    ld bc, $035f                                  ; $4df2: $01 $5f $03
    ld e, a                                       ; $4df5: $5f
    inc bc                                        ; $4df6: $03
    rst $10                                       ; $4df7: $d7
    jr jr_0d3_4dfc                                ; $4df8: $18 $02

    nop                                           ; $4dfa: $00
    ld e, e                                       ; $4dfb: $5b

jr_0d3_4dfc:
    ld bc, $035f                                  ; $4dfc: $01 $5f $03
    rst $10                                       ; $4dff: $d7
    jr jr_0d3_4e04                                ; $4e00: $18 $02

    nop                                           ; $4e02: $00
    xor a                                         ; $4e03: $af

jr_0d3_4e04:
    ld b, c                                       ; $4e04: $41

jr_0d3_4e05:
    ld e, e                                       ; $4e05: $5b
    ld bc, $035f                                  ; $4e06: $01 $5f $03
    nop                                           ; $4e09: $00
    nop                                           ; $4e0a: $00
    jr c, jr_0d3_4e68                             ; $4e0b: $38 $5b

    ld e, a                                       ; $4e0d: $5f
    inc bc                                        ; $4e0e: $03
    db $dd                                        ; $4e0f: $dd
    ld [hl], e                                    ; $4e10: $73
    nop                                           ; $4e11: $00
    nop                                           ; $4e12: $00
    ld e, a                                       ; $4e13: $5f
    inc bc                                        ; $4e14: $03
    jr c, @+$61                                   ; $4e15: $38 $5f

    cp $77                                        ; $4e17: $fe $77
    nop                                           ; $4e19: $00
    nop                                           ; $4e1a: $00
    ld e, a                                       ; $4e1b: $5f
    inc bc                                        ; $4e1c: $03

jr_0d3_4e1d:
    ld l, [hl]                                    ; $4e1d: $6e
    dec a                                         ; $4e1e: $3d
    ld [bc], a                                    ; $4e1f: $02
    nop                                           ; $4e20: $00
    ld [bc], a                                    ; $4e21: $02
    nop                                           ; $4e22: $00
    ld l, [hl]                                    ; $4e23: $6e
    dec a                                         ; $4e24: $3d
    cp h                                          ; $4e25: $bc
    ld [hl], e                                    ; $4e26: $73
    ld e, l                                       ; $4e27: $5d
    ld [bc], a                                    ; $4e28: $02
    nop                                           ; $4e29: $00
    nop                                           ; $4e2a: $00
    rst $10                                       ; $4e2b: $d7
    ld c, [hl]                                    ; $4e2c: $4e
    sbc $77                                       ; $4e2d: $de $77
    xor a                                         ; $4e2f: $af
    dec l                                         ; $4e30: $2d
    ld b, d                                       ; $4e31: $42
    ld [$4ed6], sp                                ; $4e32: $08 $d6 $4e
    db $dd                                        ; $4e35: $dd
    ld [hl], e                                    ; $4e36: $73
    xor a                                         ; $4e37: $af
    dec l                                         ; $4e38: $2d
    ld bc, $5f00                                  ; $4e39: $01 $00 $5f
    inc bc                                        ; $4e3c: $03
    sbc e                                         ; $4e3d: $9b
    ld l, a                                       ; $4e3e: $6f
    ld l, [hl]                                    ; $4e3f: $6e
    dec a                                         ; $4e40: $3d
    ld bc, $ae00                                  ; $4e41: $01 $00 $ae
    add hl, sp                                    ; $4e44: $39

jr_0d3_4e45:
    cp l                                          ; $4e45: $bd
    ld [hl], e                                    ; $4e46: $73
    ld e, l                                       ; $4e47: $5d
    ld [bc], a                                    ; $4e48: $02
    ld bc, $5a00                                  ; $4e49: $01 $00 $5a
    ld a, [hl-]                                   ; $4e4c: $3a

jr_0d3_4e4d:
    ld [$f919], sp                                ; $4e4d: $08 $19 $f9
    ld d, [hl]                                    ; $4e50: $56
    nop                                           ; $4e51: $00
    nop                                           ; $4e52: $00
    ld c, l                                       ; $4e53: $4d
    dec e                                         ; $4e54: $1d
    ld e, d                                       ; $4e55: $5a
    ld a, [hl-]                                   ; $4e56: $3a
    ld h, a                                       ; $4e57: $67
    inc b                                         ; $4e58: $04
    ld [hl+], a                                   ; $4e59: $22
    inc b                                         ; $4e5a: $04
    ld e, a                                       ; $4e5b: $5f
    inc bc                                        ; $4e5c: $03
    or [hl]                                       ; $4e5d: $b6
    ld d, d                                       ; $4e5e: $52
    sbc $77                                       ; $4e5f: $de $77
    ld bc, $9a00                                  ; $4e61: $01 $00 $9a
    ld de, $6b9b                                  ; $4e64: $11 $9b $6b
    ld e, a                                       ; $4e67: $5f

jr_0d3_4e68:
    inc bc                                        ; $4e68: $03
    nop                                           ; $4e69: $00
    nop                                           ; $4e6a: $00
    ld e, d                                       ; $4e6b: $5a
    ld a, [hl-]                                   ; $4e6c: $3a
    ld e, $57                                     ; $4e6d: $1e $57
    rst $38                                       ; $4e6f: $ff
    ld a, a                                       ; $4e70: $7f
    nop                                           ; $4e71: $00
    nop                                           ; $4e72: $00
    ld e, d                                       ; $4e73: $5a
    ld a, [hl-]                                   ; $4e74: $3a
    ld e, $57                                     ; $4e75: $1e $57
    rst $38                                       ; $4e77: $ff
    ld a, a                                       ; $4e78: $7f
    nop                                           ; $4e79: $00
    nop                                           ; $4e7a: $00
    scf                                           ; $4e7b: $37
    ld a, [hl-]                                   ; $4e7c: $3a
    cp $7f                                        ; $4e7d: $fe $7f
    ld e, a                                       ; $4e7f: $5f
    inc bc                                        ; $4e80: $03
    ld [bc], a                                    ; $4e81: $02
    nop                                           ; $4e82: $00
    ld sp, $bd3a                                  ; $4e83: $31 $3a $bd
    ld [hl], a                                    ; $4e86: $77
    ld e, l                                       ; $4e87: $5d
    ld [bc], a                                    ; $4e88: $02
    nop                                           ; $4e89: $00
    nop                                           ; $4e8a: $00
    or h                                          ; $4e8b: $b4
    ld d, d                                       ; $4e8c: $52
    rst $38                                       ; $4e8d: $ff
    ld a, a                                       ; $4e8e: $7f
    ld e, $57                                     ; $4e8f: $1e $57
    nop                                           ; $4e91: $00
    nop                                           ; $4e92: $00
    or h                                          ; $4e93: $b4
    ld d, d                                       ; $4e94: $52
    rst $38                                       ; $4e95: $ff
    ld a, a                                       ; $4e96: $7f
    ld e, $57                                     ; $4e97: $1e $57
    nop                                           ; $4e99: $00
    nop                                           ; $4e9a: $00
    ld e, d                                       ; $4e9b: $5a
    ld a, [hl-]                                   ; $4e9c: $3a
    cp l                                          ; $4e9d: $bd
    ld [hl], a                                    ; $4e9e: $77
    ld e, a                                       ; $4e9f: $5f
    inc bc                                        ; $4ea0: $03
    ld bc, $1200                                  ; $4ea1: $01 $00 $12
    ld a, [hl-]                                   ; $4ea4: $3a
    sbc l                                         ; $4ea5: $9d
    ld l, a                                       ; $4ea6: $6f
    ld e, l                                       ; $4ea7: $5d
    ld [bc], a                                    ; $4ea8: $02
    nop                                           ; $4ea9: $00
    nop                                           ; $4eaa: $00
    pop af                                        ; $4eab: $f1
    dec l                                         ; $4eac: $2d
    ld e, $57                                     ; $4ead: $1e $57
    ld h, b                                       ; $4eaf: $60
    jr nz, jr_0d3_4ed5                            ; $4eb0: $20 $23

    nop                                           ; $4eb2: $00
    ret nc                                        ; $4eb3: $d0

    add hl, hl                                    ; $4eb4: $29
    or h                                          ; $4eb5: $b4
    ld d, d                                       ; $4eb6: $52
    ld e, $57                                     ; $4eb7: $1e $57
    nop                                           ; $4eb9: $00
    nop                                           ; $4eba: $00
    ld d, d                                       ; $4ebb: $52
    ld a, $dd                                     ; $4ebc: $3e $dd
    ld [hl], a                                    ; $4ebe: $77
    ld e, a                                       ; $4ebf: $5f
    inc bc                                        ; $4ec0: $03
    ld bc, $5700                                  ; $4ec1: $01 $00 $57
    dec c                                         ; $4ec4: $0d
    ld a, [hl-]                                   ; $4ec5: $3a
    ld h, e                                       ; $4ec6: $63
    ld e, a                                       ; $4ec7: $5f
    inc bc                                        ; $4ec8: $03
    ld hl, $3814                                  ; $4ec9: $21 $14 $38
    ld a, [hl-]                                   ; $4ecc: $3a
    sbc $7b                                       ; $4ecd: $de $7b
    ld b, e                                       ; $4ecf: $43
    ld d, l                                       ; $4ed0: $55
    nop                                           ; $4ed1: $00
    db $10                                        ; $4ed2: $10
    ld e, h                                       ; $4ed3: $5c
    ld l, e                                       ; $4ed4: $6b

jr_0d3_4ed5:
    ld b, d                                       ; $4ed5: $42
    ld e, c                                       ; $4ed6: $59
    ld de, $210d                                  ; $4ed7: $11 $0d $21
    inc b                                         ; $4eda: $04
    ld d, [hl]                                    ; $4edb: $56
    ld a, $bc                                     ; $4edc: $3e $bc
    ld [hl], a                                    ; $4ede: $77
    ld e, a                                       ; $4edf: $5f
    inc bc                                        ; $4ee0: $03
    ld [bc], a                                    ; $4ee1: $02
    nop                                           ; $4ee2: $00
    sub l                                         ; $4ee3: $95
    dec e                                         ; $4ee4: $1d
    ld a, c                                       ; $4ee5: $79
    ld [hl], e                                    ; $4ee6: $73
    ld a, a                                       ; $4ee7: $7f
    inc bc                                        ; $4ee8: $03
    ld b, d                                       ; $4ee9: $42
    nop                                           ; $4eea: $00
    inc de                                        ; $4eeb: $13
    ld a, a                                       ; $4eec: $7f
    rst $38                                       ; $4eed: $ff
    inc bc                                        ; $4eee: $03
    cp h                                          ; $4eef: $bc
    ld b, [hl]                                    ; $4ef0: $46
    nop                                           ; $4ef1: $00
    nop                                           ; $4ef2: $00
    rst $38                                       ; $4ef3: $ff
    inc bc                                        ; $4ef4: $03
    inc de                                        ; $4ef5: $13
    ld a, a                                       ; $4ef6: $7f
    ld e, d                                       ; $4ef7: $5a
    ld a, [hl-]                                   ; $4ef8: $3a
    nop                                           ; $4ef9: $00
    nop                                           ; $4efa: $00
    ld a, a                                       ; $4efb: $7f
    inc bc                                        ; $4efc: $03
    dec [hl]                                      ; $4efd: $35
    ld a, $bd                                     ; $4efe: $3e $bd
    ld [hl], e                                    ; $4f00: $73
    ld bc, $dd00                                  ; $4f01: $01 $00 $dd
    ld [bc], a                                    ; $4f04: $02
    add hl, sp                                    ; $4f05: $39
    ld h, a                                       ; $4f06: $67
    add hl, bc                                    ; $4f07: $09
    dec e                                         ; $4f08: $1d
    ld b, e                                       ; $4f09: $43
    inc b                                         ; $4f0a: $04
    call c, $ff4a                                 ; $4f0b: $dc $4a $ff
    inc bc                                        ; $4f0e: $03
    ld h, b                                       ; $4f0f: $60
    ld l, c                                       ; $4f10: $69
    ld h, b                                       ; $4f11: $60
    ld l, c                                       ; $4f12: $69
    ld e, d                                       ; $4f13: $5a
    ld a, [hl-]                                   ; $4f14: $3a
    ld [$ff08], a                                 ; $4f15: $ea $08 $ff
    inc bc                                        ; $4f18: $03
    ld [hl+], a                                   ; $4f19: $22
    nop                                           ; $4f1a: $00
    ld d, h                                       ; $4f1b: $54
    ld b, d                                       ; $4f1c: $42
    ld e, a                                       ; $4f1d: $5f
    inc bc                                        ; $4f1e: $03
    ld e, e                                       ; $4f1f: $5b
    ld h, a                                       ; $4f20: $67
    ld [bc], a                                    ; $4f21: $02
    nop                                           ; $4f22: $00
    scf                                           ; $4f23: $37
    ld [hl], $ff                                  ; $4f24: $36 $ff
    ld a, a                                       ; $4f26: $7f
    ld e, l                                       ; $4f27: $5d
    ld [bc], a                                    ; $4f28: $02
    nop                                           ; $4f29: $00
    nop                                           ; $4f2a: $00
    add hl, sp                                    ; $4f2b: $39
    ld [hl-], a                                   ; $4f2c: $32
    sbc [hl]                                      ; $4f2d: $9e
    ld l, a                                       ; $4f2e: $6f
    ld a, [hl+]                                   ; $4f2f: $2a
    ld hl, $0001                                  ; $4f30: $21 $01 $00
    ld e, d                                       ; $4f33: $5a
    ld a, [hl-]                                   ; $4f34: $3a
    rst $38                                       ; $4f35: $ff
    ld a, a                                       ; $4f36: $7f
    ld e, $57                                     ; $4f37: $1e $57
    nop                                           ; $4f39: $00
    nop                                           ; $4f3a: $00
    ld e, a                                       ; $4f3b: $5f
    inc bc                                        ; $4f3c: $03
    add hl, sp                                    ; $4f3d: $39
    ld h, e                                       ; $4f3e: $63
    ret z                                         ; $4f3f: $c8

    inc c                                         ; $4f40: $0c
    ld [bc], a                                    ; $4f41: $02
    nop                                           ; $4f42: $00
    sbc b                                         ; $4f43: $98
    ld de, $677a                                  ; $4f44: $11 $7a $67
    ld e, a                                       ; $4f47: $5f
    inc bc                                        ; $4f48: $03
    ld [hl+], a                                   ; $4f49: $22
    inc b                                         ; $4f4a: $04
    or [hl]                                       ; $4f4b: $b6
    ld c, d                                       ; $4f4c: $4a
    ld [hl], e                                    ; $4f4d: $73
    dec e                                         ; $4f4e: $1d
    db $dd                                        ; $4f4f: $dd
    ld [hl], a                                    ; $4f50: $77
    ld b, e                                       ; $4f51: $43
    inc b                                         ; $4f52: $04
    ld d, $63                                     ; $4f53: $16 $63
    rst $08                                       ; $4f55: $cf
    ld sp, $7bde                                  ; $4f56: $31 $de $7b
    ld [bc], a                                    ; $4f59: $02
    nop                                           ; $4f5a: $00
    ei                                            ; $4f5b: $fb
    ld d, $bd                                     ; $4f5c: $16 $bd
    ld [hl], a                                    ; $4f5e: $77
    ld c, h                                       ; $4f5f: $4c
    ld hl, $0002                                  ; $4f60: $21 $02 $00
    ld a, [c]                                     ; $4f63: $f2
    dec l                                         ; $4f64: $2d
    cp h                                          ; $4f65: $bc
    ld [hl], e                                    ; $4f66: $73
    ld e, l                                       ; $4f67: $5d
    ld [bc], a                                    ; $4f68: $02
    ld hl, $f604                                  ; $4f69: $21 $04 $f6
    add hl, hl                                    ; $4f6c: $29
    rst $18                                       ; $4f6d: $df
    ld [hl], e                                    ; $4f6e: $73
    dec bc                                        ; $4f6f: $0b
    add hl, de                                    ; $4f70: $19
    ld bc, $1300                                  ; $4f71: $01 $00 $13
    ld [hl], $9c                                  ; $4f74: $36 $9c
    ld l, a                                       ; $4f76: $6f
    ld l, d                                       ; $4f77: $6a
    add hl, hl                                    ; $4f78: $29
    ld h, e                                       ; $4f79: $63
    ld [$29b0], sp                                ; $4f7a: $08 $b0 $29
    ld e, a                                       ; $4f7d: $5f
    inc bc                                        ; $4f7e: $03
    sub $56                                       ; $4f7f: $d6 $56
    ld [bc], a                                    ; $4f81: $02
    nop                                           ; $4f82: $00
    ld [hl], h                                    ; $4f83: $74
    ld de, $5b17                                  ; $4f84: $11 $17 $5b
    ld e, a                                       ; $4f87: $5f
    inc bc                                        ; $4f88: $03
    nop                                           ; $4f89: $00
    nop                                           ; $4f8a: $00
    jr @+$61                                      ; $4f8b: $18 $5f

    rst $08                                       ; $4f8d: $cf
    ld sp, $7bff                                  ; $4f8e: $31 $ff $7b
    ld bc, $9400                                  ; $4f91: $01 $00 $94
    ld c, [hl]                                    ; $4f94: $4e
    cp h                                          ; $4f95: $bc
    ld [hl], a                                    ; $4f96: $77
    xor a                                         ; $4f97: $af
    add hl, hl                                    ; $4f98: $29
    ld bc, $3100                                  ; $4f99: $01 $00 $31
    ld b, [hl]                                    ; $4f9c: $46
    rst $38                                       ; $4f9d: $ff
    ld a, e                                       ; $4f9e: $7b
    ld e, a                                       ; $4f9f: $5f
    inc bc                                        ; $4fa0: $03
    ld [bc], a                                    ; $4fa1: $02
    nop                                           ; $4fa2: $00
    or b                                          ; $4fa3: $b0
    dec h                                         ; $4fa4: $25
    ld a, e                                       ; $4fa5: $7b
    ld l, e                                       ; $4fa6: $6b
    ld e, l                                       ; $4fa7: $5d
    ld [bc], a                                    ; $4fa8: $02
    ld h, h                                       ; $4fa9: $64
    inc b                                         ; $4faa: $04
    sub l                                         ; $4fab: $95
    ld b, [hl]                                    ; $4fac: $46
    cp h                                          ; $4fad: $bc
    ld [hl], a                                    ; $4fae: $77
    adc $35                                       ; $4faf: $ce $35
    ld [hl+], a                                   ; $4fb1: $22
    nop                                           ; $4fb2: $00
    sub $4e                                       ; $4fb3: $d6 $4e
    cp e                                          ; $4fb5: $bb
    ld [hl], a                                    ; $4fb6: $77
    ld [$4210], a                                 ; $4fb7: $ea $10 $42
    inc b                                         ; $4fba: $04
    ld [hl-], a                                   ; $4fbb: $32
    ld [hl], $bd                                  ; $4fbc: $36 $bd
    ld l, a                                       ; $4fbe: $6f
    ld e, a                                       ; $4fbf: $5f
    inc bc                                        ; $4fc0: $03
    ld [bc], a                                    ; $4fc1: $02
    nop                                           ; $4fc2: $00
    ret nc                                        ; $4fc3: $d0

    dec l                                         ; $4fc4: $2d
    sbc e                                         ; $4fc5: $9b
    ld l, a                                       ; $4fc6: $6f
    ld e, l                                       ; $4fc7: $5d
    ld [bc], a                                    ; $4fc8: $02
    ld b, e                                       ; $4fc9: $43
    nop                                           ; $4fca: $00
    jr @+$5d                                      ; $4fcb: $18 $5b

    cp $7b                                        ; $4fcd: $fe $7b
    inc c                                         ; $4fcf: $0c
    ld de, $0021                                  ; $4fd0: $11 $21 $00
    sub $52                                       ; $4fd3: $d6 $52
    cp h                                          ; $4fd5: $bc
    ld [hl], a                                    ; $4fd6: $77
    adc [hl]                                      ; $4fd7: $8e
    ld hl, $0422                                  ; $4fd8: $21 $22 $04
    inc sp                                        ; $4fdb: $33
    ld a, [hl-]                                   ; $4fdc: $3a
    ld e, a                                       ; $4fdd: $5f
    inc bc                                        ; $4fde: $03
    sbc d                                         ; $4fdf: $9a
    ld l, e                                       ; $4fe0: $6b
    ld [bc], a                                    ; $4fe1: $02
    nop                                           ; $4fe2: $00
    ld e, e                                       ; $4fe3: $5b
    ld bc, $035f                                  ; $4fe4: $01 $5f $03
    sbc d                                         ; $4fe7: $9a
    ld l, e                                       ; $4fe8: $6b
    ld e, e                                       ; $4fe9: $5b
    ld bc, $035f                                  ; $4fea: $01 $5f $03
    ld e, a                                       ; $4fed: $5f
    inc bc                                        ; $4fee: $03
    sbc d                                         ; $4fef: $9a
    ld l, e                                       ; $4ff0: $6b
    ld e, e                                       ; $4ff1: $5b
    ld bc, $035f                                  ; $4ff2: $01 $5f $03
    ld e, a                                       ; $4ff5: $5f
    inc bc                                        ; $4ff6: $03
    sbc d                                         ; $4ff7: $9a
    ld l, e                                       ; $4ff8: $6b
    ld [bc], a                                    ; $4ff9: $02
    nop                                           ; $4ffa: $00
    ld e, e                                       ; $4ffb: $5b
    ld bc, $035f                                  ; $4ffc: $01 $5f $03
    sbc d                                         ; $4fff: $9a
    ld l, e                                       ; $5000: $6b
    ld [bc], a                                    ; $5001: $02
    nop                                           ; $5002: $00
    ld c, b                                       ; $5003: $48
    ld [hl+], a                                   ; $5004: $22
    ld e, e                                       ; $5005: $5b
    ld bc, $035f                                  ; $5006: $01 $5f $03
    nop                                           ; $5009: $00
    nop                                           ; $500a: $00
    ld e, a                                       ; $500b: $5f
    inc bc                                        ; $500c: $03
    ld sp, $4851                                  ; $500d: $31 $51 $48

Jump_0d3_5010:
    ld [hl+], a                                   ; $5010: $22
    nop                                           ; $5011: $00
    nop                                           ; $5012: $00
    ld e, a                                       ; $5013: $5f
    inc bc                                        ; $5014: $03
    or l                                          ; $5015: $b5
    ld h, l                                       ; $5016: $65
    ld c, b                                       ; $5017: $48
    ld [hl+], a                                   ; $5018: $22
    ld [bc], a                                    ; $5019: $02
    nop                                           ; $501a: $00
    ld e, a                                       ; $501b: $5f
    inc bc                                        ; $501c: $03
    ld c, b                                       ; $501d: $48
    ld [hl+], a                                   ; $501e: $22
    ld c, b                                       ; $501f: $48
    ld [hl+], a                                   ; $5020: $22
    ld bc, $4800                                  ; $5021: $01 $00 $48
    ld [hl+], a                                   ; $5024: $22
    ld e, e                                       ; $5025: $5b
    ld bc, $035f                                  ; $5026: $01 $5f $03
    nop                                           ; $5029: $00
    nop                                           ; $502a: $00
    inc sp                                        ; $502b: $33
    ld e, l                                       ; $502c: $5d
    ld l, c                                       ; $502d: $69
    inc l                                         ; $502e: $2c
    ret c                                         ; $502f: $d8

    ld [hl], c                                    ; $5030: $71
    nop                                           ; $5031: $00
    nop                                           ; $5032: $00
    ld [hl], h                                    ; $5033: $74
    ld h, c                                       ; $5034: $61
    ld l, c                                       ; $5035: $69
    inc l                                         ; $5036: $2c
    ld c, b                                       ; $5037: $48
    ld [hl+], a                                   ; $5038: $22
    ld [bc], a                                    ; $5039: $02
    nop                                           ; $503a: $00
    ld e, a                                       ; $503b: $5f
    inc bc                                        ; $503c: $03
    ld c, b                                       ; $503d: $48

jr_0d3_503e:
    ld [hl+], a                                   ; $503e: $22
    ld c, b                                       ; $503f: $48
    ld [hl+], a                                   ; $5040: $22
    ld [bc], a                                    ; $5041: $02
    nop                                           ; $5042: $00
    ld c, b                                       ; $5043: $48
    ld [hl+], a                                   ; $5044: $22
    ld e, l                                       ; $5045: $5d
    ld [bc], a                                    ; $5046: $02
    ld [hl], l                                    ; $5047: $75
    ld l, c                                       ; $5048: $69
    nop                                           ; $5049: $00
    nop                                           ; $504a: $00
    ld l, d                                       ; $504b: $6a
    jr nc, jr_0d3_503e                            ; $504c: $30 $f0

    ld d, b                                       ; $504e: $50
    sub a                                         ; $504f: $97
    ld l, l                                       ; $5050: $6d
    nop                                           ; $5051: $00
    nop                                           ; $5052: $00
    ld sp, $6955                                  ; $5053: $31 $55 $69
    inc l                                         ; $5056: $2c
    sub a                                         ; $5057: $97
    ld l, l                                       ; $5058: $6d
    nop                                           ; $5059: $00
    nop                                           ; $505a: $00
    ld e, a                                       ; $505b: $5f
    inc bc                                        ; $505c: $03
    ld c, b                                       ; $505d: $48
    ld [hl+], a                                   ; $505e: $22
    ld [bc], a                                    ; $505f: $02
    nop                                           ; $5060: $00
    ld bc, $0800                                  ; $5061: $01 $00 $08
    ld h, $5b                                     ; $5064: $26 $5b
    ld bc, $035f                                  ; $5066: $01 $5f $03
    nop                                           ; $5069: $00
    nop                                           ; $506a: $00
    ld de, $6851                                  ; $506b: $11 $51 $68
    jr z, @-$06                                   ; $506e: $28 $f8

    ld [hl], c                                    ; $5070: $71
    nop                                           ; $5071: $00
    nop                                           ; $5072: $00
    ld d, d                                       ; $5073: $52
    ld d, l                                       ; $5074: $55
    ld l, c                                       ; $5075: $69
    inc l                                         ; $5076: $2c
    sub [hl]                                      ; $5077: $96
    ld l, c                                       ; $5078: $69
    ld bc, $4800                                  ; $5079: $01 $00 $48
    ld [hl+], a                                   ; $507c: $22
    ld e, a                                       ; $507d: $5f
    inc bc                                        ; $507e: $03
    sub l                                         ; $507f: $95
    ld h, c                                       ; $5080: $61
    ld [bc], a                                    ; $5081: $02
    nop                                           ; $5082: $00
    ld c, b                                       ; $5083: $48
    ld [hl+], a                                   ; $5084: $22
    ld e, l                                       ; $5085: $5d
    ld [bc], a                                    ; $5086: $02
    adc e                                         ; $5087: $8b
    inc [hl]                                      ; $5088: $34
    nop                                           ; $5089: $00
    nop                                           ; $508a: $00
    ld l, a                                       ; $508b: $6f
    ld sp, $5932                                  ; $508c: $31 $32 $59
    adc c                                         ; $508f: $89
    inc e                                         ; $5090: $1c
    nop                                           ; $5091: $00
    nop                                           ; $5092: $00
    ld [hl], l                                    ; $5093: $75
    ld h, l                                       ; $5094: $65
    ld b, a                                       ; $5095: $47
    inc h                                         ; $5096: $24
    adc e                                         ; $5097: $8b
    inc [hl]                                      ; $5098: $34
    nop                                           ; $5099: $00
    nop                                           ; $509a: $00
    ld a, [hl+]                                   ; $509b: $2a
    ld l, $5f                                     ; $509c: $2e $5f
    inc bc                                        ; $509e: $03
    ld l, d                                       ; $509f: $6a
    jr nc, jr_0d3_50a3                            ; $50a0: $30 $01

    nop                                           ; $50a2: $00

jr_0d3_50a3:
    ld [$5b22], sp                                ; $50a3: $08 $22 $5b
    ld bc, $035f                                  ; $50a6: $01 $5f $03
    ld bc, $3e00                                  ; $50a9: $01 $00 $3e
    ld d, a                                       ; $50ac: $57
    xor b                                         ; $50ad: $a8
    inc e                                         ; $50ae: $1c
    or c                                          ; $50af: $b1
    ld sp, $0000                                  ; $50b0: $31 $00 $00
    ld c, $35                                     ; $50b3: $0e $35
    ld [hl-], a                                   ; $50b5: $32
    ld e, c                                       ; $50b6: $59
    ld h, a                                       ; $50b7: $67
    jr nz, @+$04                                  ; $50b8: $20 $02

    ld [$6555], sp                                ; $50ba: $08 $55 $65
    ld c, b                                       ; $50bd: $48
    ld [hl+], a                                   ; $50be: $22
    ld e, a                                       ; $50bf: $5f
    inc bc                                        ; $50c0: $03
    ld bc, $4800                                  ; $50c1: $01 $00 $48
    ld [hl+], a                                   ; $50c4: $22
    ld e, e                                       ; $50c5: $5b
    ld bc, $035f                                  ; $50c6: $01 $5f $03
    ld bc, $fd00                                  ; $50c9: $01 $00 $fd
    ld d, d                                       ; $50cc: $52
    ret                                           ; $50cd: $c9


    inc d                                         ; $50ce: $14
    cp a                                          ; $50cf: $bf
    ld l, a                                       ; $50d0: $6f
    nop                                           ; $50d1: $00
    nop                                           ; $50d2: $00
    or h                                          ; $50d3: $b4
    ld b, l                                       ; $50d4: $45
    adc c                                         ; $50d5: $89
    inc h                                         ; $50d6: $24
    db $fd                                        ; $50d7: $fd
    ld d, d                                       ; $50d8: $52
    nop                                           ; $50d9: $00
    nop                                           ; $50da: $00
    ld e, a                                       ; $50db: $5f
    inc bc                                        ; $50dc: $03
    adc h                                         ; $50dd: $8c
    inc a                                         ; $50de: $3c
    ld c, b                                       ; $50df: $48
    ld [hl+], a                                   ; $50e0: $22
    ld [bc], a                                    ; $50e1: $02
    nop                                           ; $50e2: $00
    ld c, b                                       ; $50e3: $48
    ld [hl+], a                                   ; $50e4: $22
    ld e, e                                       ; $50e5: $5b
    ld bc, $035f                                  ; $50e6: $01 $5f $03
    nop                                           ; $50e9: $00
    inc b                                         ; $50ea: $04
    sbc [hl]                                      ; $50eb: $9e
    ld l, e                                       ; $50ec: $6b
    jp hl                                         ; $50ed: $e9


    ld c, l                                       ; $50ee: $4d
    jp z, $0114                                   ; $50ef: $ca $14 $01

    ld [$39f4], sp                                ; $50f2: $08 $f4 $39
    xor c                                         ; $50f5: $a9
    inc e                                         ; $50f6: $1c
    cp e                                          ; $50f7: $bb
    ld c, [hl]                                    ; $50f8: $4e
    ld bc, $4804                                  ; $50f9: $01 $04 $48
    ld [hl+], a                                   ; $50fc: $22
    ld e, a                                       ; $50fd: $5f
    inc bc                                        ; $50fe: $03
    rrca                                          ; $50ff: $0f
    ld c, c                                       ; $5100: $49
    ld [bc], a                                    ; $5101: $02
    nop                                           ; $5102: $00
    ld c, b                                       ; $5103: $48
    ld [hl+], a                                   ; $5104: $22
    ld e, e                                       ; $5105: $5b
    ld bc, $035f                                  ; $5106: $01 $5f $03
    nop                                           ; $5109: $00
    nop                                           ; $510a: $00
    sbc d                                         ; $510b: $9a
    ld c, d                                       ; $510c: $4a
    rst $18                                       ; $510d: $df
    ld l, a                                       ; $510e: $6f
    inc c                                         ; $510f: $0c
    dec e                                         ; $5110: $1d
    ld bc, $fc04                                  ; $5111: $01 $04 $fc
    ld d, d                                       ; $5114: $52
    ld a, [bc]                                    ; $5115: $0a
    dec e                                         ; $5116: $1d
    rst $18                                       ; $5117: $df
    ld l, a                                       ; $5118: $6f
    nop                                           ; $5119: $00
    nop                                           ; $511a: $00
    ld c, b                                       ; $511b: $48
    ld [hl+], a                                   ; $511c: $22
    ld e, a                                       ; $511d: $5f
    inc bc                                        ; $511e: $03
    inc h                                         ; $511f: $24
    inc d                                         ; $5120: $14
    ld [bc], a                                    ; $5121: $02
    nop                                           ; $5122: $00
    ld c, b                                       ; $5123: $48
    ld [hl+], a                                   ; $5124: $22
    ld e, e                                       ; $5125: $5b
    ld bc, $035f                                  ; $5126: $01 $5f $03
    ld h, l                                       ; $5129: $65
    ld [$4a99], sp                                ; $512a: $08 $99 $4a
    sbc a                                         ; $512d: $9f
    ld h, a                                       ; $512e: $67
    db $ec                                        ; $512f: $ec
    add hl, hl                                    ; $5130: $29
    ld [hl+], a                                   ; $5131: $22
    ld [$5b3e], sp                                ; $5132: $08 $3e $5b
    inc l                                         ; $5135: $2c
    inc a                                         ; $5136: $3c
    rst $18                                       ; $5137: $df
    ld l, a                                       ; $5138: $6f
    nop                                           ; $5139: $00
    nop                                           ; $513a: $00
    ld e, a                                       ; $513b: $5f
    inc bc                                        ; $513c: $03
    ld c, b                                       ; $513d: $48
    ld [hl+], a                                   ; $513e: $22
    ld [bc], a                                    ; $513f: $02
    nop                                           ; $5140: $00
    ld [bc], a                                    ; $5141: $02
    nop                                           ; $5142: $00
    ld c, b                                       ; $5143: $48
    ld [hl+], a                                   ; $5144: $22
    ld e, e                                       ; $5145: $5b
    ld bc, $035f                                  ; $5146: $01 $5f $03
    nop                                           ; $5149: $00
    nop                                           ; $514a: $00
    jp c, $ec4e                                   ; $514b: $da $4e $ec

    add hl, hl                                    ; $514e: $29
    cp a                                          ; $514f: $bf
    ld l, e                                       ; $5150: $6b
    nop                                           ; $5151: $00
    nop                                           ; $5152: $00
    ld [hl], h                                    ; $5153: $74
    ld d, l                                       ; $5154: $55
    jp hl                                         ; $5155: $e9


    jr nz, jr_0d3_5196                            ; $5156: $20 $3e

    ld e, a                                       ; $5158: $5f
    ld [bc], a                                    ; $5159: $02
    nop                                           ; $515a: $00
    ld e, a                                       ; $515b: $5f
    inc bc                                        ; $515c: $03
    ld c, b                                       ; $515d: $48
    ld [hl+], a                                   ; $515e: $22
    ld a, $5f                                     ; $515f: $3e $5f
    ld [bc], a                                    ; $5161: $02
    nop                                           ; $5162: $00
    ld c, b                                       ; $5163: $48
    ld [hl+], a                                   ; $5164: $22
    ld e, e                                       ; $5165: $5b
    ld bc, $035f                                  ; $5166: $01 $5f $03
    nop                                           ; $5169: $00
    nop                                           ; $516a: $00
    ld a, $5b                                     ; $516b: $3e $5b
    ld c, b                                       ; $516d: $48
    ld [hl+], a                                   ; $516e: $22
    adc a                                         ; $516f: $8f
    dec l                                         ; $5170: $2d
    ld bc, $f300                                  ; $5171: $01 $00 $f3
    dec [hl]                                      ; $5174: $35
    inc de                                        ; $5175: $13
    ld e, l                                       ; $5176: $5d
    ld l, c                                       ; $5177: $69
    inc h                                         ; $5178: $24
    nop                                           ; $5179: $00
    nop                                           ; $517a: $00
    ld e, a                                       ; $517b: $5f
    inc bc                                        ; $517c: $03
    ld c, b                                       ; $517d: $48
    ld [hl+], a                                   ; $517e: $22
    ld [bc], a                                    ; $517f: $02
    nop                                           ; $5180: $00
    ld bc, $4800                                  ; $5181: $01 $00 $48
    ld [hl+], a                                   ; $5184: $22
    ld e, e                                       ; $5185: $5b
    ld bc, $035f                                  ; $5186: $01 $5f $03
    nop                                           ; $5189: $00
    nop                                           ; $518a: $00
    ld d, l                                       ; $518b: $55
    ld b, d                                       ; $518c: $42
    ld a, e                                       ; $518d: $7b
    ld [hl], e                                    ; $518e: $73
    ret z                                         ; $518f: $c8

    inc d                                         ; $5190: $14
    ld b, h                                       ; $5191: $44
    db $10                                        ; $5192: $10
    rst $30                                       ; $5193: $f7
    ld e, c                                       ; $5194: $59
    rst $28                                       ; $5195: $ef

jr_0d3_5196:
    inc a                                         ; $5196: $3c
    ld e, l                                       ; $5197: $5d
    ld h, e                                       ; $5198: $63
    nop                                           ; $5199: $00
    nop                                           ; $519a: $00
    ld c, b                                       ; $519b: $48
    ld [hl+], a                                   ; $519c: $22
    ld e, a                                       ; $519d: $5f
    inc bc                                        ; $519e: $03
    rlca                                          ; $519f: $07
    jr z, jr_0d3_51a3                             ; $51a0: $28 $01

    nop                                           ; $51a2: $00

jr_0d3_51a3:
    ld c, d                                       ; $51a3: $4a
    ld hl, $025d                                  ; $51a4: $21 $5d $02
    inc sp                                        ; $51a7: $33
    ld b, c                                       ; $51a8: $41
    nop                                           ; $51a9: $00
    nop                                           ; $51aa: $00
    inc de                                        ; $51ab: $13
    ld a, $1e                                     ; $51ac: $3e $1e
    ld d, a                                       ; $51ae: $57
    ld a, l                                       ; $51af: $7d
    ld h, a                                       ; $51b0: $67
    nop                                           ; $51b1: $00
    nop                                           ; $51b2: $00
    ld l, a                                       ; $51b3: $6f
    dec a                                         ; $51b4: $3d
    sub a                                         ; $51b5: $97
    ld [hl], c                                    ; $51b6: $71
    ld e, h                                       ; $51b7: $5c
    ld h, a                                       ; $51b8: $67
    nop                                           ; $51b9: $00
    nop                                           ; $51ba: $00
    ld e, a                                       ; $51bb: $5f
    inc bc                                        ; $51bc: $03
    ret                                           ; $51bd: $c9


    inc h                                         ; $51be: $24
    pop de                                        ; $51bf: $d1
    ld b, b                                       ; $51c0: $40
    ld [bc], a                                    ; $51c1: $02
    nop                                           ; $51c2: $00
    jr c, jr_0d3_51da                             ; $51c3: $38 $15

    sla h                                         ; $51c5: $cb $24
    ld e, a                                       ; $51c7: $5f
    inc bc                                        ; $51c8: $03
    nop                                           ; $51c9: $00
    nop                                           ; $51ca: $00
    sub c                                         ; $51cb: $91
    ld b, c                                       ; $51cc: $41
    ld a, e                                       ; $51cd: $7b
    ld [hl], e                                    ; $51ce: $73
    sla h                                         ; $51cf: $cb $24
    ld bc, $d304                                  ; $51d1: $01 $04 $d3
    ld e, h                                       ; $51d4: $5c
    ld a, e                                       ; $51d5: $7b
    ld [hl], e                                    ; $51d6: $73
    db $10                                        ; $51d7: $10
    ld b, d                                       ; $51d8: $42
    ld [bc], a                                    ; $51d9: $02

jr_0d3_51da:
    inc b                                         ; $51da: $04
    ld e, a                                       ; $51db: $5f
    inc bc                                        ; $51dc: $03
    ld l, c                                       ; $51dd: $69
    inc h                                         ; $51de: $24
    adc a                                         ; $51df: $8f
    ld b, b                                       ; $51e0: $40
    ld [bc], a                                    ; $51e1: $02
    nop                                           ; $51e2: $00
    ld e, e                                       ; $51e3: $5b
    ld bc, $035f                                  ; $51e4: $01 $5f $03
    adc a                                         ; $51e7: $8f
    ld b, b                                       ; $51e8: $40
    ld e, e                                       ; $51e9: $5b
    ld bc, $035f                                  ; $51ea: $01 $5f $03
    ld e, a                                       ; $51ed: $5f
    inc bc                                        ; $51ee: $03
    adc a                                         ; $51ef: $8f
    ld b, b                                       ; $51f0: $40
    ld e, e                                       ; $51f1: $5b
    ld bc, $035f                                  ; $51f2: $01 $5f $03
    ld e, a                                       ; $51f5: $5f
    inc bc                                        ; $51f6: $03
    adc a                                         ; $51f7: $8f
    ld b, b                                       ; $51f8: $40
    ld [bc], a                                    ; $51f9: $02
    nop                                           ; $51fa: $00
    ld e, e                                       ; $51fb: $5b
    ld bc, $035f                                  ; $51fc: $01 $5f $03
    adc a                                         ; $51ff: $8f
    ld b, b                                       ; $5200: $40
    ld [bc], a                                    ; $5201: $02
    nop                                           ; $5202: $00
    sub [hl]                                      ; $5203: $96
    ld h, e                                       ; $5204: $63
    ld e, e                                       ; $5205: $5b
    ld bc, $035f                                  ; $5206: $01 $5f $03
    sub [hl]                                      ; $5209: $96
    ld h, e                                       ; $520a: $63
    ld e, a                                       ; $520b: $5f
    inc bc                                        ; $520c: $03
    ld e, e                                       ; $520d: $5b
    ld bc, $035f                                  ; $520e: $01 $5f $03
    sub [hl]                                      ; $5211: $96
    ld e, a                                       ; $5212: $5f
    ld e, a                                       ; $5213: $5f
    inc bc                                        ; $5214: $03
    sub [hl]                                      ; $5215: $96
    ld h, e                                       ; $5216: $63
    ld e, a                                       ; $5217: $5f
    inc bc                                        ; $5218: $03
    ld [bc], a                                    ; $5219: $02
    nop                                           ; $521a: $00
    sub [hl]                                      ; $521b: $96
    ld e, a                                       ; $521c: $5f
    ld e, a                                       ; $521d: $5f
    inc bc                                        ; $521e: $03
    sub [hl]                                      ; $521f: $96
    ld h, e                                       ; $5220: $63
    ld [bc], a                                    ; $5221: $02
    nop                                           ; $5222: $00
    sub l                                         ; $5223: $95
    ld e, a                                       ; $5224: $5f
    ld e, e                                       ; $5225: $5b
    ld bc, $035f                                  ; $5226: $01 $5f $03
    ld [hl], l                                    ; $5229: $75
    ld e, a                                       ; $522a: $5f
    sub [hl]                                      ; $522b: $96
    ld e, a                                       ; $522c: $5f
    sub l                                         ; $522d: $95
    ld e, a                                       ; $522e: $5f
    ld e, a                                       ; $522f: $5f
    inc bc                                        ; $5230: $03
    sub l                                         ; $5231: $95
    ld e, a                                       ; $5232: $5f
    sub [hl]                                      ; $5233: $96
    ld e, a                                       ; $5234: $5f
    sub l                                         ; $5235: $95
    ld e, a                                       ; $5236: $5f
    ld e, a                                       ; $5237: $5f
    inc bc                                        ; $5238: $03
    ld [bc], a                                    ; $5239: $02
    nop                                           ; $523a: $00
    sub l                                         ; $523b: $95
    ld e, a                                       ; $523c: $5f
    ld e, a                                       ; $523d: $5f
    inc bc                                        ; $523e: $03
    sub [hl]                                      ; $523f: $96
    ld e, a                                       ; $5240: $5f
    ld [bc], a                                    ; $5241: $02
    nop                                           ; $5242: $00
    ld [hl], e                                    ; $5243: $73
    ld e, e                                       ; $5244: $5b
    ld e, e                                       ; $5245: $5b
    ld bc, $035f                                  ; $5246: $01 $5f $03
    nop                                           ; $5249: $00
    nop                                           ; $524a: $00
    ld [hl], e                                    ; $524b: $73
    ld e, e                                       ; $524c: $5b
    adc h                                         ; $524d: $8c
    ld sp, $7fff                                  ; $524e: $31 $ff $7f
    nop                                           ; $5251: $00
    nop                                           ; $5252: $00
    ld [hl], e                                    ; $5253: $73
    ld e, e                                       ; $5254: $5b
    ld [hl], h                                    ; $5255: $74
    ld e, e                                       ; $5256: $5b
    rst $38                                       ; $5257: $ff
    ld a, a                                       ; $5258: $7f
    ld [bc], a                                    ; $5259: $02
    nop                                           ; $525a: $00
    ld [hl], e                                    ; $525b: $73
    ld e, e                                       ; $525c: $5b
    ld e, a                                       ; $525d: $5f
    inc bc                                        ; $525e: $03
    ld [hl], h                                    ; $525f: $74
    ld e, e                                       ; $5260: $5b
    ld [bc], a                                    ; $5261: $02
    nop                                           ; $5262: $00
    ld d, d                                       ; $5263: $52
    ld d, a                                       ; $5264: $57
    ld e, e                                       ; $5265: $5b
    ld bc, $035f                                  ; $5266: $01 $5f $03
    ld b, d                                       ; $5269: $42
    ld [$4a52], sp                                ; $526a: $08 $52 $4a
    rst $38                                       ; $526d: $ff
    ld a, a                                       ; $526e: $7f
    ld d, d                                       ; $526f: $52
    ld d, a                                       ; $5270: $57
    nop                                           ; $5271: $00
    nop                                           ; $5272: $00
    ld d, d                                       ; $5273: $52
    ld d, a                                       ; $5274: $57
    rst $38                                       ; $5275: $ff
    ld a, a                                       ; $5276: $7f
    ld h, e                                       ; $5277: $63
    inc c                                         ; $5278: $0c
    ld [bc], a                                    ; $5279: $02
    nop                                           ; $527a: $00
    ld d, d                                       ; $527b: $52
    ld d, a                                       ; $527c: $57
    ld e, a                                       ; $527d: $5f
    inc bc                                        ; $527e: $03
    ld d, e                                       ; $527f: $53
    ld d, a                                       ; $5280: $57
    ld [bc], a                                    ; $5281: $02
    nop                                           ; $5282: $00
    jr nc, jr_0d3_52d8                            ; $5283: $30 $53

    ld e, e                                       ; $5285: $5b
    ld bc, $035f                                  ; $5286: $01 $5f $03
    nop                                           ; $5289: $00
    nop                                           ; $528a: $00
    ld de, $284f                                  ; $528b: $11 $4f $28
    dec h                                         ; $528e: $25
    add hl, sp                                    ; $528f: $39
    ld h, a                                       ; $5290: $67
    jr nz, jr_0d3_5297                            ; $5291: $20 $04

    jr nc, @+$55                                  ; $5293: $30 $53

    cp l                                          ; $5295: $bd
    ld [hl], a                                    ; $5296: $77

jr_0d3_5297:
    sub h                                         ; $5297: $94
    ld d, d                                       ; $5298: $52
    ld [bc], a                                    ; $5299: $02
    nop                                           ; $529a: $00
    jr nc, jr_0d3_52f0                            ; $529b: $30 $53

    ld e, a                                       ; $529d: $5f
    inc bc                                        ; $529e: $03
    ld d, c                                       ; $529f: $51
    ld d, e                                       ; $52a0: $53
    ld [bc], a                                    ; $52a1: $02
    nop                                           ; $52a2: $00
    cpl                                           ; $52a3: $2f
    ld c, a                                       ; $52a4: $4f
    ld e, e                                       ; $52a5: $5b
    ld bc, $035f                                  ; $52a6: $01 $5f $03
    nop                                           ; $52a9: $00
    nop                                           ; $52aa: $00
    cpl                                           ; $52ab: $2f
    ld c, a                                       ; $52ac: $4f
    jr z, jr_0d3_52d4                             ; $52ad: $28 $25

    ld hl, $6304                                  ; $52af: $21 $04 $63
    inc c                                         ; $52b2: $0c
    db $10                                        ; $52b3: $10
    ld b, d                                       ; $52b4: $42
    sbc h                                         ; $52b5: $9c
    ld [hl], e                                    ; $52b6: $73
    cpl                                           ; $52b7: $2f
    ld c, a                                       ; $52b8: $4f
    ld [bc], a                                    ; $52b9: $02
    nop                                           ; $52ba: $00
    cpl                                           ; $52bb: $2f
    ld c, a                                       ; $52bc: $4f
    ld e, a                                       ; $52bd: $5f
    inc bc                                        ; $52be: $03
    cpl                                           ; $52bf: $2f
    ld c, a                                       ; $52c0: $4f
    ld [bc], a                                    ; $52c1: $02
    nop                                           ; $52c2: $00
    dec c                                         ; $52c3: $0d
    ld c, e                                       ; $52c4: $4b
    ld e, e                                       ; $52c5: $5b
    ld bc, $035f                                  ; $52c6: $01 $5f $03
    ld bc, $0d00                                  ; $52c9: $01 $00 $0d
    ld c, e                                       ; $52cc: $4b
    jr z, jr_0d3_52f4                             ; $52cd: $28 $25

    rl b                                          ; $52cf: $cb $10
    ld bc, $ce00                                  ; $52d1: $01 $00 $ce

jr_0d3_52d4:
    ld c, d                                       ; $52d4: $4a
    rst $20                                       ; $52d5: $e7
    inc e                                         ; $52d6: $1c
    ld e, d                                       ; $52d7: $5a

jr_0d3_52d8:
    ld l, e                                       ; $52d8: $6b
    ld [bc], a                                    ; $52d9: $02
    nop                                           ; $52da: $00
    dec c                                         ; $52db: $0d
    ld c, e                                       ; $52dc: $4b
    ld e, a                                       ; $52dd: $5f
    inc bc                                        ; $52de: $03
    ld c, $4b                                     ; $52df: $0e $4b
    ld [bc], a                                    ; $52e1: $02
    nop                                           ; $52e2: $00
    db $eb                                        ; $52e3: $eb
    ld b, [hl]                                    ; $52e4: $46
    ld e, e                                       ; $52e5: $5b
    ld bc, $035f                                  ; $52e6: $01 $5f $03
    ld bc, $cc00                                  ; $52e9: $01 $00 $cc
    ld b, d                                       ; $52ec: $42
    cp l                                          ; $52ed: $bd
    ld [hl], a                                    ; $52ee: $77
    dec l                                         ; $52ef: $2d

jr_0d3_52f0:
    dec e                                         ; $52f0: $1d
    nop                                           ; $52f1: $00
    nop                                           ; $52f2: $00
    adc a                                         ; $52f3: $8f

jr_0d3_52f4:
    dec l                                         ; $52f4: $2d
    adc a                                         ; $52f5: $8f
    ld b, [hl]                                    ; $52f6: $46
    ld h, h                                       ; $52f7: $64
    ld [$0002], sp                                ; $52f8: $08 $02 $00
    db $eb                                        ; $52fb: $eb
    ld b, [hl]                                    ; $52fc: $46
    ld e, a                                       ; $52fd: $5f
    inc bc                                        ; $52fe: $03
    db $ec                                        ; $52ff: $ec
    ld b, [hl]                                    ; $5300: $46
    ld bc, $ea00                                  ; $5301: $01 $00 $ea
    ld b, d                                       ; $5304: $42
    ld e, e                                       ; $5305: $5b
    ld bc, $035f                                  ; $5306: $01 $5f $03
    nop                                           ; $5309: $00
    nop                                           ; $530a: $00
    xor a                                         ; $530b: $af
    ld c, d                                       ; $530c: $4a
    rst $38                                       ; $530d: $ff
    ld a, a                                       ; $530e: $7f
    and [hl]                                      ; $530f: $a6
    stop                                          ; $5310: $10 $00
    nop                                           ; $5312: $00
    ld d, c                                       ; $5313: $51
    ld c, d                                       ; $5314: $4a
    ld a, [hl+]                                   ; $5315: $2a
    ld hl, $739c                                  ; $5316: $21 $9c $73
    ld bc, $ea00                                  ; $5319: $01 $00 $ea
    ld b, d                                       ; $531c: $42
    ld e, a                                       ; $531d: $5f
    inc bc                                        ; $531e: $03
    db $eb                                        ; $531f: $eb
    ld b, d                                       ; $5320: $42
    ld bc, $5d00                                  ; $5321: $01 $00 $5d
    ld [bc], a                                    ; $5324: $02
    xor e                                         ; $5325: $ab
    ld b, d                                       ; $5326: $42
    ld e, d                                       ; $5327: $5a
    ld l, e                                       ; $5328: $6b
    ld b, d                                       ; $5329: $42
    ld [$3dce], sp                                ; $532a: $08 $ce $3d
    rst $00                                       ; $532d: $c7
    jr jr_0d3_535e                                ; $532e: $18 $2e

    add hl, de                                    ; $5330: $19
    inc hl                                        ; $5331: $23
    nop                                           ; $5332: $00
    sub h                                         ; $5333: $94
    ld d, d                                       ; $5334: $52
    sbc $7b                                       ; $5335: $de $7b
    ld c, d                                       ; $5337: $4a
    add hl, hl                                    ; $5338: $29
    ld bc, $6900                                  ; $5339: $01 $00 $69
    ld a, $5f                                     ; $533c: $3e $5f
    inc bc                                        ; $533e: $03
    rst $00                                       ; $533f: $c7
    inc d                                         ; $5340: $14
    ld bc, $0800                                  ; $5341: $01 $00 $08
    ld hl, $025d                                  ; $5344: $21 $5d $02
    rst $08                                       ; $5347: $cf
    dec a                                         ; $5348: $3d
    nop                                           ; $5349: $00
    nop                                           ; $534a: $00
    db $eb                                        ; $534b: $eb
    inc d                                         ; $534c: $14
    ld h, [hl]                                    ; $534d: $66
    ld [$318c], sp                                ; $534e: $08 $8c $31
    nop                                           ; $5351: $00
    nop                                           ; $5352: $00
    adc l                                         ; $5353: $8d
    dec l                                         ; $5354: $2d
    sub $5a                                       ; $5355: $d6 $5a
    add [hl]                                      ; $5357: $86
    ld [$0421], sp                                ; $5358: $08 $21 $04
    ld e, a                                       ; $535b: $5f
    inc bc                                        ; $535c: $03
    ld a, [hl+]                                   ; $535d: $2a

jr_0d3_535e:
    dec h                                         ; $535e: $25
    rst $28                                       ; $535f: $ef
    dec a                                         ; $5360: $3d
    ld [bc], a                                    ; $5361: $02
    nop                                           ; $5362: $00
    ld e, l                                       ; $5363: $5d
    ld [bc], a                                    ; $5364: $02
    ld a, [hl+]                                   ; $5365: $2a
    ld a, [hl-]                                   ; $5366: $3a
    cp l                                          ; $5367: $bd
    ld [hl], a                                    ; $5368: $77
    ld b, d                                       ; $5369: $42
    ld [$358d], sp                                ; $536a: $08 $8d $35
    cp l                                          ; $536d: $bd
    ld [hl], a                                    ; $536e: $77
    ld [hl], e                                    ; $536f: $73
    ld c, [hl]                                    ; $5370: $4e
    jr nz, jr_0d3_5377                            ; $5371: $20 $04

    ld d, d                                       ; $5373: $52
    ld c, d                                       ; $5374: $4a
    rst $20                                       ; $5375: $e7
    inc e                                         ; $5376: $1c

jr_0d3_5377:
    rst $38                                       ; $5377: $ff
    ld a, a                                       ; $5378: $7f
    ld h, e                                       ; $5379: $63
    inc c                                         ; $537a: $0c
    ld l, a                                       ; $537b: $6f
    ld b, [hl]                                    ; $537c: $46
    ld e, a                                       ; $537d: $5f
    inc bc                                        ; $537e: $03
    ld e, d                                       ; $537f: $5a
    ld l, e                                       ; $5380: $6b
    ld [bc], a                                    ; $5381: $02
    nop                                           ; $5382: $00
    ld c, c                                       ; $5383: $49
    ld a, [hl-]                                   ; $5384: $3a
    ld e, e                                       ; $5385: $5b
    ld bc, $035f                                  ; $5386: $01 $5f $03
    ld bc, $3100                                  ; $5389: $01 $00 $31
    ld b, [hl]                                    ; $538c: $46
    rst $20                                       ; $538d: $e7
    inc e                                         ; $538e: $1c
    add hl, hl                                    ; $538f: $29
    dec h                                         ; $5390: $25
    ld c, d                                       ; $5391: $4a
    dec l                                         ; $5392: $2d
    or l                                          ; $5393: $b5
    ld d, [hl]                                    ; $5394: $56
    cp l                                          ; $5395: $bd
    ld [hl], a                                    ; $5396: $77
    xor l                                         ; $5397: $ad
    dec [hl]                                      ; $5398: $35
    nop                                           ; $5399: $00
    nop                                           ; $539a: $00
    ret                                           ; $539b: $c9


    ld b, d                                       ; $539c: $42
    ld e, a                                       ; $539d: $5f
    inc bc                                        ; $539e: $03
    add $18                                       ; $539f: $c6 $18
    ld bc, $c900                                  ; $53a1: $01 $00 $c9
    ld b, d                                       ; $53a4: $42
    ld e, e                                       ; $53a5: $5b
    ld bc, $035f                                  ; $53a6: $01 $5f $03
    nop                                           ; $53a9: $00
    nop                                           ; $53aa: $00
    xor [hl]                                      ; $53ab: $ae
    ld c, d                                       ; $53ac: $4a
    cp l                                          ; $53ad: $bd
    ld [hl], a                                    ; $53ae: $77
    ret z                                         ; $53af: $c8

    inc d                                         ; $53b0: $14
    nop                                           ; $53b1: $00
    nop                                           ; $53b2: $00
    pop af                                        ; $53b3: $f1
    add hl, sp                                    ; $53b4: $39
    ld e, c                                       ; $53b5: $59
    ld l, e                                       ; $53b6: $6b
    add hl, hl                                    ; $53b7: $29
    dec h                                         ; $53b8: $25
    inc hl                                        ; $53b9: $23
    inc b                                         ; $53ba: $04
    ret                                           ; $53bb: $c9


    ld b, d                                       ; $53bc: $42
    ld e, a                                       ; $53bd: $5f
    inc bc                                        ; $53be: $03
    ld [hl], b                                    ; $53bf: $70
    dec h                                         ; $53c0: $25
    ld [bc], a                                    ; $53c1: $02
    nop                                           ; $53c2: $00
    ret                                           ; $53c3: $c9


    ld b, d                                       ; $53c4: $42
    ld e, e                                       ; $53c5: $5b
    ld bc, $035f                                  ; $53c6: $01 $5f $03
    nop                                           ; $53c9: $00
    nop                                           ; $53ca: $00
    ret                                           ; $53cb: $c9


    ld b, d                                       ; $53cc: $42
    and a                                         ; $53cd: $a7
    db $10                                        ; $53ce: $10
    ld e, a                                       ; $53cf: $5f
    inc bc                                        ; $53d0: $03
    nop                                           ; $53d1: $00
    nop                                           ; $53d2: $00
    ret                                           ; $53d3: $c9


    ld a, $c8                                     ; $53d4: $3e $c8
    db $10                                        ; $53d6: $10
    ld [hl+], a                                   ; $53d7: $22
    inc b                                         ; $53d8: $04
    nop                                           ; $53d9: $00
    nop                                           ; $53da: $00
    ret                                           ; $53db: $c9


    ld b, d                                       ; $53dc: $42
    ld e, a                                       ; $53dd: $5f
    inc bc                                        ; $53de: $03
    ld [bc], a                                    ; $53df: $02
    nop                                           ; $53e0: $00
    ld [bc], a                                    ; $53e1: $02
    nop                                           ; $53e2: $00
    ld e, e                                       ; $53e3: $5b
    ld bc, $035f                                  ; $53e4: $01 $5f $03
    ld [bc], a                                    ; $53e7: $02
    nop                                           ; $53e8: $00
    ld e, e                                       ; $53e9: $5b
    ld bc, $035f                                  ; $53ea: $01 $5f $03
    ld e, a                                       ; $53ed: $5f
    inc bc                                        ; $53ee: $03
    ld [bc], a                                    ; $53ef: $02
    nop                                           ; $53f0: $00
    ld e, e                                       ; $53f1: $5b
    ld bc, $035f                                  ; $53f2: $01 $5f $03
    ld e, a                                       ; $53f5: $5f
    inc bc                                        ; $53f6: $03
    ld [bc], a                                    ; $53f7: $02
    nop                                           ; $53f8: $00
    ld [bc], a                                    ; $53f9: $02
    nop                                           ; $53fa: $00
    ld e, e                                       ; $53fb: $5b
    ld bc, $035f                                  ; $53fc: $01 $5f $03
    ld [bc], a                                    ; $53ff: $02
    nop                                           ; $5400: $00
    ld hl, $5204                                  ; $5401: $21 $04 $52
    ld c, d                                       ; $5404: $4a
    ld e, e                                       ; $5405: $5b
    ld bc, $035f                                  ; $5406: $01 $5f $03
    nop                                           ; $5409: $00
    nop                                           ; $540a: $00
    ld e, a                                       ; $540b: $5f
    inc bc                                        ; $540c: $03
    db $eb                                        ; $540d: $eb
    ld a, $4a                                     ; $540e: $3e $4a
    add hl, hl                                    ; $5410: $29
    db $eb                                        ; $5411: $eb
    ld a, $5f                                     ; $5412: $3e $5f
    inc bc                                        ; $5414: $03
    db $eb                                        ; $5415: $eb
    ld a, $4a                                     ; $5416: $3e $4a
    add hl, hl                                    ; $5418: $29
    ld hl, $5f04                                  ; $5419: $21 $04 $5f
    inc bc                                        ; $541c: $03
    db $eb                                        ; $541d: $eb
    ld a, $4a                                     ; $541e: $3e $4a
    add hl, hl                                    ; $5420: $29
    nop                                           ; $5421: $00
    nop                                           ; $5422: $00
    ld e, e                                       ; $5423: $5b
    ld bc, $294a                                  ; $5424: $01 $4a $29
    ld e, a                                       ; $5427: $5f
    inc bc                                        ; $5428: $03
    ld hl, $8c04                                  ; $5429: $21 $04 $8c
    ld sp, $3eeb                                  ; $542c: $31 $eb $3e
    sub h                                         ; $542f: $94
    ld d, d                                       ; $5430: $52
    db $eb                                        ; $5431: $eb
    ld a, $8c                                     ; $5432: $3e $8c
    ld sp, $3eeb                                  ; $5434: $31 $eb $3e
    sub h                                         ; $5437: $94
    ld d, d                                       ; $5438: $52
    nop                                           ; $5439: $00
    nop                                           ; $543a: $00
    db $eb                                        ; $543b: $eb
    ld a, $5f                                     ; $543c: $3e $5f
    inc bc                                        ; $543e: $03
    ld hl, $2104                                  ; $543f: $21 $04 $21
    inc b                                         ; $5442: $04
    xor l                                         ; $5443: $ad
    dec [hl]                                      ; $5444: $35
    ld e, l                                       ; $5445: $5d
    ld [bc], a                                    ; $5446: $02
    or l                                          ; $5447: $b5
    ld d, [hl]                                    ; $5448: $56
    nop                                           ; $5449: $00
    nop                                           ; $544a: $00
    adc h                                         ; $544b: $8c
    ld sp, $3eeb                                  ; $544c: $31 $eb $3e
    ld [hl], e                                    ; $544f: $73
    ld c, [hl]                                    ; $5450: $4e
    db $eb                                        ; $5451: $eb
    ld a, $8c                                     ; $5452: $3e $8c
    ld sp, $3eeb                                  ; $5454: $31 $eb $3e
    ld [hl], e                                    ; $5457: $73
    ld c, [hl]                                    ; $5458: $4e
    nop                                           ; $5459: $00
    nop                                           ; $545a: $00
    db $eb                                        ; $545b: $eb
    ld a, $5f                                     ; $545c: $3e $5f
    inc bc                                        ; $545e: $03
    db $10                                        ; $545f: $10
    ld b, d                                       ; $5460: $42
    ld hl, $5d04                                  ; $5461: $21 $04 $5d
    ld [bc], a                                    ; $5464: $02
    db $10                                        ; $5465: $10
    ld b, d                                       ; $5466: $42
    ld e, d                                       ; $5467: $5a
    ld l, e                                       ; $5468: $6b
    nop                                           ; $5469: $00
    nop                                           ; $546a: $00
    ld c, d                                       ; $546b: $4a
    add hl, hl                                    ; $546c: $29
    sub $5a                                       ; $546d: $d6 $5a
    ld l, l                                       ; $546f: $6d
    ld a, $00                                     ; $5470: $3e $00
    nop                                           ; $5472: $00
    jp z, Jump_000_103a                           ; $5473: $ca $3a $10

    ld b, d                                       ; $5476: $42
    ld b, d                                       ; $5477: $42
    ld [$0421], sp                                ; $5478: $08 $21 $04
    adc h                                         ; $547b: $8c
    ld sp, $035f                                  ; $547c: $31 $5f $03
    ld [hl], e                                    ; $547f: $73
    ld c, [hl]                                    ; $5480: $4e
    ld hl, $5d04                                  ; $5481: $21 $04 $5d
    ld [bc], a                                    ; $5484: $02
    adc h                                         ; $5485: $8c
    ld sp, $6739                                  ; $5486: $31 $39 $67
    ld hl, $ad04                                  ; $5489: $21 $04 $ad
    dec [hl]                                      ; $548c: $35
    ld [hl], e                                    ; $548d: $73
    ld c, [hl]                                    ; $548e: $4e
    cp l                                          ; $548f: $bd
    ld [hl], a                                    ; $5490: $77
    nop                                           ; $5491: $00
    nop                                           ; $5492: $00
    dec hl                                        ; $5493: $2b
    ld [hl], $e7                                  ; $5494: $36 $e7
    inc e                                         ; $5496: $1c
    ld sp, $2146                                  ; $5497: $31 $46 $21
    inc b                                         ; $549a: $04
    ld sp, $5f46                                  ; $549b: $31 $46 $5f
    inc bc                                        ; $549e: $03
    add $18                                       ; $549f: $c6 $18
    ld hl, $5d04                                  ; $54a1: $21 $04 $5d
    ld [bc], a                                    ; $54a4: $02
    db $10                                        ; $54a5: $10
    ld b, d                                       ; $54a6: $42
    add hl, sp                                    ; $54a7: $39
    ld h, a                                       ; $54a8: $67
    nop                                           ; $54a9: $00
    nop                                           ; $54aa: $00
    ld d, d                                       ; $54ab: $52
    ld c, d                                       ; $54ac: $4a
    ld [$ff25], sp                                ; $54ad: $08 $25 $ff
    ld a, a                                       ; $54b0: $7f
    nop                                           ; $54b1: $00
    nop                                           ; $54b2: $00
    xor l                                         ; $54b3: $ad
    dec [hl]                                      ; $54b4: $35
    add $18                                       ; $54b5: $c6 $18
    ld d, d                                       ; $54b7: $52
    ld c, d                                       ; $54b8: $4a
    ld b, d                                       ; $54b9: $42
    ld [$35ad], sp                                ; $54ba: $08 $ad $35
    ld e, a                                       ; $54bd: $5f
    inc bc                                        ; $54be: $03
    or l                                          ; $54bf: $b5
    ld d, [hl]                                    ; $54c0: $56
    nop                                           ; $54c1: $00
    nop                                           ; $54c2: $00
    adc h                                         ; $54c3: $8c
    ld sp, $025d                                  ; $54c4: $31 $5d $02
    ld [hl], e                                    ; $54c7: $73
    ld c, [hl]                                    ; $54c8: $4e
    ld hl, $ff04                                  ; $54c9: $21 $04 $ff
    ld a, a                                       ; $54cc: $7f
    rst $20                                       ; $54cd: $e7
    inc e                                         ; $54ce: $1c
    adc h                                         ; $54cf: $8c
    ld sp, $0000                                  ; $54d0: $31 $00 $00
    adc b                                         ; $54d3: $88
    ld d, l                                       ; $54d4: $55
    rst $38                                       ; $54d5: $ff
    ld a, a                                       ; $54d6: $7f
    call nz, $0024                                ; $54d7: $c4 $24 $00
    nop                                           ; $54da: $00
    call z, Call_0d3_5f35                         ; $54db: $cc $35 $5f
    inc bc                                        ; $54de: $03
    and l                                         ; $54df: $a5
    inc d                                         ; $54e0: $14
    ld hl, $5d04                                  ; $54e1: $21 $04 $5d
    ld [bc], a                                    ; $54e4: $02
    dec c                                         ; $54e5: $0d
    ld a, [hl-]                                   ; $54e6: $3a
    ld e, d                                       ; $54e7: $5a
    ld l, e                                       ; $54e8: $6b
    and l                                         ; $54e9: $a5
    inc d                                         ; $54ea: $14
    adc $39                                       ; $54eb: $ce $39
    ld d, d                                       ; $54ed: $52
    ld c, d                                       ; $54ee: $4a
    ld c, d                                       ; $54ef: $4a
    add hl, hl                                    ; $54f0: $29
    ld b, d                                       ; $54f1: $42
    ld [$29b3], sp                                ; $54f2: $08 $b3 $29
    ccf                                           ; $54f5: $3f
    ld d, a                                       ; $54f6: $57
    ld [hl-], a                                   ; $54f7: $32
    ld b, [hl]                                    ; $54f8: $46
    nop                                           ; $54f9: $00
    nop                                           ; $54fa: $00
    ld b, a                                       ; $54fb: $47
    ld l, $5f                                     ; $54fc: $2e $5f
    inc bc                                        ; $54fe: $03
    ld c, d                                       ; $54ff: $4a
    add hl, hl                                    ; $5500: $29
    nop                                           ; $5501: $00
    nop                                           ; $5502: $00
    rlca                                          ; $5503: $07
    ld a, [hl+]                                   ; $5504: $2a
    ld e, e                                       ; $5505: $5b
    ld bc, $035f                                  ; $5506: $01 $5f $03
    nop                                           ; $5509: $00
    nop                                           ; $550a: $00
    rst $20                                       ; $550b: $e7
    inc e                                         ; $550c: $1c
    adc h                                         ; $550d: $8c
    ld sp, $4a52                                  ; $550e: $31 $52 $4a
    ld b, d                                       ; $5511: $42
    ld [$1997], sp                                ; $5512: $08 $97 $19
    ld sp, $ff46                                  ; $5515: $31 $46 $ff
    ld d, d                                       ; $5518: $52
    nop                                           ; $5519: $00
    nop                                           ; $551a: $00
    ret                                           ; $551b: $c9


    dec l                                         ; $551c: $2d
    ld e, a                                       ; $551d: $5f
    inc bc                                        ; $551e: $03
    ld sp, $0046                                  ; $551f: $31 $46 $00
    nop                                           ; $5522: $00
    ld b, $26                                     ; $5523: $06 $26
    ld e, e                                       ; $5525: $5b
    ld bc, $035f                                  ; $5526: $01 $5f $03
    nop                                           ; $5529: $00
    nop                                           ; $552a: $00
    add $18                                       ; $552b: $c6 $18
    ld h, e                                       ; $552d: $63
    inc c                                         ; $552e: $0c
    ld l, e                                       ; $552f: $6b
    dec l                                         ; $5530: $2d
    nop                                           ; $5531: $00
    nop                                           ; $5532: $00
    adc $39                                       ; $5533: $ce $39
    db $dd                                        ; $5535: $dd
    ld a, e                                       ; $5536: $7b
    ld [hl], d                                    ; $5537: $72
    ld c, [hl]                                    ; $5538: $4e
    nop                                           ; $5539: $00
    nop                                           ; $553a: $00
    ld e, a                                       ; $553b: $5f
    inc bc                                        ; $553c: $03
    dec b                                         ; $553d: $05
    ld h, $4a                                     ; $553e: $26 $4a
    add hl, hl                                    ; $5540: $29
    nop                                           ; $5541: $00
    nop                                           ; $5542: $00
    dec d                                         ; $5543: $15
    add hl, de                                    ; $5544: $19
    ld e, a                                       ; $5545: $5f
    inc bc                                        ; $5546: $03
    db $e4                                        ; $5547: $e4
    ld hl, $0000                                  ; $5548: $21 $00 $00
    rst $28                                       ; $554b: $ef
    dec a                                         ; $554c: $3d
    rst $38                                       ; $554d: $ff
    ld a, a                                       ; $554e: $7f
    and [hl]                                      ; $554f: $a6
    inc d                                         ; $5550: $14
    ld h, e                                       ; $5551: $63
    inc c                                         ; $5552: $0c
    di                                            ; $5553: $f3
    ld a, [hl]                                    ; $5554: $7e
    adc c                                         ; $5555: $89
    ld b, l                                       ; $5556: $45
    cp $7f                                        ; $5557: $fe $7f
    nop                                           ; $5559: $00
    nop                                           ; $555a: $00
    db $e4                                        ; $555b: $e4
    ld hl, $035f                                  ; $555c: $21 $5f $03
    adc $39                                       ; $555f: $ce $39
    nop                                           ; $5561: $00
    nop                                           ; $5562: $00
    adc $39                                       ; $5563: $ce $39
    ld e, l                                       ; $5565: $5d
    ld [bc], a                                    ; $5566: $02
    and l                                         ; $5567: $a5
    inc d                                         ; $5568: $14
    ld b, d                                       ; $5569: $42
    ld [$101a], sp                                ; $556a: $08 $1a $10
    adc h                                         ; $556d: $8c
    ld sp, $4631                                  ; $556e: $31 $31 $46
    rst $20                                       ; $5571: $e7
    inc e                                         ; $5572: $1c
    xor l                                         ; $5573: $ad
    dec [hl]                                      ; $5574: $35
    db $10                                        ; $5575: $10
    ld b, d                                       ; $5576: $42
    ld d, d                                       ; $5577: $52
    ld c, d                                       ; $5578: $4a
    nop                                           ; $5579: $00
    nop                                           ; $557a: $00
    ld e, a                                       ; $557b: $5f
    inc bc                                        ; $557c: $03
    and h                                         ; $557d: $a4
    dec e                                         ; $557e: $1d
    adc $39                                       ; $557f: $ce $39
    ld hl, $1004                                  ; $5581: $21 $04 $10
    ld b, d                                       ; $5584: $42
    ld e, e                                       ; $5585: $5b
    ld bc, $035f                                  ; $5586: $01 $5f $03
    ld b, c                                       ; $5589: $41
    ld [$5293], sp                                ; $558a: $08 $93 $52
    ld e, c                                       ; $558d: $59
    db $10                                        ; $558e: $10
    rst $38                                       ; $558f: $ff
    ld a, a                                       ; $5590: $7f
    ld hl, $ce04                                  ; $5591: $21 $04 $ce
    add hl, sp                                    ; $5594: $39
    add $18                                       ; $5595: $c6 $18
    ld a, [bc]                                    ; $5597: $0a
    inc b                                         ; $5598: $04
    nop                                           ; $5599: $00
    nop                                           ; $559a: $00
    rst $28                                       ; $559b: $ef
    dec a                                         ; $559c: $3d
    ld e, a                                       ; $559d: $5f
    inc bc                                        ; $559e: $03
    daa                                           ; $559f: $27
    ld hl, $0421                                  ; $55a0: $21 $21 $04
    adc $39                                       ; $55a3: $ce $39
    ld e, e                                       ; $55a5: $5b
    ld bc, $035f                                  ; $55a6: $01 $5f $03
    ld b, e                                       ; $55a9: $43
    ld [$4a52], sp                                ; $55aa: $08 $52 $4a
    jr @+$0e                                      ; $55ad: $18 $0c

    rst $38                                       ; $55af: $ff
    ld a, a                                       ; $55b0: $7f
    ld [hl+], a                                   ; $55b1: $22
    inc b                                         ; $55b2: $04
    dec e                                         ; $55b3: $1d
    db $10                                        ; $55b4: $10
    jr nc, @+$4c                                  ; $55b5: $30 $4a

    rst $38                                       ; $55b7: $ff
    ld a, a                                       ; $55b8: $7f
    ld hl, $5f04                                  ; $55b9: $21 $04 $5f
    inc bc                                        ; $55bc: $03
    ld [$ad21], sp                                ; $55bd: $08 $21 $ad
    dec [hl]                                      ; $55c0: $35
    ld hl, $ce04                                  ; $55c1: $21 $04 $ce
    add hl, sp                                    ; $55c4: $39
    ld e, e                                       ; $55c5: $5b
    ld bc, $035f                                  ; $55c6: $01 $5f $03
    ld hl, $8c04                                  ; $55c9: $21 $04 $8c
    ld sp, $1ce7                                  ; $55cc: $31 $e7 $1c
    db $10                                        ; $55cf: $10
    ld b, d                                       ; $55d0: $42
    nop                                           ; $55d1: $00
    nop                                           ; $55d2: $00
    ld c, d                                       ; $55d3: $4a
    add hl, hl                                    ; $55d4: $29
    rst $28                                       ; $55d5: $ef
    dec a                                         ; $55d6: $3d
    add h                                         ; $55d7: $84
    db $10                                        ; $55d8: $10
    ld b, d                                       ; $55d9: $42
    ld [$2d6b], sp                                ; $55da: $08 $6b $2d
    ld e, a                                       ; $55dd: $5f
    inc bc                                        ; $55de: $03
    ld sp, $2146                                  ; $55df: $31 $46 $21
    inc b                                         ; $55e2: $04
    ld e, e                                       ; $55e3: $5b
    ld bc, $035f                                  ; $55e4: $01 $5f $03
    ld sp, $5b46                                  ; $55e7: $31 $46 $5b
    ld bc, $035f                                  ; $55ea: $01 $5f $03
    ld e, a                                       ; $55ed: $5f
    inc bc                                        ; $55ee: $03
    ld sp, $5b46                                  ; $55ef: $31 $46 $5b
    ld bc, $035f                                  ; $55f2: $01 $5f $03
    ld e, a                                       ; $55f5: $5f
    inc bc                                        ; $55f6: $03
    ld sp, $2146                                  ; $55f7: $31 $46 $21
    inc b                                         ; $55fa: $04
    ld e, e                                       ; $55fb: $5b
    ld bc, $035f                                  ; $55fc: $01 $5f $03
    db $31                                        ; $55ff: $31
    ld b, [hl]                                    ; $5600: $46

    db $00, $00, $5b, $01, $5f, $03, $02, $00, $00, $00, $5f, $03, $5f, $03, $02, $00
    db $00, $00, $5f, $03, $5f, $03, $02, $00, $00, $00, $5f, $03, $02, $00, $02, $00
    db $01, $00, $2e, $09, $5b, $01, $5f, $03, $0c, $05, $2d, $05, $2d, $09, $0d, $05
    db $0c, $05, $0d, $05, $2d, $05, $2e, $09, $01, $00, $2e, $09, $5f, $03, $d1, $19
    db $02, $00, $0c, $05, $5b, $01, $5f, $03, $00, $00, $2c, $05, $90, $11, $f3, $19
    db $00, $00, $0c, $05, $d2, $15, $87, $00, $01, $00, $2d, $05, $5f, $03, $d2, $19
    db $01, $00, $0b, $05, $5b, $01, $5f, $03, $00, $00, $7a, $22, $6f, $0d, $dc, $32
    db $00, $00, $7e, $57, $0d, $05, $f3, $19, $01, $00, $0d, $05, $5f, $03, $d2, $19
    db $01, $00, $2d, $05, $5b, $01, $5f, $03, $00, $00, $b1, $15, $79, $26, $dc, $2e
    db $00, $00, $f3, $19, $eb, $04, $fc, $3a, $02, $00, $2d, $0d, $5f, $03, $b1, $19
    db $01, $00, $2e, $05, $5f, $03, $5b, $01, $00, $00, $f3, $19, $bb, $2e, $87, $00
    db $00, $00, $fb, $42, $f3, $19, $be, $6b, $00, $00, $90, $15, $fb, $3e, $5f, $03
    db $01, $00, $4f, $05, $5f, $03, $5b, $01, $00, $00, $d2, $15, $79, $26, $87, $00
    db $00, $00, $fb, $42, $5d, $53, $9e, $63, $02, $00, $90, $15, $ba, $2a, $5f, $03
    db $01, $00, $4f, $05, $5f, $03, $5b, $01, $00, $00, $4e, $05, $f3, $19, $58, $22
    db $14, $22, $da, $32, $fc, $42, $77, $2a, $01, $00, $90, $15, $5f, $03, $57, $22
    db $01, $00, $4f, $05, $5f, $03, $5b, $01, $00, $00, $70, $09, $a8, $00, $15, $1a
    db $6f, $15, $35, $22, $98, $26, $f2, $1d, $01, $00, $8f, $15, $5f, $03, $15, $1e
    db $01, $00, $4f, $05, $5f, $03, $5b, $01, $01, $00, $4e, $09, $f3, $19, $58, $22
    db $00, $00, $2b, $11, $d1, $19, $c8, $0c, $01, $00, $5f, $03, $4d, $11, $a7, $04
    db $01, $00, $4f, $05, $5f, $03, $5b, $01, $00, $00, $f5, $19, $58, $22, $9a, $2a
    db $00, $00, $4e, $09, $79, $2a, $85, $08, $00, $00, $4e, $0d, $5f, $03, $87, $00
    db $01, $00, $4f, $05, $5f, $03, $5b, $01, $00, $00, $f3, $19, $37, $1e, $79, $26
    db $00, $00, $f3, $19, $0c, $05, $99, $36, $01, $00, $2d, $05, $5f, $03, $6f, $11
    db $01, $00, $4f, $05, $5f, $03, $5b, $01, $00, $00, $f3, $19, $38, $1a, $59, $22
    db $00, $00, $5d, $53, $0c, $05, $f3, $19, $01, $00, $5f, $03, $0c, $05, $6f, $11
    db $01, $00, $4f, $09, $5f, $03, $5b, $01, $00, $00, $f3, $19, $59, $1e, $9b, $22
    db $00, $00, $7e, $5f, $2c, $05, $f3, $19, $01, $00, $5f, $03, $0c, $05, $4e, $0d
    db $01, $00, $70, $09, $5f, $03, $5b, $01, $00, $00, $f3, $19, $bc, $22, $3d, $37
    db $00, $00, $9e, $5f, $2d, $09, $f3, $19, $00, $00, $4d, $09, $5f, $03, $02, $00
    db $02, $00, $5b, $01, $5f, $03, $02, $00, $5b, $01, $5f, $03, $5f, $03, $02, $00
    db $5b, $01, $5f, $03, $5f, $03, $02, $00, $02, $00, $5b, $01, $5f, $03, $02, $00

    ld [bc], a                                    ; $5801: $02
    nop                                           ; $5802: $00
    ld e, e                                       ; $5803: $5b
    ld bc, $48c6                                  ; $5804: $01 $c6 $48
    ld e, a                                       ; $5807: $5f
    inc bc                                        ; $5808: $03
    add $48                                       ; $5809: $c6 $48
    ld e, a                                       ; $580b: $5f
    inc bc                                        ; $580c: $03
    ld sp, $e81e                                  ; $580d: $31 $1e $e8
    inc b                                         ; $5810: $04
    add $48                                       ; $5811: $c6 $48
    ld e, a                                       ; $5813: $5f
    inc bc                                        ; $5814: $03
    rst $20                                       ; $5815: $e7
    inc b                                         ; $5816: $04
    jr nc, jr_0d3_582b                            ; $5817: $30 $12

    ld [bc], a                                    ; $5819: $02
    nop                                           ; $581a: $00
    ld e, a                                       ; $581b: $5f
    inc bc                                        ; $581c: $03
    add $48                                       ; $581d: $c6 $48
    jr nc, jr_0d3_5833                            ; $581f: $30 $12

    ld [bc], a                                    ; $5821: $02
    nop                                           ; $5822: $00
    push bc                                       ; $5823: $c5
    ld b, b                                       ; $5824: $40
    ld e, e                                       ; $5825: $5b
    ld bc, $035f                                  ; $5826: $01 $5f $03
    rst $20                                       ; $5829: $e7
    inc b                                         ; $582a: $04

jr_0d3_582b:
    ld sp, hl                                     ; $582b: $f9
    ld b, $7b                                     ; $582c: $06 $7b
    dec bc                                        ; $582e: $0b
    sbc $03                                       ; $582f: $de $03
    push bc                                       ; $5831: $c5
    ld b, h                                       ; $5832: $44

jr_0d3_5833:
    inc de                                        ; $5833: $13
    ld [bc], a                                    ; $5834: $02
    sbc l                                         ; $5835: $9d
    rlca                                          ; $5836: $07
    add sp, $04                                   ; $5837: $e8 $04
    ld [bc], a                                    ; $5839: $02
    nop                                           ; $583a: $00
    ld e, a                                       ; $583b: $5f
    inc bc                                        ; $583c: $03
    push bc                                       ; $583d: $c5
    ld c, b                                       ; $583e: $48
    push hl                                       ; $583f: $e5
    ld b, h                                       ; $5840: $44
    ld [bc], a                                    ; $5841: $02
    nop                                           ; $5842: $00
    ld e, e                                       ; $5843: $5b
    ld bc, $44e5                                  ; $5844: $01 $e5 $44
    ld e, h                                       ; $5847: $5c
    inc bc                                        ; $5848: $03
    xor b                                         ; $5849: $a8
    inc b                                         ; $584a: $04
    sbc b                                         ; $584b: $98
    ld c, $bd                                     ; $584c: $0e $bd
    rrca                                          ; $584e: $0f
    ld [hl], b                                    ; $584f: $70
    add hl, bc                                    ; $5850: $09
    rst $20                                       ; $5851: $e7
    inc b                                         ; $5852: $04
    ld [hl], a                                    ; $5853: $77
    ld c, $bd                                     ; $5854: $0e $bd
    rrca                                          ; $5856: $0f
    adc [hl]                                      ; $5857: $8e
    dec b                                         ; $5858: $05
    ld [bc], a                                    ; $5859: $02
    nop                                           ; $585a: $00
    ld e, a                                       ; $585b: $5f
    inc bc                                        ; $585c: $03
    push hl                                       ; $585d: $e5
    ld b, b                                       ; $585e: $40
    rst $20                                       ; $585f: $e7
    inc b                                         ; $5860: $04
    ld [bc], a                                    ; $5861: $02
    nop                                           ; $5862: $00
    ld e, e                                       ; $5863: $5b
    ld bc, $4104                                  ; $5864: $01 $04 $41
    ld a, l                                       ; $5867: $7d
    rlca                                          ; $5868: $07
    call z, Call_0d3_7b04                         ; $5869: $cc $04 $7b
    rrca                                          ; $586c: $0f
    sbc $0f                                       ; $586d: $de $0f
    sub b                                         ; $586f: $90
    add hl, bc                                    ; $5870: $09
    jp hl                                         ; $5871: $e9


    inc b                                         ; $5872: $04
    sbc e                                         ; $5873: $9b
    rrca                                          ; $5874: $0f
    or d                                          ; $5875: $b2
    add hl, bc                                    ; $5876: $09
    rst $18                                       ; $5877: $df
    inc de                                        ; $5878: $13
    ld h, h                                       ; $5879: $64

jr_0d3_587a:
    nop                                           ; $587a: $00
    ld e, a                                       ; $587b: $5f
    inc bc                                        ; $587c: $03
    inc b                                         ; $587d: $04
    ld b, c                                       ; $587e: $41
    sub b                                         ; $587f: $90
    add hl, bc                                    ; $5880: $09
    ld [bc], a                                    ; $5881: $02
    nop                                           ; $5882: $00
    cp c                                          ; $5883: $b9
    ld bc, $3d04                                  ; $5884: $01 $04 $3d
    ld a, l                                       ; $5887: $7d
    dec bc                                        ; $5888: $0b
    jp hl                                         ; $5889: $e9


    inc b                                         ; $588a: $04
    cp b                                          ; $588b: $b8
    ld c, $14                                     ; $588c: $0e $14
    ld a, [bc]                                    ; $588e: $0a
    cp l                                          ; $588f: $bd
    rrca                                          ; $5890: $0f
    adc c                                         ; $5891: $89
    inc b                                         ; $5892: $04
    jr jr_0d3_58a4                                ; $5893: $18 $0f

    ld [hl], b                                    ; $5895: $70
    add hl, bc                                    ; $5896: $09
    cp [hl]                                       ; $5897: $be
    inc de                                        ; $5898: $13
    ld [bc], a                                    ; $5899: $02
    nop                                           ; $589a: $00
    ld a, [hl-]                                   ; $589b: $3a
    inc bc                                        ; $589c: $03
    inc b                                         ; $589d: $04
    add hl, sp                                    ; $589e: $39
    ld a, [bc]                                    ; $589f: $0a
    dec b                                         ; $58a0: $05
    ld [bc], a                                    ; $58a1: $02
    nop                                           ; $58a2: $00
    db $fc                                        ; $58a3: $fc

jr_0d3_58a4:
    dec b                                         ; $58a4: $05
    inc hl                                        ; $58a5: $23
    dec [hl]                                      ; $58a6: $35
    sbc h                                         ; $58a7: $9c
    dec bc                                        ; $58a8: $0b
    add l                                         ; $58a9: $85
    ld [$0fbd], sp                                ; $58aa: $08 $bd $0f
    or h                                          ; $58ad: $b4
    dec b                                         ; $58ae: $05
    db $ec                                        ; $58af: $ec
    jr nz, jr_0d3_587a                            ; $58b0: $20 $c8

    nop                                           ; $58b2: $00
    jr jr_0d3_58bf                                ; $58b3: $18 $0a

    ld [hl], b                                    ; $58b5: $70
    add hl, bc                                    ; $58b6: $09
    rra                                           ; $58b7: $1f
    rrca                                          ; $58b8: $0f
    ld h, h                                       ; $58b9: $64
    nop                                           ; $58ba: $00
    halt                                          ; $58bb: $76
    ld [bc], a                                    ; $58bc: $02
    inc hl                                        ; $58bd: $23
    dec [hl]                                      ; $58be: $35

jr_0d3_58bf:
    ld e, [hl]                                    ; $58bf: $5e
    rlca                                          ; $58c0: $07
    ld [bc], a                                    ; $58c1: $02
    nop                                           ; $58c2: $00
    ld [hl], l                                    ; $58c3: $75
    dec b                                         ; $58c4: $05
    db $dd                                        ; $58c5: $dd
    ld a, [bc]                                    ; $58c6: $0a
    ld b, e                                       ; $58c7: $43
    ld sp, $0468                                  ; $58c8: $31 $68 $04
    add hl, de                                    ; $58cb: $19
    ld h, $af                                     ; $58cc: $26 $af
    ld de, $133f                                  ; $58ce: $11 $3f $13
    ld a, [hl+]                                   ; $58d1: $2a
    dec c                                         ; $58d2: $0d
    add hl, sp                                    ; $58d3: $39
    rlca                                          ; $58d4: $07
    or e                                          ; $58d5: $b3
    dec h                                         ; $58d6: $25
    rst $38                                       ; $58d7: $ff
    ld c, d                                       ; $58d8: $4a
    ld [bc], a                                    ; $58d9: $02
    nop                                           ; $58da: $00
    ld e, l                                       ; $58db: $5d
    rlca                                          ; $58dc: $07
    ld b, e                                       ; $58dd: $43
    ld sp, $04e7                                  ; $58de: $31 $e7 $04
    ld [bc], a                                    ; $58e1: $02
    nop                                           ; $58e2: $00
    ld d, a                                       ; $58e3: $57
    ld bc, $3162                                  ; $58e4: $01 $62 $31
    cp [hl]                                       ; $58e7: $be
    ld a, [bc]                                    ; $58e8: $0a
    add a                                         ; $58e9: $87
    ld [$3a18], sp                                ; $58ea: $08 $18 $3a
    dec sp                                        ; $58ed: $3b
    rlca                                          ; $58ee: $07
    ld c, [hl]                                    ; $58ef: $4e
    ld de, $3520                                  ; $58f0: $11 $20 $35
    call c, $ab3e                                 ; $58f3: $dc $3e $ab
    inc b                                         ; $58f6: $04
    ld a, d                                       ; $58f7: $7a
    ld [hl], a                                    ; $58f8: $77
    inc h                                         ; $58f9: $24
    nop                                           ; $58fa: $00
    ld e, a                                       ; $58fb: $5f
    inc bc                                        ; $58fc: $03
    ld h, d                                       ; $58fd: $62
    ld sp, $0d30                                  ; $58fe: $31 $30 $0d
    ld [bc], a                                    ; $5901: $02
    nop                                           ; $5902: $00
    reti                                          ; $5903: $d9


    dec b                                         ; $5904: $05
    ld h, d                                       ; $5905: $62
    dec l                                         ; $5906: $2d
    sbc $06                                       ; $5907: $de $06
    ld b, [hl]                                    ; $5909: $46
    inc b                                         ; $590a: $04
    ld a, e                                       ; $590b: $7b
    ld [hl], $b0                                  ; $590c: $36 $b0
    dec c                                         ; $590e: $0d
    ld e, a                                       ; $590f: $5f
    ld c, e                                       ; $5910: $4b
    nop                                           ; $5911: $00
    inc b                                         ; $5912: $04
    ld a, l                                       ; $5913: $7d
    ld h, e                                       ; $5914: $63
    ld l, e                                       ; $5915: $6b
    ld d, [hl]                                    ; $5916: $56
    sub c                                         ; $5917: $91
    dec e                                         ; $5918: $1d
    inc hl                                        ; $5919: $23
    inc b                                         ; $591a: $04
    ld a, d                                       ; $591b: $7a
    ld [hl], $62                                  ; $591c: $36 $62
    dec l                                         ; $591e: $2d
    ld e, a                                       ; $591f: $5f
    inc bc                                        ; $5920: $03
    ld [bc], a                                    ; $5921: $02
    nop                                           ; $5922: $00
    sub a                                         ; $5923: $97
    dec b                                         ; $5924: $05
    add c                                         ; $5925: $81
    add hl, hl                                    ; $5926: $29
    ld e, a                                       ; $5927: $5f
    inc bc                                        ; $5928: $03
    ld h, a                                       ; $5929: $67
    nop                                           ; $592a: $00
    rla                                           ; $592b: $17
    ld a, [hl+]                                   ; $592c: $2a
    ld c, a                                       ; $592d: $4f
    dec e                                         ; $592e: $1d
    db $dd                                        ; $592f: $dd
    ld a, $e8                                     ; $5930: $3e $e8
    inc b                                         ; $5932: $04
    push af                                       ; $5933: $f5
    dec l                                         ; $5934: $2d
    rst $38                                       ; $5935: $ff
    ld b, d                                       ; $5936: $42
    ld a, a                                       ; $5937: $7f
    ld c, e                                       ; $5938: $4b
    ld h, h                                       ; $5939: $64
    nop                                           ; $593a: $00
    ld a, d                                       ; $593b: $7a
    ld [hl], $81                                  ; $593c: $36 $81
    add hl, hl                                    ; $593e: $29
    ld e, a                                       ; $593f: $5f
    inc bc                                        ; $5940: $03
    ld [bc], a                                    ; $5941: $02
    nop                                           ; $5942: $00
    sbc c                                         ; $5943: $99
    ld bc, $3160                                  ; $5944: $01 $60 $31
    ld e, a                                       ; $5947: $5f
    inc bc                                        ; $5948: $03
    ld b, d                                       ; $5949: $42

Call_0d3_594a:
    nop                                           ; $594a: $00
    rla                                           ; $594b: $17
    ld l, $6f                                     ; $594c: $2e $6f
    dec d                                         ; $594e: $15
    ccf                                           ; $594f: $3f
    ld c, e                                       ; $5950: $4b
    rst $20                                       ; $5951: $e7
    inc b                                         ; $5952: $04
    dec sp                                        ; $5953: $3b
    ld b, [hl]                                    ; $5954: $46
    ld a, h                                       ; $5955: $7c
    rlca                                          ; $5956: $07
    ld [hl], c                                    ; $5957: $71
    add hl, de                                    ; $5958: $19
    and c                                         ; $5959: $a1
    dec h                                         ; $595a: $25
    ld a, d                                       ; $595b: $7a
    ld [bc], a                                    ; $595c: $02
    add l                                         ; $595d: $85
    nop                                           ; $595e: $00
    sbc a                                         ; $595f: $9f
    inc bc                                        ; $5960: $03
    ld [bc], a                                    ; $5961: $02
    nop                                           ; $5962: $00
    ldh [$62], a                                  ; $5963: $e0 $62
    ld e, e                                       ; $5965: $5b
    ld bc, $031f                                  ; $5966: $01 $1f $03
    rst $00                                       ; $5969: $c7
    ld [$0259], sp                                ; $596a: $08 $59 $02
    ld [hl], b                                    ; $596d: $70
    dec d                                         ; $596e: $15
    ld a, e                                       ; $596f: $7b
    ld a, [hl-]                                   ; $5970: $3a
    xor b                                         ; $5971: $a8
    nop                                           ; $5972: $00
    ld e, [hl]                                    ; $5973: $5e
    dec bc                                        ; $5974: $0b
    ld d, d                                       ; $5975: $52
    add hl, de                                    ; $5976: $19
    cp a                                          ; $5977: $bf
    ld c, [hl]                                    ; $5978: $4e
    ld h, e                                       ; $5979: $63
    nop                                           ; $597a: $00
    ld e, a                                       ; $597b: $5f
    inc bc                                        ; $597c: $03
    and b                                         ; $597d: $a0
    add hl, hl                                    ; $597e: $29
    and b                                         ; $597f: $a0
    ld e, [hl]                                    ; $5980: $5e
    ld [bc], a                                    ; $5981: $02
    nop                                           ; $5982: $00
    ldh [$62], a                                  ; $5983: $e0 $62
    ld e, l                                       ; $5985: $5d
    ld [bc], a                                    ; $5986: $02
    ld a, [bc]                                    ; $5987: $0a
    jr c, jr_0d3_59ac                             ; $5988: $38 $22

    nop                                           ; $598a: $00
    push af                                       ; $598b: $f5
    dec h                                         ; $598c: $25
    cp $42                                        ; $598d: $fe $42
    ld [$a610], a                                 ; $598f: $ea $10 $a6
    ld [$2e13], sp                                ; $5992: $08 $13 $2e
    cp h                                          ; $5995: $bc
    ld a, $3f                                     ; $5996: $3e $3f
    ld b, a                                       ; $5998: $47
    add b                                         ; $5999: $80
    db $10                                        ; $599a: $10
    ld e, a                                       ; $599b: $5f
    inc bc                                        ; $599c: $03
    nop                                           ; $599d: $00
    ld b, [hl]                                    ; $599e: $46
    jr nz, jr_0d3_5a0c                            ; $599f: $20 $6b

    ld bc, $5d00                                  ; $59a1: $01 $00 $5d
    ld [bc], a                                    ; $59a4: $02
    nop                                           ; $59a5: $00
    ld b, [hl]                                    ; $59a6: $46
    ld c, $3c                                     ; $59a7: $0e $3c
    ld h, l                                       ; $59a9: $65
    inc b                                         ; $59aa: $04
    add hl, sp                                    ; $59ab: $39

jr_0d3_59ac:
    ld l, $de                                     ; $59ac: $2e $de
    ld a, $4d                                     ; $59ae: $3e $4d
    ld de, $0443                                  ; $59b0: $11 $43 $04
    inc de                                        ; $59b3: $13
    ld l, $2a                                     ; $59b4: $2e $2a
    dec d                                         ; $59b6: $15
    rra                                           ; $59b7: $1f
    ld b, e                                       ; $59b8: $43
    nop                                           ; $59b9: $00
    nop                                           ; $59ba: $00
    ld e, a                                       ; $59bb: $5f
    inc bc                                        ; $59bc: $03
    nop                                           ; $59bd: $00
    dec h                                         ; $59be: $25
    add d                                         ; $59bf: $82
    db $10                                        ; $59c0: $10
    ld bc, $5d00                                  ; $59c1: $01 $00 $5d
    ld [bc], a                                    ; $59c4: $02
    add b                                         ; $59c5: $80
    dec [hl]                                      ; $59c6: $35
    ld a, [bc]                                    ; $59c7: $0a
    inc l                                         ; $59c8: $2c
    jr nz, jr_0d3_59cb                            ; $59c9: $20 $00

jr_0d3_59cb:
    rla                                           ; $59cb: $17
    ld a, [hl+]                                   ; $59cc: $2a
    sbc $3e                                       ; $59cd: $de $3e
    ld h, a                                       ; $59cf: $67
    jr jr_0d3_59d2                                ; $59d0: $18 $00

jr_0d3_59d2:
    nop                                           ; $59d2: $00
    and b                                         ; $59d3: $a0
    inc d                                         ; $59d4: $14
    add a                                         ; $59d5: $87
    ld [$2520], sp                                ; $59d6: $08 $20 $25
    nop                                           ; $59d9: $00
    nop                                           ; $59da: $00
    ld e, a                                       ; $59db: $5f
    inc bc                                        ; $59dc: $03
    ldh [rNR24], a                                ; $59dd: $e0 $19
    ld a, [bc]                                    ; $59df: $0a
    jr c, jr_0d3_59e4                             ; $59e0: $38 $02

    nop                                           ; $59e2: $00
    ld e, e                                       ; $59e3: $5b

jr_0d3_59e4:
    ld bc, $035f                                  ; $59e4: $01 $5f $03
    ld a, [bc]                                    ; $59e7: $0a
    jr c, jr_0d3_5a45                             ; $59e8: $38 $5b

    ld bc, $035f                                  ; $59ea: $01 $5f $03
    ld e, a                                       ; $59ed: $5f
    inc bc                                        ; $59ee: $03
    ld a, [bc]                                    ; $59ef: $0a
    jr c, @+$5d                                   ; $59f0: $38 $5b

    ld bc, $035f                                  ; $59f2: $01 $5f $03
    ld e, a                                       ; $59f5: $5f
    inc bc                                        ; $59f6: $03
    ld a, [bc]                                    ; $59f7: $0a
    jr c, jr_0d3_59fc                             ; $59f8: $38 $02

    nop                                           ; $59fa: $00
    ld e, e                                       ; $59fb: $5b

jr_0d3_59fc:
    ld bc, $035f                                  ; $59fc: $01 $5f $03
    ld a, [bc]                                    ; $59ff: $0a
    jr c, jr_0d3_5a43                             ; $5a00: $38 $41

    ld d, d                                       ; $5a02: $52
    ld e, e                                       ; $5a03: $5b
    ld bc, $0002                                  ; $5a04: $01 $02 $00
    ld e, a                                       ; $5a07: $5f
    inc bc                                        ; $5a08: $03
    ld b, c                                       ; $5a09: $41
    ld d, d                                       ; $5a0a: $52
    ld e, a                                       ; $5a0b: $5f

jr_0d3_5a0c:
    inc bc                                        ; $5a0c: $03
    ld c, e                                       ; $5a0d: $4b
    ld [$035f], sp                                ; $5a0e: $08 $5f $03
    ld b, c                                       ; $5a11: $41
    ld d, d                                       ; $5a12: $52
    ld e, a                                       ; $5a13: $5f
    inc bc                                        ; $5a14: $03
    ld c, e                                       ; $5a15: $4b
    ld [$035f], sp                                ; $5a16: $08 $5f $03
    ld b, c                                       ; $5a19: $41
    ld d, d                                       ; $5a1a: $52
    ld e, a                                       ; $5a1b: $5f
    inc bc                                        ; $5a1c: $03
    ld [bc], a                                    ; $5a1d: $02
    nop                                           ; $5a1e: $00
    ld e, a                                       ; $5a1f: $5f
    inc bc                                        ; $5a20: $03
    ld [bc], a                                    ; $5a21: $02
    nop                                           ; $5a22: $00
    ld b, c                                       ; $5a23: $41
    ld d, d                                       ; $5a24: $52
    ld e, a                                       ; $5a25: $5f
    inc bc                                        ; $5a26: $03
    ld e, e                                       ; $5a27: $5b
    ld bc, $0002                                  ; $5a28: $01 $02 $00
    ld b, c                                       ; $5a2b: $41
    ld d, d                                       ; $5a2c: $52
    ld e, a                                       ; $5a2d: $5f
    ld hl, $084b                                  ; $5a2e: $21 $4b $08
    ld b, c                                       ; $5a31: $41
    ld d, d                                       ; $5a32: $52
    ld c, e                                       ; $5a33: $4b
    ld [$211e], sp                                ; $5a34: $08 $1e $21
    cp a                                          ; $5a37: $bf
    ld a, [hl-]                                   ; $5a38: $3a
    ld bc, $4100                                  ; $5a39: $01 $00 $41
    ld d, d                                       ; $5a3c: $52
    ld e, a                                       ; $5a3d: $5f
    inc bc                                        ; $5a3e: $03
    ld c, l                                       ; $5a3f: $4d
    ld [$0002], sp                                ; $5a40: $08 $02 $00

jr_0d3_5a43:
    ld b, c                                       ; $5a43: $41
    ld d, d                                       ; $5a44: $52

jr_0d3_5a45:
    ld e, a                                       ; $5a45: $5f
    inc bc                                        ; $5a46: $03
    ld e, e                                       ; $5a47: $5b
    ld bc, $0000                                  ; $5a48: $01 $00 $00
    cp l                                          ; $5a4b: $bd
    ld hl, $5241                                  ; $5a4c: $21 $41 $52
    ld l, l                                       ; $5a4f: $6d
    ld [$0000], sp                                ; $5a50: $08 $00 $00
    ld e, b                                       ; $5a53: $58
    dec d                                         ; $5a54: $15
    sbc $29                                       ; $5a55: $de $29
    ld c, h                                       ; $5a57: $4c
    inc b                                         ; $5a58: $04
    inc b                                         ; $5a59: $04
    nop                                           ; $5a5a: $00
    ld a, e                                       ; $5a5b: $7b
    dec e                                         ; $5a5c: $1d
    ld b, c                                       ; $5a5d: $41
    ld d, d                                       ; $5a5e: $52
    ld e, a                                       ; $5a5f: $5f
    inc bc                                        ; $5a60: $03
    ld [bc], a                                    ; $5a61: $02
    nop                                           ; $5a62: $00
    ld b, c                                       ; $5a63: $41
    ld d, d                                       ; $5a64: $52
    ld e, e                                       ; $5a65: $5b
    ld bc, $035f                                  ; $5a66: $01 $5f $03
    ld h, $04                                     ; $5a69: $26 $04
    rla                                           ; $5a6b: $17
    ld de, $1d3d                                  ; $5a6c: $11 $3d $1d
    cp l                                          ; $5a6f: $bd
    dec h                                         ; $5a70: $25
    ld b, a                                       ; $5a71: $47
    inc b                                         ; $5a72: $04
    db $f4                                        ; $5a73: $f4
    inc c                                         ; $5a74: $0c
    cp l                                          ; $5a75: $bd
    ld hl, $36bf                                  ; $5a76: $21 $bf $36
    ld bc, $9a00                                  ; $5a79: $01 $00 $9a
    dec e                                         ; $5a7c: $1d
    rra                                           ; $5a7d: $1f
    inc de                                        ; $5a7e: $13
    ld c, h                                       ; $5a7f: $4c
    ld [$0002], sp                                ; $5a80: $08 $02 $00
    ld hl, $3c4e                                  ; $5a83: $21 $4e $3c
    add hl, bc                                    ; $5a86: $09
    ld e, a                                       ; $5a87: $5f
    inc bc                                        ; $5a88: $03
    ld h, l                                       ; $5a89: $65
    ld [$1d59], sp                                ; $5a8a: $08 $59 $1d
    ld a, d                                       ; $5a8d: $7a
    ld b, [hl]                                    ; $5a8e: $46
    ld de, $6511                                  ; $5a8f: $11 $11 $65
    ld [$467a], sp                                ; $5a92: $08 $7a $46
    ld c, $15                                     ; $5a95: $0e $15
    sub c                                         ; $5a97: $91
    add hl, hl                                    ; $5a98: $29
    ld bc, $3400                                  ; $5a99: $01 $00 $34
    dec d                                         ; $5a9c: $15
    ld a, $2a                                     ; $5a9d: $3e $2a
    ld e, a                                       ; $5a9f: $5f
    inc bc                                        ; $5aa0: $03
    ld [bc], a                                    ; $5aa1: $02
    nop                                           ; $5aa2: $00
    ld bc, $1a4e                                  ; $5aa3: $01 $4e $1a
    add hl, bc                                    ; $5aa6: $09
    ld e, a                                       ; $5aa7: $5f
    inc bc                                        ; $5aa8: $03
    ld b, h                                       ; $5aa9: $44
    nop                                           ; $5aaa: $00
    cp [hl]                                       ; $5aab: $be
    ld hl, $0cad                                  ; $5aac: $21 $ad $0c
    db $f4                                        ; $5aaf: $f4
    stop                                          ; $5ab0: $10 $00
    nop                                           ; $5ab2: $00
    db $fc                                        ; $5ab3: $fc
    ld sp, $6b9f                                  ; $5ab4: $31 $9f $6b
    ld l, l                                       ; $5ab7: $6d
    ld [$0444], sp                                ; $5ab8: $08 $44 $04
    ld sp, hl                                     ; $5abb: $f9
    ld sp, $4e01                                  ; $5abc: $31 $01 $4e
    ld e, a                                       ; $5abf: $5f
    inc bc                                        ; $5ac0: $03
    ld bc, $e100                                  ; $5ac1: $01 $00 $e1
    ld c, c                                       ; $5ac4: $49
    ld e, l                                       ; $5ac5: $5d
    dec c                                         ; $5ac6: $0d
    ld e, a                                       ; $5ac7: $5f
    inc bc                                        ; $5ac8: $03
    ld h, [hl]                                    ; $5ac9: $66
    ld [$4e35], sp                                ; $5aca: $08 $35 $4e
    cp a                                          ; $5acd: $bf
    ld [hl], e                                    ; $5ace: $73
    sub b                                         ; $5acf: $90
    ld [$34a0], sp                                ; $5ad0: $08 $a0 $34
    ld d, $3a                                     ; $5ad3: $16 $3a
    sbc a                                         ; $5ad5: $9f
    ld l, e                                       ; $5ad6: $6b
    ld h, [hl]                                    ; $5ad7: $66
    ld [$49e1], sp                                ; $5ad8: $08 $e1 $49
    ld [bc], a                                    ; $5adb: $02
    nop                                           ; $5adc: $00
    ld e, a                                       ; $5add: $5f
    inc bc                                        ; $5ade: $03
    adc h                                         ; $5adf: $8c
    inc c                                         ; $5ae0: $0c
    ld [bc], a                                    ; $5ae1: $02
    nop                                           ; $5ae2: $00
    pop bc                                        ; $5ae3: $c1
    ld c, c                                       ; $5ae4: $49
    ld e, e                                       ; $5ae5: $5b
    ld bc, $035f                                  ; $5ae6: $01 $5f $03
    pop de                                        ; $5ae9: $d1
    inc c                                         ; $5aea: $0c
    xor c                                         ; $5aeb: $a9
    ld l, l                                       ; $5aec: $6d
    cp a                                          ; $5aed: $bf
    ld [hl], e                                    ; $5aee: $73
    ld a, d                                       ; $5aef: $7a
    ld b, [hl]                                    ; $5af0: $46
    jr nz, jr_0d3_5b03                            ; $5af1: $20 $10

    ld a, d                                       ; $5af3: $7a
    ld b, [hl]                                    ; $5af4: $46
    xor [hl]                                      ; $5af5: $ae
    ld c, l                                       ; $5af6: $4d
    cp a                                          ; $5af7: $bf
    ld l, a                                       ; $5af8: $6f
    pop bc                                        ; $5af9: $c1
    ld c, c                                       ; $5afa: $49
    ld a, d                                       ; $5afb: $7a
    ld b, [hl]                                    ; $5afc: $46
    ld b, [hl]                                    ; $5afd: $46
    ld [$035f], sp                                ; $5afe: $08 $5f $03

Call_0d3_5b01:
    ld [bc], a                                    ; $5b01: $02
    nop                                           ; $5b02: $00

jr_0d3_5b03:
    add b                                         ; $5b03: $80
    ld b, l                                       ; $5b04: $45
    ld e, e                                       ; $5b05: $5b
    ld bc, $035f                                  ; $5b06: $01 $5f $03
    ld [hl], c                                    ; $5b09: $71
    nop                                           ; $5b0a: $00
    ld a, d                                       ; $5b0b: $7a
    ld b, [hl]                                    ; $5b0c: $46
    sbc a                                         ; $5b0d: $9f
    ld l, e                                       ; $5b0e: $6b
    jr nc, @+$1f                                  ; $5b0f: $30 $1d

    ld sp, $9f19                                  ; $5b11: $31 $19 $9f
    ld l, e                                       ; $5b14: $6b

Jump_0d3_5b15:
    rla                                           ; $5b15: $17
    ld a, [hl-]                                   ; $5b16: $3a
    ld a, d                                       ; $5b17: $7a
    ld b, [hl]                                    ; $5b18: $46
    add b                                         ; $5b19: $80
    ld b, l                                       ; $5b1a: $45
    ld e, a                                       ; $5b1b: $5f
    inc bc                                        ; $5b1c: $03
    ld [bc], a                                    ; $5b1d: $02
    nop                                           ; $5b1e: $00
    ld c, $19                                     ; $5b1f: $0e $19
    ld [bc], a                                    ; $5b21: $02

Call_0d3_5b22:
    nop                                           ; $5b22: $00
    ld h, b                                       ; $5b23: $60
    ld b, c                                       ; $5b24: $41
    ld e, e                                       ; $5b25: $5b
    ld bc, $035f                                  ; $5b26: $01 $5f $03
    ld h, b                                       ; $5b29: $60
    ld b, c                                       ; $5b2a: $41
    ld e, a                                       ; $5b2b: $5f
    ld h, e                                       ; $5b2c: $63
    jr z, jr_0d3_5b2f                             ; $5b2d: $28 $00

jr_0d3_5b2f:
    jr nc, @+$1f                                  ; $5b2f: $30 $1d

    db $10                                        ; $5b31: $10
    add hl, de                                    ; $5b32: $19
    ld a, d                                       ; $5b33: $7a
    ld b, [hl]                                    ; $5b34: $46
    sbc a                                         ; $5b35: $9f
    ld l, e                                       ; $5b36: $6b
    rla                                           ; $5b37: $17
    ld a, [hl-]                                   ; $5b38: $3a
    ld h, b                                       ; $5b39: $60
    ld b, c                                       ; $5b3a: $41
    ld e, a                                       ; $5b3b: $5f
    inc bc                                        ; $5b3c: $03
    ld [bc], a                                    ; $5b3d: $02
    nop                                           ; $5b3e: $00
    ld c, $19                                     ; $5b3f: $0e $19
    ld [bc], a                                    ; $5b41: $02
    nop                                           ; $5b42: $00
    ld b, b                                       ; $5b43: $40
    ld b, c                                       ; $5b44: $41
    ld e, e                                       ; $5b45: $5b
    ld bc, $035f                                  ; $5b46: $01 $5f $03
    ld b, b                                       ; $5b49: $40
    ld b, c                                       ; $5b4a: $41
    rst $38                                       ; $5b4b: $ff
    ld d, d                                       ; $5b4c: $52
    jr nc, jr_0d3_5b6c                            ; $5b4d: $30 $1d

    sbc a                                         ; $5b4f: $9f
    ld l, e                                       ; $5b50: $6b
    cpl                                           ; $5b51: $2f
    dec e                                         ; $5b52: $1d
    ld d, l                                       ; $5b53: $55
    ld b, d                                       ; $5b54: $42
    ld [hl], a                                    ; $5b55: $77
    ld l, a                                       ; $5b56: $6f
    cp h                                          ; $5b57: $bc
    ld c, [hl]                                    ; $5b58: $4e
    ld b, b                                       ; $5b59: $40
    ld b, c                                       ; $5b5a: $41
    ld e, a                                       ; $5b5b: $5f
    inc bc                                        ; $5b5c: $03
    ld [bc], a                                    ; $5b5d: $02
    nop                                           ; $5b5e: $00
    cp h                                          ; $5b5f: $bc
    ld c, [hl]                                    ; $5b60: $4e
    nop                                           ; $5b61: $00
    dec a                                         ; $5b62: $3d
    ld e, e                                       ; $5b63: $5b
    ld bc, $0002                                  ; $5b64: $01 $02 $00
    ld e, a                                       ; $5b67: $5f
    inc bc                                        ; $5b68: $03
    nop                                           ; $5b69: $00
    dec a                                         ; $5b6a: $3d
    ld e, a                                       ; $5b6b: $5f

jr_0d3_5b6c:
    ld e, a                                       ; $5b6c: $5f
    jr nc, jr_0d3_5b8c                            ; $5b6d: $30 $1d

    ld hl, $a200                                  ; $5b6f: $21 $00 $a2
    inc h                                         ; $5b72: $24
    ld d, a                                       ; $5b73: $57
    ld b, d                                       ; $5b74: $42
    db $ed                                        ; $5b75: $ed
    inc e                                         ; $5b76: $1c
    ld e, a                                       ; $5b77: $5f
    ld h, e                                       ; $5b78: $63
    nop                                           ; $5b79: $00
    dec a                                         ; $5b7a: $3d
    ld e, a                                       ; $5b7b: $5f
    inc bc                                        ; $5b7c: $03
    ld [bc], a                                    ; $5b7d: $02
    nop                                           ; $5b7e: $00
    jr nz, jr_0d3_5bbe                            ; $5b7f: $20 $3d

    ldh [$38], a                                  ; $5b81: $e0 $38
    ld e, e                                       ; $5b83: $5b
    ld bc, $0002                                  ; $5b84: $01 $02 $00
    ld e, a                                       ; $5b87: $5f
    inc bc                                        ; $5b88: $03
    nop                                           ; $5b89: $00
    dec a                                         ; $5b8a: $3d
    ld d, c                                       ; $5b8b: $51

jr_0d3_5b8c:
    dec e                                         ; $5b8c: $1d
    rst $38                                       ; $5b8d: $ff
    ld d, d                                       ; $5b8e: $52
    ld b, e                                       ; $5b8f: $43
    inc b                                         ; $5b90: $04
    ldh [$38], a                                  ; $5b91: $e0 $38
    rst $30                                       ; $5b93: $f7
    ld sp, $10cb                                  ; $5b94: $31 $cb $10
    rst $38                                       ; $5b97: $ff
    ld d, d                                       ; $5b98: $52
    ldh [$38], a                                  ; $5b99: $e0 $38
    ld e, a                                       ; $5b9b: $5f
    inc bc                                        ; $5b9c: $03
    ld [bc], a                                    ; $5b9d: $02
    nop                                           ; $5b9e: $00
    ldh [$3c], a                                  ; $5b9f: $e0 $3c
    ret nz                                        ; $5ba1: $c0

    jr c, jr_0d3_5c1d                             ; $5ba2: $38 $79

    dec c                                         ; $5ba4: $0d
    ld [bc], a                                    ; $5ba5: $02
    nop                                           ; $5ba6: $00
    ld e, a                                       ; $5ba7: $5f
    inc bc                                        ; $5ba8: $03
    nop                                           ; $5ba9: $00
    nop                                           ; $5baa: $00
    ld sp, hl                                     ; $5bab: $f9
    dec [hl]                                      ; $5bac: $35
    ld c, $19                                     ; $5bad: $0e $19
    sbc $46                                       ; $5baf: $de $46
    ret nz                                        ; $5bb1: $c0

    jr c, jr_0d3_5bcc                             ; $5bb2: $38 $18

    ld [hl], $0e                                  ; $5bb4: $36 $0e
    add hl, de                                    ; $5bb6: $19
    ld h, l                                       ; $5bb7: $65
    inc b                                         ; $5bb8: $04
    ret nz                                        ; $5bb9: $c0

    jr c, jr_0d3_5c1b                             ; $5bba: $38 $5f

    inc bc                                        ; $5bbc: $03
    ld [bc], a                                    ; $5bbd: $02

jr_0d3_5bbe:
    nop                                           ; $5bbe: $00
    ld h, l                                       ; $5bbf: $65
    inc b                                         ; $5bc0: $04
    ld [bc], a                                    ; $5bc1: $02
    nop                                           ; $5bc2: $00
    sbc d                                         ; $5bc3: $9a
    dec c                                         ; $5bc4: $0d
    and c                                         ; $5bc5: $a1
    jr nc, @+$41                                  ; $5bc6: $30 $3f

    rla                                           ; $5bc8: $17
    ld bc, $ed00                                  ; $5bc9: $01 $00 $ed

jr_0d3_5bcc:
    db $10                                        ; $5bcc: $10
    ld [hl], d                                    ; $5bcd: $72
    dec e                                         ; $5bce: $1d
    sub $29                                       ; $5bcf: $d6 $29
    ld b, e                                       ; $5bd1: $43
    inc b                                         ; $5bd2: $04
    rst $30                                       ; $5bd3: $f7
    ld sp, $192e                                  ; $5bd4: $31 $2e $19
    rst $38                                       ; $5bd7: $ff
    ld c, [hl]                                    ; $5bd8: $4e
    and b                                         ; $5bd9: $a0
    inc [hl]                                      ; $5bda: $34
    ld e, a                                       ; $5bdb: $5f
    inc bc                                        ; $5bdc: $03
    ld [bc], a                                    ; $5bdd: $02
    nop                                           ; $5bde: $00
    add [hl]                                      ; $5bdf: $86
    ld [$0002], sp                                ; $5be0: $08 $02 $00
    ld e, e                                       ; $5be3: $5b
    ld bc, $035f                                  ; $5be4: $01 $5f $03
    add [hl]                                      ; $5be7: $86
    ld [$015b], sp                                ; $5be8: $08 $5b $01
    ld e, a                                       ; $5beb: $5f
    inc bc                                        ; $5bec: $03
    ld e, a                                       ; $5bed: $5f
    inc bc                                        ; $5bee: $03
    add [hl]                                      ; $5bef: $86
    ld [$015b], sp                                ; $5bf0: $08 $5b $01
    ld e, a                                       ; $5bf3: $5f
    inc bc                                        ; $5bf4: $03
    ld e, a                                       ; $5bf5: $5f
    inc bc                                        ; $5bf6: $03
    add [hl]                                      ; $5bf7: $86
    ld [$0002], sp                                ; $5bf8: $08 $02 $00
    ld e, e                                       ; $5bfb: $5b
    ld bc, $035f                                  ; $5bfc: $01 $5f $03
    add [hl]                                      ; $5bff: $86
    ld [$0002], sp                                ; $5c00: $08 $02 $00
    rst $08                                       ; $5c03: $cf
    ld e, l                                       ; $5c04: $5d
    ld e, e                                       ; $5c05: $5b
    ld bc, $035f                                  ; $5c06: $01 $5f $03
    and [hl]                                      ; $5c09: $a6
    inc c                                         ; $5c0a: $0c
    ld e, a                                       ; $5c0b: $5f
    inc bc                                        ; $5c0c: $03
    rst $08                                       ; $5c0d: $cf
    ld e, l                                       ; $5c0e: $5d
    ld e, a                                       ; $5c0f: $5f
    inc bc                                        ; $5c10: $03
    jr nz, jr_0d3_5c1b                            ; $5c11: $20 $08

    ld e, a                                       ; $5c13: $5f
    inc bc                                        ; $5c14: $03
    rst $08                                       ; $5c15: $cf
    ld e, l                                       ; $5c16: $5d
    ld e, a                                       ; $5c17: $5f
    inc bc                                        ; $5c18: $03
    ld [bc], a                                    ; $5c19: $02
    nop                                           ; $5c1a: $00

jr_0d3_5c1b:
    ld e, a                                       ; $5c1b: $5f
    inc bc                                        ; $5c1c: $03

jr_0d3_5c1d:
    rst $08                                       ; $5c1d: $cf
    ld e, l                                       ; $5c1e: $5d
    ld e, a                                       ; $5c1f: $5f
    inc bc                                        ; $5c20: $03
    ld [bc], a                                    ; $5c21: $02
    nop                                           ; $5c22: $00
    adc l                                         ; $5c23: $8d
    ld d, l                                       ; $5c24: $55
    ld e, e                                       ; $5c25: $5b
    ld bc, $035f                                  ; $5c26: $01 $5f $03
    ld hl, $fd04                                  ; $5c29: $21 $04 $fd
    ld c, d                                       ; $5c2c: $4a
    rst $38                                       ; $5c2d: $ff
    ld [hl], a                                    ; $5c2e: $77
    and [hl]                                      ; $5c2f: $a6
    inc c                                         ; $5c30: $0c
    nop                                           ; $5c31: $00
    inc b                                         ; $5c32: $04
    adc $55                                       ; $5c33: $ce $55
    rst $38                                       ; $5c35: $ff
    ld a, a                                       ; $5c36: $7f
    ld c, d                                       ; $5c37: $4a
    dec h                                         ; $5c38: $25
    ld [bc], a                                    ; $5c39: $02
    nop                                           ; $5c3a: $00
    ld e, a                                       ; $5c3b: $5f
    inc bc                                        ; $5c3c: $03
    adc h                                         ; $5c3d: $8c
    ld d, l                                       ; $5c3e: $55
    xor [hl]                                      ; $5c3f: $ae
    ld e, l                                       ; $5c40: $5d
    ld [bc], a                                    ; $5c41: $02
    nop                                           ; $5c42: $00
    ret nc                                        ; $5c43: $d0

    dec [hl]                                      ; $5c44: $35
    ld e, e                                       ; $5c45: $5b
    ld bc, $035f                                  ; $5c46: $01 $5f $03
    sub c                                         ; $5c49: $91
    ld hl, $73df                                  ; $5c4a: $21 $df $73
    call c, Call_0d3_594a                         ; $5c4d: $dc $4a $59
    ld [hl], $20                                  ; $5c50: $36 $20
    inc b                                         ; $5c52: $04
    ld [hl-], a                                   ; $5c53: $32
    ld b, d                                       ; $5c54: $42
    ld c, c                                       ; $5c55: $49
    dec a                                         ; $5c56: $3d
    ld e, l                                       ; $5c57: $5d
    ld h, e                                       ; $5c58: $63
    ld bc, $5f00                                  ; $5c59: $01 $00 $5f
    inc bc                                        ; $5c5c: $03
    jr z, jr_0d3_5ca4                             ; $5c5d: $28 $45

    ld l, d                                       ; $5c5f: $6a
    ld c, l                                       ; $5c60: $4d
    ld [bc], a                                    ; $5c61: $02
    nop                                           ; $5c62: $00
    ld e, l                                       ; $5c63: $5d
    ld [bc], a                                    ; $5c64: $02
    ld a, e                                       ; $5c65: $7b
    ld l, a                                       ; $5c66: $6f
    dec d                                         ; $5c67: $15
    ld [hl], $01                                  ; $5c68: $36 $01
    nop                                           ; $5c6a: $00
    ld a, b                                       ; $5c6b: $78
    ld a, [hl-]                                   ; $5c6c: $3a
    ld a, [hl]                                    ; $5c6d: $7e
    ld h, e                                       ; $5c6e: $63
    dec l                                         ; $5c6f: $2d
    ld de, $0400                                  ; $5c70: $11 $00 $04
    ld de, $073e                                  ; $5c73: $11 $3e $07
    dec l                                         ; $5c76: $2d
    cp d                                          ; $5c77: $ba
    ld c, d                                       ; $5c78: $4a
    nop                                           ; $5c79: $00
    nop                                           ; $5c7a: $00
    ld e, a                                       ; $5c7b: $5f
    inc bc                                        ; $5c7c: $03
    ld a, e                                       ; $5c7d: $7b
    ld l, a                                       ; $5c7e: $6f
    push hl                                       ; $5c7f: $e5
    jr c, @+$04                                   ; $5c80: $38 $02

    nop                                           ; $5c82: $00
    ld hl, sp+$05                                 ; $5c83: $f8 $05
    ldh a, [$39]                                  ; $5c85: $f0 $39
    sbc $7b                                       ; $5c87: $de $7b
    ld bc, $3800                                  ; $5c89: $01 $00 $38
    ld [hl-], a                                   ; $5c8c: $32
    ld c, [hl]                                    ; $5c8d: $4e
    add hl, de                                    ; $5c8e: $19
    rst $18                                       ; $5c8f: $df
    ld [hl], e                                    ; $5c90: $73
    nop                                           ; $5c91: $00
    inc b                                         ; $5c92: $04
    sbc l                                         ; $5c93: $9d
    ld [hl], $0c                                  ; $5c94: $36 $0c
    dec d                                         ; $5c96: $15
    rst $38                                       ; $5c97: $ff
    ld a, e                                       ; $5c98: $7b
    ld bc, $3100                                  ; $5c99: $01 $00 $31
    ld b, [hl]                                    ; $5c9c: $46
    ld e, a                                       ; $5c9d: $5f
    inc bc                                        ; $5c9e: $03
    jp $0230                                      ; $5c9f: $c3 $30 $02


    nop                                           ; $5ca2: $00
    ld e, l                                       ; $5ca3: $5d

jr_0d3_5ca4:
    ld [bc], a                                    ; $5ca4: $02
    ld a, [c]                                     ; $5ca5: $f2
    dec [hl]                                      ; $5ca6: $35
    ld a, a                                       ; $5ca7: $7f
    ld e, a                                       ; $5ca8: $5f
    ld bc, $7100                                  ; $5ca9: $01 $00 $71
    ld e, d                                       ; $5cac: $5a
    ld c, $0d                                     ; $5cad: $0e $0d
    jr c, @+$34                                   ; $5caf: $38 $32

    ld b, d                                       ; $5cb1: $42
    inc b                                         ; $5cb2: $04
    db $fd                                        ; $5cb3: $fd
    ld c, d                                       ; $5cb4: $4a
    inc c                                         ; $5cb5: $0c
    dec d                                         ; $5cb6: $15
    sbc $7b                                       ; $5cb7: $de $7b
    ld bc, $9c00                                  ; $5cb9: $01 $00 $9c
    ld [hl], e                                    ; $5cbc: $73
    ld e, a                                       ; $5cbd: $5f
    inc bc                                        ; $5cbe: $03
    call nz, $022c                                ; $5cbf: $c4 $2c $02
    nop                                           ; $5cc2: $00
    ld l, [hl]                                    ; $5cc3: $6e
    dec h                                         ; $5cc4: $25
    sbc $73                                       ; $5cc5: $de $73
    ld e, l                                       ; $5cc7: $5d
    ld [bc], a                                    ; $5cc8: $02
    inc hl                                        ; $5cc9: $23
    nop                                           ; $5cca: $00
    ld a, [hl]                                    ; $5ccb: $7e
    ld e, a                                       ; $5ccc: $5f
    rst $30                                       ; $5ccd: $f7
    dec h                                         ; $5cce: $25
    ld e, c                                       ; $5ccf: $59
    ld [hl], $22                                  ; $5cd0: $36 $22
    inc b                                         ; $5cd2: $04
    dec a                                         ; $5cd3: $3d
    ld d, a                                       ; $5cd4: $57
    sub b                                         ; $5cd5: $90
    dec e                                         ; $5cd6: $1d
    rst $18                                       ; $5cd7: $df
    ld [hl], a                                    ; $5cd8: $77
    ld bc, $3900                                  ; $5cd9: $01 $00 $39
    ld h, a                                       ; $5cdc: $67
    ld e, a                                       ; $5cdd: $5f
    inc bc                                        ; $5cde: $03
    push hl                                       ; $5cdf: $e5
    inc l                                         ; $5ce0: $2c
    ld bc, $5d00                                  ; $5ce1: $01 $00 $5d
    ld [bc], a                                    ; $5ce4: $02
    ld e, h                                       ; $5ce5: $5c
    ld h, e                                       ; $5ce6: $63
    add hl, hl                                    ; $5ce7: $29
    dec h                                         ; $5ce8: $25
    ld h, l                                       ; $5ce9: $65
    ld [$1db5], sp                                ; $5cea: $08 $b5 $1d
    ld a, [hl]                                    ; $5ced: $7e
    ld e, a                                       ; $5cee: $5f
    ld e, b                                       ; $5cef: $58
    ld [hl], $00                                  ; $5cf0: $36 $00
    nop                                           ; $5cf2: $00
    di                                            ; $5cf3: $f3
    dec [hl]                                      ; $5cf4: $35
    cp l                                          ; $5cf5: $bd
    ld [hl], a                                    ; $5cf6: $77
    inc l                                         ; $5cf7: $2c
    dec e                                         ; $5cf8: $1d
    ld b, c                                       ; $5cf9: $41
    inc d                                         ; $5cfa: $14
    rst $28                                       ; $5cfb: $ef
    dec a                                         ; $5cfc: $3d
    ld a, e                                       ; $5cfd: $7b
    ld l, a                                       ; $5cfe: $6f
    ld e, a                                       ; $5cff: $5f
    inc bc                                        ; $5d00: $03
    ld [bc], a                                    ; $5d01: $02
    nop                                           ; $5d02: $00
    ld e, l                                       ; $5d03: $5d
    ld [bc], a                                    ; $5d04: $02
    ld [hl], e                                    ; $5d05: $73
    ld c, [hl]                                    ; $5d06: $4e
    ld a, e                                       ; $5d07: $7b
    ld l, a                                       ; $5d08: $6f
    inc hl                                        ; $5d09: $23
    nop                                           ; $5d0a: $00
    ld d, e                                       ; $5d0b: $53
    ld c, d                                       ; $5d0c: $4a
    ld [$5a10], a                                 ; $5d0d: $ea $10 $5a
    ld l, e                                       ; $5d10: $6b
    add [hl]                                      ; $5d11: $86
    inc c                                         ; $5d12: $0c
    ld a, d                                       ; $5d13: $7a
    dec l                                         ; $5d14: $2d
    rst $30                                       ; $5d15: $f7
    ld e, [hl]                                    ; $5d16: $5e
    ld b, a                                       ; $5d17: $47
    add hl, hl                                    ; $5d18: $29
    nop                                           ; $5d19: $00
    nop                                           ; $5d1a: $00
    or h                                          ; $5d1b: $b4
    ld d, d                                       ; $5d1c: $52
    ld e, a                                       ; $5d1d: $5f
    inc bc                                        ; $5d1e: $03
    jp $022c                                      ; $5d1f: $c3 $2c $02


    nop                                           ; $5d22: $00
    ld e, l                                       ; $5d23: $5d
    ld [bc], a                                    ; $5d24: $02
    rst $08                                       ; $5d25: $cf
    add hl, sp                                    ; $5d26: $39
    add hl, de                                    ; $5d27: $19
    ld h, e                                       ; $5d28: $63
    ld l, e                                       ; $5d29: $6b
    dec l                                         ; $5d2a: $2d
    ld e, e                                       ; $5d2b: $5b
    ld l, e                                       ; $5d2c: $6b
    sub l                                         ; $5d2d: $95
    ld d, d                                       ; $5d2e: $52
    sbc $7b                                       ; $5d2f: $de $7b
    add e                                         ; $5d31: $83
    db $10                                        ; $5d32: $10
    or [hl]                                       ; $5d33: $b6
    ld d, [hl]                                    ; $5d34: $56
    adc $39                                       ; $5d35: $ce $39
    ld a, h                                       ; $5d37: $7c
    ld l, a                                       ; $5d38: $6f
    ld b, c                                       ; $5d39: $41
    inc b                                         ; $5d3a: $04
    db $eb                                        ; $5d3b: $eb
    add hl, hl                                    ; $5d3c: $29
    ld e, a                                       ; $5d3d: $5f
    inc bc                                        ; $5d3e: $03
    ld [hl], a                                    ; $5d3f: $77
    ld d, a                                       ; $5d40: $57
    ld [bc], a                                    ; $5d41: $02
    nop                                           ; $5d42: $00
    ld e, l                                       ; $5d43: $5d
    ld [bc], a                                    ; $5d44: $02
    rst $10                                       ; $5d45: $d7
    ld e, d                                       ; $5d46: $5a
    rst $38                                       ; $5d47: $ff
    ld a, a                                       ; $5d48: $7f
    adc h                                         ; $5d49: $8c
    ld sp, $5ef7                                  ; $5d4a: $31 $f7 $5e
    cp l                                          ; $5d4d: $bd
    ld [hl], a                                    ; $5d4e: $77
    db $10                                        ; $5d4f: $10
    ld b, d                                       ; $5d50: $42
    ld d, d                                       ; $5d51: $52
    ld c, d                                       ; $5d52: $4a
    ld a, e                                       ; $5d53: $7b
    ld l, a                                       ; $5d54: $6f
    jr jr_0d3_5dba                                ; $5d55: $18 $63

    rst $38                                       ; $5d57: $ff
    ld a, a                                       ; $5d58: $7f
    ld hl, $5f00                                  ; $5d59: $21 $00 $5f
    inc bc                                        ; $5d5c: $03
    xor a                                         ; $5d5d: $af
    ld [hl], $3a                                  ; $5d5e: $36 $3a
    ld h, a                                       ; $5d60: $67
    ld bc, $5d00                                  ; $5d61: $01 $00 $5d
    ld [bc], a                                    ; $5d64: $02
    ld l, a                                       ; $5d65: $6f
    ld a, [hl-]                                   ; $5d66: $3a
    ld a, [hl-]                                   ; $5d67: $3a
    ld h, a                                       ; $5d68: $67

Call_0d3_5d69:
    xor l                                         ; $5d69: $ad
    dec [hl]                                      ; $5d6a: $35
    rst $30                                       ; $5d6b: $f7
    ld e, [hl]                                    ; $5d6c: $5e
    ld [hl], e                                    ; $5d6d: $73
    ld c, [hl]                                    ; $5d6e: $4e
    sbc h                                         ; $5d6f: $9c
    ld [hl], e                                    ; $5d70: $73
    add $18                                       ; $5d71: $c6 $18
    sub $5a                                       ; $5d73: $d6 $5a
    db $10                                        ; $5d75: $10
    ld b, d                                       ; $5d76: $42
    ld a, e                                       ; $5d77: $7b
    ld l, a                                       ; $5d78: $6f
    ld bc, $5f00                                  ; $5d79: $01 $00 $5f
    inc bc                                        ; $5d7c: $03
    ld h, $15                                     ; $5d7d: $26 $15
    db $ed                                        ; $5d7f: $ed
    ld sp, $0001                                  ; $5d80: $31 $01 $00
    ld l, a                                       ; $5d83: $6f
    ld a, [hl-]                                   ; $5d84: $3a
    ld e, l                                       ; $5d85: $5d
    ld [bc], a                                    ; $5d86: $02
    ld h, $15                                     ; $5d87: $26 $15
    ld b, d                                       ; $5d89: $42
    inc b                                         ; $5d8a: $04
    db $10                                        ; $5d8b: $10
    ld b, d                                       ; $5d8c: $42
    ld e, d                                       ; $5d8d: $5a
    ld h, a                                       ; $5d8e: $67
    add hl, hl                                    ; $5d8f: $29
    ld hl, $0000                                  ; $5d90: $21 $00 $00
    adc $39                                       ; $5d93: $ce $39
    jr jr_0d3_5dfa                                ; $5d95: $18 $63

    add $18                                       ; $5d97: $c6 $18
    ld b, b                                       ; $5d99: $40
    nop                                           ; $5d9a: $00
    ld e, a                                       ; $5d9b: $5f
    inc bc                                        ; $5d9c: $03
    ld b, e                                       ; $5d9d: $43
    dec b                                         ; $5d9e: $05
    ld c, b                                       ; $5d9f: $48
    ld a, [de]                                    ; $5da0: $1a
    ld bc, $0800                                  ; $5da1: $01 $00 $08
    ld d, $5d                                     ; $5da4: $16 $5d
    ld [bc], a                                    ; $5da6: $02
    ld [bc], a                                    ; $5da7: $02
    ld bc, $0000                                  ; $5da8: $01 $00 $00
    adc d                                         ; $5dab: $8a
    ld e, $e7                                     ; $5dac: $1e $e7
    db $10                                        ; $5dae: $10
    rst $10                                       ; $5daf: $d7
    ld e, d                                       ; $5db0: $5a
    nop                                           ; $5db1: $00
    nop                                           ; $5db2: $00
    add sp, $1c                                   ; $5db3: $e8 $1c
    sbc a                                         ; $5db5: $9f
    ld a, [bc]                                    ; $5db6: $0a
    xor $04                                       ; $5db7: $ee $04
    ld b, b                                       ; $5db9: $40

jr_0d3_5dba:
    nop                                           ; $5dba: $00
    ld e, a                                       ; $5dbb: $5f
    inc bc                                        ; $5dbc: $03
    ld h, h                                       ; $5dbd: $64
    dec b                                         ; $5dbe: $05
    daa                                           ; $5dbf: $27
    ld d, $01                                     ; $5dc0: $16 $01
    nop                                           ; $5dc2: $00
    ld e, e                                       ; $5dc3: $5b
    ld bc, $0964                                  ; $5dc4: $01 $64 $09
    ld e, a                                       ; $5dc7: $5f
    inc bc                                        ; $5dc8: $03
    inc hl                                        ; $5dc9: $23
    nop                                           ; $5dca: $00
    sub d                                         ; $5dcb: $92
    dec b                                         ; $5dcc: $05
    ld [hl], e                                    ; $5dcd: $73
    ld c, [hl]                                    ; $5dce: $4e
    ld b, e                                       ; $5dcf: $43
    dec b                                         ; $5dd0: $05
    nop                                           ; $5dd1: $00
    nop                                           ; $5dd2: $00
    sub $05                                       ; $5dd3: $d6 $05
    sub [hl]                                      ; $5dd5: $96
    ld a, [bc]                                    ; $5dd6: $0a
    ld a, d                                       ; $5dd7: $7a
    ld [bc], a                                    ; $5dd8: $02
    nop                                           ; $5dd9: $00
    nop                                           ; $5dda: $00
    ld e, a                                       ; $5ddb: $5f
    inc bc                                        ; $5ddc: $03
    pop bc                                        ; $5ddd: $c1
    nop                                           ; $5dde: $00
    rlca                                          ; $5ddf: $07
    ld [de], a                                    ; $5de0: $12
    ld [bc], a                                    ; $5de1: $02
    nop                                           ; $5de2: $00
    ld e, e                                       ; $5de3: $5b
    ld bc, $035f                                  ; $5de4: $01 $5f $03
    rlca                                          ; $5de7: $07
    ld [de], a                                    ; $5de8: $12
    ld e, e                                       ; $5de9: $5b
    ld bc, $035f                                  ; $5dea: $01 $5f $03
    ld e, a                                       ; $5ded: $5f
    inc bc                                        ; $5dee: $03
    rlca                                          ; $5def: $07
    ld [de], a                                    ; $5df0: $12
    ld e, e                                       ; $5df1: $5b
    ld bc, $035f                                  ; $5df2: $01 $5f $03
    ld e, a                                       ; $5df5: $5f
    inc bc                                        ; $5df6: $03
    rlca                                          ; $5df7: $07
    ld [de], a                                    ; $5df8: $12
    ld [bc], a                                    ; $5df9: $02

jr_0d3_5dfa:
    nop                                           ; $5dfa: $00
    ld e, e                                       ; $5dfb: $5b
    ld bc, $035f                                  ; $5dfc: $01 $5f $03
    rlca                                          ; $5dff: $07
    ld [de], a                                    ; $5e00: $12
    ld [bc], a                                    ; $5e01: $02
    nop                                           ; $5e02: $00
    cp c                                          ; $5e03: $b9
    ld bc, $035f                                  ; $5e04: $01 $5f $03
    ld e, e                                       ; $5e07: $5b
    ld bc, $0025                                  ; $5e08: $01 $25 $00
    cp c                                          ; $5e0b: $b9
    ld bc, $035f                                  ; $5e0c: $01 $5f $03
    ldh a, [rP1]                                  ; $5e0f: $f0 $00
    dec h                                         ; $5e11: $25
    nop                                           ; $5e12: $00
    cp c                                          ; $5e13: $b9
    ld bc, $035f                                  ; $5e14: $01 $5f $03
    db $10                                        ; $5e17: $10
    ld bc, $0002                                  ; $5e18: $01 $02 $00
    cp c                                          ; $5e1b: $b9
    ld bc, $035f                                  ; $5e1c: $01 $5f $03
    db $10                                        ; $5e1f: $10
    ld bc, $0002                                  ; $5e20: $01 $02 $00
    cp c                                          ; $5e23: $b9
    ld bc, $035f                                  ; $5e24: $01 $5f $03
    ld e, e                                       ; $5e27: $5b
    ld bc, $0025                                  ; $5e28: $01 $25 $00
    or [hl]                                       ; $5e2b: $b6
    dec d                                         ; $5e2c: $15
    ld a, d                                       ; $5e2d: $7a
    ld b, d                                       ; $5e2e: $42
    ldh a, [rNR14]                                ; $5e2f: $f0 $14
    ld l, b                                       ; $5e31: $68
    ld [$01b9], sp                                ; $5e32: $08 $b9 $01
    sub $31                                       ; $5e35: $d6 $31
    sbc e                                         ; $5e37: $9b
    ld b, [hl]                                    ; $5e38: $46
    ld [bc], a                                    ; $5e39: $02
    nop                                           ; $5e3a: $00
    cp c                                          ; $5e3b: $b9
    ld bc, $035f                                  ; $5e3c: $01 $5f $03
    sbc e                                         ; $5e3f: $9b
    ld b, [hl]                                    ; $5e40: $46
    ld [bc], a                                    ; $5e41: $02
    nop                                           ; $5e42: $00
    sbc c                                         ; $5e43: $99
    ld bc, $035f                                  ; $5e44: $01 $5f $03
    ld b, [hl]                                    ; $5e47: $46
    inc b                                         ; $5e48: $04
    adc $10                                       ; $5e49: $ce $10
    ld a, e                                       ; $5e4b: $7b
    ld b, d                                       ; $5e4c: $42
    ld [hl], d                                    ; $5e4d: $72
    dec h                                         ; $5e4e: $25
    sbc h                                         ; $5e4f: $9c
    ld c, d                                       ; $5e50: $4a
    ld c, b                                       ; $5e51: $48
    nop                                           ; $5e52: $00
    jr @+$3c                                      ; $5e53: $18 $3a

    ld c, $19                                     ; $5e55: $0e $19
    sbc e                                         ; $5e57: $9b
    ld b, [hl]                                    ; $5e58: $46
    ld [bc], a                                    ; $5e59: $02
    nop                                           ; $5e5a: $00
    ldh a, [rP1]                                  ; $5e5b: $f0 $00
    ld e, a                                       ; $5e5d: $5f
    inc bc                                        ; $5e5e: $03
    cp c                                          ; $5e5f: $b9
    ld bc, $0001                                  ; $5e60: $01 $01 $00
    xor l                                         ; $5e63: $ad
    dec [hl]                                      ; $5e64: $35
    ld e, a                                       ; $5e65: $5f
    inc bc                                        ; $5e66: $03
    ld a, c                                       ; $5e67: $79
    ld bc, $190d                                  ; $5e68: $01 $0d $19
    ld e, c                                       ; $5e6b: $59
    ld a, $d5                                     ; $5e6c: $3e $d5
    ld sp, $469b                                  ; $5e6e: $31 $9b $46
    xor h                                         ; $5e71: $ac
    inc c                                         ; $5e72: $0c
    sub $31                                       ; $5e73: $d6 $31
    sbc e                                         ; $5e75: $9b
    ld b, [hl]                                    ; $5e76: $46
    sbc $4e                                       ; $5e77: $de $4e
    ld [bc], a                                    ; $5e79: $02
    nop                                           ; $5e7a: $00
    sbc c                                         ; $5e7b: $99
    ld bc, $035f                                  ; $5e7c: $01 $5f $03
    ld l, b                                       ; $5e7f: $68
    nop                                           ; $5e80: $00
    ld bc, $7800                                  ; $5e81: $01 $00 $78
    dec b                                         ; $5e84: $05
    ld e, $5b                                     ; $5e85: $1e $5b
    ld e, a                                       ; $5e87: $5f
    inc bc                                        ; $5e88: $03
    ld b, d                                       ; $5e89: $42
    ld [$2991], sp                                ; $5e8a: $08 $91 $29
    ld [$1618], a                                 ; $5e8d: $ea $18 $16
    ld [hl], $85                                  ; $5e90: $36 $85
    inc d                                         ; $5e92: $14
    rla                                           ; $5e93: $17
    ld [hl], $30                                  ; $5e94: $36 $30
    dec e                                         ; $5e96: $1d
    ld e, d                                       ; $5e97: $5a
    ld b, d                                       ; $5e98: $42
    ld [bc], a                                    ; $5e99: $02
    nop                                           ; $5e9a: $00
    ld a, c                                       ; $5e9b: $79
    ld bc, $035f                                  ; $5e9c: $01 $5f $03
    dec h                                         ; $5e9f: $25
    nop                                           ; $5ea0: $00
    ld bc, $1600                                  ; $5ea1: $01 $00 $16
    ld a, [hl-]                                   ; $5ea4: $3a
    ld e, c                                       ; $5ea5: $59
    ld bc, $035f                                  ; $5ea6: $01 $5f $03
    ld b, d                                       ; $5ea9: $42
    ld [$4210], sp                                ; $5eaa: $08 $10 $42
    ld e, d                                       ; $5ead: $5a
    ld a, $b3                                     ; $5eae: $3e $b3
    ld sp, $1084                                  ; $5eb0: $31 $84 $10
    jr nc, @+$23                                  ; $5eb3: $30 $21

    push af                                       ; $5eb5: $f5
    dec [hl]                                      ; $5eb6: $35
    daa                                           ; $5eb7: $27
    nop                                           ; $5eb8: $00
    ld [bc], a                                    ; $5eb9: $02
    nop                                           ; $5eba: $00
    ld a, c                                       ; $5ebb: $79
    ld bc, $035f                                  ; $5ebc: $01 $5f $03
    xor [hl]                                      ; $5ebf: $ae
    nop                                           ; $5ec0: $00
    ld bc, $5900                                  ; $5ec1: $01 $00 $59
    ld bc, $3e13                                  ; $5ec4: $01 $13 $3e
    ld e, a                                       ; $5ec7: $5f
    inc bc                                        ; $5ec8: $03
    ld bc, $7000                                  ; $5ec9: $01 $00 $70
    add hl, hl                                    ; $5ecc: $29
    ld d, a                                       ; $5ecd: $57
    ld [hl-], a                                   ; $5ece: $32
    dec sp                                        ; $5ecf: $3b
    ld h, e                                       ; $5ed0: $63
    nop                                           ; $5ed1: $00
    nop                                           ; $5ed2: $00
    cp l                                          ; $5ed3: $bd
    ld [hl], a                                    ; $5ed4: $77
    jr nc, @+$1f                                  ; $5ed5: $30 $1d

    add [hl]                                      ; $5ed7: $86
    nop                                           ; $5ed8: $00
    ld [bc], a                                    ; $5ed9: $02
    nop                                           ; $5eda: $00
    ld e, c                                       ; $5edb: $59
    ld bc, $035f                                  ; $5edc: $01 $5f $03
    ld a, c                                       ; $5edf: $79
    ld bc, $0002                                  ; $5ee0: $01 $02 $00
    ld l, e                                       ; $5ee3: $6b
    dec l                                         ; $5ee4: $2d
    jr c, jr_0d3_5ee8                             ; $5ee5: $38 $01

    ld e, a                                       ; $5ee7: $5f

jr_0d3_5ee8:
    inc bc                                        ; $5ee8: $03
    dec h                                         ; $5ee9: $25
    nop                                           ; $5eea: $00
    or l                                          ; $5eeb: $b5
    add hl, hl                                    ; $5eec: $29
    xor $14                                       ; $5eed: $ee $14
    ld e, d                                       ; $5eef: $5a
    ld b, d                                       ; $5ef0: $42
    daa                                           ; $5ef1: $27
    nop                                           ; $5ef2: $00
    or $31                                        ; $5ef3: $f6 $31
    adc $10                                       ; $5ef5: $ce $10
    ld e, d                                       ; $5ef7: $5a
    ld a, $02                                     ; $5ef8: $3e $02
    nop                                           ; $5efa: $00
    add hl, sp                                    ; $5efb: $39
    ld bc, $035f                                  ; $5efc: $01 $5f $03
    ld e, c                                       ; $5eff: $59
    ld bc, $0002                                  ; $5f00: $01 $02 $00
    rst $28                                       ; $5f03: $ef
    dec a                                         ; $5f04: $3d
    add hl, sp                                    ; $5f05: $39
    ld bc, $035f                                  ; $5f06: $01 $5f $03
    inc h                                         ; $5f09: $24
    inc b                                         ; $5f0a: $04
    sub h                                         ; $5f0b: $94
    dec h                                         ; $5f0c: $25
    cp l                                          ; $5f0d: $bd
    ld c, [hl]                                    ; $5f0e: $4e
    jr jr_0d3_5f4b                                ; $5f0f: $18 $3a

    ld b, a                                       ; $5f11: $47
    inc b                                         ; $5f12: $04
    sbc h                                         ; $5f13: $9c
    ld b, [hl]                                    ; $5f14: $46
    rst $38                                       ; $5f15: $ff
    ld a, a                                       ; $5f16: $7f
    ld c, $1d                                     ; $5f17: $0e $1d
    ld [bc], a                                    ; $5f19: $02
    nop                                           ; $5f1a: $00
    add hl, sp                                    ; $5f1b: $39
    ld bc, $035f                                  ; $5f1c: $01 $5f $03
    adc h                                         ; $5f1f: $8c
    nop                                           ; $5f20: $00
    ld [bc], a                                    ; $5f21: $02

Call_0d3_5f22:
    nop                                           ; $5f22: $00
    db $10                                        ; $5f23: $10
    ld b, d                                       ; $5f24: $42
    add hl, de                                    ; $5f25: $19
    ld bc, $033e                                  ; $5f26: $01 $3e $03
    inc h                                         ; $5f29: $24
    inc b                                         ; $5f2a: $04
    sub l                                         ; $5f2b: $95

Call_0d3_5f2c:
    dec h                                         ; $5f2c: $25

Call_0d3_5f2d:
    ld a, e                                       ; $5f2d: $7b
    ld b, d                                       ; $5f2e: $42
    cpl                                           ; $5f2f: $2f
    dec e                                         ; $5f30: $1d

Call_0d3_5f31:
    ld b, a                                       ; $5f31: $47
    inc b                                         ; $5f32: $04
    ld [hl], c                                    ; $5f33: $71
    dec h                                         ; $5f34: $25

Call_0d3_5f35:
    dec [hl]                                      ; $5f35: $35
    ld b, d                                       ; $5f36: $42
    db $dd                                        ; $5f37: $dd
    ld c, [hl]                                    ; $5f38: $4e
    ld [bc], a                                    ; $5f39: $02
    nop                                           ; $5f3a: $00
    add hl, de                                    ; $5f3b: $19
    ld bc, $035f                                  ; $5f3c: $01 $5f $03
    ld h, $00                                     ; $5f3f: $26 $00

Call_0d3_5f41:
    ld [bc], a                                    ; $5f41: $02
    nop                                           ; $5f42: $00
    dec l                                         ; $5f43: $2d
    dec e                                         ; $5f44: $1d

Jump_0d3_5f45:
    ld a, [de]                                    ; $5f45: $1a
    ld bc, $035f                                  ; $5f46: $01 $5f $03

Jump_0d3_5f49:
    ld b, [hl]                                    ; $5f49: $46
    inc b                                         ; $5f4a: $04

jr_0d3_5f4b:
    ld [hl], e                                    ; $5f4b: $73
    dec h                                         ; $5f4c: $25
    cp [hl]                                       ; $5f4d: $be
    ld c, d                                       ; $5f4e: $4a
    jr c, jr_0d3_5f8b                             ; $5f4f: $38 $3a

    ld b, a                                       ; $5f51: $47
    nop                                           ; $5f52: $00
    rst $30                                       ; $5f53: $f7
    dec [hl]                                      ; $5f54: $35
    ld a, [bc]                                    ; $5f55: $0a

Call_0d3_5f56:
    dec e                                         ; $5f56: $1d
    rst $38                                       ; $5f57: $ff
    ld d, d                                       ; $5f58: $52
    ld [bc], a                                    ; $5f59: $02
    nop                                           ; $5f5a: $00
    ld sp, hl                                     ; $5f5b: $f9

Jump_0d3_5f5c:
    nop                                           ; $5f5c: $00
    ld e, a                                       ; $5f5d: $5f
    inc bc                                        ; $5f5e: $03
    adc l                                         ; $5f5f: $8d
    nop                                           ; $5f60: $00
    ld bc, $0d00                                  ; $5f61: $01 $00 $0d
    add hl, de                                    ; $5f64: $19
    ld e, l                                       ; $5f65: $5d
    ld [bc], a                                    ; $5f66: $02
    and a                                         ; $5f67: $a7
    db $10                                        ; $5f68: $10
    dec h                                         ; $5f69: $25

Call_0d3_5f6a:
    nop                                           ; $5f6a: $00
    jr jr_0d3_5fa7                                ; $5f6b: $18 $3a

Call_0d3_5f6d:
    xor d                                         ; $5f6d: $aa
    db $10                                        ; $5f6e: $10
    cp l                                          ; $5f6f: $bd
    ld c, d                                       ; $5f70: $4a
    ld h, l                                       ; $5f71: $65
    ld [$2d6b], sp                                ; $5f72: $08 $6b $2d
    rla                                           ; $5f75: $17
    ld [hl], $72                                  ; $5f76: $36 $72
    ld hl, $0002                                  ; $5f78: $21 $02 $00
    ld sp, hl                                     ; $5f7b: $f9
    nop                                           ; $5f7c: $00
    ld e, a                                       ; $5f7d: $5f
    inc bc                                        ; $5f7e: $03
    ld [hl], d                                    ; $5f7f: $72
    ld hl, $0002                                  ; $5f80: $21 $02 $00
    ld hl, sp+$00                                 ; $5f83: $f8 $00
    db $10                                        ; $5f85: $10
    ld b, d                                       ; $5f86: $42
    dec e                                         ; $5f87: $1d
    inc bc                                        ; $5f88: $03
    dec h                                         ; $5f89: $25
    nop                                           ; $5f8a: $00

jr_0d3_5f8b:
    rl h                                          ; $5f8b: $cb $14
    ld [hl], d                                    ; $5f8d: $72
    ld hl, $0caa                                  ; $5f8e: $21 $aa $0c
    ld b, l                                       ; $5f91: $45
    inc b                                         ; $5f92: $04
    or c                                          ; $5f93: $b1
    ld sp, $00b9                                  ; $5f94: $31 $b9 $00
    jp z, Jump_000_0214                           ; $5f97: $ca $14 $02

    nop                                           ; $5f9a: $00
    reti                                          ; $5f9b: $d9


    nop                                           ; $5f9c: $00
    ld e, a                                       ; $5f9d: $5f
    inc bc                                        ; $5f9e: $03
    ld c, b                                       ; $5f9f: $48
    nop                                           ; $5fa0: $00
    ld [bc], a                                    ; $5fa1: $02
    nop                                           ; $5fa2: $00
    call nc, Call_000_3100                        ; $5fa3: $d4 $00 $31
    ld b, [hl]                                    ; $5fa6: $46

jr_0d3_5fa7:
    ld a, $03                                     ; $5fa7: $3e $03
    nop                                           ; $5fa9: $00
    nop                                           ; $5faa: $00
    dec c                                         ; $5fab: $0d
    add hl, de                                    ; $5fac: $19
    db $d3                                        ; $5fad: $d3
    add hl, hl                                    ; $5fae: $29
    ld h, $00                                     ; $5faf: $26 $00
    dec h                                         ; $5fb1: $25
    nop                                           ; $5fb2: $00
    xor a                                         ; $5fb3: $af
    nop                                           ; $5fb4: $00
    add $18                                       ; $5fb5: $c6 $18
    cp c                                          ; $5fb7: $b9
    nop                                           ; $5fb8: $00
    ld bc, $b900                                  ; $5fb9: $01 $00 $b9
    nop                                           ; $5fbc: $00
    ld e, a                                       ; $5fbd: $5f
    inc bc                                        ; $5fbe: $03
    reti                                          ; $5fbf: $d9


    nop                                           ; $5fc0: $00
    ld bc, $fa00                                  ; $5fc1: $01 $00 $fa
    nop                                           ; $5fc4: $00
    adc b                                         ; $5fc5: $88
    ld [$035f], sp                                ; $5fc6: $08 $5f $03
    nop                                           ; $5fc9: $00
    nop                                           ; $5fca: $00
    ld c, $15                                     ; $5fcb: $0e $15
    or c                                          ; $5fcd: $b1
    dec e                                         ; $5fce: $1d
    adc d                                         ; $5fcf: $8a
    ld [$0024], sp                                ; $5fd0: $08 $24 $00
    cp c                                          ; $5fd3: $b9
    nop                                           ; $5fd4: $00
    rst $20                                       ; $5fd5: $e7
    inc e                                         ; $5fd6: $1c
    xor a                                         ; $5fd7: $af
    nop                                           ; $5fd8: $00
    ld [bc], a                                    ; $5fd9: $02
    nop                                           ; $5fda: $00
    cp c                                          ; $5fdb: $b9
    nop                                           ; $5fdc: $00
    ld e, a                                       ; $5fdd: $5f
    inc bc                                        ; $5fde: $03
    xor a                                         ; $5fdf: $af
    nop                                           ; $5fe0: $00
    ld [bc], a                                    ; $5fe1: $02
    nop                                           ; $5fe2: $00
    ld e, e                                       ; $5fe3: $5b
    ld bc, $035f                                  ; $5fe4: $01 $5f $03
    xor a                                         ; $5fe7: $af
    nop                                           ; $5fe8: $00
    ld e, e                                       ; $5fe9: $5b
    ld bc, $035f                                  ; $5fea: $01 $5f $03
    ld e, a                                       ; $5fed: $5f
    inc bc                                        ; $5fee: $03
    xor a                                         ; $5fef: $af
    nop                                           ; $5ff0: $00
    ld e, e                                       ; $5ff1: $5b
    ld bc, $035f                                  ; $5ff2: $01 $5f $03
    ld e, a                                       ; $5ff5: $5f
    inc bc                                        ; $5ff6: $03
    xor a                                         ; $5ff7: $af
    nop                                           ; $5ff8: $00
    ld [bc], a                                    ; $5ff9: $02
    nop                                           ; $5ffa: $00
    ld e, e                                       ; $5ffb: $5b
    ld bc, $035f                                  ; $5ffc: $01 $5f $03
    xor a                                         ; $5fff: $af
    nop                                           ; $6000: $00
    ld bc, $5b00                                  ; $6001: $01 $00 $5b
    ld bc, $5cca                                  ; $6004: $01 $ca $5c
    ld e, a                                       ; $6007: $5f
    inc bc                                        ; $6008: $03
    jp z, Jump_0d3_5f5c                           ; $6009: $ca $5c $5f

    inc bc                                        ; $600c: $03
    ld [$5f5c], a                                 ; $600d: $ea $5c $5f
    inc bc                                        ; $6010: $03
    jp z, Jump_0d3_5f5c                           ; $6011: $ca $5c $5f

    inc bc                                        ; $6014: $03
    ld [$5f5c], a                                 ; $6015: $ea $5c $5f
    inc bc                                        ; $6018: $03
    nop                                           ; $6019: $00
    nop                                           ; $601a: $00
    ld e, a                                       ; $601b: $5f
    inc bc                                        ; $601c: $03
    jp z, Jump_000_025c                           ; $601d: $ca $5c $02

    nop                                           ; $6020: $00
    ld bc, $ea00                                  ; $6021: $01 $00 $ea
    ld e, h                                       ; $6024: $5c
    dec de                                        ; $6025: $1b
    ld b, $1c                                     ; $6026: $06 $1c
    ld d, a                                       ; $6028: $57
    ld [$0b5c], a                                 ; $6029: $ea $5c $0b
    ld e, l                                       ; $602c: $5d
    dec bc                                        ; $602d: $0b
    ld h, c                                       ; $602e: $61
    inc e                                         ; $602f: $1c
    ld d, a                                       ; $6030: $57
    ld [$0b5c], a                                 ; $6031: $ea $5c $0b
    ld e, l                                       ; $6034: $5d
    dec bc                                        ; $6035: $0b
    ld h, c                                       ; $6036: $61
    dec hl                                        ; $6037: $2b
    ld h, c                                       ; $6038: $61
    nop                                           ; $6039: $00
    nop                                           ; $603a: $00
    ld [$bb5c], a                                 ; $603b: $ea $5c $bb
    ld a, [bc]                                    ; $603e: $0a
    inc e                                         ; $603f: $1c
    ld d, a                                       ; $6040: $57
    ld [bc], a                                    ; $6041: $02
    nop                                           ; $6042: $00
    sub a                                         ; $6043: $97
    dec d                                         ; $6044: $15
    inc de                                        ; $6045: $13
    ld e, d                                       ; $6046: $5a
    ld e, a                                       ; $6047: $5f
    inc bc                                        ; $6048: $03
    nop                                           ; $6049: $00
    nop                                           ; $604a: $00
    dec hl                                        ; $604b: $2b
    ld h, c                                       ; $604c: $61
    inc e                                         ; $604d: $1c
    ld d, a                                       ; $604e: $57
    inc l                                         ; $604f: $2c
    ld h, c                                       ; $6050: $61
    nop                                           ; $6051: $00
    nop                                           ; $6052: $00
    dec hl                                        ; $6053: $2b
    ld h, c                                       ; $6054: $61
    inc e                                         ; $6055: $1c
    ld d, a                                       ; $6056: $57
    inc l                                         ; $6057: $2c
    ld h, c                                       ; $6058: $61
    ld h, l                                       ; $6059: $65
    ld [$612b], sp                                ; $605a: $08 $2b $61
    ld d, $2e                                     ; $605d: $16 $2e
    ld e, a                                       ; $605f: $5f
    inc bc                                        ; $6060: $03
    ld [bc], a                                    ; $6061: $02
    nop                                           ; $6062: $00
    sub a                                         ; $6063: $97
    dec d                                         ; $6064: $15
    inc [hl]                                      ; $6065: $34
    ld e, d                                       ; $6066: $5a
    ld e, a                                       ; $6067: $5f
    inc bc                                        ; $6068: $03
    nop                                           ; $6069: $00
    nop                                           ; $606a: $00
    ld c, h                                       ; $606b: $4c
    ld h, c                                       ; $606c: $61
    inc e                                         ; $606d: $1c
    ld d, a                                       ; $606e: $57
    jp z, Jump_000_2210                           ; $606f: $ca $10 $22

    inc b                                         ; $6072: $04
    ld c, h                                       ; $6073: $4c
    ld h, c                                       ; $6074: $61
    push de                                       ; $6075: $d5
    dec h                                         ; $6076: $25
    inc e                                         ; $6077: $1c
    ld d, a                                       ; $6078: $57
    ld b, h                                       ; $6079: $44
    inc b                                         ; $607a: $04
    ld c, h                                       ; $607b: $4c
    ld h, c                                       ; $607c: $61
    scf                                           ; $607d: $37
    ld [hl], $5f                                  ; $607e: $36 $5f
    inc bc                                        ; $6080: $03
    ld [bc], a                                    ; $6081: $02
    nop                                           ; $6082: $00
    halt                                          ; $6083: $76
    ld de, $5e13                                  ; $6084: $11 $13 $5e
    ld e, a                                       ; $6087: $5f
    inc bc                                        ; $6088: $03
    nop                                           ; $6089: $00
    nop                                           ; $608a: $00
    or e                                          ; $608b: $b3
    dec [hl]                                      ; $608c: $35
    inc e                                         ; $608d: $1c
    ld d, a                                       ; $608e: $57
    jp z, RST_10                                  ; $608f: $ca $10 $00

    nop                                           ; $6092: $00
    call nc, Call_000_1c35                        ; $6093: $d4 $35 $1c
    ld d, a                                       ; $6096: $57
    jp z, Jump_000_2210                           ; $6097: $ca $10 $22

    nop                                           ; $609a: $00
    ld l, l                                       ; $609b: $6d
    ld h, l                                       ; $609c: $65
    ld d, a                                       ; $609d: $57
    ld a, [hl-]                                   ; $609e: $3a
    ld e, a                                       ; $609f: $5f
    inc bc                                        ; $60a0: $03
    ld [bc], a                                    ; $60a1: $02
    nop                                           ; $60a2: $00
    xor [hl]                                      ; $60a3: $ae
    ld h, l                                       ; $60a4: $65
    ld e, b                                       ; $60a5: $58
    add hl, bc                                    ; $60a6: $09
    ld e, a                                       ; $60a7: $5f
    inc bc                                        ; $60a8: $03
    nop                                           ; $60a9: $00
    nop                                           ; $60aa: $00
    sub e                                         ; $60ab: $93
    ld hl, $52fc                                  ; $60ac: $21 $fc $52
    jp z, RST_10                                  ; $60af: $ca $10 $00

    nop                                           ; $60b2: $00
    sub e                                         ; $60b3: $93
    dec e                                         ; $60b4: $1d
    db $db                                        ; $60b5: $db
    ld c, [hl]                                    ; $60b6: $4e
    jp z, Jump_000_2210                           ; $60b7: $ca $10 $22

    nop                                           ; $60ba: $00
    xor [hl]                                      ; $60bb: $ae
    ld h, l                                       ; $60bc: $65
    rla                                           ; $60bd: $17
    ld l, $5f                                     ; $60be: $2e $5f
    inc bc                                        ; $60c0: $03
    ld bc, $cf00                                  ; $60c1: $01 $00 $cf
    ld l, c                                       ; $60c4: $69
    ld e, e                                       ; $60c5: $5b
    ld bc, $035f                                  ; $60c6: $01 $5f $03
    ld b, e                                       ; $60c9: $43
    inc b                                         ; $60ca: $04
    jp nc, $bb0d                                  ; $60cb: $d2 $0d $bb

    ld b, [hl]                                    ; $60ce: $46
    ld e, a                                       ; $60cf: $5f
    inc bc                                        ; $60d0: $03
    ld b, e                                       ; $60d1: $43
    inc b                                         ; $60d2: $04
    ld a, [c]                                     ; $60d3: $f2
    add hl, bc                                    ; $60d4: $09
    cp e                                          ; $60d5: $bb
    ld b, [hl]                                    ; $60d6: $46
    ld e, a                                       ; $60d7: $5f
    inc bc                                        ; $60d8: $03
    ld bc, $cf00                                  ; $60d9: $01 $00 $cf
    ld l, c                                       ; $60dc: $69
    ld e, a                                       ; $60dd: $5f
    inc bc                                        ; $60de: $03
    ldh a, [rBCPD]                                ; $60df: $f0 $69
    ld [bc], a                                    ; $60e1: $02
    nop                                           ; $60e2: $00
    ldh a, [rBCPD]                                ; $60e3: $f0 $69
    ld [hl], a                                    ; $60e5: $77
    dec c                                         ; $60e6: $0d
    ld e, a                                       ; $60e7: $5f
    inc bc                                        ; $60e8: $03
    ld bc, $b200                                  ; $60e9: $01 $00 $b2
    ld de, $7fff                                  ; $60ec: $11 $ff $7f
    db $fd                                        ; $60ef: $fd
    ld [hl+], a                                   ; $60f0: $22
    ld bc, $b200                                  ; $60f1: $01 $00 $b2
    ld de, $7fff                                  ; $60f4: $11 $ff $7f
    db $fd                                        ; $60f7: $fd
    ld [hl+], a                                   ; $60f8: $22
    nop                                           ; $60f9: $00
    nop                                           ; $60fa: $00
    ldh a, [$6d]                                  ; $60fb: $f0 $6d
    sub e                                         ; $60fd: $93
    dec e                                         ; $60fe: $1d
    ld e, a                                       ; $60ff: $5f
    inc bc                                        ; $6100: $03
    ld [bc], a                                    ; $6101: $02
    nop                                           ; $6102: $00
    halt                                          ; $6103: $76
    ld de, $6633                                  ; $6104: $11 $33 $66
    ld e, a                                       ; $6107: $5f
    inc bc                                        ; $6108: $03
    ld hl, $5400                                  ; $6109: $21 $00 $54
    add hl, de                                    ; $610c: $19
    ei                                            ; $610d: $fb
    ld c, [hl]                                    ; $610e: $4e
    rst $30                                       ; $610f: $f7
    ld sp, $0000                                  ; $6110: $31 $00 $00
    sub h                                         ; $6113: $94
    dec e                                         ; $6114: $1d
    ei                                            ; $6115: $fb
    ld c, [hl]                                    ; $6116: $4e
    jp z, RST_10                                  ; $6117: $ca $10 $00

    nop                                           ; $611a: $00
    ld [hl-], a                                   ; $611b: $32
    ld h, [hl]                                    ; $611c: $66
    ld e, a                                       ; $611d: $5f
    inc bc                                        ; $611e: $03
    jp z, $0110                                   ; $611f: $ca $10 $01

    nop                                           ; $6122: $00
    ld e, b                                       ; $6123: $58
    add hl, bc                                    ; $6124: $09
    ld d, e                                       ; $6125: $53
    ld l, d                                       ; $6126: $6a
    ld e, a                                       ; $6127: $5f
    inc bc                                        ; $6128: $03
    nop                                           ; $6129: $00
    nop                                           ; $612a: $00
    rla                                           ; $612b: $17
    ld l, $ca                                     ; $612c: $2e $ca
    db $10                                        ; $612e: $10
    cp e                                          ; $612f: $bb
    ld b, [hl]                                    ; $6130: $46
    nop                                           ; $6131: $00
    nop                                           ; $6132: $00
    push de                                       ; $6133: $d5
    dec h                                         ; $6134: $25
    jp z, $bb10                                   ; $6135: $ca $10 $bb

    ld b, [hl]                                    ; $6138: $46
    nop                                           ; $6139: $00
    nop                                           ; $613a: $00
    ld sp, $5f6e                                  ; $613b: $31 $6e $5f
    inc bc                                        ; $613e: $03
    jp z, $0110                                   ; $613f: $ca $10 $01

    nop                                           ; $6142: $00
    ld sp, $5b6e                                  ; $6143: $31 $6e $5b
    ld bc, $035f                                  ; $6146: $01 $5f $03
    nop                                           ; $6149: $00
    nop                                           ; $614a: $00
    ld sp, $ca6e                                  ; $614b: $31 $6e $ca
    db $10                                        ; $614e: $10
    rla                                           ; $614f: $17
    ld l, $00                                     ; $6150: $2e $00
    nop                                           ; $6152: $00
    ld sp, $ca6e                                  ; $6153: $31 $6e $ca
    db $10                                        ; $6156: $10
    rla                                           ; $6157: $17
    ld l, $00                                     ; $6158: $2e $00
    nop                                           ; $615a: $00
    ld sp, $5f6e                                  ; $615b: $31 $6e $5f
    inc bc                                        ; $615e: $03
    ld [bc], a                                    ; $615f: $02
    nop                                           ; $6160: $00
    ld bc, $3100                                  ; $6161: $01 $00 $31
    ld l, [hl]                                    ; $6164: $6e
    ld e, e                                       ; $6165: $5b
    ld bc, $035f                                  ; $6166: $01 $5f $03
    ld [hl+], a                                   ; $6169: $22
    inc b                                         ; $616a: $04
    ld sp, $346e                                  ; $616b: $31 $6e $34
    add hl, de                                    ; $616e: $19
    ld a, c                                       ; $616f: $79
    ld a, [hl-]                                   ; $6170: $3a
    nop                                           ; $6171: $00
    nop                                           ; $6172: $00
    ld sp, $376e                                  ; $6173: $31 $6e $37
    ld [hl-], a                                   ; $6176: $32
    xor [hl]                                      ; $6177: $ae
    inc d                                         ; $6178: $14
    nop                                           ; $6179: $00
    nop                                           ; $617a: $00
    ld sp, $5f6e                                  ; $617b: $31 $6e $5f
    inc bc                                        ; $617e: $03
    ld [bc], a                                    ; $617f: $02
    nop                                           ; $6180: $00
    ld bc, $3100                                  ; $6181: $01 $00 $31
    ld l, [hl]                                    ; $6184: $6e
    ld e, e                                       ; $6185: $5b
    ld bc, $035f                                  ; $6186: $01 $5f $03
    nop                                           ; $6189: $00
    nop                                           ; $618a: $00
    ld sp, $796e                                  ; $618b: $31 $6e $79
    ld a, [hl-]                                   ; $618e: $3a
    ld c, a                                       ; $618f: $4f
    add hl, de                                    ; $6190: $19
    nop                                           ; $6191: $00
    nop                                           ; $6192: $00
    ld sp, $4f6e                                  ; $6193: $31 $6e $4f
    add hl, de                                    ; $6196: $19
    ld a, c                                       ; $6197: $79
    ld a, [hl-]                                   ; $6198: $3a
    nop                                           ; $6199: $00
    nop                                           ; $619a: $00
    ld sp, $5f6e                                  ; $619b: $31 $6e $5f
    inc bc                                        ; $619e: $03
    ld [bc], a                                    ; $619f: $02
    nop                                           ; $61a0: $00
    ld bc, $3100                                  ; $61a1: $01 $00 $31
    ld l, [hl]                                    ; $61a4: $6e
    ld e, e                                       ; $61a5: $5b
    ld bc, $035f                                  ; $61a6: $01 $5f $03
    nop                                           ; $61a9: $00
    nop                                           ; $61aa: $00
    push de                                       ; $61ab: $d5
    dec h                                         ; $61ac: $25
    sub [hl]                                      ; $61ad: $96
    ld h, d                                       ; $61ae: $62
    jp z, RST_10                                  ; $61af: $ca $10 $00

    nop                                           ; $61b2: $00
    ld sp, $ec6e                                  ; $61b3: $31 $6e $ec
    db $10                                        ; $61b6: $10
    cp e                                          ; $61b7: $bb
    ld b, [hl]                                    ; $61b8: $46
    ld [bc], a                                    ; $61b9: $02
    nop                                           ; $61ba: $00
    ld sp, $5f6e                                  ; $61bb: $31 $6e $5f
    inc bc                                        ; $61be: $03
    cp e                                          ; $61bf: $bb
    ld b, [hl]                                    ; $61c0: $46
    ld [bc], a                                    ; $61c1: $02
    nop                                           ; $61c2: $00
    ld sp, $5b6e                                  ; $61c3: $31 $6e $5b
    ld bc, $035f                                  ; $61c6: $01 $5f $03
    nop                                           ; $61c9: $00
    nop                                           ; $61ca: $00
    sbc d                                         ; $61cb: $9a
    ld b, d                                       ; $61cc: $42
    jp z, Jump_0d3_5010                           ; $61cd: $ca $10 $50

    add hl, de                                    ; $61d0: $19
    nop                                           ; $61d1: $00
    nop                                           ; $61d2: $00
    sbc d                                         ; $61d3: $9a
    ld b, d                                       ; $61d4: $42
    ld c, a                                       ; $61d5: $4f
    add hl, de                                    ; $61d6: $19
    jp z, $0110                                   ; $61d7: $ca $10 $01

    nop                                           ; $61da: $00
    ld sp, $176e                                  ; $61db: $31 $6e $17
    ld l, $5f                                     ; $61de: $2e $5f
    inc bc                                        ; $61e0: $03
    ld [bc], a                                    ; $61e1: $02
    nop                                           ; $61e2: $00
    ld e, e                                       ; $61e3: $5b
    ld bc, $035f                                  ; $61e4: $01 $5f $03
    ld e, a                                       ; $61e7: $5f
    inc bc                                        ; $61e8: $03
    ld e, e                                       ; $61e9: $5b
    ld bc, $035f                                  ; $61ea: $01 $5f $03
    ld e, a                                       ; $61ed: $5f
    inc bc                                        ; $61ee: $03
    ld e, a                                       ; $61ef: $5f
    inc bc                                        ; $61f0: $03
    ld e, e                                       ; $61f1: $5b
    ld bc, $035f                                  ; $61f2: $01 $5f $03
    ld e, a                                       ; $61f5: $5f
    inc bc                                        ; $61f6: $03
    ld e, a                                       ; $61f7: $5f
    inc bc                                        ; $61f8: $03
    ld [bc], a                                    ; $61f9: $02
    nop                                           ; $61fa: $00
    ld e, e                                       ; $61fb: $5b
    ld bc, $035f                                  ; $61fc: $01 $5f $03
    ld e, a                                       ; $61ff: $5f
    inc bc                                        ; $6200: $03
    ld bc, $5b00                                  ; $6201: $01 $00 $5b
    ld bc, $3e42                                  ; $6204: $01 $42 $3e
    ld e, a                                       ; $6207: $5f
    inc bc                                        ; $6208: $03
    nop                                           ; $6209: $00
    inc b                                         ; $620a: $04
    ld e, a                                       ; $620b: $5f
    inc bc                                        ; $620c: $03
    add hl, hl                                    ; $620d: $29
    ld e, e                                       ; $620e: $5b
    ld c, c                                       ; $620f: $49
    ld e, a                                       ; $6210: $5f
    and $52                                       ; $6211: $e6 $52
    ld e, a                                       ; $6213: $5f
    inc bc                                        ; $6214: $03
    jr z, jr_0d3_6272                             ; $6215: $28 $5b

    ld c, c                                       ; $6217: $49
    ld e, a                                       ; $6218: $5f
    add b                                         ; $6219: $80
    db $10                                        ; $621a: $10
    ld e, a                                       ; $621b: $5f
    inc bc                                        ; $621c: $03
    ld [bc], a                                    ; $621d: $02
    ld a, [hl-]                                   ; $621e: $3a
    ld [bc], a                                    ; $621f: $02
    nop                                           ; $6220: $00
    ld bc, $0200                                  ; $6221: $01 $00 $02
    ld a, [hl-]                                   ; $6224: $3a
    ld e, l                                       ; $6225: $5d

jr_0d3_6226:
    ld [bc], a                                    ; $6226: $02
    ld c, c                                       ; $6227: $49
    ld e, a                                       ; $6228: $5f
    nop                                           ; $6229: $00
    inc b                                         ; $622a: $04
    adc e                                         ; $622b: $8b
    ld h, a                                       ; $622c: $67
    db $e4                                        ; $622d: $e4
    jr jr_0d3_6226                                ; $622e: $18 $f6

    ld e, [hl]                                    ; $6230: $5e
    nop                                           ; $6231: $00
    inc b                                         ; $6232: $04
    xor $3d                                       ; $6233: $ee $3d
    ld c, h                                       ; $6235: $4c
    ld h, e                                       ; $6236: $63
    db $e4                                        ; $6237: $e4
    jr @+$42                                      ; $6238: $18 $40

    ld [$52c7], sp                                ; $623a: $08 $c7 $52
    ld e, a                                       ; $623d: $5f
    inc bc                                        ; $623e: $03
    jr nz, @+$23                                  ; $623f: $20 $21

    ld bc, $2100                                  ; $6241: $01 $00 $21
    ld a, $5d                                     ; $6244: $3e $5d
    ld [bc], a                                    ; $6246: $02
    jr z, jr_0d3_62a4                             ; $6247: $28 $5b

    nop                                           ; $6249: $00
    inc b                                         ; $624a: $04
    xor $3d                                       ; $624b: $ee $3d
    db $e4                                        ; $624d: $e4

jr_0d3_624e:
    jr jr_0d3_6278                                ; $624e: $18 $28

    ld e, e                                       ; $6250: $5b
    nop                                           ; $6251: $00
    inc b                                         ; $6252: $04
    xor $3d                                       ; $6253: $ee $3d
    db $e4                                        ; $6255: $e4
    jr jr_0d3_624e                                ; $6256: $18 $f6

    ld e, [hl]                                    ; $6258: $5e
    ld bc, $0800                                  ; $6259: $01 $00 $08
    ld d, a                                       ; $625c: $57
    ld e, a                                       ; $625d: $5f
    inc bc                                        ; $625e: $03
    add b                                         ; $625f: $80
    dec l                                         ; $6260: $2d
    ld bc, $8300                                  ; $6261: $01 $00 $83
    ld b, [hl]                                    ; $6264: $46
    ld e, l                                       ; $6265: $5d
    ld [bc], a                                    ; $6266: $02
    ld l, d                                       ; $6267: $6a
    ld h, e                                       ; $6268: $63
    nop                                           ; $6269: $00
    inc b                                         ; $626a: $04
    xor $3d                                       ; $626b: $ee $3d
    jp $f618                                      ; $626d: $c3 $18 $f6


    ld e, [hl]                                    ; $6270: $5e
    add d                                         ; $6271: $82

jr_0d3_6272:
    db $10                                        ; $6272: $10
    xor [hl]                                      ; $6273: $ae
    ld a, d                                       ; $6274: $7a
    dec hl                                        ; $6275: $2b
    dec a                                         ; $6276: $3d
    ld [hl], a                                    ; $6277: $77

jr_0d3_6278:
    ld a, e                                       ; $6278: $7b
    ld hl, $8304                                  ; $6279: $21 $04 $83
    ld b, [hl]                                    ; $627c: $46
    ld e, a                                       ; $627d: $5f
    inc bc                                        ; $627e: $03
    ld c, l                                       ; $627f: $4d

jr_0d3_6280:
    ld h, e                                       ; $6280: $63
    ld bc, $2d00                                  ; $6281: $01 $00 $2d
    ld e, a                                       ; $6284: $5f
    ld e, l                                       ; $6285: $5d
    ld [bc], a                                    ; $6286: $02
    adc b                                         ; $6287: $88
    inc a                                         ; $6288: $3c
    nop                                           ; $6289: $00
    inc b                                         ; $628a: $04
    adc l                                         ; $628b: $8d
    ld a, d                                       ; $628c: $7a
    ld d, l                                       ; $628d: $55
    ld a, e                                       ; $628e: $7b
    and d                                         ; $628f: $a2
    inc e                                         ; $6290: $1c
    and d                                         ; $6291: $a2
    inc e                                         ; $6292: $1c
    xor [hl]                                      ; $6293: $ae
    ld a, d                                       ; $6294: $7a
    ret                                           ; $6295: $c9


    inc a                                         ; $6296: $3c
    ld d, [hl]                                    ; $6297: $56
    ld [hl], e                                    ; $6298: $73
    inc hl                                        ; $6299: $23
    db $10                                        ; $629a: $10
    add a                                         ; $629b: $87
    ld c, d                                       ; $629c: $4a
    ld e, a                                       ; $629d: $5f
    inc bc                                        ; $629e: $03
    ld [hl], c                                    ; $629f: $71
    ld l, a                                       ; $62a0: $6f
    ld bc, $3400                                  ; $62a1: $01 $00 $34

jr_0d3_62a4:
    ld a, e                                       ; $62a4: $7b
    ld e, l                                       ; $62a5: $5d
    ld [bc], a                                    ; $62a6: $02
    add h                                         ; $62a7: $84
    inc l                                         ; $62a8: $2c
    nop                                           ; $62a9: $00
    inc b                                         ; $62aa: $04
    xor [hl]                                      ; $62ab: $ae
    ld a, d                                       ; $62ac: $7a
    dec hl                                        ; $62ad: $2b
    dec a                                         ; $62ae: $3d
    ld [hl], a                                    ; $62af: $77
    ld a, e                                       ; $62b0: $7b
    ld b, b                                       ; $62b1: $40
    inc d                                         ; $62b2: $14
    ld l, l                                       ; $62b3: $6d
    ld l, d                                       ; $62b4: $6a
    ld [hl], a                                    ; $62b5: $77
    ld a, e                                       ; $62b6: $7b
    adc b                                         ; $62b7: $88
    inc a                                         ; $62b8: $3c
    ld b, c                                       ; $62b9: $41
    db $10                                        ; $62ba: $10
    ld d, l                                       ; $62bb: $55
    ld a, e                                       ; $62bc: $7b
    ld e, a                                       ; $62bd: $5f
    inc bc                                        ; $62be: $03
    adc b                                         ; $62bf: $88
    inc a                                         ; $62c0: $3c
    ld [bc], a                                    ; $62c1: $02
    nop                                           ; $62c2: $00
    db $10                                        ; $62c3: $10
    ld [hl], a                                    ; $62c4: $77
    ld e, l                                       ; $62c5: $5d
    ld [bc], a                                    ; $62c6: $02
    add l                                         ; $62c7: $85
    jr z, jr_0d3_62ea                             ; $62c8: $28 $20

    inc d                                         ; $62ca: $14
    adc l                                         ; $62cb: $8d
    ld a, d                                       ; $62cc: $7a
    adc b                                         ; $62cd: $88
    inc a                                         ; $62ce: $3c
    ld [hl], a                                    ; $62cf: $77
    ld a, e                                       ; $62d0: $7b
    ld h, e                                       ; $62d1: $63
    jr nz, jr_0d3_62ec                            ; $62d2: $20 $18

    ld [hl+], a                                   ; $62d4: $22
    adc l                                         ; $62d5: $8d
    ld a, d                                       ; $62d6: $7a
    sbc c                                         ; $62d7: $99
    ld a, e                                       ; $62d8: $7b
    ld b, h                                       ; $62d9: $44
    inc e                                         ; $62da: $1c
    ld c, c                                       ; $62db: $49
    ld b, [hl]                                    ; $62dc: $46
    ld e, a                                       ; $62dd: $5f
    inc bc                                        ; $62de: $03
    ld a, [c]                                     ; $62df: $f2
    ld a, d                                       ; $62e0: $7a
    ld [bc], a                                    ; $62e1: $02
    nop                                           ; $62e2: $00
    db $ec                                        ; $62e3: $ec
    ld l, d                                       ; $62e4: $6a
    ld e, l                                       ; $62e5: $5d
    ld [bc], a                                    ; $62e6: $02
    adc b                                         ; $62e7: $88
    inc a                                         ; $62e8: $3c
    ld h, [hl]                                    ; $62e9: $66

jr_0d3_62ea:
    jr nc, jr_0d3_6278                            ; $62ea: $30 $8c

jr_0d3_62ec:
    ld a, d                                       ; $62ec: $7a
    or d                                          ; $62ed: $b2
    ld de, $7bbb                                  ; $62ee: $11 $bb $7b
    ld h, [hl]                                    ; $62f1: $66
    jr nc, jr_0d3_6280                            ; $62f2: $30 $8c

    ld a, d                                       ; $62f4: $7a
    or d                                          ; $62f5: $b2
    ld de, $7fdd                                  ; $62f6: $11 $dd $7f
    ld [bc], a                                    ; $62f9: $02
    nop                                           ; $62fa: $00
    call z, Call_0d3_5f6a                         ; $62fb: $cc $6a $5f
    inc bc                                        ; $62fe: $03
    rst $00                                       ; $62ff: $c7
    inc a                                         ; $6300: $3c
    ld [bc], a                                    ; $6301: $02
    nop                                           ; $6302: $00
    ld b, [hl]                                    ; $6303: $46
    add hl, sp                                    ; $6304: $39
    ld e, l                                       ; $6305: $5d
    ld [bc], a                                    ; $6306: $02
    rst $28                                       ; $6307: $ef
    ld [hl], d                                    ; $6308: $72
    adc b                                         ; $6309: $88
    inc a                                         ; $630a: $3c
    adc l                                         ; $630b: $8d
    ld a, d                                       ; $630c: $7a
    sbc d                                         ; $630d: $9a
    ld a, e                                       ; $630e: $7b
    or l                                          ; $630f: $b5
    ld d, [hl]                                    ; $6310: $56
    adc b                                         ; $6311: $88
    inc a                                         ; $6312: $3c
    adc l                                         ; $6313: $8d
    ld a, d                                       ; $6314: $7a
    sbc d                                         ; $6315: $9a
    ld a, e                                       ; $6316: $7b
    ld [hl], e                                    ; $6317: $73
    ld c, [hl]                                    ; $6318: $4e
    ld [bc], a                                    ; $6319: $02
    nop                                           ; $631a: $00
    adc $6e                                       ; $631b: $ce $6e
    ld e, a                                       ; $631d: $5f
    inc bc                                        ; $631e: $03
    dec b                                         ; $631f: $05
    dec [hl]                                      ; $6320: $35
    ld bc, $4500                                  ; $6321: $01 $00 $45
    add hl, sp                                    ; $6324: $39
    ld e, l                                       ; $6325: $5d
    ld [bc], a                                    ; $6326: $02
    inc l                                         ; $6327: $2c
    ld h, a                                       ; $6328: $67
    adc b                                         ; $6329: $88
    inc a                                         ; $632a: $3c
    or c                                          ; $632b: $b1
    ld h, [hl]                                    ; $632c: $66
    cp h                                          ; $632d: $bc
    ld a, e                                       ; $632e: $7b
    jr nc, jr_0d3_637f                            ; $632f: $30 $4e

    adc b                                         ; $6331: $88
    inc a                                         ; $6332: $3c
    or c                                          ; $6333: $b1
    ld h, [hl]                                    ; $6334: $66
    cp h                                          ; $6335: $bc
    ld a, e                                       ; $6336: $7b
    jr nc, jr_0d3_6387                            ; $6337: $30 $4e

    ld [bc], a                                    ; $6339: $02
    nop                                           ; $633a: $00
    dec bc                                        ; $633b: $0b
    ld h, e                                       ; $633c: $63
    ld e, a                                       ; $633d: $5f
    inc bc                                        ; $633e: $03
    ld b, h                                       ; $633f: $44
    dec [hl]                                      ; $6340: $35
    ld bc, $ae00                                  ; $6341: $01 $00 $ae
    ld a, d                                       ; $6344: $7a
    cp e                                          ; $6345: $bb
    ld de, $3905                                  ; $6346: $11 $05 $39
    adc b                                         ; $6349: $88
    inc a                                         ; $634a: $3c
    db $f4                                        ; $634b: $f4
    ld l, d                                       ; $634c: $6a
    rst $38                                       ; $634d: $ff
    ld a, a                                       ; $634e: $7f
    ld d, d                                       ; $634f: $52
    ld c, d                                       ; $6350: $4a
    adc b                                         ; $6351: $88
    inc a                                         ; $6352: $3c
    db $f4                                        ; $6353: $f4
    ld l, d                                       ; $6354: $6a
    rst $38                                       ; $6355: $ff
    ld a, a                                       ; $6356: $7f
    ld d, d                                       ; $6357: $52
    ld c, d                                       ; $6358: $4a
    nop                                           ; $6359: $00
    nop                                           ; $635a: $00
    ret z                                         ; $635b: $c8

    ld e, [hl]                                    ; $635c: $5e
    inc a                                         ; $635d: $3c
    ld c, $88                                     ; $635e: $0e $88
    inc a                                         ; $6360: $3c
    ld bc, $3700                                  ; $6361: $01 $00 $37
    dec d                                         ; $6364: $15
    ld e, a                                       ; $6365: $5f
    inc bc                                        ; $6366: $03
    ld e, e                                       ; $6367: $5b
    ld bc, $306a                                  ; $6368: $01 $6a $30
    xor [hl]                                      ; $636b: $ae
    ld a, d                                       ; $636c: $7a
    cp h                                          ; $636d: $bc
    ld a, e                                       ; $636e: $7b
    ld d, d                                       ; $636f: $52
    ld c, d                                       ; $6370: $4a
    ld l, c                                       ; $6371: $69
    jr nc, @-$50                                  ; $6372: $30 $ae

    ld a, d                                       ; $6374: $7a
    cp h                                          ; $6375: $bc
    ld a, e                                       ; $6376: $7b
    ld d, d                                       ; $6377: $52
    ld c, d                                       ; $6378: $4a
    ld bc, $7300                                  ; $6379: $01 $00 $73
    inc c                                         ; $637c: $0c
    ld e, a                                       ; $637d: $5f
    inc bc                                        ; $637e: $03

jr_0d3_637f:
    ld e, c                                       ; $637f: $59
    dec e                                         ; $6380: $1d
    ld bc, $7200                                  ; $6381: $01 $00 $72
    db $10                                        ; $6384: $10
    ld e, a                                       ; $6385: $5f
    inc bc                                        ; $6386: $03

jr_0d3_6387:
    ld e, b                                       ; $6387: $58
    ld de, $000b                                  ; $6388: $11 $0b $00
    xor [hl]                                      ; $638b: $ae
    ld a, d                                       ; $638c: $7a
    adc b                                         ; $638d: $88
    inc a                                         ; $638e: $3c
    ld [hl], a                                    ; $638f: $77
    ld a, e                                       ; $6390: $7b
    ld a, [bc]                                    ; $6391: $0a
    nop                                           ; $6392: $00
    xor [hl]                                      ; $6393: $ae
    ld a, d                                       ; $6394: $7a
    adc b                                         ; $6395: $88
    inc a                                         ; $6396: $3c
    ld [hl], a                                    ; $6397: $77
    ld a, e                                       ; $6398: $7b
    ld bc, $1800                                  ; $6399: $01 $00 $18
    add hl, de                                    ; $639c: $19
    ld e, a                                       ; $639d: $5f
    inc bc                                        ; $639e: $03
    ld d, b                                       ; $639f: $50
    ld [$0001], sp                                ; $63a0: $08 $01 $00
    ld [hl], c                                    ; $63a3: $71
    inc c                                         ; $63a4: $0c
    ld e, a                                       ; $63a5: $5f
    inc bc                                        ; $63a6: $03
    scf                                           ; $63a7: $37
    ld de, $0407                                  ; $63a8: $11 $07 $04
    xor [hl]                                      ; $63ab: $ae
    ld a, d                                       ; $63ac: $7a
    adc b                                         ; $63ad: $88
    inc a                                         ; $63ae: $3c
    sbc c                                         ; $63af: $99
    ld a, e                                       ; $63b0: $7b
    ld b, $04                                     ; $63b1: $06 $04
    xor [hl]                                      ; $63b3: $ae
    ld a, d                                       ; $63b4: $7a
    adc b                                         ; $63b5: $88
    inc a                                         ; $63b6: $3c
    sbc c                                         ; $63b7: $99
    ld a, e                                       ; $63b8: $7b
    ld bc, $f000                                  ; $63b9: $01 $00 $f0
    ld [$035f], sp                                ; $63bc: $08 $5f $03
    push af                                       ; $63bf: $f5
    inc d                                         ; $63c0: $14
    ld bc, $f400                                  ; $63c1: $01 $00 $f4
    ld [$035f], sp                                ; $63c4: $08 $5f $03
    dec hl                                        ; $63c7: $2b
    nop                                           ; $63c8: $00
    nop                                           ; $63c9: $00
    ld [$1e78], sp                                ; $63ca: $08 $78 $1e
    xor e                                         ; $63cd: $ab
    jr nz, jr_0d3_642f                            ; $63ce: $20 $5f

    ccf                                           ; $63d0: $3f
    nop                                           ; $63d1: $00
    ld [$1e77], sp                                ; $63d2: $08 $77 $1e
    xor e                                         ; $63d5: $ab
    jr nz, jr_0d3_6437                            ; $63d6: $20 $5f

    ccf                                           ; $63d8: $3f
    ld bc, $5f00                                  ; $63d9: $01 $00 $5f
    inc bc                                        ; $63dc: $03
    ld a, [bc]                                    ; $63dd: $0a
    nop                                           ; $63de: $00
    sub b                                         ; $63df: $90
    inc c                                         ; $63e0: $0c
    ld [bc], a                                    ; $63e1: $02
    nop                                           ; $63e2: $00
    ld e, e                                       ; $63e3: $5b
    ld bc, $035f                                  ; $63e4: $01 $5f $03
    sub b                                         ; $63e7: $90
    inc c                                         ; $63e8: $0c
    ld e, e                                       ; $63e9: $5b
    ld bc, $035f                                  ; $63ea: $01 $5f $03
    ld e, a                                       ; $63ed: $5f
    inc bc                                        ; $63ee: $03
    sub b                                         ; $63ef: $90
    inc c                                         ; $63f0: $0c
    ld e, e                                       ; $63f1: $5b
    ld bc, $035f                                  ; $63f2: $01 $5f $03
    ld e, a                                       ; $63f5: $5f
    inc bc                                        ; $63f6: $03
    sub b                                         ; $63f7: $90
    inc c                                         ; $63f8: $0c
    ld [bc], a                                    ; $63f9: $02
    nop                                           ; $63fa: $00
    ld e, e                                       ; $63fb: $5b
    ld bc, $035f                                  ; $63fc: $01 $5f $03
    sub b                                         ; $63ff: $90
    inc c                                         ; $6400: $0c
    ld [bc], a                                    ; $6401: $02
    nop                                           ; $6402: $00
    ld e, e                                       ; $6403: $5b
    ld bc, $035f                                  ; $6404: $01 $5f $03
    rra                                           ; $6407: $1f
    add hl, sp                                    ; $6408: $39
    rra                                           ; $6409: $1f
    add hl, sp                                    ; $640a: $39
    ld e, a                                       ; $640b: $5f
    inc bc                                        ; $640c: $03
    ld e, a                                       ; $640d: $5f
    inc bc                                        ; $640e: $03
    rra                                           ; $640f: $1f
    add hl, sp                                    ; $6410: $39
    ld b, a                                       ; $6411: $47
    ld [$035f], sp                                ; $6412: $08 $5f $03
    sub h                                         ; $6415: $94
    dec c                                         ; $6416: $0d
    rra                                           ; $6417: $1f
    add hl, sp                                    ; $6418: $39
    ld [bc], a                                    ; $6419: $02
    nop                                           ; $641a: $00
    ld e, a                                       ; $641b: $5f
    inc bc                                        ; $641c: $03

jr_0d3_641d:
    rra                                           ; $641d: $1f
    add hl, sp                                    ; $641e: $39
    rra                                           ; $641f: $1f
    add hl, sp                                    ; $6420: $39
    ld [bc], a                                    ; $6421: $02
    nop                                           ; $6422: $00
    rst $38                                       ; $6423: $ff
    jr c, jr_0d3_641d                             ; $6424: $38 $f7

    ld e, [hl]                                    ; $6426: $5e
    ld e, l                                       ; $6427: $5d
    ld [bc], a                                    ; $6428: $02
    db $ed                                        ; $6429: $ed
    ld [$7fff], sp                                ; $642a: $08 $ff $7f
    ld [hl], e                                    ; $642d: $73
    ld c, [hl]                                    ; $642e: $4e

jr_0d3_642f:
    rra                                           ; $642f: $1f
    add hl, sp                                    ; $6430: $39
    ld b, l                                       ; $6431: $45
    inc b                                         ; $6432: $04
    ei                                            ; $6433: $fb
    add hl, hl                                    ; $6434: $29
    rst $38                                       ; $6435: $ff
    ld c, e                                       ; $6436: $4b

jr_0d3_6437:
    ld [hl], e                                    ; $6437: $73
    dec c                                         ; $6438: $0d
    ld [bc], a                                    ; $6439: $02
    nop                                           ; $643a: $00
    rra                                           ; $643b: $1f
    add hl, sp                                    ; $643c: $39
    ld e, a                                       ; $643d: $5f
    inc bc                                        ; $643e: $03
    ld [hl], e                                    ; $643f: $73

Jump_0d3_6440:
    dec c                                         ; $6440: $0d
    ld [bc], a                                    ; $6441: $02
    nop                                           ; $6442: $00
    ld e, l                                       ; $6443: $5d
    ld [bc], a                                    ; $6444: $02
    rst $38                                       ; $6445: $ff
    ld a, a                                       ; $6446: $7f
    dec a                                         ; $6447: $3d
    add hl, sp                                    ; $6448: $39

jr_0d3_6449:
    nop                                           ; $6449: $00
    nop                                           ; $644a: $00
    rst $38                                       ; $644b: $ff
    ld a, a                                       ; $644c: $7f
    db $10                                        ; $644d: $10
    ld b, d                                       ; $644e: $42
    ld [hl], e                                    ; $644f: $73
    ld c, [hl]                                    ; $6450: $4e
    ld l, b                                       ; $6451: $68
    inc b                                         ; $6452: $04
    ld d, l                                       ; $6453: $55
    ld b, d                                       ; $6454: $42
    rst $38                                       ; $6455: $ff
    ld h, e                                       ; $6456: $63
    ld [hl], c                                    ; $6457: $71
    dec d                                         ; $6458: $15
    ld [bc], a                                    ; $6459: $02
    nop                                           ; $645a: $00
    rra                                           ; $645b: $1f
    add hl, sp                                    ; $645c: $39
    ld e, a                                       ; $645d: $5f
    inc bc                                        ; $645e: $03
    ld b, a                                       ; $645f: $47
    ld [$0002], sp                                ; $6460: $08 $02 $00
    ld e, $29                                     ; $6463: $1e $29
    ld e, a                                       ; $6465: $5f
    inc bc                                        ; $6466: $03
    rst $38                                       ; $6467: $ff
    ld a, a                                       ; $6468: $7f
    nop                                           ; $6469: $00
    nop                                           ; $646a: $00
    ld sp, $ff46                                  ; $646b: $31 $46 $ff
    ld a, a                                       ; $646e: $7f
    rst $30                                       ; $646f: $f7
    ld e, [hl]                                    ; $6470: $5e
    push bc                                       ; $6471: $c5
    jr jr_0d3_6449                                ; $6472: $18 $d5

    ld e, [hl]                                    ; $6474: $5e
    or a                                          ; $6475: $b7
    dec c                                         ; $6476: $0d
    rst $38                                       ; $6477: $ff
    ld a, a                                       ; $6478: $7f
    ld [bc], a                                    ; $6479: $02
    nop                                           ; $647a: $00
    rst $38                                       ; $647b: $ff
    inc [hl]                                      ; $647c: $34
    ld e, a                                       ; $647d: $5f
    inc bc                                        ; $647e: $03
    ld b, a                                       ; $647f: $47
    ld [$0001], sp                                ; $6480: $08 $01 $00
    db $10                                        ; $6483: $10
    ld b, d                                       ; $6484: $42
    db $fd                                        ; $6485: $fd
    inc h                                         ; $6486: $24
    ld e, a                                       ; $6487: $5f
    inc bc                                        ; $6488: $03
    nop                                           ; $6489: $00
    nop                                           ; $648a: $00
    ld [hl], e                                    ; $648b: $73
    ld c, [hl]                                    ; $648c: $4e
    push bc                                       ; $648d: $c5
    inc e                                         ; $648e: $1c
    ld e, d                                       ; $648f: $5a
    ld [hl], $8b                                  ; $6490: $36 $8b
    inc b                                         ; $6492: $04
    ld a, h                                       ; $6493: $7c
    ld l, $ff                                     ; $6494: $2e $ff
    ld a, a                                       ; $6496: $7f
    rst $20                                       ; $6497: $e7
    inc e                                         ; $6498: $1c
    ld [bc], a                                    ; $6499: $02
    nop                                           ; $649a: $00
    cp $30                                        ; $649b: $fe $30
    ld e, a                                       ; $649d: $5f
    inc bc                                        ; $649e: $03
    ld b, a                                       ; $649f: $47
    ld [$0002], sp                                ; $64a0: $08 $02 $00
    call c, Call_0d3_7324                         ; $64a3: $dc $24 $73
    ld c, [hl]                                    ; $64a6: $4e
    ld e, a                                       ; $64a7: $5f
    inc bc                                        ; $64a8: $03
    nop                                           ; $64a9: $00
    ld [$4210], sp                                ; $64aa: $08 $10 $42
    and $20                                       ; $64ad: $e6 $20
    ld e, d                                       ; $64af: $5a
    ld [hl], $45                                  ; $64b0: $36 $45
    nop                                           ; $64b2: $00

jr_0d3_64b3:
    ld e, d                                       ; $64b3: $5a
    ld [hl], $35                                  ; $64b4: $36 $35
    ld bc, $531e                                  ; $64b6: $01 $1e $53
    ld [bc], a                                    ; $64b9: $02
    nop                                           ; $64ba: $00
    call c, Call_0d3_5f2c                         ; $64bb: $dc $2c $5f
    inc bc                                        ; $64be: $03
    ld b, a                                       ; $64bf: $47
    ld [$0002], sp                                ; $64c0: $08 $02 $00
    cp e                                          ; $64c3: $bb
    jr z, @+$61                                   ; $64c4: $28 $5f

    inc bc                                        ; $64c6: $03
    ld e, e                                       ; $64c7: $5b
    ld bc, $0800                                  ; $64c8: $01 $00 $08
    ld e, d                                       ; $64cb: $5a
    ld [hl], $0b                                  ; $64cc: $36 $0b
    dec d                                         ; $64ce: $15
    cp a                                          ; $64cf: $bf
    ld l, a                                       ; $64d0: $6f
    inc bc                                        ; $64d1: $03
    inc b                                         ; $64d2: $04
    cp e                                          ; $64d3: $bb
    jr z, jr_0d3_64b3                             ; $64d4: $28 $dd

    ld c, d                                       ; $64d6: $4a
    rst $18                                       ; $64d7: $df
    inc bc                                        ; $64d8: $03

jr_0d3_64d9:
    ld [bc], a                                    ; $64d9: $02
    nop                                           ; $64da: $00
    cp e                                          ; $64db: $bb
    jr z, jr_0d3_653d                             ; $64dc: $28 $5f

    inc bc                                        ; $64de: $03
    cp h                                          ; $64df: $bc
    inc l                                         ; $64e0: $2c
    ld [bc], a                                    ; $64e1: $02
    nop                                           ; $64e2: $00
    sbc d                                         ; $64e3: $9a
    inc h                                         ; $64e4: $24
    ld e, a                                       ; $64e5: $5f
    inc bc                                        ; $64e6: $03
    ld e, e                                       ; $64e7: $5b
    ld bc, $0842                                  ; $64e8: $01 $42 $08
    dec e                                         ; $64eb: $1d
    ld d, a                                       ; $64ec: $57
    daa                                           ; $64ed: $27
    rra                                           ; $64ee: $1f
    call nc, $891c                                ; $64ef: $d4 $1c $89
    inc b                                         ; $64f2: $04
    cp h                                          ; $64f3: $bc
    ld b, [hl]                                    ; $64f4: $46
    sbc d                                         ; $64f5: $9a
    inc h                                         ; $64f6: $24
    ld [hl], l                                    ; $64f7: $75
    ld a, [bc]                                    ; $64f8: $0a
    ld [bc], a                                    ; $64f9: $02
    nop                                           ; $64fa: $00
    sbc c                                         ; $64fb: $99
    inc h                                         ; $64fc: $24
    ld e, a                                       ; $64fd: $5f
    inc bc                                        ; $64fe: $03
    sbc d                                         ; $64ff: $9a
    inc h                                         ; $6500: $24
    ld [bc], a                                    ; $6501: $02
    nop                                           ; $6502: $00
    ld a, b                                       ; $6503: $78
    inc e                                         ; $6504: $1c
    ld e, a                                       ; $6505: $5f
    inc bc                                        ; $6506: $03
    ld e, e                                       ; $6507: $5b
    ld bc, $0845                                  ; $6508: $01 $45 $08
    db $fd                                        ; $650b: $fd
    ld c, d                                       ; $650c: $4a
    ld l, [hl]                                    ; $650d: $6e
    dec h                                         ; $650e: $25
    ld a, b                                       ; $650f: $78
    inc e                                         ; $6510: $1c
    adc c                                         ; $6511: $89
    inc b                                         ; $6512: $04
    ld e, d                                       ; $6513: $5a
    ld [hl], $78                                  ; $6514: $36 $78
    jr nz, jr_0d3_6536                            ; $6516: $20 $1e

    ld d, e                                       ; $6518: $53
    ld [bc], a                                    ; $6519: $02
    nop                                           ; $651a: $00
    ld e, a                                       ; $651b: $5f
    inc bc                                        ; $651c: $03
    ld a, b                                       ; $651d: $78
    inc e                                         ; $651e: $1c
    sbc c                                         ; $651f: $99
    jr nz, jr_0d3_6524                            ; $6520: $20 $02

    nop                                           ; $6522: $00
    ld d, a                                       ; $6523: $57

jr_0d3_6524:
    jr @+$61                                      ; $6524: $18 $5f

    inc bc                                        ; $6526: $03
    ld e, e                                       ; $6527: $5b
    ld bc, $086b                                  ; $6528: $01 $6b $08
    ld e, d                                       ; $652b: $5a
    ld [hl], $57                                  ; $652c: $36 $57
    jr jr_0d3_654e                                ; $652e: $18 $1e

    ld d, e                                       ; $6530: $53
    inc h                                         ; $6531: $24
    nop                                           ; $6532: $00
    cp h                                          ; $6533: $bc
    ld b, [hl]                                    ; $6534: $46
    inc de                                        ; $6535: $13

jr_0d3_6536:
    add hl, hl                                    ; $6536: $29
    db $dd                                        ; $6537: $dd
    ld a, a                                       ; $6538: $7f
    ld [bc], a                                    ; $6539: $02
    nop                                           ; $653a: $00
    ld e, a                                       ; $653b: $5f
    inc bc                                        ; $653c: $03

jr_0d3_653d:
    ld d, a                                       ; $653d: $57
    jr @+$5c                                      ; $653e: $18 $5a

    ld l, e                                       ; $6540: $6b
    ld [bc], a                                    ; $6541: $02
    nop                                           ; $6542: $00
    ld e, a                                       ; $6543: $5f
    inc bc                                        ; $6544: $03
    halt                                          ; $6545: $76
    ld de, $7fff                                  ; $6546: $11 $ff $7f
    inc h                                         ; $6549: $24
    nop                                           ; $654a: $00
    cp c                                          ; $654b: $b9
    ld c, d                                       ; $654c: $4a
    cp l                                          ; $654d: $bd

jr_0d3_654e:
    ld [hl], a                                    ; $654e: $77
    ld d, [hl]                                    ; $654f: $56
    jr jr_0d3_64d9                                ; $6550: $18 $87

    ld [$4278], sp                                ; $6552: $08 $78 $42
    rst $38                                       ; $6555: $ff
    ld a, a                                       ; $6556: $7f
    adc e                                         ; $6557: $8b
    ld sp, $0002                                  ; $6558: $31 $02 $00
    ld e, a                                       ; $655b: $5f
    inc bc                                        ; $655c: $03
    ld e, d                                       ; $655d: $5a
    ld l, e                                       ; $655e: $6b
    xor a                                         ; $655f: $af
    inc e                                         ; $6560: $1c
    ld [bc], a                                    ; $6561: $02
    nop                                           ; $6562: $00
    ld sp, $bd46                                  ; $6563: $31 $46 $bd
    ld [hl], a                                    ; $6566: $77
    ld e, l                                       ; $6567: $5d
    ld [bc], a                                    ; $6568: $02
    ld b, d                                       ; $6569: $42
    inc c                                         ; $656a: $0c
    ld [hl], h                                    ; $656b: $74
    ld c, [hl]                                    ; $656c: $4e
    rst $38                                       ; $656d: $ff
    ld a, a                                       ; $656e: $7f
    ld e, d                                       ; $656f: $5a
    ld [hl], $00                                  ; $6570: $36 $00
    nop                                           ; $6572: $00
    or [hl]                                       ; $6573: $b6
    ld d, d                                       ; $6574: $52
    ld a, [hl+]                                   ; $6575: $2a
    dec h                                         ; $6576: $25
    rst $38                                       ; $6577: $ff
    ld a, a                                       ; $6578: $7f
    ld b, e                                       ; $6579: $43
    ld [$035f], sp                                ; $657a: $08 $5f $03
    sub h                                         ; $657d: $94
    ld d, d                                       ; $657e: $52
    sbc h                                         ; $657f: $9c
    ld [hl], e                                    ; $6580: $73
    ld [bc], a                                    ; $6581: $02
    nop                                           ; $6582: $00
    ld e, e                                       ; $6583: $5b
    ld bc, $6f7b                                  ; $6584: $01 $7b $6f
    ld e, a                                       ; $6587: $5f
    inc bc                                        ; $6588: $03
    rst $20                                       ; $6589: $e7
    inc e                                         ; $658a: $1c
    ld [hl], e                                    ; $658b: $73
    ld c, [hl]                                    ; $658c: $4e
    rst $38                                       ; $658d: $ff
    ld a, a                                       ; $658e: $7f
    add hl, de                                    ; $658f: $19
    ld h, e                                       ; $6590: $63
    nop                                           ; $6591: $00
    nop                                           ; $6592: $00
    sub h                                         ; $6593: $94
    ld d, d                                       ; $6594: $52
    rst $28                                       ; $6595: $ef
    dec a                                         ; $6596: $3d
    sbc $7b                                       ; $6597: $de $7b
    ld bc, $1000                                  ; $6599: $01 $00 $10
    ld b, d                                       ; $659c: $42
    ld e, a                                       ; $659d: $5f
    inc bc                                        ; $659e: $03
    ld a, [hl-]                                   ; $659f: $3a
    ld h, a                                       ; $65a0: $67
    ld [bc], a                                    ; $65a1: $02
    nop                                           ; $65a2: $00
    ld e, l                                       ; $65a3: $5d
    ld [bc], a                                    ; $65a4: $02
    ld [hl], h                                    ; $65a5: $74
    ld c, [hl]                                    ; $65a6: $4e
    sbc h                                         ; $65a7: $9c
    ld [hl], e                                    ; $65a8: $73
    ld hl, $d604                                  ; $65a9: $21 $04 $d6
    ld e, d                                       ; $65ac: $5a
    ld c, d                                       ; $65ad: $4a
    add hl, hl                                    ; $65ae: $29
    rst $18                                       ; $65af: $df
    ld a, e                                       ; $65b0: $7b
    ld hl, $b504                                  ; $65b1: $21 $04 $b5
    ld d, [hl]                                    ; $65b4: $56
    ld l, h                                       ; $65b5: $6c
    dec l                                         ; $65b6: $2d
    sbc $7b                                       ; $65b7: $de $7b
    ld [bc], a                                    ; $65b9: $02
    nop                                           ; $65ba: $00
    rst $30                                       ; $65bb: $f7
    ld e, [hl]                                    ; $65bc: $5e
    ld e, a                                       ; $65bd: $5f
    inc bc                                        ; $65be: $03
    ld [$0221], sp                                ; $65bf: $08 $21 $02
    nop                                           ; $65c2: $00
    ld e, l                                       ; $65c3: $5d
    ld [bc], a                                    ; $65c4: $02
    ld [hl], h                                    ; $65c5: $74
    ld d, d                                       ; $65c6: $52
    sbc l                                         ; $65c7: $9d
    ld [hl], e                                    ; $65c8: $73
    ld b, h                                       ; $65c9: $44
    inc c                                         ; $65ca: $0c
    ld d, h                                       ; $65cb: $54
    ld c, [hl]                                    ; $65cc: $4e
    rst $18                                       ; $65cd: $df
    ld a, e                                       ; $65ce: $7b
    adc h                                         ; $65cf: $8c
    ld sp, $0422                                  ; $65d0: $31 $22 $04
    ld [hl-], a                                   ; $65d3: $32
    ld b, [hl]                                    ; $65d4: $46
    ld c, e                                       ; $65d5: $4b
    add hl, hl                                    ; $65d6: $29
    ld hl, sp+$5e                                 ; $65d7: $f8 $5e
    ld bc, $9500                                  ; $65d9: $01 $00 $95
    ld d, d                                       ; $65dc: $52
    ld e, a                                       ; $65dd: $5f
    inc bc                                        ; $65de: $03
    add hl, hl                                    ; $65df: $29
    dec h                                         ; $65e0: $25
    ld [bc], a                                    ; $65e1: $02
    nop                                           ; $65e2: $00
    ld e, e                                       ; $65e3: $5b
    ld bc, $035f                                  ; $65e4: $01 $5f $03
    add hl, hl                                    ; $65e7: $29
    dec h                                         ; $65e8: $25
    ld e, e                                       ; $65e9: $5b
    ld bc, $035f                                  ; $65ea: $01 $5f $03
    ld e, a                                       ; $65ed: $5f
    inc bc                                        ; $65ee: $03
    add hl, hl                                    ; $65ef: $29
    dec h                                         ; $65f0: $25
    ld e, e                                       ; $65f1: $5b
    ld bc, $035f                                  ; $65f2: $01 $5f $03
    ld e, a                                       ; $65f5: $5f
    inc bc                                        ; $65f6: $03
    add hl, hl                                    ; $65f7: $29
    dec h                                         ; $65f8: $25
    ld [bc], a                                    ; $65f9: $02
    nop                                           ; $65fa: $00
    ld e, e                                       ; $65fb: $5b
    ld bc, $035f                                  ; $65fc: $01 $5f $03
    add hl, hl                                    ; $65ff: $29
    dec h                                         ; $6600: $25
    ld bc, $cf00                                  ; $6601: $01 $00 $cf
    ld l, $5b                                     ; $6604: $2e $5b
    ld bc, $035f                                  ; $6606: $01 $5f $03
    and l                                         ; $6609: $a5
    db $10                                        ; $660a: $10
    ld e, a                                       ; $660b: $5f
    inc bc                                        ; $660c: $03
    jr nc, jr_0d3_6651                            ; $660d: $30 $42

    or l                                          ; $660f: $b5
    ld d, [hl]                                    ; $6610: $56
    rst $08                                       ; $6611: $cf
    ld l, $5f                                     ; $6612: $2e $5f
    inc bc                                        ; $6614: $03
    jr nc, jr_0d3_6659                            ; $6615: $30 $42

    or l                                          ; $6617: $b5
    ld d, [hl]                                    ; $6618: $56
    ld [bc], a                                    ; $6619: $02
    nop                                           ; $661a: $00
    ld e, a                                       ; $661b: $5f
    inc bc                                        ; $661c: $03
    rst $08                                       ; $661d: $cf
    ld l, $b5                                     ; $661e: $2e $b5
    ld d, [hl]                                    ; $6620: $56
    ld bc, $af00                                  ; $6621: $01 $00 $af
    ld l, $5d                                     ; $6624: $2e $5d
    ld [bc], a                                    ; $6626: $02
    sub $5e                                       ; $6627: $d6 $5e
    add h                                         ; $6629: $84
    db $10                                        ; $662a: $10
    rst $28                                       ; $662b: $ef
    dec a                                         ; $662c: $3d
    sub h                                         ; $662d: $94
    ld d, d                                       ; $662e: $52
    ld c, d                                       ; $662f: $4a
    add hl, hl                                    ; $6630: $29
    nop                                           ; $6631: $00
    nop                                           ; $6632: $00
    rst $08                                       ; $6633: $cf
    ld l, $93                                     ; $6634: $2e $93
    ld d, d                                       ; $6636: $52
    and l                                         ; $6637: $a5
    inc d                                         ; $6638: $14
    ld [bc], a                                    ; $6639: $02
    nop                                           ; $663a: $00
    rst $08                                       ; $663b: $cf
    ld l, $5f                                     ; $663c: $2e $5f
    inc bc                                        ; $663e: $03
    and l                                         ; $663f: $a5
    inc d                                         ; $6640: $14
    ld bc, $8e00                                  ; $6641: $01 $00 $8e
    ld l, $5d                                     ; $6644: $2e $5d
    ld [bc], a                                    ; $6646: $02
    ld [$0021], sp                                ; $6647: $08 $21 $00
    nop                                           ; $664a: $00
    ld sp, $6b4a                                  ; $664b: $31 $4a $6b
    dec l                                         ; $664e: $2d
    sub $5e                                       ; $664f: $d6 $5e

jr_0d3_6651:
    ld b, d                                       ; $6651: $42
    ld [$56b4], sp                                ; $6652: $08 $b4 $56
    ld l, d                                       ; $6655: $6a
    dec l                                         ; $6656: $2d
    adc $39                                       ; $6657: $ce $39

jr_0d3_6659:
    ld b, e                                       ; $6659: $43
    ld [$2ecf], sp                                ; $665a: $08 $cf $2e
    ld e, a                                       ; $665d: $5f
    inc bc                                        ; $665e: $03
    ld [hl], d                                    ; $665f: $72
    ld c, [hl]                                    ; $6660: $4e
    ld [bc], a                                    ; $6661: $02
    nop                                           ; $6662: $00
    dec l                                         ; $6663: $2d
    ld [hl-], a                                   ; $6664: $32
    ld e, e                                       ; $6665: $5b
    ld bc, $035f                                  ; $6666: $01 $5f $03
    nop                                           ; $6669: $00
    nop                                           ; $666a: $00
    ld c, d                                       ; $666b: $4a
    add hl, hl                                    ; $666c: $29
    push de                                       ; $666d: $d5
    ld e, d                                       ; $666e: $5a
    adc h                                         ; $666f: $8c
    ld sp, $0000                                  ; $6670: $31 $00 $00
    add hl, hl                                    ; $6673: $29
    dec h                                         ; $6674: $25
    push de                                       ; $6675: $d5
    ld e, d                                       ; $6676: $5a
    adc h                                         ; $6677: $8c
    ld sp, $0843                                  ; $6678: $31 $43 $08
    or b                                          ; $667b: $b0
    ld [hl], $5f                                  ; $667c: $36 $5f
    inc bc                                        ; $667e: $03
    ld l, e                                       ; $667f: $6b
    dec l                                         ; $6680: $2d
    ld bc, $8c00                                  ; $6681: $01 $00 $8c
    ld sp, $025d                                  ; $6684: $31 $5d $02
    adc $2e                                       ; $6687: $ce $2e
    nop                                           ; $6689: $00
    nop                                           ; $668a: $00
    inc l                                         ; $668b: $2c
    dec e                                         ; $668c: $1d
    adc h                                         ; $668d: $8c
    dec [hl]                                      ; $668e: $35
    add $18                                       ; $668f: $c6 $18
    nop                                           ; $6691: $00
    nop                                           ; $6692: $00
    ld c, c                                       ; $6693: $49
    dec l                                         ; $6694: $2d
    rrc b                                         ; $6695: $cb $08
    cpl                                           ; $6697: $2f
    dec d                                         ; $6698: $15
    ld b, d                                       ; $6699: $42
    inc c                                         ; $669a: $0c
    ld c, l                                       ; $669b: $4d
    ld l, $5f                                     ; $669c: $2e $5f
    inc bc                                        ; $669e: $03
    sub $5e                                       ; $669f: $d6 $5e
    ld bc, $6d00                                  ; $66a1: $01 $00 $6d
    ld a, [hl+]                                   ; $66a4: $2a
    ld e, l                                       ; $66a5: $5d
    ld [bc], a                                    ; $66a6: $02
    rst $20                                       ; $66a7: $e7
    inc e                                         ; $66a8: $1c
    nop                                           ; $66a9: $00
    nop                                           ; $66aa: $00
    ld e, $53                                     ; $66ab: $1e $53
    dec c                                         ; $66ad: $0d
    ld de, $294a                                  ; $66ae: $11 $4a $29
    nop                                           ; $66b1: $00
    nop                                           ; $66b2: $00
    ld e, $53                                     ; $66b3: $1e $53
    cpl                                           ; $66b5: $2f
    dec d                                         ; $66b6: $15
    ld c, d                                       ; $66b7: $4a
    add hl, hl                                    ; $66b8: $29
    nop                                           ; $66b9: $00
    inc b                                         ; $66ba: $04
    xor $3d                                       ; $66bb: $ee $3d
    ld e, a                                       ; $66bd: $5f
    inc bc                                        ; $66be: $03
    xor [hl]                                      ; $66bf: $ae
    ld l, $01                                     ; $66c0: $2e $01
    nop                                           ; $66c2: $00
    inc l                                         ; $66c3: $2c
    ld a, [hl+]                                   ; $66c4: $2a
    ld e, e                                       ; $66c5: $5b
    ld bc, $035f                                  ; $66c6: $01 $5f $03
    nop                                           ; $66c9: $00
    nop                                           ; $66ca: $00
    halt                                          ; $66cb: $76
    dec d                                         ; $66cc: $15
    dec hl                                        ; $66cd: $2b
    ld hl, $531e                                  ; $66ce: $21 $1e $53
    nop                                           ; $66d1: $00
    nop                                           ; $66d2: $00
    halt                                          ; $66d3: $76
    dec d                                         ; $66d4: $15
    ld e, $53                                     ; $66d5: $1e $53
    ld e, $53                                     ; $66d7: $1e $53
    ld [bc], a                                    ; $66d9: $02
    nop                                           ; $66da: $00
    xor l                                         ; $66db: $ad
    ld l, $5f                                     ; $66dc: $2e $5f
    inc bc                                        ; $66de: $03
    ld h, l                                       ; $66df: $65
    ld [$0001], sp                                ; $66e0: $08 $01 $00
    adc e                                         ; $66e3: $8b
    ld a, [hl+]                                   ; $66e4: $2a
    ld e, e                                       ; $66e5: $5b
    ld bc, $035f                                  ; $66e6: $01 $5f $03
    ld hl, $fb04                                  ; $66e9: $21 $04 $fb
    ld d, d                                       ; $66ec: $52
    ld d, d                                       ; $66ed: $52
    dec d                                         ; $66ee: $15
    rst $38                                       ; $66ef: $ff
    ld a, a                                       ; $66f0: $7f
    ld [bc], a                                    ; $66f1: $02
    nop                                           ; $66f2: $00
    ld d, d                                       ; $66f3: $52
    ld h, d                                       ; $66f4: $62
    ld a, [hl]                                    ; $66f5: $7e
    ld h, a                                       ; $66f6: $67
    nop                                           ; $66f7: $00
    jr nc, jr_0d3_66fa                            ; $66f8: $30 $00

jr_0d3_66fa:
    nop                                           ; $66fa: $00
    adc e                                         ; $66fb: $8b
    ld l, $5f                                     ; $66fc: $2e $5f
    inc bc                                        ; $66fe: $03
    ld [bc], a                                    ; $66ff: $02
    nop                                           ; $6700: $00
    ld [bc], a                                    ; $6701: $02
    nop                                           ; $6702: $00
    ld l, d                                       ; $6703: $6a
    ld l, $5b                                     ; $6704: $2e $5b
    ld bc, $035f                                  ; $6706: $01 $5f $03
    ld h, h                                       ; $6709: $64
    inc c                                         ; $670a: $0c
    ei                                            ; $670b: $fb
    ld d, d                                       ; $670c: $52
    ld l, d                                       ; $670d: $6a
    ld l, $2f                                     ; $670e: $2e $2f
    dec d                                         ; $6710: $15
    nop                                           ; $6711: $00
    nop                                           ; $6712: $00
    db $ed                                        ; $6713: $ed
    ld [hl], c                                    ; $6714: $71
    rst $38                                       ; $6715: $ff
    ld a, a                                       ; $6716: $7f
    or b                                          ; $6717: $b0
    dec l                                         ; $6718: $2d
    ld bc, $6a00                                  ; $6719: $01 $00 $6a
    ld [hl-], a                                   ; $671c: $32
    ld e, a                                       ; $671d: $5f
    inc bc                                        ; $671e: $03
    rst $38                                       ; $671f: $ff
    ld a, a                                       ; $6720: $7f
    ld [bc], a                                    ; $6721: $02
    nop                                           ; $6722: $00
    ld l, c                                       ; $6723: $69
    ld l, $5b                                     ; $6724: $2e $5b
    ld bc, $035f                                  ; $6726: $01 $5f $03
    add [hl]                                      ; $6729: $86
    db $10                                        ; $672a: $10
    ld e, $53                                     ; $672b: $1e $53
    ld l, c                                       ; $672d: $69
    ld l, $2f                                     ; $672e: $2e $2f
    dec d                                         ; $6730: $15
    nop                                           ; $6731: $00
    ld [$71ed], sp                                ; $6732: $08 $ed $71
    ld e, $53                                     ; $6735: $1e $53
    cpl                                           ; $6737: $2f
    dec d                                         ; $6738: $15
    ld bc, $6900                                  ; $6739: $01 $00 $69
    ld l, $5f                                     ; $673c: $2e $5f
    inc bc                                        ; $673e: $03
    ld l, d                                       ; $673f: $6a
    ld l, $02                                     ; $6740: $2e $02
    nop                                           ; $6742: $00
    ld c, b                                       ; $6743: $48
    ld l, $5b                                     ; $6744: $2e $5b
    ld bc, $035f                                  ; $6746: $01 $5f $03
    ret                                           ; $6749: $c9


    db $10                                        ; $674a: $10
    jp c, Jump_0d3_4852                           ; $674b: $da $52 $48

    ld l, $bd                                     ; $674e: $2e $bd
    ld a, e                                       ; $6750: $7b
    ld l, c                                       ; $6751: $69
    inc b                                         ; $6752: $04
    ld e, $53                                     ; $6753: $1e $53
    rra                                           ; $6755: $1f
    nop                                           ; $6756: $00
    ld c, b                                       ; $6757: $48
    ld l, $02                                     ; $6758: $2e $02
    nop                                           ; $675a: $00
    ld e, a                                       ; $675b: $5f
    inc bc                                        ; $675c: $03
    ld c, b                                       ; $675d: $48
    ld l, $49                                     ; $675e: $2e $49
    ld l, $02                                     ; $6760: $2e $02
    nop                                           ; $6762: $00
    daa                                           ; $6763: $27
    ld l, $5b                                     ; $6764: $2e $5b
    ld bc, $035f                                  ; $6766: $01 $5f $03
    ld b, c                                       ; $6769: $41
    inc h                                         ; $676a: $24
    ld d, d                                       ; $676b: $52
    ld d, [hl]                                    ; $676c: $56
    sbc $7b                                       ; $676d: $de $7b
    ld l, c                                       ; $676f: $69
    inc b                                         ; $6770: $04
    ld c, b                                       ; $6771: $48
    nop                                           ; $6772: $00
    ld [hl], d                                    ; $6773: $72
    ld c, d                                       ; $6774: $4a
    ld b, a                                       ; $6775: $47
    ld l, $3e                                     ; $6776: $2e $3e
    ld e, e                                       ; $6778: $5b
    ld [bc], a                                    ; $6779: $02
    nop                                           ; $677a: $00
    ld e, a                                       ; $677b: $5f
    inc bc                                        ; $677c: $03
    daa                                           ; $677d: $27
    ld l, $48                                     ; $677e: $2e $48
    ld l, $02                                     ; $6780: $2e $02
    nop                                           ; $6782: $00
    call z, Call_0d3_5d69                         ; $6783: $cc $69 $5d
    ld [bc], a                                    ; $6786: $02
    ld h, d                                       ; $6787: $62
    jr nz, jr_0d3_67ab                            ; $6788: $20 $21

    ld [$4ab5], sp                                ; $678a: $08 $b5 $4a
    sbc $7b                                       ; $678d: $de $7b
    nop                                           ; $678f: $00
    jr nc, @-$5a                                  ; $6790: $30 $a4

    jr @-$6a                                      ; $6792: $18 $94

    ld e, [hl]                                    ; $6794: $5e
    dec c                                         ; $6795: $0d
    ld a, $de                                     ; $6796: $3e $de
    ld a, e                                       ; $6798: $7b
    ld [bc], a                                    ; $6799: $02
    nop                                           ; $679a: $00
    ld e, a                                       ; $679b: $5f
    inc bc                                        ; $679c: $03
    daa                                           ; $679d: $27
    ld l, $62                                     ; $679e: $2e $62
    jr nz, jr_0d3_67a3                            ; $67a0: $20 $01

    nop                                           ; $67a2: $00

jr_0d3_67a3:
    ld l, c                                       ; $67a3: $69
    ld e, c                                       ; $67a4: $59
    ld e, l                                       ; $67a5: $5d
    ld [bc], a                                    ; $67a6: $02

jr_0d3_67a7:
    ld b, c                                       ; $67a7: $41
    jr nc, jr_0d3_67aa                            ; $67a8: $30 $00

jr_0d3_67aa:
    inc h                                         ; $67aa: $24

jr_0d3_67ab:
    ld l, c                                       ; $67ab: $69
    ld e, c                                       ; $67ac: $59
    ld e, d                                       ; $67ad: $5a
    ld [hl], e                                    ; $67ae: $73
    db $10                                        ; $67af: $10
    ld a, [hl-]                                   ; $67b0: $3a
    nop                                           ; $67b1: $00
    jr jr_0d3_67a7                                ; $67b2: $18 $f3

    ld bc, $3549                                  ; $67b4: $01 $49 $35
    ld d, d                                       ; $67b7: $52
    ld e, d                                       ; $67b8: $5a
    ld [hl+], a                                   ; $67b9: $22
    db $10                                        ; $67ba: $10
    ld h, $2e                                     ; $67bb: $26 $2e
    ld e, a                                       ; $67bd: $5f
    inc bc                                        ; $67be: $03
    call z, $0069                                 ; $67bf: $cc $69 $00
    jr nc, jr_0d3_682d                            ; $67c2: $30 $69

    ld d, l                                       ; $67c4: $55
    ld e, l                                       ; $67c5: $5d
    ld [bc], a                                    ; $67c6: $02
    ld [bc], a                                    ; $67c7: $02
    nop                                           ; $67c8: $00
    nop                                           ; $67c9: $00
    jr nc, jr_0d3_6835                            ; $67ca: $30 $69

    ld e, c                                       ; $67cc: $59
    sub h                                         ; $67cd: $94
    ld c, [hl]                                    ; $67ce: $4e
    jr nz, jr_0d3_67ed                            ; $67cf: $20 $1c

    nop                                           ; $67d1: $00
    jr nz, @+$76                                  ; $67d2: $20 $74

    ld a, $bd                                     ; $67d4: $3e $bd
    ld a, e                                       ; $67d6: $7b
    ld a, [hl+]                                   ; $67d7: $2a
    add hl, de                                    ; $67d8: $19
    nop                                           ; $67d9: $00
    jr nc, jr_0d3_683b                            ; $67da: $30 $5f

    inc bc                                        ; $67dc: $03
    adc d                                         ; $67dd: $8a
    ld e, l                                       ; $67de: $5d
    ld [bc], a                                    ; $67df: $02
    nop                                           ; $67e0: $00
    ld [bc], a                                    ; $67e1: $02
    nop                                           ; $67e2: $00
    ld e, e                                       ; $67e3: $5b
    ld bc, $035f                                  ; $67e4: $01 $5f $03
    ld [bc], a                                    ; $67e7: $02
    nop                                           ; $67e8: $00
    ld e, e                                       ; $67e9: $5b
    ld bc, $035f                                  ; $67ea: $01 $5f $03

jr_0d3_67ed:
    ld e, a                                       ; $67ed: $5f
    inc bc                                        ; $67ee: $03
    ld [bc], a                                    ; $67ef: $02
    nop                                           ; $67f0: $00
    ld e, e                                       ; $67f1: $5b
    ld bc, $035f                                  ; $67f2: $01 $5f $03
    ld e, a                                       ; $67f5: $5f
    inc bc                                        ; $67f6: $03
    ld [bc], a                                    ; $67f7: $02
    nop                                           ; $67f8: $00
    ld [bc], a                                    ; $67f9: $02
    nop                                           ; $67fa: $00
    ld e, e                                       ; $67fb: $5b
    ld bc, $035f                                  ; $67fc: $01 $5f $03
    ld [bc], a                                    ; $67ff: $02
    nop                                           ; $6800: $00
    ld [bc], a                                    ; $6801: $02
    nop                                           ; $6802: $00
    adc d                                         ; $6803: $8a
    ld [hl-], a                                   ; $6804: $32
    ld e, e                                       ; $6805: $5b
    ld bc, $035f                                  ; $6806: $01 $5f $03
    ld [hl+], a                                   ; $6809: $22
    inc b                                         ; $680a: $04
    ld e, a                                       ; $680b: $5f
    inc bc                                        ; $680c: $03
    ld l, c                                       ; $680d: $69
    ld l, $8a                                     ; $680e: $2e $8a
    ld [hl-], a                                   ; $6810: $32
    ld [hl+], a                                   ; $6811: $22
    inc b                                         ; $6812: $04
    ld e, a                                       ; $6813: $5f
    inc bc                                        ; $6814: $03
    adc d                                         ; $6815: $8a
    ld [hl-], a                                   ; $6816: $32
    adc d                                         ; $6817: $8a
    ld [hl-], a                                   ; $6818: $32
    ld [bc], a                                    ; $6819: $02
    nop                                           ; $681a: $00
    ld e, a                                       ; $681b: $5f
    inc bc                                        ; $681c: $03
    adc d                                         ; $681d: $8a
    ld [hl-], a                                   ; $681e: $32
    adc d                                         ; $681f: $8a
    ld [hl-], a                                   ; $6820: $32
    ld [bc], a                                    ; $6821: $02
    nop                                           ; $6822: $00
    adc c                                         ; $6823: $89
    ld [hl-], a                                   ; $6824: $32
    ld e, e                                       ; $6825: $5b
    ld bc, $035f                                  ; $6826: $01 $5f $03
    ld [hl+], a                                   ; $6829: $22
    inc b                                         ; $682a: $04
    adc d                                         ; $682b: $8a
    ld [hl-], a                                   ; $682c: $32

jr_0d3_682d:
    rst $38                                       ; $682d: $ff
    ld a, a                                       ; $682e: $7f
    sub h                                         ; $682f: $94
    ld d, d                                       ; $6830: $52
    add c                                         ; $6831: $81
    ld [$328a], sp                                ; $6832: $08 $8a $32

jr_0d3_6835:
    sbc $7b                                       ; $6835: $de $7b
    ld [hl+], a                                   ; $6837: $22
    inc b                                         ; $6838: $04
    ld [bc], a                                    ; $6839: $02
    nop                                           ; $683a: $00

jr_0d3_683b:
    ld e, a                                       ; $683b: $5f
    inc bc                                        ; $683c: $03
    adc c                                         ; $683d: $89
    ld [hl-], a                                   ; $683e: $32
    adc d                                         ; $683f: $8a
    ld [hl-], a                                   ; $6840: $32
    ld bc, $8900                                  ; $6841: $01 $00 $89
    ld l, $5b                                     ; $6844: $2e $5b
    ld bc, $035f                                  ; $6846: $01 $5f $03
    ld bc, $7300                                  ; $6849: $01 $00 $73
    ld c, [hl]                                    ; $684c: $4e
    adc h                                         ; $684d: $8c
    ld sp, $77bd                                  ; $684e: $31 $bd $77
    ld [hl+], a                                   ; $6851: $22
    inc b                                         ; $6852: $04
    rst $10                                       ; $6853: $d7
    ld e, d                                       ; $6854: $5a
    adc l                                         ; $6855: $8d
    ld sp, $7fff                                  ; $6856: $31 $ff $7f
    ld [bc], a                                    ; $6859: $02
    nop                                           ; $685a: $00
    adc c                                         ; $685b: $89
    ld l, $5f                                     ; $685c: $2e $5f
    inc bc                                        ; $685e: $03
    ld [hl+], a                                   ; $685f: $22
    inc b                                         ; $6860: $04
    ld [bc], a                                    ; $6861: $02
    nop                                           ; $6862: $00
    ld e, l                                       ; $6863: $5d
    ld [bc], a                                    ; $6864: $02
    ld c, c                                       ; $6865: $49
    ld l, $5a                                     ; $6866: $2e $5a
    ld l, e                                       ; $6868: $6b
    ld hl, $d604                                  ; $6869: $21 $04 $d6
    ld e, d                                       ; $686c: $5a
    rst $38                                       ; $686d: $ff
    ld a, a                                       ; $686e: $7f
    ld l, e                                       ; $686f: $6b
    dec l                                         ; $6870: $2d
    ld [hl+], a                                   ; $6871: $22
    inc b                                         ; $6872: $04
    ld d, d                                       ; $6873: $52
    ld c, d                                       ; $6874: $4a
    ld e, d                                       ; $6875: $5a
    ld l, e                                       ; $6876: $6b
    ld l, h                                       ; $6877: $6c
    dec l                                         ; $6878: $2d
    ld [hl+], a                                   ; $6879: $22
    inc b                                         ; $687a: $04
    ld e, a                                       ; $687b: $5f
    inc bc                                        ; $687c: $03
    ld a, e                                       ; $687d: $7b
    ld l, a                                       ; $687e: $6f
    ld l, b                                       ; $687f: $68
    ld l, $02                                     ; $6880: $2e $02
    nop                                           ; $6882: $00
    ld e, l                                       ; $6883: $5d
    ld [bc], a                                    ; $6884: $02
    ld l, b                                       ; $6885: $68
    ld a, [hl+]                                   ; $6886: $2a
    jr jr_0d3_68ec                                ; $6887: $18 $63

    ld hl, $b504                                  ; $6889: $21 $04 $b5
    dec h                                         ; $688c: $25
    ld a, [de]                                    ; $688d: $1a
    ld e, e                                       ; $688e: $5b
    sbc $7b                                       ; $688f: $de $7b
    ld hl, $b500                                  ; $6891: $21 $00 $b5
    ld d, [hl]                                    ; $6894: $56
    daa                                           ; $6895: $27
    add hl, hl                                    ; $6896: $29
    ld e, e                                       ; $6897: $5b
    ld l, e                                       ; $6898: $6b
    ld [bc], a                                    ; $6899: $02
    nop                                           ; $689a: $00
    or [hl]                                       ; $689b: $b6
    ld d, [hl]                                    ; $689c: $56
    ld e, a                                       ; $689d: $5f
    inc bc                                        ; $689e: $03
    ret                                           ; $689f: $c9


    add hl, hl                                    ; $68a0: $29
    ld [bc], a                                    ; $68a1: $02
    nop                                           ; $68a2: $00
    ld e, l                                       ; $68a3: $5d
    ld [bc], a                                    ; $68a4: $02
    add hl, hl                                    ; $68a5: $29
    ld l, $59                                     ; $68a6: $2e $59
    ld h, a                                       ; $68a8: $67
    ld [hl+], a                                   ; $68a9: $22
    inc b                                         ; $68aa: $04
    ld a, $5b                                     ; $68ab: $3e $5b
    ld c, b                                       ; $68ad: $48
    dec l                                         ; $68ae: $2d
    or l                                          ; $68af: $b5
    dec h                                         ; $68b0: $25
    ld hl, $1404                                  ; $68b1: $21 $04 $14
    ld a, [hl-]                                   ; $68b4: $3a
    ld c, b                                       ; $68b5: $48
    dec l                                         ; $68b6: $2d
    ld a, $5b                                     ; $68b7: $3e $5b
    ld b, e                                       ; $68b9: $43
    ld [$035f], sp                                ; $68ba: $08 $5f $03
    ld [hl], h                                    ; $68bd: $74
    ld c, [hl]                                    ; $68be: $4e
    rst $38                                       ; $68bf: $ff
    ld a, a                                       ; $68c0: $7f
    ld bc, $2600                                  ; $68c1: $01 $00 $26
    ld h, $5d                                     ; $68c4: $26 $5d
    ld [bc], a                                    ; $68c6: $02
    ld [hl], h                                    ; $68c7: $74
    ld c, [hl]                                    ; $68c8: $4e
    ld [bc], a                                    ; $68c9: $02
    nop                                           ; $68ca: $00
    sub h                                         ; $68cb: $94
    ld d, d                                       ; $68cc: $52
    sbc $4a                                       ; $68cd: $de $4a
    ld c, b                                       ; $68cf: $48
    dec l                                         ; $68d0: $2d
    ld hl, $9408                                  ; $68d1: $21 $08 $94
    ld d, d                                       ; $68d4: $52
    cp [hl]                                       ; $68d5: $be
    ld b, d                                       ; $68d6: $42
    ld c, b                                       ; $68d7: $48
    add hl, hl                                    ; $68d8: $29
    ld [hl+], a                                   ; $68d9: $22
    inc b                                         ; $68da: $04
    db $10                                        ; $68db: $10
    ld b, d                                       ; $68dc: $42
    ld e, a                                       ; $68dd: $5f
    inc bc                                        ; $68de: $03
    db $db                                        ; $68df: $db
    ld c, [hl]                                    ; $68e0: $4e
    ld [bc], a                                    ; $68e1: $02
    nop                                           ; $68e2: $00
    dec h                                         ; $68e3: $25
    ld [hl+], a                                   ; $68e4: $22
    ld e, e                                       ; $68e5: $5b
    ld bc, $035f                                  ; $68e6: $01 $5f $03
    dec bc                                        ; $68e9: $0b
    nop                                           ; $68ea: $00
    ld e, d                                       ; $68eb: $5a

jr_0d3_68ec:
    ld a, $3e                                     ; $68ec: $3e $3e
    ld e, e                                       ; $68ee: $5b
    rst $38                                       ; $68ef: $ff
    ld a, a                                       ; $68f0: $7f
    ld b, e                                       ; $68f1: $43
    ld [$6b9e], sp                                ; $68f2: $08 $9e $6b
    ld [hl], b                                    ; $68f5: $70
    dec h                                         ; $68f6: $25
    ld c, $00                                     ; $68f7: $0e $00
    ld [bc], a                                    ; $68f9: $02
    nop                                           ; $68fa: $00
    jp c, Jump_000_3f52                           ; $68fb: $da $52 $3f

    inc bc                                        ; $68fe: $03
    adc d                                         ; $68ff: $8a
    dec e                                         ; $6900: $1d
    ld bc, $0500                                  ; $6901: $01 $00 $05
    ld e, $5b                                     ; $6904: $1e $5b
    ld bc, $035f                                  ; $6906: $01 $5f $03
    inc c                                         ; $6909: $0c
    nop                                           ; $690a: $00
    ld e, b                                       ; $690b: $58
    ld a, $31                                     ; $690c: $3e $31
    add hl, de                                    ; $690e: $19
    ld a, $5b                                     ; $690f: $3e $5b
    dec hl                                        ; $6911: $2b
    nop                                           ; $6912: $00
    ld a, e                                       ; $6913: $7b
    ld a, $39                                     ; $6914: $3e $39
    dec c                                         ; $6916: $0d
    ld a, $5b                                     ; $6917: $3e $5b
    ld bc, $7800                                  ; $6919: $01 $00 $78
    ld b, d                                       ; $691c: $42
    adc c                                         ; $691d: $89
    add hl, de                                    ; $691e: $19
    ld e, a                                       ; $691f: $5f
    inc bc                                        ; $6920: $03
    ld [bc], a                                    ; $6921: $02
    nop                                           ; $6922: $00
    db $e4                                        ; $6923: $e4
    add hl, de                                    ; $6924: $19
    ld e, e                                       ; $6925: $5b
    ld bc, $035f                                  ; $6926: $01 $5f $03
    add [hl]                                      ; $6929: $86
    inc c                                         ; $692a: $0c
    sbc l                                         ; $692b: $9d
    ld b, d                                       ; $692c: $42
    ld a, $5b                                     ; $692d: $3e $5b
    jr nc, jr_0d3_6946                            ; $692f: $30 $15

    nop                                           ; $6931: $00
    nop                                           ; $6932: $00
    sbc [hl]                                      ; $6933: $9e
    ld a, $30                                     ; $6934: $3e $30
    dec d                                         ; $6936: $15
    ld a, $5b                                     ; $6937: $3e $5b
    ld [bc], a                                    ; $6939: $02
    nop                                           ; $693a: $00
    ld e, a                                       ; $693b: $5f
    inc bc                                        ; $693c: $03
    sub $5a                                       ; $693d: $d6 $5a
    and l                                         ; $693f: $a5
    dec e                                         ; $6940: $1d
    ld [bc], a                                    ; $6941: $02
    nop                                           ; $6942: $00
    jp Jump_0d3_5b15                              ; $6943: $c3 $15 $5b


jr_0d3_6946:
    ld bc, $035f                                  ; $6946: $01 $5f $03
    jp Jump_000_1e15                              ; $6949: $c3 $15 $1e


    ld d, a                                       ; $694c: $57
    ld de, $8721                                  ; $694d: $11 $21 $87
    inc c                                         ; $6950: $0c
    ld b, l                                       ; $6951: $45
    nop                                           ; $6952: $00
    ld e, $53                                     ; $6953: $1e $53
    ld [hl], d                                    ; $6955: $72
    dec e                                         ; $6956: $1d
    jp $0215                                      ; $6957: $c3 $15 $02


    nop                                           ; $695a: $00
    ld e, a                                       ; $695b: $5f
    inc bc                                        ; $695c: $03
    jp Jump_000_2915                              ; $695d: $c3 $15 $29


    dec h                                         ; $6960: $25
    ld [bc], a                                    ; $6961: $02
    nop                                           ; $6962: $00
    ld e, e                                       ; $6963: $5b
    ld bc, $11a2                                  ; $6964: $01 $a2 $11
    ld e, a                                       ; $6967: $5f
    inc bc                                        ; $6968: $03
    and d                                         ; $6969: $a2
    ld de, $4add                                  ; $696a: $11 $dd $4a
    dec hl                                        ; $696d: $2b
    inc e                                         ; $696e: $1c
    ld de, $a225                                  ; $696f: $11 $25 $a2
    ld de, $4efe                                  ; $6972: $11 $fe $4e
    ld d, d                                       ; $6975: $52
    add hl, de                                    ; $6976: $19
    ld l, b                                       ; $6977: $68
    nop                                           ; $6978: $00
    ld [bc], a                                    ; $6979: $02
    nop                                           ; $697a: $00
    ld e, a                                       ; $697b: $5f
    inc bc                                        ; $697c: $03
    and d                                         ; $697d: $a2
    ld de, $15c2                                  ; $697e: $11 $c2 $15
    ld [bc], a                                    ; $6981: $02
    nop                                           ; $6982: $00
    ld e, e                                       ; $6983: $5b
    ld bc, $0da1                                  ; $6984: $01 $a1 $0d
    ld e, a                                       ; $6987: $5f
    inc bc                                        ; $6988: $03
    nop                                           ; $6989: $00
    nop                                           ; $698a: $00
    db $fd                                        ; $698b: $fd
    ld c, [hl]                                    ; $698c: $4e
    jr nc, jr_0d3_69a4                            ; $698d: $30 $15

    and c                                         ; $698f: $a1
    ld de, $0046                                  ; $6990: $11 $46 $00
    ld d, c                                       ; $6993: $51
    add hl, de                                    ; $6994: $19
    sbc [hl]                                      ; $6995: $9e
    ld a, $a2                                     ; $6996: $3e $a2
    ld de, $0002                                  ; $6998: $11 $02 $00
    ld e, a                                       ; $699b: $5f
    inc bc                                        ; $699c: $03
    and c                                         ; $699d: $a1
    dec c                                         ; $699e: $0d
    and d                                         ; $699f: $a2
    ld de, $0d81                                  ; $69a0: $11 $81 $0d
    ld e, e                                       ; $69a3: $5b

jr_0d3_69a4:
    ld bc, $0002                                  ; $69a4: $01 $02 $00
    ld e, a                                       ; $69a7: $5f
    inc bc                                        ; $69a8: $03
    ld h, c                                       ; $69a9: $61
    nop                                           ; $69aa: $00
    sbc [hl]                                      ; $69ab: $9e
    ld a, $71                                     ; $69ac: $3e $71
    dec e                                         ; $69ae: $1d
    rst $38                                       ; $69af: $ff
    ld a, a                                       ; $69b0: $7f
    ld b, [hl]                                    ; $69b1: $46
    nop                                           ; $69b2: $00
    ld a, e                                       ; $69b3: $7b
    ld l, a                                       ; $69b4: $6f
    ld d, b                                       ; $69b5: $50
    dec e                                         ; $69b6: $1d
    sbc [hl]                                      ; $69b7: $9e
    ld a, $00                                     ; $69b8: $3e $00
    nop                                           ; $69ba: $00
    ld e, a                                       ; $69bb: $5f
    inc bc                                        ; $69bc: $03
    add c                                         ; $69bd: $81
    dec c                                         ; $69be: $0d
    ld [bc], a                                    ; $69bf: $02
    nop                                           ; $69c0: $00
    ld bc, $5b00                                  ; $69c1: $01 $00 $5b
    ld bc, $0d80                                  ; $69c4: $01 $80 $0d
    ld e, a                                       ; $69c7: $5f
    inc bc                                        ; $69c8: $03
    nop                                           ; $69c9: $00
    nop                                           ; $69ca: $00
    jr c, jr_0d3_6a03                             ; $69cb: $38 $36

    sbc [hl]                                      ; $69cd: $9e
    ld l, a                                       ; $69ce: $6f
    db $eb                                        ; $69cf: $eb
    inc d                                         ; $69d0: $14
    nop                                           ; $69d1: $00
    nop                                           ; $69d2: $00
    inc sp                                        ; $69d3: $33
    ld a, $5c                                     ; $69d4: $3e $5c
    ld h, a                                       ; $69d6: $67
    sbc [hl]                                      ; $69d7: $9e
    ld a, $00                                     ; $69d8: $3e $00
    nop                                           ; $69da: $00
    rst $08                                       ; $69db: $cf
    add hl, sp                                    ; $69dc: $39
    ld e, a                                       ; $69dd: $5f
    inc bc                                        ; $69de: $03
    add b                                         ; $69df: $80
    dec c                                         ; $69e0: $0d
    ld [bc], a                                    ; $69e1: $02
    nop                                           ; $69e2: $00
    ld e, e                                       ; $69e3: $5b
    ld bc, $035f                                  ; $69e4: $01 $5f $03
    add b                                         ; $69e7: $80
    dec c                                         ; $69e8: $0d
    ld e, e                                       ; $69e9: $5b
    ld bc, $035f                                  ; $69ea: $01 $5f $03
    ld e, a                                       ; $69ed: $5f
    inc bc                                        ; $69ee: $03
    add b                                         ; $69ef: $80
    dec c                                         ; $69f0: $0d
    ld e, e                                       ; $69f1: $5b
    ld bc, $035f                                  ; $69f2: $01 $5f $03
    ld e, a                                       ; $69f5: $5f
    inc bc                                        ; $69f6: $03
    add b                                         ; $69f7: $80
    dec c                                         ; $69f8: $0d
    ld [bc], a                                    ; $69f9: $02
    nop                                           ; $69fa: $00
    ld e, e                                       ; $69fb: $5b
    ld bc, $035f                                  ; $69fc: $01 $5f $03
    add b                                         ; $69ff: $80
    dec c                                         ; $6a00: $0d
    ld [bc], a                                    ; $6a01: $02
    nop                                           ; $6a02: $00

jr_0d3_6a03:
    ld e, e                                       ; $6a03: $5b
    ld bc, $2014                                  ; $6a04: $01 $14 $20
    ld e, a                                       ; $6a07: $5f
    inc bc                                        ; $6a08: $03
    inc d                                         ; $6a09: $14
    jr nz, jr_0d3_6a6b                            ; $6a0a: $20 $5f

    inc bc                                        ; $6a0c: $03
    inc d                                         ; $6a0d: $14
    jr nz, jr_0d3_6a6f                            ; $6a0e: $20 $5f

    inc bc                                        ; $6a10: $03
    ld c, d                                       ; $6a11: $4a
    jr z, @+$61                                   ; $6a12: $28 $5f

    inc bc                                        ; $6a14: $03
    inc d                                         ; $6a15: $14
    jr nz, jr_0d3_6a77                            ; $6a16: $20 $5f

    inc bc                                        ; $6a18: $03
    inc b                                         ; $6a19: $04
    db $10                                        ; $6a1a: $10
    ld e, a                                       ; $6a1b: $5f
    inc bc                                        ; $6a1c: $03
    inc d                                         ; $6a1d: $14
    jr nz, @-$65                                  ; $6a1e: $20 $99

    ld c, c                                       ; $6a20: $49
    ld [bc], a                                    ; $6a21: $02
    nop                                           ; $6a22: $00
    inc d                                         ; $6a23: $14
    jr nz, jr_0d3_6a83                            ; $6a24: $20 $5d

    ld [bc], a                                    ; $6a26: $02
    ld b, $24                                     ; $6a27: $06 $24
    inc b                                         ; $6a29: $04
    inc h                                         ; $6a2a: $24
    inc d                                         ; $6a2b: $14
    jr nz, jr_0d3_6a78                            ; $6a2c: $20 $4a

    jr z, jr_0d3_6a36                             ; $6a2e: $28 $06

    inc h                                         ; $6a30: $24
    inc b                                         ; $6a31: $04
    inc h                                         ; $6a32: $24
    inc d                                         ; $6a33: $14
    jr nz, @+$4c                                  ; $6a34: $20 $4a

jr_0d3_6a36:
    jr z, jr_0d3_6a3e                             ; $6a36: $28 $06

    inc h                                         ; $6a38: $24
    inc b                                         ; $6a39: $04
    jr @-$65                                      ; $6a3a: $18 $99

    ld c, c                                       ; $6a3c: $49
    inc d                                         ; $6a3d: $14

jr_0d3_6a3e:
    jr nz, jr_0d3_6a9f                            ; $6a3e: $20 $5f

    inc bc                                        ; $6a40: $03
    ld [bc], a                                    ; $6a41: $02
    nop                                           ; $6a42: $00
    sub l                                         ; $6a43: $95
    inc l                                         ; $6a44: $2c
    ld e, l                                       ; $6a45: $5d
    ld [bc], a                                    ; $6a46: $02
    ld b, $24                                     ; $6a47: $06 $24
    daa                                           ; $6a49: $27
    inc h                                         ; $6a4a: $24
    cp d                                          ; $6a4b: $ba
    add hl, hl                                    ; $6a4c: $29
    inc d                                         ; $6a4d: $14
    jr nz, jr_0d3_6aaa                            ; $6a4e: $20 $5a

    ld a, [hl-]                                   ; $6a50: $3a
    inc b                                         ; $6a51: $04
    inc h                                         ; $6a52: $24
    cp d                                          ; $6a53: $ba
    add hl, hl                                    ; $6a54: $29
    inc d                                         ; $6a55: $14
    jr nz, jr_0d3_6ab2                            ; $6a56: $20 $5a

    ld a, [hl-]                                   ; $6a58: $3a
    ld [bc], a                                    ; $6a59: $02
    nop                                           ; $6a5a: $00
    sbc c                                         ; $6a5b: $99
    ld c, c                                       ; $6a5c: $49
    ld e, a                                       ; $6a5d: $5f
    inc bc                                        ; $6a5e: $03
    ld b, $24                                     ; $6a5f: $06 $24
    ld [bc], a                                    ; $6a61: $02
    nop                                           ; $6a62: $00
    jr c, jr_0d3_6aa2                             ; $6a63: $38 $3d

    ld e, l                                       ; $6a65: $5d
    ld [bc], a                                    ; $6a66: $02
    daa                                           ; $6a67: $27
    inc h                                         ; $6a68: $24
    ld b, $20                                     ; $6a69: $06 $20

jr_0d3_6a6b:
    ld d, h                                       ; $6a6b: $54
    ld sp, $2472                                  ; $6a6c: $31 $72 $24

jr_0d3_6a6f:
    ld e, d                                       ; $6a6f: $5a
    ld a, [hl-]                                   ; $6a70: $3a
    ld [$7220], sp                                ; $6a71: $08 $20 $72
    add hl, sp                                    ; $6a74: $39
    db $fc                                        ; $6a75: $fc
    ld a, e                                       ; $6a76: $7b

jr_0d3_6a77:
    ld e, d                                       ; $6a77: $5a

jr_0d3_6a78:
    ld a, [hl-]                                   ; $6a78: $3a
    ld [bc], a                                    ; $6a79: $02
    nop                                           ; $6a7a: $00
    jp c, Jump_0d3_5f49                           ; $6a7b: $da $49 $5f

    inc bc                                        ; $6a7e: $03
    jp c, Jump_000_024d                           ; $6a7f: $da $4d $02

    nop                                           ; $6a82: $00

jr_0d3_6a83:
    ld a, [$5d4d]                                 ; $6a83: $fa $4d $5d
    ld [bc], a                                    ; $6a86: $02
    dec b                                         ; $6a87: $05
    inc h                                         ; $6a88: $24
    ret nc                                        ; $6a89: $d0

    jr z, @+$3c                                   ; $6a8a: $28 $3a

    ld [hl], $0f                                  ; $6a8c: $36 $0f
    ld e, [hl]                                    ; $6a8e: $5e
    db $fc                                        ; $6a8f: $fc
    ld a, e                                       ; $6a90: $7b
    dec b                                         ; $6a91: $05
    inc h                                         ; $6a92: $24
    rrca                                          ; $6a93: $0f
    ld e, [hl]                                    ; $6a94: $5e
    ld sp, hl                                     ; $6a95: $f9
    ld sp, $2c8d                                  ; $6a96: $31 $8d $2c
    ld [bc], a                                    ; $6a99: $02
    nop                                           ; $6a9a: $00
    ld a, [$5f4d]                                 ; $6a9b: $fa $4d $5f
    inc bc                                        ; $6a9e: $03

jr_0d3_6a9f:
    ld a, [de]                                    ; $6a9f: $1a
    ld c, [hl]                                    ; $6aa0: $4e
    ld [bc], a                                    ; $6aa1: $02

jr_0d3_6aa2:
    nop                                           ; $6aa2: $00
    ld e, e                                       ; $6aa3: $5b
    ld bc, $523b                                  ; $6aa4: $01 $3b $52
    ld e, a                                       ; $6aa7: $5f
    inc bc                                        ; $6aa8: $03
    inc b                                         ; $6aa9: $04

jr_0d3_6aaa:
    inc h                                         ; $6aaa: $24
    cp d                                          ; $6aab: $ba
    add hl, hl                                    ; $6aac: $29
    ld e, d                                       ; $6aad: $5a
    ld a, [hl-]                                   ; $6aae: $3a
    ld e, a                                       ; $6aaf: $5f
    inc bc                                        ; $6ab0: $03
    rlca                                          ; $6ab1: $07

jr_0d3_6ab2:
    inc h                                         ; $6ab2: $24
    cp d                                          ; $6ab3: $ba
    add hl, hl                                    ; $6ab4: $29
    ld e, d                                       ; $6ab5: $5a
    ld a, [hl-]                                   ; $6ab6: $3a
    inc d                                         ; $6ab7: $14
    jr nz, jr_0d3_6abd                            ; $6ab8: $20 $03

    db $10                                        ; $6aba: $10
    cp d                                          ; $6abb: $ba
    add hl, hl                                    ; $6abc: $29

jr_0d3_6abd:
    ld e, a                                       ; $6abd: $5f
    inc bc                                        ; $6abe: $03
    dec sp                                        ; $6abf: $3b
    ld c, [hl]                                    ; $6ac0: $4e
    ld [bc], a                                    ; $6ac1: $02
    nop                                           ; $6ac2: $00
    ld e, e                                       ; $6ac3: $5b
    ld bc, $525b                                  ; $6ac4: $01 $5b $52
    ld e, a                                       ; $6ac7: $5f
    inc bc                                        ; $6ac8: $03
    inc b                                         ; $6ac9: $04
    inc h                                         ; $6aca: $24
    cp d                                          ; $6acb: $ba
    add hl, hl                                    ; $6acc: $29
    inc d                                         ; $6acd: $14
    jr nz, jr_0d3_6b2a                            ; $6ace: $20 $5a

    ld a, [hl-]                                   ; $6ad0: $3a
    dec bc                                        ; $6ad1: $0b
    inc e                                         ; $6ad2: $1c
    ld e, d                                       ; $6ad3: $5a
    ld a, [hl-]                                   ; $6ad4: $3a
    inc d                                         ; $6ad5: $14
    jr nz, jr_0d3_6b32                            ; $6ad6: $20 $5a

    ld a, [hl-]                                   ; $6ad8: $3a
    inc bc                                        ; $6ad9: $03
    db $10                                        ; $6ada: $10
    cp d                                          ; $6adb: $ba
    add hl, hl                                    ; $6adc: $29
    ld e, a                                       ; $6add: $5f
    inc bc                                        ; $6ade: $03
    ld e, e                                       ; $6adf: $5b

jr_0d3_6ae0:
    ld d, d                                       ; $6ae0: $52
    ld [bc], a                                    ; $6ae1: $02
    nop                                           ; $6ae2: $00
    ld e, l                                       ; $6ae3: $5d
    ld [bc], a                                    ; $6ae4: $02
    sbc h                                         ; $6ae5: $9c
    ld d, d                                       ; $6ae6: $52
    ld b, $24                                     ; $6ae7: $06 $24
    inc b                                         ; $6ae9: $04
    inc h                                         ; $6aea: $24
    cp d                                          ; $6aeb: $ba
    add hl, hl                                    ; $6aec: $29
    inc d                                         ; $6aed: $14
    jr nz, jr_0d3_6b4a                            ; $6aee: $20 $5a

jr_0d3_6af0:
    ld a, [hl-]                                   ; $6af0: $3a
    dec bc                                        ; $6af1: $0b
    inc e                                         ; $6af2: $1c
    cp d                                          ; $6af3: $ba
    add hl, hl                                    ; $6af4: $29
    inc d                                         ; $6af5: $14
    jr nz, jr_0d3_6b52                            ; $6af6: $20 $5a

    ld a, [hl-]                                   ; $6af8: $3a
    inc bc                                        ; $6af9: $03
    db $10                                        ; $6afa: $10
    ld a, h                                       ; $6afb: $7c
    ld c, [hl]                                    ; $6afc: $4e
    ld e, a                                       ; $6afd: $5f
    inc bc                                        ; $6afe: $03
    inc d                                         ; $6aff: $14
    jr nz, jr_0d3_6b04                            ; $6b00: $20 $02

    nop                                           ; $6b02: $00
    ld d, [hl]                                    ; $6b03: $56

jr_0d3_6b04:
    inc d                                         ; $6b04: $14
    call c, Call_0d3_5f56                         ; $6b05: $dc $56 $5f
    inc bc                                        ; $6b08: $03
    inc b                                         ; $6b09: $04
    inc h                                         ; $6b0a: $24
    jp c, Jump_000_142d                           ; $6b0b: $da $2d $14

    jr nz, jr_0d3_6b5a                            ; $6b0e: $20 $4a

    jr z, jr_0d3_6b16                             ; $6b10: $28 $04

    inc h                                         ; $6b12: $24
    cp d                                          ; $6b13: $ba
    add hl, hl                                    ; $6b14: $29
    inc d                                         ; $6b15: $14

jr_0d3_6b16:
    jr nz, jr_0d3_6b72                            ; $6b16: $20 $5a

    ld a, [hl-]                                   ; $6b18: $3a
    inc bc                                        ; $6b19: $03
    inc d                                         ; $6b1a: $14
    call c, Call_0d3_5f56                         ; $6b1b: $dc $56 $5f
    inc bc                                        ; $6b1e: $03
    inc l                                         ; $6b1f: $2c
    inc h                                         ; $6b20: $24
    ld [bc], a                                    ; $6b21: $02
    nop                                           ; $6b22: $00
    inc d                                         ; $6b23: $14
    jr nz, jr_0d3_6b83                            ; $6b24: $20 $5d

    ld [bc], a                                    ; $6b26: $02
    jr z, jr_0d3_6b4d                             ; $6b27: $28 $24

    inc b                                         ; $6b29: $04

jr_0d3_6b2a:
    inc h                                         ; $6b2a: $24
    inc d                                         ; $6b2b: $14
    jr nz, @-$44                                  ; $6b2c: $20 $ba

    add hl, hl                                    ; $6b2e: $29
    ld c, d                                       ; $6b2f: $4a
    jr z, jr_0d3_6b36                             ; $6b30: $28 $04

jr_0d3_6b32:
    inc h                                         ; $6b32: $24
    inc d                                         ; $6b33: $14
    jr nz, jr_0d3_6af0                            ; $6b34: $20 $ba

jr_0d3_6b36:
    add hl, hl                                    ; $6b36: $29
    ld c, d                                       ; $6b37: $4a

jr_0d3_6b38:
    jr z, jr_0d3_6b3e                             ; $6b38: $28 $04

    jr jr_0d3_6b38                                ; $6b3a: $18 $fc

    ld e, d                                       ; $6b3c: $5a
    inc d                                         ; $6b3d: $14

jr_0d3_6b3e:
    jr nz, jr_0d3_6b9f                            ; $6b3e: $20 $5f

    inc bc                                        ; $6b40: $03
    ld [bc], a                                    ; $6b41: $02
    nop                                           ; $6b42: $00
    inc d                                         ; $6b43: $14
    jr nz, jr_0d3_6ae0                            ; $6b44: $20 $9a

    ld de, $035f                                  ; $6b46: $11 $5f $03
    inc b                                         ; $6b49: $04

jr_0d3_6b4a:
    inc h                                         ; $6b4a: $24
    cp d                                          ; $6b4b: $ba
    add hl, hl                                    ; $6b4c: $29

jr_0d3_6b4d:
    ld c, d                                       ; $6b4d: $4a
    jr z, jr_0d3_6baa                             ; $6b4e: $28 $5a

    ld a, [hl-]                                   ; $6b50: $3a
    inc b                                         ; $6b51: $04

jr_0d3_6b52:
    inc h                                         ; $6b52: $24
    ld e, d                                       ; $6b53: $5a
    ld a, [hl-]                                   ; $6b54: $3a
    inc d                                         ; $6b55: $14
    jr nz, jr_0d3_6bb2                            ; $6b56: $20 $5a

    ld e, a                                       ; $6b58: $5f
    inc bc                                        ; $6b59: $03

jr_0d3_6b5a:
    jr jr_0d3_6b16                                ; $6b5a: $18 $ba

    ld b, [hl]                                    ; $6b5c: $46
    ld e, a                                       ; $6b5d: $5f
    inc bc                                        ; $6b5e: $03
    inc d                                         ; $6b5f: $14
    jr nz, jr_0d3_6b64                            ; $6b60: $20 $02

    nop                                           ; $6b62: $00
    sub [hl]                                      ; $6b63: $96

jr_0d3_6b64:
    db $10                                        ; $6b64: $10
    cp h                                          ; $6b65: $bc
    ld [hl+], a                                   ; $6b66: $22
    dec b                                         ; $6b67: $05
    inc h                                         ; $6b68: $24
    inc b                                         ; $6b69: $04
    inc h                                         ; $6b6a: $24
    cp d                                          ; $6b6b: $ba
    add hl, hl                                    ; $6b6c: $29
    inc d                                         ; $6b6d: $14
    jr nz, jr_0d3_6bca                            ; $6b6e: $20 $5a

    ld a, [hl-]                                   ; $6b70: $3a
    inc b                                         ; $6b71: $04

jr_0d3_6b72:
    inc h                                         ; $6b72: $24
    ld a, [$5a31]                                 ; $6b73: $fa $31 $5a
    ld e, a                                       ; $6b76: $5f
    inc d                                         ; $6b77: $14
    jr nz, jr_0d3_6b7d                            ; $6b78: $20 $03

    jr jr_0d3_6bd6                                ; $6b7a: $18 $5a

    ld a, [hl-]                                   ; $6b7c: $3a

jr_0d3_6b7d:
    ld e, a                                       ; $6b7d: $5f
    inc bc                                        ; $6b7e: $03
    ld e, d                                       ; $6b7f: $5a
    ld e, a                                       ; $6b80: $5f
    ld [bc], a                                    ; $6b81: $02
    nop                                           ; $6b82: $00

jr_0d3_6b83:
    or a                                          ; $6b83: $b7
    inc d                                         ; $6b84: $14
    ld e, a                                       ; $6b85: $5f
    inc bc                                        ; $6b86: $03
    daa                                           ; $6b87: $27
    inc h                                         ; $6b88: $24
    inc b                                         ; $6b89: $04
    inc h                                         ; $6b8a: $24
    inc d                                         ; $6b8b: $14
    jr nz, @-$44                                  ; $6b8c: $20 $ba

    add hl, hl                                    ; $6b8e: $29
    ld e, d                                       ; $6b8f: $5a
    ld a, [hl-]                                   ; $6b90: $3a
    inc b                                         ; $6b91: $04
    inc h                                         ; $6b92: $24
    ld a, [$1431]                                 ; $6b93: $fa $31 $14
    jr nz, jr_0d3_6bf2                            ; $6b96: $20 $5a

    ld e, a                                       ; $6b98: $5f
    inc bc                                        ; $6b99: $03
    inc d                                         ; $6b9a: $14
    ld a, [$5f31]                                 ; $6b9b: $fa $31 $5f
    inc bc                                        ; $6b9e: $03

jr_0d3_6b9f:
    ld e, d                                       ; $6b9f: $5a
    ld e, a                                       ; $6ba0: $5f
    ld [bc], a                                    ; $6ba1: $02
    nop                                           ; $6ba2: $00
    inc d                                         ; $6ba3: $14
    jr nz, jr_0d3_6c01                            ; $6ba4: $20 $5b

    ld bc, $035f                                  ; $6ba6: $01 $5f $03
    inc b                                         ; $6ba9: $04

jr_0d3_6baa:
    inc h                                         ; $6baa: $24
    ld e, d                                       ; $6bab: $5a
    ld e, a                                       ; $6bac: $5f
    inc d                                         ; $6bad: $14
    jr nz, jr_0d3_6c0f                            ; $6bae: $20 $5f

    inc bc                                        ; $6bb0: $03
    dec b                                         ; $6bb1: $05

jr_0d3_6bb2:
    inc h                                         ; $6bb2: $24
    ld e, d                                       ; $6bb3: $5a
    ld a, [hl-]                                   ; $6bb4: $3a
    inc d                                         ; $6bb5: $14
    jr nz, jr_0d3_6c12                            ; $6bb6: $20 $5a

    ld e, a                                       ; $6bb8: $5f
    ld [bc], a                                    ; $6bb9: $02
    nop                                           ; $6bba: $00
    ld a, [$5f31]                                 ; $6bbb: $fa $31 $5f
    inc bc                                        ; $6bbe: $03
    inc b                                         ; $6bbf: $04
    inc h                                         ; $6bc0: $24
    ld [bc], a                                    ; $6bc1: $02
    nop                                           ; $6bc2: $00
    inc d                                         ; $6bc3: $14
    jr nz, @+$5f                                  ; $6bc4: $20 $5d

    ld [bc], a                                    ; $6bc6: $02
    dec b                                         ; $6bc7: $05
    inc h                                         ; $6bc8: $24
    inc b                                         ; $6bc9: $04

jr_0d3_6bca:
    inc h                                         ; $6bca: $24
    ld a, [de]                                    ; $6bcb: $1a
    ld [hl-], a                                   ; $6bcc: $32
    inc d                                         ; $6bcd: $14
    jr nz, @+$5c                                  ; $6bce: $20 $5a

    ld e, a                                       ; $6bd0: $5f
    inc b                                         ; $6bd1: $04
    inc h                                         ; $6bd2: $24
    inc d                                         ; $6bd3: $14
    jr nz, jr_0d3_6c20                            ; $6bd4: $20 $4a

jr_0d3_6bd6:
    jr z, jr_0d3_6c32                             ; $6bd6: $28 $5a

    ld e, a                                       ; $6bd8: $5f
    inc bc                                        ; $6bd9: $03
    jr jr_0d3_6bf6                                ; $6bda: $18 $1a

    ld [hl-], a                                   ; $6bdc: $32
    inc d                                         ; $6bdd: $14
    jr nz, @+$61                                  ; $6bde: $20 $5f

    inc bc                                        ; $6be0: $03
    ld [bc], a                                    ; $6be1: $02
    nop                                           ; $6be2: $00
    ld e, e                                       ; $6be3: $5b
    ld bc, $035f                                  ; $6be4: $01 $5f $03
    ld e, a                                       ; $6be7: $5f
    inc bc                                        ; $6be8: $03
    ld e, e                                       ; $6be9: $5b
    ld bc, $035f                                  ; $6bea: $01 $5f $03
    ld e, a                                       ; $6bed: $5f
    inc bc                                        ; $6bee: $03
    ld e, a                                       ; $6bef: $5f
    inc bc                                        ; $6bf0: $03
    ld e, e                                       ; $6bf1: $5b

jr_0d3_6bf2:
    ld bc, $035f                                  ; $6bf2: $01 $5f $03
    ld e, a                                       ; $6bf5: $5f

jr_0d3_6bf6:
    inc bc                                        ; $6bf6: $03
    ld e, a                                       ; $6bf7: $5f
    inc bc                                        ; $6bf8: $03
    ld [bc], a                                    ; $6bf9: $02
    nop                                           ; $6bfa: $00
    ld e, e                                       ; $6bfb: $5b
    ld bc, $035f                                  ; $6bfc: $01 $5f $03
    ld e, a                                       ; $6bff: $5f
    inc bc                                        ; $6c00: $03

jr_0d3_6c01:
    ld bc, $5b00                                  ; $6c01: $01 $00 $5b
    ld bc, $035f                                  ; $6c04: $01 $5f $03
    and l                                         ; $6c07: $a5
    inc d                                         ; $6c08: $14
    xor l                                         ; $6c09: $ad
    dec a                                         ; $6c0a: $3d
    ld e, a                                       ; $6c0b: $5f
    inc bc                                        ; $6c0c: $03
    rst $28                                       ; $6c0d: $ef
    ld c, l                                       ; $6c0e: $4d

jr_0d3_6c0f:
    ld d, d                                       ; $6c0f: $52
    ld e, d                                       ; $6c10: $5a
    nop                                           ; $6c11: $00

jr_0d3_6c12:
    nop                                           ; $6c12: $00
    ld e, a                                       ; $6c13: $5f
    inc bc                                        ; $6c14: $03
    ld b, d                                       ; $6c15: $42
    ld [$0c63], sp                                ; $6c16: $08 $63 $0c
    nop                                           ; $6c19: $00
    nop                                           ; $6c1a: $00
    ld e, a                                       ; $6c1b: $5f
    inc bc                                        ; $6c1c: $03
    ld [bc], a                                    ; $6c1d: $02
    nop                                           ; $6c1e: $00
    ld h, e                                       ; $6c1f: $63

jr_0d3_6c20:
    inc c                                         ; $6c20: $0c
    ld bc, $1000                                  ; $6c21: $01 $00 $10
    ld c, [hl]                                    ; $6c24: $4e
    ld e, l                                       ; $6c25: $5d
    ld [bc], a                                    ; $6c26: $02
    add hl, hl                                    ; $6c27: $29
    add hl, hl                                    ; $6c28: $29
    ld hl, $4a14                                  ; $6c29: $21 $14 $4a
    dec a                                         ; $6c2c: $3d
    db $10                                        ; $6c2d: $10
    ld c, [hl]                                    ; $6c2e: $4e
    sub e                                         ; $6c2f: $93
    ld h, [hl]                                    ; $6c30: $66
    nop                                           ; $6c31: $00

jr_0d3_6c32:
    nop                                           ; $6c32: $00
    ld [$ef25], sp                                ; $6c33: $08 $25 $ef
    ld c, l                                       ; $6c36: $4d
    and l                                         ; $6c37: $a5
    jr jr_0d3_6c3a                                ; $6c38: $18 $00

jr_0d3_6c3a:
    nop                                           ; $6c3a: $00
    ld e, a                                       ; $6c3b: $5f
    inc bc                                        ; $6c3c: $03
    ld hl, $0204                                  ; $6c3d: $21 $04 $02
    nop                                           ; $6c40: $00
    ld [bc], a                                    ; $6c41: $02
    nop                                           ; $6c42: $00
    db $10                                        ; $6c43: $10
    ld d, d                                       ; $6c44: $52
    ld e, l                                       ; $6c45: $5d
    ld [bc], a                                    ; $6c46: $02
    add $18                                       ; $6c47: $c6 $18

jr_0d3_6c49:
    ld h, e                                       ; $6c49: $63
    inc h                                         ; $6c4a: $24
    ld [$ce49], sp                                ; $6c4b: $08 $49 $ce
    ld h, c                                       ; $6c4e: $61
    jr z, jr_0d3_6cbe                             ; $6c4f: $28 $6d

    nop                                           ; $6c51: $00
    nop                                           ; $6c52: $00
    xor l                                         ; $6c53: $ad
    ld b, c                                       ; $6c54: $41
    or l                                          ; $6c55: $b5
    ld l, d                                       ; $6c56: $6a
    add h                                         ; $6c57: $84
    inc d                                         ; $6c58: $14
    nop                                           ; $6c59: $00
    nop                                           ; $6c5a: $00
    ld e, a                                       ; $6c5b: $5f
    inc bc                                        ; $6c5c: $03
    add h                                         ; $6c5d: $84
    inc d                                         ; $6c5e: $14
    ld [$0229], sp                                ; $6c5f: $08 $29 $02
    nop                                           ; $6c62: $00
    ld l, e                                       ; $6c63: $6b
    ld b, c                                       ; $6c64: $41
    ld e, l                                       ; $6c65: $5d
    ld [bc], a                                    ; $6c66: $02
    ld sp, $0062                                  ; $6c67: $31 $62 $00
    inc b                                         ; $6c6a: $04
    xor l                                         ; $6c6b: $ad
    ld d, l                                       ; $6c6c: $55
    rst $30                                       ; $6c6d: $f7
    ld l, d                                       ; $6c6e: $6a
    rst $20                                       ; $6c6f: $e7
    jr nc, jr_0d3_6bf6                            ; $6c70: $30 $84

    db $10                                        ; $6c72: $10
    ld sp, $8c5a                                  ; $6c73: $31 $5a $8c
    ld sp, $6f18                                  ; $6c76: $31 $18 $6f
    ld [hl+], a                                   ; $6c79: $22
    inc b                                         ; $6c7a: $04
    adc h                                         ; $6c7b: $8c
    ld b, c                                       ; $6c7c: $41
    ld e, a                                       ; $6c7d: $5f
    inc bc                                        ; $6c7e: $03
    sub h                                         ; $6c7f: $94
    ld h, d                                       ; $6c80: $62
    ld [bc], a                                    ; $6c81: $02
    nop                                           ; $6c82: $00
    ld c, c                                       ; $6c83: $49
    ld c, c                                       ; $6c84: $49
    ld e, l                                       ; $6c85: $5d

jr_0d3_6c86:
    ld [bc], a                                    ; $6c86: $02
    ld d, d                                       ; $6c87: $52
    ld [hl], d                                    ; $6c88: $72
    ld b, e                                       ; $6c89: $43
    db $10                                        ; $6c8a: $10
    ld a, e                                       ; $6c8b: $7b
    ld a, e                                       ; $6c8c: $7b
    rst $28                                       ; $6c8d: $ef
    ld h, c                                       ; $6c8e: $61

jr_0d3_6c8f:
    sbc $7f                                       ; $6c8f: $de $7f
    add $28                                       ; $6c91: $c6 $28
    ld d, d                                       ; $6c93: $52
    ld e, [hl]                                    ; $6c94: $5e
    add hl, sp                                    ; $6c95: $39
    ld [hl], a                                    ; $6c96: $77
    add $40                                       ; $6c97: $c6 $40
    ld b, e                                       ; $6c99: $43
    jr jr_0d3_6c49                                ; $6c9a: $18 $ad

    ld c, l                                       ; $6c9c: $4d
    ld e, a                                       ; $6c9d: $5f
    inc bc                                        ; $6c9e: $03
    or l                                          ; $6c9f: $b5
    ld l, d                                       ; $6ca0: $6a
    ld bc, $e700                                  ; $6ca1: $01 $00 $e7
    jr nc, jr_0d3_6d03                            ; $6ca4: $30 $5d

    ld [bc], a                                    ; $6ca6: $02
    and l                                         ; $6ca7: $a5
    ld d, b                                       ; $6ca8: $50
    ld [$9435], sp                                ; $6ca9: $08 $35 $94
    ld l, d                                       ; $6cac: $6a
    adc $55                                       ; $6cad: $ce $55
    add hl, sp                                    ; $6caf: $39
    ld a, a                                       ; $6cb0: $7f
    ld b, d                                       ; $6cb1: $42
    inc e                                         ; $6cb2: $1c
    jr jr_0d3_6d30                                ; $6cb3: $18 $7b

    xor l                                         ; $6cb5: $ad
    ld b, c                                       ; $6cb6: $41
    sbc h                                         ; $6cb7: $9c
    ld a, a                                       ; $6cb8: $7f
    ld bc, $d610                                  ; $6cb9: $01 $10 $d6
    ld l, [hl]                                    ; $6cbc: $6e
    add hl, hl                                    ; $6cbd: $29

jr_0d3_6cbe:
    ld b, l                                       ; $6cbe: $45
    ld e, a                                       ; $6cbf: $5f
    inc bc                                        ; $6cc0: $03
    ld [bc], a                                    ; $6cc1: $02
    nop                                           ; $6cc2: $00

jr_0d3_6cc3:
    rst $28                                       ; $6cc3: $ef
    ld c, l                                       ; $6cc4: $4d
    ld e, l                                       ; $6cc5: $5d
    ld [bc], a                                    ; $6cc6: $02
    and l                                         ; $6cc7: $a5

jr_0d3_6cc8:
    jr jr_0d3_6c8f                                ; $6cc8: $18 $c5

    jr nc, jr_0d3_6cc3                            ; $6cca: $30 $f7

    halt                                          ; $6ccc: $76
    adc e                                         ; $6ccd: $8b
    dec a                                         ; $6cce: $3d
    jr z, jr_0d3_6d26                             ; $6ccf: $28 $55

    add h                                         ; $6cd1: $84
    inc d                                         ; $6cd2: $14
    call $f75d                                    ; $6cd3: $cd $5d $f7
    halt                                          ; $6cd6: $76
    add $3c                                       ; $6cd7: $c6 $3c
    ld b, e                                       ; $6cd9: $43
    jr jr_0d3_6d3b                                ; $6cda: $18 $5f

    inc bc                                        ; $6cdc: $03
    ld l, e                                       ; $6cdd: $6b
    ld b, l                                       ; $6cde: $45
    rst $28                                       ; $6cdf: $ef
    ld h, l                                       ; $6ce0: $65
    ld [bc], a                                    ; $6ce1: $02

jr_0d3_6ce2:
    nop                                           ; $6ce2: $00
    ld e, l                                       ; $6ce3: $5d
    ld [bc], a                                    ; $6ce4: $02
    rst $28                                       ; $6ce5: $ef
    ld c, c                                       ; $6ce6: $49
    cp l                                          ; $6ce7: $bd
    ld [hl], e                                    ; $6ce8: $73
    rst $20                                       ; $6ce9: $e7
    jr nz, jr_0d3_6d03                            ; $6cea: $20 $17

    ld h, a                                       ; $6cec: $67
    db $10                                        ; $6ced: $10
    ld d, [hl]                                    ; $6cee: $56
    sbc $7b                                       ; $6cef: $de $7b
    ld b, d                                       ; $6cf1: $42
    jr z, jr_0d3_6c86                             ; $6cf2: $28 $92

    ld l, [hl]                                    ; $6cf4: $6e
    ld c, c                                       ; $6cf5: $49
    ld sp, $58c6                                  ; $6cf6: $31 $c6 $58
    ld b, e                                       ; $6cf9: $43
    inc d                                         ; $6cfa: $14
    sub $6a                                       ; $6cfb: $d6 $6a
    ld e, a                                       ; $6cfd: $5f
    inc bc                                        ; $6cfe: $03
    ld [$0249], sp                                ; $6cff: $08 $49 $02
    nop                                           ; $6d02: $00

jr_0d3_6d03:
    ld e, l                                       ; $6d03: $5d
    ld [bc], a                                    ; $6d04: $02
    xor l                                         ; $6d05: $ad
    dec a                                         ; $6d06: $3d
    jr jr_0d3_6d7c                                ; $6d07: $18 $73

    and l                                         ; $6d09: $a5
    jr jr_0d3_6ce2                                ; $6d0a: $18 $d6

    ld h, [hl]                                    ; $6d0c: $66
    xor l                                         ; $6d0d: $ad
    add hl, sp                                    ; $6d0e: $39
    cp l                                          ; $6d0f: $bd
    ld a, e                                       ; $6d10: $7b
    ld hl, $6a0c                                  ; $6d11: $21 $0c $6a
    ld b, c                                       ; $6d14: $41
    db $ed                                        ; $6d15: $ed
    ld d, l                                       ; $6d16: $55
    and l                                         ; $6d17: $a5
    inc h                                         ; $6d18: $24
    ld [hl+], a                                   ; $6d19: $22
    ld [$72d6], sp                                ; $6d1a: $08 $d6 $72
    ld e, a                                       ; $6d1d: $5f
    inc bc                                        ; $6d1e: $03
    add hl, hl                                    ; $6d1f: $29
    ld b, c                                       ; $6d20: $41
    ld [bc], a                                    ; $6d21: $02
    nop                                           ; $6d22: $00
    ld e, l                                       ; $6d23: $5d
    ld [bc], a                                    ; $6d24: $02
    or l                                          ; $6d25: $b5

jr_0d3_6d26:
    ld h, d                                       ; $6d26: $62
    add hl, hl                                    ; $6d27: $29
    add hl, hl                                    ; $6d28: $29
    rst $20                                       ; $6d29: $e7
    jr c, jr_0d3_6cc8                             ; $6d2a: $38 $9c

    ld a, e                                       ; $6d2c: $7b
    adc $41                                       ; $6d2d: $ce $41
    or l                                          ; $6d2f: $b5

jr_0d3_6d30:
    ld d, d                                       ; $6d30: $52
    ld c, d                                       ; $6d31: $4a
    dec l                                         ; $6d32: $2d
    jr @+$7d                                      ; $6d33: $18 $7b

    adc h                                         ; $6d35: $8c
    ld c, l                                       ; $6d36: $4d
    db $10                                        ; $6d37: $10
    ld c, [hl]                                    ; $6d38: $4e
    ld b, e                                       ; $6d39: $43
    db $10                                        ; $6d3a: $10

jr_0d3_6d3b:
    ld d, d                                       ; $6d3b: $52
    ld h, [hl]                                    ; $6d3c: $66
    ld e, a                                       ; $6d3d: $5f
    inc bc                                        ; $6d3e: $03
    rst $20                                       ; $6d3f: $e7
    ld c, b                                       ; $6d40: $48
    ld [bc], a                                    ; $6d41: $02
    nop                                           ; $6d42: $00
    ld sp, $5d56                                  ; $6d43: $31 $56 $5d
    ld [bc], a                                    ; $6d46: $02
    and l                                         ; $6d47: $a5
    inc e                                         ; $6d48: $1c
    rst $20                                       ; $6d49: $e7
    jr z, jr_0d3_6d64                             ; $6d4a: $28 $18

    ld a, e                                       ; $6d4c: $7b
    xor l                                         ; $6d4d: $ad
    ld b, c                                       ; $6d4e: $41
    sbc h                                         ; $6d4f: $9c

jr_0d3_6d50:
    ld a, a                                       ; $6d50: $7f
    add $38                                       ; $6d51: $c6 $38
    ld d, d                                       ; $6d53: $52
    ld l, [hl]                                    ; $6d54: $6e
    xor l                                         ; $6d55: $ad
    ld c, l                                       ; $6d56: $4d
    ld e, d                                       ; $6d57: $5a
    ld a, a                                       ; $6d58: $7f
    ld [hl+], a                                   ; $6d59: $22
    ld [$6673], sp                                ; $6d5a: $08 $73 $66
    ld e, a                                       ; $6d5d: $5f
    inc bc                                        ; $6d5e: $03
    rst $20                                       ; $6d5f: $e7
    ld b, b                                       ; $6d60: $40
    ld [bc], a                                    ; $6d61: $02
    nop                                           ; $6d62: $00

jr_0d3_6d63:
    add hl, hl                                    ; $6d63: $29

jr_0d3_6d64:
    ld b, l                                       ; $6d64: $45
    ld e, l                                       ; $6d65: $5d
    ld [bc], a                                    ; $6d66: $02
    ld [hl], e                                    ; $6d67: $73
    ld e, d                                       ; $6d68: $5a
    xor l                                         ; $6d69: $ad
    ld c, l                                       ; $6d6a: $4d
    rst $30                                       ; $6d6b: $f7
    ld a, d                                       ; $6d6c: $7a
    ld d, d                                       ; $6d6d: $52
    ld h, [hl]                                    ; $6d6e: $66
    ld e, d                                       ; $6d6f: $5a
    ld a, a                                       ; $6d70: $7f
    add h                                         ; $6d71: $84
    jr nc, jr_0d3_6d63                            ; $6d72: $30 $ef

    ld l, l                                       ; $6d74: $6d
    ld l, e                                       ; $6d75: $6b
    ld c, c                                       ; $6d76: $49
    jr @+$81                                      ; $6d77: $18 $7f

    ld [bc], a                                    ; $6d79: $02
    inc b                                         ; $6d7a: $04
    sub h                                         ; $6d7b: $94

jr_0d3_6d7c:
    ld e, d                                       ; $6d7c: $5a
    ld e, a                                       ; $6d7d: $5f
    inc bc                                        ; $6d7e: $03
    add hl, hl                                    ; $6d7f: $29
    add hl, sp                                    ; $6d80: $39
    ld [bc], a                                    ; $6d81: $02
    nop                                           ; $6d82: $00
    db $10                                        ; $6d83: $10
    ld d, d                                       ; $6d84: $52
    ld e, l                                       ; $6d85: $5d
    ld [bc], a                                    ; $6d86: $02
    add h                                         ; $6d87: $84
    jr nz, jr_0d3_6d50                            ; $6d88: $20 $c6

    jr c, jr_0d3_6ddd                             ; $6d8a: $38 $51

    ld [hl], d                                    ; $6d8c: $72

jr_0d3_6d8d:
    rst $30                                       ; $6d8d: $f7
    ld a, d                                       ; $6d8e: $7a
    add hl, hl                                    ; $6d8f: $29
    ld d, c                                       ; $6d90: $51
    nop                                           ; $6d91: $00
    inc d                                         ; $6d92: $14
    add hl, hl                                    ; $6d93: $29
    ld c, c                                       ; $6d94: $49
    rst $28                                       ; $6d95: $ef
    ld e, l                                       ; $6d96: $5d
    and l                                         ; $6d97: $a5
    inc l                                         ; $6d98: $2c
    ld b, e                                       ; $6d99: $43
    inc c                                         ; $6d9a: $0c
    ld d, d                                       ; $6d9b: $52
    ld d, [hl]                                    ; $6d9c: $56
    ld e, a                                       ; $6d9d: $5f
    inc bc                                        ; $6d9e: $03
    ld c, d                                       ; $6d9f: $4a
    dec [hl]                                      ; $6da0: $35
    ld bc, $ce00                                  ; $6da1: $01 $00 $ce
    ld c, c                                       ; $6da4: $49
    ld e, e                                       ; $6da5: $5b
    ld bc, $035f                                  ; $6da6: $01 $5f $03
    ld b, d                                       ; $6da9: $42
    inc e                                         ; $6daa: $1c
    db $10                                        ; $6dab: $10
    ld h, [hl]                                    ; $6dac: $66
    rst $20                                       ; $6dad: $e7
    ld b, h                                       ; $6dae: $44
    jr jr_0d3_6e30                                ; $6daf: $18 $7f

    ld hl, $1818                                  ; $6db1: $21 $18 $18
    ld [hl], a                                    ; $6db4: $77
    ld l, e                                       ; $6db5: $6b
    dec a                                         ; $6db6: $3d
    adc $4d                                       ; $6db7: $ce $4d
    ld h, e                                       ; $6db9: $63
    inc c                                         ; $6dba: $0c
    adc $39                                       ; $6dbb: $ce $39
    ld e, a                                       ; $6dbd: $5f
    inc bc                                        ; $6dbe: $03
    sub $6e                                       ; $6dbf: $d6 $6e
    ld [bc], a                                    ; $6dc1: $02
    nop                                           ; $6dc2: $00
    ld sp, $5b52                                  ; $6dc3: $31 $52 $5b
    ld bc, $035f                                  ; $6dc6: $01 $5f $03
    nop                                           ; $6dc9: $00
    db $10                                        ; $6dca: $10
    db $10                                        ; $6dcb: $10
    ld l, [hl]                                    ; $6dcc: $6e
    add h                                         ; $6dcd: $84
    inc [hl]                                      ; $6dce: $34
    jr jr_0d3_6e4c                                ; $6dcf: $18 $7b

    ld hl, $ad08                                  ; $6dd1: $21 $08 $ad
    ld c, l                                       ; $6dd4: $4d
    add h                                         ; $6dd5: $84
    jr nc, jr_0d3_6d8d                            ; $6dd6: $30 $b5

    ld h, d                                       ; $6dd8: $62
    nop                                           ; $6dd9: $00
    nop                                           ; $6dda: $00
    ld e, a                                       ; $6ddb: $5f
    inc bc                                        ; $6ddc: $03

jr_0d3_6ddd:
    ld [bc], a                                    ; $6ddd: $02
    nop                                           ; $6dde: $00
    ld hl, $0204                                  ; $6ddf: $21 $04 $02
    nop                                           ; $6de2: $00
    ld e, e                                       ; $6de3: $5b
    ld bc, $035f                                  ; $6de4: $01 $5f $03
    ld hl, $5b04                                  ; $6de7: $21 $04 $5b
    ld bc, $035f                                  ; $6dea: $01 $5f $03
    ld e, a                                       ; $6ded: $5f
    inc bc                                        ; $6dee: $03
    ld hl, $5b04                                  ; $6def: $21 $04 $5b
    ld bc, $035f                                  ; $6df2: $01 $5f $03
    ld e, a                                       ; $6df5: $5f
    inc bc                                        ; $6df6: $03
    ld hl, $0204                                  ; $6df7: $21 $04 $02
    nop                                           ; $6dfa: $00
    ld e, e                                       ; $6dfb: $5b
    ld bc, $035f                                  ; $6dfc: $01 $5f $03
    ld hl, $2104                                  ; $6dff: $21 $04 $21
    inc b                                         ; $6e02: $04
    ld d, d                                       ; $6e03: $52
    ld c, d                                       ; $6e04: $4a
    ld e, e                                       ; $6e05: $5b
    ld bc, $035f                                  ; $6e06: $01 $5f $03
    nop                                           ; $6e09: $00
    nop                                           ; $6e0a: $00
    ld e, a                                       ; $6e0b: $5f
    inc bc                                        ; $6e0c: $03
    db $eb                                        ; $6e0d: $eb
    ld a, $4a                                     ; $6e0e: $3e $4a
    add hl, hl                                    ; $6e10: $29
    db $eb                                        ; $6e11: $eb
    ld a, $5f                                     ; $6e12: $3e $5f
    inc bc                                        ; $6e14: $03
    db $eb                                        ; $6e15: $eb
    ld a, $4a                                     ; $6e16: $3e $4a
    add hl, hl                                    ; $6e18: $29
    ld hl, $5f04                                  ; $6e19: $21 $04 $5f
    inc bc                                        ; $6e1c: $03
    db $eb                                        ; $6e1d: $eb
    ld a, $4a                                     ; $6e1e: $3e $4a
    add hl, hl                                    ; $6e20: $29
    nop                                           ; $6e21: $00
    nop                                           ; $6e22: $00
    ld e, e                                       ; $6e23: $5b
    ld bc, $294a                                  ; $6e24: $01 $4a $29
    ld e, a                                       ; $6e27: $5f
    inc bc                                        ; $6e28: $03
    ld hl, $8c04                                  ; $6e29: $21 $04 $8c
    ld sp, $3eeb                                  ; $6e2c: $31 $eb $3e
    sub h                                         ; $6e2f: $94

jr_0d3_6e30:
    ld d, d                                       ; $6e30: $52
    db $eb                                        ; $6e31: $eb
    ld a, $8c                                     ; $6e32: $3e $8c
    ld sp, $3eeb                                  ; $6e34: $31 $eb $3e
    sub h                                         ; $6e37: $94
    ld d, d                                       ; $6e38: $52
    nop                                           ; $6e39: $00
    nop                                           ; $6e3a: $00
    db $eb                                        ; $6e3b: $eb
    ld a, $5f                                     ; $6e3c: $3e $5f
    inc bc                                        ; $6e3e: $03
    ld hl, $2104                                  ; $6e3f: $21 $04 $21
    inc b                                         ; $6e42: $04
    xor l                                         ; $6e43: $ad
    dec [hl]                                      ; $6e44: $35
    ld e, l                                       ; $6e45: $5d
    ld [bc], a                                    ; $6e46: $02
    or l                                          ; $6e47: $b5
    ld d, [hl]                                    ; $6e48: $56
    nop                                           ; $6e49: $00
    nop                                           ; $6e4a: $00
    adc h                                         ; $6e4b: $8c

jr_0d3_6e4c:
    ld sp, $3eeb                                  ; $6e4c: $31 $eb $3e
    ld [hl], e                                    ; $6e4f: $73
    ld c, [hl]                                    ; $6e50: $4e
    db $eb                                        ; $6e51: $eb
    ld a, $8c                                     ; $6e52: $3e $8c
    ld sp, $3eeb                                  ; $6e54: $31 $eb $3e
    ld [hl], e                                    ; $6e57: $73
    ld c, [hl]                                    ; $6e58: $4e
    nop                                           ; $6e59: $00
    nop                                           ; $6e5a: $00
    db $eb                                        ; $6e5b: $eb
    ld a, $5f                                     ; $6e5c: $3e $5f
    inc bc                                        ; $6e5e: $03
    db $10                                        ; $6e5f: $10
    ld b, d                                       ; $6e60: $42
    ld hl, $5d04                                  ; $6e61: $21 $04 $5d
    ld [bc], a                                    ; $6e64: $02
    db $10                                        ; $6e65: $10
    ld b, d                                       ; $6e66: $42
    ld e, d                                       ; $6e67: $5a
    ld l, e                                       ; $6e68: $6b
    nop                                           ; $6e69: $00
    nop                                           ; $6e6a: $00
    ld c, d                                       ; $6e6b: $4a
    add hl, hl                                    ; $6e6c: $29
    sub $5a                                       ; $6e6d: $d6 $5a
    ld l, l                                       ; $6e6f: $6d
    ld a, $00                                     ; $6e70: $3e $00
    nop                                           ; $6e72: $00
    jp z, Jump_000_103a                           ; $6e73: $ca $3a $10

    ld b, d                                       ; $6e76: $42
    ld b, d                                       ; $6e77: $42
    ld [$0421], sp                                ; $6e78: $08 $21 $04
    adc h                                         ; $6e7b: $8c
    ld sp, $035f                                  ; $6e7c: $31 $5f $03
    ld [hl], e                                    ; $6e7f: $73
    ld c, [hl]                                    ; $6e80: $4e
    ld hl, $5d04                                  ; $6e81: $21 $04 $5d
    ld [bc], a                                    ; $6e84: $02
    adc h                                         ; $6e85: $8c
    ld sp, $6739                                  ; $6e86: $31 $39 $67
    ld hl, $ad04                                  ; $6e89: $21 $04 $ad
    dec [hl]                                      ; $6e8c: $35
    cp l                                          ; $6e8d: $bd
    ld [hl], a                                    ; $6e8e: $77
    ld [hl], e                                    ; $6e8f: $73
    ld c, [hl]                                    ; $6e90: $4e
    nop                                           ; $6e91: $00
    nop                                           ; $6e92: $00
    dec hl                                        ; $6e93: $2b
    ld [hl], $e7                                  ; $6e94: $36 $e7
    inc e                                         ; $6e96: $1c
    ld sp, $2146                                  ; $6e97: $31 $46 $21
    inc b                                         ; $6e9a: $04
    ld sp, $5f46                                  ; $6e9b: $31 $46 $5f
    inc bc                                        ; $6e9e: $03
    add $18                                       ; $6e9f: $c6 $18
    ld hl, $5d04                                  ; $6ea1: $21 $04 $5d
    ld [bc], a                                    ; $6ea4: $02
    db $10                                        ; $6ea5: $10
    ld b, d                                       ; $6ea6: $42
    add hl, sp                                    ; $6ea7: $39
    ld h, a                                       ; $6ea8: $67
    nop                                           ; $6ea9: $00
    nop                                           ; $6eaa: $00
    ld l, e                                       ; $6eab: $6b
    dec l                                         ; $6eac: $2d
    ld d, d                                       ; $6ead: $52
    ld c, d                                       ; $6eae: $4a
    ld [$0021], sp                                ; $6eaf: $08 $21 $00
    nop                                           ; $6eb2: $00
    xor l                                         ; $6eb3: $ad
    dec [hl]                                      ; $6eb4: $35
    add $18                                       ; $6eb5: $c6 $18
    ld d, d                                       ; $6eb7: $52
    ld c, d                                       ; $6eb8: $4a
    ld b, d                                       ; $6eb9: $42
    ld [$35ad], sp                                ; $6eba: $08 $ad $35
    ld e, a                                       ; $6ebd: $5f
    inc bc                                        ; $6ebe: $03
    or l                                          ; $6ebf: $b5
    ld d, [hl]                                    ; $6ec0: $56
    nop                                           ; $6ec1: $00
    nop                                           ; $6ec2: $00
    adc h                                         ; $6ec3: $8c
    ld sp, $025d                                  ; $6ec4: $31 $5d $02
    ld [hl], e                                    ; $6ec7: $73
    ld c, [hl]                                    ; $6ec8: $4e
    nop                                           ; $6ec9: $00
    nop                                           ; $6eca: $00
    rst $20                                       ; $6ecb: $e7
    inc e                                         ; $6ecc: $1c
    ld l, e                                       ; $6ecd: $6b
    dec l                                         ; $6ece: $2d
    ld b, d                                       ; $6ecf: $42
    ld [$0000], sp                                ; $6ed0: $08 $00 $00
    ld [$ce21], sp                                ; $6ed3: $08 $21 $ce
    add hl, sp                                    ; $6ed6: $39
    and l                                         ; $6ed7: $a5
    inc d                                         ; $6ed8: $14
    nop                                           ; $6ed9: $00
    nop                                           ; $6eda: $00
    call z, Call_0d3_5f31                         ; $6edb: $cc $31 $5f
    inc bc                                        ; $6ede: $03
    and l                                         ; $6edf: $a5
    inc d                                         ; $6ee0: $14
    ld hl, $5d04                                  ; $6ee1: $21 $04 $5d
    ld [bc], a                                    ; $6ee4: $02
    dec c                                         ; $6ee5: $0d
    ld a, [hl-]                                   ; $6ee6: $3a
    ld e, d                                       ; $6ee7: $5a
    ld l, e                                       ; $6ee8: $6b
    and l                                         ; $6ee9: $a5
    inc d                                         ; $6eea: $14
    adc $39                                       ; $6eeb: $ce $39
    ld d, d                                       ; $6eed: $52
    ld c, d                                       ; $6eee: $4a
    ld c, d                                       ; $6eef: $4a
    add hl, hl                                    ; $6ef0: $29
    ld b, d                                       ; $6ef1: $42
    ld [$29b3], sp                                ; $6ef2: $08 $b3 $29
    ccf                                           ; $6ef5: $3f
    ld d, a                                       ; $6ef6: $57
    ld [hl-], a                                   ; $6ef7: $32
    ld b, [hl]                                    ; $6ef8: $46
    nop                                           ; $6ef9: $00
    nop                                           ; $6efa: $00
    ld b, a                                       ; $6efb: $47
    ld l, $5f                                     ; $6efc: $2e $5f
    inc bc                                        ; $6efe: $03
    ld c, d                                       ; $6eff: $4a
    add hl, hl                                    ; $6f00: $29
    nop                                           ; $6f01: $00
    nop                                           ; $6f02: $00
    rlca                                          ; $6f03: $07
    ld a, [hl+]                                   ; $6f04: $2a
    ld e, e                                       ; $6f05: $5b
    ld bc, $035f                                  ; $6f06: $01 $5f $03
    nop                                           ; $6f09: $00
    nop                                           ; $6f0a: $00
    rst $20                                       ; $6f0b: $e7
    inc e                                         ; $6f0c: $1c
    adc h                                         ; $6f0d: $8c
    ld sp, $4a52                                  ; $6f0e: $31 $52 $4a
    ld b, d                                       ; $6f11: $42
    ld [$1997], sp                                ; $6f12: $08 $97 $19
    ld sp, $ff46                                  ; $6f15: $31 $46 $ff
    ld d, d                                       ; $6f18: $52
    nop                                           ; $6f19: $00
    nop                                           ; $6f1a: $00
    ret                                           ; $6f1b: $c9


    dec l                                         ; $6f1c: $2d
    ld e, a                                       ; $6f1d: $5f
    inc bc                                        ; $6f1e: $03
    ld sp, $0046                                  ; $6f1f: $31 $46 $00
    nop                                           ; $6f22: $00
    ld b, $26                                     ; $6f23: $06 $26
    ld e, e                                       ; $6f25: $5b
    ld bc, $035f                                  ; $6f26: $01 $5f $03
    nop                                           ; $6f29: $00
    nop                                           ; $6f2a: $00
    rst $20                                       ; $6f2b: $e7
    inc e                                         ; $6f2c: $1c
    xor l                                         ; $6f2d: $ad
    dec [hl]                                      ; $6f2e: $35
    ld h, e                                       ; $6f2f: $63
    inc c                                         ; $6f30: $0c
    nop                                           ; $6f31: $00
    nop                                           ; $6f32: $00
    ld [$ce21], sp                                ; $6f33: $08 $21 $ce
    add hl, sp                                    ; $6f36: $39
    ld [hl], e                                    ; $6f37: $73
    ld c, [hl]                                    ; $6f38: $4e
    nop                                           ; $6f39: $00
    nop                                           ; $6f3a: $00
    ld e, a                                       ; $6f3b: $5f
    inc bc                                        ; $6f3c: $03
    rst $20                                       ; $6f3d: $e7
    inc e                                         ; $6f3e: $1c
    add sp, $29                                   ; $6f3f: $e8 $29
    nop                                           ; $6f41: $00
    nop                                           ; $6f42: $00
    dec d                                         ; $6f43: $15
    add hl, de                                    ; $6f44: $19
    ld e, a                                       ; $6f45: $5f
    inc bc                                        ; $6f46: $03
    db $e4                                        ; $6f47: $e4
    ld hl, $0000                                  ; $6f48: $21 $00 $00
    rst $28                                       ; $6f4b: $ef
    dec a                                         ; $6f4c: $3d
    rst $38                                       ; $6f4d: $ff
    ld a, a                                       ; $6f4e: $7f
    and [hl]                                      ; $6f4f: $a6
    inc d                                         ; $6f50: $14
    nop                                           ; $6f51: $00
    nop                                           ; $6f52: $00
    ld h, e                                       ; $6f53: $63
    inc c                                         ; $6f54: $0c
    and l                                         ; $6f55: $a5
    inc d                                         ; $6f56: $14
    ld hl, $0004                                  ; $6f57: $21 $04 $00
    nop                                           ; $6f5a: $00
    db $e4                                        ; $6f5b: $e4
    ld hl, $035f                                  ; $6f5c: $21 $5f $03
    adc $39                                       ; $6f5f: $ce $39
    nop                                           ; $6f61: $00
    nop                                           ; $6f62: $00
    adc $39                                       ; $6f63: $ce $39
    ld e, l                                       ; $6f65: $5d
    ld [bc], a                                    ; $6f66: $02
    and l                                         ; $6f67: $a5
    inc d                                         ; $6f68: $14
    ld b, d                                       ; $6f69: $42
    ld [$101a], sp                                ; $6f6a: $08 $1a $10
    adc h                                         ; $6f6d: $8c
    ld sp, $4631                                  ; $6f6e: $31 $31 $46
    add $18                                       ; $6f71: $c6 $18
    db $10                                        ; $6f73: $10
    ld b, d                                       ; $6f74: $42
    xor l                                         ; $6f75: $ad
    dec [hl]                                      ; $6f76: $35
    ld d, d                                       ; $6f77: $52
    ld c, d                                       ; $6f78: $4a
    nop                                           ; $6f79: $00
    nop                                           ; $6f7a: $00
    ld e, a                                       ; $6f7b: $5f
    inc bc                                        ; $6f7c: $03
    add h                                         ; $6f7d: $84
    dec e                                         ; $6f7e: $1d
    db $10                                        ; $6f7f: $10
    ld b, d                                       ; $6f80: $42
    ld hl, $1004                                  ; $6f81: $21 $04 $10
    ld b, d                                       ; $6f84: $42
    ld e, e                                       ; $6f85: $5b
    ld bc, $035f                                  ; $6f86: $01 $5f $03
    ld b, c                                       ; $6f89: $41
    ld [$5293], sp                                ; $6f8a: $08 $93 $52
    ld e, c                                       ; $6f8d: $59
    db $10                                        ; $6f8e: $10
    rst $38                                       ; $6f8f: $ff
    ld a, a                                       ; $6f90: $7f
    ld hl, $ce04                                  ; $6f91: $21 $04 $ce
    add hl, sp                                    ; $6f94: $39
    add $18                                       ; $6f95: $c6 $18
    ld a, [bc]                                    ; $6f97: $0a
    inc b                                         ; $6f98: $04
    nop                                           ; $6f99: $00
    nop                                           ; $6f9a: $00
    rst $28                                       ; $6f9b: $ef
    dec a                                         ; $6f9c: $3d
    ld e, a                                       ; $6f9d: $5f
    inc bc                                        ; $6f9e: $03
    daa                                           ; $6f9f: $27
    dec e                                         ; $6fa0: $1d
    ld hl, $ce04                                  ; $6fa1: $21 $04 $ce
    add hl, sp                                    ; $6fa4: $39
    ld e, e                                       ; $6fa5: $5b
    ld bc, $035f                                  ; $6fa6: $01 $5f $03
    nop                                           ; $6fa9: $00
    nop                                           ; $6faa: $00
    or l                                          ; $6fab: $b5
    ld d, [hl]                                    ; $6fac: $56
    add hl, de                                    ; $6fad: $19
    inc c                                         ; $6fae: $0c
    add hl, bc                                    ; $6faf: $09
    dec h                                         ; $6fb0: $25
    ld [hl+], a                                   ; $6fb1: $22
    inc b                                         ; $6fb2: $04
    dec e                                         ; $6fb3: $1d
    db $10                                        ; $6fb4: $10
    jr nc, @+$4c                                  ; $6fb5: $30 $4a

    rst $38                                       ; $6fb7: $ff
    ld a, a                                       ; $6fb8: $7f
    ld hl, $5f04                                  ; $6fb9: $21 $04 $5f
    inc bc                                        ; $6fbc: $03
    ld [$ad21], sp                                ; $6fbd: $08 $21 $ad
    dec [hl]                                      ; $6fc0: $35
    ld hl, $ce04                                  ; $6fc1: $21 $04 $ce
    add hl, sp                                    ; $6fc4: $39
    ld e, e                                       ; $6fc5: $5b
    ld bc, $035f                                  ; $6fc6: $01 $5f $03
    ld hl, $8c04                                  ; $6fc9: $21 $04 $8c
    ld sp, $1ce7                                  ; $6fcc: $31 $e7 $1c
    db $10                                        ; $6fcf: $10
    ld b, d                                       ; $6fd0: $42
    nop                                           ; $6fd1: $00
    nop                                           ; $6fd2: $00
    ld c, d                                       ; $6fd3: $4a
    add hl, hl                                    ; $6fd4: $29
    rst $28                                       ; $6fd5: $ef
    dec a                                         ; $6fd6: $3d
    add h                                         ; $6fd7: $84
    db $10                                        ; $6fd8: $10
    ld b, d                                       ; $6fd9: $42
    ld [$2d6b], sp                                ; $6fda: $08 $6b $2d
    ld e, a                                       ; $6fdd: $5f
    inc bc                                        ; $6fde: $03
    ld sp, $2146                                  ; $6fdf: $31 $46 $21
    inc b                                         ; $6fe2: $04
    ld e, e                                       ; $6fe3: $5b
    ld bc, $035f                                  ; $6fe4: $01 $5f $03
    ld sp, $5b46                                  ; $6fe7: $31 $46 $5b
    ld bc, $035f                                  ; $6fea: $01 $5f $03
    ld e, a                                       ; $6fed: $5f
    inc bc                                        ; $6fee: $03
    ld sp, $5b46                                  ; $6fef: $31 $46 $5b
    ld bc, $035f                                  ; $6ff2: $01 $5f $03
    ld e, a                                       ; $6ff5: $5f
    inc bc                                        ; $6ff6: $03
    ld sp, $2146                                  ; $6ff7: $31 $46 $21
    inc b                                         ; $6ffa: $04
    ld e, e                                       ; $6ffb: $5b
    ld bc, $035f                                  ; $6ffc: $01 $5f $03
    ld sp, $0246                                  ; $6fff: $31 $46 $02
    nop                                           ; $7002: $00
    call Call_0d3_5b22                            ; $7003: $cd $22 $5b
    ld bc, $035f                                  ; $7006: $01 $5f $03
    call Call_0d3_5f22                            ; $7009: $cd $22 $5f
    inc bc                                        ; $700c: $03
    ld e, e                                       ; $700d: $5b
    ld bc, $035f                                  ; $700e: $01 $5f $03
    nop                                           ; $7011: $00
    nop                                           ; $7012: $00
    ld e, a                                       ; $7013: $5f
    inc bc                                        ; $7014: $03
    call Call_0d3_5f22                            ; $7015: $cd $22 $5f
    inc bc                                        ; $7018: $03
    ld [bc], a                                    ; $7019: $02
    nop                                           ; $701a: $00
    ld e, a                                       ; $701b: $5f
    inc bc                                        ; $701c: $03
    call Call_0d3_5f22                            ; $701d: $cd $22 $5f
    inc bc                                        ; $7020: $03
    ld bc, $ae00                                  ; $7021: $01 $00 $ae
    ld h, $5b                                     ; $7024: $26 $5b
    ld bc, $035f                                  ; $7026: $01 $5f $03
    nop                                           ; $7029: $00
    nop                                           ; $702a: $00
    call $d222                                    ; $702b: $cd $22 $d2
    db $10                                        ; $702e: $10
    ld l, l                                       ; $702f: $6d
    inc b                                         ; $7030: $04
    nop                                           ; $7031: $00
    nop                                           ; $7032: $00
    call $6c22                                    ; $7033: $cd $22 $6c
    inc b                                         ; $7036: $04
    ldh a, [rNR14]                                ; $7037: $f0 $14
    ld [bc], a                                    ; $7039: $02
    nop                                           ; $703a: $00
    call Call_0d3_5f22                            ; $703b: $cd $22 $5f
    inc bc                                        ; $703e: $03
    ldh a, [rNR14]                                ; $703f: $f0 $14
    ld bc, $5d00                                  ; $7041: $01 $00 $5d
    ld [bc], a                                    ; $7044: $02
    ld [hl], e                                    ; $7045: $73
    ld [hl], $c9                                  ; $7046: $36 $c9
    db $10                                        ; $7048: $10
    ld bc, $5700                                  ; $7049: $01 $00 $57
    dec e                                         ; $704c: $1d
    ld l, a                                       ; $704d: $6f
    inc b                                         ; $704e: $04
    dec e                                         ; $704f: $1d
    ld [hl], $00                                  ; $7050: $36 $00
    nop                                           ; $7052: $00
    call $7822                                    ; $7053: $cd $22 $78
    ld hl, $088a                                  ; $7056: $21 $8a $08
    ld [bc], a                                    ; $7059: $02
    nop                                           ; $705a: $00
    call Call_0d3_5f22                            ; $705b: $cd $22 $5f
    inc bc                                        ; $705e: $03
    inc d                                         ; $705f: $14
    ld a, [hl-]                                   ; $7060: $3a
    ld bc, $6f00                                  ; $7061: $01 $00 $6f
    ld h, $5d                                     ; $7064: $26 $5d
    ld [bc], a                                    ; $7066: $02
    and a                                         ; $7067: $a7
    stop                                          ; $7068: $10 $00
    nop                                           ; $706a: $00
    db $ec                                        ; $706b: $ec
    inc d                                         ; $706c: $14
    ld d, [hl]                                    ; $706d: $56
    ld a, $46                                     ; $706e: $3e $46
    inc b                                         ; $7070: $04
    ld [hl+], a                                   ; $7071: $22
    inc b                                         ; $7072: $04
    cp b                                          ; $7073: $b8
    dec l                                         ; $7074: $2d
    dec a                                         ; $7075: $3d
    ld e, e                                       ; $7076: $5b
    ld c, a                                       ; $7077: $4f
    nop                                           ; $7078: $00
    ld h, l                                       ; $7079: $65
    ld [$035f], sp                                ; $707a: $08 $5f $03
    ld [hl-], a                                   ; $707d: $32
    ld [hl-], a                                   ; $707e: $32
    rst $18                                       ; $707f: $df
    ld h, a                                       ; $7080: $67
    ld bc, $6c00                                  ; $7081: $01 $00 $6c
    ld a, [de]                                    ; $7084: $1a
    ld e, l                                       ; $7085: $5d
    ld [bc], a                                    ; $7086: $02
    ret z                                         ; $7087: $c8

    inc d                                         ; $7088: $14
    jp hl                                         ; $7089: $e9


    inc d                                         ; $708a: $14
    ld e, b                                       ; $708b: $58
    ld a, $3e                                     ; $708c: $3e $3e
    ld e, e                                       ; $708e: $5b
    ld l, l                                       ; $708f: $6d
    dec h                                         ; $7090: $25
    nop                                           ; $7091: $00
    nop                                           ; $7092: $00
    or h                                          ; $7093: $b4
    add hl, hl                                    ; $7094: $29
    rst $38                                       ; $7095: $ff
    ld a, e                                       ; $7096: $7b
    adc d                                         ; $7097: $8a
    inc c                                         ; $7098: $0c
    ld b, e                                       ; $7099: $43
    ld [$226e], sp                                ; $709a: $08 $6e $22
    ld a, [$5f52]                                 ; $709d: $fa $52 $5f
    inc bc                                        ; $70a0: $03
    ld [bc], a                                    ; $70a1: $02
    nop                                           ; $70a2: $00
    adc e                                         ; $70a3: $8b
    ld a, [de]                                    ; $70a4: $1a
    ld e, e                                       ; $70a5: $5b
    ld bc, $035f                                  ; $70a6: $01 $5f $03
    ld b, e                                       ; $70a9: $43
    ld [$7bff], sp                                ; $70aa: $08 $ff $7b
    db $10                                        ; $70ad: $10
    dec e                                         ; $70ae: $1d
    xor b                                         ; $70af: $a8
    inc c                                         ; $70b0: $0c
    ld bc, $d100                                  ; $70b1: $01 $00 $d1
    dec [hl]                                      ; $70b4: $35
    ei                                            ; $70b5: $fb
    ld d, d                                       ; $70b6: $52
    adc b                                         ; $70b7: $88
    inc c                                         ; $70b8: $0c
    ld h, h                                       ; $70b9: $64
    ld [$1a8b], sp                                ; $70ba: $08 $8b $1a
    ld e, a                                       ; $70bd: $5f
    inc bc                                        ; $70be: $03
    pop de                                        ; $70bf: $d1
    dec [hl]                                      ; $70c0: $35
    ld [bc], a                                    ; $70c1: $02
    nop                                           ; $70c2: $00
    adc e                                         ; $70c3: $8b
    ld d, $5b                                     ; $70c4: $16 $5b
    ld bc, $035f                                  ; $70c6: $01 $5f $03
    and a                                         ; $70c9: $a7
    db $10                                        ; $70ca: $10
    sbc c                                         ; $70cb: $99
    ld b, [hl]                                    ; $70cc: $46
    or b                                          ; $70cd: $b0
    dec l                                         ; $70ce: $2d
    ld a, a                                       ; $70cf: $7f
    ld h, e                                       ; $70d0: $63
    inc hl                                        ; $70d1: $23
    inc b                                         ; $70d2: $04
    inc d                                         ; $70d3: $14
    ld h, $5e                                     ; $70d4: $26 $5e
    ld d, e                                       ; $70d6: $53
    xor e                                         ; $70d7: $ab
    inc c                                         ; $70d8: $0c
    ld b, e                                       ; $70d9: $43
    nop                                           ; $70da: $00
    adc e                                         ; $70db: $8b
    ld d, $5f                                     ; $70dc: $16 $5f
    inc bc                                        ; $70de: $03
    rst $18                                       ; $70df: $df
    ld e, e                                       ; $70e0: $5b
    ld bc, $4900                                  ; $70e1: $01 $00 $49
    ld b, c                                       ; $70e4: $41
    ld e, l                                       ; $70e5: $5d
    ld [bc], a                                    ; $70e6: $02
    ld l, d                                       ; $70e7: $6a
    ld [de], a                                    ; $70e8: $12
    ld [hl+], a                                   ; $70e9: $22
    inc b                                         ; $70ea: $04
    dec d                                         ; $70eb: $15
    ld [hl], $1e                                  ; $70ec: $36 $1e
    ld d, a                                       ; $70ee: $57
    ld [$2114], a                                 ; $70ef: $ea $14 $21
    nop                                           ; $70f2: $00
    dec d                                         ; $70f3: $15
    ld [hl-], a                                   ; $70f4: $32
    or d                                          ; $70f5: $b2
    ld a, [hl]                                    ; $70f6: $7e
    and a                                         ; $70f7: $a7
    inc l                                         ; $70f8: $2c
    ld bc, $6a00                                  ; $70f9: $01 $00 $6a
    ld [de], a                                    ; $70fc: $12
    dec a                                         ; $70fd: $3d
    dec bc                                        ; $70fe: $0b
    and l                                         ; $70ff: $a5
    inc b                                         ; $7100: $04
    ld [bc], a                                    ; $7101: $02
    nop                                           ; $7102: $00
    push de                                       ; $7103: $d5
    dec b                                         ; $7104: $05
    rst $38                                       ; $7105: $ff
    ld h, a                                       ; $7106: $67
    ld e, a                                       ; $7107: $5f
    inc bc                                        ; $7108: $03
    ld b, e                                       ; $7109: $43
    inc b                                         ; $710a: $04
    or e                                          ; $710b: $b3
    dec l                                         ; $710c: $2d
    ld a, [hl]                                    ; $710d: $7e
    ld h, e                                       ; $710e: $63
    or c                                          ; $710f: $b1
    inc c                                         ; $7110: $0c
    nop                                           ; $7111: $00
    nop                                           ; $7112: $00
    dec [hl]                                      ; $7113: $35
    ld [de], a                                    ; $7114: $12
    cp l                                          ; $7115: $bd
    ld d, a                                       ; $7116: $57
    and h                                         ; $7117: $a4
    jr z, jr_0d3_711a                             ; $7118: $28 $00

jr_0d3_711a:
    nop                                           ; $711a: $00
    ld l, d                                       ; $711b: $6a
    ld [de], a                                    ; $711c: $12
    ld e, a                                       ; $711d: $5f
    inc bc                                        ; $711e: $03
    ld [bc], a                                    ; $711f: $02
    nop                                           ; $7120: $00
    ld [bc], a                                    ; $7121: $02
    nop                                           ; $7122: $00
    sub [hl]                                      ; $7123: $96
    dec b                                         ; $7124: $05
    ld a, [hl]                                    ; $7125: $7e
    dec de                                        ; $7126: $1b
    jp $6548                                      ; $7127: $c3 $48 $65


    nop                                           ; $712a: $00
    ld a, [hl-]                                   ; $712b: $3a
    ccf                                           ; $712c: $3f
    ld l, l                                       ; $712d: $6d
    inc b                                         ; $712e: $04
    ld c, a                                       ; $712f: $4f
    dec d                                         ; $7130: $15
    ld hl, $8a08                                  ; $7131: $21 $08 $8a
    ld h, l                                       ; $7134: $65
    dec d                                         ; $7135: $15
    ld a, a                                       ; $7136: $7f
    ld a, h                                       ; $7137: $7c
    ld b, e                                       ; $7138: $43
    ld [hl+], a                                   ; $7139: $22
    nop                                           ; $713a: $00
    cp l                                          ; $713b: $bd
    ld h, a                                       ; $713c: $67
    xor e                                         ; $713d: $ab
    dec d                                         ; $713e: $15
    ld e, a                                       ; $713f: $5f
    inc bc                                        ; $7140: $03
    ld [bc], a                                    ; $7141: $02
    nop                                           ; $7142: $00
    halt                                          ; $7143: $76
    dec b                                         ; $7144: $05
    ld a, a                                       ; $7145: $7f
    inc de                                        ; $7146: $13
    jp LCDCInterrupt                              ; $7147: $c3 $48 $00


    nop                                           ; $714a: $00
    ld [hl], d                                    ; $714b: $72
    nop                                           ; $714c: $00
    sbc h                                         ; $714d: $9c
    dec sp                                        ; $714e: $3b
    ld d, h                                       ; $714f: $54
    dec e                                         ; $7150: $1d
    ld hl, $7504                                  ; $7151: $21 $04 $75
    ld [bc], a                                    ; $7154: $02
    ld h, d                                       ; $7155: $62
    inc [hl]                                      ; $7156: $34
    sbc $57                                       ; $7157: $de $57
    ld bc, $5f00                                  ; $7159: $01 $00 $5f
    inc bc                                        ; $715c: $03
    jr c, jr_0d3_71d2                             ; $715d: $38 $73

    ld [$012d], sp                                ; $715f: $08 $2d $01
    nop                                           ; $7162: $00
    sbc b                                         ; $7163: $98
    dec c                                         ; $7164: $0d
    and $3c                                       ; $7165: $e6 $3c
    ld a, a                                       ; $7167: $7f
    dec de                                        ; $7168: $1b
    inc hl                                        ; $7169: $23
    nop                                           ; $716a: $00
    db $10                                        ; $716b: $10
    ld e, $8d                                     ; $716c: $1e $8d
    inc c                                         ; $716e: $0c
    ld a, c                                       ; $716f: $79
    ld b, a                                       ; $7170: $47
    ld b, d                                       ; $7171: $42
    inc b                                         ; $7172: $04
    db $ed                                        ; $7173: $ed
    ld a, c                                       ; $7174: $79
    ld e, d                                       ; $7175: $5a
    ccf                                           ; $7176: $3f
    and h                                         ; $7177: $a4
    inc a                                         ; $7178: $3c
    ld bc, $0f00                                  ; $7179: $01 $00 $0f
    ld l, $bf                                     ; $717c: $2e $bf
    inc hl                                        ; $717e: $23
    xor e                                         ; $717f: $ab
    ld [hl], c                                    ; $7180: $71
    ld bc, $7c00                                  ; $7181: $01 $00 $7c
    ld [bc], a                                    ; $7184: $02
    and h                                         ; $7185: $a4
    ld c, h                                       ; $7186: $4c
    add hl, bc                                    ; $7187: $09
    dec b                                         ; $7188: $05
    nop                                           ; $7189: $00
    inc c                                         ; $718a: $0c
    rst $08                                       ; $718b: $cf
    dec h                                         ; $718c: $25
    ld c, d                                       ; $718d: $4a
    inc b                                         ; $718e: $04
    rst $18                                       ; $718f: $df
    ld d, a                                       ; $7190: $57
    ld h, e                                       ; $7191: $63
    inc b                                         ; $7192: $04
    ld [hl-], a                                   ; $7193: $32
    ld e, $21                                     ; $7194: $1e $21
    inc l                                         ; $7196: $2c
    rst $38                                       ; $7197: $ff
    scf                                           ; $7198: $37
    nop                                           ; $7199: $00
    nop                                           ; $719a: $00
    dec de                                        ; $719b: $1b
    rrca                                          ; $719c: $0f
    sbc l                                         ; $719d: $9d
    ld c, a                                       ; $719e: $4f
    ld b, c                                       ; $719f: $41
    inc h                                         ; $71a0: $24
    ld bc, $d500                                  ; $71a1: $01 $00 $d5
    ld de, $035f                                  ; $71a4: $11 $5f $03
    add $2c                                       ; $71a7: $c6 $2c
    nop                                           ; $71a9: $00
    nop                                           ; $71aa: $00
    ld sp, $194a                                  ; $71ab: $31 $4a $19
    inc sp                                        ; $71ae: $33
    ld h, l                                       ; $71af: $65
    ld [$0c00], sp                                ; $71b0: $08 $00 $0c
    ldh a, [rNR24]                                ; $71b3: $f0 $19
    add hl, de                                    ; $71b5: $19
    inc hl                                        ; $71b6: $23
    add sp, $0c                                   ; $71b7: $e8 $0c
    ld bc, $9210                                  ; $71b9: $01 $10 $92
    ld l, [hl]                                    ; $71bc: $6e
    ld e, a                                       ; $71bd: $5f
    inc bc                                        ; $71be: $03
    push bc                                       ; $71bf: $c5
    inc a                                         ; $71c0: $3c
    ld bc, $5a00                                  ; $71c1: $01 $00 $5a
    ld [bc], a                                    ; $71c4: $02
    call z, Call_0d3_7b69                         ; $71c5: $cc $69 $7b
    ld h, a                                       ; $71c8: $67
    nop                                           ; $71c9: $00
    nop                                           ; $71ca: $00
    or l                                          ; $71cb: $b5
    ld [hl+], a                                   ; $71cc: $22
    rst $18                                       ; $71cd: $df
    ld d, a                                       ; $71ce: $57
    add sp, $00                                   ; $71cf: $e8 $00
    ld h, h                                       ; $71d1: $64

jr_0d3_71d2:
    inc b                                         ; $71d2: $04
    daa                                           ; $71d3: $27
    ld b, l                                       ; $71d4: $45
    ld b, d                                       ; $71d5: $42
    inc l                                         ; $71d6: $2c
    call z, Call_000_0269                         ; $71d7: $cc $69 $02
    nop                                           ; $71da: $00
    call z, Call_0d3_5f6d                         ; $71db: $cc $6d $5f
    inc bc                                        ; $71de: $03
    or $76                                        ; $71df: $f6 $76
    ld [bc], a                                    ; $71e1: $02
    nop                                           ; $71e2: $00
    ld e, e                                       ; $71e3: $5b
    ld bc, $035f                                  ; $71e4: $01 $5f $03
    or $76                                        ; $71e7: $f6 $76
    ld e, e                                       ; $71e9: $5b
    ld bc, $035f                                  ; $71ea: $01 $5f $03
    ld e, a                                       ; $71ed: $5f
    inc bc                                        ; $71ee: $03
    or $76                                        ; $71ef: $f6 $76
    ld e, e                                       ; $71f1: $5b
    ld bc, $035f                                  ; $71f2: $01 $5f $03
    ld e, a                                       ; $71f5: $5f
    inc bc                                        ; $71f6: $03
    or $76                                        ; $71f7: $f6 $76
    ld [bc], a                                    ; $71f9: $02
    nop                                           ; $71fa: $00
    ld e, e                                       ; $71fb: $5b
    ld bc, $035f                                  ; $71fc: $01 $5f $03
    or $76                                        ; $71ff: $f6 $76
    ld [bc], a                                    ; $7201: $02
    nop                                           ; $7202: $00
    ld e, e                                       ; $7203: $5b
    ld bc, $3c0d                                  ; $7204: $01 $0d $3c
    ld e, a                                       ; $7207: $5f
    inc bc                                        ; $7208: $03
    nop                                           ; $7209: $00
    nop                                           ; $720a: $00
    ld e, a                                       ; $720b: $5f
    inc bc                                        ; $720c: $03
    dec c                                         ; $720d: $0d
    inc a                                         ; $720e: $3c
    ld e, a                                       ; $720f: $5f
    inc bc                                        ; $7210: $03
    dec c                                         ; $7211: $0d
    inc a                                         ; $7212: $3c
    ld e, a                                       ; $7213: $5f
    inc bc                                        ; $7214: $03
    dec c                                         ; $7215: $0d
    inc a                                         ; $7216: $3c
    ld e, a                                       ; $7217: $5f
    inc bc                                        ; $7218: $03
    ld [bc], a                                    ; $7219: $02
    nop                                           ; $721a: $00
    ld e, a                                       ; $721b: $5f
    inc bc                                        ; $721c: $03
    dec c                                         ; $721d: $0d
    inc a                                         ; $721e: $3c
    ld e, a                                       ; $721f: $5f
    inc bc                                        ; $7220: $03
    ld [bc], a                                    ; $7221: $02
    nop                                           ; $7222: $00
    dec l                                         ; $7223: $2d
    ld b, b                                       ; $7224: $40
    ld e, e                                       ; $7225: $5b
    ld bc, $035f                                  ; $7226: $01 $5f $03
    nop                                           ; $7229: $00
    nop                                           ; $722a: $00
    inc de                                        ; $722b: $13
    ld bc, $402d                                  ; $722c: $01 $2d $40
    rst $30                                       ; $722f: $f7
    ld bc, $0000                                  ; $7230: $01 $00 $00
    dec l                                         ; $7233: $2d
    ld b, b                                       ; $7234: $40
    inc [hl]                                      ; $7235: $34
    ld bc, $01f9                                  ; $7236: $01 $f9 $01
    ld bc, $1400                                  ; $7239: $01 $00 $14
    ld a, [hl-]                                   ; $723c: $3a
    dec c                                         ; $723d: $0d
    ld b, b                                       ; $723e: $40
    ld e, a                                       ; $723f: $5f
    inc bc                                        ; $7240: $03
    ld [bc], a                                    ; $7241: $02
    nop                                           ; $7242: $00
    ld l, a                                       ; $7243: $6f
    ld b, h                                       ; $7244: $44
    ld e, l                                       ; $7245: $5d
    ld [bc], a                                    ; $7246: $02
    inc d                                         ; $7247: $14
    ld a, [hl-]                                   ; $7248: $3a
    nop                                           ; $7249: $00
    nop                                           ; $724a: $00
    ld d, c                                       ; $724b: $51
    ld bc, $446f                                  ; $724c: $01 $6f $44
    ld e, d                                       ; $724f: $5a
    ld a, [bc]                                    ; $7250: $0a
    nop                                           ; $7251: $00
    nop                                           ; $7252: $00
    halt                                          ; $7253: $76
    ld bc, $129d                                  ; $7254: $01 $9d $12
    ld l, e                                       ; $7257: $6b
    nop                                           ; $7258: $00
    ld b, e                                       ; $7259: $43
    ld [$4256], sp                                ; $725a: $08 $56 $42
    rst $28                                       ; $725d: $ef
    jr nz, jr_0d3_72bf                            ; $725e: $20 $5f

    inc bc                                        ; $7260: $03
    ld [bc], a                                    ; $7261: $02
    nop                                           ; $7262: $00
    ld e, l                                       ; $7263: $5d
    ld [bc], a                                    ; $7264: $02
    or e                                          ; $7265: $b3
    dec a                                         ; $7266: $3d
    rst $18                                       ; $7267: $df
    ld h, a                                       ; $7268: $67
    ld hl, $9c04                                  ; $7269: $21 $04 $9c
    ld [de], a                                    ; $726c: $12
    call nc, $3d00                                ; $726d: $d4 $00 $3d
    ld e, e                                       ; $7270: $5b
    ld bc, $2f00                                  ; $7271: $01 $00 $2f
    dec c                                         ; $7274: $0d
    ld d, [hl]                                    ; $7275: $56
    ld a, $a6                                     ; $7276: $3e $a6
    db $10                                        ; $7278: $10
    ld h, l                                       ; $7279: $65
    ld [$4cf0], sp                                ; $727a: $08 $f0 $4c
    ld e, a                                       ; $727d: $5f
    inc bc                                        ; $727e: $03
    inc de                                        ; $727f: $13
    ld [hl], $02                                  ; $7280: $36 $02
    nop                                           ; $7282: $00
    ld e, l                                       ; $7283: $5d
    ld [bc], a                                    ; $7284: $02
    sub e                                         ; $7285: $93
    ld c, c                                       ; $7286: $49
    sbc l                                         ; $7287: $9d
    ld l, e                                       ; $7288: $6b
    ld b, e                                       ; $7289: $43
    inc b                                         ; $728a: $04
    pop de                                        ; $728b: $d1
    ld sp, $7bff                                  ; $728c: $31 $ff $7b
    db $db                                        ; $728f: $db
    ld bc, $14e9                                  ; $7290: $01 $e9 $14
    ld e, b                                       ; $7293: $58
    ld a, $3e                                     ; $7294: $3e $3e
    ld e, e                                       ; $7296: $5b
    ld l, l                                       ; $7297: $6d
    dec h                                         ; $7298: $25
    ld bc, $3200                                  ; $7299: $01 $00 $32
    ld c, c                                       ; $729c: $49
    ld e, a                                       ; $729d: $5f
    inc bc                                        ; $729e: $03
    ret z                                         ; $729f: $c8

    inc d                                         ; $72a0: $14
    ld [bc], a                                    ; $72a1: $02
    nop                                           ; $72a2: $00
    or h                                          ; $72a3: $b4
    ld d, l                                       ; $72a4: $55
    ld e, e                                       ; $72a5: $5b
    ld bc, $035f                                  ; $72a6: $01 $5f $03
    ld b, e                                       ; $72a9: $43
    inc b                                         ; $72aa: $04
    pop de                                        ; $72ab: $d1
    dec [hl]                                      ; $72ac: $35
    ei                                            ; $72ad: $fb
    ld d, d                                       ; $72ae: $52
    cpl                                           ; $72af: $2f
    add hl, bc                                    ; $72b0: $09
    ld b, e                                       ; $72b1: $43
    ld [$7bff], sp                                ; $72b2: $08 $ff $7b
    db $10                                        ; $72b5: $10
    dec e                                         ; $72b6: $1d
    xor b                                         ; $72b7: $a8
    inc c                                         ; $72b8: $0c
    ld [bc], a                                    ; $72b9: $02
    nop                                           ; $72ba: $00
    sub h                                         ; $72bb: $94
    ld e, c                                       ; $72bc: $59
    ld e, a                                       ; $72bd: $5f
    inc bc                                        ; $72be: $03

jr_0d3_72bf:
    and [hl]                                      ; $72bf: $a6
    db $10                                        ; $72c0: $10
    ld [bc], a                                    ; $72c1: $02
    nop                                           ; $72c2: $00
    ld e, e                                       ; $72c3: $5b
    ld bc, $5e37                                  ; $72c4: $01 $37 $5e
    ld e, a                                       ; $72c7: $5f
    inc bc                                        ; $72c8: $03
    ld b, h                                       ; $72c9: $44
    inc b                                         ; $72ca: $04
    or h                                          ; $72cb: $b4
    dec b                                         ; $72cc: $05
    ld e, [hl]                                    ; $72cd: $5e
    ld d, e                                       ; $72ce: $53
    push af                                       ; $72cf: $f5
    dec [hl]                                      ; $72d0: $35
    and a                                         ; $72d1: $a7
    db $10                                        ; $72d2: $10
    sbc c                                         ; $72d3: $99
    ld b, [hl]                                    ; $72d4: $46
    or b                                          ; $72d5: $b0
    dec l                                         ; $72d6: $2d
    ld a, a                                       ; $72d7: $7f
    ld h, e                                       ; $72d8: $63
    ld [bc], a                                    ; $72d9: $02
    nop                                           ; $72da: $00
    ld d, $5e                                     ; $72db: $16 $5e
    ld e, a                                       ; $72dd: $5f
    inc bc                                        ; $72de: $03
    rst $20                                       ; $72df: $e7
    inc d                                         ; $72e0: $14
    ld [bc], a                                    ; $72e1: $02
    nop                                           ; $72e2: $00
    ld e, b                                       ; $72e3: $58
    ld h, [hl]                                    ; $72e4: $66
    ld e, e                                       ; $72e5: $5b
    ld bc, $0b3d                                  ; $72e6: $01 $3d $0b
    ld hl, $7000                                  ; $72e9: $21 $00 $70
    dec h                                         ; $72ec: $25
    ld a, e                                       ; $72ed: $7b
    ld b, d                                       ; $72ee: $42
    sbc e                                         ; $72ef: $9b
    jr jr_0d3_7314                                ; $72f0: $18 $22

    inc b                                         ; $72f2: $04
    dec d                                         ; $72f3: $15
    ld [hl], $1e                                  ; $72f4: $36 $1e
    ld d, a                                       ; $72f6: $57
    ld [$0014], a                                 ; $72f7: $ea $14 $00
    nop                                           ; $72fa: $00
    ld e, b                                       ; $72fb: $58
    ld h, [hl]                                    ; $72fc: $66
    ld e, $00                                     ; $72fd: $1e $00
    ld e, a                                       ; $72ff: $5f
    inc bc                                        ; $7300: $03
    ld bc, $9900                                  ; $7301: $01 $00 $99
    ld l, d                                       ; $7304: $6a
    ld e, e                                       ; $7305: $5b
    ld bc, $035f                                  ; $7306: $01 $5f $03
    ld hl, $9c00                                  ; $7309: $21 $00 $9c
    ccf                                           ; $730c: $3f
    or d                                          ; $730d: $b2
    ld de, $0018                                  ; $730e: $11 $18 $00
    ld h, h                                       ; $7311: $64
    inc b                                         ; $7312: $04
    ld [hl], b                                    ; $7313: $70

jr_0d3_7314:
    dec h                                         ; $7314: $25
    ld a, [de]                                    ; $7315: $1a
    ld d, a                                       ; $7316: $57
    sbc d                                         ; $7317: $9a
    ld bc, $0443                                  ; $7318: $01 $43 $04
    ld e, a                                       ; $731b: $5f
    inc bc                                        ; $731c: $03
    sub e                                         ; $731d: $93
    dec b                                         ; $731e: $05
    rst $38                                       ; $731f: $ff
    ld h, a                                       ; $7320: $67
    ld [bc], a                                    ; $7321: $02
    nop                                           ; $7322: $00
    sub l                                         ; $7323: $95

Call_0d3_7324:
    dec c                                         ; $7324: $0d
    dec de                                        ; $7325: $1b
    ld e, e                                       ; $7326: $5b
    rra                                           ; $7327: $1f
    rrca                                          ; $7328: $0f
    ld [hl+], a                                   ; $7329: $22
    nop                                           ; $732a: $00
    ld a, h                                       ; $732b: $7c
    inc c                                         ; $732c: $0c
    sbc $2a                                       ; $732d: $de $2a
    ld a, e                                       ; $732f: $7b
    ld d, e                                       ; $7330: $53
    add h                                         ; $7331: $84
    nop                                           ; $7332: $00
    ld e, c                                       ; $7333: $59
    ld b, $31                                     ; $7334: $06 $31
    ld bc, $3f3a                                  ; $7336: $01 $3a $3f
    ld hl, $1b04                                  ; $7339: $21 $04 $1b
    rlca                                          ; $733c: $07
    pop de                                        ; $733d: $d1
    inc b                                         ; $733e: $04
    rst $38                                       ; $733f: $ff
    ld d, e                                       ; $7340: $53
    ld bc, $d800                                  ; $7341: $01 $00 $d8
    ld [$5bbd], sp                                ; $7344: $08 $bd $5b
    ld a, a                                       ; $7347: $7f
    ld a, [bc]                                    ; $7348: $0a
    ld hl, $de04                                  ; $7349: $21 $04 $de
    ld d, a                                       ; $734c: $57
    jr c, jr_0d3_734f                             ; $734d: $38 $00

jr_0d3_734f:
    ld [hl], l                                    ; $734f: $75
    ld [bc], a                                    ; $7350: $02
    nop                                           ; $7351: $00
    nop                                           ; $7352: $00
    ld e, b                                       ; $7353: $58
    ld bc, $3b9c                                  ; $7354: $01 $9c $3b
    ld e, c                                       ; $7357: $59
    ld b, $21                                     ; $7358: $06 $21
    inc b                                         ; $735a: $04
    ld a, a                                       ; $735b: $7f
    inc de                                        ; $735c: $13
    ld l, e                                       ; $735d: $6b
    add hl, bc                                    ; $735e: $09
    ld [hl], d                                    ; $735f: $72
    nop                                           ; $7360: $00
    ld bc, $0f00                                  ; $7361: $01 $00 $0f
    ld l, $bf                                     ; $7364: $2e $bf
    inc hl                                        ; $7366: $23
    cp e                                          ; $7367: $bb
    nop                                           ; $7368: $00
    ld b, d                                       ; $7369: $42
    inc b                                         ; $736a: $04
    sbc h                                         ; $736b: $9c
    ld d, e                                       ; $736c: $53
    ld [hl], l                                    ; $736d: $75
    ld [bc], a                                    ; $736e: $02
    dec de                                        ; $736f: $1b
    inc b                                         ; $7370: $04
    nop                                           ; $7371: $00
    nop                                           ; $7372: $00
    ld [hl-], a                                   ; $7373: $32
    ld bc, $3ed5                                  ; $7374: $01 $d5 $3e
    and a                                         ; $7377: $a7
    jr jr_0d3_739b                                ; $7378: $18 $21

    inc b                                         ; $737a: $04
    ld a, [de]                                    ; $737b: $1a
    nop                                           ; $737c: $00
    ld e, a                                       ; $737d: $5f
    inc bc                                        ; $737e: $03
    jr jr_0d3_73bc                                ; $737f: $18 $3b

    ld bc, $9900                                  ; $7381: $01 $00 $99
    nop                                           ; $7384: $00
    dec de                                        ; $7385: $1b
    rrca                                          ; $7386: $0f
    sbc l                                         ; $7387: $9d
    ld c, a                                       ; $7388: $4f
    ld h, e                                       ; $7389: $63
    inc b                                         ; $738a: $04
    ld [hl-], a                                   ; $738b: $32
    ld e, $15                                     ; $738c: $1e $15
    nop                                           ; $738e: $00
    rst $38                                       ; $738f: $ff
    scf                                           ; $7390: $37
    ld hl, $f304                                  ; $7391: $21 $04 $f3
    nop                                           ; $7394: $00
    rst $18                                       ; $7395: $df
    ld d, a                                       ; $7396: $57
    rst $08                                       ; $7397: $cf
    dec h                                         ; $7398: $25
    nop                                           ; $7399: $00
    nop                                           ; $739a: $00

jr_0d3_739b:
    dec de                                        ; $739b: $1b
    nop                                           ; $739c: $00
    xor h                                         ; $739d: $ac
    inc b                                         ; $739e: $04
    dec a                                         ; $739f: $3d
    rlca                                          ; $73a0: $07
    ld bc, $1900                                  ; $73a1: $01 $00 $19
    nop                                           ; $73a4: $00
    ld e, a                                       ; $73a5: $5f
    inc bc                                        ; $73a6: $03
    dec e                                         ; $73a7: $1d
    dec b                                         ; $73a8: $05
    ld hl, $f004                                  ; $73a9: $21 $04 $f0
    add hl, de                                    ; $73ac: $19
    adc h                                         ; $73ad: $8c
    inc b                                         ; $73ae: $04
    add hl, de                                    ; $73af: $19
    inc hl                                        ; $73b0: $23
    nop                                           ; $73b1: $00
    inc b                                         ; $73b2: $04
    ld sp, $ab4a                                  ; $73b3: $31 $4a $ab
    nop                                           ; $73b6: $00
    add hl, de                                    ; $73b7: $19
    inc sp                                        ; $73b8: $33
    ld [hl+], a                                   ; $73b9: $22
    nop                                           ; $73ba: $00
    ld [hl-], a                                   ; $73bb: $32

jr_0d3_73bc:
    ld e, $5f                                     ; $73bc: $1e $5f
    inc bc                                        ; $73be: $03
    jr jr_0d3_73c1                                ; $73bf: $18 $00

jr_0d3_73c1:
    ld [bc], a                                    ; $73c1: $02
    nop                                           ; $73c2: $00
    inc a                                         ; $73c3: $3c
    inc b                                         ; $73c4: $04
    ld e, a                                       ; $73c5: $5f
    inc bc                                        ; $73c6: $03
    ld e, l                                       ; $73c7: $5d
    add hl, bc                                    ; $73c8: $09
    ld hl, $1408                                  ; $73c9: $21 $08 $14
    nop                                           ; $73cc: $00
    dec de                                        ; $73cd: $1b
    inc b                                         ; $73ce: $04
    rst $00                                       ; $73cf: $c7
    nop                                           ; $73d0: $00
    nop                                           ; $73d1: $00
    nop                                           ; $73d2: $00
    or l                                          ; $73d3: $b5
    ld [hl+], a                                   ; $73d4: $22
    xor c                                         ; $73d5: $a9
    nop                                           ; $73d6: $00
    rst $18                                       ; $73d7: $df
    ld d, a                                       ; $73d8: $57
    ld b, e                                       ; $73d9: $43
    nop                                           ; $73da: $00
    dec a                                         ; $73db: $3d
    inc d                                         ; $73dc: $14
    ld e, l                                       ; $73dd: $5d
    rlca                                          ; $73de: $07
    rst $38                                       ; $73df: $ff
    ld c, d                                       ; $73e0: $4a
    ld [bc], a                                    ; $73e1: $02
    nop                                           ; $73e2: $00
    ld e, e                                       ; $73e3: $5b
    ld bc, $035f                                  ; $73e4: $01 $5f $03
    rst $38                                       ; $73e7: $ff
    ld c, d                                       ; $73e8: $4a
    ld e, e                                       ; $73e9: $5b
    ld bc, $035f                                  ; $73ea: $01 $5f $03
    ld e, a                                       ; $73ed: $5f
    inc bc                                        ; $73ee: $03
    rst $38                                       ; $73ef: $ff
    ld c, d                                       ; $73f0: $4a
    ld e, e                                       ; $73f1: $5b
    ld bc, $035f                                  ; $73f2: $01 $5f $03
    ld e, a                                       ; $73f5: $5f
    inc bc                                        ; $73f6: $03
    rst $38                                       ; $73f7: $ff
    ld c, d                                       ; $73f8: $4a
    ld [bc], a                                    ; $73f9: $02
    nop                                           ; $73fa: $00
    ld e, e                                       ; $73fb: $5b
    ld bc, $035f                                  ; $73fc: $01 $5f $03
    rst $38                                       ; $73ff: $ff
    ld c, d                                       ; $7400: $4a
    ld [bc], a                                    ; $7401: $02
    nop                                           ; $7402: $00
    ld e, c                                       ; $7403: $59
    ld [$035f], sp                                ; $7404: $08 $5f $03
    ld e, e                                       ; $7407: $5b
    ld bc, $0859                                  ; $7408: $01 $59 $08
    ld e, a                                       ; $740b: $5f
    inc bc                                        ; $740c: $03
    ld e, a                                       ; $740d: $5f
    inc bc                                        ; $740e: $03
    ld e, e                                       ; $740f: $5b
    ld bc, $0000                                  ; $7410: $01 $00 $00
    ld e, a                                       ; $7413: $5f
    inc bc                                        ; $7414: $03
    ld e, c                                       ; $7415: $59
    ld [$015b], sp                                ; $7416: $08 $5b $01
    ld [bc], a                                    ; $7419: $02
    nop                                           ; $741a: $00
    ld e, a                                       ; $741b: $5f
    inc bc                                        ; $741c: $03
    ld e, c                                       ; $741d: $59
    ld [$015b], sp                                ; $741e: $08 $5b $01
    ld bc, $7900                                  ; $7421: $01 $00 $79
    inc b                                         ; $7424: $04
    inc d                                         ; $7425: $14
    ld a, [hl-]                                   ; $7426: $3a
    ld e, a                                       ; $7427: $5f
    inc bc                                        ; $7428: $03
    nop                                           ; $7429: $00
    nop                                           ; $742a: $00
    jr @+$5d                                      ; $742b: $18 $5b

    ld e, c                                       ; $742d: $59
    inc b                                         ; $742e: $04
    cp l                                          ; $742f: $bd
    ld l, a                                       ; $7430: $6f
    nop                                           ; $7431: $00
    nop                                           ; $7432: $00
    ld [hl], h                                    ; $7433: $74
    ld c, d                                       ; $7434: $4a
    ld e, c                                       ; $7435: $59
    inc b                                         ; $7436: $04
    cp l                                          ; $7437: $bd
    ld l, a                                       ; $7438: $6f
    ld [bc], a                                    ; $7439: $02
    nop                                           ; $743a: $00
    ld e, a                                       ; $743b: $5f
    inc bc                                        ; $743c: $03
    ld e, c                                       ; $743d: $59
    inc b                                         ; $743e: $04
    ld e, c                                       ; $743f: $59
    ld [$0002], sp                                ; $7440: $08 $02 $00
    jp c, Jump_0d3_7600                           ; $7443: $da $00 $76

    ld b, [hl]                                    ; $7446: $46
    ld e, a                                       ; $7447: $5f
    inc bc                                        ; $7448: $03
    nop                                           ; $7449: $00
    nop                                           ; $744a: $00
    ld a, e                                       ; $744b: $7b
    ld h, a                                       ; $744c: $67
    sbc $73                                       ; $744d: $de $73
    inc hl                                        ; $744f: $23
    nop                                           ; $7450: $00
    nop                                           ; $7451: $00
    nop                                           ; $7452: $00
    or l                                          ; $7453: $b5
    ld c, [hl]                                    ; $7454: $4e
    or [hl]                                       ; $7455: $b6
    db $10                                        ; $7456: $10
    cp l                                          ; $7457: $bd
    ld l, a                                       ; $7458: $6f
    ld [bc], a                                    ; $7459: $02
    nop                                           ; $745a: $00
    ld a, c                                       ; $745b: $79
    inc b                                         ; $745c: $04
    ld e, a                                       ; $745d: $5f
    inc bc                                        ; $745e: $03
    ret                                           ; $745f: $c9


    db $10                                        ; $7460: $10
    ld [bc], a                                    ; $7461: $02
    nop                                           ; $7462: $00
    jp c, Jump_000_1300                           ; $7463: $da $00 $13

    ld [hl], $5f                                  ; $7466: $36 $5f
    inc bc                                        ; $7468: $03
    ld bc, $7500                                  ; $7469: $01 $00 $75
    ld b, [hl]                                    ; $746c: $46
    and [hl]                                      ; $746d: $a6
    db $10                                        ; $746e: $10
    dec hl                                        ; $746f: $2b
    dec e                                         ; $7470: $1d
    nop                                           ; $7471: $00
    nop                                           ; $7472: $00
    sub h                                         ; $7473: $94
    ld c, d                                       ; $7474: $4a
    ld [$7c18], a                                 ; $7475: $ea $18 $7c
    ld h, a                                       ; $7478: $67
    add [hl]                                      ; $7479: $86
    inc c                                         ; $747a: $0c
    ld a, [c]                                     ; $747b: $f2
    ld sp, $237f                                  ; $747c: $31 $7f $23
    sbc d                                         ; $747f: $9a
    inc b                                         ; $7480: $04
    ld [bc], a                                    ; $7481: $02
    nop                                           ; $7482: $00
    or b                                          ; $7483: $b0
    ld de, $137e                                  ; $7484: $11 $7e $13
    ld a, [$e900]                                 ; $7487: $fa $00 $e9
    inc d                                         ; $748a: $14
    ld e, b                                       ; $748b: $58
    ld a, $3e                                     ; $748c: $3e $3e
    ld e, e                                       ; $748e: $5b
    ld l, l                                       ; $748f: $6d
    dec h                                         ; $7490: $25
    nop                                           ; $7491: $00
    nop                                           ; $7492: $00
    ld d, l                                       ; $7493: $55
    ld b, d                                       ; $7494: $42
    rst $38                                       ; $7495: $ff
    ld a, e                                       ; $7496: $7b
    xor b                                         ; $7497: $a8
    db $10                                        ; $7498: $10
    add l                                         ; $7499: $85
    ld [$52d8], sp                                ; $749a: $08 $d8 $52
    rla                                           ; $749d: $17
    ld bc, $137e                                  ; $749e: $01 $7e $13
    ld [bc], a                                    ; $74a1: $02
    nop                                           ; $74a2: $00
    ld a, [de]                                    ; $74a3: $1a
    ld bc, $035f                                  ; $74a4: $01 $5f $03
    and [hl]                                      ; $74a7: $a6
    inc c                                         ; $74a8: $0c
    ld b, e                                       ; $74a9: $43
    ld [$7bff], sp                                ; $74aa: $08 $ff $7b
    db $10                                        ; $74ad: $10
    dec e                                         ; $74ae: $1d
    xor b                                         ; $74af: $a8
    inc c                                         ; $74b0: $0c
    ld h, h                                       ; $74b1: $64
    ld [$35d1], sp                                ; $74b2: $08 $d1 $35
    or a                                          ; $74b5: $b7
    ld c, [hl]                                    ; $74b6: $4e
    ld e, a                                       ; $74b7: $5f
    ld e, a                                       ; $74b8: $5f
    ld h, h                                       ; $74b9: $64
    ld [$19d1], sp                                ; $74ba: $08 $d1 $19
    ld e, a                                       ; $74bd: $5f
    inc bc                                        ; $74be: $03
    db $db                                        ; $74bf: $db
    inc b                                         ; $74c0: $04
    ld [bc], a                                    ; $74c1: $02
    nop                                           ; $74c2: $00
    ei                                            ; $74c3: $fb
    nop                                           ; $74c4: $00
    ld e, a                                       ; $74c5: $5f
    inc bc                                        ; $74c6: $03
    rst $20                                       ; $74c7: $e7
    inc d                                         ; $74c8: $14
    and a                                         ; $74c9: $a7
    db $10                                        ; $74ca: $10
    sbc c                                         ; $74cb: $99
    ld b, [hl]                                    ; $74cc: $46
    or b                                          ; $74cd: $b0
    dec l                                         ; $74ce: $2d
    ld a, a                                       ; $74cf: $7f
    ld h, e                                       ; $74d0: $63
    ld bc, $1400                                  ; $74d1: $01 $00 $14
    ld h, $3b                                     ; $74d4: $26 $3b
    ld d, e                                       ; $74d6: $53
    add [hl]                                      ; $74d7: $86
    inc c                                         ; $74d8: $0c
    ld b, e                                       ; $74d9: $43
    nop                                           ; $74da: $00
    ei                                            ; $74db: $fb
    inc b                                         ; $74dc: $04
    ld e, a                                       ; $74dd: $5f
    inc bc                                        ; $74de: $03
    rst $18                                       ; $74df: $df
    ld e, e                                       ; $74e0: $5b
    ld bc, $1c00                                  ; $74e1: $01 $00 $1c
    ld bc, $32cd                                  ; $74e4: $01 $cd $32
    ld e, a                                       ; $74e7: $5f
    inc bc                                        ; $74e8: $03
    ld [hl+], a                                   ; $74e9: $22
    inc b                                         ; $74ea: $04
    dec d                                         ; $74eb: $15
    ld [hl], $1e                                  ; $74ec: $36 $1e
    ld d, a                                       ; $74ee: $57
    ld [$2114], a                                 ; $74ef: $ea $14 $21
    nop                                           ; $74f2: $00
    ld [hl], d                                    ; $74f3: $72
    dec h                                         ; $74f4: $25
    dec d                                         ; $74f5: $15
    ld b, a                                       ; $74f6: $47
    ld c, b                                       ; $74f7: $48
    dec d                                         ; $74f8: $15
    ld bc, $1c00                                  ; $74f9: $01 $00 $1c
    dec b                                         ; $74fc: $05
    dec a                                         ; $74fd: $3d
    dec bc                                        ; $74fe: $0b
    and l                                         ; $74ff: $a5
    inc b                                         ; $7500: $04
    ld [bc], a                                    ; $7501: $02
    nop                                           ; $7502: $00
    or [hl]                                       ; $7503: $b6
    add hl, bc                                    ; $7504: $09
    sbc h                                         ; $7505: $9c
    ld h, e                                       ; $7506: $63
    ld e, a                                       ; $7507: $5f
    inc bc                                        ; $7508: $03
    ld b, e                                       ; $7509: $43
    inc b                                         ; $750a: $04
    cp b                                          ; $750b: $b8
    ld c, [hl]                                    ; $750c: $4e
    ld c, [hl]                                    ; $750d: $4e
    ld hl, $6fbd                                  ; $750e: $21 $bd $6f
    jr nz, jr_0d3_7513                            ; $7511: $20 $00

jr_0d3_7513:
    ld [hl], a                                    ; $7513: $77
    ld a, [de]                                    ; $7514: $1a
    daa                                           ; $7515: $27
    dec c                                         ; $7516: $0d
    sbc d                                         ; $7517: $9a
    ld d, a                                       ; $7518: $57
    nop                                           ; $7519: $00
    nop                                           ; $751a: $00
    inc a                                         ; $751b: $3c
    dec b                                         ; $751c: $05
    ld e, a                                       ; $751d: $5f
    inc bc                                        ; $751e: $03
    ld [bc], a                                    ; $751f: $02
    nop                                           ; $7520: $00
    ld bc, $d300                                  ; $7521: $01 $00 $d3
    dec c                                         ; $7524: $0d
    ld a, [hl-]                                   ; $7525: $3a
    ld d, e                                       ; $7526: $53
    ld e, l                                       ; $7527: $5d
    rlca                                          ; $7528: $07
    and l                                         ; $7529: $a5
    inc b                                         ; $752a: $04
    rst $10                                       ; $752b: $d7
    ld c, [hl]                                    ; $752c: $4e
    sbc h                                         ; $752d: $9c
    ld l, e                                       ; $752e: $6b
    sbc $3b                                       ; $752f: $de $3b
    ld h, c                                       ; $7531: $61
    nop                                           ; $7532: $00
    call z, $252e                                 ; $7533: $cc $2e $25
    ld [de], a                                    ; $7536: $12
    ld a, c                                       ; $7537: $79
    ld b, a                                       ; $7538: $47
    ld b, d                                       ; $7539: $42
    inc b                                         ; $753a: $04
    sub e                                         ; $753b: $93
    ld de, $4f9d                                  ; $753c: $11 $9d $4f
    ld e, a                                       ; $753f: $5f
    inc bc                                        ; $7540: $03
    ld bc, $3a00                                  ; $7541: $01 $00 $3a
    ld [bc], a                                    ; $7544: $02
    add hl, sp                                    ; $7545: $39
    ld c, e                                       ; $7546: $4b
    rst $00                                       ; $7547: $c7
    dec c                                         ; $7548: $0d
    nop                                           ; $7549: $00
    nop                                           ; $754a: $00
    sub $52                                       ; $754b: $d6 $52
    cp $67                                        ; $754d: $fe $67
    ld e, c                                       ; $754f: $59
    dec hl                                        ; $7550: $2b
    nop                                           ; $7551: $00
    inc b                                         ; $7552: $04
    ld [hl], l                                    ; $7553: $75
    ld [bc], a                                    ; $7554: $02
    sbc $57                                       ; $7555: $de $57
    jp nz, $2108                                  ; $7557: $c2 $08 $21

    nop                                           ; $755a: $00
    inc [hl]                                      ; $755b: $34
    ld b, a                                       ; $755c: $47
    ld e, a                                       ; $755d: $5f
    inc bc                                        ; $755e: $03
    rst $20                                       ; $755f: $e7
    add hl, de                                    ; $7560: $19
    ld bc, $9800                                  ; $7561: $01 $00 $98
    dec c                                         ; $7564: $0d
    ld a, a                                       ; $7565: $7f
    dec de                                        ; $7566: $1b
    ld [bc], a                                    ; $7567: $02
    dec b                                         ; $7568: $05
    ld [hl+], a                                   ; $7569: $22
    nop                                           ; $756a: $00
    ld d, d                                       ; $756b: $52
    ld [hl], $4c                                  ; $756c: $36 $4c
    dec d                                         ; $756e: $15
    add hl, sp                                    ; $756f: $39
    ld e, e                                       ; $7570: $5b
    ld b, d                                       ; $7571: $42
    inc b                                         ; $7572: $04
    ld [hl], l                                    ; $7573: $75
    ld [bc], a                                    ; $7574: $02
    sbc h                                         ; $7575: $9c
    ld d, e                                       ; $7576: $53
    ld h, c                                       ; $7577: $61
    ld bc, $0001                                  ; $7578: $01 $01 $00
    ld e, a                                       ; $757b: $5f
    inc bc                                        ; $757c: $03
    ld b, $12                                     ; $757d: $06 $12
    rst $38                                       ; $757f: $ff
    dec sp                                        ; $7580: $3b
    ld bc, $5b00                                  ; $7581: $01 $00 $5b
    ld bc, $0525                                  ; $7584: $01 $25 $05
    dec a                                         ; $7587: $3d
    rlca                                          ; $7588: $07
    ld hl, $7404                                  ; $7589: $21 $04 $74
    ld a, [de]                                    ; $758c: $1a
    xor c                                         ; $758d: $a9
    dec e                                         ; $758e: $1d
    add hl, sp                                    ; $758f: $39
    ld e, e                                       ; $7590: $5b
    ld h, e                                       ; $7591: $63
    inc b                                         ; $7592: $04
    ld [hl-], a                                   ; $7593: $32
    ld e, $83                                     ; $7594: $1e $83
    ld bc, $37ff                                  ; $7596: $01 $ff $37
    nop                                           ; $7599: $00
    nop                                           ; $759a: $00
    dec de                                        ; $759b: $1b
    rrca                                          ; $759c: $0f
    sbc l                                         ; $759d: $9d
    ld c, a                                       ; $759e: $4f
    and d                                         ; $759f: $a2
    dec b                                         ; $75a0: $05
    ld bc, $d500                                  ; $75a1: $01 $00 $d5
    ld de, $035f                                  ; $75a4: $11 $5f $03
    ld h, $09                                     ; $75a7: $26 $09
    nop                                           ; $75a9: $00
    nop                                           ; $75aa: $00
    ld [hl-], a                                   ; $75ab: $32
    ld c, d                                       ; $75ac: $4a
    add hl, de                                    ; $75ad: $19
    inc sp                                        ; $75ae: $33
    add h                                         ; $75af: $84
    inc c                                         ; $75b0: $0c
    nop                                           ; $75b1: $00
    nop                                           ; $75b2: $00
    ldh a, [rNR24]                                ; $75b3: $f0 $19
    add hl, de                                    ; $75b5: $19
    inc hl                                        ; $75b6: $23
    dec h                                         ; $75b7: $25
    add hl, bc                                    ; $75b8: $09
    ld bc, $ee00                                  ; $75b9: $01 $00 $ee
    ld [hl], $a3                                  ; $75bc: $36 $a3
    add hl, bc                                    ; $75be: $09
    ld e, a                                       ; $75bf: $5f
    inc bc                                        ; $75c0: $03
    ld bc, $7c00                                  ; $75c1: $01 $00 $7c
    ld [bc], a                                    ; $75c4: $02
    add $09                                       ; $75c5: $c6 $09
    ld d, [hl]                                    ; $75c7: $56
    ld b, a                                       ; $75c8: $47
    nop                                           ; $75c9: $00
    nop                                           ; $75ca: $00
    or l                                          ; $75cb: $b5
    ld [hl+], a                                   ; $75cc: $22
    rst $18                                       ; $75cd: $df
    ld d, a                                       ; $75ce: $57
    and $00                                       ; $75cf: $e6 $00
    pop hl                                        ; $75d1: $e1
    nop                                           ; $75d2: $00
    add d                                         ; $75d3: $82
    dec b                                         ; $75d4: $05
    ld b, d                                       ; $75d5: $42
    inc c                                         ; $75d6: $0c
    rst $00                                       ; $75d7: $c7
    nop                                           ; $75d8: $00
    ld [bc], a                                    ; $75d9: $02
    nop                                           ; $75da: $00
    ld d, e                                       ; $75db: $53
    ld c, e                                       ; $75dc: $4b
    ld e, a                                       ; $75dd: $5f
    inc bc                                        ; $75de: $03
    inc b                                         ; $75df: $04
    ld c, $02                                     ; $75e0: $0e $02
    nop                                           ; $75e2: $00
    ld e, e                                       ; $75e3: $5b
    ld bc, $035f                                  ; $75e4: $01 $5f $03
    inc b                                         ; $75e7: $04
    ld c, $5b                                     ; $75e8: $0e $5b
    ld bc, $035f                                  ; $75ea: $01 $5f $03
    ld e, a                                       ; $75ed: $5f
    inc bc                                        ; $75ee: $03
    inc b                                         ; $75ef: $04
    ld c, $5b                                     ; $75f0: $0e $5b
    ld bc, $035f                                  ; $75f2: $01 $5f $03
    ld e, a                                       ; $75f5: $5f
    inc bc                                        ; $75f6: $03
    inc b                                         ; $75f7: $04
    ld c, $02                                     ; $75f8: $0e $02
    nop                                           ; $75fa: $00
    ld e, e                                       ; $75fb: $5b
    ld bc, $035f                                  ; $75fc: $01 $5f $03
    inc b                                         ; $75ff: $04

Jump_0d3_7600:
    ld c, $01                                     ; $7600: $0e $01
    jr nc, jr_0d3_765f                            ; $7602: $30 $5b

    ld bc, $0002                                  ; $7604: $01 $02 $00
    ld e, a                                       ; $7607: $5f
    inc bc                                        ; $7608: $03
    ld bc, $5f30                                  ; $7609: $01 $30 $5f
    inc bc                                        ; $760c: $03
    ld h, h                                       ; $760d: $64
    inc b                                         ; $760e: $04
    and l                                         ; $760f: $a5
    inc b                                         ; $7610: $04
    ld bc, $5f30                                  ; $7611: $01 $30 $5f
    inc bc                                        ; $7614: $03
    ld h, h                                       ; $7615: $64
    inc b                                         ; $7616: $04
    and l                                         ; $7617: $a5
    inc b                                         ; $7618: $04
    ld bc, $5f30                                  ; $7619: $01 $30 $5f
    inc bc                                        ; $761c: $03
    ld [bc], a                                    ; $761d: $02
    nop                                           ; $761e: $00
    and l                                         ; $761f: $a5
    inc b                                         ; $7620: $04
    ld bc, $5b30                                  ; $7621: $01 $30 $5b
    ld bc, $0002                                  ; $7624: $01 $02 $00
    ld e, a                                       ; $7627: $5f
    inc bc                                        ; $7628: $03
    ld [hl+], a                                   ; $7629: $22
    db $10                                        ; $762a: $10
    or [hl]                                       ; $762b: $b6
    ld [hl+], a                                   ; $762c: $22
    rst $08                                       ; $762d: $cf
    dec e                                         ; $762e: $1d
    sbc $37                                       ; $762f: $de $37
    ld bc, $d730                                  ; $7631: $01 $30 $d7
    ld l, $85                                     ; $7634: $2e $85
    inc b                                         ; $7636: $04
    sbc $37                                       ; $7637: $de $37
    ld bc, $5f30                                  ; $7639: $01 $30 $5f
    inc bc                                        ; $763c: $03
    ld [bc], a                                    ; $763d: $02
    nop                                           ; $763e: $00
    sbc $37                                       ; $763f: $de $37
    ld bc, $5b30                                  ; $7641: $01 $30 $5b
    ld bc, $0002                                  ; $7644: $01 $02 $00
    ld e, a                                       ; $7647: $5f
    inc bc                                        ; $7648: $03
    ld b, e                                       ; $7649: $43
    inc b                                         ; $764a: $04
    ld d, d                                       ; $764b: $52
    ld d, $bd                                     ; $764c: $16 $bd
    inc sp                                        ; $764e: $33
    ld c, d                                       ; $764f: $4a
    ld de, $0443                                  ; $7650: $11 $43 $04
    ld e, h                                       ; $7653: $5c
    daa                                           ; $7654: $27
    xor [hl]                                      ; $7655: $ae
    dec d                                         ; $7656: $15
    rst $38                                       ; $7657: $ff
    scf                                           ; $7658: $37
    ld bc, $5f30                                  ; $7659: $01 $30 $5f
    inc bc                                        ; $765c: $03
    inc hl                                        ; $765d: $23
    nop                                           ; $765e: $00

jr_0d3_765f:
    rst $38                                       ; $765f: $ff
    ccf                                           ; $7660: $3f
    ld [bc], a                                    ; $7661: $02
    nop                                           ; $7662: $00
    sub a                                         ; $7663: $97
    add hl, bc                                    ; $7664: $09
    ld hl, $7e30                                  ; $7665: $21 $30 $7e
    dec de                                        ; $7668: $1b
    add l                                         ; $7669: $85
    inc b                                         ; $766a: $04
    jr jr_0d3_7690                                ; $766b: $18 $23

    ld de, $de16                                  ; $766d: $11 $16 $de
    inc sp                                        ; $7670: $33
    ld h, h                                       ; $7671: $64
    inc b                                         ; $7672: $04
    ldh a, [rNR11]                                ; $7673: $f0 $11
    or l                                          ; $7675: $b5
    ld a, [de]                                    ; $7676: $1a
    sbc $2f                                       ; $7677: $de $2f
    inc hl                                        ; $7679: $23
    nop                                           ; $767a: $00
    ld e, a                                       ; $767b: $5f
    inc bc                                        ; $767c: $03
    ld e, e                                       ; $767d: $5b
    inc sp                                        ; $767e: $33
    ld hl, $0230                                  ; $767f: $21 $30 $02
    nop                                           ; $7682: $00
    cp b                                          ; $7683: $b8
    dec c                                         ; $7684: $0d
    sbc [hl]                                      ; $7685: $9e
    rra                                           ; $7686: $1f
    ld b, d                                       ; $7687: $42
    inc [hl]                                      ; $7688: $34
    ld hl, $ad00                                  ; $7689: $21 $00 $ad
    dec c                                         ; $768c: $0d
    or l                                          ; $768d: $b5
    ld a, [de]                                    ; $768e: $1a
    add h                                         ; $768f: $84

jr_0d3_7690:
    inc b                                         ; $7690: $04
    ld b, e                                       ; $7691: $43
    nop                                           ; $7692: $00
    dec bc                                        ; $7693: $0b
    dec c                                         ; $7694: $0d
    and a                                         ; $7695: $a7
    ld [$0def], sp                                ; $7696: $08 $ef $0d
    inc hl                                        ; $7699: $23
    nop                                           ; $769a: $00
    dec sp                                        ; $769b: $3b
    rla                                           ; $769c: $17
    rst $38                                       ; $769d: $ff
    ld b, a                                       ; $769e: $47
    and [hl]                                      ; $769f: $a6
    jr z, jr_0d3_76a4                             ; $76a0: $28 $02

    nop                                           ; $76a2: $00
    ld [hl], a                                    ; $76a3: $77

jr_0d3_76a4:
    add hl, bc                                    ; $76a4: $09
    sbc a                                         ; $76a5: $9f
    inc hl                                        ; $76a6: $23
    and h                                         ; $76a7: $a4
    inc l                                         ; $76a8: $2c
    add l                                         ; $76a9: $85
    inc b                                         ; $76aa: $04
    ld d, d                                       ; $76ab: $52
    ld hl, $52fe                                  ; $76ac: $21 $fe $52
    ld d, c                                       ; $76af: $51
    ld [de], a                                    ; $76b0: $12
    ld b, l                                       ; $76b1: $45
    ld [$4abd], sp                                ; $76b2: $08 $bd $4a
    xor $14                                       ; $76b5: $ee $14
    ld [hl], e                                    ; $76b7: $73
    dec h                                         ; $76b8: $25
    ld b, e                                       ; $76b9: $43
    nop                                           ; $76ba: $00
    dec de                                        ; $76bb: $1b
    rla                                           ; $76bc: $17
    ld h, d                                       ; $76bd: $62
    jr c, jr_0d3_770a                             ; $76be: $38 $4a

    dec c                                         ; $76c0: $0d
    ld [bc], a                                    ; $76c1: $02
    nop                                           ; $76c2: $00
    ld e, e                                       ; $76c3: $5b
    ld bc, $2cc5                                  ; $76c4: $01 $c5 $2c
    dec sp                                        ; $76c7: $3b
    rla                                           ; $76c8: $17
    and h                                         ; $76c9: $a4
    nop                                           ; $76ca: $00
    cp $52                                        ; $76cb: $fe $52
    ld l, h                                       ; $76cd: $6c
    add hl, bc                                    ; $76ce: $09
    ld [hl], b                                    ; $76cf: $70
    dec e                                         ; $76d0: $1d
    add h                                         ; $76d1: $84
    nop                                           ; $76d2: $00
    cp $52                                        ; $76d3: $fe $52
    ld l, h                                       ; $76d5: $6c
    add hl, bc                                    ; $76d6: $09
    db $10                                        ; $76d7: $10
    add hl, de                                    ; $76d8: $19
    ld h, e                                       ; $76d9: $63
    nop                                           ; $76da: $00
    ld de, $5f16                                  ; $76db: $11 $16 $5f
    inc bc                                        ; $76de: $03
    add e                                         ; $76df: $83
    inc a                                         ; $76e0: $3c
    ld [bc], a                                    ; $76e1: $02
    nop                                           ; $76e2: $00
    ld e, l                                       ; $76e3: $5d
    ld [bc], a                                    ; $76e4: $02
    push bc                                       ; $76e5: $c5
    jr c, @-$21                                   ; $76e6: $38 $dd

    ld c, [hl]                                    ; $76e8: $4e
    add e                                         ; $76e9: $83
    nop                                           ; $76ea: $00
    ld [hl], d                                    ; $76eb: $72
    ld hl, $16b5                                  ; $76ec: $21 $b5 $16
    sbc h                                         ; $76ef: $9c
    ld b, [hl]                                    ; $76f0: $46
    and e                                         ; $76f1: $a3
    nop                                           ; $76f2: $00
    halt                                          ; $76f3: $76
    ld e, $fe                                     ; $76f4: $1e $fe
    ld d, d                                       ; $76f6: $52
    ld l, h                                       ; $76f7: $6c
    add hl, bc                                    ; $76f8: $09
    ld b, e                                       ; $76f9: $43
    nop                                           ; $76fa: $00
    dec a                                         ; $76fb: $3d
    dec bc                                        ; $76fc: $0b
    and e                                         ; $76fd: $a3
    ld b, b                                       ; $76fe: $40
    ld l, e                                       ; $76ff: $6b
    dec c                                         ; $7700: $0d
    ld [bc], a                                    ; $7701: $02
    nop                                           ; $7702: $00
    ld e, e                                       ; $7703: $5b
    ld bc, $34e6                                  ; $7704: $01 $e6 $34
    ld e, $1b                                     ; $7707: $1e $1b
    ld h, h                                       ; $7709: $64

jr_0d3_770a:
    inc c                                         ; $770a: $0c
    sbc e                                         ; $770b: $9b
    ld b, d                                       ; $770c: $42
    cp h                                          ; $770d: $bc
    ld a, e                                       ; $770e: $7b
    ld b, e                                       ; $770f: $43
    ld e, b                                       ; $7710: $58
    ld b, e                                       ; $7711: $43
    nop                                           ; $7712: $00
    cp $52                                        ; $7713: $fe $52
    ld b, e                                       ; $7715: $43
    ld e, b                                       ; $7716: $58
    sbc e                                         ; $7717: $9b
    ld a, e                                       ; $7718: $7b
    ld [bc], a                                    ; $7719: $02
    nop                                           ; $771a: $00
    ld e, a                                       ; $771b: $5f
    inc bc                                        ; $771c: $03
    jp Jump_0d3_6440                              ; $771d: $c3 $40 $64


    inc b                                         ; $7720: $04
    ld [bc], a                                    ; $7721: $02
    nop                                           ; $7722: $00
    ld e, e                                       ; $7723: $5b
    ld bc, $44c4                                  ; $7724: $01 $c4 $44
    ld e, $1b                                     ; $7727: $1e $1b
    ld [hl], e                                    ; $7729: $73
    dec h                                         ; $772a: $25
    cp $52                                        ; $772b: $fe $52
    or $2d                                        ; $772d: $f6 $2d
    jr @+$38                                      ; $772f: $18 $36

    inc hl                                        ; $7731: $23
    inc b                                         ; $7732: $04
    cp h                                          ; $7733: $bc
    ld c, d                                       ; $7734: $4a
    db $e4                                        ; $7735: $e4
    ld c, b                                       ; $7736: $48
    ld d, d                                       ; $7737: $52
    ld hl, $0002                                  ; $7738: $21 $02 $00
    ld e, a                                       ; $773b: $5f
    inc bc                                        ; $773c: $03
    call nz, $e444                                ; $773d: $c4 $44 $e4
    ld c, b                                       ; $7740: $48
    ld [bc], a                                    ; $7741: $02
    nop                                           ; $7742: $00
    inc b                                         ; $7743: $04
    ld c, c                                       ; $7744: $49
    ld e, e                                       ; $7745: $5b
    ld bc, $035f                                  ; $7746: $01 $5f $03
    ld d, c                                       ; $7749: $51
    ld hl, $427b                                  ; $774a: $21 $7b $42
    or $2d                                        ; $774d: $f6 $2d
    cp $52                                        ; $774f: $fe $52
    ld b, a                                       ; $7751: $47
    ld [$3618], sp                                ; $7752: $08 $18 $36
    db $e4                                        ; $7755: $e4
    ld c, b                                       ; $7756: $48
    cp $52                                        ; $7757: $fe $52
    ld [bc], a                                    ; $7759: $02
    nop                                           ; $775a: $00
    ld e, a                                       ; $775b: $5f
    inc bc                                        ; $775c: $03
    db $e4                                        ; $775d: $e4
    ld c, b                                       ; $775e: $48
    inc b                                         ; $775f: $04
    ld c, l                                       ; $7760: $4d
    ld [bc], a                                    ; $7761: $02
    nop                                           ; $7762: $00
    dec b                                         ; $7763: $05
    ld c, l                                       ; $7764: $4d
    ld e, e                                       ; $7765: $5b
    ld bc, $035f                                  ; $7766: $01 $5f $03
    dec h                                         ; $7769: $25
    inc b                                         ; $776a: $04
    or $2d                                        ; $776b: $f6 $2d
    db $dd                                        ; $776d: $dd
    ld c, [hl]                                    ; $776e: $4e
    ld d, c                                       ; $776f: $51
    ld hl, $0425                                  ; $7770: $21 $25 $04
    jr c, jr_0d3_77ab                             ; $7773: $38 $36

    dec h                                         ; $7775: $25
    ld c, l                                       ; $7776: $4d
    cp $52                                        ; $7777: $fe $52
    ld [bc], a                                    ; $7779: $02
    nop                                           ; $777a: $00
    ld e, a                                       ; $777b: $5f
    inc bc                                        ; $777c: $03
    dec b                                         ; $777d: $05
    ld c, l                                       ; $777e: $4d
    dec h                                         ; $777f: $25
    ld d, c                                       ; $7780: $51
    ld [bc], a                                    ; $7781: $02
    nop                                           ; $7782: $00
    dec h                                         ; $7783: $25
    ld d, c                                       ; $7784: $51
    ld e, l                                       ; $7785: $5d
    ld [bc], a                                    ; $7786: $02
    ld l, h                                       ; $7787: $6c
    dec l                                         ; $7788: $2d
    inc b                                         ; $7789: $04
    nop                                           ; $778a: $00
    or $2d                                        ; $778b: $f6 $2d
    ld d, c                                       ; $778d: $51
    ld hl, $4abd                                  ; $778e: $21 $bd $4a
    ld b, h                                       ; $7791: $44
    ld [$4edd], sp                                ; $7792: $08 $dd $4e
    dec h                                         ; $7795: $25
    ld d, c                                       ; $7796: $51
    jr nc, jr_0d3_77b6                            ; $7797: $30 $1d

    ld [bc], a                                    ; $7799: $02
    nop                                           ; $779a: $00
    ld e, a                                       ; $779b: $5f
    inc bc                                        ; $779c: $03
    dec h                                         ; $779d: $25
    ld d, c                                       ; $779e: $51
    ld b, l                                       ; $779f: $45
    ld d, l                                       ; $77a0: $55
    ld [bc], a                                    ; $77a1: $02
    nop                                           ; $77a2: $00
    ld d, e                                       ; $77a3: $53
    ld c, d                                       ; $77a4: $4a
    ld e, l                                       ; $77a5: $5d
    ld [bc], a                                    ; $77a6: $02
    rlca                                          ; $77a7: $07
    ld sp, $0004                                  ; $77a8: $31 $04 $00

jr_0d3_77ab:
    add hl, sp                                    ; $77ab: $39
    ld a, [hl-]                                   ; $77ac: $3a
    dec c                                         ; $77ad: $0d
    dec e                                         ; $77ae: $1d
    jr jr_0d3_7814                                ; $77af: $18 $63

    inc hl                                        ; $77b1: $23
    inc b                                         ; $77b2: $04
    jr jr_0d3_7818                                ; $77b3: $18 $63

    inc c                                         ; $77b5: $0c

jr_0d3_77b6:
    dec e                                         ; $77b6: $1d
    ld a, e                                       ; $77b7: $7b
    ld b, d                                       ; $77b8: $42
    ld [hl+], a                                   ; $77b9: $22
    inc b                                         ; $77ba: $04
    ld e, a                                       ; $77bb: $5f
    inc bc                                        ; $77bc: $03
    ld b, l                                       ; $77bd: $45
    ld d, l                                       ; $77be: $55
    add hl, bc                                    ; $77bf: $09
    ld hl, $0002                                  ; $77c0: $21 $02 $00
    rst $30                                       ; $77c3: $f7
    ld e, [hl]                                    ; $77c4: $5e
    ld e, l                                       ; $77c5: $5d
    ld [bc], a                                    ; $77c6: $02
    add hl, bc                                    ; $77c7: $09
    ld hl, $0425                                  ; $77c8: $21 $25 $04
    or l                                          ; $77cb: $b5
    ld d, [hl]                                    ; $77cc: $56
    add hl, bc                                    ; $77cd: $09
    ld hl, $1d30                                  ; $77ce: $21 $30 $1d
    ld b, l                                       ; $77d1: $45
    ld [$4a53], sp                                ; $77d2: $08 $53 $4a
    add hl, bc                                    ; $77d5: $09
    ld hl, $6318                                  ; $77d6: $21 $18 $63
    ld h, h                                       ; $77d9: $64
    inc c                                         ; $77da: $0c
    ld d, e                                       ; $77db: $53
    ld c, d                                       ; $77dc: $4a
    ld h, [hl]                                    ; $77dd: $66
    ld e, c                                       ; $77de: $59
    ld e, a                                       ; $77df: $5f
    inc bc                                        ; $77e0: $03
    ld [bc], a                                    ; $77e1: $02
    nop                                           ; $77e2: $00
    ld e, e                                       ; $77e3: $5b
    ld bc, $035f                                  ; $77e4: $01 $5f $03
    ld e, a                                       ; $77e7: $5f
    inc bc                                        ; $77e8: $03
    ld e, e                                       ; $77e9: $5b
    ld bc, $035f                                  ; $77ea: $01 $5f $03
    ld e, a                                       ; $77ed: $5f
    inc bc                                        ; $77ee: $03
    ld e, a                                       ; $77ef: $5f
    inc bc                                        ; $77f0: $03
    ld e, e                                       ; $77f1: $5b
    ld bc, $035f                                  ; $77f2: $01 $5f $03
    ld e, a                                       ; $77f5: $5f
    inc bc                                        ; $77f6: $03
    ld e, a                                       ; $77f7: $5f
    inc bc                                        ; $77f8: $03
    ld [bc], a                                    ; $77f9: $02
    nop                                           ; $77fa: $00
    ld e, e                                       ; $77fb: $5b
    ld bc, $035f                                  ; $77fc: $01 $5f $03
    ld e, a                                       ; $77ff: $5f
    inc bc                                        ; $7800: $03
    ret nz                                        ; $7801: $c0

    dec b                                         ; $7802: $05
    ld e, e                                       ; $7803: $5b
    ld bc, $0002                                  ; $7804: $01 $02 $00
    ld e, a                                       ; $7807: $5f
    inc bc                                        ; $7808: $03
    nop                                           ; $7809: $00
    nop                                           ; $780a: $00
    ld e, a                                       ; $780b: $5f
    inc bc                                        ; $780c: $03
    inc b                                         ; $780d: $04
    add hl, bc                                    ; $780e: $09
    sbc $2b                                       ; $780f: $de $2b
    rst $00                                       ; $7811: $c7
    nop                                           ; $7812: $00
    ld e, a                                       ; $7813: $5f

jr_0d3_7814:
    inc bc                                        ; $7814: $03
    push de                                       ; $7815: $d5
    ld l, $de                                     ; $7816: $2e $de

jr_0d3_7818:
    dec hl                                        ; $7818: $2b
    ld [hl+], a                                   ; $7819: $22
    nop                                           ; $781a: $00
    sub l                                         ; $781b: $95
    ld [bc], a                                    ; $781c: $02
    ret nz                                        ; $781d: $c0

    dec b                                         ; $781e: $05
    ld e, a                                       ; $781f: $5f
    inc bc                                        ; $7820: $03
    ld bc, $7600                                  ; $7821: $01 $00 $76
    ld bc, $05c0                                  ; $7824: $01 $c0 $05
    ld e, a                                       ; $7827: $5f
    inc bc                                        ; $7828: $03
    nop                                           ; $7829: $00
    nop                                           ; $782a: $00
    cp [hl]                                       ; $782b: $be
    inc hl                                        ; $782c: $23
    ld de, $c602                                  ; $782d: $11 $02 $c6
    ld [$1b3a], sp                                ; $7830: $08 $3a $1b
    sbc [hl]                                      ; $7833: $9e
    inc hl                                        ; $7834: $23
    rst $18                                       ; $7835: $df
    daa                                           ; $7836: $27
    rst $38                                       ; $7837: $ff
    dec hl                                        ; $7838: $2b
    ld [hl+], a                                   ; $7839: $22
    nop                                           ; $783a: $00
    or [hl]                                       ; $783b: $b6
    ld b, $a3                                     ; $783c: $06 $a3
    add hl, bc                                    ; $783e: $09
    ld e, l                                       ; $783f: $5d
    dec bc                                        ; $7840: $0b
    ld bc, $7600                                  ; $7841: $01 $00 $76
    dec b                                         ; $7844: $05
    ret nz                                        ; $7845: $c0

    dec b                                         ; $7846: $05
    ld a, [hl]                                    ; $7847: $7e
    inc de                                        ; $7848: $13
    rst $00                                       ; $7849: $c7
    nop                                           ; $784a: $00
    ld a, l                                       ; $784b: $7d
    inc de                                        ; $784c: $13
    rst $18                                       ; $784d: $df
    daa                                           ; $784e: $27
    ld l, h                                       ; $784f: $6c
    ld bc, $0000                                  ; $7850: $01 $00 $00
    ld hl, sp+$16                                 ; $7853: $f8 $16
    adc l                                         ; $7855: $8d
    dec b                                         ; $7856: $05
    rst $38                                       ; $7857: $ff
    dec hl                                        ; $7858: $2b
    ld bc, $5300                                  ; $7859: $01 $00 $53
    ld [bc], a                                    ; $785c: $02
    ld e, [hl]                                    ; $785d: $5e
    inc de                                        ; $785e: $13
    ld a, [hl+]                                   ; $785f: $2a
    dec b                                         ; $7860: $05
    ld bc, $5300                                  ; $7861: $01 $00 $53
    ld a, [bc]                                    ; $7864: $0a
    ld a, [hl]                                    ; $7865: $7e
    rrca                                          ; $7866: $0f
    ld e, e                                       ; $7867: $5b
    ld bc, $0000                                  ; $7868: $01 $00 $00
    rst $18                                       ; $786b: $df
    daa                                           ; $786c: $27
    ld c, e                                       ; $786d: $4b
    ld bc, $01ee                                  ; $786e: $01 $ee $01
    ld h, e                                       ; $7871: $63
    nop                                           ; $7872: $00
    ld hl, sp+$12                                 ; $7873: $f8 $12
    ldh a, [rTIMA]                                ; $7875: $f0 $05
    rst $38                                       ; $7877: $ff
    cpl                                           ; $7878: $2f
    nop                                           ; $7879: $00
    nop                                           ; $787a: $00
    ld a, [$c606]                                 ; $787b: $fa $06 $c6
    dec b                                         ; $787e: $05
    rst $38                                       ; $787f: $ff
    dec sp                                        ; $7880: $3b
    ld bc, $5b00                                  ; $7881: $01 $00 $5b
    ld bc, $177d                                  ; $7884: $01 $7d $17
    rlca                                          ; $7887: $07
    ld de, $0000                                  ; $7888: $11 $00 $00
    ld a, [hl-]                                   ; $788b: $3a
    rla                                           ; $788c: $17
    xor l                                         ; $788d: $ad
    ld bc, $33ff                                  ; $788e: $01 $ff $33
    ld hl, $5200                                  ; $7891: $21 $00 $52
    ld [bc], a                                    ; $7894: $02
    sbc [hl]                                      ; $7895: $9e
    dec de                                        ; $7896: $1b
    ld l, h                                       ; $7897: $6c
    ld bc, $0021                                  ; $7898: $01 $21 $00
    ld d, e                                       ; $789b: $53
    ld [bc], a                                    ; $789c: $02
    db $e4                                        ; $789d: $e4
    add hl, bc                                    ; $789e: $09
    ld e, a                                       ; $789f: $5f
    inc bc                                        ; $78a0: $03
    ld [bc], a                                    ; $78a1: $02
    nop                                           ; $78a2: $00
    cp c                                          ; $78a3: $b9
    ld bc, $1fbe                                  ; $78a4: $01 $be $1f
    add hl, hl                                    ; $78a7: $29
    ld bc, $0000                                  ; $78a8: $01 $00 $00
    rst $28                                       ; $78ab: $ef
    ld bc, $0ad8                                  ; $78ac: $01 $d8 $0a
    and a                                         ; $78af: $a7
    ld [$0020], sp                                ; $78b0: $08 $20 $00
    ld c, $02                                     ; $78b3: $0e $02
    add hl, de                                    ; $78b5: $19
    ld [hl-], a                                   ; $78b6: $32
    ld h, l                                       ; $78b7: $65
    inc c                                         ; $78b8: $0c
    nop                                           ; $78b9: $00
    nop                                           ; $78ba: $00
    ld e, a                                       ; $78bb: $5f
    inc bc                                        ; $78bc: $03
    inc h                                         ; $78bd: $24
    ld [de], a                                    ; $78be: $12
    ld c, b                                       ; $78bf: $48
    nop                                           ; $78c0: $00
    ld [bc], a                                    ; $78c1: $02
    nop                                           ; $78c2: $00
    ld [hl-], a                                   ; $78c3: $32
    ld [bc], a                                    ; $78c4: $02
    ld e, l                                       ; $78c5: $5d
    rla                                           ; $78c6: $17
    ld e, e                                       ; $78c7: $5b
    ld bc, $0422                                  ; $78c8: $01 $22 $04
    jr nc, jr_0d3_78cf                            ; $78cb: $30 $02

    add hl, de                                    ; $78cd: $19
    ld [hl-], a                                   ; $78ce: $32

jr_0d3_78cf:
    ret z                                         ; $78cf: $c8

    ld [$10c8], sp                                ; $78d0: $08 $c8 $10
    rra                                           ; $78d3: $1f
    ld d, a                                       ; $78d4: $57
    add hl, de                                    ; $78d5: $19
    ld [hl-], a                                   ; $78d6: $32
    ret z                                         ; $78d7: $c8

    ld [$0003], sp                                ; $78d8: $08 $03 $00
    sbc h                                         ; $78db: $9c
    ld b, d                                       ; $78dc: $42
    ld b, l                                       ; $78dd: $45
    ld d, $5f                                     ; $78de: $16 $5f
    inc bc                                        ; $78e0: $03
    ld bc, $b300                                  ; $78e1: $01 $00 $b3
    ld bc, $031b                                  ; $78e4: $01 $1b $03
    rst $00                                       ; $78e7: $c7
    inc b                                         ; $78e8: $04
    ld bc, $1900                                  ; $78e9: $01 $00 $19
    ld [hl-], a                                   ; $78ec: $32
    rra                                           ; $78ed: $1f
    ld d, a                                       ; $78ee: $57
    xor e                                         ; $78ef: $ab
    inc d                                         ; $78f0: $14
    inc bc                                        ; $78f1: $03
    nop                                           ; $78f2: $00
    ld a, [$1f25]                                 ; $78f3: $fa $25 $1f
    ld d, a                                       ; $78f6: $57
    rst $38                                       ; $78f7: $ff
    ld a, a                                       ; $78f8: $7f
    ld [bc], a                                    ; $78f9: $02
    nop                                           ; $78fa: $00
    ld e, e                                       ; $78fb: $5b
    ld a, $66                                     ; $78fc: $3e $66
    ld d, $5f                                     ; $78fe: $16 $5f
    inc bc                                        ; $7900: $03
    ld [bc], a                                    ; $7901: $02
    nop                                           ; $7902: $00
    ld d, a                                       ; $7903: $57
    dec b                                         ; $7904: $05
    ld a, e                                       ; $7905: $7b
    ld a, $5f                                     ; $7906: $3e $5f
    inc bc                                        ; $7908: $03
    inc b                                         ; $7909: $04
    nop                                           ; $790a: $00
    db $fc                                        ; $790b: $fc
    add hl, de                                    ; $790c: $19
    rra                                           ; $790d: $1f
    ld d, a                                       ; $790e: $57
    rst $38                                       ; $790f: $ff
    ld a, a                                       ; $7910: $7f
    inc hl                                        ; $7911: $23
    nop                                           ; $7912: $00
    ld sp, hl                                     ; $7913: $f9
    add hl, hl                                    ; $7914: $29
    ld e, a                                       ; $7915: $5f
    ld h, e                                       ; $7916: $63
    db $eb                                        ; $7917: $eb
    db $10                                        ; $7918: $10
    ld bc, $8800                                  ; $7919: $01 $00 $88
    ld a, [de]                                    ; $791c: $1a
    add hl, de                                    ; $791d: $19
    ld [hl-], a                                   ; $791e: $32
    ld e, a                                       ; $791f: $5f
    inc bc                                        ; $7920: $03
    ld [bc], a                                    ; $7921: $02
    nop                                           ; $7922: $00
    xor c                                         ; $7923: $a9
    ld e, $d9                                     ; $7924: $1e $d9
    ld hl, $035f                                  ; $7926: $21 $5f $03
    ld [$1914], a                                 ; $7929: $ea $14 $19
    ld [hl-], a                                   ; $792c: $32
    rra                                           ; $792d: $1f
    ld d, a                                       ; $792e: $57
    ld e, a                                       ; $792f: $5f
    inc bc                                        ; $7930: $03
    add a                                         ; $7931: $87
    inc b                                         ; $7932: $04
    add hl, de                                    ; $7933: $19
    ld [hl-], a                                   ; $7934: $32
    rra                                           ; $7935: $1f
    ld d, a                                       ; $7936: $57
    rst $28                                       ; $7937: $ef
    db $10                                        ; $7938: $10
    ld bc, $a900                                  ; $7939: $01 $00 $a9
    ld [hl+], a                                   ; $793c: $22
    add hl, de                                    ; $793d: $19
    ld [hl-], a                                   ; $793e: $32
    ld e, a                                       ; $793f: $5f
    inc bc                                        ; $7940: $03
    ld [bc], a                                    ; $7941: $02
    nop                                           ; $7942: $00
    ld l, e                                       ; $7943: $6b
    ld [hl+], a                                   ; $7944: $22
    ld e, l                                       ; $7945: $5d
    ld [bc], a                                    ; $7946: $02
    sbc h                                         ; $7947: $9c
    ld b, d                                       ; $7948: $42
    ld c, $15                                     ; $7949: $0e $15
    rra                                           ; $794b: $1f
    ld d, a                                       ; $794c: $57
    sub $2d                                       ; $794d: $d6 $2d
    add hl, de                                    ; $794f: $19
    ld [hl-], a                                   ; $7950: $32
    ld bc, $1900                                  ; $7951: $01 $00 $19
    ld [hl-], a                                   ; $7954: $32
    ld d, b                                       ; $7955: $50
    dec e                                         ; $7956: $1d
    rra                                           ; $7957: $1f
    ld d, a                                       ; $7958: $57
    nop                                           ; $7959: $00
    nop                                           ; $795a: $00
    adc d                                         ; $795b: $8a
    ld h, $5f                                     ; $795c: $26 $5f
    inc bc                                        ; $795e: $03
    sub $5a                                       ; $795f: $d6 $5a
    ld bc, $eb00                                  ; $7961: $01 $00 $eb
    ld h, $5b                                     ; $7964: $26 $5b
    ld bc, $035f                                  ; $7966: $01 $5f $03
    ld bc, $1900                                  ; $7969: $01 $00 $19
    ld [hl-], a                                   ; $796c: $32
    rra                                           ; $796d: $1f
    ld d, a                                       ; $796e: $57
    xor h                                         ; $796f: $ac
    ld [$0000], sp                                ; $7970: $08 $00 $00
    add hl, de                                    ; $7973: $19
    ld [hl-], a                                   ; $7974: $32
    rra                                           ; $7975: $1f
    ld d, a                                       ; $7976: $57
    xor h                                         ; $7977: $ac
    ld [$0c64], sp                                ; $7978: $08 $64 $0c
    xor [hl]                                      ; $797b: $ae
    dec [hl]                                      ; $797c: $35
    ld e, a                                       ; $797d: $5f
    inc bc                                        ; $797e: $03
    sub $5a                                       ; $797f: $d6 $5a
    ld bc, $cc00                                  ; $7981: $01 $00 $cc
    ld a, [hl+]                                   ; $7984: $2a
    ld e, e                                       ; $7985: $5b
    ld bc, $035f                                  ; $7986: $01 $5f $03
    ld bc, $1900                                  ; $7989: $01 $00 $19
    ld [hl-], a                                   ; $798c: $32
    ld e, $57                                     ; $798d: $1e $57
    adc l                                         ; $798f: $8d
    ld sp, $0001                                  ; $7990: $31 $01 $00
    ld d, e                                       ; $7993: $53
    ld c, d                                       ; $7994: $4a
    rra                                           ; $7995: $1f
    ld d, a                                       ; $7996: $57
    add hl, de                                    ; $7997: $19
    ld [hl-], a                                   ; $7998: $32
    ld [hl+], a                                   ; $7999: $22
    inc b                                         ; $799a: $04
    or [hl]                                       ; $799b: $b6
    ld d, [hl]                                    ; $799c: $56
    ld e, a                                       ; $799d: $5f
    inc bc                                        ; $799e: $03
    add hl, hl                                    ; $799f: $29
    dec h                                         ; $79a0: $25
    ld bc, $5d00                                  ; $79a1: $01 $00 $5d
    ld [bc], a                                    ; $79a4: $02
    adc h                                         ; $79a5: $8c
    ld l, $3a                                     ; $79a6: $2e $3a
    ld h, a                                       ; $79a8: $67
    ld bc, $6b00                                  ; $79a9: $01 $00 $6b
    dec l                                         ; $79ac: $2d
    and [hl]                                      ; $79ad: $a6
    inc d                                         ; $79ae: $14
    rla                                           ; $79af: $17
    ld [hl], $01                                  ; $79b0: $36 $01
    nop                                           ; $79b2: $00
    add hl, de                                    ; $79b3: $19
    ld [hl-], a                                   ; $79b4: $32
    ret z                                         ; $79b5: $c8

    inc d                                         ; $79b6: $14
    ld h, e                                       ; $79b7: $63
    inc c                                         ; $79b8: $0c
    ld [hl+], a                                   ; $79b9: $22
    inc b                                         ; $79ba: $04
    ld [hl], h                                    ; $79bb: $74
    ld c, [hl]                                    ; $79bc: $4e
    ld e, a                                       ; $79bd: $5f
    inc bc                                        ; $79be: $03
    ld c, d                                       ; $79bf: $4a
    add hl, hl                                    ; $79c0: $29
    ld [bc], a                                    ; $79c1: $02
    nop                                           ; $79c2: $00
    ld e, l                                       ; $79c3: $5d
    ld [bc], a                                    ; $79c4: $02
    xor $35                                       ; $79c5: $ee $35
    ld e, d                                       ; $79c7: $5a
    ld l, e                                       ; $79c8: $6b
    ld [bc], a                                    ; $79c9: $02
    nop                                           ; $79ca: $00
    add hl, de                                    ; $79cb: $19
    ld [hl-], a                                   ; $79cc: $32
    rra                                           ; $79cd: $1f
    ld d, a                                       ; $79ce: $57
    add l                                         ; $79cf: $85
    db $10                                        ; $79d0: $10
    ld [bc], a                                    ; $79d1: $02
    nop                                           ; $79d2: $00
    add hl, de                                    ; $79d3: $19
    ld [hl-], a                                   ; $79d4: $32
    rra                                           ; $79d5: $1f
    ld d, a                                       ; $79d6: $57
    ld b, d                                       ; $79d7: $42
    ld [$0421], sp                                ; $79d8: $08 $21 $04
    ld sp, $5f46                                  ; $79db: $31 $46 $5f
    inc bc                                        ; $79de: $03
    add hl, bc                                    ; $79df: $09
    ld hl, $0002                                  ; $79e0: $21 $02 $00
    ld e, e                                       ; $79e3: $5b
    ld bc, $035f                                  ; $79e4: $01 $5f $03
    add hl, bc                                    ; $79e7: $09
    ld hl, $015b                                  ; $79e8: $21 $5b $01
    ld e, a                                       ; $79eb: $5f
    inc bc                                        ; $79ec: $03
    ld e, a                                       ; $79ed: $5f
    inc bc                                        ; $79ee: $03
    add hl, bc                                    ; $79ef: $09
    ld hl, $015b                                  ; $79f0: $21 $5b $01
    ld e, a                                       ; $79f3: $5f
    inc bc                                        ; $79f4: $03
    ld e, a                                       ; $79f5: $5f
    inc bc                                        ; $79f6: $03
    add hl, bc                                    ; $79f7: $09
    ld hl, $0002                                  ; $79f8: $21 $02 $00
    ld e, e                                       ; $79fb: $5b
    ld bc, $035f                                  ; $79fc: $01 $5f $03
    add hl, bc                                    ; $79ff: $09
    ld hl, $0002                                  ; $7a00: $21 $02 $00
    ld d, [hl]                                    ; $7a03: $56
    dec b                                         ; $7a04: $05
    ld e, a                                       ; $7a05: $5f
    inc bc                                        ; $7a06: $03
    jr z, jr_0d3_7a29                             ; $7a07: $28 $20

    jr z, jr_0d3_7a2b                             ; $7a09: $28 $20

    ld e, a                                       ; $7a0b: $5f
    inc bc                                        ; $7a0c: $03
    ld [hl], l                                    ; $7a0d: $75
    add hl, bc                                    ; $7a0e: $09
    jr z, @+$22                                   ; $7a0f: $28 $20

    jr z, jr_0d3_7a33                             ; $7a11: $28 $20

    sbc h                                         ; $7a13: $9c
    ld [hl], e                                    ; $7a14: $73
    ld e, a                                       ; $7a15: $5f
    inc bc                                        ; $7a16: $03
    ld c, d                                       ; $7a17: $4a
    add hl, hl                                    ; $7a18: $29
    ld [bc], a                                    ; $7a19: $02
    nop                                           ; $7a1a: $00
    ld e, a                                       ; $7a1b: $5f
    inc bc                                        ; $7a1c: $03
    ld [hl], l                                    ; $7a1d: $75
    add hl, bc                                    ; $7a1e: $09
    ld c, d                                       ; $7a1f: $4a
    add hl, hl                                    ; $7a20: $29
    ld [bc], a                                    ; $7a21: $02
    nop                                           ; $7a22: $00
    ld d, [hl]                                    ; $7a23: $56
    dec b                                         ; $7a24: $05
    inc e                                         ; $7a25: $1c
    ld [hl], e                                    ; $7a26: $73
    ld e, a                                       ; $7a27: $5f
    inc bc                                        ; $7a28: $03

jr_0d3_7a29:
    nop                                           ; $7a29: $00
    nop                                           ; $7a2a: $00

jr_0d3_7a2b:
    db $fd                                        ; $7a2b: $fd
    halt                                          ; $7a2c: $76
    xor $38                                       ; $7a2d: $ee $38
    ld b, [hl]                                    ; $7a2f: $46
    jr jr_0d3_7a32                                ; $7a30: $18 $00

jr_0d3_7a32:
    nop                                           ; $7a32: $00

jr_0d3_7a33:
    or c                                          ; $7a33: $b1
    ld b, l                                       ; $7a34: $45
    ld c, c                                       ; $7a35: $49
    dec h                                         ; $7a36: $25
    dec a                                         ; $7a37: $3d
    ld [hl], a                                    ; $7a38: $77
    dec b                                         ; $7a39: $05
    db $10                                        ; $7a3a: $10
    ld [hl], l                                    ; $7a3b: $75
    add hl, bc                                    ; $7a3c: $09
    rst $38                                       ; $7a3d: $ff
    ld a, a                                       ; $7a3e: $7f
    ld e, a                                       ; $7a3f: $5f
    inc bc                                        ; $7a40: $03
    ld [bc], a                                    ; $7a41: $02
    nop                                           ; $7a42: $00
    ld d, a                                       ; $7a43: $57
    dec b                                         ; $7a44: $05
    sbc $77                                       ; $7a45: $de $77
    ld e, a                                       ; $7a47: $5f
    inc bc                                        ; $7a48: $03
    nop                                           ; $7a49: $00
    nop                                           ; $7a4a: $00
    inc [hl]                                      ; $7a4b: $34
    ld d, c                                       ; $7a4c: $51
    rra                                           ; $7a4d: $1f
    ld a, a                                       ; $7a4e: $7f
    rlca                                          ; $7a4f: $07
    dec e                                         ; $7a50: $1d
    nop                                           ; $7a51: $00
    nop                                           ; $7a52: $00
    ld [hl], h                                    ; $7a53: $74
    ld d, [hl]                                    ; $7a54: $56
    ld a, [hl+]                                   ; $7a55: $2a
    add hl, hl                                    ; $7a56: $29
    rst $18                                       ; $7a57: $df
    ld a, a                                       ; $7a58: $7f
    dec b                                         ; $7a59: $05
    db $10                                        ; $7a5a: $10
    ld [hl], l                                    ; $7a5b: $75
    add hl, bc                                    ; $7a5c: $09
    ld [hl], a                                    ; $7a5d: $77
    ld e, [hl]                                    ; $7a5e: $5e
    ld e, a                                       ; $7a5f: $5f
    inc bc                                        ; $7a60: $03
    ld bc, $5d00                                  ; $7a61: $01 $00 $5d
    ld [bc], a                                    ; $7a64: $02
    call c, $2972                                 ; $7a65: $dc $72 $29
    inc h                                         ; $7a68: $24
    nop                                           ; $7a69: $00
    nop                                           ; $7a6a: $00
    db $ec                                        ; $7a6b: $ec
    jr nc, jr_0d3_7a8c                            ; $7a6c: $30 $1e

    ld a, e                                       ; $7a6e: $7b
    ld [$0024], sp                                ; $7a6f: $08 $24 $00
    nop                                           ; $7a72: $00
    adc [hl]                                      ; $7a73: $8e
    add hl, sp                                    ; $7a74: $39
    ld e, $7b                                     ; $7a75: $1e $7b
    inc b                                         ; $7a77: $04
    jr jr_0d3_7a7b                                ; $7a78: $18 $01

    nop                                           ; $7a7a: $00

jr_0d3_7a7b:
    sub l                                         ; $7a7b: $95
    add hl, bc                                    ; $7a7c: $09
    ld e, a                                       ; $7a7d: $5f
    inc bc                                        ; $7a7e: $03
    ld [$0120], sp                                ; $7a7f: $08 $20 $01
    nop                                           ; $7a82: $00
    ld e, l                                       ; $7a83: $5d
    ld [bc], a                                    ; $7a84: $02
    or c                                          ; $7a85: $b1
    ld b, l                                       ; $7a86: $45
    rst $38                                       ; $7a87: $ff
    ld a, [hl]                                    ; $7a88: $7e
    nop                                           ; $7a89: $00
    nop                                           ; $7a8a: $00
    db $d3                                        ; $7a8b: $d3

jr_0d3_7a8c:
    ld d, b                                       ; $7a8c: $50
    jr jr_0d3_7ac9                                ; $7a8d: $18 $3a

    add hl, bc                                    ; $7a8f: $09
    inc h                                         ; $7a90: $24
    nop                                           ; $7a91: $00
    nop                                           ; $7a92: $00
    ret nc                                        ; $7a93: $d0

    jr nc, jr_0d3_7acf                            ; $7a94: $30 $39

    ld a, [hl-]                                   ; $7a96: $3a
    ld a, [bc]                                    ; $7a97: $0a
    jr z, jr_0d3_7a9a                             ; $7a98: $28 $00

jr_0d3_7a9a:
    nop                                           ; $7a9a: $00
    or l                                          ; $7a9b: $b5
    dec c                                         ; $7a9c: $0d
    ld c, e                                       ; $7a9d: $4b
    inc l                                         ; $7a9e: $2c
    ld e, a                                       ; $7a9f: $5f
    inc bc                                        ; $7aa0: $03
    ld bc, $f500                                  ; $7aa1: $01 $00 $f5
    ld b, c                                       ; $7aa4: $41
    ld e, l                                       ; $7aa5: $5d
    ld [bc], a                                    ; $7aa6: $02
    dec hl                                        ; $7aa7: $2b
    dec l                                         ; $7aa8: $2d
    nop                                           ; $7aa9: $00
    nop                                           ; $7aaa: $00
    rst $30                                       ; $7aab: $f7
    ld sp, $3c0d                                  ; $7aac: $31 $0d $3c
    cp l                                          ; $7aaf: $bd
    ld c, [hl]                                    ; $7ab0: $4e
    nop                                           ; $7ab1: $00
    nop                                           ; $7ab2: $00
    ld [hl], l                                    ; $7ab3: $75
    add hl, sp                                    ; $7ab4: $39
    add hl, bc                                    ; $7ab5: $09
    inc l                                         ; $7ab6: $2c
    db $dd                                        ; $7ab7: $dd
    ld c, [hl]                                    ; $7ab8: $4e
    nop                                           ; $7ab9: $00
    nop                                           ; $7aba: $00
    push de                                       ; $7abb: $d5
    dec c                                         ; $7abc: $0d
    dec bc                                        ; $7abd: $0b
    jr nc, jr_0d3_7b1f                            ; $7abe: $30 $5f

    inc bc                                        ; $7ac0: $03
    ld [bc], a                                    ; $7ac1: $02
    nop                                           ; $7ac2: $00
    ld a, c                                       ; $7ac3: $79
    ld de, $340c                                  ; $7ac4: $11 $0c $34
    ld e, a                                       ; $7ac7: $5f
    inc bc                                        ; $7ac8: $03

jr_0d3_7ac9:
    nop                                           ; $7ac9: $00
    nop                                           ; $7aca: $00
    ld c, c                                       ; $7acb: $49
    ld a, c                                       ; $7acc: $79
    cp h                                          ; $7acd: $bc
    ld c, [hl]                                    ; $7ace: $4e

jr_0d3_7acf:
    ld c, e                                       ; $7acf: $4b
    inc a                                         ; $7ad0: $3c
    nop                                           ; $7ad1: $00
    nop                                           ; $7ad2: $00
    or l                                          ; $7ad3: $b5
    dec l                                         ; $7ad4: $2d
    ld a, [hl+]                                   ; $7ad5: $2a
    inc [hl]                                      ; $7ad6: $34
    cp l                                          ; $7ad7: $bd
    ld c, [hl]                                    ; $7ad8: $4e
    ld bc, $f600                                  ; $7ad9: $01 $00 $f6
    ld de, $2c0a                                  ; $7adc: $11 $0a $2c
    ld e, a                                       ; $7adf: $5f
    inc bc                                        ; $7ae0: $03
    ld [bc], a                                    ; $7ae1: $02
    nop                                           ; $7ae2: $00
    ret c                                         ; $7ae3: $d8

    dec c                                         ; $7ae4: $0d
    ld e, a                                       ; $7ae5: $5f
    inc bc                                        ; $7ae6: $03
    or [hl]                                       ; $7ae7: $b6
    ld b, l                                       ; $7ae8: $45
    and a                                         ; $7ae9: $a7
    jr z, jr_0d3_7b04                             ; $7aea: $28 $18

    ld a, [hl-]                                   ; $7aec: $3a
    ld c, c                                       ; $7aed: $49
    ld a, c                                       ; $7aee: $79
    rst $38                                       ; $7aef: $ff
    ld a, a                                       ; $7af0: $7f
    ld bc, $f708                                  ; $7af1: $01 $08 $f7
    ld sp, $300b                                  ; $7af4: $31 $0b $30
    cp l                                          ; $7af7: $bd
    ld c, [hl]                                    ; $7af8: $4e
    ld bc, $1600                                  ; $7af9: $01 $00 $16
    ld [de], a                                    ; $7afc: $12
    ld e, a                                       ; $7afd: $5f
    inc bc                                        ; $7afe: $03
    dec bc                                        ; $7aff: $0b
    jr nc, jr_0d3_7b03                            ; $7b00: $30 $01

    nop                                           ; $7b02: $00

jr_0d3_7b03:
    rla                                           ; $7b03: $17

Call_0d3_7b04:
jr_0d3_7b04:
    ld c, $5f                                     ; $7b04: $0e $5f
    inc bc                                        ; $7b06: $03
    adc c                                         ; $7b07: $89
    jr z, jr_0d3_7b0a                             ; $7b08: $28 $00

jr_0d3_7b0a:
    nop                                           ; $7b0a: $00
    sbc e                                         ; $7b0b: $9b
    ld c, [hl]                                    ; $7b0c: $4e
    cp a                                          ; $7b0d: $bf
    ld l, a                                       ; $7b0e: $6f
    dec l                                         ; $7b0f: $2d
    ld hl, $0400                                  ; $7b10: $21 $00 $04
    rst $30                                       ; $7b13: $f7

Jump_0d3_7b14:
    ld sp, $4ebd                                  ; $7b14: $31 $bd $4e
    ld c, h                                       ; $7b17: $4c
    jr nc, @+$04                                  ; $7b18: $30 $02

    nop                                           ; $7b1a: $00
    ld [hl], $16                                  ; $7b1b: $36 $16
    ld e, a                                       ; $7b1d: $5f
    inc bc                                        ; $7b1e: $03

jr_0d3_7b1f:
    ld d, [hl]                                    ; $7b1f: $56
    ld d, $02                                     ; $7b20: $16 $02
    nop                                           ; $7b22: $00
    halt                                          ; $7b23: $76
    ld d, $5f                                     ; $7b24: $16 $5f
    inc bc                                        ; $7b26: $03
    ld e, e                                       ; $7b27: $5b
    ld bc, $0000                                  ; $7b28: $01 $00 $00
    dec [hl]                                      ; $7b2b: $35
    ld a, [hl+]                                   ; $7b2c: $2a
    cp l                                          ; $7b2d: $bd
    ld c, [hl]                                    ; $7b2e: $4e
    ld a, [bc]                                    ; $7b2f: $0a
    add hl, de                                    ; $7b30: $19
    nop                                           ; $7b31: $00
    inc b                                         ; $7b32: $04
    rst $30                                       ; $7b33: $f7
    ld sp, $4ebd                                  ; $7b34: $31 $bd $4e
    xor d                                         ; $7b37: $aa
    inc e                                         ; $7b38: $1c
    ld [bc], a                                    ; $7b39: $02
    nop                                           ; $7b3a: $00
    halt                                          ; $7b3b: $76
    ld a, [de]                                    ; $7b3c: $1a
    ld e, a                                       ; $7b3d: $5f
    inc bc                                        ; $7b3e: $03
    xor d                                         ; $7b3f: $aa
    inc e                                         ; $7b40: $1c
    ld [bc], a                                    ; $7b41: $02
    nop                                           ; $7b42: $00
    ld e, e                                       ; $7b43: $5b
    ld bc, $1a96                                  ; $7b44: $01 $96 $1a
    ld e, a                                       ; $7b47: $5f
    inc bc                                        ; $7b48: $03
    nop                                           ; $7b49: $00
    nop                                           ; $7b4a: $00
    halt                                          ; $7b4b: $76
    ld e, $bd                                     ; $7b4c: $1e $bd
    ld c, [hl]                                    ; $7b4e: $4e
    inc l                                         ; $7b4f: $2c
    dec e                                         ; $7b50: $1d
    nop                                           ; $7b51: $00
    nop                                           ; $7b52: $00
    rst $30                                       ; $7b53: $f7
    ld sp, $4ebd                                  ; $7b54: $31 $bd $4e
    jp hl                                         ; $7b57: $e9


    jr jr_0d3_7b5a                                ; $7b58: $18 $00

jr_0d3_7b5a:
    nop                                           ; $7b5a: $00
    sub [hl]                                      ; $7b5b: $96
    ld a, [de]                                    ; $7b5c: $1a
    ld e, a                                       ; $7b5d: $5f
    inc bc                                        ; $7b5e: $03
    ld [bc], a                                    ; $7b5f: $02
    nop                                           ; $7b60: $00
    ld [bc], a                                    ; $7b61: $02
    nop                                           ; $7b62: $00
    ld e, e                                       ; $7b63: $5b
    ld bc, $1eb7                                  ; $7b64: $01 $b7 $1e
    ld e, a                                       ; $7b67: $5f
    inc bc                                        ; $7b68: $03

Call_0d3_7b69:
    ld bc, $b700                                  ; $7b69: $01 $00 $b7
    ld e, $bd                                     ; $7b6c: $1e $bd
    ld c, [hl]                                    ; $7b6e: $4e
    inc l                                         ; $7b6f: $2c
    dec e                                         ; $7b70: $1d
    nop                                           ; $7b71: $00
    nop                                           ; $7b72: $00
    sub e                                         ; $7b73: $93
    add hl, hl                                    ; $7b74: $29
    jp hl                                         ; $7b75: $e9


    jr @-$41                                      ; $7b76: $18 $bd

    ld c, [hl]                                    ; $7b78: $4e
    ld bc, $8c00                                  ; $7b79: $01 $00 $8c
    ld sp, $0efb                                  ; $7b7c: $31 $fb $0e
    ld [hl], e                                    ; $7b7f: $73
    ld c, [hl]                                    ; $7b80: $4e
    ld [bc], a                                    ; $7b81: $02
    nop                                           ; $7b82: $00
    ld e, e                                       ; $7b83: $5b
    ld bc, $1ed7                                  ; $7b84: $01 $d7 $1e
    ld e, a                                       ; $7b87: $5f
    inc bc                                        ; $7b88: $03
    nop                                           ; $7b89: $00
    nop                                           ; $7b8a: $00
    rst $20                                       ; $7b8b: $e7
    inc e                                         ; $7b8c: $1c
    xor l                                         ; $7b8d: $ad
    dec [hl]                                      ; $7b8e: $35
    ld [hl], c                                    ; $7b8f: $71
    dec h                                         ; $7b90: $25
    nop                                           ; $7b91: $00
    nop                                           ; $7b92: $00
    ld [hl], c                                    ; $7b93: $71
    dec h                                         ; $7b94: $25
    ld e, d                                       ; $7b95: $5a
    ld a, $c8                                     ; $7b96: $3e $c8
    jr jr_0d3_7b9a                                ; $7b98: $18 $00

jr_0d3_7b9a:
    nop                                           ; $7b9a: $00
    ld a, d                                       ; $7b9b: $7a
    ld l, a                                       ; $7b9c: $6f
    ld e, a                                       ; $7b9d: $5f
    inc bc                                        ; $7b9e: $03
    add hl, hl                                    ; $7b9f: $29
    dec h                                         ; $7ba0: $25
    ld bc, $5b00                                  ; $7ba1: $01 $00 $5b
    ld bc, $1ef7                                  ; $7ba4: $01 $f7 $1e
    ld e, a                                       ; $7ba7: $5f
    inc bc                                        ; $7ba8: $03
    nop                                           ; $7ba9: $00
    nop                                           ; $7baa: $00
    or d                                          ; $7bab: $b2
    dec l                                         ; $7bac: $2d
    jr c, @+$69                                   ; $7bad: $38 $67

    add $18                                       ; $7baf: $c6 $18
    nop                                           ; $7bb1: $00
    nop                                           ; $7bb2: $00
    rst $30                                       ; $7bb3: $f7
    dec [hl]                                      ; $7bb4: $35
    db $dd                                        ; $7bb5: $dd
    ld d, d                                       ; $7bb6: $52
    rst $20                                       ; $7bb7: $e7
    inc e                                         ; $7bb8: $1c
    nop                                           ; $7bb9: $00
    nop                                           ; $7bba: $00
    rla                                           ; $7bbb: $17
    ld h, e                                       ; $7bbc: $63
    ld e, a                                       ; $7bbd: $5f
    inc bc                                        ; $7bbe: $03
    ld [$0221], sp                                ; $7bbf: $08 $21 $02
    nop                                           ; $7bc2: $00
    ld e, e                                       ; $7bc3: $5b
    ld bc, $5ad6                                  ; $7bc4: $01 $d6 $5a
    add hl, de                                    ; $7bc7: $19
    rla                                           ; $7bc8: $17
    nop                                           ; $7bc9: $00
    nop                                           ; $7bca: $00
    adc a                                         ; $7bcb: $8f
    dec l                                         ; $7bcc: $2d
    sub $5a                                       ; $7bcd: $d6 $5a
    rlca                                          ; $7bcf: $07
    ld hl, $0000                                  ; $7bd0: $21 $00 $00
    adc a                                         ; $7bd3: $8f
    ld sp, $6317                                  ; $7bd4: $31 $17 $63
    rlca                                          ; $7bd7: $07
    ld hl, $0842                                  ; $7bd8: $21 $42 $08
    ld a, d                                       ; $7bdb: $7a
    ld l, a                                       ; $7bdc: $6f
    ld e, a                                       ; $7bdd: $5f
    inc bc                                        ; $7bde: $03
    xor l                                         ; $7bdf: $ad
    dec [hl]                                      ; $7be0: $35
    ld [bc], a                                    ; $7be1: $02
    nop                                           ; $7be2: $00
    ld e, e                                       ; $7be3: $5b
    ld bc, $035f                                  ; $7be4: $01 $5f $03
    xor l                                         ; $7be7: $ad
    dec [hl]                                      ; $7be8: $35
    ld e, e                                       ; $7be9: $5b
    ld bc, $035f                                  ; $7bea: $01 $5f $03
    ld e, a                                       ; $7bed: $5f
    inc bc                                        ; $7bee: $03
    xor l                                         ; $7bef: $ad
    dec [hl]                                      ; $7bf0: $35
    ld e, e                                       ; $7bf1: $5b
    ld bc, $035f                                  ; $7bf2: $01 $5f $03
    ld e, a                                       ; $7bf5: $5f
    inc bc                                        ; $7bf6: $03
    xor l                                         ; $7bf7: $ad
    dec [hl]                                      ; $7bf8: $35
    ld [bc], a                                    ; $7bf9: $02
    nop                                           ; $7bfa: $00
    ld e, e                                       ; $7bfb: $5b
    ld bc, $035f                                  ; $7bfc: $01 $5f $03
    xor l                                         ; $7bff: $ad
    dec [hl]                                      ; $7c00: $35
    ld [bc], a                                    ; $7c01: $02
    nop                                           ; $7c02: $00
    ld e, e                                       ; $7c03: $5b
    ld bc, $15a8                                  ; $7c04: $01 $a8 $15
    ld e, a                                       ; $7c07: $5f
    inc bc                                        ; $7c08: $03
    ld bc, $5f04                                  ; $7c09: $01 $04 $5f
    inc bc                                        ; $7c0c: $03
    ld a, [bc]                                    ; $7c0d: $0a
    inc l                                         ; $7c0e: $2c
    dec c                                         ; $7c0f: $0d
    ld sp, $0401                                  ; $7c10: $31 $01 $04
    ld e, a                                       ; $7c13: $5f
    inc bc                                        ; $7c14: $03
    call z, $a830                                 ; $7c15: $cc $30 $a8
    dec d                                         ; $7c18: $15
    ld [bc], a                                    ; $7c19: $02
    nop                                           ; $7c1a: $00
    ld e, a                                       ; $7c1b: $5f
    inc bc                                        ; $7c1c: $03
    xor b                                         ; $7c1d: $a8
    dec d                                         ; $7c1e: $15
    xor b                                         ; $7c1f: $a8
    dec d                                         ; $7c20: $15
    ld [bc], a                                    ; $7c21: $02
    nop                                           ; $7c22: $00
    xor b                                         ; $7c23: $a8
    dec d                                         ; $7c24: $15
    ld e, e                                       ; $7c25: $5b
    ld bc, $035f                                  ; $7c26: $01 $5f $03
    nop                                           ; $7c29: $00
    nop                                           ; $7c2a: $00
    sub [hl]                                      ; $7c2b: $96
    ld e, c                                       ; $7c2c: $59
    jr z, @+$26                                   ; $7c2d: $28 $24

    ld h, e                                       ; $7c2f: $63
    inc c                                         ; $7c30: $0c
    nop                                           ; $7c31: $00
    nop                                           ; $7c32: $00
    dec c                                         ; $7c33: $0d
    dec [hl]                                      ; $7c34: $35
    adc c                                         ; $7c35: $89
    inc h                                         ; $7c36: $24
    sub [hl]                                      ; $7c37: $96
    ld e, c                                       ; $7c38: $59
    ld [bc], a                                    ; $7c39: $02
    nop                                           ; $7c3a: $00
    ld e, a                                       ; $7c3b: $5f
    inc bc                                        ; $7c3c: $03
    xor b                                         ; $7c3d: $a8
    dec d                                         ; $7c3e: $15
    sub [hl]                                      ; $7c3f: $96
    ld e, c                                       ; $7c40: $59
    ld bc, $5d00                                  ; $7c41: $01 $00 $5d
    ld [bc], a                                    ; $7c44: $02
    xor b                                         ; $7c45: $a8
    dec d                                         ; $7c46: $15
    ld a, [bc]                                    ; $7c47: $0a
    inc l                                         ; $7c48: $2c
    nop                                           ; $7c49: $00
    nop                                           ; $7c4a: $00
    dec hl                                        ; $7c4b: $2b
    dec l                                         ; $7c4c: $2d
    push bc                                       ; $7c4d: $c5
    inc d                                         ; $7c4e: $14
    sub [hl]                                      ; $7c4f: $96
    ld e, c                                       ; $7c50: $59
    ld bc, $0d04                                  ; $7c51: $01 $04 $0d
    dec [hl]                                      ; $7c54: $35
    add hl, hl                                    ; $7c55: $29
    inc h                                         ; $7c56: $24
    sub [hl]                                      ; $7c57: $96
    ld e, c                                       ; $7c58: $59
    ld [bc], a                                    ; $7c59: $02
    nop                                           ; $7c5a: $00
    ld e, a                                       ; $7c5b: $5f
    inc bc                                        ; $7c5c: $03
    xor b                                         ; $7c5d: $a8
    dec d                                         ; $7c5e: $15
    sub [hl]                                      ; $7c5f: $96
    ld e, c                                       ; $7c60: $59
    ld bc, $5b00                                  ; $7c61: $01 $00 $5b
    ld bc, $2489                                  ; $7c64: $01 $89 $24
    ld e, a                                       ; $7c67: $5f
    inc bc                                        ; $7c68: $03
    nop                                           ; $7c69: $00
    nop                                           ; $7c6a: $00
    ld h, h                                       ; $7c6b: $64
    db $10                                        ; $7c6c: $10
    ld b, $20                                     ; $7c6d: $06 $20
    ld [$0020], sp                                ; $7c6f: $08 $20 $00
    inc b                                         ; $7c72: $04
    jr c, jr_0d3_7caf                             ; $7c73: $38 $3a

    ld l, b                                       ; $7c75: $68
    add hl, de                                    ; $7c76: $19
    inc bc                                        ; $7c77: $03
    inc c                                         ; $7c78: $0c
    ld [bc], a                                    ; $7c79: $02
    nop                                           ; $7c7a: $00
    ld e, a                                       ; $7c7b: $5f
    inc bc                                        ; $7c7c: $03
    xor b                                         ; $7c7d: $a8
    dec d                                         ; $7c7e: $15
    xor b                                         ; $7c7f: $a8
    add hl, de                                    ; $7c80: $19
    ld bc, $5100                                  ; $7c81: $01 $00 $51
    ld b, l                                       ; $7c84: $45
    ld e, l                                       ; $7c85: $5d
    ld [bc], a                                    ; $7c86: $02
    ld b, a                                       ; $7c87: $47
    inc e                                         ; $7c88: $1c
    nop                                           ; $7c89: $00
    inc b                                         ; $7c8a: $04
    dec c                                         ; $7c8b: $0d
    dec [hl]                                      ; $7c8c: $35
    sub [hl]                                      ; $7c8d: $96
    ld e, c                                       ; $7c8e: $59
    rla                                           ; $7c8f: $17
    ld [hl-], a                                   ; $7c90: $32
    ld b, h                                       ; $7c91: $44
    inc c                                         ; $7c92: $0c
    ld e, c                                       ; $7c93: $59
    ld a, $3d                                     ; $7c94: $3e $3d
    ld d, a                                       ; $7c96: $57
    ld c, $21                                     ; $7c97: $0e $21
    ld [bc], a                                    ; $7c99: $02
    nop                                           ; $7c9a: $00
    ld e, a                                       ; $7c9b: $5f
    inc bc                                        ; $7c9c: $03
    xor b                                         ; $7c9d: $a8
    add hl, de                                    ; $7c9e: $19
    xor c                                         ; $7c9f: $a9
    add hl, de                                    ; $7ca0: $19
    ld [bc], a                                    ; $7ca1: $02
    nop                                           ; $7ca2: $00
    ld [hl], e                                    ; $7ca3: $73
    ld c, l                                       ; $7ca4: $4d
    ld e, e                                       ; $7ca5: $5b
    ld bc, $035f                                  ; $7ca6: $01 $5f $03
    ld [hl+], a                                   ; $7ca9: $22
    db $10                                        ; $7caa: $10
    or $35                                        ; $7cab: $f6 $35
    cp e                                          ; $7cad: $bb
    ld c, [hl]                                    ; $7cae: $4e

jr_0d3_7caf:
    ld [$862c], a                                 ; $7caf: $ea $2c $86
    ld [$52fd], sp                                ; $7cb2: $08 $fd $52
    rst $38                                       ; $7cb5: $ff
    ld a, a                                       ; $7cb6: $7f
    ld c, $21                                     ; $7cb7: $0e $21
    ld [bc], a                                    ; $7cb9: $02
    nop                                           ; $7cba: $00
    ld e, a                                       ; $7cbb: $5f
    inc bc                                        ; $7cbc: $03
    ret                                           ; $7cbd: $c9


    add hl, de                                    ; $7cbe: $19
    ret                                           ; $7cbf: $c9


    dec e                                         ; $7cc0: $1d
    ld bc, $ec00                                  ; $7cc1: $01 $00 $ec
    jr nc, jr_0d3_7d23                            ; $7cc4: $30 $5d

    ld [bc], a                                    ; $7cc6: $02
    sub [hl]                                      ; $7cc7: $96
    ld e, c                                       ; $7cc8: $59
    ld bc, $1708                                  ; $7cc9: $01 $08 $17
    ld [hl-], a                                   ; $7ccc: $32
    call c, $bf4e                                 ; $7ccd: $dc $4e $bf
    ld h, a                                       ; $7cd0: $67
    xor b                                         ; $7cd1: $a8
    inc d                                         ; $7cd2: $14
    ld e, b                                       ; $7cd3: $58
    ld a, $00                                     ; $7cd4: $3e $00
    ld c, h                                       ; $7cd6: $4c
    dec e                                         ; $7cd7: $1d
    ld d, a                                       ; $7cd8: $57
    ld [bc], a                                    ; $7cd9: $02
    nop                                           ; $7cda: $00
    ld e, a                                       ; $7cdb: $5f
    inc bc                                        ; $7cdc: $03
    jp z, $861d                                   ; $7cdd: $ca $1d $86

    ld [$0001], sp                                ; $7ce0: $08 $01 $00
    ld e, e                                       ; $7ce3: $5b
    ld bc, $035f                                  ; $7ce4: $01 $5f $03
    dec h                                         ; $7ce7: $25
    inc d                                         ; $7ce8: $14
    jr nz, jr_0d3_7d47                            ; $7ce9: $20 $5c

    rla                                           ; $7ceb: $17
    ld [hl-], a                                   ; $7cec: $32
    xor d                                         ; $7ced: $aa
    jr jr_0d3_7caf                                ; $7cee: $18 $bf

    ld h, a                                       ; $7cf0: $67
    inc hl                                        ; $7cf1: $23
    inc b                                         ; $7cf2: $04
    db $fd                                        ; $7cf3: $fd
    ld d, d                                       ; $7cf4: $52
    jr nz, @+$5e                                  ; $7cf5: $20 $5c

    rst $18                                       ; $7cf7: $df

jr_0d3_7cf8:
    ld [hl], e                                    ; $7cf8: $73
    ld b, h                                       ; $7cf9: $44
    inc b                                         ; $7cfa: $04
    cp e                                          ; $7cfb: $bb
    ld c, [hl]                                    ; $7cfc: $4e
    db $eb                                        ; $7cfd: $eb
    ld hl, $035f                                  ; $7cfe: $21 $5f $03
    ld bc, $5b00                                  ; $7d01: $01 $00 $5b
    ld bc, $340c                                  ; $7d04: $01 $0c $34
    ld e, a                                       ; $7d07: $5f
    inc bc                                        ; $7d08: $03
    ld h, l                                       ; $7d09: $65
    inc c                                         ; $7d0a: $0c
    rla                                           ; $7d0b: $17
    ld [hl-], a                                   ; $7d0c: $32
    rst $38                                       ; $7d0d: $ff
    ld a, a                                       ; $7d0e: $7f
    jr nz, jr_0d3_7d6d                            ; $7d0f: $20 $5c

    inc hl                                        ; $7d11: $23
    inc b                                         ; $7d12: $04
    rla                                           ; $7d13: $17
    ld [hl-], a                                   ; $7d14: $32
    nop                                           ; $7d15: $00
    inc l                                         ; $7d16: $2c
    call c, Call_0d3_444e                         ; $7d17: $dc $4e $44
    inc b                                         ; $7d1a: $04
    db $fd                                        ; $7d1b: $fd
    ld d, d                                       ; $7d1c: $52
    inc c                                         ; $7d1d: $0c
    ld h, $5f                                     ; $7d1e: $26 $5f
    inc bc                                        ; $7d20: $03
    ld [bc], a                                    ; $7d21: $02
    nop                                           ; $7d22: $00

jr_0d3_7d23:
    ld e, l                                       ; $7d23: $5d
    ld [bc], a                                    ; $7d24: $02
    db $10                                        ; $7d25: $10
    ld a, [hl+]                                   ; $7d26: $2a
    inc e                                         ; $7d27: $1c
    ld d, a                                       ; $7d28: $57
    ld [hl+], a                                   ; $7d29: $22
    inc b                                         ; $7d2a: $04
    rla                                           ; $7d2b: $17
    ld [hl-], a                                   ; $7d2c: $32
    cpl                                           ; $7d2d: $2f
    inc a                                         ; $7d2e: $3c
    call c, $fd4e                                 ; $7d2f: $dc $4e $fd
    ld d, d                                       ; $7d32: $52
    rla                                           ; $7d33: $17
    ld [hl-], a                                   ; $7d34: $32
    cpl                                           ; $7d35: $2f
    inc a                                         ; $7d36: $3c
    call c, $264e                                 ; $7d37: $dc $4e $26
    db $10                                        ; $7d3a: $10
    ld c, $2e                                     ; $7d3b: $0e $2e
    db $fd                                        ; $7d3d: $fd
    ld d, d                                       ; $7d3e: $52
    ld e, a                                       ; $7d3f: $5f
    inc bc                                        ; $7d40: $03
    ld [bc], a                                    ; $7d41: $02
    nop                                           ; $7d42: $00
    ld c, a                                       ; $7d43: $4f
    ld l, $5d                                     ; $7d44: $2e $5d
    ld [bc], a                                    ; $7d46: $02

jr_0d3_7d47:
    ld a, [bc]                                    ; $7d47: $0a
    inc l                                         ; $7d48: $2c
    ld b, e                                       ; $7d49: $43
    ld [$3217], sp                                ; $7d4a: $08 $17 $32
    sbc d                                         ; $7d4d: $9a
    ld c, d                                       ; $7d4e: $4a
    cpl                                           ; $7d4f: $2f
    inc a                                         ; $7d50: $3c
    add [hl]                                      ; $7d51: $86
    ld [$52fd], sp                                ; $7d52: $08 $fd $52
    sbc d                                         ; $7d55: $9a
    ld c, d                                       ; $7d56: $4a
    cpl                                           ; $7d57: $2f
    inc a                                         ; $7d58: $3c
    ld [hl+], a                                   ; $7d59: $22
    nop                                           ; $7d5a: $00
    ld [hl], $4a                                  ; $7d5b: $36 $4a
    ld e, a                                       ; $7d5d: $5f
    inc bc                                        ; $7d5e: $03
    ld a, [bc]                                    ; $7d5f: $0a
    inc l                                         ; $7d60: $2c
    ld bc, $3000                                  ; $7d61: $01 $00 $30
    ld [hl], $5d                                  ; $7d64: $36 $5d
    ld [bc], a                                    ; $7d66: $02
    ld a, [bc]                                    ; $7d67: $0a
    inc l                                         ; $7d68: $2c
    ld h, l                                       ; $7d69: $65
    inc b                                         ; $7d6a: $04
    rla                                           ; $7d6b: $17
    ld [hl-], a                                   ; $7d6c: $32

jr_0d3_7d6d:
    jr jr_0d3_7dc1                                ; $7d6d: $18 $52

    ld b, [hl]                                    ; $7d6f: $46
    jr z, jr_0d3_7cf8                             ; $7d70: $28 $86

    ld [$4a9a], sp                                ; $7d72: $08 $9a $4a
    db $fd                                        ; $7d75: $fd
    ld d, d                                       ; $7d76: $52
    ld b, [hl]                                    ; $7d77: $46
    jr z, jr_0d3_7d7c                             ; $7d78: $28 $02

    nop                                           ; $7d7a: $00
    cpl                                           ; $7d7b: $2f

jr_0d3_7d7c:
    ld [hl-], a                                   ; $7d7c: $32
    ld e, a                                       ; $7d7d: $5f
    inc bc                                        ; $7d7e: $03
    ld l, h                                       ; $7d7f: $6c
    jr nc, jr_0d3_7d84                            ; $7d80: $30 $02

    nop                                           ; $7d82: $00
    ld d, b                                       ; $7d83: $50

jr_0d3_7d84:
    ld [hl], $5d                                  ; $7d84: $36 $5d
    ld [bc], a                                    ; $7d86: $02
    ld a, [bc]                                    ; $7d87: $0a
    inc l                                         ; $7d88: $2c
    nop                                           ; $7d89: $00
    inc b                                         ; $7d8a: $04
    dec c                                         ; $7d8b: $0d
    dec [hl]                                      ; $7d8c: $35
    rst $30                                       ; $7d8d: $f7
    add hl, sp                                    ; $7d8e: $39
    add [hl]                                      ; $7d8f: $86
    ld [$0886], sp                                ; $7d90: $08 $86 $08
    rst $30                                       ; $7d93: $f7
    ld sp, $2c0a                                  ; $7d94: $31 $0a $2c
    rla                                           ; $7d97: $17
    ld [hl-], a                                   ; $7d98: $32
    nop                                           ; $7d99: $00
    nop                                           ; $7d9a: $00
    ld a, [c]                                     ; $7d9b: $f2
    ld b, l                                       ; $7d9c: $45
    ld c, d                                       ; $7d9d: $4a
    inc l                                         ; $7d9e: $2c
    ld e, a                                       ; $7d9f: $5f
    inc bc                                        ; $7da0: $03
    ld [bc], a                                    ; $7da1: $02
    nop                                           ; $7da2: $00
    ld [hl], c                                    ; $7da3: $71
    ld [hl], $5d                                  ; $7da4: $36 $5d
    ld [bc], a                                    ; $7da6: $02
    ld a, [hl+]                                   ; $7da7: $2a
    jr z, jr_0d3_7dcc                             ; $7da8: $28 $22

    inc b                                         ; $7daa: $04
    dec bc                                        ; $7dab: $0b
    dec l                                         ; $7dac: $2d
    add hl, bc                                    ; $7dad: $09
    jr z, @+$55                                   ; $7dae: $28 $53

    ld [hl-], a                                   ; $7db0: $32
    ld b, e                                       ; $7db1: $43
    inc b                                         ; $7db2: $04
    rst $30                                       ; $7db3: $f7
    ld sp, $4a9a                                  ; $7db4: $31 $9a $4a
    db $fd                                        ; $7db7: $fd
    ld d, d                                       ; $7db8: $52
    ld hl, $7004                                  ; $7db9: $21 $04 $70
    ld [hl], $5f                                  ; $7dbc: $36 $5f
    inc bc                                        ; $7dbe: $03
    jr jr_0d3_7e24                                ; $7dbf: $18 $63

jr_0d3_7dc1:
    ld [bc], a                                    ; $7dc1: $02
    nop                                           ; $7dc2: $00
    or c                                          ; $7dc3: $b1
    ld [hl], $5d                                  ; $7dc4: $36 $5d
    ld [bc], a                                    ; $7dc6: $02
    dec bc                                        ; $7dc7: $0b
    jr nc, @+$23                                  ; $7dc8: $30 $21

    nop                                           ; $7dca: $00
    or c                                          ; $7dcb: $b1

jr_0d3_7dcc:
    ld [hl], $6b                                  ; $7dcc: $36 $6b
    inc l                                         ; $7dce: $2c
    jr jr_0d3_7e34                                ; $7dcf: $18 $63

    nop                                           ; $7dd1: $00
    nop                                           ; $7dd2: $00
    rst $30                                       ; $7dd3: $f7
    ld sp, $4abb                                  ; $7dd4: $31 $bb $4a
    add [hl]                                      ; $7dd7: $86
    ld [$0001], sp                                ; $7dd8: $08 $01 $00
    ld [hl], e                                    ; $7ddb: $73
    ld c, [hl]                                    ; $7ddc: $4e
    ld e, a                                       ; $7ddd: $5f
    inc bc                                        ; $7dde: $03
    add hl, hl                                    ; $7ddf: $29
    add hl, hl                                    ; $7de0: $29
    ld [bc], a                                    ; $7de1: $02
    nop                                           ; $7de2: $00
    ld e, e                                       ; $7de3: $5b
    ld bc, $035f                                  ; $7de4: $01 $5f $03
    add hl, hl                                    ; $7de7: $29
    add hl, hl                                    ; $7de8: $29
    ld e, e                                       ; $7de9: $5b
    ld bc, $035f                                  ; $7dea: $01 $5f $03
    ld e, a                                       ; $7ded: $5f
    inc bc                                        ; $7dee: $03
    add hl, hl                                    ; $7def: $29
    add hl, hl                                    ; $7df0: $29
    ld e, e                                       ; $7df1: $5b
    ld bc, $035f                                  ; $7df2: $01 $5f $03
    ld e, a                                       ; $7df5: $5f
    inc bc                                        ; $7df6: $03
    add hl, hl                                    ; $7df7: $29
    add hl, hl                                    ; $7df8: $29
    ld [bc], a                                    ; $7df9: $02
    nop                                           ; $7dfa: $00
    ld e, e                                       ; $7dfb: $5b
    ld bc, $035f                                  ; $7dfc: $01 $5f $03
    add hl, hl                                    ; $7dff: $29
    add hl, hl                                    ; $7e00: $29
    nop                                           ; $7e01: $00
    jr nz, @+$01                                  ; $7e02: $20 $ff

    ld a, a                                       ; $7e04: $7f
    ld d, d                                       ; $7e05: $52
    ld d, [hl]                                    ; $7e06: $56
    add $38                                       ; $7e07: $c6 $38
    nop                                           ; $7e09: $00
    jr nz, @+$01                                  ; $7e0a: $20 $ff

    ld a, a                                       ; $7e0c: $7f
    xor $41                                       ; $7e0d: $ee $41
    rst $18                                       ; $7e0f: $df
    ld bc, $001f                                  ; $7e10: $01 $1f $00
    rra                                           ; $7e13: $1f
    nop                                           ; $7e14: $00
    rra                                           ; $7e15: $1f
    nop                                           ; $7e16: $00
    rra                                           ; $7e17: $1f
    nop                                           ; $7e18: $00
    rra                                           ; $7e19: $1f
    nop                                           ; $7e1a: $00
    rra                                           ; $7e1b: $1f
    nop                                           ; $7e1c: $00
    rra                                           ; $7e1d: $1f
    nop                                           ; $7e1e: $00
    rra                                           ; $7e1f: $1f
    nop                                           ; $7e20: $00
    rra                                           ; $7e21: $1f
    nop                                           ; $7e22: $00
    rra                                           ; $7e23: $1f

jr_0d3_7e24:
    nop                                           ; $7e24: $00
    rra                                           ; $7e25: $1f
    nop                                           ; $7e26: $00
    rra                                           ; $7e27: $1f
    nop                                           ; $7e28: $00
    rra                                           ; $7e29: $1f
    nop                                           ; $7e2a: $00
    rra                                           ; $7e2b: $1f
    nop                                           ; $7e2c: $00
    rra                                           ; $7e2d: $1f
    nop                                           ; $7e2e: $00
    rra                                           ; $7e2f: $1f
    nop                                           ; $7e30: $00
    rra                                           ; $7e31: $1f
    nop                                           ; $7e32: $00
    rra                                           ; $7e33: $1f

jr_0d3_7e34:
    nop                                           ; $7e34: $00
    rra                                           ; $7e35: $1f
    nop                                           ; $7e36: $00
    rra                                           ; $7e37: $1f
    nop                                           ; $7e38: $00
    ld hl, $ff04                                  ; $7e39: $21 $04 $ff
    ld a, a                                       ; $7e3c: $7f
    rra                                           ; $7e3d: $1f
    nop                                           ; $7e3e: $00
    rra                                           ; $7e3f: $1f
    nop                                           ; $7e40: $00
    nop                                           ; $7e41: $00
    jr nz, @+$01                                  ; $7e42: $20 $ff

    ld a, a                                       ; $7e44: $7f
    ld d, d                                       ; $7e45: $52
    ld d, [hl]                                    ; $7e46: $56
    add $38                                       ; $7e47: $c6 $38
    nop                                           ; $7e49: $00
    jr nz, @+$01                                  ; $7e4a: $20 $ff

    ld a, a                                       ; $7e4c: $7f
    xor $41                                       ; $7e4d: $ee $41
    inc [hl]                                      ; $7e4f: $34
    dec b                                         ; $7e50: $05
    rra                                           ; $7e51: $1f
    nop                                           ; $7e52: $00
    rra                                           ; $7e53: $1f
    nop                                           ; $7e54: $00
    rra                                           ; $7e55: $1f
    nop                                           ; $7e56: $00
    rra                                           ; $7e57: $1f
    nop                                           ; $7e58: $00
    rra                                           ; $7e59: $1f
    nop                                           ; $7e5a: $00
    rra                                           ; $7e5b: $1f
    nop                                           ; $7e5c: $00
    rra                                           ; $7e5d: $1f
    nop                                           ; $7e5e: $00
    rra                                           ; $7e5f: $1f
    nop                                           ; $7e60: $00
    rra                                           ; $7e61: $1f
    nop                                           ; $7e62: $00
    rra                                           ; $7e63: $1f
    nop                                           ; $7e64: $00
    rra                                           ; $7e65: $1f
    nop                                           ; $7e66: $00
    rra                                           ; $7e67: $1f
    nop                                           ; $7e68: $00
    rra                                           ; $7e69: $1f
    nop                                           ; $7e6a: $00
    rra                                           ; $7e6b: $1f
    nop                                           ; $7e6c: $00
    rra                                           ; $7e6d: $1f
    nop                                           ; $7e6e: $00
    rra                                           ; $7e6f: $1f
    nop                                           ; $7e70: $00
    rra                                           ; $7e71: $1f
    nop                                           ; $7e72: $00
    rra                                           ; $7e73: $1f
    nop                                           ; $7e74: $00
    rra                                           ; $7e75: $1f
    nop                                           ; $7e76: $00
    rra                                           ; $7e77: $1f
    nop                                           ; $7e78: $00
    ld hl, $ff04                                  ; $7e79: $21 $04 $ff
    ld a, a                                       ; $7e7c: $7f
    rra                                           ; $7e7d: $1f
    nop                                           ; $7e7e: $00
    rra                                           ; $7e7f: $1f
    nop                                           ; $7e80: $00
    nop                                           ; $7e81: $00
    jr nz, @+$01                                  ; $7e82: $20 $ff

    ld a, a                                       ; $7e84: $7f
    ld d, d                                       ; $7e85: $52
    ld d, [hl]                                    ; $7e86: $56
    add $38                                       ; $7e87: $c6 $38
    nop                                           ; $7e89: $00
    jr nz, @+$01                                  ; $7e8a: $20 $ff

    ld a, a                                       ; $7e8c: $7f
    xor $41                                       ; $7e8d: $ee $41
    call nc, Call_000_1f50                        ; $7e8f: $d4 $50 $1f
    nop                                           ; $7e92: $00
    rra                                           ; $7e93: $1f
    nop                                           ; $7e94: $00
    rra                                           ; $7e95: $1f
    nop                                           ; $7e96: $00
    rra                                           ; $7e97: $1f
    nop                                           ; $7e98: $00
    rra                                           ; $7e99: $1f
    nop                                           ; $7e9a: $00
    rra                                           ; $7e9b: $1f
    nop                                           ; $7e9c: $00
    rra                                           ; $7e9d: $1f
    nop                                           ; $7e9e: $00
    rra                                           ; $7e9f: $1f
    nop                                           ; $7ea0: $00
    rra                                           ; $7ea1: $1f
    nop                                           ; $7ea2: $00
    rra                                           ; $7ea3: $1f
    nop                                           ; $7ea4: $00
    rra                                           ; $7ea5: $1f
    nop                                           ; $7ea6: $00
    rra                                           ; $7ea7: $1f
    nop                                           ; $7ea8: $00
    rra                                           ; $7ea9: $1f
    nop                                           ; $7eaa: $00
    rra                                           ; $7eab: $1f
    nop                                           ; $7eac: $00
    rra                                           ; $7ead: $1f
    nop                                           ; $7eae: $00
    rra                                           ; $7eaf: $1f
    nop                                           ; $7eb0: $00
    rra                                           ; $7eb1: $1f
    nop                                           ; $7eb2: $00
    rra                                           ; $7eb3: $1f
    nop                                           ; $7eb4: $00
    rra                                           ; $7eb5: $1f
    nop                                           ; $7eb6: $00
    rra                                           ; $7eb7: $1f
    nop                                           ; $7eb8: $00
    ld hl, $ff04                                  ; $7eb9: $21 $04 $ff
    ld a, a                                       ; $7ebc: $7f
    rra                                           ; $7ebd: $1f
    nop                                           ; $7ebe: $00
    rra                                           ; $7ebf: $1f
    nop                                           ; $7ec0: $00
    nop                                           ; $7ec1: $00
    jr nz, @+$01                                  ; $7ec2: $20 $ff

    ld a, a                                       ; $7ec4: $7f
    ld d, d                                       ; $7ec5: $52
    ld d, [hl]                                    ; $7ec6: $56
    add $38                                       ; $7ec7: $c6 $38
    nop                                           ; $7ec9: $00
    jr nz, @+$01                                  ; $7eca: $20 $ff

    ld a, a                                       ; $7ecc: $7f
    xor $41                                       ; $7ecd: $ee $41
    adc h                                         ; $7ecf: $8c
    ld sp, $001f                                  ; $7ed0: $31 $1f $00
    rra                                           ; $7ed3: $1f
    nop                                           ; $7ed4: $00
    rra                                           ; $7ed5: $1f
    nop                                           ; $7ed6: $00
    rra                                           ; $7ed7: $1f
    nop                                           ; $7ed8: $00
    rra                                           ; $7ed9: $1f
    nop                                           ; $7eda: $00
    rra                                           ; $7edb: $1f
    nop                                           ; $7edc: $00
    rra                                           ; $7edd: $1f
    nop                                           ; $7ede: $00
    rra                                           ; $7edf: $1f
    nop                                           ; $7ee0: $00
    rra                                           ; $7ee1: $1f
    nop                                           ; $7ee2: $00
    rra                                           ; $7ee3: $1f
    nop                                           ; $7ee4: $00
    rra                                           ; $7ee5: $1f
    nop                                           ; $7ee6: $00
    rra                                           ; $7ee7: $1f
    nop                                           ; $7ee8: $00
    rra                                           ; $7ee9: $1f
    nop                                           ; $7eea: $00
    rra                                           ; $7eeb: $1f
    nop                                           ; $7eec: $00
    rra                                           ; $7eed: $1f
    nop                                           ; $7eee: $00
    rra                                           ; $7eef: $1f
    nop                                           ; $7ef0: $00
    rra                                           ; $7ef1: $1f
    nop                                           ; $7ef2: $00
    rra                                           ; $7ef3: $1f
    nop                                           ; $7ef4: $00
    rra                                           ; $7ef5: $1f
    nop                                           ; $7ef6: $00
    rra                                           ; $7ef7: $1f
    nop                                           ; $7ef8: $00
    ld hl, $ff04                                  ; $7ef9: $21 $04 $ff
    ld a, a                                       ; $7efc: $7f
    rra                                           ; $7efd: $1f
    nop                                           ; $7efe: $00
    rra                                           ; $7eff: $1f
    nop                                           ; $7f00: $00

    db $00, $00, $20, $02, $60, $01, $c0, $00, $00, $24, $42, $34, $a4, $44, $aa, $50
    db $aa, $50, $cf, $5c, $f4, $6c, $5a, $7d, $00, $00, $45, $20, $aa, $48, $c0, $00
    db $00, $00, $f4, $6c, $77, $00, $77, $00, $00, $00, $f4, $6c, $77, $00, $ff, $07
    db $00, $00, $c0, $00, $77, $00, $77, $00, $00, $00, $c0, $00, $77, $00, $ff, $07

    ld bc, $ff04                                  ; $7f41: $01 $04 $ff
    ld a, a                                       ; $7f44: $7f
    inc de                                        ; $7f45: $13
    nop                                           ; $7f46: $00
    inc de                                        ; $7f47: $13
    nop                                           ; $7f48: $00
    ret nz                                        ; $7f49: $c0

    nop                                           ; $7f4a: $00
    rst $38                                       ; $7f4b: $ff
    ld a, a                                       ; $7f4c: $7f
    inc de                                        ; $7f4d: $13
    nop                                           ; $7f4e: $00
    inc de                                        ; $7f4f: $13
    nop                                           ; $7f50: $00
    ld b, b                                       ; $7f51: $40
    ld bc, $7fff                                  ; $7f52: $01 $ff $7f
    inc de                                        ; $7f55: $13
    nop                                           ; $7f56: $00
    inc de                                        ; $7f57: $13
    nop                                           ; $7f58: $00
    ret nz                                        ; $7f59: $c0

    dec c                                         ; $7f5a: $0d
    rst $38                                       ; $7f5b: $ff
    ld a, a                                       ; $7f5c: $7f
    ld [hl], a                                    ; $7f5d: $77
    dec a                                         ; $7f5e: $3d
    dec bc                                        ; $7f5f: $0b
    ld c, h                                       ; $7f60: $4c
    rrca                                          ; $7f61: $0f
    ld a, h                                       ; $7f62: $7c
    dec bc                                        ; $7f63: $0b
    ld l, b                                       ; $7f64: $68
    rlca                                          ; $7f65: $07
    ld d, b                                       ; $7f66: $50
    inc b                                         ; $7f67: $04
    inc a                                         ; $7f68: $3c
    inc de                                        ; $7f69: $13
    nop                                           ; $7f6a: $00
    inc de                                        ; $7f6b: $13
    nop                                           ; $7f6c: $00
    inc de                                        ; $7f6d: $13
    nop                                           ; $7f6e: $00
    inc de                                        ; $7f6f: $13
    nop                                           ; $7f70: $00
    inc de                                        ; $7f71: $13
    nop                                           ; $7f72: $00
    inc de                                        ; $7f73: $13
    nop                                           ; $7f74: $00
    inc de                                        ; $7f75: $13
    nop                                           ; $7f76: $00
    inc de                                        ; $7f77: $13
    nop                                           ; $7f78: $00
    dec bc                                        ; $7f79: $0b
    ld c, h                                       ; $7f7a: $4c
    inc bc                                        ; $7f7b: $03
    jr nz, @-$44                                  ; $7f7c: $20 $ba

    inc d                                         ; $7f7e: $14
    inc de                                        ; $7f7f: $13
    nop                                           ; $7f80: $00

    db $cc, $7c, $86, $31, $20, $02, $ff, $7f

    nop                                           ; $7f89: $00
    jr nz, @+$01                                  ; $7f8a: $20 $ff

    ld a, a                                       ; $7f8c: $7f
    xor $41                                       ; $7f8d: $ee $41
    nop                                           ; $7f8f: $00
    ld a, [hl]                                    ; $7f90: $7e
    nop                                           ; $7f91: $00
    jr nz, @+$01                                  ; $7f92: $20 $ff

jr_0d3_7f94:
    ld a, a                                       ; $7f94: $7f
    ld d, d                                       ; $7f95: $52
    ld d, [hl]                                    ; $7f96: $56
    add $38                                       ; $7f97: $c6 $38
    dec h                                         ; $7f99: $25
    inc b                                         ; $7f9a: $04
    rst $38                                       ; $7f9b: $ff
    inc bc                                        ; $7f9c: $03
    ld c, $05                                     ; $7f9d: $0e $05
    jr jr_0d3_7fa2                                ; $7f9f: $18 $01

    nop                                           ; $7fa1: $00

jr_0d3_7fa2:
    jr nz, jr_0d3_7f94                            ; $7fa2: $20 $f0

    ld a, a                                       ; $7fa4: $7f
    rst $38                                       ; $7fa5: $ff
    inc bc                                        ; $7fa6: $03
    db $e3                                        ; $7fa7: $e3
    ld h, l                                       ; $7fa8: $65
    add b                                         ; $7fa9: $80
    nop                                           ; $7faa: $00
    rst $30                                       ; $7fab: $f7
    inc bc                                        ; $7fac: $03
    rst $38                                       ; $7fad: $ff
    inc bc                                        ; $7fae: $03
    add b                                         ; $7faf: $80
    ld [bc], a                                    ; $7fb0: $02
    inc b                                         ; $7fb1: $04
    db $10                                        ; $7fb2: $10
    rst $38                                       ; $7fb3: $ff
    ld a, [hl]                                    ; $7fb4: $7e
    rst $38                                       ; $7fb5: $ff
    inc bc                                        ; $7fb6: $03
    adc a                                         ; $7fb7: $8f
    inc a                                         ; $7fb8: $3c
    ld hl, $bd04                                  ; $7fb9: $21 $04 $bd
    ld [hl], a                                    ; $7fbc: $77
    and l                                         ; $7fbd: $a5
    inc d                                         ; $7fbe: $14
    xor l                                         ; $7fbf: $ad
    dec [hl]                                      ; $7fc0: $35
    rst $38                                       ; $7fc1: $ff
    ld a, a                                       ; $7fc2: $7f
    cp a                                          ; $7fc3: $bf
    halt                                          ; $7fc4: $76
    sub c                                         ; $7fc5: $91
    ld l, b                                       ; $7fc6: $68
    nop                                           ; $7fc7: $00
    db $10                                        ; $7fc8: $10
    rst $38                                       ; $7fc9: $ff
    ld a, a                                       ; $7fca: $7f
    rst $08                                       ; $7fcb: $cf
    ld a, e                                       ; $7fcc: $7b
    db $e3                                        ; $7fcd: $e3
    dec a                                         ; $7fce: $3d
    ld h, b                                       ; $7fcf: $60
    jr @+$01                                      ; $7fd0: $18 $ff

    ld a, a                                       ; $7fd2: $7f
    ld c, a                                       ; $7fd3: $4f
    ld d, [hl]                                    ; $7fd4: $56
    daa                                           ; $7fd5: $27
    add hl, hl                                    ; $7fd6: $29
    ld hl, $f704                                  ; $7fd7: $21 $04 $f7
    ld a, a                                       ; $7fda: $7f
    ld e, a                                       ; $7fdb: $5f
    add hl, hl                                    ; $7fdc: $29
    rst $38                                       ; $7fdd: $ff
    ld a, a                                       ; $7fde: $7f
    ld [bc], a                                    ; $7fdf: $02
    nop                                           ; $7fe0: $00
    rst $38                                       ; $7fe1: $ff
    ld a, a                                       ; $7fe2: $7f
    ld e, a                                       ; $7fe3: $5f
    ld d, e                                       ; $7fe4: $53
    call nc, Call_0d3_441d                        ; $7fe5: $d4 $1d $44
    inc b                                         ; $7fe8: $04
    rst $38                                       ; $7fe9: $ff
    ld a, a                                       ; $7fea: $7f
    ld a, a                                       ; $7feb: $7f
    ccf                                           ; $7fec: $3f
    sbc a                                         ; $7fed: $9f
    add hl, bc                                    ; $7fee: $09
    add hl, bc                                    ; $7fef: $09
    inc e                                         ; $7ff0: $1c
    rst $38                                       ; $7ff1: $ff
    ld a, a                                       ; $7ff2: $7f
    cp [hl]                                       ; $7ff3: $be
    ld h, e                                       ; $7ff4: $63
    xor $3d                                       ; $7ff5: $ee $3d
    add h                                         ; $7ff7: $84
    db $10                                        ; $7ff8: $10
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
