; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $080", ROMX[$4000], BANK[$80]

    add b                                         ; $4000: $80
    ld sp, $3332                                  ; $4001: $31 $32 $33
    inc [hl]                                      ; $4004: $34
    dec [hl]                                      ; $4005: $35
    ld [hl], $37                                  ; $4006: $36 $37
    jr c, @+$3b                                   ; $4008: $38 $39

    jr nc, jr_080_403d                            ; $400a: $30 $31

    ld [hl-], a                                   ; $400c: $32
    inc sp                                        ; $400d: $33
    inc [hl]                                      ; $400e: $34
    dec [hl]                                      ; $400f: $35
    jr jr_080_4012                                ; $4010: $18 $00

jr_080_4012:
    rla                                           ; $4012: $17
    nop                                           ; $4013: $00
    ld h, b                                       ; $4014: $60
    daa                                           ; $4015: $27
    pop de                                        ; $4016: $d1
    pop de                                        ; $4017: $d1
    pop de                                        ; $4018: $d1
    pop de                                        ; $4019: $d1
    jp nc, $d3d1                                  ; $401a: $d2 $d1 $d3

    pop de                                        ; $401d: $d1
    call nc, $d5d1                                ; $401e: $d4 $d1 $d5
    pop de                                        ; $4021: $d1
    sub $d7                                       ; $4022: $d6 $d7
    ret c                                         ; $4024: $d8

    reti                                          ; $4025: $d9


    inc bc                                        ; $4026: $03
    inc bc                                        ; $4027: $03
    ld b, $03                                     ; $4028: $06 $03
    ld bc, $0603                                  ; $402a: $01 $03 $06
    inc bc                                        ; $402d: $03
    ld bc, $0603                                  ; $402e: $01 $03 $06
    inc bc                                        ; $4031: $03
    ld bc, $0601                                  ; $4032: $01 $01 $06
    ld bc, $d1d1                                  ; $4035: $01 $d1 $d1
    pop de                                        ; $4038: $d1
    pop de                                        ; $4039: $d1
    jp c, $dbd1                                   ; $403a: $da $d1 $db

jr_080_403d:
    pop de                                        ; $403d: $d1
    call c, $ddd1                                 ; $403e: $dc $d1 $dd
    pop de                                        ; $4041: $d1
    sbc $df                                       ; $4042: $de $df
    ldh [$d1], a                                  ; $4044: $e0 $d1
    inc bc                                        ; $4046: $03
    inc bc                                        ; $4047: $03
    inc bc                                        ; $4048: $03
    inc bc                                        ; $4049: $03
    ld bc, $0603                                  ; $404a: $01 $03 $06
    inc bc                                        ; $404d: $03
    ld bc, $0603                                  ; $404e: $01 $03 $06
    inc bc                                        ; $4051: $03
    ld bc, $0601                                  ; $4052: $01 $01 $06
    ld bc, $d1d1                                  ; $4055: $01 $d1 $d1
    pop de                                        ; $4058: $d1
    pop de                                        ; $4059: $d1
    pop de                                        ; $405a: $d1
    pop hl                                        ; $405b: $e1
    pop de                                        ; $405c: $d1
    pop de                                        ; $405d: $d1
    pop de                                        ; $405e: $d1
    ld [c], a                                     ; $405f: $e2
    pop de                                        ; $4060: $d1
    pop de                                        ; $4061: $d1
    pop de                                        ; $4062: $d1
    db $e3                                        ; $4063: $e3
    pop de                                        ; $4064: $d1
    pop de                                        ; $4065: $d1
    inc bc                                        ; $4066: $03
    inc bc                                        ; $4067: $03
    inc bc                                        ; $4068: $03
    inc bc                                        ; $4069: $03
    inc bc                                        ; $406a: $03
    ld bc, $0303                                  ; $406b: $01 $03 $03
    inc bc                                        ; $406e: $03
    ld bc, $0303                                  ; $406f: $01 $03 $03
    ld bc, $0101                                  ; $4072: $01 $01 $01
    ld bc, $d1d1                                  ; $4075: $01 $d1 $d1
    pop de                                        ; $4078: $d1
    pop de                                        ; $4079: $d1
    db $d3                                        ; $407a: $d3
    pop de                                        ; $407b: $d1
    pop de                                        ; $407c: $d1
    jp nc, $d1d5                                  ; $407d: $d2 $d5 $d1

    pop de                                        ; $4080: $d1
    call nc, $d9d8                                ; $4081: $d4 $d8 $d9
    pop de                                        ; $4084: $d1
    sub $06                                       ; $4085: $d6 $06
    inc bc                                        ; $4087: $03
    inc bc                                        ; $4088: $03
    inc bc                                        ; $4089: $03
    ld b, $03                                     ; $408a: $06 $03
    inc bc                                        ; $408c: $03
    ld bc, $0306                                  ; $408d: $01 $06 $03
    inc bc                                        ; $4090: $03
    ld bc, $0106                                  ; $4091: $01 $06 $01
    ld bc, $e401                                  ; $4094: $01 $01 $e4
    push hl                                       ; $4097: $e5
    and $e7                                       ; $4098: $e6 $e7
    add sp, -$17                                  ; $409a: $e8 $e9
    ld [$eceb], a                                 ; $409c: $ea $eb $ec
    db $ed                                        ; $409f: $ed
    xor $ef                                       ; $40a0: $ee $ef
    ldh a, [$f1]                                  ; $40a2: $f0 $f1
    ld a, [c]                                     ; $40a4: $f2
    di                                            ; $40a5: $f3
    ld bc, $0601                                  ; $40a6: $01 $01 $06
    ld bc, $0101                                  ; $40a9: $01 $01 $01
    ld b, $01                                     ; $40ac: $06 $01
    ld bc, $0601                                  ; $40ae: $01 $01 $06
    ld bc, $0101                                  ; $40b1: $01 $01 $01
    ld b, $01                                     ; $40b4: $06 $01
    db $f4                                        ; $40b6: $f4
    pop de                                        ; $40b7: $d1
    push af                                       ; $40b8: $f5
    or $f7                                        ; $40b9: $f6 $f7
    ld hl, sp-$07                                 ; $40bb: $f8 $f9
    ld a, [$fcfb]                                 ; $40bd: $fa $fb $fc
    db $fd                                        ; $40c0: $fd
    cp $ff                                        ; $40c1: $fe $ff
    nop                                           ; $40c3: $00
    ld bc, $0102                                  ; $40c4: $01 $02 $01
    ld bc, $0106                                  ; $40c7: $01 $06 $01
    ld bc, $0601                                  ; $40ca: $01 $01 $06
    ld bc, $0101                                  ; $40cd: $01 $01 $01
    ld b, $01                                     ; $40d0: $06 $01
    ld bc, $0601                                  ; $40d2: $01 $01 $06
    ld bc, $0403                                  ; $40d5: $01 $03 $04
    pop de                                        ; $40d8: $d1
    pop de                                        ; $40d9: $d1
    dec b                                         ; $40da: $05
    ld b, $07                                     ; $40db: $06 $07
    dec b                                         ; $40dd: $05
    ld [$0a09], sp                                ; $40de: $08 $09 $0a
    ld [$0c0b], sp                                ; $40e1: $08 $0b $0c
    dec c                                         ; $40e4: $0d
    dec bc                                        ; $40e5: $0b
    ld bc, $0101                                  ; $40e6: $01 $01 $01
    ld bc, $0101                                  ; $40e9: $01 $01 $01
    ld bc, $0101                                  ; $40ec: $01 $01 $01
    ld bc, $0101                                  ; $40ef: $01 $01 $01
    ld bc, $0101                                  ; $40f2: $01 $01 $01
    ld bc, $e7e6                                  ; $40f5: $01 $e6 $e7
    pop de                                        ; $40f8: $d1
    db $e4                                        ; $40f9: $e4
    ld [$05eb], a                                 ; $40fa: $ea $eb $05
    add sp, -$12                                  ; $40fd: $e8 $ee
    rst $28                                       ; $40ff: $ef
    ld [$f2ec], sp                                ; $4100: $08 $ec $f2
    di                                            ; $4103: $f3
    dec bc                                        ; $4104: $0b
    ldh a, [rTMA]                                 ; $4105: $f0 $06
    ld bc, $0101                                  ; $4107: $01 $01 $01
    ld b, $01                                     ; $410a: $06 $01
    ld bc, $0601                                  ; $410c: $01 $01 $06
    ld bc, $0101                                  ; $410f: $01 $01 $01
    ld b, $01                                     ; $4112: $06 $01
    ld bc, $0e01                                  ; $4114: $01 $01 $0e
    rrca                                          ; $4117: $0f
    db $10                                        ; $4118: $10
    ld de, $1312                                  ; $4119: $11 $12 $13
    inc d                                         ; $411c: $14
    dec d                                         ; $411d: $15
    ld d, $17                                     ; $411e: $16 $17
    jr jr_080_413b                                ; $4120: $18 $19

    ld a, [de]                                    ; $4122: $1a
    dec de                                        ; $4123: $1b
    inc e                                         ; $4124: $1c
    dec e                                         ; $4125: $1d
    ld bc, $0601                                  ; $4126: $01 $01 $06
    ld bc, $0101                                  ; $4129: $01 $01 $01
    ld b, $01                                     ; $412c: $06 $01
    ld bc, $0601                                  ; $412e: $01 $01 $06
    ld bc, $0101                                  ; $4131: $01 $01 $01
    ld b, $01                                     ; $4134: $06 $01
    ld e, $1f                                     ; $4136: $1e $1f
    jr nz, jr_080_415b                            ; $4138: $20 $21

    ld [hl+], a                                   ; $413a: $22

jr_080_413b:
    inc hl                                        ; $413b: $23
    inc h                                         ; $413c: $24
    dec h                                         ; $413d: $25
    ld h, $27                                     ; $413e: $26 $27
    jr z, @+$2b                                   ; $4140: $28 $29

    ld a, [hl+]                                   ; $4142: $2a
    dec hl                                        ; $4143: $2b
    inc l                                         ; $4144: $2c
    dec l                                         ; $4145: $2d
    ld bc, $0601                                  ; $4146: $01 $01 $06
    ld bc, $0101                                  ; $4149: $01 $01 $01
    ld b, $01                                     ; $414c: $06 $01
    ld bc, $0601                                  ; $414e: $01 $01 $06
    ld bc, $0101                                  ; $4151: $01 $01 $01
    ld b, $01                                     ; $4154: $06 $01
    ld l, $2f                                     ; $4156: $2e $2f
    jr nc, jr_080_418b                            ; $4158: $30 $31

    ld [hl-], a                                   ; $415a: $32

jr_080_415b:
    inc sp                                        ; $415b: $33
    dec d                                         ; $415c: $15
    inc [hl]                                      ; $415d: $34
    dec [hl]                                      ; $415e: $35
    ld [hl], $37                                  ; $415f: $36 $37
    jr c, jr_080_419c                             ; $4161: $38 $39

    ld a, [hl-]                                   ; $4163: $3a
    dec sp                                        ; $4164: $3b
    inc a                                         ; $4165: $3c
    ld bc, $0101                                  ; $4166: $01 $01 $01
    ld bc, $0101                                  ; $4169: $01 $01 $01
    ld bc, $0101                                  ; $416c: $01 $01 $01
    ld bc, $0101                                  ; $416f: $01 $01 $01
    ld bc, $0101                                  ; $4172: $01 $01 $01
    ld bc, $1110                                  ; $4175: $01 $10 $11
    ld sp, $140e                                  ; $4178: $31 $0e $14
    dec d                                         ; $417b: $15
    inc [hl]                                      ; $417c: $34
    ld [de], a                                    ; $417d: $12
    jr jr_080_4199                                ; $417e: $18 $19

    jr c, @+$18                                   ; $4180: $38 $16

    inc e                                         ; $4182: $1c
    dec e                                         ; $4183: $1d
    inc a                                         ; $4184: $3c
    ld a, [hl+]                                   ; $4185: $2a
    ld b, $01                                     ; $4186: $06 $01
    ld bc, $0601                                  ; $4188: $01 $01 $06

jr_080_418b:
    ld bc, $0101                                  ; $418b: $01 $01 $01
    ld b, $01                                     ; $418e: $06 $01
    ld bc, $0601                                  ; $4190: $01 $01 $06
    ld bc, $0101                                  ; $4193: $01 $01 $01
    dec a                                         ; $4196: $3d
    ld a, $3f                                     ; $4197: $3e $3f

jr_080_4199:
    ld b, b                                       ; $4199: $40
    ld b, c                                       ; $419a: $41
    ld b, d                                       ; $419b: $42

jr_080_419c:
    ld b, e                                       ; $419c: $43
    ld b, h                                       ; $419d: $44
    ld b, l                                       ; $419e: $45
    ld b, [hl]                                    ; $419f: $46
    ld b, a                                       ; $41a0: $47
    ld c, b                                       ; $41a1: $48
    ld c, c                                       ; $41a2: $49
    ld c, d                                       ; $41a3: $4a
    ld c, e                                       ; $41a4: $4b
    ld c, h                                       ; $41a5: $4c
    ld bc, $0101                                  ; $41a6: $01 $01 $01
    ld bc, $0202                                  ; $41a9: $01 $02 $02
    ld [bc], a                                    ; $41ac: $02
    ld [bc], a                                    ; $41ad: $02
    ld [bc], a                                    ; $41ae: $02
    ld [bc], a                                    ; $41af: $02
    ld [bc], a                                    ; $41b0: $02
    ld [bc], a                                    ; $41b1: $02
    add e                                         ; $41b2: $83
    add e                                         ; $41b3: $83
    add e                                         ; $41b4: $83
    add e                                         ; $41b5: $83
    ld c, l                                       ; $41b6: $4d
    ld c, [hl]                                    ; $41b7: $4e
    ld c, a                                       ; $41b8: $4f
    ld d, b                                       ; $41b9: $50
    ld d, c                                       ; $41ba: $51
    ld d, d                                       ; $41bb: $52
    ld b, c                                       ; $41bc: $41
    ld b, d                                       ; $41bd: $42
    ld d, e                                       ; $41be: $53
    ld d, h                                       ; $41bf: $54
    ld b, l                                       ; $41c0: $45
    ld b, a                                       ; $41c1: $47
    ld d, l                                       ; $41c2: $55
    ld d, [hl]                                    ; $41c3: $56
    ld d, a                                       ; $41c4: $57
    ld e, b                                       ; $41c5: $58
    ld bc, $0101                                  ; $41c6: $01 $01 $01
    ld bc, $0202                                  ; $41c9: $01 $02 $02
    ld [bc], a                                    ; $41cc: $02
    ld [bc], a                                    ; $41cd: $02
    ld [bc], a                                    ; $41ce: $02
    ld [bc], a                                    ; $41cf: $02
    ld [bc], a                                    ; $41d0: $02
    ld [bc], a                                    ; $41d1: $02
    add e                                         ; $41d2: $83
    add e                                         ; $41d3: $83
    add e                                         ; $41d4: $83
    add e                                         ; $41d5: $83
    ld e, c                                       ; $41d6: $59
    ld e, d                                       ; $41d7: $5a
    ld e, e                                       ; $41d8: $5b
    ld e, h                                       ; $41d9: $5c
    ld b, e                                       ; $41da: $43
    ld b, h                                       ; $41db: $44
    ld d, c                                       ; $41dc: $51
    ld d, d                                       ; $41dd: $52
    ld d, h                                       ; $41de: $54
    ld b, l                                       ; $41df: $45
    ld e, l                                       ; $41e0: $5d
    ld b, [hl]                                    ; $41e1: $46
    ld e, [hl]                                    ; $41e2: $5e
    ld e, a                                       ; $41e3: $5f
    ld c, c                                       ; $41e4: $49
    ld c, d                                       ; $41e5: $4a
    ld bc, $0101                                  ; $41e6: $01 $01 $01
    ld bc, $0202                                  ; $41e9: $01 $02 $02
    ld [bc], a                                    ; $41ec: $02
    ld [bc], a                                    ; $41ed: $02
    ld [bc], a                                    ; $41ee: $02
    ld [bc], a                                    ; $41ef: $02
    ld [bc], a                                    ; $41f0: $02
    ld [bc], a                                    ; $41f1: $02
    add e                                         ; $41f2: $83
    add e                                         ; $41f3: $83
    add e                                         ; $41f4: $83
    add e                                         ; $41f5: $83
    ccf                                           ; $41f6: $3f
    ld b, b                                       ; $41f7: $40
    ld e, h                                       ; $41f8: $5c
    ld c, l                                       ; $41f9: $4d
    ld b, c                                       ; $41fa: $41
    ld b, d                                       ; $41fb: $42
    ld b, e                                       ; $41fc: $43
    ld b, h                                       ; $41fd: $44
    ld b, l                                       ; $41fe: $45
    ld c, b                                       ; $41ff: $48
    ld h, b                                       ; $4200: $60
    ld b, l                                       ; $4201: $45
    ld c, e                                       ; $4202: $4b
    ld c, h                                       ; $4203: $4c
    ld d, l                                       ; $4204: $55
    ld d, [hl]                                    ; $4205: $56
    ld bc, $0101                                  ; $4206: $01 $01 $01
    ld bc, $0202                                  ; $4209: $01 $02 $02
    ld [bc], a                                    ; $420c: $02
    ld [bc], a                                    ; $420d: $02
    ld [bc], a                                    ; $420e: $02
    ld [bc], a                                    ; $420f: $02
    ld [bc], a                                    ; $4210: $02
    ld [bc], a                                    ; $4211: $02
    add e                                         ; $4212: $83
    add e                                         ; $4213: $83
    add e                                         ; $4214: $83
    add e                                         ; $4215: $83
    pop de                                        ; $4216: $d1
    ld h, c                                       ; $4217: $61
    ld h, d                                       ; $4218: $62
    ld h, e                                       ; $4219: $63
    pop de                                        ; $421a: $d1
    ld h, h                                       ; $421b: $64
    ld h, l                                       ; $421c: $65
    ld h, [hl]                                    ; $421d: $66
    pop de                                        ; $421e: $d1
    ld h, a                                       ; $421f: $67
    ld l, b                                       ; $4220: $68
    ld d, e                                       ; $4221: $53
    rst $10                                       ; $4222: $d7
    ld l, c                                       ; $4223: $69
    ld l, d                                       ; $4224: $6a
    ld h, e                                       ; $4225: $63
    inc bc                                        ; $4226: $03
    add e                                         ; $4227: $83
    add h                                         ; $4228: $84
    ld [bc], a                                    ; $4229: $02
    inc bc                                        ; $422a: $03
    add h                                         ; $422b: $84
    add h                                         ; $422c: $84
    ld [bc], a                                    ; $422d: $02
    inc bc                                        ; $422e: $03
    add e                                         ; $422f: $83
    add e                                         ; $4230: $83
    ld [bc], a                                    ; $4231: $02
    ld bc, $8483                                  ; $4232: $01 $83 $84
    ld [bc], a                                    ; $4235: $02
    ld l, e                                       ; $4236: $6b
    ld l, h                                       ; $4237: $6c
    ld h, e                                       ; $4238: $63
    ld l, l                                       ; $4239: $6d
    ld l, [hl]                                    ; $423a: $6e
    ld l, a                                       ; $423b: $6f
    ld h, [hl]                                    ; $423c: $66
    ld [hl], b                                    ; $423d: $70
    ld [hl], c                                    ; $423e: $71
    ld [hl], d                                    ; $423f: $72
    ld d, e                                       ; $4240: $53
    ld [hl], e                                    ; $4241: $73
    ld [hl], h                                    ; $4242: $74
    ld [hl], l                                    ; $4243: $75
    ld h, e                                       ; $4244: $63
    ld h, d                                       ; $4245: $62
    ld [bc], a                                    ; $4246: $02
    ld [bc], a                                    ; $4247: $02
    ld [bc], a                                    ; $4248: $02
    and e                                         ; $4249: $a3
    ld [bc], a                                    ; $424a: $02
    ld [bc], a                                    ; $424b: $02
    ld [bc], a                                    ; $424c: $02
    add e                                         ; $424d: $83
    ld [bc], a                                    ; $424e: $02
    ld [bc], a                                    ; $424f: $02
    ld [bc], a                                    ; $4250: $02
    add h                                         ; $4251: $84
    ld [bc], a                                    ; $4252: $02
    ld [bc], a                                    ; $4253: $02
    ld [bc], a                                    ; $4254: $02
    and h                                         ; $4255: $a4
    halt                                          ; $4256: $76
    pop de                                        ; $4257: $d1
    pop de                                        ; $4258: $d1
    pop de                                        ; $4259: $d1
    ld [hl], a                                    ; $425a: $77
    pop de                                        ; $425b: $d1
    pop de                                        ; $425c: $d1
    pop de                                        ; $425d: $d1
    ld a, b                                       ; $425e: $78
    pop de                                        ; $425f: $d1
    pop de                                        ; $4260: $d1
    pop de                                        ; $4261: $d1
    ld h, c                                       ; $4262: $61
    pop de                                        ; $4263: $d1
    pop de                                        ; $4264: $d1
    pop de                                        ; $4265: $d1
    add h                                         ; $4266: $84
    add e                                         ; $4267: $83
    add e                                         ; $4268: $83
    add e                                         ; $4269: $83
    add e                                         ; $426a: $83
    add e                                         ; $426b: $83
    add e                                         ; $426c: $83
    add e                                         ; $426d: $83
    add e                                         ; $426e: $83
    add e                                         ; $426f: $83
    add e                                         ; $4270: $83
    add e                                         ; $4271: $83
    and e                                         ; $4272: $a3
    add e                                         ; $4273: $83
    add e                                         ; $4274: $83
    add e                                         ; $4275: $83
    pop de                                        ; $4276: $d1
    pop de                                        ; $4277: $d1
    pop de                                        ; $4278: $d1
    pop de                                        ; $4279: $d1
    pop de                                        ; $427a: $d1
    pop de                                        ; $427b: $d1
    pop de                                        ; $427c: $d1
    pop de                                        ; $427d: $d1
    pop de                                        ; $427e: $d1
    pop de                                        ; $427f: $d1
    pop de                                        ; $4280: $d1
    pop de                                        ; $4281: $d1
    pop de                                        ; $4282: $d1
    pop de                                        ; $4283: $d1
    pop de                                        ; $4284: $d1
    pop de                                        ; $4285: $d1
    add e                                         ; $4286: $83
    add e                                         ; $4287: $83
    add e                                         ; $4288: $83
    add e                                         ; $4289: $83
    add e                                         ; $428a: $83
    add e                                         ; $428b: $83
    add e                                         ; $428c: $83
    add e                                         ; $428d: $83
    add e                                         ; $428e: $83
    add e                                         ; $428f: $83
    add e                                         ; $4290: $83
    add e                                         ; $4291: $83
    add e                                         ; $4292: $83
    add e                                         ; $4293: $83
    add e                                         ; $4294: $83
    add e                                         ; $4295: $83
    push hl                                       ; $4296: $e5
    ld a, c                                       ; $4297: $79
    ld a, d                                       ; $4298: $7a
    ld h, [hl]                                    ; $4299: $66
    jp hl                                         ; $429a: $e9


    ld h, c                                       ; $429b: $61
    ld h, d                                       ; $429c: $62
    ld a, e                                       ; $429d: $7b
    db $ed                                        ; $429e: $ed
    ld a, h                                       ; $429f: $7c
    ld a, l                                       ; $42a0: $7d
    ld h, e                                       ; $42a1: $63
    ld a, [hl]                                    ; $42a2: $7e
    ld a, a                                       ; $42a3: $7f
    add b                                         ; $42a4: $80
    ld h, [hl]                                    ; $42a5: $66
    ld bc, $8484                                  ; $42a6: $01 $84 $84
    ld [bc], a                                    ; $42a9: $02
    ld bc, $8384                                  ; $42aa: $01 $84 $83
    ld [bc], a                                    ; $42ad: $02
    ld bc, $8383                                  ; $42ae: $01 $83 $83
    ld [bc], a                                    ; $42b1: $02
    ld bc, $0a83                                  ; $42b2: $01 $83 $0a
    ld [bc], a                                    ; $42b5: $02
    ld e, l                                       ; $42b6: $5d
    add b                                         ; $42b7: $80
    ld h, [hl]                                    ; $42b8: $66
    ld h, l                                       ; $42b9: $65
    ld d, h                                       ; $42ba: $54
    ld b, l                                       ; $42bb: $45
    add c                                         ; $42bc: $81
    ld l, b                                       ; $42bd: $68
    add d                                         ; $42be: $82
    ld l, a                                       ; $42bf: $6f
    add e                                         ; $42c0: $83
    ld l, d                                       ; $42c1: $6a
    ld [hl], c                                    ; $42c2: $71
    ld [hl], d                                    ; $42c3: $72
    ld h, [hl]                                    ; $42c4: $66
    ld a, d                                       ; $42c5: $7a
    ld [bc], a                                    ; $42c6: $02
    ld a, [bc]                                    ; $42c7: $0a
    ld [bc], a                                    ; $42c8: $02
    and h                                         ; $42c9: $a4
    ld [bc], a                                    ; $42ca: $02
    ld [bc], a                                    ; $42cb: $02
    ld a, [bc]                                    ; $42cc: $0a
    and e                                         ; $42cd: $a3
    ld a, [bc]                                    ; $42ce: $0a
    ld [bc], a                                    ; $42cf: $02
    ld a, [bc]                                    ; $42d0: $0a
    and e                                         ; $42d1: $a3
    ld [bc], a                                    ; $42d2: $02
    ld [bc], a                                    ; $42d3: $02
    ld [bc], a                                    ; $42d4: $02
    and e                                         ; $42d5: $a3
    ld h, h                                       ; $42d6: $64
    pop de                                        ; $42d7: $d1
    pop de                                        ; $42d8: $d1
    pop de                                        ; $42d9: $d1
    ld h, a                                       ; $42da: $67
    pop de                                        ; $42db: $d1
    pop de                                        ; $42dc: $d1
    pop de                                        ; $42dd: $d1
    ld l, c                                       ; $42de: $69
    pop de                                        ; $42df: $d1
    pop de                                        ; $42e0: $d1
    pop de                                        ; $42e1: $d1
    ld a, c                                       ; $42e2: $79
    pop de                                        ; $42e3: $d1
    pop de                                        ; $42e4: $d1
    pop de                                        ; $42e5: $d1
    and h                                         ; $42e6: $a4
    add e                                         ; $42e7: $83
    add e                                         ; $42e8: $83
    add e                                         ; $42e9: $83
    and e                                         ; $42ea: $a3
    add e                                         ; $42eb: $83
    add e                                         ; $42ec: $83
    add e                                         ; $42ed: $83
    and h                                         ; $42ee: $a4
    add e                                         ; $42ef: $83
    add e                                         ; $42f0: $83
    add e                                         ; $42f1: $83
    and h                                         ; $42f2: $a4
    add e                                         ; $42f3: $83
    add e                                         ; $42f4: $83
    add e                                         ; $42f5: $83
    rrca                                          ; $42f6: $0f
    add h                                         ; $42f7: $84
    add l                                         ; $42f8: $85
    ld d, e                                       ; $42f9: $53
    inc de                                        ; $42fa: $13
    add [hl]                                      ; $42fb: $86
    ld c, b                                       ; $42fc: $48
    ld h, e                                       ; $42fd: $63
    rla                                           ; $42fe: $17
    add a                                         ; $42ff: $87
    adc b                                         ; $4300: $88
    ld a, e                                       ; $4301: $7b
    inc a                                         ; $4302: $3c
    adc c                                         ; $4303: $89
    adc d                                         ; $4304: $8a
    adc e                                         ; $4305: $8b
    ld bc, $0a0a                                  ; $4306: $01 $0a $0a
    ld [bc], a                                    ; $4309: $02
    ld bc, $020a                                  ; $430a: $01 $0a $02
    ld [bc], a                                    ; $430d: $02
    ld bc, $0a0a                                  ; $430e: $01 $0a $0a
    ld [bc], a                                    ; $4311: $02
    ld bc, $0a0a                                  ; $4312: $01 $0a $0a
    ld a, [bc]                                    ; $4315: $0a
    ld [hl], h                                    ; $4316: $74
    adc h                                         ; $4317: $8c
    ld d, e                                       ; $4318: $53
    ld l, l                                       ; $4319: $6d
    ld e, l                                       ; $431a: $5d
    ld [hl], l                                    ; $431b: $75
    ld b, a                                       ; $431c: $47
    ld [hl], b                                    ; $431d: $70
    ld l, [hl]                                    ; $431e: $6e
    ld l, h                                       ; $431f: $6c
    add c                                         ; $4320: $81
    ld [hl], e                                    ; $4321: $73
    add d                                         ; $4322: $82
    ld l, a                                       ; $4323: $6f
    ld d, e                                       ; $4324: $53
    ld h, d                                       ; $4325: $62
    ld [bc], a                                    ; $4326: $02
    ld a, [bc]                                    ; $4327: $0a
    ld [bc], a                                    ; $4328: $02
    and e                                         ; $4329: $a3
    ld [bc], a                                    ; $432a: $02
    ld [bc], a                                    ; $432b: $02
    ld [bc], a                                    ; $432c: $02
    add e                                         ; $432d: $83
    ld [bc], a                                    ; $432e: $02
    ld [bc], a                                    ; $432f: $02
    ld a, [bc]                                    ; $4330: $0a
    add h                                         ; $4331: $84
    ld a, [bc]                                    ; $4332: $0a
    ld [bc], a                                    ; $4333: $02
    ld [bc], a                                    ; $4334: $02
    and h                                         ; $4335: $a4
    ld e, h                                       ; $4336: $5c
    adc l                                         ; $4337: $8d
    ld [hl], l                                    ; $4338: $75
    adc [hl]                                      ; $4339: $8e
    ld d, c                                       ; $433a: $51
    adc a                                         ; $433b: $8f
    add b                                         ; $433c: $80
    sub b                                         ; $433d: $90
    ld d, e                                       ; $433e: $53
    ld b, a                                       ; $433f: $47
    ld c, b                                       ; $4340: $48
    ld h, b                                       ; $4341: $60
    ld d, a                                       ; $4342: $57
    ld e, b                                       ; $4343: $58
    ld e, [hl]                                    ; $4344: $5e
    ld e, a                                       ; $4345: $5f
    ld bc, $020a                                  ; $4346: $01 $0a $02
    ld a, [bc]                                    ; $4349: $0a
    ld [bc], a                                    ; $434a: $02
    ld a, [bc]                                    ; $434b: $0a
    ld a, [bc]                                    ; $434c: $0a
    ld a, [bc]                                    ; $434d: $0a
    ld [bc], a                                    ; $434e: $02
    ld [bc], a                                    ; $434f: $02
    ld [bc], a                                    ; $4350: $02
    ld [bc], a                                    ; $4351: $02
    add e                                         ; $4352: $83
    add e                                         ; $4353: $83
    add e                                         ; $4354: $83
    add e                                         ; $4355: $83
    ld [hl], c                                    ; $4356: $71
    ld [hl], l                                    ; $4357: $75
    ld h, e                                       ; $4358: $63
    ld h, l                                       ; $4359: $65
    ld [hl], h                                    ; $435a: $74
    adc h                                         ; $435b: $8c
    ld h, [hl]                                    ; $435c: $66
    ld l, b                                       ; $435d: $68
    ld d, h                                       ; $435e: $54
    ld b, l                                       ; $435f: $45
    ld d, e                                       ; $4360: $53
    ld l, d                                       ; $4361: $6a
    ld c, c                                       ; $4362: $49
    ld c, d                                       ; $4363: $4a
    ld c, e                                       ; $4364: $4b
    sub c                                         ; $4365: $91
    ld [bc], a                                    ; $4366: $02
    ld [bc], a                                    ; $4367: $02
    ld [bc], a                                    ; $4368: $02
    and h                                         ; $4369: $a4
    ld [bc], a                                    ; $436a: $02
    ld a, [bc]                                    ; $436b: $0a
    ld [bc], a                                    ; $436c: $02
    and e                                         ; $436d: $a3
    ld [bc], a                                    ; $436e: $02
    ld [bc], a                                    ; $436f: $02
    ld [bc], a                                    ; $4370: $02
    and e                                         ; $4371: $a3
    add e                                         ; $4372: $83
    add e                                         ; $4373: $83
    add e                                         ; $4374: $83
    adc e                                         ; $4375: $8b
    ld h, h                                       ; $4376: $64
    pop de                                        ; $4377: $d1
    pop de                                        ; $4378: $d1
    pop de                                        ; $4379: $d1
    ld h, a                                       ; $437a: $67
    pop de                                        ; $437b: $d1
    pop de                                        ; $437c: $d1
    pop de                                        ; $437d: $d1
    ld l, c                                       ; $437e: $69
    pop de                                        ; $437f: $d1
    pop de                                        ; $4380: $d1
    pop de                                        ; $4381: $d1
    sub d                                         ; $4382: $92
    sub e                                         ; $4383: $93
    pop de                                        ; $4384: $d1
    pop de                                        ; $4385: $d1
    and h                                         ; $4386: $a4
    add e                                         ; $4387: $83
    add e                                         ; $4388: $83
    add e                                         ; $4389: $83
    and e                                         ; $438a: $a3
    add e                                         ; $438b: $83
    add e                                         ; $438c: $83
    add e                                         ; $438d: $83
    and h                                         ; $438e: $a4
    add e                                         ; $438f: $83
    add e                                         ; $4390: $83
    add e                                         ; $4391: $83
    adc e                                         ; $4392: $8b
    adc e                                         ; $4393: $8b
    add e                                         ; $4394: $83
    add e                                         ; $4395: $83
    pop de                                        ; $4396: $d1
    pop de                                        ; $4397: $d1
    pop de                                        ; $4398: $d1
    pop de                                        ; $4399: $d1
    pop de                                        ; $439a: $d1
    pop de                                        ; $439b: $d1
    pop de                                        ; $439c: $d1
    pop de                                        ; $439d: $d1
    pop de                                        ; $439e: $d1
    pop de                                        ; $439f: $d1
    pop de                                        ; $43a0: $d1
    pop de                                        ; $43a1: $d1
    pop de                                        ; $43a2: $d1
    db $db                                        ; $43a3: $db
    pop de                                        ; $43a4: $d1
    pop de                                        ; $43a5: $d1
    inc bc                                        ; $43a6: $03
    inc bc                                        ; $43a7: $03
    inc bc                                        ; $43a8: $03
    inc bc                                        ; $43a9: $03
    inc bc                                        ; $43aa: $03
    inc bc                                        ; $43ab: $03
    inc bc                                        ; $43ac: $03
    inc bc                                        ; $43ad: $03
    inc bc                                        ; $43ae: $03
    inc bc                                        ; $43af: $03
    inc bc                                        ; $43b0: $03
    inc bc                                        ; $43b1: $03
    inc bc                                        ; $43b2: $03
    ld b, $03                                     ; $43b3: $06 $03
    inc bc                                        ; $43b5: $03
    pop de                                        ; $43b6: $d1
    pop de                                        ; $43b7: $d1
    pop de                                        ; $43b8: $d1
    pop de                                        ; $43b9: $d1
    pop de                                        ; $43ba: $d1
    pop de                                        ; $43bb: $d1
    pop de                                        ; $43bc: $d1
    pop de                                        ; $43bd: $d1
    pop de                                        ; $43be: $d1
    pop de                                        ; $43bf: $d1
    pop de                                        ; $43c0: $d1
    pop de                                        ; $43c1: $d1
    pop hl                                        ; $43c2: $e1
    pop de                                        ; $43c3: $d1
    pop de                                        ; $43c4: $d1
    pop de                                        ; $43c5: $d1
    inc bc                                        ; $43c6: $03
    inc bc                                        ; $43c7: $03
    inc bc                                        ; $43c8: $03
    inc bc                                        ; $43c9: $03
    inc bc                                        ; $43ca: $03
    inc bc                                        ; $43cb: $03
    inc bc                                        ; $43cc: $03
    inc bc                                        ; $43cd: $03
    inc bc                                        ; $43ce: $03
    inc bc                                        ; $43cf: $03
    inc bc                                        ; $43d0: $03

Jump_080_43d1:
    inc bc                                        ; $43d1: $03
    ld bc, $0303                                  ; $43d2: $01 $03 $03
    inc bc                                        ; $43d5: $03
    pop de                                        ; $43d6: $d1
    db $dd                                        ; $43d7: $dd
    pop de                                        ; $43d8: $d1
    pop de                                        ; $43d9: $d1
    pop de                                        ; $43da: $d1
    ldh [$d1], a                                  ; $43db: $e0 $d1
    pop de                                        ; $43dd: $d1
    pop de                                        ; $43de: $d1
    push af                                       ; $43df: $f5
    or $03                                        ; $43e0: $f6 $03
    dec b                                         ; $43e2: $05
    ld sp, hl                                     ; $43e3: $f9
    ld a, [$0305]                                 ; $43e4: $fa $05 $03
    ld b, $03                                     ; $43e7: $06 $03
    inc bc                                        ; $43e9: $03
    ld bc, $0106                                  ; $43ea: $01 $06 $01
    ld bc, $0601                                  ; $43ed: $01 $01 $06
    ld bc, $0101                                  ; $43f0: $01 $01 $01
    ld b, $01                                     ; $43f3: $06 $01
    ld bc, $d1e2                                  ; $43f5: $01 $e2 $d1
    pop de                                        ; $43f8: $d1
    pop de                                        ; $43f9: $d1
    db $e3                                        ; $43fa: $e3
    pop de                                        ; $43fb: $d1
    pop de                                        ; $43fc: $d1
    pop de                                        ; $43fd: $d1
    inc b                                         ; $43fe: $04
    pop de                                        ; $43ff: $d1
    pop de                                        ; $4400: $d1
    pop de                                        ; $4401: $d1
    ld b, $07                                     ; $4402: $06 $07
    dec b                                         ; $4404: $05
    dec b                                         ; $4405: $05
    ld bc, $0303                                  ; $4406: $01 $03 $03
    inc bc                                        ; $4409: $03
    ld bc, $0101                                  ; $440a: $01 $01 $01
    ld bc, $0101                                  ; $440d: $01 $01 $01
    ld bc, $0101                                  ; $4410: $01 $01 $01
    ld bc, $0101                                  ; $4413: $01 $01 $01
    pop de                                        ; $4416: $d1
    pop de                                        ; $4417: $d1
    pop de                                        ; $4418: $d1
    sub h                                         ; $4419: $94
    pop de                                        ; $441a: $d1
    pop de                                        ; $441b: $d1
    pop de                                        ; $441c: $d1
    sub l                                         ; $441d: $95
    pop de                                        ; $441e: $d1
    pop de                                        ; $441f: $d1
    pop de                                        ; $4420: $d1
    sub l                                         ; $4421: $95
    pop de                                        ; $4422: $d1
    pop de                                        ; $4423: $d1
    pop de                                        ; $4424: $d1
    sub l                                         ; $4425: $95
    inc bc                                        ; $4426: $03
    inc bc                                        ; $4427: $03
    inc bc                                        ; $4428: $03
    add hl, bc                                    ; $4429: $09
    inc bc                                        ; $442a: $03
    inc bc                                        ; $442b: $03
    inc bc                                        ; $442c: $03
    add hl, bc                                    ; $442d: $09
    inc bc                                        ; $442e: $03
    inc bc                                        ; $442f: $03
    inc bc                                        ; $4430: $03
    add hl, bc                                    ; $4431: $09
    inc bc                                        ; $4432: $03
    inc bc                                        ; $4433: $03
    inc bc                                        ; $4434: $03
    add hl, bc                                    ; $4435: $09
    ld [$fefd], sp                                ; $4436: $08 $fd $fe
    ld [$010b], sp                                ; $4439: $08 $0b $01
    ld [bc], a                                    ; $443c: $02
    dec bc                                        ; $443d: $0b
    ld sp, $2120                                  ; $443e: $31 $20 $21
    ld l, $34                                     ; $4441: $2e $34
    inc h                                         ; $4443: $24
    dec h                                         ; $4444: $25
    ld [hl-], a                                   ; $4445: $32
    ld bc, $0106                                  ; $4446: $01 $06 $01
    ld bc, $0601                                  ; $4449: $01 $01 $06
    ld bc, $0101                                  ; $444c: $01 $01 $01
    ld b, $01                                     ; $444f: $06 $01
    ld bc, $0601                                  ; $4451: $01 $01 $06
    ld bc, $0901                                  ; $4454: $01 $01 $09
    ld a, [bc]                                    ; $4457: $0a
    ld [$0c08], sp                                ; $4458: $08 $08 $0c
    dec c                                         ; $445b: $0d
    dec bc                                        ; $445c: $0b
    dec bc                                        ; $445d: $0b
    cpl                                           ; $445e: $2f
    jr nc, jr_080_4492                            ; $445f: $30 $31

    ld sp, $1533                                  ; $4461: $31 $33 $15
    inc [hl]                                      ; $4464: $34
    inc [hl]                                      ; $4465: $34
    ld bc, $0101                                  ; $4466: $01 $01 $01
    ld bc, $0101                                  ; $4469: $01 $01 $01
    ld bc, $0101                                  ; $446c: $01 $01 $01
    ld bc, $0101                                  ; $446f: $01 $01 $01
    ld bc, $0101                                  ; $4472: $01 $01 $01
    ld bc, $0894                                  ; $4475: $01 $94 $08
    db $ec                                        ; $4478: $ec
    db $ed                                        ; $4479: $ed
    sub l                                         ; $447a: $95
    dec bc                                        ; $447b: $0b
    ldh a, [$7e]                                  ; $447c: $f0 $7e
    sub l                                         ; $447e: $95
    ld sp, $0f0e                                  ; $447f: $31 $0e $0f
    sub l                                         ; $4482: $95
    inc [hl]                                      ; $4483: $34
    ld [de], a                                    ; $4484: $12
    inc de                                        ; $4485: $13
    add hl, bc                                    ; $4486: $09
    ld bc, $0106                                  ; $4487: $01 $06 $01
    add hl, bc                                    ; $448a: $09
    ld bc, $0106                                  ; $448b: $01 $06 $01
    add hl, bc                                    ; $448e: $09
    ld bc, $0106                                  ; $448f: $01 $06 $01

jr_080_4492:
    add hl, bc                                    ; $4492: $09
    ld bc, $0106                                  ; $4493: $01 $06 $01
    ld [$0908], sp                                ; $4496: $08 $08 $09
    pop de                                        ; $4499: $d1
    dec bc                                        ; $449a: $0b
    dec bc                                        ; $449b: $0b
    inc c                                         ; $449c: $0c
    pop de                                        ; $449d: $d1
    ld sp, $2f31                                  ; $449e: $31 $31 $2f
    pop de                                        ; $44a1: $d1
    inc [hl]                                      ; $44a2: $34
    ld [hl-], a                                   ; $44a3: $32
    inc sp                                        ; $44a4: $33
    pop de                                        ; $44a5: $d1
    ld bc, $0101                                  ; $44a6: $01 $01 $01
    inc bc                                        ; $44a9: $03
    ld bc, $0101                                  ; $44aa: $01 $01 $01
    inc bc                                        ; $44ad: $03
    ld bc, $0101                                  ; $44ae: $01 $01 $01
    inc bc                                        ; $44b1: $03
    ld bc, $0101                                  ; $44b2: $01 $01 $01
    inc bc                                        ; $44b5: $03
    pop de                                        ; $44b6: $d1
    pop de                                        ; $44b7: $d1
    pop de                                        ; $44b8: $d1
    pop de                                        ; $44b9: $d1
    pop de                                        ; $44ba: $d1
    pop de                                        ; $44bb: $d1
    pop de                                        ; $44bc: $d1
    pop de                                        ; $44bd: $d1
    pop de                                        ; $44be: $d1
    pop de                                        ; $44bf: $d1
    pop de                                        ; $44c0: $d1
    pop de                                        ; $44c1: $d1
    db $d3                                        ; $44c2: $d3
    pop de                                        ; $44c3: $d1
    pop de                                        ; $44c4: $d1
    jp nc, Jump_000_0303                          ; $44c5: $d2 $03 $03

    inc bc                                        ; $44c8: $03
    inc bc                                        ; $44c9: $03
    inc bc                                        ; $44ca: $03
    inc bc                                        ; $44cb: $03
    inc bc                                        ; $44cc: $03
    inc bc                                        ; $44cd: $03
    inc bc                                        ; $44ce: $03
    inc bc                                        ; $44cf: $03
    inc bc                                        ; $44d0: $03
    inc bc                                        ; $44d1: $03
    ld b, $03                                     ; $44d2: $06 $03
    inc bc                                        ; $44d4: $03
    ld bc, $d1d1                                  ; $44d5: $01 $d1 $d1
    pop de                                        ; $44d8: $d1
    pop de                                        ; $44d9: $d1
    pop de                                        ; $44da: $d1
    pop de                                        ; $44db: $d1
    pop de                                        ; $44dc: $d1
    pop de                                        ; $44dd: $d1
    pop de                                        ; $44de: $d1
    pop de                                        ; $44df: $d1
    pop de                                        ; $44e0: $d1
    pop de                                        ; $44e1: $d1
    pop de                                        ; $44e2: $d1
    pop de                                        ; $44e3: $d1
    pop de                                        ; $44e4: $d1
    pop hl                                        ; $44e5: $e1
    inc bc                                        ; $44e6: $03
    inc bc                                        ; $44e7: $03
    inc bc                                        ; $44e8: $03
    inc bc                                        ; $44e9: $03
    inc bc                                        ; $44ea: $03
    inc bc                                        ; $44eb: $03
    inc bc                                        ; $44ec: $03
    inc bc                                        ; $44ed: $03
    inc bc                                        ; $44ee: $03
    inc bc                                        ; $44ef: $03
    inc bc                                        ; $44f0: $03
    inc bc                                        ; $44f1: $03
    inc bc                                        ; $44f2: $03
    inc bc                                        ; $44f3: $03
    inc bc                                        ; $44f4: $03
    ld bc, $3895                                  ; $44f5: $01 $95 $38
    ld d, $17                                     ; $44f8: $16 $17
    sub l                                         ; $44fa: $95
    inc a                                         ; $44fb: $3c
    ld a, [hl+]                                   ; $44fc: $2a
    inc a                                         ; $44fd: $3c
    sub l                                         ; $44fe: $95
    ld e, h                                       ; $44ff: $5c
    ld c, l                                       ; $4500: $4d
    ld e, h                                       ; $4501: $5c
    sub [hl]                                      ; $4502: $96
    sub a                                         ; $4503: $97
    ld b, e                                       ; $4504: $43
    ld b, h                                       ; $4505: $44
    add hl, bc                                    ; $4506: $09
    ld bc, $0106                                  ; $4507: $01 $06 $01
    add hl, bc                                    ; $450a: $09
    ld bc, $0101                                  ; $450b: $01 $01 $01
    add hl, bc                                    ; $450e: $09
    ld bc, $0101                                  ; $450f: $01 $01 $01
    add hl, bc                                    ; $4512: $09
    ld a, [bc]                                    ; $4513: $0a
    ld [bc], a                                    ; $4514: $02
    ld [bc], a                                    ; $4515: $02
    jr c, @+$37                                   ; $4516: $38 $35

    ld [hl], $d1                                  ; $4518: $36 $d1
    inc a                                         ; $451a: $3c
    add hl, sp                                    ; $451b: $39
    ld a, [hl-]                                   ; $451c: $3a
    pop de                                        ; $451d: $d1
    ld e, h                                       ; $451e: $5c
    ld e, c                                       ; $451f: $59
    ld e, d                                       ; $4520: $5a
    pop de                                        ; $4521: $d1
    ld d, c                                       ; $4522: $51
    ld d, d                                       ; $4523: $52
    sub [hl]                                      ; $4524: $96
    pop de                                        ; $4525: $d1
    ld bc, $0101                                  ; $4526: $01 $01 $01
    inc bc                                        ; $4529: $03
    ld bc, $0101                                  ; $452a: $01 $01 $01
    inc bc                                        ; $452d: $03
    ld bc, $0101                                  ; $452e: $01 $01 $01
    inc bc                                        ; $4531: $03
    ld [bc], a                                    ; $4532: $02
    ld [bc], a                                    ; $4533: $02
    add hl, hl                                    ; $4534: $29
    inc bc                                        ; $4535: $03
    push de                                       ; $4536: $d5
    pop de                                        ; $4537: $d1
    pop de                                        ; $4538: $d1
    call nc, $d9d8                                ; $4539: $d4 $d8 $d9
    pop de                                        ; $453c: $d1
    sub $e6                                       ; $453d: $d6 $e6
    rst $20                                       ; $453f: $e7
    pop de                                        ; $4540: $d1
    db $e4                                        ; $4541: $e4
    ld [$05eb], a                                 ; $4542: $ea $eb $05
    add sp, $06                                   ; $4545: $e8 $06
    inc bc                                        ; $4547: $03
    inc bc                                        ; $4548: $03
    ld bc, $0106                                  ; $4549: $01 $06 $01
    ld bc, $0601                                  ; $454c: $01 $01 $06
    ld bc, $0101                                  ; $454f: $01 $01 $01
    ld b, $01                                     ; $4552: $06 $01
    ld bc, $d101                                  ; $4554: $01 $01 $d1
    pop de                                        ; $4557: $d1
    pop de                                        ; $4558: $d1
    ld [c], a                                     ; $4559: $e2
    rst $10                                       ; $455a: $d7
    pop de                                        ; $455b: $d1
    pop de                                        ; $455c: $d1
    db $e3                                        ; $455d: $e3
    push hl                                       ; $455e: $e5
    pop de                                        ; $455f: $d1
    pop de                                        ; $4560: $d1
    inc b                                         ; $4561: $04
    jp hl                                         ; $4562: $e9


    dec b                                         ; $4563: $05
    dec b                                         ; $4564: $05
    ld b, $03                                     ; $4565: $06 $03
    inc bc                                        ; $4567: $03
    inc bc                                        ; $4568: $03
    ld bc, $0101                                  ; $4569: $01 $01 $01
    ld bc, $0101                                  ; $456c: $01 $01 $01
    ld bc, $0101                                  ; $456f: $01 $01 $01
    ld bc, $0101                                  ; $4572: $01 $01 $01
    ld bc, $98d1                                  ; $4575: $01 $d1 $98
    ld l, l                                       ; $4578: $6d
    ld b, l                                       ; $4579: $45
    pop de                                        ; $457a: $d1
    ld a, c                                       ; $457b: $79
    ld a, d                                       ; $457c: $7a
    ld [hl], l                                    ; $457d: $75
    pop de                                        ; $457e: $d1
    ld h, c                                       ; $457f: $61
    ld h, d                                       ; $4580: $62
    add b                                         ; $4581: $80
    rlca                                          ; $4582: $07
    ld a, h                                       ; $4583: $7c

jr_080_4584:
    ld a, l                                       ; $4584: $7d
    ld b, l                                       ; $4585: $45
    inc bc                                        ; $4586: $03
    adc e                                         ; $4587: $8b
    add h                                         ; $4588: $84
    ld [bc], a                                    ; $4589: $02
    ld bc, $8484                                  ; $458a: $01 $84 $84
    ld [bc], a                                    ; $458d: $02
    ld bc, $8384                                  ; $458e: $01 $84 $83
    ld a, [bc]                                    ; $4591: $0a
    ld bc, $8383                                  ; $4592: $01 $83 $83
    ld [bc], a                                    ; $4595: $02
    ld d, e                                       ; $4596: $53
    ld h, d                                       ; $4597: $62
    ld h, c                                       ; $4598: $61
    pop de                                        ; $4599: $d1
    ld h, e                                       ; $459a: $63
    ld l, b                                       ; $459b: $68
    ld h, a                                       ; $459c: $67
    pop de                                        ; $459d: $d1
    ld h, [hl]                                    ; $459e: $66
    ld l, d                                       ; $459f: $6a
    ld l, c                                       ; $45a0: $69
    pop de                                        ; $45a1: $d1
    ld d, e                                       ; $45a2: $53
    ld d, h                                       ; $45a3: $54
    ld l, b                                       ; $45a4: $68
    ld h, a                                       ; $45a5: $67
    ld [bc], a                                    ; $45a6: $02
    and h                                         ; $45a7: $a4
    and e                                         ; $45a8: $a3
    add e                                         ; $45a9: $83
    dec b                                         ; $45aa: $05
    and h                                         ; $45ab: $a4
    and e                                         ; $45ac: $a3
    add e                                         ; $45ad: $83
    dec b                                         ; $45ae: $05
    and e                                         ; $45af: $a3
    and h                                         ; $45b0: $a4
    add e                                         ; $45b1: $83
    ld [bc], a                                    ; $45b2: $02
    ld [bc], a                                    ; $45b3: $02
    and h                                         ; $45b4: $a4
    and e                                         ; $45b5: $a3
    xor $ef                                       ; $45b6: $ee $ef
    ld [$f2ec], sp                                ; $45b8: $08 $ec $f2
    di                                            ; $45bb: $f3
    dec bc                                        ; $45bc: $0b
    ldh a, [rNR10]                                ; $45bd: $f0 $10
    ld de, $0e31                                  ; $45bf: $11 $31 $0e
    inc d                                         ; $45c2: $14
    dec d                                         ; $45c3: $15
    inc [hl]                                      ; $45c4: $34
    ld [de], a                                    ; $45c5: $12
    ld b, $01                                     ; $45c6: $06 $01
    ld bc, $0601                                  ; $45c8: $01 $01 $06
    ld bc, $0101                                  ; $45cb: $01 $01 $01
    ld b, $01                                     ; $45ce: $06 $01
    ld bc, $0601                                  ; $45d0: $01 $01 $06
    ld bc, $0101                                  ; $45d3: $01 $01 $01
    db $ed                                        ; $45d6: $ed
    ld [$0908], sp                                ; $45d7: $08 $08 $09
    ld a, [hl]                                    ; $45da: $7e
    dec bc                                        ; $45db: $0b
    dec bc                                        ; $45dc: $0b
    inc c                                         ; $45dd: $0c
    rrca                                          ; $45de: $0f
    ld sp, $2f31                                  ; $45df: $31 $31 $2f
    inc de                                        ; $45e2: $13
    inc [hl]                                      ; $45e3: $34
    ld [hl-], a                                   ; $45e4: $32
    inc sp                                        ; $45e5: $33
    ld bc, $0101                                  ; $45e6: $01 $01 $01
    ld bc, $0101                                  ; $45e9: $01 $01 $01
    ld bc, $0101                                  ; $45ec: $01 $01 $01
    ld bc, $0101                                  ; $45ef: $01 $01 $01
    ld bc, $0101                                  ; $45f2: $01 $01 $01
    ld bc, $7f0a                                  ; $45f5: $01 $0a $7f
    ld l, e                                       ; $45f8: $6b
    ld [hl], c                                    ; $45f9: $71
    dec c                                         ; $45fa: $0d
    ld h, [hl]                                    ; $45fb: $66
    ld l, [hl]                                    ; $45fc: $6e
    ld [hl], h                                    ; $45fd: $74
    jr nc, jr_080_4584                            ; $45fe: $30 $84

    ld h, b                                       ; $4600: $60
    ld e, l                                       ; $4601: $5d
    dec d                                         ; $4602: $15
    add [hl]                                      ; $4603: $86
    ld a, e                                       ; $4604: $7b
    ld [hl], l                                    ; $4605: $75
    ld bc, $0283                                  ; $4606: $01 $83 $02
    ld [bc], a                                    ; $4609: $02
    ld bc, $0202                                  ; $460a: $01 $02 $02
    dec b                                         ; $460d: $05
    ld bc, $020a                                  ; $460e: $01 $0a $02
    dec b                                         ; $4611: $05
    ld bc, $050a                                  ; $4612: $01 $0a $05
    ld [bc], a                                    ; $4615: $02
    ld [hl], d                                    ; $4616: $72
    ld l, e                                       ; $4617: $6b
    ld l, d                                       ; $4618: $6a
    ld l, c                                       ; $4619: $69
    ld h, [hl]                                    ; $461a: $66
    ld l, [hl]                                    ; $461b: $6e
    sbc c                                         ; $461c: $99
    sbc d                                         ; $461d: $9a
    ld d, e                                       ; $461e: $53
    ld b, a                                       ; $461f: $47
    ld b, l                                       ; $4620: $45
    ld l, l                                       ; $4621: $6d
    ld l, h                                       ; $4622: $6c
    add c                                         ; $4623: $81
    adc b                                         ; $4624: $88
    ld [hl], b                                    ; $4625: $70
    dec b                                         ; $4626: $05
    ld [bc], a                                    ; $4627: $02
    and e                                         ; $4628: $a3
    and h                                         ; $4629: $a4
    ld [bc], a                                    ; $462a: $02
    ld [bc], a                                    ; $462b: $02
    adc e                                         ; $462c: $8b
    adc e                                         ; $462d: $8b
    ld [bc], a                                    ; $462e: $02
    ld [bc], a                                    ; $462f: $02
    dec b                                         ; $4630: $05
    and e                                         ; $4631: $a3
    ld [bc], a                                    ; $4632: $02
    dec c                                         ; $4633: $0d
    ld a, [bc]                                    ; $4634: $0a
    add h                                         ; $4635: $84
    pop de                                        ; $4636: $d1
    pop de                                        ; $4637: $d1
    pop de                                        ; $4638: $d1
    pop de                                        ; $4639: $d1
    pop de                                        ; $463a: $d1
    pop de                                        ; $463b: $d1
    pop de                                        ; $463c: $d1
    pop de                                        ; $463d: $d1
    halt                                          ; $463e: $76
    pop de                                        ; $463f: $d1
    pop de                                        ; $4640: $d1
    pop de                                        ; $4641: $d1
    ld [hl], a                                    ; $4642: $77
    pop de                                        ; $4643: $d1
    pop de                                        ; $4644: $d1
    pop de                                        ; $4645: $d1
    add e                                         ; $4646: $83
    add e                                         ; $4647: $83
    inc bc                                        ; $4648: $03
    inc bc                                        ; $4649: $03
    add h                                         ; $464a: $84
    add e                                         ; $464b: $83
    inc bc                                        ; $464c: $03
    inc bc                                        ; $464d: $03
    add e                                         ; $464e: $83
    add e                                         ; $464f: $83
    inc bc                                        ; $4650: $03
    inc bc                                        ; $4651: $03
    add h                                         ; $4652: $84
    add h                                         ; $4653: $84
    inc b                                         ; $4654: $04
    inc bc                                        ; $4655: $03
    pop de                                        ; $4656: $d1
    pop de                                        ; $4657: $d1
    pop de                                        ; $4658: $d1
    pop de                                        ; $4659: $d1
    pop de                                        ; $465a: $d1
    pop de                                        ; $465b: $d1
    pop de                                        ; $465c: $d1
    pop hl                                        ; $465d: $e1
    pop de                                        ; $465e: $d1
    pop de                                        ; $465f: $d1
    pop de                                        ; $4660: $d1
    ld [c], a                                     ; $4661: $e2
    jp nc, $d1d1                                  ; $4662: $d2 $d1 $d1

    db $e3                                        ; $4665: $e3
    inc bc                                        ; $4666: $03
    inc bc                                        ; $4667: $03
    inc bc                                        ; $4668: $03
    inc bc                                        ; $4669: $03
    inc bc                                        ; $466a: $03
    inc bc                                        ; $466b: $03
    inc bc                                        ; $466c: $03
    ld b, $03                                     ; $466d: $06 $03
    inc bc                                        ; $466f: $03
    inc bc                                        ; $4670: $03
    ld b, $01                                     ; $4671: $06 $01
    inc bc                                        ; $4673: $03
    inc bc                                        ; $4674: $03
    ld b, $9b                                     ; $4675: $06 $9b
    sbc h                                         ; $4677: $9c
    sbc l                                         ; $4678: $9d
    sbc [hl]                                      ; $4679: $9e
    sbc a                                         ; $467a: $9f
    and b                                         ; $467b: $a0
    and c                                         ; $467c: $a1
    and d                                         ; $467d: $a2
    and e                                         ; $467e: $a3
    and h                                         ; $467f: $a4
    and l                                         ; $4680: $a5
    and [hl]                                      ; $4681: $a6
    and a                                         ; $4682: $a7
    xor b                                         ; $4683: $a8
    xor c                                         ; $4684: $a9
    xor d                                         ; $4685: $aa
    adc e                                         ; $4686: $8b
    adc e                                         ; $4687: $8b
    adc e                                         ; $4688: $8b
    adc e                                         ; $4689: $8b
    adc e                                         ; $468a: $8b
    adc e                                         ; $468b: $8b
    adc e                                         ; $468c: $8b
    adc e                                         ; $468d: $8b
    adc e                                         ; $468e: $8b
    adc e                                         ; $468f: $8b
    adc e                                         ; $4690: $8b
    adc e                                         ; $4691: $8b
    adc e                                         ; $4692: $8b
    adc e                                         ; $4693: $8b
    adc e                                         ; $4694: $8b
    adc e                                         ; $4695: $8b
    xor e                                         ; $4696: $ab
    xor h                                         ; $4697: $ac
    xor l                                         ; $4698: $ad
    xor [hl]                                      ; $4699: $ae
    xor a                                         ; $469a: $af
    or b                                          ; $469b: $b0
    or c                                          ; $469c: $b1
    or d                                          ; $469d: $b2
    or e                                          ; $469e: $b3
    or h                                          ; $469f: $b4
    or l                                          ; $46a0: $b5
    or [hl]                                       ; $46a1: $b6
    or a                                          ; $46a2: $b7
    cp b                                          ; $46a3: $b8
    cp c                                          ; $46a4: $b9
    cp d                                          ; $46a5: $ba
    adc e                                         ; $46a6: $8b
    adc e                                         ; $46a7: $8b
    adc e                                         ; $46a8: $8b
    adc e                                         ; $46a9: $8b
    adc e                                         ; $46aa: $8b
    adc e                                         ; $46ab: $8b
    adc e                                         ; $46ac: $8b
    adc e                                         ; $46ad: $8b
    adc e                                         ; $46ae: $8b
    adc e                                         ; $46af: $8b
    adc e                                         ; $46b0: $8b
    adc e                                         ; $46b1: $8b
    adc e                                         ; $46b2: $8b
    adc e                                         ; $46b3: $8b
    adc e                                         ; $46b4: $8b
    adc e                                         ; $46b5: $8b
    cp e                                          ; $46b6: $bb
    cp h                                          ; $46b7: $bc
    sbc e                                         ; $46b8: $9b
    sbc h                                         ; $46b9: $9c
    cp l                                          ; $46ba: $bd
    cp [hl]                                       ; $46bb: $be
    sbc a                                         ; $46bc: $9f
    and b                                         ; $46bd: $a0
    cp a                                          ; $46be: $bf
    ret nz                                        ; $46bf: $c0

    and e                                         ; $46c0: $a3
    and h                                         ; $46c1: $a4
    pop bc                                        ; $46c2: $c1
    jp nz, $a8a7                                  ; $46c3: $c2 $a7 $a8

    adc e                                         ; $46c6: $8b
    adc e                                         ; $46c7: $8b
    adc e                                         ; $46c8: $8b
    adc e                                         ; $46c9: $8b
    adc e                                         ; $46ca: $8b
    adc e                                         ; $46cb: $8b
    adc e                                         ; $46cc: $8b
    adc e                                         ; $46cd: $8b
    adc e                                         ; $46ce: $8b
    adc e                                         ; $46cf: $8b
    adc e                                         ; $46d0: $8b
    adc e                                         ; $46d1: $8b
    adc e                                         ; $46d2: $8b
    adc e                                         ; $46d3: $8b
    adc e                                         ; $46d4: $8b
    adc e                                         ; $46d5: $8b
    sbc l                                         ; $46d6: $9d
    sbc [hl]                                      ; $46d7: $9e
    xor e                                         ; $46d8: $ab
    xor h                                         ; $46d9: $ac
    and c                                         ; $46da: $a1
    and d                                         ; $46db: $a2
    xor a                                         ; $46dc: $af
    or b                                          ; $46dd: $b0
    and l                                         ; $46de: $a5
    and [hl]                                      ; $46df: $a6
    or e                                          ; $46e0: $b3
    or h                                          ; $46e1: $b4
    xor c                                         ; $46e2: $a9
    xor d                                         ; $46e3: $aa
    or a                                          ; $46e4: $b7
    cp b                                          ; $46e5: $b8
    adc e                                         ; $46e6: $8b
    adc e                                         ; $46e7: $8b
    adc e                                         ; $46e8: $8b
    adc e                                         ; $46e9: $8b
    adc e                                         ; $46ea: $8b
    adc e                                         ; $46eb: $8b
    adc e                                         ; $46ec: $8b
    adc e                                         ; $46ed: $8b
    adc e                                         ; $46ee: $8b
    adc e                                         ; $46ef: $8b
    adc e                                         ; $46f0: $8b
    adc e                                         ; $46f1: $8b
    adc e                                         ; $46f2: $8b
    adc e                                         ; $46f3: $8b
    adc e                                         ; $46f4: $8b
    adc e                                         ; $46f5: $8b
    jp $c5c4                                      ; $46f6: $c3 $c4 $c5


    add $c7                                       ; $46f9: $c6 $c7
    ret z                                         ; $46fb: $c8

    ret                                           ; $46fc: $c9


    jp z, $cccb                                   ; $46fd: $ca $cb $cc

    call $d1ce                                    ; $4700: $cd $ce $d1
    add hl, hl                                    ; $4703: $29
    pop de                                        ; $4704: $d1
    rst $08                                       ; $4705: $cf
    adc e                                         ; $4706: $8b
    adc e                                         ; $4707: $8b
    adc e                                         ; $4708: $8b
    adc e                                         ; $4709: $8b
    adc e                                         ; $470a: $8b
    adc e                                         ; $470b: $8b
    adc e                                         ; $470c: $8b
    adc e                                         ; $470d: $8b
    adc h                                         ; $470e: $8c
    adc h                                         ; $470f: $8c
    adc h                                         ; $4710: $8c
    adc h                                         ; $4711: $8c
    add e                                         ; $4712: $83
    add e                                         ; $4713: $83
    add e                                         ; $4714: $83
    adc e                                         ; $4715: $8b
    ret nc                                        ; $4716: $d0

    pop de                                        ; $4717: $d1
    jp nc, $d4d3                                  ; $4718: $d2 $d3 $d4

    push de                                       ; $471b: $d5
    sub $d7                                       ; $471c: $d6 $d7
    ret c                                         ; $471e: $d8

    reti                                          ; $471f: $d9


    jp c, $dcdb                                   ; $4720: $da $db $dc

    db $dd                                        ; $4723: $dd
    sbc $df                                       ; $4724: $de $df
    adc e                                         ; $4726: $8b
    adc e                                         ; $4727: $8b
    adc e                                         ; $4728: $8b
    adc e                                         ; $4729: $8b
    adc e                                         ; $472a: $8b
    adc e                                         ; $472b: $8b
    adc e                                         ; $472c: $8b
    adc h                                         ; $472d: $8c
    adc e                                         ; $472e: $8b
    adc h                                         ; $472f: $8c
    adc h                                         ; $4730: $8c
    adc e                                         ; $4731: $8b
    adc e                                         ; $4732: $8b
    adc e                                         ; $4733: $8b
    adc e                                         ; $4734: $8b
    adc e                                         ; $4735: $8b
    ldh [$e1], a                                  ; $4736: $e0 $e1
    jp $e2c4                                      ; $4738: $c3 $c4 $e2


    db $e3                                        ; $473b: $e3
    rst $00                                       ; $473c: $c7
    ret z                                         ; $473d: $c8

    db $e4                                        ; $473e: $e4
    push hl                                       ; $473f: $e5
    set 1, h                                      ; $4740: $cb $cc
    pop de                                        ; $4742: $d1
    and $d1                                       ; $4743: $e6 $d1
    add hl, hl                                    ; $4745: $29
    adc e                                         ; $4746: $8b
    adc e                                         ; $4747: $8b
    adc e                                         ; $4748: $8b
    adc e                                         ; $4749: $8b
    adc h                                         ; $474a: $8c
    adc e                                         ; $474b: $8b
    adc e                                         ; $474c: $8b
    adc e                                         ; $474d: $8b
    adc e                                         ; $474e: $8b
    adc h                                         ; $474f: $8c
    adc h                                         ; $4750: $8c
    adc h                                         ; $4751: $8c
    add h                                         ; $4752: $84
    adc e                                         ; $4753: $8b
    add e                                         ; $4754: $83
    add e                                         ; $4755: $83
    push bc                                       ; $4756: $c5
    add $d0                                       ; $4757: $c6 $d0
    pop de                                        ; $4759: $d1
    ret                                           ; $475a: $c9


    jp z, $d5d4                                   ; $475b: $ca $d4 $d5

    call $d8ce                                    ; $475e: $cd $ce $d8
    reti                                          ; $4761: $d9


    pop de                                        ; $4762: $d1
    rst $08                                       ; $4763: $cf
    call c, $8bdd                                 ; $4764: $dc $dd $8b
    adc e                                         ; $4767: $8b
    adc e                                         ; $4768: $8b
    adc e                                         ; $4769: $8b
    adc e                                         ; $476a: $8b
    adc e                                         ; $476b: $8b
    adc e                                         ; $476c: $8b
    adc h                                         ; $476d: $8c
    adc e                                         ; $476e: $8b
    adc e                                         ; $476f: $8b
    adc h                                         ; $4770: $8c
    adc e                                         ; $4771: $8b
    add e                                         ; $4772: $83
    adc e                                         ; $4773: $8b
    adc e                                         ; $4774: $8b
    adc h                                         ; $4775: $8c
    pop de                                        ; $4776: $d1
    pop de                                        ; $4777: $d1
    pop de                                        ; $4778: $d1
    pop de                                        ; $4779: $d1
    pop de                                        ; $477a: $d1
    pop de                                        ; $477b: $d1
    pop de                                        ; $477c: $d1
    pop de                                        ; $477d: $d1
    pop de                                        ; $477e: $d1
    pop de                                        ; $477f: $d1
    pop de                                        ; $4780: $d1
    pop de                                        ; $4781: $d1
    pop de                                        ; $4782: $d1
    pop de                                        ; $4783: $d1
    pop de                                        ; $4784: $d1
    pop de                                        ; $4785: $d1
    add e                                         ; $4786: $83
    add e                                         ; $4787: $83
    add h                                         ; $4788: $84
    add e                                         ; $4789: $83
    inc bc                                        ; $478a: $03
    inc bc                                        ; $478b: $03
    inc bc                                        ; $478c: $03
    inc bc                                        ; $478d: $03
    inc bc                                        ; $478e: $03
    inc bc                                        ; $478f: $03
    inc bc                                        ; $4790: $03
    inc bc                                        ; $4791: $03
    inc bc                                        ; $4792: $03
    inc bc                                        ; $4793: $03
    inc bc                                        ; $4794: $03
    inc bc                                        ; $4795: $03
    pop de                                        ; $4796: $d1
    pop de                                        ; $4797: $d1
    pop de                                        ; $4798: $d1
    pop de                                        ; $4799: $d1
    pop de                                        ; $479a: $d1
    pop de                                        ; $479b: $d1
    pop de                                        ; $479c: $d1
    pop de                                        ; $479d: $d1
    pop de                                        ; $479e: $d1
    pop de                                        ; $479f: $d1
    pop de                                        ; $47a0: $d1
    pop de                                        ; $47a1: $d1
    pop de                                        ; $47a2: $d1
    pop de                                        ; $47a3: $d1
    pop de                                        ; $47a4: $d1
    pop de                                        ; $47a5: $d1
    inc bc                                        ; $47a6: $03
    inc bc                                        ; $47a7: $03
    inc bc                                        ; $47a8: $03
    inc bc                                        ; $47a9: $03
    inc bc                                        ; $47aa: $03
    inc bc                                        ; $47ab: $03
    inc bc                                        ; $47ac: $03
    inc bc                                        ; $47ad: $03
    inc bc                                        ; $47ae: $03
    inc bc                                        ; $47af: $03
    inc bc                                        ; $47b0: $03
    inc bc                                        ; $47b1: $03
    inc bc                                        ; $47b2: $03
    inc bc                                        ; $47b3: $03
    inc bc                                        ; $47b4: $03
    ld b, $ad                                     ; $47b5: $06 $ad
    xor [hl]                                      ; $47b7: $ae
    cp e                                          ; $47b8: $bb
    cp h                                          ; $47b9: $bc
    or c                                          ; $47ba: $b1
    or d                                          ; $47bb: $b2
    cp l                                          ; $47bc: $bd
    cp [hl]                                       ; $47bd: $be
    or l                                          ; $47be: $b5
    or [hl]                                       ; $47bf: $b6
    cp a                                          ; $47c0: $bf
    ret nz                                        ; $47c1: $c0

    cp c                                          ; $47c2: $b9
    cp d                                          ; $47c3: $ba
    pop bc                                        ; $47c4: $c1
    jp nz, $8b8b                                  ; $47c5: $c2 $8b $8b

    adc e                                         ; $47c8: $8b
    adc e                                         ; $47c9: $8b
    adc e                                         ; $47ca: $8b
    adc e                                         ; $47cb: $8b
    adc e                                         ; $47cc: $8b
    adc e                                         ; $47cd: $8b
    adc e                                         ; $47ce: $8b
    adc e                                         ; $47cf: $8b
    adc e                                         ; $47d0: $8b
    adc e                                         ; $47d1: $8b
    adc e                                         ; $47d2: $8b
    adc e                                         ; $47d3: $8b
    adc e                                         ; $47d4: $8b
    adc e                                         ; $47d5: $8b
    sbc e                                         ; $47d6: $9b
    sbc h                                         ; $47d7: $9c
    sbc l                                         ; $47d8: $9d
    sbc [hl]                                      ; $47d9: $9e
    sbc a                                         ; $47da: $9f
    and b                                         ; $47db: $a0
    and c                                         ; $47dc: $a1
    rst $20                                       ; $47dd: $e7
    and e                                         ; $47de: $a3
    and h                                         ; $47df: $a4
    and l                                         ; $47e0: $a5
    add sp, -$59                                  ; $47e1: $e8 $a7
    xor b                                         ; $47e3: $a8
    jp hl                                         ; $47e4: $e9


    pop de                                        ; $47e5: $d1
    adc e                                         ; $47e6: $8b
    adc e                                         ; $47e7: $8b
    adc e                                         ; $47e8: $8b
    adc e                                         ; $47e9: $8b
    adc e                                         ; $47ea: $8b
    adc e                                         ; $47eb: $8b
    adc e                                         ; $47ec: $8b
    adc h                                         ; $47ed: $8c
    adc e                                         ; $47ee: $8b
    adc e                                         ; $47ef: $8b
    adc e                                         ; $47f0: $8b
    adc e                                         ; $47f1: $8b
    adc e                                         ; $47f2: $8b
    adc e                                         ; $47f3: $8b
    adc h                                         ; $47f4: $8c
    add e                                         ; $47f5: $83
    pop de                                        ; $47f6: $d1
    pop de                                        ; $47f7: $d1
    pop de                                        ; $47f8: $d1
    pop de                                        ; $47f9: $d1
    pop de                                        ; $47fa: $d1
    pop de                                        ; $47fb: $d1
    pop de                                        ; $47fc: $d1
    pop de                                        ; $47fd: $d1
    ld [$d1d1], a                                 ; $47fe: $ea $d1 $d1
    pop de                                        ; $4801: $d1
    pop de                                        ; $4802: $d1
    pop de                                        ; $4803: $d1
    pop de                                        ; $4804: $d1
    pop de                                        ; $4805: $d1
    add e                                         ; $4806: $83
    add e                                         ; $4807: $83
    add e                                         ; $4808: $83
    add e                                         ; $4809: $83
    add e                                         ; $480a: $83
    add e                                         ; $480b: $83
    add e                                         ; $480c: $83
    add e                                         ; $480d: $83
    adc e                                         ; $480e: $8b
    add e                                         ; $480f: $83
    add e                                         ; $4810: $83
    add e                                         ; $4811: $83
    add e                                         ; $4812: $83
    add e                                         ; $4813: $83
    add e                                         ; $4814: $83
    add e                                         ; $4815: $83
    jp nc, $e0d3                                  ; $4816: $d2 $d3 $e0

    pop hl                                        ; $4819: $e1
    sub $d7                                       ; $481a: $d6 $d7
    ld [c], a                                     ; $481c: $e2
    db $e3                                        ; $481d: $e3
    jp c, $e4db                                   ; $481e: $da $db $e4

    push hl                                       ; $4821: $e5
    sbc $df                                       ; $4822: $de $df
    pop de                                        ; $4824: $d1
    and $8b                                       ; $4825: $e6 $8b
    adc e                                         ; $4827: $8b
    adc e                                         ; $4828: $8b
    adc e                                         ; $4829: $8b
    adc h                                         ; $482a: $8c
    adc e                                         ; $482b: $8b
    adc e                                         ; $482c: $8b
    adc h                                         ; $482d: $8c
    adc e                                         ; $482e: $8b
    adc e                                         ; $482f: $8b
    adc h                                         ; $4830: $8c
    adc e                                         ; $4831: $8b
    adc e                                         ; $4832: $8b
    adc e                                         ; $4833: $8b
    add e                                         ; $4834: $83
    adc h                                         ; $4835: $8c
    jp $d1eb                                      ; $4836: $c3 $eb $d1


    pop de                                        ; $4839: $d1
    rst $00                                       ; $483a: $c7
    pop de                                        ; $483b: $d1
    pop de                                        ; $483c: $d1
    pop de                                        ; $483d: $d1
    set 2, c                                      ; $483e: $cb $d1
    pop de                                        ; $4840: $d1
    pop de                                        ; $4841: $d1
    pop de                                        ; $4842: $d1
    pop de                                        ; $4843: $d1
    pop de                                        ; $4844: $d1
    pop de                                        ; $4845: $d1
    adc e                                         ; $4846: $8b
    adc e                                         ; $4847: $8b
    add e                                         ; $4848: $83
    add e                                         ; $4849: $83
    adc h                                         ; $484a: $8c
    add e                                         ; $484b: $83
    add e                                         ; $484c: $83
    add e                                         ; $484d: $83
    adc e                                         ; $484e: $8b
    add e                                         ; $484f: $83
    add e                                         ; $4850: $83

Jump_080_4851:
    add e                                         ; $4851: $83
    add e                                         ; $4852: $83
    add e                                         ; $4853: $83
    add e                                         ; $4854: $83
    add e                                         ; $4855: $83
    pop de                                        ; $4856: $d1
    pop de                                        ; $4857: $d1
    pop de                                        ; $4858: $d1
    sub l                                         ; $4859: $95
    pop de                                        ; $485a: $d1
    pop de                                        ; $485b: $d1
    pop de                                        ; $485c: $d1
    sub l                                         ; $485d: $95
    pop de                                        ; $485e: $d1
    pop de                                        ; $485f: $d1
    pop de                                        ; $4860: $d1
    sub l                                         ; $4861: $95
    pop de                                        ; $4862: $d1
    pop de                                        ; $4863: $d1
    pop de                                        ; $4864: $d1
    sub [hl]                                      ; $4865: $96
    inc bc                                        ; $4866: $03
    inc bc                                        ; $4867: $03
    inc bc                                        ; $4868: $03
    add hl, bc                                    ; $4869: $09
    inc bc                                        ; $486a: $03
    inc bc                                        ; $486b: $03
    inc bc                                        ; $486c: $03
    add hl, bc                                    ; $486d: $09
    inc bc                                        ; $486e: $03
    inc bc                                        ; $486f: $03
    inc bc                                        ; $4870: $03
    add hl, bc                                    ; $4871: $09
    inc bc                                        ; $4872: $03
    inc bc                                        ; $4873: $03
    inc bc                                        ; $4874: $03
    add hl, bc                                    ; $4875: $09
    jr c, jr_080_48a0                             ; $4876: $38 $28

    add hl, hl                                    ; $4878: $29
    dec [hl]                                      ; $4879: $35
    inc a                                         ; $487a: $3c
    inc l                                         ; $487b: $2c
    dec l                                         ; $487c: $2d
    add hl, sp                                    ; $487d: $39
    ld e, h                                       ; $487e: $5c
    ld c, a                                       ; $487f: $4f
    ld d, b                                       ; $4880: $50
    ld e, c                                       ; $4881: $59
    ld d, d                                       ; $4882: $52
    ld b, c                                       ; $4883: $41
    ld b, d                                       ; $4884: $42
    ld b, e                                       ; $4885: $43
    ld bc, $0106                                  ; $4886: $01 $06 $01
    ld bc, $0601                                  ; $4889: $01 $01 $06
    ld bc, $0101                                  ; $488c: $01 $01 $01
    ld bc, $0101                                  ; $488f: $01 $01 $01
    ld [bc], a                                    ; $4892: $02
    ld [bc], a                                    ; $4893: $02
    ld [bc], a                                    ; $4894: $02
    ld [bc], a                                    ; $4895: $02
    ld [hl], $37                                  ; $4896: $36 $37
    jr c, jr_080_48d2                             ; $4898: $38 $38

    ld a, [hl-]                                   ; $489a: $3a
    dec sp                                        ; $489b: $3b
    inc a                                         ; $489c: $3c
    ld a, [hl+]                                   ; $489d: $2a
    ld e, d                                       ; $489e: $5a
    ld e, e                                       ; $489f: $5b

jr_080_48a0:
    ld e, h                                       ; $48a0: $5c
    ld c, l                                       ; $48a1: $4d
    ld b, h                                       ; $48a2: $44
    ld d, c                                       ; $48a3: $51
    ld d, d                                       ; $48a4: $52
    ld b, c                                       ; $48a5: $41
    ld bc, $0101                                  ; $48a6: $01 $01 $01
    ld bc, $0101                                  ; $48a9: $01 $01 $01
    ld bc, $0101                                  ; $48ac: $01 $01 $01
    ld bc, $0101                                  ; $48af: $01 $01 $01
    ld [bc], a                                    ; $48b2: $02
    ld [bc], a                                    ; $48b3: $02
    ld [bc], a                                    ; $48b4: $02
    ld [bc], a                                    ; $48b5: $02
    pop de                                        ; $48b6: $d1
    pop de                                        ; $48b7: $d1
    pop de                                        ; $48b8: $d1
    ld h, h                                       ; $48b9: $64
    pop de                                        ; $48ba: $d1
    pop de                                        ; $48bb: $d1
    pop de                                        ; $48bc: $d1
    ld h, a                                       ; $48bd: $67
    pop de                                        ; $48be: $d1
    pop de                                        ; $48bf: $d1
    pop de                                        ; $48c0: $d1
    ld l, c                                       ; $48c1: $69
    pop de                                        ; $48c2: $d1
    pop de                                        ; $48c3: $d1
    pop de                                        ; $48c4: $d1
    ld a, c                                       ; $48c5: $79
    inc bc                                        ; $48c6: $03
    inc bc                                        ; $48c7: $03
    inc bc                                        ; $48c8: $03
    add e                                         ; $48c9: $83
    inc bc                                        ; $48ca: $03
    inc bc                                        ; $48cb: $03
    inc bc                                        ; $48cc: $03
    add e                                         ; $48cd: $83
    inc bc                                        ; $48ce: $03
    inc bc                                        ; $48cf: $03
    inc bc                                        ; $48d0: $03

Jump_080_48d1:
    add h                                         ; $48d1: $84

jr_080_48d2:
    inc bc                                        ; $48d2: $03
    inc bc                                        ; $48d3: $03
    inc bc                                        ; $48d4: $03
    add h                                         ; $48d5: $84
    ld h, l                                       ; $48d6: $65
    ld b, l                                       ; $48d7: $45
    ld d, e                                       ; $48d8: $53
    ld d, h                                       ; $48d9: $54
    ld l, b                                       ; $48da: $68
    ld [hl], l                                    ; $48db: $75
    adc d                                         ; $48dc: $8a
    adc e                                         ; $48dd: $8b
    ld l, d                                       ; $48de: $6a
    db $ec                                        ; $48df: $ec
    db $ed                                        ; $48e0: $ed
    adc [hl]                                      ; $48e1: $8e
    ld a, d                                       ; $48e2: $7a
    xor $53                                       ; $48e3: $ee $53
    rst $28                                       ; $48e5: $ef
    add e                                         ; $48e6: $83
    ld [bc], a                                    ; $48e7: $02
    ld [bc], a                                    ; $48e8: $02
    dec b                                         ; $48e9: $05
    add h                                         ; $48ea: $84
    ld [bc], a                                    ; $48eb: $02
    dec c                                         ; $48ec: $0d
    ld a, [bc]                                    ; $48ed: $0a
    add e                                         ; $48ee: $83
    ld a, [bc]                                    ; $48ef: $0a
    ld a, [bc]                                    ; $48f0: $0a
    ld a, [bc]                                    ; $48f1: $0a
    add e                                         ; $48f2: $83
    ld a, [bc]                                    ; $48f3: $0a
    dec b                                         ; $48f4: $05
    adc e                                         ; $48f5: $8b
    ldh a, [$6c]                                  ; $48f6: $f0 $6c
    ld d, h                                       ; $48f8: $54
    ld b, l                                       ; $48f9: $45
    add d                                         ; $48fa: $82
    ld h, e                                       ; $48fb: $63
    add e                                         ; $48fc: $83
    adc d                                         ; $48fd: $8a
    pop af                                        ; $48fe: $f1
    ld a, [c]                                     ; $48ff: $f2
    di                                            ; $4900: $f3
    db $f4                                        ; $4901: $f4
    push af                                       ; $4902: $f5
    or $f7                                        ; $4903: $f6 $f7
    ld hl, sp+$0d                                 ; $4905: $f8 $0d
    dec b                                         ; $4907: $05
    ld [bc], a                                    ; $4908: $02
    ld [bc], a                                    ; $4909: $02
    ld a, [bc]                                    ; $490a: $0a
    ld [bc], a                                    ; $490b: $02
    ld a, [bc]                                    ; $490c: $0a
    ld a, [bc]                                    ; $490d: $0a
    adc e                                         ; $490e: $8b
    adc e                                         ; $490f: $8b
    adc e                                         ; $4910: $8b
    adc h                                         ; $4911: $8c
    adc e                                         ; $4912: $8b
    adc e                                         ; $4913: $8b
    adc h                                         ; $4914: $8c
    adc e                                         ; $4915: $8b
    pop de                                        ; $4916: $d1
    pop de                                        ; $4917: $d1
    pop de                                        ; $4918: $d1
    halt                                          ; $4919: $76
    pop de                                        ; $491a: $d1
    pop de                                        ; $491b: $d1
    pop de                                        ; $491c: $d1
    ld [hl], a                                    ; $491d: $77
    pop de                                        ; $491e: $d1
    pop de                                        ; $491f: $d1
    pop de                                        ; $4920: $d1
    ld a, b                                       ; $4921: $78
    pop de                                        ; $4922: $d1
    pop de                                        ; $4923: $d1
    pop de                                        ; $4924: $d1
    ld h, c                                       ; $4925: $61
    inc bc                                        ; $4926: $03
    inc bc                                        ; $4927: $03
    inc bc                                        ; $4928: $03
    and h                                         ; $4929: $a4
    inc bc                                        ; $492a: $03
    inc bc                                        ; $492b: $03
    inc bc                                        ; $492c: $03
    and e                                         ; $492d: $a3
    inc bc                                        ; $492e: $03
    inc bc                                        ; $492f: $03
    inc bc                                        ; $4930: $03
    and h                                         ; $4931: $a4
    inc bc                                        ; $4932: $03
    inc bc                                        ; $4933: $03
    inc bc                                        ; $4934: $03
    add h                                         ; $4935: $84
    ld l, l                                       ; $4936: $6d
    ld b, a                                       ; $4937: $47
    ld h, e                                       ; $4938: $63
    ld l, l                                       ; $4939: $6d
    ld [hl], b                                    ; $493a: $70
    add c                                         ; $493b: $81
    ld h, [hl]                                    ; $493c: $66
    ld [hl], b                                    ; $493d: $70
    ld [hl], e                                    ; $493e: $73
    add e                                         ; $493f: $83
    adc d                                         ; $4940: $8a
    ld [hl], e                                    ; $4941: $73
    ld h, d                                       ; $4942: $62
    ld [hl], l                                    ; $4943: $75
    db $ed                                        ; $4944: $ed
    ld h, d                                       ; $4945: $62
    add e                                         ; $4946: $83
    ld [bc], a                                    ; $4947: $02

Jump_080_4948:
    dec b                                         ; $4948: $05

Call_080_4949:
Jump_080_4949:
    and h                                         ; $4949: $a4
    and e                                         ; $494a: $a3
    ld a, [bc]                                    ; $494b: $0a
    dec b                                         ; $494c: $05
    add h                                         ; $494d: $84
    and e                                         ; $494e: $a3
    dec c                                         ; $494f: $0d
    ld a, [bc]                                    ; $4950: $0a
    add e                                         ; $4951: $83
    add e                                         ; $4952: $83
    dec b                                         ; $4953: $05
    ld a, [bc]                                    ; $4954: $0a

Jump_080_4955:
    and h                                         ; $4955: $a4
    halt                                          ; $4956: $76
    pop de                                        ; $4957: $d1
    pop de                                        ; $4958: $d1
    pop de                                        ; $4959: $d1
    ld [hl], a                                    ; $495a: $77
    pop de                                        ; $495b: $d1
    pop de                                        ; $495c: $d1
    pop de                                        ; $495d: $d1
    ld a, b                                       ; $495e: $78
    pop de                                        ; $495f: $d1
    pop de                                        ; $4960: $d1
    pop de                                        ; $4961: $d1
    ld h, c                                       ; $4962: $61
    pop de                                        ; $4963: $d1
    pop de                                        ; $4964: $d1
    pop de                                        ; $4965: $d1
    add e                                         ; $4966: $83
    inc bc                                        ; $4967: $03
    inc bc                                        ; $4968: $03
    inc bc                                        ; $4969: $03
    add e                                         ; $496a: $83
    inc bc                                        ; $496b: $03
    inc bc                                        ; $496c: $03
    inc bc                                        ; $496d: $03
    add e                                         ; $496e: $83
    inc bc                                        ; $496f: $03
    inc bc                                        ; $4970: $03
    inc bc                                        ; $4971: $03
    and h                                         ; $4972: $a4
    inc bc                                        ; $4973: $03
    inc bc                                        ; $4974: $03
    inc bc                                        ; $4975: $03
    pop de                                        ; $4976: $d1
    pop de                                        ; $4977: $d1
    pop de                                        ; $4978: $d1
    ld h, h                                       ; $4979: $64
    pop de                                        ; $497a: $d1
    pop de                                        ; $497b: $d1
    pop de                                        ; $497c: $d1
    ld h, a                                       ; $497d: $67
    pop de                                        ; $497e: $d1
    pop de                                        ; $497f: $d1
    pop de                                        ; $4980: $d1
    ld l, c                                       ; $4981: $69
    pop de                                        ; $4982: $d1
    pop de                                        ; $4983: $d1
    pop de                                        ; $4984: $d1
    ld a, c                                       ; $4985: $79
    inc bc                                        ; $4986: $03
    inc bc                                        ; $4987: $03
    inc bc                                        ; $4988: $03
    add e                                         ; $4989: $83
    inc bc                                        ; $498a: $03
    inc bc                                        ; $498b: $03
    inc bc                                        ; $498c: $03
    add h                                         ; $498d: $84
    inc bc                                        ; $498e: $03
    inc bc                                        ; $498f: $03
    inc bc                                        ; $4990: $03
    add h                                         ; $4991: $84
    inc bc                                        ; $4992: $03
    inc bc                                        ; $4993: $03
    inc bc                                        ; $4994: $03
    add e                                         ; $4995: $83
    ld h, l                                       ; $4996: $65
    add b                                         ; $4997: $80
    add l                                         ; $4998: $85
    ld h, l                                       ; $4999: $65
    ld l, b                                       ; $499a: $68
    ld b, a                                       ; $499b: $47
    ld c, b                                       ; $499c: $48
    ld l, b                                       ; $499d: $68
    ld l, d                                       ; $499e: $6a
    ld [hl], l                                    ; $499f: $75
    adc b                                         ; $49a0: $88
    ld l, d                                       ; $49a1: $6a
    ld a, d                                       ; $49a2: $7a
    add e                                         ; $49a3: $83
    adc d                                         ; $49a4: $8a
    ld a, d                                       ; $49a5: $7a
    add h                                         ; $49a6: $84
    dec c                                         ; $49a7: $0d
    ld a, [bc]                                    ; $49a8: $0a
    and e                                         ; $49a9: $a3
    add h                                         ; $49aa: $84
    dec b                                         ; $49ab: $05
    ld [bc], a                                    ; $49ac: $02
    and e                                         ; $49ad: $a3
    add e                                         ; $49ae: $83
    ld [bc], a                                    ; $49af: $02
    ld a, [bc]                                    ; $49b0: $0a
    and e                                         ; $49b1: $a3
    add e                                         ; $49b2: $83
    ld a, [bc]                                    ; $49b3: $0a
    ld a, [bc]                                    ; $49b4: $0a
    and h                                         ; $49b5: $a4
    ld h, h                                       ; $49b6: $64
    pop de                                        ; $49b7: $d1
    pop de                                        ; $49b8: $d1
    pop de                                        ; $49b9: $d1
    ld h, a                                       ; $49ba: $67
    pop de                                        ; $49bb: $d1
    pop de                                        ; $49bc: $d1
    pop de                                        ; $49bd: $d1
    ld l, c                                       ; $49be: $69
    pop de                                        ; $49bf: $d1
    pop de                                        ; $49c0: $d1
    pop de                                        ; $49c1: $d1
    ld a, c                                       ; $49c2: $79
    pop de                                        ; $49c3: $d1
    pop de                                        ; $49c4: $d1
    pop de                                        ; $49c5: $d1
    and h                                         ; $49c6: $a4
    inc bc                                        ; $49c7: $03
    inc bc                                        ; $49c8: $03
    inc bc                                        ; $49c9: $03
    and e                                         ; $49ca: $a3
    inc bc                                        ; $49cb: $03
    inc bc                                        ; $49cc: $03
    inc bc                                        ; $49cd: $03
    and e                                         ; $49ce: $a3
    inc bc                                        ; $49cf: $03
    inc bc                                        ; $49d0: $03
    inc bc                                        ; $49d1: $03
    and h                                         ; $49d2: $a4
    inc bc                                        ; $49d3: $03
    inc bc                                        ; $49d4: $03
    inc bc                                        ; $49d5: $03
    jr jr_080_49f1                                ; $49d6: $18 $19

    jr c, @+$18                                   ; $49d8: $38 $16

    inc e                                         ; $49da: $1c
    dec e                                         ; $49db: $1d
    inc a                                         ; $49dc: $3c
    ld a, [hl+]                                   ; $49dd: $2a
    ccf                                           ; $49de: $3f
    ld b, b                                       ; $49df: $40
    ld e, h                                       ; $49e0: $5c
    ld c, l                                       ; $49e1: $4d
    ld b, d                                       ; $49e2: $42
    ld b, e                                       ; $49e3: $43
    ld b, h                                       ; $49e4: $44
    ld d, c                                       ; $49e5: $51
    ld b, $01                                     ; $49e6: $06 $01
    ld bc, $0601                                  ; $49e8: $01 $01 $06
    ld bc, $0101                                  ; $49eb: $01 $01 $01
    ld bc, $0101                                  ; $49ee: $01 $01 $01

jr_080_49f1:
    ld bc, $0202                                  ; $49f1: $01 $02 $02
    ld [bc], a                                    ; $49f4: $02
    ld [bc], a                                    ; $49f5: $02
    rla                                           ; $49f6: $17
    jr c, jr_080_4a2e                             ; $49f7: $38 $35

    ld [hl], $3c                                  ; $49f9: $36 $3c
    inc a                                         ; $49fb: $3c
    add hl, sp                                    ; $49fc: $39
    ld a, [hl-]                                   ; $49fd: $3a
    ld e, h                                       ; $49fe: $5c
    ld e, h                                       ; $49ff: $5c
    ld e, c                                       ; $4a00: $59
    ld e, d                                       ; $4a01: $5a
    ld b, h                                       ; $4a02: $44
    ld d, c                                       ; $4a03: $51
    ld d, d                                       ; $4a04: $52
    ld b, c                                       ; $4a05: $41
    ld bc, $0101                                  ; $4a06: $01 $01 $01
    ld bc, $0101                                  ; $4a09: $01 $01 $01
    ld bc, $0101                                  ; $4a0c: $01 $01 $01
    ld bc, $0101                                  ; $4a0f: $01 $01 $01
    ld [bc], a                                    ; $4a12: $02
    ld [bc], a                                    ; $4a13: $02
    ld [bc], a                                    ; $4a14: $02
    ld [bc], a                                    ; $4a15: $02
    scf                                           ; $4a16: $37
    add a                                         ; $4a17: $87
    ld l, [hl]                                    ; $4a18: $6e
    add d                                         ; $4a19: $82
    dec sp                                        ; $4a1a: $3b
    adc c                                         ; $4a1b: $89
    adc [hl]                                      ; $4a1c: $8e
    ld b, l                                       ; $4a1d: $45
    ld e, e                                       ; $4a1e: $5b
    adc l                                         ; $4a1f: $8d
    sub b                                         ; $4a20: $90
    ld [hl], h                                    ; $4a21: $74
    ld b, d                                       ; $4a22: $42
    adc a                                         ; $4a23: $8f
    ld l, [hl]                                    ; $4a24: $6e
    add b                                         ; $4a25: $80
    ld bc, $020a                                  ; $4a26: $01 $0a $02
    ld a, [bc]                                    ; $4a29: $0a
    ld bc, $0a0a                                  ; $4a2a: $01 $0a $0a
    ld [bc], a                                    ; $4a2d: $02

jr_080_4a2e:
    ld bc, $0a0a                                  ; $4a2e: $01 $0a $0a
    ld [bc], a                                    ; $4a31: $02
    ld [bc], a                                    ; $4a32: $02
    ld a, [bc]                                    ; $4a33: $0a
    ld [bc], a                                    ; $4a34: $02
    ld a, [bc]                                    ; $4a35: $0a
    ld l, a                                       ; $4a36: $6f
    add e                                         ; $4a37: $83
    add b                                         ; $4a38: $80
    ld [hl], e                                    ; $4a39: $73
    ld [hl], d                                    ; $4a3a: $72
    ld d, h                                       ; $4a3b: $54
    ld b, l                                       ; $4a3c: $45
    ld h, d                                       ; $4a3d: $62
    ld h, e                                       ; $4a3e: $63
    xor $85                                       ; $4a3f: $ee $85
    ld h, l                                       ; $4a41: $65
    ld b, [hl]                                    ; $4a42: $46
    ld b, a                                       ; $4a43: $47
    add b                                         ; $4a44: $80
    ld l, b                                       ; $4a45: $68
    ld [bc], a                                    ; $4a46: $02
    ld a, [bc]                                    ; $4a47: $0a
    ld a, [bc]                                    ; $4a48: $0a
    add e                                         ; $4a49: $83
    dec b                                         ; $4a4a: $05
    ld [bc], a                                    ; $4a4b: $02
    ld [bc], a                                    ; $4a4c: $02
    and e                                         ; $4a4d: $a3
    dec b                                         ; $4a4e: $05
    ld a, [bc]                                    ; $4a4f: $0a
    dec c                                         ; $4a50: $0d
    and h                                         ; $4a51: $a4
    ld [bc], a                                    ; $4a52: $02
    dec b                                         ; $4a53: $05
    dec c                                         ; $4a54: $0d
    and h                                         ; $4a55: $a4
    ld a, e                                       ; $4a56: $7b
    ldh a, [rLYC]                                 ; $4a57: $f0 $45
    ld d, e                                       ; $4a59: $53
    adc e                                         ; $4a5a: $8b
    add d                                         ; $4a5b: $82
    ld l, a                                       ; $4a5c: $6f
    add e                                         ; $4a5d: $83
    ld sp, hl                                     ; $4a5e: $f9
    ld a, [$fcfb]                                 ; $4a5f: $fa $fb $fc
    db $fd                                        ; $4a62: $fd
    cp $ff                                        ; $4a63: $fe $ff
    nop                                           ; $4a65: $00
    ld [bc], a                                    ; $4a66: $02
    ld a, [bc]                                    ; $4a67: $0a
    ld [bc], a                                    ; $4a68: $02
    ld [bc], a                                    ; $4a69: $02
    ld a, [bc]                                    ; $4a6a: $0a
    ld a, [bc]                                    ; $4a6b: $0a
    ld [bc], a                                    ; $4a6c: $02
    dec c                                         ; $4a6d: $0d
    adc h                                         ; $4a6e: $8c
    adc h                                         ; $4a6f: $8c
    adc e                                         ; $4a70: $8b
    adc e                                         ; $4a71: $8b
    adc e                                         ; $4a72: $8b
    adc e                                         ; $4a73: $8b
    adc e                                         ; $4a74: $8b
    adc e                                         ; $4a75: $8b
    adc b                                         ; $4a76: $88
    ld a, e                                       ; $4a77: $7b
    ld d, e                                       ; $4a78: $53
    ld d, h                                       ; $4a79: $54
    adc d                                         ; $4a7a: $8a
    ld [hl], l                                    ; $4a7b: $75
    ld h, e                                       ; $4a7c: $63
    ld l, a                                       ; $4a7d: $6f
    ld bc, $0302                                  ; $4a7e: $01 $02 $03
    ld a, [c]                                     ; $4a81: $f2
    inc b                                         ; $4a82: $04
    dec b                                         ; $4a83: $05
    ld b, $f6                                     ; $4a84: $06 $f6
    ld a, [bc]                                    ; $4a86: $0a
    dec b                                         ; $4a87: $05
    ld [bc], a                                    ; $4a88: $02
    dec b                                         ; $4a89: $05
    ld a, [bc]                                    ; $4a8a: $0a
    ld [bc], a                                    ; $4a8b: $02
    ld [bc], a                                    ; $4a8c: $02
    ld [bc], a                                    ; $4a8d: $02
    adc e                                         ; $4a8e: $8b
    adc h                                         ; $4a8f: $8c
    adc e                                         ; $4a90: $8b
    adc h                                         ; $4a91: $8c
    adc h                                         ; $4a92: $8c
    adc h                                         ; $4a93: $8c
    adc e                                         ; $4a94: $8b
    adc h                                         ; $4a95: $8c
    add c                                         ; $4a96: $81
    ld d, e                                       ; $4a97: $53
    ld a, e                                       ; $4a98: $7b
    ldh a, [$75]                                  ; $4a99: $f0 $75
    adc d                                         ; $4a9b: $8a
    adc e                                         ; $4a9c: $8b
    ld [hl], l                                    ; $4a9d: $75
    di                                            ; $4a9e: $f3
    db $f4                                        ; $4a9f: $f4
    ld sp, hl                                     ; $4aa0: $f9
    ld a, [$f8f7]                                 ; $4aa1: $fa $f7 $f8
    db $fd                                        ; $4aa4: $fd
    cp $0a                                        ; $4aa5: $fe $0a
    ld [bc], a                                    ; $4aa7: $02
    dec b                                         ; $4aa8: $05
    dec c                                         ; $4aa9: $0d
    ld [bc], a                                    ; $4aaa: $02
    ld a, [bc]                                    ; $4aab: $0a
    ld a, [bc]                                    ; $4aac: $0a
    ld [bc], a                                    ; $4aad: $02
    adc e                                         ; $4aae: $8b
    adc e                                         ; $4aaf: $8b
    adc e                                         ; $4ab0: $8b
    adc e                                         ; $4ab1: $8b
    adc h                                         ; $4ab2: $8c
    adc h                                         ; $4ab3: $8c
    adc h                                         ; $4ab4: $8c
    adc h                                         ; $4ab5: $8c
    ld l, h                                       ; $4ab6: $6c
    ld d, h                                       ; $4ab7: $54
    ld b, l                                       ; $4ab8: $45
    ld l, d                                       ; $4ab9: $6a
    ld l, a                                       ; $4aba: $6f
    add e                                         ; $4abb: $83
    ld [hl], l                                    ; $4abc: $75
    ld a, d                                       ; $4abd: $7a
    ei                                            ; $4abe: $fb
    db $fc                                        ; $4abf: $fc
    ld bc, $ff07                                  ; $4ac0: $01 $07 $ff
    nop                                           ; $4ac3: $00
    inc b                                         ; $4ac4: $04
    ld [$0205], sp                                ; $4ac5: $08 $05 $02
    ld [bc], a                                    ; $4ac8: $02
    and h                                         ; $4ac9: $a4
    ld [bc], a                                    ; $4aca: $02
    ld a, [bc]                                    ; $4acb: $0a
    ld [bc], a                                    ; $4acc: $02
    and h                                         ; $4acd: $a4
    adc h                                         ; $4ace: $8c
    adc e                                         ; $4acf: $8b
    adc e                                         ; $4ad0: $8b
    adc e                                         ; $4ad1: $8b
    adc e                                         ; $4ad2: $8b
    adc h                                         ; $4ad3: $8c
    adc h                                         ; $4ad4: $8c
    adc e                                         ; $4ad5: $8b
    pop de                                        ; $4ad6: $d1
    pop de                                        ; $4ad7: $d1
    pop de                                        ; $4ad8: $d1
    pop de                                        ; $4ad9: $d1
    pop de                                        ; $4ada: $d1
    pop de                                        ; $4adb: $d1
    pop de                                        ; $4adc: $d1
    pop de                                        ; $4add: $d1
    pop de                                        ; $4ade: $d1
    pop de                                        ; $4adf: $d1
    pop de                                        ; $4ae0: $d1
    pop de                                        ; $4ae1: $d1
    pop de                                        ; $4ae2: $d1
    pop de                                        ; $4ae3: $d1
    pop de                                        ; $4ae4: $d1
    pop de                                        ; $4ae5: $d1
    inc bc                                        ; $4ae6: $03
    inc bc                                        ; $4ae7: $03
    inc bc                                        ; $4ae8: $03
    inc b                                         ; $4ae9: $04
    inc bc                                        ; $4aea: $03
    inc bc                                        ; $4aeb: $03
    inc bc                                        ; $4aec: $03
    inc bc                                        ; $4aed: $03
    inc bc                                        ; $4aee: $03
    inc bc                                        ; $4aef: $03
    inc bc                                        ; $4af0: $03
    inc bc                                        ; $4af1: $03
    inc bc                                        ; $4af2: $03
    inc bc                                        ; $4af3: $03
    inc bc                                        ; $4af4: $03
    inc bc                                        ; $4af5: $03
    ld a, b                                       ; $4af6: $78
    pop de                                        ; $4af7: $d1
    pop de                                        ; $4af8: $d1
    pop de                                        ; $4af9: $d1
    ld h, c                                       ; $4afa: $61
    pop de                                        ; $4afb: $d1
    pop de                                        ; $4afc: $d1
    pop de                                        ; $4afd: $d1
    ld h, h                                       ; $4afe: $64
    pop de                                        ; $4aff: $d1
    pop de                                        ; $4b00: $d1
    pop de                                        ; $4b01: $d1
    ld h, a                                       ; $4b02: $67
    pop de                                        ; $4b03: $d1
    pop de                                        ; $4b04: $d1
    pop de                                        ; $4b05: $d1
    add e                                         ; $4b06: $83
    add e                                         ; $4b07: $83
    inc bc                                        ; $4b08: $03
    inc bc                                        ; $4b09: $03
    and e                                         ; $4b0a: $a3
    add e                                         ; $4b0b: $83
    inc bc                                        ; $4b0c: $03
    inc bc                                        ; $4b0d: $03
    and e                                         ; $4b0e: $a3
    add e                                         ; $4b0f: $83
    inc bc                                        ; $4b10: $03
    inc bc                                        ; $4b11: $03
    and e                                         ; $4b12: $a3
    add e                                         ; $4b13: $83
    inc bc                                        ; $4b14: $03
    inc bc                                        ; $4b15: $03
    pop de                                        ; $4b16: $d1
    pop de                                        ; $4b17: $d1
    pop de                                        ; $4b18: $d1
    pop de                                        ; $4b19: $d1
    pop de                                        ; $4b1a: $d1
    pop de                                        ; $4b1b: $d1
    pop de                                        ; $4b1c: $d1
    pop de                                        ; $4b1d: $d1
    pop de                                        ; $4b1e: $d1
    pop de                                        ; $4b1f: $d1
    sub h                                         ; $4b20: $94
    ld [$d1d1], sp                                ; $4b21: $08 $d1 $d1
    sub l                                         ; $4b24: $95
    dec bc                                        ; $4b25: $0b
    inc bc                                        ; $4b26: $03
    inc bc                                        ; $4b27: $03
    inc bc                                        ; $4b28: $03
    inc bc                                        ; $4b29: $03
    inc bc                                        ; $4b2a: $03
    inc bc                                        ; $4b2b: $03
    inc bc                                        ; $4b2c: $03
    inc bc                                        ; $4b2d: $03
    inc bc                                        ; $4b2e: $03
    inc bc                                        ; $4b2f: $03
    add hl, bc                                    ; $4b30: $09
    ld bc, $0303                                  ; $4b31: $01 $03 $03
    add hl, bc                                    ; $4b34: $09
    ld bc, $d1d4                                  ; $4b35: $01 $d4 $d1
    pop de                                        ; $4b38: $d1
    inc b                                         ; $4b39: $04
    sub $d1                                       ; $4b3a: $d6 $d1
    pop de                                        ; $4b3c: $d1
    ld b, $ec                                     ; $4b3d: $06 $ec
    db $ed                                        ; $4b3f: $ed
    ld [$f009], sp                                ; $4b40: $08 $09 $f0
    ld a, [hl]                                    ; $4b43: $7e
    dec bc                                        ; $4b44: $0b
    inc c                                         ; $4b45: $0c
    ld bc, $0303                                  ; $4b46: $01 $03 $03
    ld b, $01                                     ; $4b49: $06 $01
    inc bc                                        ; $4b4b: $03
    inc bc                                        ; $4b4c: $03
    ld b, $01                                     ; $4b4d: $06 $01
    ld bc, $0601                                  ; $4b4f: $01 $01 $06
    ld bc, $0101                                  ; $4b52: $01 $01 $01
    ld b, $69                                     ; $4b55: $06 $69
    pop de                                        ; $4b57: $d1
    pop de                                        ; $4b58: $d1
    pop de                                        ; $4b59: $d1
    ld a, c                                       ; $4b5a: $79
    pop de                                        ; $4b5b: $d1
    pop de                                        ; $4b5c: $d1
    pop de                                        ; $4b5d: $d1
    add hl, bc                                    ; $4b5e: $09
    pop de                                        ; $4b5f: $d1
    pop de                                        ; $4b60: $d1
    pop de                                        ; $4b61: $d1
    ld a, [$d1d1]                                 ; $4b62: $fa $d1 $d1
    pop de                                        ; $4b65: $d1
    and e                                         ; $4b66: $a3
    add e                                         ; $4b67: $83
    inc bc                                        ; $4b68: $03
    inc bc                                        ; $4b69: $03
    and h                                         ; $4b6a: $a4
    add e                                         ; $4b6b: $83
    inc bc                                        ; $4b6c: $03
    inc bc                                        ; $4b6d: $03
    adc e                                         ; $4b6e: $8b
    add e                                         ; $4b6f: $83
    inc bc                                        ; $4b70: $03
    inc bc                                        ; $4b71: $03
    db $e3                                        ; $4b72: $e3
    add e                                         ; $4b73: $83
    inc bc                                        ; $4b74: $03
    inc bc                                        ; $4b75: $03
    pop de                                        ; $4b76: $d1
    pop de                                        ; $4b77: $d1
    sub l                                         ; $4b78: $95
    ld sp, $d1d1                                  ; $4b79: $31 $d1 $d1
    sub l                                         ; $4b7c: $95
    inc [hl]                                      ; $4b7d: $34
    pop de                                        ; $4b7e: $d1
    pop de                                        ; $4b7f: $d1
    sub l                                         ; $4b80: $95
    jr c, @-$2d                                   ; $4b81: $38 $d1

    pop de                                        ; $4b83: $d1
    sub l                                         ; $4b84: $95
    inc a                                         ; $4b85: $3c
    inc bc                                        ; $4b86: $03
    inc bc                                        ; $4b87: $03
    add hl, bc                                    ; $4b88: $09
    ld bc, $0303                                  ; $4b89: $01 $03 $03
    add hl, bc                                    ; $4b8c: $09
    ld bc, $0303                                  ; $4b8d: $01 $03 $03
    add hl, bc                                    ; $4b90: $09
    ld bc, $0303                                  ; $4b91: $01 $03 $03
    add hl, bc                                    ; $4b94: $09
    ld bc, $0f0e                                  ; $4b95: $01 $0e $0f
    ld sp, $122f                                  ; $4b98: $31 $2f $12
    inc de                                        ; $4b9b: $13
    ld [hl-], a                                   ; $4b9c: $32
    inc sp                                        ; $4b9d: $33
    ld d, $17                                     ; $4b9e: $16 $17
    dec [hl]                                      ; $4ba0: $35
    ld [hl], $2a                                  ; $4ba1: $36 $2a
    inc a                                         ; $4ba3: $3c
    add hl, sp                                    ; $4ba4: $39
    ld a, [hl-]                                   ; $4ba5: $3a
    ld bc, $0101                                  ; $4ba6: $01 $01 $01
    ld b, $01                                     ; $4ba9: $06 $01
    ld bc, $0601                                  ; $4bab: $01 $01 $06
    ld bc, $0101                                  ; $4bae: $01 $01 $01
    ld b, $01                                     ; $4bb1: $06 $01
    ld bc, $0601                                  ; $4bb3: $01 $01 $06
    pop de                                        ; $4bb6: $d1
    pop de                                        ; $4bb7: $d1
    sub l                                         ; $4bb8: $95
    ld e, h                                       ; $4bb9: $5c
    pop de                                        ; $4bba: $d1
    pop de                                        ; $4bbb: $d1
    sub [hl]                                      ; $4bbc: $96
    sub a                                         ; $4bbd: $97
    pop de                                        ; $4bbe: $d1
    pop de                                        ; $4bbf: $d1
    pop de                                        ; $4bc0: $d1
    sbc b                                         ; $4bc1: $98
    pop de                                        ; $4bc2: $d1
    pop de                                        ; $4bc3: $d1
    pop de                                        ; $4bc4: $d1
    halt                                          ; $4bc5: $76
    inc bc                                        ; $4bc6: $03
    inc bc                                        ; $4bc7: $03
    add hl, bc                                    ; $4bc8: $09
    ld bc, $0303                                  ; $4bc9: $01 $03 $03
    add hl, bc                                    ; $4bcc: $09
    ld a, [bc]                                    ; $4bcd: $0a
    inc bc                                        ; $4bce: $03
    inc bc                                        ; $4bcf: $03
    inc bc                                        ; $4bd0: $03
    adc e                                         ; $4bd1: $8b
    inc bc                                        ; $4bd2: $03
    inc bc                                        ; $4bd3: $03
    inc bc                                        ; $4bd4: $03
    and e                                         ; $4bd5: $a3
    ld c, l                                       ; $4bd6: $4d
    ld e, h                                       ; $4bd7: $5c
    ld e, c                                       ; $4bd8: $59
    ld e, d                                       ; $4bd9: $5a
    ld b, e                                       ; $4bda: $43
    ld b, h                                       ; $4bdb: $44
    ld d, d                                       ; $4bdc: $52
    sub [hl]                                      ; $4bdd: $96
    ld l, l                                       ; $4bde: $6d
    ld d, h                                       ; $4bdf: $54
    ld l, l                                       ; $4be0: $6d
    halt                                          ; $4be1: $76
    ld l, l                                       ; $4be2: $6d
    ld l, e                                       ; $4be3: $6b
    ld [hl], b                                    ; $4be4: $70
    ld [hl], a                                    ; $4be5: $77
    ld bc, $0101                                  ; $4be6: $01 $01 $01
    ld b, $02                                     ; $4be9: $06 $02
    ld [bc], a                                    ; $4beb: $02
    ld [bc], a                                    ; $4bec: $02
    add hl, hl                                    ; $4bed: $29
    add h                                         ; $4bee: $84
    ld [bc], a                                    ; $4bef: $02
    and e                                         ; $4bf0: $a3
    add e                                         ; $4bf1: $83
    add h                                         ; $4bf2: $84
    ld [bc], a                                    ; $4bf3: $02
    add e                                         ; $4bf4: $83
    add h                                         ; $4bf5: $84
    pop de                                        ; $4bf6: $d1
    pop de                                        ; $4bf7: $d1
    pop de                                        ; $4bf8: $d1
    ld [hl], a                                    ; $4bf9: $77
    pop de                                        ; $4bfa: $d1
    pop de                                        ; $4bfb: $d1
    pop de                                        ; $4bfc: $d1
    ld a, b                                       ; $4bfd: $78
    pop de                                        ; $4bfe: $d1
    pop de                                        ; $4bff: $d1
    pop de                                        ; $4c00: $d1
    ld h, c                                       ; $4c01: $61
    pop de                                        ; $4c02: $d1
    pop de                                        ; $4c03: $d1
    pop de                                        ; $4c04: $d1
    ld h, h                                       ; $4c05: $64
    inc bc                                        ; $4c06: $03
    inc bc                                        ; $4c07: $03
    inc bc                                        ; $4c08: $03
    and h                                         ; $4c09: $a4
    inc bc                                        ; $4c0a: $03
    inc bc                                        ; $4c0b: $03
    inc bc                                        ; $4c0c: $03
    and h                                         ; $4c0d: $a4
    inc bc                                        ; $4c0e: $03
    inc bc                                        ; $4c0f: $03
    inc bc                                        ; $4c10: $03
    add h                                         ; $4c11: $84
    inc bc                                        ; $4c12: $03
    inc bc                                        ; $4c13: $03
    inc bc                                        ; $4c14: $03
    add h                                         ; $4c15: $84
    ld [hl], b                                    ; $4c16: $70
    ld l, [hl]                                    ; $4c17: $6e
    ld [hl], e                                    ; $4c18: $73
    ld a, b                                       ; $4c19: $78
    ld [hl], e                                    ; $4c1a: $73
    ld d, h                                       ; $4c1b: $54
    ld h, d                                       ; $4c1c: $62
    ld h, c                                       ; $4c1d: $61
    ld h, d                                       ; $4c1e: $62
    ld l, e                                       ; $4c1f: $6b
    ld h, l                                       ; $4c20: $65
    ld h, h                                       ; $4c21: $64
    ld h, l                                       ; $4c22: $65
    ld l, [hl]                                    ; $4c23: $6e
    ld l, b                                       ; $4c24: $68
    ld h, a                                       ; $4c25: $67
    and h                                         ; $4c26: $a4
    dec b                                         ; $4c27: $05
    add e                                         ; $4c28: $83
    add h                                         ; $4c29: $84
    and e                                         ; $4c2a: $a3
    dec b                                         ; $4c2b: $05
    and e                                         ; $4c2c: $a3
    and h                                         ; $4c2d: $a4
    add e                                         ; $4c2e: $83
    dec b                                         ; $4c2f: $05
    and e                                         ; $4c30: $a3
    and h                                         ; $4c31: $a4
    add e                                         ; $4c32: $83
    dec b                                         ; $4c33: $05
    and h                                         ; $4c34: $a4
    and h                                         ; $4c35: $a4
    pop de                                        ; $4c36: $d1
    pop de                                        ; $4c37: $d1
    pop de                                        ; $4c38: $d1
    pop de                                        ; $4c39: $d1
    pop de                                        ; $4c3a: $d1
    pop de                                        ; $4c3b: $d1
    pop de                                        ; $4c3c: $d1
    pop de                                        ; $4c3d: $d1
    pop de                                        ; $4c3e: $d1
    pop de                                        ; $4c3f: $d1
    pop de                                        ; $4c40: $d1
    pop de                                        ; $4c41: $d1
    pop de                                        ; $4c42: $d1
    pop de                                        ; $4c43: $d1
    pop de                                        ; $4c44: $d1
    pop de                                        ; $4c45: $d1
    add e                                         ; $4c46: $83
    inc bc                                        ; $4c47: $03
    inc bc                                        ; $4c48: $03
    inc bc                                        ; $4c49: $03
    add e                                         ; $4c4a: $83
    inc bc                                        ; $4c4b: $03
    inc bc                                        ; $4c4c: $03
    inc bc                                        ; $4c4d: $03
    add h                                         ; $4c4e: $84
    inc bc                                        ; $4c4f: $03
    inc bc                                        ; $4c50: $03
    inc bc                                        ; $4c51: $03
    add e                                         ; $4c52: $83
    inc bc                                        ; $4c53: $03
    inc bc                                        ; $4c54: $03
    inc bc                                        ; $4c55: $03
    pop de                                        ; $4c56: $d1
    jp nc, $d3d1                                  ; $4c57: $d2 $d1 $d3

    pop de                                        ; $4c5a: $d1
    call nc, $d5d1                                ; $4c5b: $d4 $d1 $d5
    pop de                                        ; $4c5e: $d1
    sub $d7                                       ; $4c5f: $d6 $d7
    ret c                                         ; $4c61: $d8

    pop de                                        ; $4c62: $d1
    db $e4                                        ; $4c63: $e4
    push hl                                       ; $4c64: $e5
    and $03                                       ; $4c65: $e6 $03
    ld bc, $0603                                  ; $4c67: $01 $03 $06
    inc bc                                        ; $4c6a: $03
    ld bc, $0603                                  ; $4c6b: $01 $03 $06
    ld bc, $0101                                  ; $4c6e: $01 $01 $01
    ld b, $01                                     ; $4c71: $06 $01
    ld bc, $0601                                  ; $4c73: $01 $01 $06
    pop de                                        ; $4c76: $d1
    jp c, $dbd1                                   ; $4c77: $da $d1 $db

    pop de                                        ; $4c7a: $d1
    call c, $ddd1                                 ; $4c7b: $dc $d1 $dd
    reti                                          ; $4c7e: $d9


    sbc $df                                       ; $4c7f: $de $df
    ldh [$e7], a                                  ; $4c81: $e0 $e7
    db $f4                                        ; $4c83: $f4
    pop de                                        ; $4c84: $d1
    push af                                       ; $4c85: $f5
    inc bc                                        ; $4c86: $03
    ld b, $03                                     ; $4c87: $06 $03
    ld bc, $0603                                  ; $4c89: $01 $03 $06
    inc bc                                        ; $4c8c: $03
    ld bc, $0601                                  ; $4c8d: $01 $01 $06
    ld bc, $0101                                  ; $4c90: $01 $01 $01
    ld b, $01                                     ; $4c93: $06 $01
    ld bc, $d1d1                                  ; $4c95: $01 $d1 $d1
    pop hl                                        ; $4c98: $e1
    pop de                                        ; $4c99: $d1
    pop de                                        ; $4c9a: $d1
    pop de                                        ; $4c9b: $d1
    ld [c], a                                     ; $4c9c: $e2
    pop de                                        ; $4c9d: $d1
    pop de                                        ; $4c9e: $d1
    pop de                                        ; $4c9f: $d1
    db $e3                                        ; $4ca0: $e3
    pop de                                        ; $4ca1: $d1
    or $03                                        ; $4ca2: $f6 $03
    inc b                                         ; $4ca4: $04
    pop de                                        ; $4ca5: $d1
    inc bc                                        ; $4ca6: $03
    inc bc                                        ; $4ca7: $03
    ld b, $03                                     ; $4ca8: $06 $03
    inc bc                                        ; $4caa: $03
    inc bc                                        ; $4cab: $03
    ld b, $03                                     ; $4cac: $06 $03
    ld bc, $0601                                  ; $4cae: $01 $01 $06
    ld bc, $0101                                  ; $4cb1: $01 $01 $01
    ld b, $01                                     ; $4cb4: $06 $01
    pop de                                        ; $4cb6: $d1
    pop de                                        ; $4cb7: $d1
    db $d3                                        ; $4cb8: $d3
    pop de                                        ; $4cb9: $d1
    pop de                                        ; $4cba: $d1
    pop de                                        ; $4cbb: $d1
    push de                                       ; $4cbc: $d5
    pop de                                        ; $4cbd: $d1
    pop de                                        ; $4cbe: $d1
    pop de                                        ; $4cbf: $d1
    ret c                                         ; $4cc0: $d8

    reti                                          ; $4cc1: $d9


    pop de                                        ; $4cc2: $d1
    pop de                                        ; $4cc3: $d1
    and $e7                                       ; $4cc4: $e6 $e7
    inc bc                                        ; $4cc6: $03
    inc bc                                        ; $4cc7: $03
    ld bc, $0303                                  ; $4cc8: $01 $03 $03
    inc bc                                        ; $4ccb: $03
    ld bc, $0103                                  ; $4ccc: $01 $03 $01
    ld bc, $0101                                  ; $4ccf: $01 $01 $01
    ld bc, $0101                                  ; $4cd2: $01 $01 $01
    ld bc, $e807                                  ; $4cd5: $01 $07 $e8
    jp hl                                         ; $4cd8: $e9


    ld [$ec0a], a                                 ; $4cd9: $ea $0a $ec
    db $ed                                        ; $4cdc: $ed
    xor $0d                                       ; $4cdd: $ee $0d
    ldh a, [$f1]                                  ; $4cdf: $f0 $f1
    ld a, [c]                                     ; $4ce1: $f2
    jr nc, @+$10                                  ; $4ce2: $30 $0e

    rrca                                          ; $4ce4: $0f
    db $10                                        ; $4ce5: $10
    ld bc, $0101                                  ; $4ce6: $01 $01 $01
    ld b, $01                                     ; $4ce9: $06 $01
    ld bc, $0601                                  ; $4ceb: $01 $01 $06
    ld bc, $0101                                  ; $4cee: $01 $01 $01
    ld b, $01                                     ; $4cf1: $06 $01
    ld bc, $0601                                  ; $4cf3: $01 $01 $06
    db $eb                                        ; $4cf6: $eb
    rst $30                                       ; $4cf7: $f7
    ld hl, sp-$07                                 ; $4cf8: $f8 $f9
    rst $28                                       ; $4cfa: $ef
    ei                                            ; $4cfb: $fb
    db $fc                                        ; $4cfc: $fc
    db $fd                                        ; $4cfd: $fd
    di                                            ; $4cfe: $f3
    rst $38                                       ; $4cff: $ff
    nop                                           ; $4d00: $00
    ld bc, $1e11                                  ; $4d01: $01 $11 $1e
    rra                                           ; $4d04: $1f
    jr nz, @+$03                                  ; $4d05: $20 $01

    ld b, $01                                     ; $4d07: $06 $01
    ld bc, $0601                                  ; $4d09: $01 $01 $06
    ld bc, $0101                                  ; $4d0c: $01 $01 $01
    ld b, $01                                     ; $4d0f: $06 $01
    ld bc, $0601                                  ; $4d11: $01 $01 $06
    ld bc, $fa01                                  ; $4d14: $01 $01 $fa
    dec b                                         ; $4d17: $05
    ld b, $07                                     ; $4d18: $06 $07
    cp $08                                        ; $4d1a: $fe $08
    add hl, bc                                    ; $4d1c: $09
    ld a, [bc]                                    ; $4d1d: $0a
    ld [bc], a                                    ; $4d1e: $02
    dec bc                                        ; $4d1f: $0b
    inc c                                         ; $4d20: $0c
    dec c                                         ; $4d21: $0d
    ld hl, $2f2e                                  ; $4d22: $21 $2e $2f
    jr nc, @+$03                                  ; $4d25: $30 $01

    ld bc, $0106                                  ; $4d27: $01 $06 $01
    ld bc, $0601                                  ; $4d2a: $01 $01 $06
    ld bc, $0101                                  ; $4d2d: $01 $01 $01
    ld b, $01                                     ; $4d30: $06 $01
    ld bc, $0601                                  ; $4d32: $01 $01 $06
    ld bc, $0505                                  ; $4d35: $01 $05 $05
    ld [$08eb], a                                 ; $4d38: $ea $eb $08
    ld [$efee], sp                                ; $4d3b: $08 $ee $ef
    dec bc                                        ; $4d3e: $0b
    dec bc                                        ; $4d3f: $0b
    ld a, [c]                                     ; $4d40: $f2
    di                                            ; $4d41: $f3
    ld sp, $1031                                  ; $4d42: $31 $31 $10
    ld de, $0101                                  ; $4d45: $11 $01 $01
    ld bc, $0101                                  ; $4d48: $01 $01 $01
    ld bc, $0101                                  ; $4d4b: $01 $01 $01
    ld bc, $0101                                  ; $4d4e: $01 $01 $01
    ld bc, $0101                                  ; $4d51: $01 $01 $01
    ld bc, $1501                                  ; $4d54: $01 $01 $15
    ld [de], a                                    ; $4d57: $12
    inc de                                        ; $4d58: $13
    inc d                                         ; $4d59: $14
    ld a, [bc]                                    ; $4d5a: $0a
    ld d, $17                                     ; $4d5b: $16 $17
    jr jr_080_4d9a                                ; $4d5d: $18 $3b

    ld a, [de]                                    ; $4d5f: $1a
    dec de                                        ; $4d60: $1b
    inc e                                         ; $4d61: $1c
    ld e, e                                       ; $4d62: $5b
    dec a                                         ; $4d63: $3d
    ld a, $3f                                     ; $4d64: $3e $3f
    ld bc, $0101                                  ; $4d66: $01 $01 $01
    ld b, $09                                     ; $4d69: $06 $09
    ld bc, $0601                                  ; $4d6b: $01 $01 $06
    ld bc, $0101                                  ; $4d6e: $01 $01 $01
    ld b, $01                                     ; $4d71: $06 $01
    ld bc, $0101                                  ; $4d73: $01 $01 $01
    dec d                                         ; $4d76: $15
    ld [hl+], a                                   ; $4d77: $22
    inc hl                                        ; $4d78: $23
    inc h                                         ; $4d79: $24
    add hl, de                                    ; $4d7a: $19
    ld h, $27                                     ; $4d7b: $26 $27
    jr z, jr_080_4d9c                             ; $4d7d: $28 $1d

    ld a, [hl+]                                   ; $4d7f: $2a
    dec hl                                        ; $4d80: $2b
    inc l                                         ; $4d81: $2c
    ld b, b                                       ; $4d82: $40
    ld c, l                                       ; $4d83: $4d
    ld c, [hl]                                    ; $4d84: $4e
    ld c, a                                       ; $4d85: $4f
    ld bc, $0106                                  ; $4d86: $01 $06 $01
    ld bc, $0601                                  ; $4d89: $01 $01 $06
    ld bc, $0101                                  ; $4d8c: $01 $01 $01
    ld bc, $0101                                  ; $4d8f: $01 $01 $01
    ld bc, $0101                                  ; $4d92: $01 $01 $01
    ld bc, $3225                                  ; $4d95: $01 $25 $32
    inc sp                                        ; $4d98: $33
    dec d                                         ; $4d99: $15

jr_080_4d9a:
    add hl, hl                                    ; $4d9a: $29
    dec [hl]                                      ; $4d9b: $35

jr_080_4d9c:
    ld [hl], $37                                  ; $4d9c: $36 $37
    dec l                                         ; $4d9e: $2d
    add hl, sp                                    ; $4d9f: $39
    ld a, [hl-]                                   ; $4da0: $3a
    dec sp                                        ; $4da1: $3b
    ld d, b                                       ; $4da2: $50
    ld e, c                                       ; $4da3: $59
    ld e, d                                       ; $4da4: $5a
    ld e, e                                       ; $4da5: $5b
    ld bc, $0601                                  ; $4da6: $01 $01 $06
    ld bc, $0101                                  ; $4da9: $01 $01 $01
    ld b, $01                                     ; $4dac: $06 $01
    ld bc, $0601                                  ; $4dae: $01 $01 $06
    ld bc, $0101                                  ; $4db1: $01 $01 $01
    ld b, $01                                     ; $4db4: $06 $01
    inc [hl]                                      ; $4db6: $34
    inc [hl]                                      ; $4db7: $34
    inc d                                         ; $4db8: $14
    dec d                                         ; $4db9: $15
    jr c, jr_080_4df4                             ; $4dba: $38 $38

    jr @+$1b                                      ; $4dbc: $18 $19

    inc a                                         ; $4dbe: $3c
    ld a, [hl+]                                   ; $4dbf: $2a
    inc e                                         ; $4dc0: $1c
    dec e                                         ; $4dc1: $1d
    ld e, h                                       ; $4dc2: $5c
    ld c, l                                       ; $4dc3: $4d
    ccf                                           ; $4dc4: $3f
    ld b, b                                       ; $4dc5: $40
    ld bc, $0101                                  ; $4dc6: $01 $01 $01
    ld bc, $0101                                  ; $4dc9: $01 $01 $01
    ld bc, $0101                                  ; $4dcc: $01 $01 $01
    ld bc, $0101                                  ; $4dcf: $01 $01 $01
    ld bc, $0101                                  ; $4dd2: $01 $01 $01
    ld bc, $5144                                  ; $4dd5: $01 $44 $51
    ld d, d                                       ; $4dd8: $52
    ld b, c                                       ; $4dd9: $41
    ld [hl], l                                    ; $4dda: $75
    ld h, e                                       ; $4ddb: $63
    ld l, e                                       ; $4ddc: $6b
    adc b                                         ; $4ddd: $88
    add b                                         ; $4dde: $80
    ld l, a                                       ; $4ddf: $6f
    add e                                         ; $4de0: $83
    adc d                                         ; $4de1: $8a
    ld [hl], c                                    ; $4de2: $71
    ld [hl], d                                    ; $4de3: $72
    db $ec                                        ; $4de4: $ec
    db $ed                                        ; $4de5: $ed
    ld [bc], a                                    ; $4de6: $02
    ld [bc], a                                    ; $4de7: $02
    ld [bc], a                                    ; $4de8: $02
    ld [bc], a                                    ; $4de9: $02
    ld [bc], a                                    ; $4dea: $02
    ld [bc], a                                    ; $4deb: $02
    ld [bc], a                                    ; $4dec: $02
    ld a, [bc]                                    ; $4ded: $0a
    ld a, [bc]                                    ; $4dee: $0a
    ld [bc], a                                    ; $4def: $02
    ld a, [bc]                                    ; $4df0: $0a
    ld a, [bc]                                    ; $4df1: $0a
    ld [bc], a                                    ; $4df2: $02
    ld [bc], a                                    ; $4df3: $02

jr_080_4df4:
    ld a, [bc]                                    ; $4df4: $0a
    ld a, [bc]                                    ; $4df5: $0a
    ld b, d                                       ; $4df6: $42
    ld b, e                                       ; $4df7: $43
    ld b, h                                       ; $4df8: $44
    ld d, c                                       ; $4df9: $51
    ld h, e                                       ; $4dfa: $63
    ld l, e                                       ; $4dfb: $6b
    ld [hl], l                                    ; $4dfc: $75
    add c                                         ; $4dfd: $81
    adc e                                         ; $4dfe: $8b
    add d                                         ; $4dff: $82
    ld l, a                                       ; $4e00: $6f
    ld h, [hl]                                    ; $4e01: $66
    adc [hl]                                      ; $4e02: $8e
    ld [hl], c                                    ; $4e03: $71
    ld b, l                                       ; $4e04: $45
    db $ec                                        ; $4e05: $ec
    ld [bc], a                                    ; $4e06: $02
    ld [bc], a                                    ; $4e07: $02
    ld [bc], a                                    ; $4e08: $02
    ld [bc], a                                    ; $4e09: $02
    ld [bc], a                                    ; $4e0a: $02
    ld [bc], a                                    ; $4e0b: $02
    ld [bc], a                                    ; $4e0c: $02
    ld a, [bc]                                    ; $4e0d: $0a
    ld a, [bc]                                    ; $4e0e: $0a
    dec c                                         ; $4e0f: $0d
    dec b                                         ; $4e10: $05
    ld [bc], a                                    ; $4e11: $02
    dec c                                         ; $4e12: $0d
    dec b                                         ; $4e13: $05
    dec b                                         ; $4e14: $05
    dec c                                         ; $4e15: $0d
    ld d, d                                       ; $4e16: $52
    ld b, c                                       ; $4e17: $41
    ld b, d                                       ; $4e18: $42
    ld b, e                                       ; $4e19: $43
    ld l, e                                       ; $4e1a: $6b
    ld a, e                                       ; $4e1b: $7b
    ld h, e                                       ; $4e1c: $63
    ld l, e                                       ; $4e1d: $6b
    adc d                                         ; $4e1e: $8a
    add b                                         ; $4e1f: $80
    add d                                         ; $4e20: $82
    ld l, a                                       ; $4e21: $6f
    db $ed                                        ; $4e22: $ed
    adc [hl]                                      ; $4e23: $8e
    ld [hl], c                                    ; $4e24: $71
    ld [hl], d                                    ; $4e25: $72
    ld [bc], a                                    ; $4e26: $02
    ld [bc], a                                    ; $4e27: $02
    ld [bc], a                                    ; $4e28: $02
    ld [bc], a                                    ; $4e29: $02
    ld [bc], a                                    ; $4e2a: $02
    ld [bc], a                                    ; $4e2b: $02
    dec b                                         ; $4e2c: $05
    dec b                                         ; $4e2d: $05
    dec c                                         ; $4e2e: $0d
    dec c                                         ; $4e2f: $0d
    ld a, [bc]                                    ; $4e30: $0a
    ld [bc], a                                    ; $4e31: $02
    dec c                                         ; $4e32: $0d
    ld a, [bc]                                    ; $4e33: $0a
    ld [bc], a                                    ; $4e34: $02
    dec b                                         ; $4e35: $05
    ld b, h                                       ; $4e36: $44
    ld d, c                                       ; $4e37: $51
    ld d, d                                       ; $4e38: $52
    ld b, c                                       ; $4e39: $41
    add c                                         ; $4e3a: $81
    adc b                                         ; $4e3b: $88
    ld a, e                                       ; $4e3c: $7b
    ldh a, [$83]                                  ; $4e3d: $f0 $83
    adc d                                         ; $4e3f: $8a
    adc e                                         ; $4e40: $8b
    add b                                         ; $4e41: $80
    db $ec                                        ; $4e42: $ec
    ld d, e                                       ; $4e43: $53
    ld d, h                                       ; $4e44: $54
    ld [hl], c                                    ; $4e45: $71
    ld [bc], a                                    ; $4e46: $02
    ld [bc], a                                    ; $4e47: $02
    ld [bc], a                                    ; $4e48: $02
    ld [bc], a                                    ; $4e49: $02
    dec c                                         ; $4e4a: $0d
    ld a, [bc]                                    ; $4e4b: $0a
    ld [bc], a                                    ; $4e4c: $02
    ld a, [bc]                                    ; $4e4d: $0a
    ld a, [bc]                                    ; $4e4e: $0a
    ld a, [bc]                                    ; $4e4f: $0a
    dec c                                         ; $4e50: $0d
    ld a, [bc]                                    ; $4e51: $0a
    ld a, [bc]                                    ; $4e52: $0a
    ld [bc], a                                    ; $4e53: $02
    dec b                                         ; $4e54: $05
    ld [bc], a                                    ; $4e55: $02
    pop de                                        ; $4e56: $d1
    jp nc, $d1d1                                  ; $4e57: $d2 $d1 $d1

    pop de                                        ; $4e5a: $d1
    call nc, $d1d1                                ; $4e5b: $d4 $d1 $d1
    pop de                                        ; $4e5e: $d1
    sub $d7                                       ; $4e5f: $d6 $d7
    pop de                                        ; $4e61: $d1
    pop de                                        ; $4e62: $d1
    db $e4                                        ; $4e63: $e4
    push hl                                       ; $4e64: $e5
    pop de                                        ; $4e65: $d1
    inc bc                                        ; $4e66: $03
    ld b, $03                                     ; $4e67: $06 $03
    inc bc                                        ; $4e69: $03
    inc bc                                        ; $4e6a: $03
    ld b, $03                                     ; $4e6b: $06 $03
    inc bc                                        ; $4e6d: $03
    ld bc, $0106                                  ; $4e6e: $01 $06 $01
    ld bc, $0601                                  ; $4e71: $01 $01 $06
    ld bc, $d101                                  ; $4e74: $01 $01 $d1
    pop hl                                        ; $4e77: $e1
    pop de                                        ; $4e78: $d1
    pop de                                        ; $4e79: $d1
    pop de                                        ; $4e7a: $d1
    ld [c], a                                     ; $4e7b: $e2
    pop de                                        ; $4e7c: $d1
    pop de                                        ; $4e7d: $d1
    pop de                                        ; $4e7e: $d1
    db $e3                                        ; $4e7f: $e3
    pop de                                        ; $4e80: $d1
    pop de                                        ; $4e81: $d1
    pop de                                        ; $4e82: $d1
    inc b                                         ; $4e83: $04
    pop de                                        ; $4e84: $d1
    pop de                                        ; $4e85: $d1
    inc bc                                        ; $4e86: $03
    ld b, $03                                     ; $4e87: $06 $03
    inc bc                                        ; $4e89: $03
    inc bc                                        ; $4e8a: $03
    ld b, $03                                     ; $4e8b: $06 $03
    inc bc                                        ; $4e8d: $03
    ld bc, $0306                                  ; $4e8e: $01 $06 $03
    inc bc                                        ; $4e91: $03
    ld bc, $0306                                  ; $4e92: $01 $06 $03
    inc bc                                        ; $4e95: $03
    dec b                                         ; $4e96: $05
    add sp, -$17                                  ; $4e97: $e8 $e9
    dec b                                         ; $4e99: $05
    ld [$edec], sp                                ; $4e9a: $08 $ec $ed
    ld [$f00b], sp                                ; $4e9d: $08 $0b $f0
    ld a, [hl]                                    ; $4ea0: $7e
    dec bc                                        ; $4ea1: $0b
    ld sp, $0f0e                                  ; $4ea2: $31 $0e $0f
    ld sp, $0601                                  ; $4ea5: $31 $01 $06
    ld bc, $0101                                  ; $4ea8: $01 $01 $01
    ld b, $01                                     ; $4eab: $06 $01
    ld bc, $0601                                  ; $4ead: $01 $01 $06
    ld bc, $0101                                  ; $4eb0: $01 $01 $01
    ld b, $01                                     ; $4eb3: $06 $01
    ld bc, $0605                                  ; $4eb5: $01 $05 $06
    pop de                                        ; $4eb8: $d1
    pop de                                        ; $4eb9: $d1
    ld [$d109], sp                                ; $4eba: $08 $09 $d1
    pop de                                        ; $4ebd: $d1
    dec bc                                        ; $4ebe: $0b
    inc c                                         ; $4ebf: $0c
    pop de                                        ; $4ec0: $d1
    pop de                                        ; $4ec1: $d1
    ld sp, $d12f                                  ; $4ec2: $31 $2f $d1
    pop de                                        ; $4ec5: $d1
    ld bc, $0306                                  ; $4ec6: $01 $06 $03
    inc bc                                        ; $4ec9: $03
    ld bc, $0306                                  ; $4eca: $01 $06 $03
    inc bc                                        ; $4ecd: $03
    ld bc, $0306                                  ; $4ece: $01 $06 $03
    inc bc                                        ; $4ed1: $03
    ld bc, $0306                                  ; $4ed2: $01 $06 $03
    inc bc                                        ; $4ed5: $03
    inc [hl]                                      ; $4ed6: $34
    ld [de], a                                    ; $4ed7: $12
    inc de                                        ; $4ed8: $13
    inc [hl]                                      ; $4ed9: $34
    jr c, jr_080_4ef2                             ; $4eda: $38 $16

    rla                                           ; $4edc: $17
    jr c, jr_080_4f1b                             ; $4edd: $38 $3c

    ld a, [hl+]                                   ; $4edf: $2a
    inc a                                         ; $4ee0: $3c
    inc a                                         ; $4ee1: $3c
    ld e, h                                       ; $4ee2: $5c
    ld c, l                                       ; $4ee3: $4d
    ld e, h                                       ; $4ee4: $5c
    ld e, h                                       ; $4ee5: $5c
    ld bc, $0106                                  ; $4ee6: $01 $06 $01
    ld bc, $0601                                  ; $4ee9: $01 $01 $06
    ld bc, $0101                                  ; $4eec: $01 $01 $01
    ld bc, $0101                                  ; $4eef: $01 $01 $01

jr_080_4ef2:
    ld bc, $0101                                  ; $4ef2: $01 $01 $01
    ld bc, $3332                                  ; $4ef5: $01 $32 $33
    pop de                                        ; $4ef8: $d1
    pop de                                        ; $4ef9: $d1
    dec [hl]                                      ; $4efa: $35
    ld [hl], $d1                                  ; $4efb: $36 $d1
    pop de                                        ; $4efd: $d1
    add hl, sp                                    ; $4efe: $39
    ld a, [hl-]                                   ; $4eff: $3a
    pop de                                        ; $4f00: $d1
    pop de                                        ; $4f01: $d1
    ld e, c                                       ; $4f02: $59
    ld e, d                                       ; $4f03: $5a
    pop de                                        ; $4f04: $d1
    pop de                                        ; $4f05: $d1
    ld bc, $0306                                  ; $4f06: $01 $06 $03
    inc bc                                        ; $4f09: $03
    ld bc, $0306                                  ; $4f0a: $01 $06 $03
    inc bc                                        ; $4f0d: $03
    ld bc, $0306                                  ; $4f0e: $01 $06 $03
    inc bc                                        ; $4f11: $03
    ld bc, $0306                                  ; $4f12: $01 $06 $03
    inc bc                                        ; $4f15: $03
    ld b, d                                       ; $4f16: $42
    ld b, e                                       ; $4f17: $43
    ld b, h                                       ; $4f18: $44
    ld d, c                                       ; $4f19: $51
    ld h, e                                       ; $4f1a: $63

jr_080_4f1b:
    add c                                         ; $4f1b: $81
    adc b                                         ; $4f1c: $88
    ld h, e                                       ; $4f1d: $63
    ld l, a                                       ; $4f1e: $6f
    add e                                         ; $4f1f: $83
    adc d                                         ; $4f20: $8a
    adc e                                         ; $4f21: $8b
    ld d, e                                       ; $4f22: $53
    db $ec                                        ; $4f23: $ec
    db $ed                                        ; $4f24: $ed
    adc [hl]                                      ; $4f25: $8e
    ld [bc], a                                    ; $4f26: $02
    ld [bc], a                                    ; $4f27: $02
    ld [bc], a                                    ; $4f28: $02
    ld [bc], a                                    ; $4f29: $02
    ld [bc], a                                    ; $4f2a: $02
    ld a, [bc]                                    ; $4f2b: $0a
    ld a, [bc]                                    ; $4f2c: $0a
    ld [bc], a                                    ; $4f2d: $02
    ld [bc], a                                    ; $4f2e: $02
    dec c                                         ; $4f2f: $0d
    dec c                                         ; $4f30: $0d
    dec c                                         ; $4f31: $0d
    dec b                                         ; $4f32: $05
    dec c                                         ; $4f33: $0d
    ld a, [bc]                                    ; $4f34: $0a
    ld a, [bc]                                    ; $4f35: $0a
    ld d, d                                       ; $4f36: $52
    sub [hl]                                      ; $4f37: $96
    pop de                                        ; $4f38: $d1
    pop de                                        ; $4f39: $d1
    dec bc                                        ; $4f3a: $0b
    inc c                                         ; $4f3b: $0c
    pop de                                        ; $4f3c: $d1
    pop de                                        ; $4f3d: $d1
    ld [hl], b                                    ; $4f3e: $70
    ld [hl], a                                    ; $4f3f: $77
    pop de                                        ; $4f40: $d1
    pop de                                        ; $4f41: $d1
    ld [hl], e                                    ; $4f42: $73
    ld a, b                                       ; $4f43: $78
    pop de                                        ; $4f44: $d1
    pop de                                        ; $4f45: $d1
    ld [bc], a                                    ; $4f46: $02
    add hl, hl                                    ; $4f47: $29
    inc bc                                        ; $4f48: $03
    inc bc                                        ; $4f49: $03
    adc e                                         ; $4f4a: $8b
    adc e                                         ; $4f4b: $8b
    inc bc                                        ; $4f4c: $03
    inc bc                                        ; $4f4d: $03
    add h                                         ; $4f4e: $84
    add e                                         ; $4f4f: $83
    inc bc                                        ; $4f50: $03
    inc bc                                        ; $4f51: $03
    add h                                         ; $4f52: $84
    add e                                         ; $4f53: $83
    inc bc                                        ; $4f54: $03
    inc bc                                        ; $4f55: $03
    pop de                                        ; $4f56: $d1
    pop de                                        ; $4f57: $d1
    pop de                                        ; $4f58: $d1
    pop de                                        ; $4f59: $d1
    pop de                                        ; $4f5a: $d1
    pop de                                        ; $4f5b: $d1
    pop de                                        ; $4f5c: $d1
    pop de                                        ; $4f5d: $d1
    pop de                                        ; $4f5e: $d1
    pop de                                        ; $4f5f: $d1
    pop de                                        ; $4f60: $d1
    pop de                                        ; $4f61: $d1
    pop de                                        ; $4f62: $d1
    pop de                                        ; $4f63: $d1
    pop de                                        ; $4f64: $d1
    jp nc, Jump_000_0303                          ; $4f65: $d2 $03 $03

    inc bc                                        ; $4f68: $03
    inc bc                                        ; $4f69: $03
    inc bc                                        ; $4f6a: $03
    inc bc                                        ; $4f6b: $03
    inc bc                                        ; $4f6c: $03
    inc bc                                        ; $4f6d: $03
    inc bc                                        ; $4f6e: $03
    inc bc                                        ; $4f6f: $03
    inc bc                                        ; $4f70: $03
    inc bc                                        ; $4f71: $03
    inc bc                                        ; $4f72: $03
    inc bc                                        ; $4f73: $03
    inc bc                                        ; $4f74: $03
    ld bc, $d1d1                                  ; $4f75: $01 $d1 $d1
    pop de                                        ; $4f78: $d1
    pop de                                        ; $4f79: $d1
    pop de                                        ; $4f7a: $d1
    pop de                                        ; $4f7b: $d1
    pop de                                        ; $4f7c: $d1
    pop de                                        ; $4f7d: $d1
    pop de                                        ; $4f7e: $d1
    pop de                                        ; $4f7f: $d1
    pop de                                        ; $4f80: $d1
    pop de                                        ; $4f81: $d1
    pop de                                        ; $4f82: $d1
    pop de                                        ; $4f83: $d1
    pop de                                        ; $4f84: $d1
    pop hl                                        ; $4f85: $e1
    inc bc                                        ; $4f86: $03
    inc bc                                        ; $4f87: $03
    inc bc                                        ; $4f88: $03
    inc bc                                        ; $4f89: $03
    inc bc                                        ; $4f8a: $03
    inc bc                                        ; $4f8b: $03
    inc bc                                        ; $4f8c: $03
    inc bc                                        ; $4f8d: $03
    inc bc                                        ; $4f8e: $03
    inc bc                                        ; $4f8f: $03
    inc bc                                        ; $4f90: $03
    inc bc                                        ; $4f91: $03
    inc bc                                        ; $4f92: $03
    inc bc                                        ; $4f93: $03
    inc bc                                        ; $4f94: $03
    ld b, $d1                                     ; $4f95: $06 $d1
    pop de                                        ; $4f97: $d1
    pop de                                        ; $4f98: $d1
    call nc, $d1d1                                ; $4f99: $d4 $d1 $d1
    pop de                                        ; $4f9c: $d1
    sub $d1                                       ; $4f9d: $d6 $d1
    pop de                                        ; $4f9f: $d1
    pop de                                        ; $4fa0: $d1
    db $e4                                        ; $4fa1: $e4
    pop de                                        ; $4fa2: $d1
    pop de                                        ; $4fa3: $d1
    dec b                                         ; $4fa4: $05
    add sp, $03                                   ; $4fa5: $e8 $03
    inc bc                                        ; $4fa7: $03
    inc bc                                        ; $4fa8: $03
    ld bc, $0303                                  ; $4fa9: $01 $03 $03
    ld bc, $0301                                  ; $4fac: $01 $01 $03
    inc bc                                        ; $4faf: $03
    ld bc, $0301                                  ; $4fb0: $01 $01 $03
    inc bc                                        ; $4fb3: $03
    ld bc, $d101                                  ; $4fb4: $01 $01 $d1
    pop de                                        ; $4fb7: $d1
    pop de                                        ; $4fb8: $d1
    ld [c], a                                     ; $4fb9: $e2
    rst $10                                       ; $4fba: $d7
    pop de                                        ; $4fbb: $d1
    pop de                                        ; $4fbc: $d1
    db $e3                                        ; $4fbd: $e3
    push hl                                       ; $4fbe: $e5
    pop de                                        ; $4fbf: $d1
    pop de                                        ; $4fc0: $d1
    inc b                                         ; $4fc1: $04
    jp hl                                         ; $4fc2: $e9


    dec b                                         ; $4fc3: $05
    dec b                                         ; $4fc4: $05
    ld b, $03                                     ; $4fc5: $06 $03
    inc bc                                        ; $4fc7: $03
    inc bc                                        ; $4fc8: $03
    ld b, $01                                     ; $4fc9: $06 $01
    ld bc, $0601                                  ; $4fcb: $01 $01 $06
    ld bc, $0101                                  ; $4fce: $01 $01 $01
    ld b, $01                                     ; $4fd1: $06 $01
    ld bc, $0601                                  ; $4fd3: $01 $01 $06
    pop de                                        ; $4fd6: $d1
    sub h                                         ; $4fd7: $94
    ld [$d1ec], sp                                ; $4fd8: $08 $ec $d1
    sub l                                         ; $4fdb: $95
    dec bc                                        ; $4fdc: $0b
    ldh a, [$d1]                                  ; $4fdd: $f0 $d1
    sub l                                         ; $4fdf: $95
    ld sp, $d10e                                  ; $4fe0: $31 $0e $d1
    sub l                                         ; $4fe3: $95
    inc [hl]                                      ; $4fe4: $34
    ld [de], a                                    ; $4fe5: $12
    inc bc                                        ; $4fe6: $03
    add hl, bc                                    ; $4fe7: $09
    ld bc, $0301                                  ; $4fe8: $01 $01 $03
    add hl, bc                                    ; $4feb: $09
    ld bc, $0301                                  ; $4fec: $01 $01 $03
    add hl, bc                                    ; $4fef: $09
    ld bc, $0301                                  ; $4ff0: $01 $01 $03
    add hl, bc                                    ; $4ff3: $09
    ld bc, $ed01                                  ; $4ff4: $01 $01 $ed
    ld [$0908], sp                                ; $4ff7: $08 $08 $09
    ld a, [hl]                                    ; $4ffa: $7e
    dec bc                                        ; $4ffb: $0b
    dec bc                                        ; $4ffc: $0b
    inc c                                         ; $4ffd: $0c
    rrca                                          ; $4ffe: $0f
    ld sp, $2f31                                  ; $4fff: $31 $31 $2f
    inc de                                        ; $5002: $13
    inc [hl]                                      ; $5003: $34
    ld [hl-], a                                   ; $5004: $32
    inc sp                                        ; $5005: $33
    ld bc, $0101                                  ; $5006: $01 $01 $01
    ld b, $01                                     ; $5009: $06 $01
    ld bc, $0601                                  ; $500b: $01 $01 $06
    ld bc, $0101                                  ; $500e: $01 $01 $01
    ld b, $01                                     ; $5011: $06 $01
    ld bc, $0601                                  ; $5013: $01 $01 $06
    pop de                                        ; $5016: $d1
    sub l                                         ; $5017: $95
    jr c, jr_080_5030                             ; $5018: $38 $16

    pop de                                        ; $501a: $d1
    sub l                                         ; $501b: $95
    inc a                                         ; $501c: $3c
    ld a, [hl+]                                   ; $501d: $2a
    pop de                                        ; $501e: $d1
    sub l                                         ; $501f: $95
    ld e, h                                       ; $5020: $5c
    ld c, l                                       ; $5021: $4d
    pop de                                        ; $5022: $d1
    sub [hl]                                      ; $5023: $96
    sub a                                         ; $5024: $97
    ld b, e                                       ; $5025: $43
    inc bc                                        ; $5026: $03
    add hl, bc                                    ; $5027: $09
    ld bc, $0301                                  ; $5028: $01 $01 $03
    add hl, bc                                    ; $502b: $09
    ld bc, $0301                                  ; $502c: $01 $01 $03
    add hl, bc                                    ; $502f: $09

jr_080_5030:
    ld bc, $0301                                  ; $5030: $01 $01 $03
    add hl, bc                                    ; $5033: $09
    ld a, [bc]                                    ; $5034: $0a
    ld [bc], a                                    ; $5035: $02
    rla                                           ; $5036: $17
    jr c, jr_080_506e                             ; $5037: $38 $35

    ld [hl], $3c                                  ; $5039: $36 $3c
    inc a                                         ; $503b: $3c
    add hl, sp                                    ; $503c: $39
    ld a, [hl-]                                   ; $503d: $3a
    ld e, h                                       ; $503e: $5c
    ld e, h                                       ; $503f: $5c
    ld e, c                                       ; $5040: $59
    ld e, d                                       ; $5041: $5a
    ld b, h                                       ; $5042: $44
    ld d, c                                       ; $5043: $51
    ld d, d                                       ; $5044: $52
    sub [hl]                                      ; $5045: $96
    ld bc, $0101                                  ; $5046: $01 $01 $01
    ld b, $01                                     ; $5049: $06 $01
    ld bc, $0601                                  ; $504b: $01 $01 $06
    ld bc, $0101                                  ; $504e: $01 $01 $01
    ld b, $02                                     ; $5051: $06 $02
    ld [bc], a                                    ; $5053: $02
    ld [bc], a                                    ; $5054: $02
    add hl, hl                                    ; $5055: $29
    pop de                                        ; $5056: $d1
    pop de                                        ; $5057: $d1
    pop de                                        ; $5058: $d1
    halt                                          ; $5059: $76
    pop de                                        ; $505a: $d1
    pop de                                        ; $505b: $d1
    pop de                                        ; $505c: $d1
    ld [hl], a                                    ; $505d: $77
    pop de                                        ; $505e: $d1
    pop de                                        ; $505f: $d1
    pop de                                        ; $5060: $d1
    ld a, b                                       ; $5061: $78
    pop de                                        ; $5062: $d1
    pop de                                        ; $5063: $d1
    pop de                                        ; $5064: $d1
    ld h, c                                       ; $5065: $61
    inc bc                                        ; $5066: $03
    inc bc                                        ; $5067: $03
    inc bc                                        ; $5068: $03
    and h                                         ; $5069: $a4
    inc bc                                        ; $506a: $03
    inc bc                                        ; $506b: $03
    inc b                                         ; $506c: $04
    and e                                         ; $506d: $a3

jr_080_506e:
    inc bc                                        ; $506e: $03
    inc b                                         ; $506f: $04
    inc bc                                        ; $5070: $03
    and e                                         ; $5071: $a3
    inc bc                                        ; $5072: $03
    inc b                                         ; $5073: $04
    inc bc                                        ; $5074: $03
    add e                                         ; $5075: $83
    ld l, l                                       ; $5076: $6d
    db $ec                                        ; $5077: $ec
    ld d, e                                       ; $5078: $53
    ld l, l                                       ; $5079: $6d
    ld [hl], b                                    ; $507a: $70
    xor $63                                       ; $507b: $ee $63
    ld [hl], b                                    ; $507d: $70
    ld [hl], e                                    ; $507e: $73
    add b                                         ; $507f: $80
    ld c, b                                       ; $5080: $48
    ld h, d                                       ; $5081: $62
    ld h, d                                       ; $5082: $62
    ld b, l                                       ; $5083: $45
    adc b                                         ; $5084: $88
    ld h, l                                       ; $5085: $65
    add h                                         ; $5086: $84
    ld a, [bc]                                    ; $5087: $0a
    dec b                                         ; $5088: $05
    and h                                         ; $5089: $a4
    and e                                         ; $508a: $a3
    ld a, [bc]                                    ; $508b: $0a
    dec b                                         ; $508c: $05
    add h                                         ; $508d: $84
    and h                                         ; $508e: $a4
    ld a, [bc]                                    ; $508f: $0a
    dec b                                         ; $5090: $05
    and h                                         ; $5091: $a4
    add h                                         ; $5092: $84
    dec b                                         ; $5093: $05
    ld a, [bc]                                    ; $5094: $0a
    and e                                         ; $5095: $a3
    halt                                          ; $5096: $76
    pop de                                        ; $5097: $d1
    pop hl                                        ; $5098: $e1
    pop de                                        ; $5099: $d1
    ld [hl], a                                    ; $509a: $77
    pop de                                        ; $509b: $d1
    ld [c], a                                     ; $509c: $e2
    pop de                                        ; $509d: $d1
    ld h, c                                       ; $509e: $61
    pop de                                        ; $509f: $d1
    db $e3                                        ; $50a0: $e3
    pop de                                        ; $50a1: $d1
    ld h, h                                       ; $50a2: $64
    pop de                                        ; $50a3: $d1
    inc b                                         ; $50a4: $04
    pop de                                        ; $50a5: $d1
    add e                                         ; $50a6: $83
    inc bc                                        ; $50a7: $03
    ld bc, $8403                                  ; $50a8: $01 $03 $84
    inc bc                                        ; $50ab: $03
    ld b, $03                                     ; $50ac: $06 $03
    and e                                         ; $50ae: $a3
    ld bc, $0106                                  ; $50af: $01 $06 $01
    and e                                         ; $50b2: $a3
    ld bc, $0106                                  ; $50b3: $01 $06 $01
    pop de                                        ; $50b6: $d1
    pop de                                        ; $50b7: $d1
    pop de                                        ; $50b8: $d1
    ld h, h                                       ; $50b9: $64
    pop de                                        ; $50ba: $d1
    pop de                                        ; $50bb: $d1
    pop de                                        ; $50bc: $d1
    ld h, a                                       ; $50bd: $67
    pop de                                        ; $50be: $d1
    pop de                                        ; $50bf: $d1
    pop de                                        ; $50c0: $d1
    ld l, c                                       ; $50c1: $69
    pop de                                        ; $50c2: $d1
    pop de                                        ; $50c3: $d1
    pop de                                        ; $50c4: $d1
    ld a, c                                       ; $50c5: $79
    inc bc                                        ; $50c6: $03
    inc bc                                        ; $50c7: $03
    inc bc                                        ; $50c8: $03
    add h                                         ; $50c9: $84
    inc bc                                        ; $50ca: $03
    inc bc                                        ; $50cb: $03
    inc b                                         ; $50cc: $04
    add h                                         ; $50cd: $84
    inc bc                                        ; $50ce: $03
    inc bc                                        ; $50cf: $03
    inc bc                                        ; $50d0: $03
    add h                                         ; $50d1: $84
    inc bc                                        ; $50d2: $03
    inc bc                                        ; $50d3: $03
    inc bc                                        ; $50d4: $03
    add h                                         ; $50d5: $84
    ld h, l                                       ; $50d6: $65
    add e                                         ; $50d7: $83
    ld h, e                                       ; $50d8: $63
    ld l, d                                       ; $50d9: $6a
    ld l, b                                       ; $50da: $68
    add b                                         ; $50db: $80
    ld h, [hl]                                    ; $50dc: $66
    ld a, d                                       ; $50dd: $7a
    ld l, d                                       ; $50de: $6a
    ld b, l                                       ; $50df: $45
    add l                                         ; $50e0: $85
    ld d, h                                       ; $50e1: $54
    ld a, d                                       ; $50e2: $7a
    ld [hl], l                                    ; $50e3: $75
    ld h, e                                       ; $50e4: $63
    ld h, b                                       ; $50e5: $60
    add e                                         ; $50e6: $83
    dec c                                         ; $50e7: $0d
    ld [bc], a                                    ; $50e8: $02
    and e                                         ; $50e9: $a3
    add e                                         ; $50ea: $83
    ld a, [bc]                                    ; $50eb: $0a
    ld [bc], a                                    ; $50ec: $02
    and e                                         ; $50ed: $a3
    add e                                         ; $50ee: $83
    ld [bc], a                                    ; $50ef: $02
    dec c                                         ; $50f0: $0d
    ld [bc], a                                    ; $50f1: $02
    add e                                         ; $50f2: $83
    ld [bc], a                                    ; $50f3: $02
    ld [bc], a                                    ; $50f4: $02
    dec b                                         ; $50f5: $05
    ld l, c                                       ; $50f6: $69
    dec b                                         ; $50f7: $05
    ld b, $07                                     ; $50f8: $06 $07
    ld a, c                                       ; $50fa: $79
    ld [$0a09], sp                                ; $50fb: $08 $09 $0a
    dec c                                         ; $50fe: $0d
    dec bc                                        ; $50ff: $0b
    inc c                                         ; $5100: $0c
    dec c                                         ; $5101: $0d
    add h                                         ; $5102: $84
    ld sp, $302f                                  ; $5103: $31 $2f $30
    and e                                         ; $5106: $a3
    ld bc, $0106                                  ; $5107: $01 $06 $01
    and e                                         ; $510a: $a3
    ld bc, $0106                                  ; $510b: $01 $06 $01
    dec bc                                        ; $510e: $0b
    ld bc, $0106                                  ; $510f: $01 $06 $01
    ld a, [hl+]                                   ; $5112: $2a
    ld bc, $0106                                  ; $5113: $01 $06 $01
    halt                                          ; $5116: $76
    ld l, l                                       ; $5117: $6d
    adc b                                         ; $5118: $88
    ld a, e                                       ; $5119: $7b
    ld [hl], a                                    ; $511a: $77
    ld [hl], b                                    ; $511b: $70
    adc d                                         ; $511c: $8a
    ld d, h                                       ; $511d: $54
    ld a, b                                       ; $511e: $78
    ld [hl], e                                    ; $511f: $73
    db $ed                                        ; $5120: $ed
    ld l, e                                       ; $5121: $6b
    ld h, c                                       ; $5122: $61
    ld h, d                                       ; $5123: $62
    add l                                         ; $5124: $85
    sub b                                         ; $5125: $90
    and h                                         ; $5126: $a4
    add h                                         ; $5127: $84
    ld a, [bc]                                    ; $5128: $0a
    dec b                                         ; $5129: $05
    and e                                         ; $512a: $a3
    and e                                         ; $512b: $a3
    ld a, [bc]                                    ; $512c: $0a
    dec b                                         ; $512d: $05
    and e                                         ; $512e: $a3
    and e                                         ; $512f: $a3
    ld a, [bc]                                    ; $5130: $0a
    dec b                                         ; $5131: $05
    add e                                         ; $5132: $83
    add h                                         ; $5133: $84
    ld a, [bc]                                    ; $5134: $0a
    dec c                                         ; $5135: $0d
    add [hl]                                      ; $5136: $86
    inc [hl]                                      ; $5137: $34
    inc sp                                        ; $5138: $33
    dec d                                         ; $5139: $15
    add a                                         ; $513a: $87
    jr c, jr_080_5173                             ; $513b: $38 $36

    ld a, [bc]                                    ; $513d: $0a
    adc c                                         ; $513e: $89
    inc a                                         ; $513f: $3c
    ld a, [hl-]                                   ; $5140: $3a
    dec sp                                        ; $5141: $3b
    adc l                                         ; $5142: $8d
    ld e, h                                       ; $5143: $5c
    ld e, d                                       ; $5144: $5a
    ld e, e                                       ; $5145: $5b
    ld a, [hl+]                                   ; $5146: $2a
    ld bc, $0106                                  ; $5147: $01 $06 $01
    ld a, [hl+]                                   ; $514a: $2a
    ld bc, $0906                                  ; $514b: $01 $06 $09
    ld a, [hl+]                                   ; $514e: $2a
    ld bc, $0106                                  ; $514f: $01 $06 $01
    ld a, [hl+]                                   ; $5152: $2a
    ld bc, $0101                                  ; $5153: $01 $01 $01
    ld h, h                                       ; $5156: $64
    ld h, l                                       ; $5157: $65
    ld c, b                                       ; $5158: $48
    ld h, b                                       ; $5159: $60
    ld h, a                                       ; $515a: $67
    ld l, b                                       ; $515b: $68
    ld h, e                                       ; $515c: $63
    ld a, e                                       ; $515d: $7b
    ld l, c                                       ; $515e: $69
    ld l, d                                       ; $515f: $6a
    adc d                                         ; $5160: $8a
    adc e                                         ; $5161: $8b
    ld a, c                                       ; $5162: $79
    ld a, d                                       ; $5163: $7a
    ld d, e                                       ; $5164: $53
    adc [hl]                                      ; $5165: $8e
    add e                                         ; $5166: $83
    add h                                         ; $5167: $84
    dec b                                         ; $5168: $05
    dec b                                         ; $5169: $05
    add h                                         ; $516a: $84
    add e                                         ; $516b: $83
    dec b                                         ; $516c: $05
    ld [bc], a                                    ; $516d: $02
    add h                                         ; $516e: $84
    add e                                         ; $516f: $83
    ld a, [bc]                                    ; $5170: $0a
    dec c                                         ; $5171: $0d
    add e                                         ; $5172: $83

jr_080_5173:
    add h                                         ; $5173: $84
    ld [bc], a                                    ; $5174: $02
    ld a, [bc]                                    ; $5175: $0a
    adc a                                         ; $5176: $8f
    ld b, h                                       ; $5177: $44
    ld d, c                                       ; $5178: $51
    ld d, d                                       ; $5179: $52
    ldh a, [$6c]                                  ; $517a: $f0 $6c
    ld l, e                                       ; $517c: $6b
    adc b                                         ; $517d: $88
    add d                                         ; $517e: $82
    ld h, [hl]                                    ; $517f: $66
    add e                                         ; $5180: $83
    adc d                                         ; $5181: $8a
    ld b, l                                       ; $5182: $45
    ld [hl], d                                    ; $5183: $72
    db $ec                                        ; $5184: $ec
    ld b, l                                       ; $5185: $45
    ld a, [hl+]                                   ; $5186: $2a
    ld [bc], a                                    ; $5187: $02
    ld [bc], a                                    ; $5188: $02
    ld [bc], a                                    ; $5189: $02
    ld a, [bc]                                    ; $518a: $0a
    ld [bc], a                                    ; $518b: $02
    ld [bc], a                                    ; $518c: $02
    ld a, [bc]                                    ; $518d: $0a
    dec c                                         ; $518e: $0d
    ld [bc], a                                    ; $518f: $02
    dec c                                         ; $5190: $0d
    dec c                                         ; $5191: $0d
    ld [bc], a                                    ; $5192: $02
    dec b                                         ; $5193: $05
    dec c                                         ; $5194: $0d
    ld [bc], a                                    ; $5195: $02
    jp nc, $d3d1                                  ; $5196: $d2 $d1 $d3

    pop de                                        ; $5199: $d1
    call nc, $d5d1                                ; $519a: $d4 $d1 $d5
    pop de                                        ; $519d: $d1
    sub $d7                                       ; $519e: $d6 $d7
    ret c                                         ; $51a0: $d8

    reti                                          ; $51a1: $d9


    db $e4                                        ; $51a2: $e4
    push hl                                       ; $51a3: $e5
    and $e7                                       ; $51a4: $e6 $e7
    ld bc, $0103                                  ; $51a6: $01 $03 $01
    inc bc                                        ; $51a9: $03
    ld bc, $0103                                  ; $51aa: $01 $03 $01
    inc bc                                        ; $51ad: $03
    ld bc, $0101                                  ; $51ae: $01 $01 $01
    ld bc, $0101                                  ; $51b1: $01 $01 $01
    ld bc, $da01                                  ; $51b4: $01 $01 $da
    pop de                                        ; $51b7: $d1
    db $db                                        ; $51b8: $db
    pop de                                        ; $51b9: $d1
    call c, $ddd1                                 ; $51ba: $dc $d1 $dd
    pop de                                        ; $51bd: $d1
    sbc $df                                       ; $51be: $de $df
    ldh [$d1], a                                  ; $51c0: $e0 $d1
    db $f4                                        ; $51c2: $f4
    pop de                                        ; $51c3: $d1
    push af                                       ; $51c4: $f5
    or $06                                        ; $51c5: $f6 $06
    inc bc                                        ; $51c7: $03
    ld bc, $0603                                  ; $51c8: $01 $03 $06
    inc bc                                        ; $51cb: $03
    ld bc, $0603                                  ; $51cc: $01 $03 $06
    ld bc, $0101                                  ; $51cf: $01 $01 $01
    ld b, $01                                     ; $51d2: $06 $01
    ld bc, $d101                                  ; $51d4: $01 $01 $d1
    pop hl                                        ; $51d7: $e1
    pop de                                        ; $51d8: $d1
    pop de                                        ; $51d9: $d1
    pop de                                        ; $51da: $d1
    ld [c], a                                     ; $51db: $e2
    pop de                                        ; $51dc: $d1
    pop de                                        ; $51dd: $d1
    pop de                                        ; $51de: $d1
    db $e3                                        ; $51df: $e3
    pop de                                        ; $51e0: $d1
    pop de                                        ; $51e1: $d1
    inc bc                                        ; $51e2: $03
    inc b                                         ; $51e3: $04
    pop de                                        ; $51e4: $d1
    pop de                                        ; $51e5: $d1
    inc bc                                        ; $51e6: $03
    ld bc, $0303                                  ; $51e7: $01 $03 $03
    inc bc                                        ; $51ea: $03
    ld bc, $0303                                  ; $51eb: $01 $03 $03
    ld bc, $0101                                  ; $51ee: $01 $01 $01
    ld bc, $0101                                  ; $51f1: $01 $01 $01
    ld bc, $d101                                  ; $51f4: $01 $01 $d1
    db $d3                                        ; $51f7: $d3
    pop de                                        ; $51f8: $d1
    pop de                                        ; $51f9: $d1
    pop de                                        ; $51fa: $d1
    push de                                       ; $51fb: $d5
    pop de                                        ; $51fc: $d1
    pop de                                        ; $51fd: $d1
    pop de                                        ; $51fe: $d1
    ret c                                         ; $51ff: $d8

    reti                                          ; $5200: $d9


    pop de                                        ; $5201: $d1
    pop de                                        ; $5202: $d1
    and $e7                                       ; $5203: $e6 $e7
    pop de                                        ; $5205: $d1
    inc bc                                        ; $5206: $03
    ld b, $03                                     ; $5207: $06 $03
    inc bc                                        ; $5209: $03
    inc bc                                        ; $520a: $03
    ld b, $03                                     ; $520b: $06 $03
    inc bc                                        ; $520d: $03
    ld bc, $0106                                  ; $520e: $01 $06 $01
    ld bc, $0601                                  ; $5211: $01 $01 $06
    ld bc, $e801                                  ; $5214: $01 $01 $e8
    jp hl                                         ; $5217: $e9


    ld [$eceb], a                                 ; $5218: $ea $eb $ec
    db $ed                                        ; $521b: $ed
    xor $ef                                       ; $521c: $ee $ef
    ldh a, [$f1]                                  ; $521e: $f0 $f1
    ld a, [c]                                     ; $5220: $f2
    di                                            ; $5221: $f3
    ld c, $0f                                     ; $5222: $0e $0f
    db $10                                        ; $5224: $10
    ld de, $0101                                  ; $5225: $11 $01 $01
    ld bc, $0101                                  ; $5228: $01 $01 $01
    ld bc, $0101                                  ; $522b: $01 $01 $01
    ld bc, $0101                                  ; $522e: $01 $01 $01
    ld bc, $0101                                  ; $5231: $01 $01 $01
    ld bc, $f701                                  ; $5234: $01 $01 $f7
    ld hl, sp-$07                                 ; $5237: $f8 $f9
    ld a, [$fcfb]                                 ; $5239: $fa $fb $fc
    db $fd                                        ; $523c: $fd
    cp $ff                                        ; $523d: $fe $ff
    nop                                           ; $523f: $00
    ld bc, $1e02                                  ; $5240: $01 $02 $1e
    rra                                           ; $5243: $1f
    jr nz, @+$23                                  ; $5244: $20 $21

    ld b, $01                                     ; $5246: $06 $01
    ld bc, $0601                                  ; $5248: $01 $01 $06
    ld bc, $0101                                  ; $524b: $01 $01 $01
    ld b, $01                                     ; $524e: $06 $01
    ld bc, $0601                                  ; $5250: $01 $01 $06
    ld bc, $0101                                  ; $5253: $01 $01 $01
    dec b                                         ; $5256: $05
    ld b, $07                                     ; $5257: $06 $07
    dec b                                         ; $5259: $05
    ld [$0a09], sp                                ; $525a: $08 $09 $0a
    ld [$0c0b], sp                                ; $525d: $08 $0b $0c
    dec c                                         ; $5260: $0d
    dec bc                                        ; $5261: $0b
    ld l, $2f                                     ; $5262: $2e $2f
    jr nc, @+$33                                  ; $5264: $30 $31

    ld bc, $0101                                  ; $5266: $01 $01 $01
    ld bc, $0101                                  ; $5269: $01 $01 $01
    ld bc, $0101                                  ; $526c: $01 $01 $01
    ld bc, $0101                                  ; $526f: $01 $01 $01
    ld bc, $0101                                  ; $5272: $01 $01 $01
    ld bc, $ea05                                  ; $5275: $01 $05 $ea
    db $eb                                        ; $5278: $eb
    dec b                                         ; $5279: $05
    ld [$efee], sp                                ; $527a: $08 $ee $ef
    ld [$f20b], sp                                ; $527d: $08 $0b $f2
    di                                            ; $5280: $f3
    dec bc                                        ; $5281: $0b
    ld sp, $1110                                  ; $5282: $31 $10 $11
    ld sp, $0601                                  ; $5285: $31 $01 $06
    ld bc, $0101                                  ; $5288: $01 $01 $01
    ld b, $01                                     ; $528b: $06 $01
    ld bc, $0601                                  ; $528d: $01 $01 $06
    ld bc, $0101                                  ; $5290: $01 $01 $01
    ld b, $01                                     ; $5293: $06 $01
    ld bc, $1312                                  ; $5295: $01 $12 $13
    inc d                                         ; $5298: $14
    dec d                                         ; $5299: $15
    ld d, $17                                     ; $529a: $16 $17
    jr @+$1b                                      ; $529c: $18 $19

    ld a, [de]                                    ; $529e: $1a
    dec de                                        ; $529f: $1b
    inc e                                         ; $52a0: $1c
    dec e                                         ; $52a1: $1d
    dec a                                         ; $52a2: $3d
    ld a, $3f                                     ; $52a3: $3e $3f
    ld b, b                                       ; $52a5: $40
    ld bc, $0101                                  ; $52a6: $01 $01 $01
    ld bc, $0101                                  ; $52a9: $01 $01 $01
    ld bc, $0101                                  ; $52ac: $01 $01 $01
    ld bc, $0101                                  ; $52af: $01 $01 $01
    ld bc, $0101                                  ; $52b2: $01 $01 $01
    ld bc, $2322                                  ; $52b5: $01 $22 $23
    inc h                                         ; $52b8: $24
    dec h                                         ; $52b9: $25
    ld h, $27                                     ; $52ba: $26 $27
    jr z, @+$2b                                   ; $52bc: $28 $29

    ld a, [hl+]                                   ; $52be: $2a
    dec hl                                        ; $52bf: $2b
    inc l                                         ; $52c0: $2c
    dec l                                         ; $52c1: $2d
    ld c, l                                       ; $52c2: $4d
    ld c, [hl]                                    ; $52c3: $4e
    ld c, a                                       ; $52c4: $4f
    ld d, b                                       ; $52c5: $50
    ld b, $01                                     ; $52c6: $06 $01
    ld bc, $0601                                  ; $52c8: $01 $01 $06
    ld bc, $0101                                  ; $52cb: $01 $01 $01
    ld bc, $0101                                  ; $52ce: $01 $01 $01
    ld bc, $0101                                  ; $52d1: $01 $01 $01
    ld bc, $3201                                  ; $52d4: $01 $01 $32
    inc sp                                        ; $52d7: $33
    dec d                                         ; $52d8: $15
    inc [hl]                                      ; $52d9: $34
    dec [hl]                                      ; $52da: $35
    ld [hl], $37                                  ; $52db: $36 $37
    jr c, jr_080_5318                             ; $52dd: $38 $39

    ld a, [hl-]                                   ; $52df: $3a
    dec sp                                        ; $52e0: $3b
    inc a                                         ; $52e1: $3c
    ld e, c                                       ; $52e2: $59
    ld e, d                                       ; $52e3: $5a
    ld e, e                                       ; $52e4: $5b
    ld e, h                                       ; $52e5: $5c
    ld bc, $0101                                  ; $52e6: $01 $01 $01
    ld bc, $0101                                  ; $52e9: $01 $01 $01
    ld bc, $0101                                  ; $52ec: $01 $01 $01
    ld bc, $0101                                  ; $52ef: $01 $01 $01
    ld bc, $0101                                  ; $52f2: $01 $01 $01
    ld bc, $1434                                  ; $52f5: $01 $34 $14
    dec d                                         ; $52f8: $15
    inc [hl]                                      ; $52f9: $34
    jr c, jr_080_5314                             ; $52fa: $38 $18

    add hl, de                                    ; $52fc: $19
    jr c, jr_080_5329                             ; $52fd: $38 $2a

    inc e                                         ; $52ff: $1c
    dec e                                         ; $5300: $1d
    inc a                                         ; $5301: $3c
    ld c, l                                       ; $5302: $4d
    ccf                                           ; $5303: $3f
    ld b, b                                       ; $5304: $40
    ld e, h                                       ; $5305: $5c
    ld bc, $0106                                  ; $5306: $01 $06 $01
    ld bc, $0601                                  ; $5309: $01 $01 $06
    ld bc, $0101                                  ; $530c: $01 $01 $01
    ld b, $01                                     ; $530f: $06 $01
    ld bc, $0101                                  ; $5311: $01 $01 $01

jr_080_5314:
    ld bc, $4101                                  ; $5314: $01 $01 $41
    ld b, d                                       ; $5317: $42

jr_080_5318:
    ld b, e                                       ; $5318: $43
    ld b, h                                       ; $5319: $44
    ld h, e                                       ; $531a: $63
    ldh a, [$75]                                  ; $531b: $f0 $75
    ld h, e                                       ; $531d: $63
    adc e                                         ; $531e: $8b
    add d                                         ; $531f: $82
    ld l, a                                       ; $5320: $6f
    add e                                         ; $5321: $83
    adc [hl]                                      ; $5322: $8e
    ld [hl], c                                    ; $5323: $71
    ld b, l                                       ; $5324: $45
    ld d, e                                       ; $5325: $53
    ld [bc], a                                    ; $5326: $02
    ld [bc], a                                    ; $5327: $02
    ld [bc], a                                    ; $5328: $02

jr_080_5329:
    ld [bc], a                                    ; $5329: $02
    dec b                                         ; $532a: $05
    ld a, [bc]                                    ; $532b: $0a
    ld [bc], a                                    ; $532c: $02
    dec b                                         ; $532d: $05
    ld a, [bc]                                    ; $532e: $0a
    ld a, [bc]                                    ; $532f: $0a
    dec b                                         ; $5330: $05
    ld a, [bc]                                    ; $5331: $0a
    ld a, [bc]                                    ; $5332: $0a
    dec b                                         ; $5333: $05
    ld [bc], a                                    ; $5334: $02
    dec b                                         ; $5335: $05
    ld d, c                                       ; $5336: $51
    ld d, d                                       ; $5337: $52
    ld b, c                                       ; $5338: $41
    ld b, d                                       ; $5339: $42
    adc b                                         ; $533a: $88
    ld a, e                                       ; $533b: $7b
    ldh a, [$6c]                                  ; $533c: $f0 $6c
    ld l, [hl]                                    ; $533e: $6e
    add b                                         ; $533f: $80
    add d                                         ; $5340: $82
    ld l, a                                       ; $5341: $6f
    db $ed                                        ; $5342: $ed
    adc [hl]                                      ; $5343: $8e
    ld [hl], c                                    ; $5344: $71
    ld d, h                                       ; $5345: $54
    ld [bc], a                                    ; $5346: $02
    ld [bc], a                                    ; $5347: $02
    ld [bc], a                                    ; $5348: $02
    ld [bc], a                                    ; $5349: $02
    dec c                                         ; $534a: $0d
    dec b                                         ; $534b: $05
    ld a, [bc]                                    ; $534c: $0a
    ld [bc], a                                    ; $534d: $02
    ld [bc], a                                    ; $534e: $02
    ld a, [bc]                                    ; $534f: $0a
    ld a, [bc]                                    ; $5350: $0a
    ld [bc], a                                    ; $5351: $02
    ld a, [bc]                                    ; $5352: $0a
    ld a, [bc]                                    ; $5353: $0a
    dec b                                         ; $5354: $05
    ld [bc], a                                    ; $5355: $02
    ld b, e                                       ; $5356: $43
    ld b, h                                       ; $5357: $44
    ld d, c                                       ; $5358: $51
    ld d, d                                       ; $5359: $52
    add c                                         ; $535a: $81
    adc b                                         ; $535b: $88
    ld a, e                                       ; $535c: $7b
    ld [hl], l                                    ; $535d: $75
    add e                                         ; $535e: $83
    ld h, [hl]                                    ; $535f: $66
    ld l, [hl]                                    ; $5360: $6e
    add d                                         ; $5361: $82
    db $ec                                        ; $5362: $ec
    ld d, e                                       ; $5363: $53
    adc [hl]                                      ; $5364: $8e
    ld [hl], c                                    ; $5365: $71
    ld [bc], a                                    ; $5366: $02
    ld [bc], a                                    ; $5367: $02
    ld [bc], a                                    ; $5368: $02
    ld [bc], a                                    ; $5369: $02
    ld a, [bc]                                    ; $536a: $0a
    ld a, [bc]                                    ; $536b: $0a
    dec b                                         ; $536c: $05
    dec b                                         ; $536d: $05
    ld a, [bc]                                    ; $536e: $0a
    ld [bc], a                                    ; $536f: $02
    dec b                                         ; $5370: $05
    dec c                                         ; $5371: $0d
    dec c                                         ; $5372: $0d
    dec b                                         ; $5373: $05
    dec c                                         ; $5374: $0d
    ld [bc], a                                    ; $5375: $02
    ld b, c                                       ; $5376: $41
    ld b, d                                       ; $5377: $42
    ld b, e                                       ; $5378: $43
    ld b, h                                       ; $5379: $44
    ld l, h                                       ; $537a: $6c
    add c                                         ; $537b: $81
    ld [hl], l                                    ; $537c: $75
    ld h, e                                       ; $537d: $63
    ld l, a                                       ; $537e: $6f
    ld l, [hl]                                    ; $537f: $6e
    adc d                                         ; $5380: $8a
    adc e                                         ; $5381: $8b
    ld d, e                                       ; $5382: $53
    db $ec                                        ; $5383: $ec
    db $ed                                        ; $5384: $ed
    adc [hl]                                      ; $5385: $8e
    ld [bc], a                                    ; $5386: $02
    ld [bc], a                                    ; $5387: $02
    ld [bc], a                                    ; $5388: $02
    ld [bc], a                                    ; $5389: $02
    dec b                                         ; $538a: $05
    ld a, [bc]                                    ; $538b: $0a
    ld [bc], a                                    ; $538c: $02
    ld [bc], a                                    ; $538d: $02
    ld [bc], a                                    ; $538e: $02
    ld [bc], a                                    ; $538f: $02
    dec c                                         ; $5390: $0d
    dec c                                         ; $5391: $0d
    ld [bc], a                                    ; $5392: $02
    ld a, [bc]                                    ; $5393: $0a
    ld a, [bc]                                    ; $5394: $0a
    ld a, [bc]                                    ; $5395: $0a
    jp nc, $d1d1                                  ; $5396: $d2 $d1 $d1

    pop de                                        ; $5399: $d1
    call nc, $d1d1                                ; $539a: $d4 $d1 $d1
    pop de                                        ; $539d: $d1
    sub $d7                                       ; $539e: $d6 $d7
    pop de                                        ; $53a0: $d1
    pop de                                        ; $53a1: $d1
    db $e4                                        ; $53a2: $e4
    push hl                                       ; $53a3: $e5
    pop de                                        ; $53a4: $d1
    pop de                                        ; $53a5: $d1
    ld bc, $0303                                  ; $53a6: $01 $03 $03
    inc bc                                        ; $53a9: $03
    ld bc, $0303                                  ; $53aa: $01 $03 $03
    inc bc                                        ; $53ad: $03
    ld bc, $0101                                  ; $53ae: $01 $01 $01
    ld bc, $0101                                  ; $53b1: $01 $01 $01
    ld bc, $e101                                  ; $53b4: $01 $01 $e1
    pop de                                        ; $53b7: $d1
    pop de                                        ; $53b8: $d1
    ld h, a                                       ; $53b9: $67
    ld [c], a                                     ; $53ba: $e2
    pop de                                        ; $53bb: $d1
    pop de                                        ; $53bc: $d1
    ld [hl], a                                    ; $53bd: $77
    db $e3                                        ; $53be: $e3
    pop de                                        ; $53bf: $d1
    pop de                                        ; $53c0: $d1
    ld l, c                                       ; $53c1: $69
    inc b                                         ; $53c2: $04
    pop de                                        ; $53c3: $d1
    pop de                                        ; $53c4: $d1
    ld a, c                                       ; $53c5: $79
    ld bc, $0303                                  ; $53c6: $01 $03 $03
    add e                                         ; $53c9: $83
    ld b, $03                                     ; $53ca: $06 $03
    inc bc                                        ; $53cc: $03
    and h                                         ; $53cd: $a4
    ld b, $03                                     ; $53ce: $06 $03
    inc bc                                        ; $53d0: $03
    add h                                         ; $53d1: $84
    ld b, $01                                     ; $53d2: $06 $01
    ld bc, $6883                                  ; $53d4: $01 $83 $68
    ld d, h                                       ; $53d7: $54
    ld l, d                                       ; $53d8: $6a
    ld l, c                                       ; $53d9: $69
    ld [hl], b                                    ; $53da: $70
    ld l, e                                       ; $53db: $6b
    sbc c                                         ; $53dc: $99
    sbc d                                         ; $53dd: $9a
    ld l, d                                       ; $53de: $6a
    ld l, [hl]                                    ; $53df: $6e
    add b                                         ; $53e0: $80
    ld l, l                                       ; $53e1: $6d
    ld a, d                                       ; $53e2: $7a
    ld d, h                                       ; $53e3: $54
    ld b, l                                       ; $53e4: $45
    ld [hl], b                                    ; $53e5: $70
    add e                                         ; $53e6: $83
    dec b                                         ; $53e7: $05
    and h                                         ; $53e8: $a4
    and e                                         ; $53e9: $a3
    and e                                         ; $53ea: $a3
    ld [bc], a                                    ; $53eb: $02
    adc h                                         ; $53ec: $8c
    adc h                                         ; $53ed: $8c
    add e                                         ; $53ee: $83
    ld [bc], a                                    ; $53ef: $02
    ld a, [bc]                                    ; $53f0: $0a
    and e                                         ; $53f1: $a3
    add h                                         ; $53f2: $84
    dec b                                         ; $53f3: $05
    ld [bc], a                                    ; $53f4: $02
    add e                                         ; $53f5: $83
    pop de                                        ; $53f6: $d1
    pop de                                        ; $53f7: $d1
    pop de                                        ; $53f8: $d1
    pop de                                        ; $53f9: $d1
    pop de                                        ; $53fa: $d1
    pop de                                        ; $53fb: $d1
    pop de                                        ; $53fc: $d1
    pop de                                        ; $53fd: $d1
    halt                                          ; $53fe: $76
    pop de                                        ; $53ff: $d1
    pop de                                        ; $5400: $d1
    pop de                                        ; $5401: $d1
    ld [hl], a                                    ; $5402: $77
    pop de                                        ; $5403: $d1
    pop de                                        ; $5404: $d1
    pop de                                        ; $5405: $d1
    add e                                         ; $5406: $83
    inc bc                                        ; $5407: $03
    inc bc                                        ; $5408: $03
    inc bc                                        ; $5409: $03
    add h                                         ; $540a: $84
    inc bc                                        ; $540b: $03
    inc bc                                        ; $540c: $03
    inc bc                                        ; $540d: $03
    add e                                         ; $540e: $83
    inc bc                                        ; $540f: $03
    inc bc                                        ; $5410: $03
    inc bc                                        ; $5411: $03
    add e                                         ; $5412: $83
    inc bc                                        ; $5413: $03
    inc bc                                        ; $5414: $03
    inc bc                                        ; $5415: $03
    add sp, -$17                                  ; $5416: $e8 $e9
    dec b                                         ; $5418: $05
    dec b                                         ; $5419: $05
    db $ec                                        ; $541a: $ec
    db $ed                                        ; $541b: $ed
    ld [$f008], sp                                ; $541c: $08 $08 $f0
    ld a, [hl]                                    ; $541f: $7e
    dec bc                                        ; $5420: $0b
    dec bc                                        ; $5421: $0b
    ld c, $0f                                     ; $5422: $0e $0f
    ld sp, $0131                                  ; $5424: $31 $31 $01
    ld bc, $0101                                  ; $5427: $01 $01 $01
    ld bc, $0101                                  ; $542a: $01 $01 $01
    ld bc, $0101                                  ; $542d: $01 $01 $01
    ld bc, $0101                                  ; $5430: $01 $01 $01
    ld bc, $0101                                  ; $5433: $01 $01 $01
    ld b, $07                                     ; $5436: $06 $07
    dec b                                         ; $5438: $05
    ld h, c                                       ; $5439: $61
    add hl, bc                                    ; $543a: $09
    ld a, [bc]                                    ; $543b: $0a
    ld [$0c7c], sp                                ; $543c: $08 $7c $0c
    dec c                                         ; $543f: $0d
    dec bc                                        ; $5440: $0b
    ld a, a                                       ; $5441: $7f
    cpl                                           ; $5442: $2f
    jr nc, jr_080_5476                            ; $5443: $30 $31

jr_080_5445:
    add h                                         ; $5445: $84
    ld b, $01                                     ; $5446: $06 $01
    ld bc, $0683                                  ; $5448: $01 $83 $06
    ld bc, $8301                                  ; $544b: $01 $01 $83
    ld b, $01                                     ; $544e: $06 $01
    ld bc, $0683                                  ; $5450: $01 $83 $06
    ld bc, $0a01                                  ; $5453: $01 $01 $0a
    ld h, d                                       ; $5456: $62
    adc e                                         ; $5457: $8b
    ld [hl], l                                    ; $5458: $75
    ld [hl], e                                    ; $5459: $73
    ld a, l                                       ; $545a: $7d
    adc [hl]                                      ; $545b: $8e
    ld [hl], c                                    ; $545c: $71
    ld h, d                                       ; $545d: $62
    ld d, e                                       ; $545e: $53
    ld d, h                                       ; $545f: $54
    ld [hl], h                                    ; $5460: $74
    ld h, l                                       ; $5461: $65
    ld c, b                                       ; $5462: $48
    ld l, e                                       ; $5463: $6b
    ld [hl], l                                    ; $5464: $75
    ld l, b                                       ; $5465: $68
    add h                                         ; $5466: $84
    dec c                                         ; $5467: $0d
    ld [bc], a                                    ; $5468: $02
    add h                                         ; $5469: $84
    add h                                         ; $546a: $84
    dec c                                         ; $546b: $0d
    ld [bc], a                                    ; $546c: $02
    and h                                         ; $546d: $a4
    ld [bc], a                                    ; $546e: $02
    dec b                                         ; $546f: $05
    dec b                                         ; $5470: $05
    and h                                         ; $5471: $a4
    ld [bc], a                                    ; $5472: $02
    ld [bc], a                                    ; $5473: $02
    dec b                                         ; $5474: $05
    and h                                         ; $5475: $a4

jr_080_5476:
    ld a, b                                       ; $5476: $78
    pop de                                        ; $5477: $d1
    pop de                                        ; $5478: $d1
    pop de                                        ; $5479: $d1
    ld h, c                                       ; $547a: $61
    pop de                                        ; $547b: $d1
    pop de                                        ; $547c: $d1
    pop de                                        ; $547d: $d1
    ld h, h                                       ; $547e: $64
    pop de                                        ; $547f: $d1
    pop de                                        ; $5480: $d1
    pop de                                        ; $5481: $d1
    ld h, a                                       ; $5482: $67
    pop de                                        ; $5483: $d1
    pop de                                        ; $5484: $d1
    pop de                                        ; $5485: $d1
    add e                                         ; $5486: $83
    inc bc                                        ; $5487: $03
    inc bc                                        ; $5488: $03
    inc bc                                        ; $5489: $03
    and e                                         ; $548a: $a3
    inc bc                                        ; $548b: $03
    inc bc                                        ; $548c: $03
    inc bc                                        ; $548d: $03
    and h                                         ; $548e: $a4
    inc bc                                        ; $548f: $03
    inc bc                                        ; $5490: $03
    inc bc                                        ; $5491: $03
    and h                                         ; $5492: $a4
    inc bc                                        ; $5493: $03
    inc bc                                        ; $5494: $03
    inc bc                                        ; $5495: $03
    ld [de], a                                    ; $5496: $12
    inc de                                        ; $5497: $13
    inc [hl]                                      ; $5498: $34
    ld [hl-], a                                   ; $5499: $32
    ld d, $17                                     ; $549a: $16 $17
    jr c, jr_080_54d3                             ; $549c: $38 $35

    ld a, [hl+]                                   ; $549e: $2a
    inc a                                         ; $549f: $3c
    inc a                                         ; $54a0: $3c
    add hl, sp                                    ; $54a1: $39
    ld c, l                                       ; $54a2: $4d
    ld e, h                                       ; $54a3: $5c
    ld e, h                                       ; $54a4: $5c
    ld e, c                                       ; $54a5: $59
    ld bc, $0101                                  ; $54a6: $01 $01 $01
    ld bc, $0101                                  ; $54a9: $01 $01 $01
    ld bc, $0101                                  ; $54ac: $01 $01 $01
    ld bc, $0101                                  ; $54af: $01 $01 $01
    ld bc, $0101                                  ; $54b2: $01 $01 $01
    ld bc, $1533                                  ; $54b5: $01 $33 $15
    inc [hl]                                      ; $54b8: $34
    add [hl]                                      ; $54b9: $86
    ld [hl], $37                                  ; $54ba: $36 $37
    jr c, jr_080_5445                             ; $54bc: $38 $87

    ld a, [hl-]                                   ; $54be: $3a
    dec sp                                        ; $54bf: $3b
    inc a                                         ; $54c0: $3c
    adc c                                         ; $54c1: $89
    ld e, d                                       ; $54c2: $5a
    ld e, e                                       ; $54c3: $5b
    ld e, h                                       ; $54c4: $5c
    adc l                                         ; $54c5: $8d
    ld b, $01                                     ; $54c6: $06 $01
    ld bc, $060a                                  ; $54c8: $01 $0a $06
    ld bc, $0a01                                  ; $54cb: $01 $01 $0a
    ld b, $01                                     ; $54ce: $06 $01
    ld bc, $060a                                  ; $54d0: $01 $0a $06

jr_080_54d3:
    ld bc, $0a01                                  ; $54d3: $01 $01 $0a
    ld h, [hl]                                    ; $54d6: $66
    ld a, e                                       ; $54d7: $7b
    ldh a, [rOCPS]                                ; $54d8: $f0 $6a
    ld d, e                                       ; $54da: $53
    adc e                                         ; $54db: $8b
    add d                                         ; $54dc: $82
    ld a, d                                       ; $54dd: $7a
    ld h, e                                       ; $54de: $63
    adc [hl]                                      ; $54df: $8e
    ld [hl], c                                    ; $54e0: $71
    ld l, l                                       ; $54e1: $6d
    ld h, [hl]                                    ; $54e2: $66
    sub b                                         ; $54e3: $90
    ld [hl], h                                    ; $54e4: $74
    ld [hl], b                                    ; $54e5: $70
    ld [bc], a                                    ; $54e6: $02
    dec b                                         ; $54e7: $05
    ld a, [bc]                                    ; $54e8: $0a
    and e                                         ; $54e9: $a3
    ld [bc], a                                    ; $54ea: $02
    dec c                                         ; $54eb: $0d
    ld a, [bc]                                    ; $54ec: $0a
    and h                                         ; $54ed: $a4
    dec b                                         ; $54ee: $05
    ld a, [bc]                                    ; $54ef: $0a
    ld [bc], a                                    ; $54f0: $02
    and h                                         ; $54f1: $a4
    ld [bc], a                                    ; $54f2: $02
    ld a, [bc]                                    ; $54f3: $0a
    dec b                                         ; $54f4: $05
    add e                                         ; $54f5: $83
    ld l, c                                       ; $54f6: $69
    pop de                                        ; $54f7: $d1
    pop de                                        ; $54f8: $d1
    pop de                                        ; $54f9: $d1
    ld a, c                                       ; $54fa: $79
    pop de                                        ; $54fb: $d1
    pop de                                        ; $54fc: $d1
    pop de                                        ; $54fd: $d1
    halt                                          ; $54fe: $76
    pop de                                        ; $54ff: $d1
    pop de                                        ; $5500: $d1
    pop de                                        ; $5501: $d1
    ld [hl], a                                    ; $5502: $77
    pop de                                        ; $5503: $d1
    pop de                                        ; $5504: $d1
    pop de                                        ; $5505: $d1
    and e                                         ; $5506: $a3
    inc bc                                        ; $5507: $03
    inc bc                                        ; $5508: $03
    inc bc                                        ; $5509: $03
    and e                                         ; $550a: $a3
    inc bc                                        ; $550b: $03
    inc bc                                        ; $550c: $03
    inc bc                                        ; $550d: $03
    add h                                         ; $550e: $84
    inc bc                                        ; $550f: $03
    inc bc                                        ; $5510: $03
    inc bc                                        ; $5511: $03
    add h                                         ; $5512: $84
    inc b                                         ; $5513: $04
    inc bc                                        ; $5514: $03
    inc bc                                        ; $5515: $03
    ld d, c                                       ; $5516: $51
    ld d, d                                       ; $5517: $52
    ld b, c                                       ; $5518: $41
    ld b, d                                       ; $5519: $42
    ldh a, [$75]                                  ; $551a: $f0 $75
    add c                                         ; $551c: $81
    ld l, e                                       ; $551d: $6b
    add d                                         ; $551e: $82
    ld l, a                                       ; $551f: $6f
    ld h, [hl]                                    ; $5520: $66
    ld l, [hl]                                    ; $5521: $6e
    ld [hl], c                                    ; $5522: $71
    ld b, l                                       ; $5523: $45
    ld d, e                                       ; $5524: $53
    db $ed                                        ; $5525: $ed
    ld [bc], a                                    ; $5526: $02
    ld [bc], a                                    ; $5527: $02
    ld [bc], a                                    ; $5528: $02
    ld [bc], a                                    ; $5529: $02
    ld a, [bc]                                    ; $552a: $0a
    ld [bc], a                                    ; $552b: $02
    ld a, [bc]                                    ; $552c: $0a
    ld [bc], a                                    ; $552d: $02
    dec c                                         ; $552e: $0d
    ld [bc], a                                    ; $552f: $02
    ld [bc], a                                    ; $5530: $02
    ld [bc], a                                    ; $5531: $02
    dec b                                         ; $5532: $05
    ld [bc], a                                    ; $5533: $02
    ld [bc], a                                    ; $5534: $02
    ld a, [bc]                                    ; $5535: $0a
    ld b, e                                       ; $5536: $43
    ld b, h                                       ; $5537: $44
    ld d, c                                       ; $5538: $51
    adc a                                         ; $5539: $8f
    ld [hl], l                                    ; $553a: $75
    ld h, e                                       ; $553b: $63
    ld l, h                                       ; $553c: $6c
    ld [hl], l                                    ; $553d: $75
    adc e                                         ; $553e: $8b
    add d                                         ; $553f: $82
    ld l, a                                       ; $5540: $6f
    add b                                         ; $5541: $80
    adc [hl]                                      ; $5542: $8e
    ld [hl], c                                    ; $5543: $71
    ld d, h                                       ; $5544: $54
    db $ec                                        ; $5545: $ec
    ld [bc], a                                    ; $5546: $02
    ld [bc], a                                    ; $5547: $02
    ld [bc], a                                    ; $5548: $02
    ld a, [bc]                                    ; $5549: $0a
    ld [bc], a                                    ; $554a: $02
    ld [bc], a                                    ; $554b: $02
    ld [bc], a                                    ; $554c: $02
    ld [bc], a                                    ; $554d: $02
    dec c                                         ; $554e: $0d
    ld a, [bc]                                    ; $554f: $0a
    ld [bc], a                                    ; $5550: $02
    ld a, [bc]                                    ; $5551: $0a
    ld a, [bc]                                    ; $5552: $0a
    ld [bc], a                                    ; $5553: $02
    ld [bc], a                                    ; $5554: $02
    ld a, [bc]                                    ; $5555: $0a
    ld c, b                                       ; $5556: $48
    ld d, h                                       ; $5557: $54
    ld b, l                                       ; $5558: $45
    ld [hl], e                                    ; $5559: $73
    adc b                                         ; $555a: $88
    ld a, e                                       ; $555b: $7b
    ldh a, [$62]                                  ; $555c: $f0 $62
    adc d                                         ; $555e: $8a
    adc e                                         ; $555f: $8b
    add b                                         ; $5560: $80
    ld h, l                                       ; $5561: $65
    db $ed                                        ; $5562: $ed
    ld d, h                                       ; $5563: $54
    ld b, l                                       ; $5564: $45
    ld l, b                                       ; $5565: $68
    ld [bc], a                                    ; $5566: $02
    ld [bc], a                                    ; $5567: $02
    dec b                                         ; $5568: $05
    add e                                         ; $5569: $83
    ld a, [bc]                                    ; $556a: $0a
    dec b                                         ; $556b: $05
    ld a, [bc]                                    ; $556c: $0a
    and h                                         ; $556d: $a4
    ld a, [bc]                                    ; $556e: $0a
    ld a, [bc]                                    ; $556f: $0a
    ld a, [bc]                                    ; $5570: $0a
    and h                                         ; $5571: $a4
    dec c                                         ; $5572: $0d
    ld [bc], a                                    ; $5573: $02
    ld [bc], a                                    ; $5574: $02
    and h                                         ; $5575: $a4
    ld a, b                                       ; $5576: $78
    pop de                                        ; $5577: $d1
    pop de                                        ; $5578: $d1
    pop de                                        ; $5579: $d1
    ld h, c                                       ; $557a: $61
    pop de                                        ; $557b: $d1
    pop de                                        ; $557c: $d1
    pop de                                        ; $557d: $d1
    ld h, h                                       ; $557e: $64
    pop de                                        ; $557f: $d1
    pop de                                        ; $5580: $d1
    pop de                                        ; $5581: $d1
    ld h, a                                       ; $5582: $67
    pop de                                        ; $5583: $d1
    pop de                                        ; $5584: $d1
    pop de                                        ; $5585: $d1
    add h                                         ; $5586: $84
    inc bc                                        ; $5587: $03
    inc bc                                        ; $5588: $03
    inc bc                                        ; $5589: $03
    and e                                         ; $558a: $a3
    inc bc                                        ; $558b: $03
    inc bc                                        ; $558c: $03
    inc bc                                        ; $558d: $03
    and e                                         ; $558e: $a3
    inc bc                                        ; $558f: $03
    inc bc                                        ; $5590: $03
    inc bc                                        ; $5591: $03
    and h                                         ; $5592: $a4
    inc bc                                        ; $5593: $03
    inc bc                                        ; $5594: $03
    inc bc                                        ; $5595: $03
    ld [hl], h                                    ; $5596: $74
    adc h                                         ; $5597: $8c
    xor $85                                       ; $5598: $ee $85
    add b                                         ; $559a: $80
    ld h, [hl]                                    ; $559b: $66
    ld b, a                                       ; $559c: $47
    ld c, b                                       ; $559d: $48
    db $fc                                        ; $559e: $fc
    ld bc, $0302                                  ; $559f: $01 $02 $03
    nop                                           ; $55a2: $00
    inc b                                         ; $55a3: $04
    dec b                                         ; $55a4: $05
    ld b, $02                                     ; $55a5: $06 $02
    ld a, [bc]                                    ; $55a7: $0a
    ld a, [bc]                                    ; $55a8: $0a
    ld a, [bc]                                    ; $55a9: $0a
    ld a, [bc]                                    ; $55aa: $0a
    ld [bc], a                                    ; $55ab: $02
    ld [bc], a                                    ; $55ac: $02
    ld [bc], a                                    ; $55ad: $02
    adc h                                         ; $55ae: $8c
    adc h                                         ; $55af: $8c
    adc e                                         ; $55b0: $8b
    adc e                                         ; $55b1: $8b
    adc h                                         ; $55b2: $8c
    adc e                                         ; $55b3: $8b
    adc e                                         ; $55b4: $8b
    adc h                                         ; $55b5: $8c
    sub b                                         ; $55b6: $90
    ld [hl], h                                    ; $55b7: $74
    adc h                                         ; $55b8: $8c
    xor $66                                       ; $55b9: $ee $66
    ld l, [hl]                                    ; $55bb: $6e
    ld b, [hl]                                    ; $55bc: $46
    ld b, a                                       ; $55bd: $47
    ld a, [c]                                     ; $55be: $f2
    di                                            ; $55bf: $f3
    db $f4                                        ; $55c0: $f4
    ld sp, hl                                     ; $55c1: $f9
    or $f7                                        ; $55c2: $f6 $f7
    ld hl, sp-$03                                 ; $55c4: $f8 $fd
    ld a, [bc]                                    ; $55c6: $0a
    ld [bc], a                                    ; $55c7: $02
    ld a, [bc]                                    ; $55c8: $0a
    ld a, [bc]                                    ; $55c9: $0a
    ld [bc], a                                    ; $55ca: $02
    ld [bc], a                                    ; $55cb: $02
    ld [bc], a                                    ; $55cc: $02
    ld [bc], a                                    ; $55cd: $02
    adc e                                         ; $55ce: $8b
    adc e                                         ; $55cf: $8b
    adc h                                         ; $55d0: $8c
    adc h                                         ; $55d1: $8c
    adc e                                         ; $55d2: $8b
    adc e                                         ; $55d3: $8b
    adc e                                         ; $55d4: $8b
    adc h                                         ; $55d5: $8c
    add l                                         ; $55d6: $85
    sub b                                         ; $55d7: $90
    ld h, e                                       ; $55d8: $63
    adc h                                         ; $55d9: $8c
    ld l, [hl]                                    ; $55da: $6e
    add b                                         ; $55db: $80
    ld e, l                                       ; $55dc: $5d
    ld l, [hl]                                    ; $55dd: $6e
    ld a, [$fcfb]                                 ; $55de: $fa $fb $fc
    ld bc, $fffe                                  ; $55e1: $01 $fe $ff
    nop                                           ; $55e4: $00
    inc b                                         ; $55e5: $04
    ld a, [bc]                                    ; $55e6: $0a
    ld a, [bc]                                    ; $55e7: $0a
    ld [bc], a                                    ; $55e8: $02
    ld a, [bc]                                    ; $55e9: $0a
    ld [bc], a                                    ; $55ea: $02
    ld a, [bc]                                    ; $55eb: $0a
    ld [bc], a                                    ; $55ec: $02
    ld [bc], a                                    ; $55ed: $02
    adc h                                         ; $55ee: $8c
    adc h                                         ; $55ef: $8c
    adc e                                         ; $55f0: $8b
    adc e                                         ; $55f1: $8b
    adc h                                         ; $55f2: $8c
    adc e                                         ; $55f3: $8b
    adc e                                         ; $55f4: $8b
    adc h                                         ; $55f5: $8c
    ld [hl], l                                    ; $55f6: $75
    ld h, e                                       ; $55f7: $63
    sub b                                         ; $55f8: $90
    ld [hl], l                                    ; $55f9: $75
    add b                                         ; $55fa: $80
    ld c, b                                       ; $55fb: $48
    ld l, [hl]                                    ; $55fc: $6e
    ld e, l                                       ; $55fd: $5d
    ld [bc], a                                    ; $55fe: $02
    inc bc                                        ; $55ff: $03
    ld a, [c]                                     ; $5600: $f2
    ld c, $05                                     ; $5601: $0e $05
    ld b, $f6                                     ; $5603: $06 $f6
    rrca                                          ; $5605: $0f
    ld [bc], a                                    ; $5606: $02
    ld [bc], a                                    ; $5607: $02
    ld a, [bc]                                    ; $5608: $0a
    ld [bc], a                                    ; $5609: $02
    ld a, [bc]                                    ; $560a: $0a
    ld [bc], a                                    ; $560b: $02
    ld [bc], a                                    ; $560c: $02
    ld [bc], a                                    ; $560d: $02
    adc e                                         ; $560e: $8b
    adc h                                         ; $560f: $8c
    adc h                                         ; $5610: $8c
    adc h                                         ; $5611: $8c
    adc h                                         ; $5612: $8c
    adc e                                         ; $5613: $8b
    adc e                                         ; $5614: $8b
    adc e                                         ; $5615: $8b
    pop de                                        ; $5616: $d1
    pop de                                        ; $5617: $d1
    pop de                                        ; $5618: $d1
    pop de                                        ; $5619: $d1
    pop de                                        ; $561a: $d1
    pop de                                        ; $561b: $d1
    pop de                                        ; $561c: $d1
    pop de                                        ; $561d: $d1
    pop de                                        ; $561e: $d1
    pop de                                        ; $561f: $d1
    pop de                                        ; $5620: $d1
    pop de                                        ; $5621: $d1
    pop de                                        ; $5622: $d1
    pop de                                        ; $5623: $d1
    pop de                                        ; $5624: $d1
    pop de                                        ; $5625: $d1
    add h                                         ; $5626: $84
    add e                                         ; $5627: $83
    add e                                         ; $5628: $83
    add e                                         ; $5629: $83
    inc bc                                        ; $562a: $03
    inc bc                                        ; $562b: $03
    inc bc                                        ; $562c: $03
    inc bc                                        ; $562d: $03
    inc bc                                        ; $562e: $03
    inc bc                                        ; $562f: $03
    inc bc                                        ; $5630: $03
    inc bc                                        ; $5631: $03
    inc bc                                        ; $5632: $03
    inc bc                                        ; $5633: $03
    inc bc                                        ; $5634: $03
    inc bc                                        ; $5635: $03
    pop de                                        ; $5636: $d1
    pop de                                        ; $5637: $d1
    pop de                                        ; $5638: $d1
    halt                                          ; $5639: $76
    pop de                                        ; $563a: $d1
    pop de                                        ; $563b: $d1
    pop de                                        ; $563c: $d1
    ld [hl], a                                    ; $563d: $77
    pop de                                        ; $563e: $d1
    pop de                                        ; $563f: $d1
    pop de                                        ; $5640: $d1
    ld a, b                                       ; $5641: $78
    pop de                                        ; $5642: $d1
    pop de                                        ; $5643: $d1
    pop de                                        ; $5644: $d1
    ld h, c                                       ; $5645: $61
    add e                                         ; $5646: $83
    add e                                         ; $5647: $83
    add e                                         ; $5648: $83
    and e                                         ; $5649: $a3
    inc bc                                        ; $564a: $03
    inc bc                                        ; $564b: $03
    add e                                         ; $564c: $83
    and e                                         ; $564d: $a3
    inc bc                                        ; $564e: $03
    inc bc                                        ; $564f: $03
    add e                                         ; $5650: $83
    and e                                         ; $5651: $a3
    inc bc                                        ; $5652: $03
    inc bc                                        ; $5653: $03
    add e                                         ; $5654: $83
    add e                                         ; $5655: $83
    pop de                                        ; $5656: $d1
    pop de                                        ; $5657: $d1
    pop de                                        ; $5658: $d1
    ld h, h                                       ; $5659: $64
    pop de                                        ; $565a: $d1
    pop de                                        ; $565b: $d1
    pop de                                        ; $565c: $d1
    ld h, a                                       ; $565d: $67
    pop de                                        ; $565e: $d1
    pop de                                        ; $565f: $d1
    pop de                                        ; $5660: $d1
    ld l, c                                       ; $5661: $69
    pop de                                        ; $5662: $d1
    pop de                                        ; $5663: $d1
    pop de                                        ; $5664: $d1
    ld a, c                                       ; $5665: $79
    inc bc                                        ; $5666: $03
    inc bc                                        ; $5667: $03
    add e                                         ; $5668: $83
    add e                                         ; $5669: $83
    inc bc                                        ; $566a: $03
    inc bc                                        ; $566b: $03
    add e                                         ; $566c: $83
    add h                                         ; $566d: $84
    inc bc                                        ; $566e: $03
    inc bc                                        ; $566f: $03
    add e                                         ; $5670: $83
    add h                                         ; $5671: $84
    inc bc                                        ; $5672: $03
    inc bc                                        ; $5673: $03
    add e                                         ; $5674: $83
    add h                                         ; $5675: $84
    pop de                                        ; $5676: $d1
    pop de                                        ; $5677: $d1
    pop de                                        ; $5678: $d1
    halt                                          ; $5679: $76
    pop de                                        ; $567a: $d1
    pop de                                        ; $567b: $d1
    pop de                                        ; $567c: $d1
    ld [hl], a                                    ; $567d: $77
    pop de                                        ; $567e: $d1
    pop de                                        ; $567f: $d1
    pop de                                        ; $5680: $d1
    ld a, b                                       ; $5681: $78
    pop de                                        ; $5682: $d1
    pop de                                        ; $5683: $d1
    pop de                                        ; $5684: $d1
    ld h, c                                       ; $5685: $61
    inc bc                                        ; $5686: $03
    inc bc                                        ; $5687: $03
    add e                                         ; $5688: $83
    and h                                         ; $5689: $a4
    inc bc                                        ; $568a: $03
    inc bc                                        ; $568b: $03
    add e                                         ; $568c: $83
    and e                                         ; $568d: $a3
    inc bc                                        ; $568e: $03
    inc bc                                        ; $568f: $03
    add e                                         ; $5690: $83
    and e                                         ; $5691: $a3
    inc bc                                        ; $5692: $03
    inc bc                                        ; $5693: $03
    add e                                         ; $5694: $83
    add e                                         ; $5695: $83
    adc h                                         ; $5696: $8c
    ld l, e                                       ; $5697: $6b
    add l                                         ; $5698: $85
    ld h, e                                       ; $5699: $63
    ld h, [hl]                                    ; $569a: $66
    ld b, a                                       ; $569b: $47
    ld c, b                                       ; $569c: $48
    ld h, [hl]                                    ; $569d: $66
    db $10                                        ; $569e: $10
    ld d, h                                       ; $569f: $54
    adc b                                         ; $56a0: $88
    ld d, e                                       ; $56a1: $53
    ld c, $83                                     ; $56a2: $0e $83
    adc d                                         ; $56a4: $8a
    adc e                                         ; $56a5: $8b
    ld a, [bc]                                    ; $56a6: $0a
    dec b                                         ; $56a7: $05
    ld a, [bc]                                    ; $56a8: $0a
    ld [bc], a                                    ; $56a9: $02
    ld [bc], a                                    ; $56aa: $02
    dec b                                         ; $56ab: $05
    dec b                                         ; $56ac: $05
    ld [bc], a                                    ; $56ad: $02
    adc e                                         ; $56ae: $8b
    ld [bc], a                                    ; $56af: $02
    ld a, [bc]                                    ; $56b0: $0a
    ld [bc], a                                    ; $56b1: $02
    adc e                                         ; $56b2: $8b
    ld a, [bc]                                    ; $56b3: $0a
    ld a, [bc]                                    ; $56b4: $0a
    dec c                                         ; $56b5: $0d
    ld h, d                                       ; $56b6: $62
    ld h, c                                       ; $56b7: $61
    pop de                                        ; $56b8: $d1
    pop de                                        ; $56b9: $d1
    ld h, l                                       ; $56ba: $65
    ld h, h                                       ; $56bb: $64
    pop de                                        ; $56bc: $d1
    pop de                                        ; $56bd: $d1
    ld l, b                                       ; $56be: $68
    ld h, a                                       ; $56bf: $67
    pop de                                        ; $56c0: $d1
    pop de                                        ; $56c1: $d1
    ld l, d                                       ; $56c2: $6a
    ld l, c                                       ; $56c3: $69
    pop de                                        ; $56c4: $d1
    pop de                                        ; $56c5: $d1
    and e                                         ; $56c6: $a3
    and h                                         ; $56c7: $a4
    inc bc                                        ; $56c8: $03
    inc bc                                        ; $56c9: $03
    and e                                         ; $56ca: $a3
    and h                                         ; $56cb: $a4
    inc bc                                        ; $56cc: $03
    inc bc                                        ; $56cd: $03
    and h                                         ; $56ce: $a4
    and e                                         ; $56cf: $a3
    inc bc                                        ; $56d0: $03
    inc bc                                        ; $56d1: $03
    and h                                         ; $56d2: $a4
    and e                                         ; $56d3: $a3
    inc bc                                        ; $56d4: $03
    inc bc                                        ; $56d5: $03
    ld l, l                                       ; $56d6: $6d
    db $ec                                        ; $56d7: $ec
    db $ed                                        ; $56d8: $ed
    adc [hl]                                      ; $56d9: $8e
    ld [hl], b                                    ; $56da: $70
    xor $85                                       ; $56db: $ee $85
    sub b                                         ; $56dd: $90
    ld [hl], e                                    ; $56de: $73
    ld b, a                                       ; $56df: $47
    ld c, b                                       ; $56e0: $48
    ld h, e                                       ; $56e1: $63
    ld h, d                                       ; $56e2: $62
    add c                                         ; $56e3: $81
    add b                                         ; $56e4: $80
    ld a, e                                       ; $56e5: $7b
    add e                                         ; $56e6: $83
    dec c                                         ; $56e7: $0d
    dec c                                         ; $56e8: $0d
    dec c                                         ; $56e9: $0d
    and e                                         ; $56ea: $a3
    dec c                                         ; $56eb: $0d
    dec c                                         ; $56ec: $0d
    ld a, [bc]                                    ; $56ed: $0a
    and e                                         ; $56ee: $a3
    dec b                                         ; $56ef: $05
    ld [bc], a                                    ; $56f0: $02
    ld [bc], a                                    ; $56f1: $02
    add e                                         ; $56f2: $83
    dec c                                         ; $56f3: $0d
    ld a, [bc]                                    ; $56f4: $0a
    ld [bc], a                                    ; $56f5: $02
    ld a, d                                       ; $56f6: $7a
    ld a, c                                       ; $56f7: $79
    pop de                                        ; $56f8: $d1
    pop hl                                        ; $56f9: $e1
    ld h, d                                       ; $56fa: $62
    ld h, c                                       ; $56fb: $61
    pop de                                        ; $56fc: $d1
    ld [c], a                                     ; $56fd: $e2
    ld h, l                                       ; $56fe: $65
    ld h, h                                       ; $56ff: $64
    pop de                                        ; $5700: $d1
    db $e3                                        ; $5701: $e3
    ld l, b                                       ; $5702: $68
    ld h, a                                       ; $5703: $67
    pop de                                        ; $5704: $d1
    inc b                                         ; $5705: $04
    and e                                         ; $5706: $a3
    and h                                         ; $5707: $a4
    inc bc                                        ; $5708: $03
    ld bc, $a3a3                                  ; $5709: $01 $a3 $a3
    inc bc                                        ; $570c: $03
    ld b, $a4                                     ; $570d: $06 $a4
    and e                                         ; $570f: $a3
    ld bc, $a406                                  ; $5710: $01 $06 $a4
    and e                                         ; $5713: $a3
    ld bc, $d106                                  ; $5714: $01 $06 $d1
    jp nc, $d3d1                                  ; $5717: $d2 $d1 $d3

    pop de                                        ; $571a: $d1
    call nc, $d5d1                                ; $571b: $d4 $d1 $d5
    pop de                                        ; $571e: $d1
    sub $d7                                       ; $571f: $d6 $d7
    ret c                                         ; $5721: $d8

    pop de                                        ; $5722: $d1
    db $e4                                        ; $5723: $e4
    push hl                                       ; $5724: $e5
    and $03                                       ; $5725: $e6 $03
    ld bc, $0103                                  ; $5727: $01 $03 $01
    inc bc                                        ; $572a: $03
    ld bc, $0103                                  ; $572b: $01 $03 $01
    ld bc, $0101                                  ; $572e: $01 $01 $01
    ld bc, $0101                                  ; $5731: $01 $01 $01
    ld bc, $d101                                  ; $5734: $01 $01 $d1
    jp c, $dbd1                                   ; $5737: $da $d1 $db

    pop de                                        ; $573a: $d1
    call c, $ddd1                                 ; $573b: $dc $d1 $dd
    reti                                          ; $573e: $d9


    sbc $df                                       ; $573f: $de $df
    ldh [$e7], a                                  ; $5741: $e0 $e7
    db $f4                                        ; $5743: $f4
    pop de                                        ; $5744: $d1
    push af                                       ; $5745: $f5
    inc bc                                        ; $5746: $03
    ld bc, $0603                                  ; $5747: $01 $03 $06
    inc bc                                        ; $574a: $03
    ld bc, $0603                                  ; $574b: $01 $03 $06
    ld bc, $0101                                  ; $574e: $01 $01 $01
    ld b, $01                                     ; $5751: $06 $01
    ld bc, $0601                                  ; $5753: $01 $01 $06
    ld h, l                                       ; $5756: $65
    ld d, h                                       ; $5757: $54
    adc d                                         ; $5758: $8a
    ld d, e                                       ; $5759: $53
    ld l, b                                       ; $575a: $68
    db $ec                                        ; $575b: $ec
    db $ed                                        ; $575c: $ed
    ld h, e                                       ; $575d: $63
    ld l, d                                       ; $575e: $6a
    xor $80                                       ; $575f: $ee $80
    sub b                                         ; $5761: $90
    ld a, d                                       ; $5762: $7a
    ld d, h                                       ; $5763: $54
    ld c, b                                       ; $5764: $48
    ld d, e                                       ; $5765: $53
    add h                                         ; $5766: $84
    dec b                                         ; $5767: $05
    dec c                                         ; $5768: $0d
    ld [bc], a                                    ; $5769: $02
    add e                                         ; $576a: $83
    dec c                                         ; $576b: $0d
    ld a, [bc]                                    ; $576c: $0a
    ld [bc], a                                    ; $576d: $02
    add e                                         ; $576e: $83
    ld a, [bc]                                    ; $576f: $0a
    dec c                                         ; $5770: $0d
    ld a, [bc]                                    ; $5771: $0a
    add e                                         ; $5772: $83
    ld [bc], a                                    ; $5773: $02
    dec b                                         ; $5774: $05
    ld [bc], a                                    ; $5775: $02
    ld l, d                                       ; $5776: $6a
    ld l, c                                       ; $5777: $69
    dec b                                         ; $5778: $05
    ld b, $7a                                     ; $5779: $06 $7a
    ld a, c                                       ; $577b: $79
    ld [$6e09], sp                                ; $577c: $08 $09 $6e
    dec c                                         ; $577f: $0d
    dec bc                                        ; $5780: $0b
    inc c                                         ; $5781: $0c
    ld e, l                                       ; $5782: $5d
    add h                                         ; $5783: $84
    ld sp, $a42f                                  ; $5784: $31 $2f $a4
    and h                                         ; $5787: $a4
    ld bc, $a306                                  ; $5788: $01 $06 $a3
    and h                                         ; $578b: $a4
    ld bc, $0206                                  ; $578c: $01 $06 $02
    adc e                                         ; $578f: $8b
    ld bc, $0506                                  ; $5790: $01 $06 $05
    ld a, [hl+]                                   ; $5793: $2a
    ld bc, $0706                                  ; $5794: $01 $06 $07
    add sp, -$17                                  ; $5797: $e8 $e9
    ld [$ec0a], a                                 ; $5799: $ea $0a $ec
    db $ed                                        ; $579c: $ed
    xor $0d                                       ; $579d: $ee $0d
    ldh a, [$f1]                                  ; $579f: $f0 $f1
    ld a, [c]                                     ; $57a1: $f2
    jr nc, jr_080_57b2                            ; $57a2: $30 $0e

    rrca                                          ; $57a4: $0f
    db $10                                        ; $57a5: $10
    ld bc, $0101                                  ; $57a6: $01 $01 $01
    ld bc, $0101                                  ; $57a9: $01 $01 $01
    ld bc, $0101                                  ; $57ac: $01 $01 $01
    ld bc, $0101                                  ; $57af: $01 $01 $01

jr_080_57b2:
    ld bc, $0101                                  ; $57b2: $01 $01 $01
    ld bc, $f7eb                                  ; $57b5: $01 $eb $f7
    ld hl, sp-$07                                 ; $57b8: $f8 $f9
    rst $28                                       ; $57ba: $ef
    ei                                            ; $57bb: $fb
    db $fc                                        ; $57bc: $fc
    db $fd                                        ; $57bd: $fd
    di                                            ; $57be: $f3
    rst $38                                       ; $57bf: $ff
    nop                                           ; $57c0: $00
    ld bc, $1e11                                  ; $57c1: $01 $11 $1e
    rra                                           ; $57c4: $1f
    jr nz, @+$03                                  ; $57c5: $20 $01

    ld bc, $0601                                  ; $57c7: $01 $01 $06
    ld bc, $0101                                  ; $57ca: $01 $01 $01
    ld b, $01                                     ; $57cd: $06 $01
    ld bc, $0601                                  ; $57cf: $01 $01 $06
    ld bc, $0101                                  ; $57d2: $01 $01 $01
    ld b, $6d                                     ; $57d5: $06 $6d
    add c                                         ; $57d7: $81
    adc b                                         ; $57d8: $88
    ld a, e                                       ; $57d9: $7b
    ld [hl], b                                    ; $57da: $70
    add e                                         ; $57db: $83
    adc d                                         ; $57dc: $8a
    adc e                                         ; $57dd: $8b
    ld [hl], e                                    ; $57de: $73
    ld d, h                                       ; $57df: $54
    db $ed                                        ; $57e0: $ed
    adc [hl]                                      ; $57e1: $8e
    ld h, d                                       ; $57e2: $62

Jump_080_57e3:
    ld l, e                                       ; $57e3: $6b
    ld [hl], l                                    ; $57e4: $75
    sub b                                         ; $57e5: $90
    add e                                         ; $57e6: $83
    ld a, [bc]                                    ; $57e7: $0a
    dec c                                         ; $57e8: $0d
    ld [bc], a                                    ; $57e9: $02
    and e                                         ; $57ea: $a3
    ld a, [bc]                                    ; $57eb: $0a
    dec c                                         ; $57ec: $0d
    dec c                                         ; $57ed: $0d
    and h                                         ; $57ee: $a4
    ld [bc], a                                    ; $57ef: $02
    ld a, [bc]                                    ; $57f0: $0a
    ld a, [bc]                                    ; $57f1: $0a
    add h                                         ; $57f2: $84
    ld [bc], a                                    ; $57f3: $02
    dec b                                         ; $57f4: $05
    ld a, [bc]                                    ; $57f5: $0a
    ldh a, [$86]                                  ; $57f6: $f0 $86
    inc [hl]                                      ; $57f8: $34
    inc sp                                        ; $57f9: $33
    add d                                         ; $57fa: $82
    add a                                         ; $57fb: $87
    jr c, @+$38                                   ; $57fc: $38 $36

    ld [hl], c                                    ; $57fe: $71
    adc c                                         ; $57ff: $89
    inc a                                         ; $5800: $3c
    ld a, [hl-]                                   ; $5801: $3a
    ld [hl], h                                    ; $5802: $74
    adc l                                         ; $5803: $8d
    ld e, h                                       ; $5804: $5c
    ld e, d                                       ; $5805: $5a
    dec c                                         ; $5806: $0d
    ld a, [hl+]                                   ; $5807: $2a
    ld bc, $0d06                                  ; $5808: $01 $06 $0d
    ld a, [hl+]                                   ; $580b: $2a
    ld bc, $0206                                  ; $580c: $01 $06 $02
    ld a, [hl+]                                   ; $580f: $2a
    ld bc, $0206                                  ; $5810: $01 $06 $02
    ld a, [hl+]                                   ; $5813: $2a
    ld bc, $1501                                  ; $5814: $01 $01 $15
    ld [de], a                                    ; $5817: $12
    inc de                                        ; $5818: $13
    inc d                                         ; $5819: $14
    ld a, [bc]                                    ; $581a: $0a
    ld d, $17                                     ; $581b: $16 $17
    jr jr_080_585a                                ; $581d: $18 $3b

    ld a, [de]                                    ; $581f: $1a
    dec de                                        ; $5820: $1b
    inc e                                         ; $5821: $1c
    ld e, e                                       ; $5822: $5b
    dec a                                         ; $5823: $3d
    ld a, $3f                                     ; $5824: $3e $3f
    ld bc, $0101                                  ; $5826: $01 $01 $01
    ld bc, $0109                                  ; $5829: $01 $09 $01
    ld bc, $0101                                  ; $582c: $01 $01 $01
    ld bc, $0101                                  ; $582f: $01 $01 $01
    ld bc, $0101                                  ; $5832: $01 $01 $01
    ld bc, $2215                                  ; $5835: $01 $15 $22
    inc hl                                        ; $5838: $23
    inc h                                         ; $5839: $24
    add hl, de                                    ; $583a: $19
    ld h, $27                                     ; $583b: $26 $27
    jr z, jr_080_585c                             ; $583d: $28 $1d

    ld a, [hl+]                                   ; $583f: $2a
    dec hl                                        ; $5840: $2b
    inc l                                         ; $5841: $2c
    ld b, b                                       ; $5842: $40
    ld c, l                                       ; $5843: $4d
    ld c, [hl]                                    ; $5844: $4e
    ld c, a                                       ; $5845: $4f
    ld bc, $0101                                  ; $5846: $01 $01 $01
    ld b, $01                                     ; $5849: $06 $01
    ld bc, $0601                                  ; $584b: $01 $01 $06
    ld bc, $0101                                  ; $584e: $01 $01 $01
    ld bc, $0101                                  ; $5851: $01 $01 $01
    ld bc, $d101                                  ; $5854: $01 $01 $d1
    pop de                                        ; $5857: $d1
    sbc b                                         ; $5858: $98
    ld l, l                                       ; $5859: $6d

jr_080_585a:
    pop de                                        ; $585a: $d1
    pop de                                        ; $585b: $d1

jr_080_585c:
    ld [hl], a                                    ; $585c: $77
    ld [hl], b                                    ; $585d: $70
    pop de                                        ; $585e: $d1
    pop de                                        ; $585f: $d1
    ld a, b                                       ; $5860: $78
    ld [hl], e                                    ; $5861: $73
    pop de                                        ; $5862: $d1
    pop de                                        ; $5863: $d1
    ld h, c                                       ; $5864: $61
    ld h, d                                       ; $5865: $62
    inc bc                                        ; $5866: $03
    inc bc                                        ; $5867: $03
    adc h                                         ; $5868: $8c
    add e                                         ; $5869: $83
    inc bc                                        ; $586a: $03
    inc bc                                        ; $586b: $03
    and h                                         ; $586c: $a4
    and e                                         ; $586d: $a3
    inc bc                                        ; $586e: $03
    inc bc                                        ; $586f: $03
    and h                                         ; $5870: $a4
    and e                                         ; $5871: $a3
    inc bc                                        ; $5872: $03
    inc bc                                        ; $5873: $03
    add h                                         ; $5874: $84
    add h                                         ; $5875: $84
    ld l, e                                       ; $5876: $6b
    ld [hl], l                                    ; $5877: $75
    ld h, d                                       ; $5878: $62
    ld h, c                                       ; $5879: $61
    ld h, b                                       ; $587a: $60
    ld e, l                                       ; $587b: $5d
    ld h, l                                       ; $587c: $65
    ld h, h                                       ; $587d: $64
    ld d, h                                       ; $587e: $54
    ldh a, [rBCPS]                                ; $587f: $f0 $68
    ld h, a                                       ; $5881: $67
    adc e                                         ; $5882: $8b
    add d                                         ; $5883: $82
    ld l, d                                       ; $5884: $6a
    ld l, c                                       ; $5885: $69
    ld [bc], a                                    ; $5886: $02
    ld [bc], a                                    ; $5887: $02
    and e                                         ; $5888: $a3
    and e                                         ; $5889: $a3
    ld [bc], a                                    ; $588a: $02
    dec b                                         ; $588b: $05
    and e                                         ; $588c: $a3
    and h                                         ; $588d: $a4
    ld [bc], a                                    ; $588e: $02
    dec c                                         ; $588f: $0d
    and h                                         ; $5890: $a4
    and e                                         ; $5891: $a3
    ld a, [bc]                                    ; $5892: $0a
    ld a, [bc]                                    ; $5893: $0a
    and h                                         ; $5894: $a4
    and e                                         ; $5895: $a3
    pop de                                        ; $5896: $d1
    pop de                                        ; $5897: $d1
    pop hl                                        ; $5898: $e1
    pop de                                        ; $5899: $d1
    pop de                                        ; $589a: $d1
    pop de                                        ; $589b: $d1
    ld [c], a                                     ; $589c: $e2
    pop de                                        ; $589d: $d1
    pop de                                        ; $589e: $d1
    pop de                                        ; $589f: $d1
    db $e3                                        ; $58a0: $e3
    pop de                                        ; $58a1: $d1
    or $03                                        ; $58a2: $f6 $03
    inc b                                         ; $58a4: $04
    pop de                                        ; $58a5: $d1
    inc bc                                        ; $58a6: $03
    inc bc                                        ; $58a7: $03
    ld bc, $0303                                  ; $58a8: $01 $03 $03
    inc bc                                        ; $58ab: $03
    ld bc, $0103                                  ; $58ac: $01 $03 $01
    ld bc, $0101                                  ; $58af: $01 $01 $01
    ld bc, $0101                                  ; $58b2: $01 $01 $01
    ld bc, $d1d2                                  ; $58b5: $01 $d2 $d1
    ld h, h                                       ; $58b8: $64
    ld h, l                                       ; $58b9: $65
    call nc, Call_080_67d1                        ; $58ba: $d4 $d1 $67
    ld l, b                                       ; $58bd: $68
    sub $d7                                       ; $58be: $d6 $d7
    ld l, c                                       ; $58c0: $69
    ld l, d                                       ; $58c1: $6a
    db $e4                                        ; $58c2: $e4
    push hl                                       ; $58c3: $e5
    ld a, c                                       ; $58c4: $79
    ld a, d                                       ; $58c5: $7a
    ld bc, $8403                                  ; $58c6: $01 $03 $84
    add h                                         ; $58c9: $84
    ld bc, $8403                                  ; $58ca: $01 $03 $84
    add h                                         ; $58cd: $84
    ld bc, $8301                                  ; $58ce: $01 $01 $83
    add e                                         ; $58d1: $83
    ld bc, $8301                                  ; $58d2: $01 $01 $83
    add e                                         ; $58d5: $83
    ld l, [hl]                                    ; $58d6: $6e
    ld [hl], c                                    ; $58d7: $71
    ld a, d                                       ; $58d8: $7a
    ld a, c                                       ; $58d9: $79
    sub b                                         ; $58da: $90
    ld b, l                                       ; $58db: $45
    ld h, d                                       ; $58dc: $62
    ld h, c                                       ; $58dd: $61
    ld h, b                                       ; $58de: $60
    ld e, l                                       ; $58df: $5d
    ld h, l                                       ; $58e0: $65
    ld h, h                                       ; $58e1: $64
    ld l, [hl]                                    ; $58e2: $6e
    ldh a, [rBCPS]                                ; $58e3: $f0 $68
    ld h, a                                       ; $58e5: $67
    dec b                                         ; $58e6: $05
    ld [bc], a                                    ; $58e7: $02
    and e                                         ; $58e8: $a3
    and h                                         ; $58e9: $a4
    ld a, [bc]                                    ; $58ea: $0a
    ld [bc], a                                    ; $58eb: $02
    and e                                         ; $58ec: $a3
    and h                                         ; $58ed: $a4
    ld [bc], a                                    ; $58ee: $02
    ld [bc], a                                    ; $58ef: $02
    and h                                         ; $58f0: $a4
    and e                                         ; $58f1: $a3
    dec b                                         ; $58f2: $05
    ld a, [bc]                                    ; $58f3: $0a
    and h                                         ; $58f4: $a4
    and e                                         ; $58f5: $a3
    ld a, [$0605]                                 ; $58f6: $fa $05 $06
    rlca                                          ; $58f9: $07
    cp $08                                        ; $58fa: $fe $08
    add hl, bc                                    ; $58fc: $09
    ld a, [bc]                                    ; $58fd: $0a
    ld [bc], a                                    ; $58fe: $02
    dec bc                                        ; $58ff: $0b
    inc c                                         ; $5900: $0c
    dec c                                         ; $5901: $0d
    ld hl, $2f2e                                  ; $5902: $21 $2e $2f
    jr nc, @+$03                                  ; $5905: $30 $01

    ld bc, $0101                                  ; $5907: $01 $01 $01
    ld bc, $0101                                  ; $590a: $01 $01 $01
    ld bc, $0101                                  ; $590d: $01 $01 $01
    ld bc, $0101                                  ; $5910: $01 $01 $01
    ld bc, $0101                                  ; $5913: $01 $01 $01
    add sp, -$17                                  ; $5916: $e8 $e9
    ld h, c                                       ; $5918: $61
    ld h, d                                       ; $5919: $62
    db $ec                                        ; $591a: $ec
    db $ed                                        ; $591b: $ed
    ld a, h                                       ; $591c: $7c
    ld a, l                                       ; $591d: $7d
    ldh a, [$7e]                                  ; $591e: $f0 $7e
    ld a, a                                       ; $5920: $7f
    ld h, [hl]                                    ; $5921: $66
    ld c, $0f                                     ; $5922: $0e $0f
    add h                                         ; $5924: $84
    ld c, b                                       ; $5925: $48
    ld bc, $8401                                  ; $5926: $01 $01 $84
    add h                                         ; $5929: $84
    ld bc, $8301                                  ; $592a: $01 $01 $83
    add e                                         ; $592d: $83
    ld bc, $8301                                  ; $592e: $01 $01 $83
    ld [bc], a                                    ; $5931: $02
    ld bc, $0a01                                  ; $5932: $01 $01 $0a
    ld [bc], a                                    ; $5935: $02
    adc e                                         ; $5936: $8b
    ld b, l                                       ; $5937: $45
    ld l, d                                       ; $5938: $6a
    ld l, c                                       ; $5939: $69
    ld l, e                                       ; $593a: $6b
    ld [hl], c                                    ; $593b: $71
    ld a, d                                       ; $593c: $7a
    ld a, c                                       ; $593d: $79
    sub b                                         ; $593e: $90
    ld [hl], h                                    ; $593f: $74
    ld h, [hl]                                    ; $5940: $66
    dec c                                         ; $5941: $0d
    ld h, b                                       ; $5942: $60
    ld e, l                                       ; $5943: $5d
    ld b, [hl]                                    ; $5944: $46
    add h                                         ; $5945: $84
    dec c                                         ; $5946: $0d
    dec b                                         ; $5947: $05
    and h                                         ; $5948: $a4
    and h                                         ; $5949: $a4
    ld [bc], a                                    ; $594a: $02
    dec b                                         ; $594b: $05
    and e                                         ; $594c: $a3
    and e                                         ; $594d: $a3
    ld a, [bc]                                    ; $594e: $0a
    ld [bc], a                                    ; $594f: $02
    ld [bc], a                                    ; $5950: $02
    adc e                                         ; $5951: $8b
    dec b                                         ; $5952: $05
    ld [bc], a                                    ; $5953: $02
    ld [bc], a                                    ; $5954: $02
    ld a, [hl+]                                   ; $5955: $2a
    dec h                                         ; $5956: $25
    ld [hl-], a                                   ; $5957: $32
    inc sp                                        ; $5958: $33
    dec d                                         ; $5959: $15
    add hl, hl                                    ; $595a: $29
    dec [hl]                                      ; $595b: $35
    ld [hl], $37                                  ; $595c: $36 $37
    dec l                                         ; $595e: $2d
    add hl, sp                                    ; $595f: $39
    ld a, [hl-]                                   ; $5960: $3a
    dec sp                                        ; $5961: $3b
    ld d, b                                       ; $5962: $50
    ld e, c                                       ; $5963: $59
    ld e, d                                       ; $5964: $5a
    ld e, e                                       ; $5965: $5b
    ld bc, $0101                                  ; $5966: $01 $01 $01
    ld bc, $0101                                  ; $5969: $01 $01 $01
    ld bc, $0101                                  ; $596c: $01 $01 $01
    ld bc, $0101                                  ; $596f: $01 $01 $01
    ld bc, $0101                                  ; $5972: $01 $01 $01
    ld bc, $1434                                  ; $5975: $01 $34 $14
    dec d                                         ; $5978: $15
    inc [hl]                                      ; $5979: $34
    jr c, jr_080_5994                             ; $597a: $38 $18

    add hl, de                                    ; $597c: $19
    jr c, jr_080_59bb                             ; $597d: $38 $3c

    inc e                                         ; $597f: $1c
    dec e                                         ; $5980: $1d
    inc a                                         ; $5981: $3c
    ld e, h                                       ; $5982: $5c
    ccf                                           ; $5983: $3f
    ld b, b                                       ; $5984: $40
    ld e, h                                       ; $5985: $5c
    ld bc, $0106                                  ; $5986: $01 $06 $01
    ld bc, $0601                                  ; $5989: $01 $01 $06
    ld bc, $0101                                  ; $598c: $01 $01 $01
    ld b, $01                                     ; $598f: $06 $01
    ld bc, $0101                                  ; $5991: $01 $01 $01

jr_080_5994:
    ld bc, $1201                                  ; $5994: $01 $01 $12
    inc de                                        ; $5997: $13
    add [hl]                                      ; $5998: $86
    adc b                                         ; $5999: $88
    ld d, $17                                     ; $599a: $16 $17
    add a                                         ; $599c: $87
    ld h, [hl]                                    ; $599d: $66
    ld a, [hl+]                                   ; $599e: $2a
    inc a                                         ; $599f: $3c
    adc c                                         ; $59a0: $89
    db $ed                                        ; $59a1: $ed
    ld c, l                                       ; $59a2: $4d
    ld e, h                                       ; $59a3: $5c
    adc l                                         ; $59a4: $8d
    add l                                         ; $59a5: $85
    ld bc, $0a01                                  ; $59a6: $01 $01 $0a
    ld a, [bc]                                    ; $59a9: $0a
    ld bc, $0a01                                  ; $59aa: $01 $01 $0a
    ld [bc], a                                    ; $59ad: $02
    ld bc, $0a01                                  ; $59ae: $01 $01 $0a
    ld a, [bc]                                    ; $59b1: $0a
    ld bc, $0a01                                  ; $59b2: $01 $01 $0a
    ld a, [bc]                                    ; $59b5: $0a
    ld l, e                                       ; $59b6: $6b
    ldh a, [$63]                                  ; $59b7: $f0 $63
    add [hl]                                      ; $59b9: $86
    adc e                                         ; $59ba: $8b

jr_080_59bb:
    add d                                         ; $59bb: $82
    ld l, a                                       ; $59bc: $6f
    add a                                         ; $59bd: $87
    adc [hl]                                      ; $59be: $8e
    ld [hl], c                                    ; $59bf: $71
    ld d, e                                       ; $59c0: $53
    adc c                                         ; $59c1: $89
    ld l, e                                       ; $59c2: $6b
    ld [hl], h                                    ; $59c3: $74
    ld h, e                                       ; $59c4: $63
    adc l                                         ; $59c5: $8d
    dec b                                         ; $59c6: $05
    ld a, [bc]                                    ; $59c7: $0a
    ld [bc], a                                    ; $59c8: $02
    ld a, [hl+]                                   ; $59c9: $2a
    dec c                                         ; $59ca: $0d
    ld a, [bc]                                    ; $59cb: $0a
    ld [bc], a                                    ; $59cc: $02
    ld a, [hl+]                                   ; $59cd: $2a
    ld a, [bc]                                    ; $59ce: $0a
    ld [bc], a                                    ; $59cf: $02
    ld [bc], a                                    ; $59d0: $02
    ld a, [hl+]                                   ; $59d1: $2a
    dec b                                         ; $59d2: $05
    ld [bc], a                                    ; $59d3: $02
    ld [bc], a                                    ; $59d4: $02
    ld a, [hl+]                                   ; $59d5: $2a
    pop de                                        ; $59d6: $d1
    sbc b                                         ; $59d7: $98
    ld l, l                                       ; $59d8: $6d
    ld l, e                                       ; $59d9: $6b
    pop de                                        ; $59da: $d1
    ld [hl], a                                    ; $59db: $77
    ld [hl], b                                    ; $59dc: $70
    ld l, [hl]                                    ; $59dd: $6e
    pop de                                        ; $59de: $d1
    ld a, b                                       ; $59df: $78
    ld [hl], e                                    ; $59e0: $73
    ld a, e                                       ; $59e1: $7b
    pop de                                        ; $59e2: $d1
    ld h, c                                       ; $59e3: $61
    ld h, d                                       ; $59e4: $62
    ld l, e                                       ; $59e5: $6b
    add e                                         ; $59e6: $83
    adc h                                         ; $59e7: $8c
    add h                                         ; $59e8: $84
    ld [bc], a                                    ; $59e9: $02
    add e                                         ; $59ea: $83
    and e                                         ; $59eb: $a3
    and e                                         ; $59ec: $a3
    ld [bc], a                                    ; $59ed: $02
    add e                                         ; $59ee: $83
    and e                                         ; $59ef: $a3
    and e                                         ; $59f0: $a3
    dec b                                         ; $59f1: $05
    inc bc                                        ; $59f2: $03
    add e                                         ; $59f3: $83
    add e                                         ; $59f4: $83
    ld [bc], a                                    ; $59f5: $02
    ld [hl], h                                    ; $59f6: $74
    adc h                                         ; $59f7: $8c
    ld l, e                                       ; $59f8: $6b
    add l                                         ; $59f9: $85
    ld e, l                                       ; $59fa: $5d
    ld h, [hl]                                    ; $59fb: $66
    ld b, a                                       ; $59fc: $47
    ld c, b                                       ; $59fd: $48
    ldh a, [$f1]                                  ; $59fe: $f0 $f1
    ld bc, $ef02                                  ; $5a00: $01 $02 $ef
    push af                                       ; $5a03: $f5
    inc b                                         ; $5a04: $04
    dec b                                         ; $5a05: $05
    ld [bc], a                                    ; $5a06: $02
    dec c                                         ; $5a07: $0d
    ld [bc], a                                    ; $5a08: $02
    dec c                                         ; $5a09: $0d
    dec b                                         ; $5a0a: $05
    ld [bc], a                                    ; $5a0b: $02
    ld [bc], a                                    ; $5a0c: $02
    dec b                                         ; $5a0d: $05
    dec c                                         ; $5a0e: $0d
    adc e                                         ; $5a0f: $8b
    adc h                                         ; $5a10: $8c
    adc h                                         ; $5a11: $8c
    adc e                                         ; $5a12: $8b
    adc h                                         ; $5a13: $8c
    adc e                                         ; $5a14: $8b
    adc h                                         ; $5a15: $8c
    pop de                                        ; $5a16: $d1
    pop hl                                        ; $5a17: $e1
    pop de                                        ; $5a18: $d1
    pop de                                        ; $5a19: $d1
    pop de                                        ; $5a1a: $d1
    ld [c], a                                     ; $5a1b: $e2
    pop de                                        ; $5a1c: $d1
    pop de                                        ; $5a1d: $d1
    pop de                                        ; $5a1e: $d1
    db $e3                                        ; $5a1f: $e3
    pop de                                        ; $5a20: $d1
    pop de                                        ; $5a21: $d1
    pop de                                        ; $5a22: $d1
    inc b                                         ; $5a23: $04
    pop de                                        ; $5a24: $d1
    pop de                                        ; $5a25: $d1
    inc bc                                        ; $5a26: $03
    ld bc, $0303                                  ; $5a27: $01 $03 $03
    inc bc                                        ; $5a2a: $03
    ld bc, $0303                                  ; $5a2b: $01 $03 $03
    ld bc, $0101                                  ; $5a2e: $01 $01 $01
    ld bc, $0101                                  ; $5a31: $01 $01 $01
    ld bc, $d301                                  ; $5a34: $01 $01 $d3
    pop de                                        ; $5a37: $d1
    pop de                                        ; $5a38: $d1
    jp nc, $d1d5                                  ; $5a39: $d2 $d5 $d1

    pop de                                        ; $5a3c: $d1
    call nc, $d9d8                                ; $5a3d: $d4 $d8 $d9
    pop de                                        ; $5a40: $d1
    sub $e6                                       ; $5a41: $d6 $e6
    rst $20                                       ; $5a43: $e7
    pop de                                        ; $5a44: $d1
    db $e4                                        ; $5a45: $e4
    ld bc, $0303                                  ; $5a46: $01 $03 $03
    ld bc, $0301                                  ; $5a49: $01 $01 $03
    inc bc                                        ; $5a4c: $03
    ld b, $01                                     ; $5a4d: $06 $01
    ld bc, $0601                                  ; $5a4f: $01 $01 $06
    ld bc, $0101                                  ; $5a52: $01 $01 $01
    ld b, $d1                                     ; $5a55: $06 $d1
    ld h, h                                       ; $5a57: $64
    ld h, l                                       ; $5a58: $65
    ld l, [hl]                                    ; $5a59: $6e
    pop de                                        ; $5a5a: $d1
    ld h, a                                       ; $5a5b: $67
    ld l, b                                       ; $5a5c: $68
    ld d, h                                       ; $5a5d: $54
    rst $10                                       ; $5a5e: $d7
    ld l, c                                       ; $5a5f: $69
    ld l, d                                       ; $5a60: $6a
    ld h, b                                       ; $5a61: $60
    push hl                                       ; $5a62: $e5
    ld a, c                                       ; $5a63: $79
    ld a, d                                       ; $5a64: $7a
    ld l, [hl]                                    ; $5a65: $6e
    inc bc                                        ; $5a66: $03
    add e                                         ; $5a67: $83
    add h                                         ; $5a68: $84
    ld [bc], a                                    ; $5a69: $02
    inc bc                                        ; $5a6a: $03
    add h                                         ; $5a6b: $84
    add h                                         ; $5a6c: $84
    ld [bc], a                                    ; $5a6d: $02
    ld bc, $8484                                  ; $5a6e: $01 $84 $84
    dec b                                         ; $5a71: $05
    ld bc, $8384                                  ; $5a72: $01 $84 $83
    dec b                                         ; $5a75: $05
    ld l, l                                       ; $5a76: $6d
    halt                                          ; $5a77: $76
    pop de                                        ; $5a78: $d1
    pop de                                        ; $5a79: $d1
    ld [hl], b                                    ; $5a7a: $70
    ld [hl], a                                    ; $5a7b: $77
    pop de                                        ; $5a7c: $d1
    pop de                                        ; $5a7d: $d1
    ld [hl], e                                    ; $5a7e: $73
    ld a, b                                       ; $5a7f: $78
    pop de                                        ; $5a80: $d1
    pop de                                        ; $5a81: $d1
    ld h, d                                       ; $5a82: $62
    ld h, c                                       ; $5a83: $61
    pop de                                        ; $5a84: $d1
    pop de                                        ; $5a85: $d1
    and e                                         ; $5a86: $a3
    add h                                         ; $5a87: $84
    add e                                         ; $5a88: $83
    add e                                         ; $5a89: $83
    add e                                         ; $5a8a: $83
    add e                                         ; $5a8b: $83
    add e                                         ; $5a8c: $83
    inc bc                                        ; $5a8d: $03
    add e                                         ; $5a8e: $83
    add e                                         ; $5a8f: $83
    add e                                         ; $5a90: $83
    inc bc                                        ; $5a91: $03
    and e                                         ; $5a92: $a3
    and e                                         ; $5a93: $a3
    add e                                         ; $5a94: $83
    inc bc                                        ; $5a95: $03
    ld [$05eb], a                                 ; $5a96: $ea $eb $05
    add sp, -$12                                  ; $5a99: $e8 $ee
    rst $28                                       ; $5a9b: $ef
    ld [$f2ec], sp                                ; $5a9c: $08 $ec $f2
    di                                            ; $5a9f: $f3
    dec bc                                        ; $5aa0: $0b
    ldh a, [rNR10]                                ; $5aa1: $f0 $10
    ld de, $0e31                                  ; $5aa3: $11 $31 $0e
    ld bc, $0101                                  ; $5aa6: $01 $01 $01
    ld b, $01                                     ; $5aa9: $06 $01
    ld bc, $0601                                  ; $5aab: $01 $01 $06
    ld bc, $0101                                  ; $5aae: $01 $01 $01
    ld b, $01                                     ; $5ab1: $06 $01
    ld bc, $0601                                  ; $5ab3: $01 $01 $06
    jp hl                                         ; $5ab6: $e9


    ld h, c                                       ; $5ab7: $61
    ld h, d                                       ; $5ab8: $62
    adc e                                         ; $5ab9: $8b
    db $ed                                        ; $5aba: $ed
    ld a, h                                       ; $5abb: $7c
    ld a, l                                       ; $5abc: $7d
    adc [hl]                                      ; $5abd: $8e
    ld a, [hl]                                    ; $5abe: $7e
    ld a, a                                       ; $5abf: $7f
    ld h, [hl]                                    ; $5ac0: $66
    sub b                                         ; $5ac1: $90
    rrca                                          ; $5ac2: $0f
    add h                                         ; $5ac3: $84
    ld d, e                                       ; $5ac4: $53
    ld h, b                                       ; $5ac5: $60
    ld bc, $8383                                  ; $5ac6: $01 $83 $83
    dec c                                         ; $5ac9: $0d
    ld bc, $8383                                  ; $5aca: $01 $83 $83
    dec c                                         ; $5acd: $0d
    ld bc, $0283                                  ; $5ace: $01 $83 $02
    dec c                                         ; $5ad1: $0d
    ld bc, $020a                                  ; $5ad2: $01 $0a $02
    dec b                                         ; $5ad5: $05
    ld h, l                                       ; $5ad6: $65
    ld h, h                                       ; $5ad7: $64
    pop de                                        ; $5ad8: $d1
    pop de                                        ; $5ad9: $d1
    ld l, b                                       ; $5ada: $68
    ld h, a                                       ; $5adb: $67
    pop de                                        ; $5adc: $d1
    pop de                                        ; $5add: $d1
    ld l, d                                       ; $5ade: $6a
    ld l, c                                       ; $5adf: $69
    pop de                                        ; $5ae0: $d1
    pop de                                        ; $5ae1: $d1
    ld a, d                                       ; $5ae2: $7a
    ld a, c                                       ; $5ae3: $79
    pop de                                        ; $5ae4: $d1
    pop de                                        ; $5ae5: $d1
    and e                                         ; $5ae6: $a3
    and e                                         ; $5ae7: $a3
    add e                                         ; $5ae8: $83
    inc bc                                        ; $5ae9: $03
    and e                                         ; $5aea: $a3
    and e                                         ; $5aeb: $a3
    add e                                         ; $5aec: $83
    inc bc                                        ; $5aed: $03
    and h                                         ; $5aee: $a4
    and e                                         ; $5aef: $a3
    add e                                         ; $5af0: $83
    inc bc                                        ; $5af1: $03
    and h                                         ; $5af2: $a4
    and e                                         ; $5af3: $a3
    add e                                         ; $5af4: $83
    inc bc                                        ; $5af5: $03
    inc d                                         ; $5af6: $14
    dec d                                         ; $5af7: $15
    inc [hl]                                      ; $5af8: $34
    ld [de], a                                    ; $5af9: $12
    jr @+$1b                                      ; $5afa: $18 $19

    jr c, jr_080_5b14                             ; $5afc: $38 $16

    inc e                                         ; $5afe: $1c
    dec e                                         ; $5aff: $1d
    inc a                                         ; $5b00: $3c
    ld a, [hl+]                                   ; $5b01: $2a
    ccf                                           ; $5b02: $3f
    ld b, b                                       ; $5b03: $40
    ld e, h                                       ; $5b04: $5c
    ld c, l                                       ; $5b05: $4d
    ld bc, $0101                                  ; $5b06: $01 $01 $01
    ld b, $01                                     ; $5b09: $06 $01
    ld bc, $0601                                  ; $5b0b: $01 $01 $06
    ld bc, $0101                                  ; $5b0e: $01 $01 $01
    ld bc, $0101                                  ; $5b11: $01 $01 $01

jr_080_5b14:
    ld bc, $1301                                  ; $5b14: $01 $01 $13
    add [hl]                                      ; $5b17: $86
    adc b                                         ; $5b18: $88
    ld a, e                                       ; $5b19: $7b
    rla                                           ; $5b1a: $17
    add a                                         ; $5b1b: $87
    adc d                                         ; $5b1c: $8a
    ld l, [hl]                                    ; $5b1d: $6e
    inc a                                         ; $5b1e: $3c
    adc c                                         ; $5b1f: $89
    ld d, e                                       ; $5b20: $53
    ld d, h                                       ; $5b21: $54
    ld e, h                                       ; $5b22: $5c
    adc l                                         ; $5b23: $8d
    ld h, e                                       ; $5b24: $63
    sub b                                         ; $5b25: $90
    ld bc, $0a0a                                  ; $5b26: $01 $0a $0a
    dec b                                         ; $5b29: $05
    ld bc, $0d0a                                  ; $5b2a: $01 $0a $0d
    ld [bc], a                                    ; $5b2d: $02
    ld bc, $050a                                  ; $5b2e: $01 $0a $05
    ld [bc], a                                    ; $5b31: $02
    ld bc, $020a                                  ; $5b32: $01 $0a $02
    dec c                                         ; $5b35: $0d
    ld l, l                                       ; $5b36: $6d
    halt                                          ; $5b37: $76
    pop de                                        ; $5b38: $d1
    pop de                                        ; $5b39: $d1
    ld [hl], b                                    ; $5b3a: $70
    ld [hl], a                                    ; $5b3b: $77
    pop de                                        ; $5b3c: $d1
    pop de                                        ; $5b3d: $d1
    ld [hl], e                                    ; $5b3e: $73
    ld a, b                                       ; $5b3f: $78
    pop de                                        ; $5b40: $d1
    pop de                                        ; $5b41: $d1
    ld h, d                                       ; $5b42: $62
    ld h, c                                       ; $5b43: $61
    pop de                                        ; $5b44: $d1
    pop de                                        ; $5b45: $d1
    and e                                         ; $5b46: $a3
    add h                                         ; $5b47: $84
    add e                                         ; $5b48: $83
    inc bc                                        ; $5b49: $03
    add e                                         ; $5b4a: $83
    add h                                         ; $5b4b: $84
    add e                                         ; $5b4c: $83
    inc bc                                        ; $5b4d: $03
    add e                                         ; $5b4e: $83
    add e                                         ; $5b4f: $83
    add e                                         ; $5b50: $83
    inc bc                                        ; $5b51: $03
    and e                                         ; $5b52: $a3
    and h                                         ; $5b53: $a4
    add e                                         ; $5b54: $83
    inc bc                                        ; $5b55: $03
    sub b                                         ; $5b56: $90
    ld l, e                                       ; $5b57: $6b
    adc h                                         ; $5b58: $8c
    xor $66                                       ; $5b59: $ee $66
    ld e, l                                       ; $5b5b: $5d
    add b                                         ; $5b5c: $80
    ld b, a                                       ; $5b5d: $47
    inc bc                                        ; $5b5e: $03
    ld a, [c]                                     ; $5b5f: $f2
    di                                            ; $5b60: $f3
    db $f4                                        ; $5b61: $f4
    ld b, $f6                                     ; $5b62: $06 $f6
    rst $30                                       ; $5b64: $f7
    ld hl, sp+$0d                                 ; $5b65: $f8 $0d
    ld [bc], a                                    ; $5b67: $02
    ld a, [bc]                                    ; $5b68: $0a
    ld a, [bc]                                    ; $5b69: $0a
    dec b                                         ; $5b6a: $05
    dec b                                         ; $5b6b: $05
    ld a, [bc]                                    ; $5b6c: $0a
    ld [bc], a                                    ; $5b6d: $02
    adc e                                         ; $5b6e: $8b
    adc e                                         ; $5b6f: $8b
    adc h                                         ; $5b70: $8c
    adc h                                         ; $5b71: $8c
    adc e                                         ; $5b72: $8b
    adc h                                         ; $5b73: $8c
    adc h                                         ; $5b74: $8c
    adc e                                         ; $5b75: $8b
    add l                                         ; $5b76: $85
    sub b                                         ; $5b77: $90
    ld h, e                                       ; $5b78: $63
    adc h                                         ; $5b79: $8c
    ld c, b                                       ; $5b7a: $48
    add b                                         ; $5b7b: $80
    ld e, l                                       ; $5b7c: $5d
    ld b, [hl]                                    ; $5b7d: $46
    ld sp, hl                                     ; $5b7e: $f9
    ld a, [$fcfb]                                 ; $5b7f: $fa $fb $fc
    db $fd                                        ; $5b82: $fd
    cp $ff                                        ; $5b83: $fe $ff
    nop                                           ; $5b85: $00
    dec c                                         ; $5b86: $0d
    ld a, [bc]                                    ; $5b87: $0a
    ld [bc], a                                    ; $5b88: $02
    ld a, [bc]                                    ; $5b89: $0a
    ld [bc], a                                    ; $5b8a: $02
    dec c                                         ; $5b8b: $0d
    dec b                                         ; $5b8c: $05
    dec b                                         ; $5b8d: $05
    adc e                                         ; $5b8e: $8b
    adc e                                         ; $5b8f: $8b
    adc h                                         ; $5b90: $8c
    adc h                                         ; $5b91: $8c
    adc h                                         ; $5b92: $8c
    adc e                                         ; $5b93: $8b
    adc e                                         ; $5b94: $8b
    adc e                                         ; $5b95: $8b
    ld [hl], l                                    ; $5b96: $75
    add l                                         ; $5b97: $85
    sub b                                         ; $5b98: $90
    ld [hl], l                                    ; $5b99: $75
    ld b, a                                       ; $5b9a: $47
    ld c, b                                       ; $5b9b: $48
    ld l, [hl]                                    ; $5b9c: $6e
    ld e, l                                       ; $5b9d: $5d
    ld bc, $0302                                  ; $5b9e: $01 $02 $03
    ld a, [c]                                     ; $5ba1: $f2
    inc b                                         ; $5ba2: $04
    dec b                                         ; $5ba3: $05
    ld b, $f6                                     ; $5ba4: $06 $f6
    ld [bc], a                                    ; $5ba6: $02
    ld a, [bc]                                    ; $5ba7: $0a
    dec c                                         ; $5ba8: $0d
    ld [bc], a                                    ; $5ba9: $02
    ld [bc], a                                    ; $5baa: $02
    ld [bc], a                                    ; $5bab: $02
    dec b                                         ; $5bac: $05
    ld [bc], a                                    ; $5bad: $02
    adc e                                         ; $5bae: $8b
    adc h                                         ; $5baf: $8c
    adc e                                         ; $5bb0: $8b
    adc h                                         ; $5bb1: $8c
    adc h                                         ; $5bb2: $8c
    adc e                                         ; $5bb3: $8b
    adc h                                         ; $5bb4: $8c
    adc h                                         ; $5bb5: $8c
    adc h                                         ; $5bb6: $8c
    xor $85                                       ; $5bb7: $ee $85
    sub b                                         ; $5bb9: $90
    ld b, [hl]                                    ; $5bba: $46
    ld b, a                                       ; $5bbb: $47
    add b                                         ; $5bbc: $80
    ld h, b                                       ; $5bbd: $60
    di                                            ; $5bbe: $f3
    db $f4                                        ; $5bbf: $f4
    ld sp, hl                                     ; $5bc0: $f9
    ld a, [$f8f7]                                 ; $5bc1: $fa $f7 $f8
    db $fd                                        ; $5bc4: $fd
    cp $0d                                        ; $5bc5: $fe $0d
    dec c                                         ; $5bc7: $0d
    dec c                                         ; $5bc8: $0d
    dec c                                         ; $5bc9: $0d
    ld [bc], a                                    ; $5bca: $02
    dec b                                         ; $5bcb: $05
    ld a, [bc]                                    ; $5bcc: $0a
    ld [bc], a                                    ; $5bcd: $02
    adc e                                         ; $5bce: $8b
    adc e                                         ; $5bcf: $8b
    adc e                                         ; $5bd0: $8b
    adc h                                         ; $5bd1: $8c
    adc h                                         ; $5bd2: $8c
    adc h                                         ; $5bd3: $8c
    adc e                                         ; $5bd4: $8b
    adc e                                         ; $5bd5: $8b
    ld [hl], h                                    ; $5bd6: $74
    adc h                                         ; $5bd7: $8c
    xor $85                                       ; $5bd8: $ee $85
    ld e, l                                       ; $5bda: $5d
    add b                                         ; $5bdb: $80
    ld h, [hl]                                    ; $5bdc: $66
    ld c, b                                       ; $5bdd: $48
    ei                                            ; $5bde: $fb
    db $fc                                        ; $5bdf: $fc
    ld c, $54                                     ; $5be0: $0e $54
    rst $38                                       ; $5be2: $ff
    nop                                           ; $5be3: $00
    rrca                                          ; $5be4: $0f
    ld c, $05                                     ; $5be5: $0e $05
    dec c                                         ; $5be7: $0d
    dec c                                         ; $5be8: $0d
    dec c                                         ; $5be9: $0d
    ld [bc], a                                    ; $5bea: $02
    ld a, [bc]                                    ; $5beb: $0a
    ld [bc], a                                    ; $5bec: $02
    ld [bc], a                                    ; $5bed: $02
    adc h                                         ; $5bee: $8c
    adc e                                         ; $5bef: $8b
    adc e                                         ; $5bf0: $8b
    ld [bc], a                                    ; $5bf1: $02
    adc e                                         ; $5bf2: $8b
    adc h                                         ; $5bf3: $8c
    adc h                                         ; $5bf4: $8c
    adc e                                         ; $5bf5: $8b
    ld [hl], l                                    ; $5bf6: $75
    ld [hl], h                                    ; $5bf7: $74
    adc h                                         ; $5bf8: $8c
    xor $60                                       ; $5bf9: $ee $60
    ld h, [hl]                                    ; $5bfb: $66
    ld b, [hl]                                    ; $5bfc: $46
    add b                                         ; $5bfd: $80
    ld a, e                                       ; $5bfe: $7b
    ldh a, [$6c]                                  ; $5bff: $f0 $6c
    ld b, l                                       ; $5c01: $45
    adc e                                         ; $5c02: $8b
    add d                                         ; $5c03: $82
    ld l, e                                       ; $5c04: $6b
    rst $28                                       ; $5c05: $ef
    dec b                                         ; $5c06: $05
    dec b                                         ; $5c07: $05
    dec c                                         ; $5c08: $0d
    dec c                                         ; $5c09: $0d
    ld [bc], a                                    ; $5c0a: $02
    ld [bc], a                                    ; $5c0b: $02
    ld [bc], a                                    ; $5c0c: $02
    dec c                                         ; $5c0d: $0d
    ld [bc], a                                    ; $5c0e: $02
    dec c                                         ; $5c0f: $0d
    ld [bc], a                                    ; $5c10: $02
    ld [bc], a                                    ; $5c11: $02
    ld a, [bc]                                    ; $5c12: $0a
    dec c                                         ; $5c13: $0d
    dec b                                         ; $5c14: $05
    adc e                                         ; $5c15: $8b
    ld h, e                                       ; $5c16: $63
    sub b                                         ; $5c17: $90
    ld [hl], h                                    ; $5c18: $74
    ld l, d                                       ; $5c19: $6a
    ld c, b                                       ; $5c1a: $48
    ld h, b                                       ; $5c1b: $60
    add b                                         ; $5c1c: $80
    ld a, d                                       ; $5c1d: $7a
    pop af                                        ; $5c1e: $f1
    ld bc, $07fb                                  ; $5c1f: $01 $fb $07
    push af                                       ; $5c22: $f5
    inc b                                         ; $5c23: $04
    rst $38                                       ; $5c24: $ff
    ld [$0d02], sp                                ; $5c25: $08 $02 $0d
    ld [bc], a                                    ; $5c28: $02
    and e                                         ; $5c29: $a3
    dec b                                         ; $5c2a: $05
    ld [bc], a                                    ; $5c2b: $02
    ld a, [bc]                                    ; $5c2c: $0a
    and e                                         ; $5c2d: $a3
    adc e                                         ; $5c2e: $8b
    adc e                                         ; $5c2f: $8b
    adc h                                         ; $5c30: $8c
    adc e                                         ; $5c31: $8b
    adc h                                         ; $5c32: $8c
    adc e                                         ; $5c33: $8b
    adc e                                         ; $5c34: $8b
    adc h                                         ; $5c35: $8c
    ld l, c                                       ; $5c36: $69
    pop de                                        ; $5c37: $d1
    pop de                                        ; $5c38: $d1
    pop de                                        ; $5c39: $d1
    ld a, c                                       ; $5c3a: $79
    pop de                                        ; $5c3b: $d1
    pop de                                        ; $5c3c: $d1
    pop de                                        ; $5c3d: $d1
    add hl, bc                                    ; $5c3e: $09
    pop de                                        ; $5c3f: $d1
    pop de                                        ; $5c40: $d1
    pop de                                        ; $5c41: $d1
    ld a, [$d1d1]                                 ; $5c42: $fa $d1 $d1
    pop de                                        ; $5c45: $d1
    and h                                         ; $5c46: $a4
    inc bc                                        ; $5c47: $03
    inc bc                                        ; $5c48: $03
    inc bc                                        ; $5c49: $03
    and h                                         ; $5c4a: $a4
    inc bc                                        ; $5c4b: $03
    inc bc                                        ; $5c4c: $03
    inc bc                                        ; $5c4d: $03
    adc h                                         ; $5c4e: $8c
    inc bc                                        ; $5c4f: $03
    inc bc                                        ; $5c50: $03
    inc bc                                        ; $5c51: $03
    db $e4                                        ; $5c52: $e4
    inc bc                                        ; $5c53: $03
    inc bc                                        ; $5c54: $03
    inc bc                                        ; $5c55: $03
    pop de                                        ; $5c56: $d1
    pop de                                        ; $5c57: $d1
    ld h, c                                       ; $5c58: $61
    ld h, d                                       ; $5c59: $62
    pop de                                        ; $5c5a: $d1
    pop de                                        ; $5c5b: $d1
    ld h, h                                       ; $5c5c: $64
    ld h, l                                       ; $5c5d: $65
    pop de                                        ; $5c5e: $d1
    pop de                                        ; $5c5f: $d1
    ld h, a                                       ; $5c60: $67
    ld l, b                                       ; $5c61: $68
    pop de                                        ; $5c62: $d1
    pop de                                        ; $5c63: $d1
    ld l, c                                       ; $5c64: $69
    ld l, d                                       ; $5c65: $6a
    add e                                         ; $5c66: $83
    add e                                         ; $5c67: $83
    add e                                         ; $5c68: $83
    add e                                         ; $5c69: $83
    inc bc                                        ; $5c6a: $03
    add e                                         ; $5c6b: $83
    add e                                         ; $5c6c: $83
    add h                                         ; $5c6d: $84
    inc bc                                        ; $5c6e: $03
    add e                                         ; $5c6f: $83
    add h                                         ; $5c70: $84
    add e                                         ; $5c71: $83
    inc bc                                        ; $5c72: $03
    add e                                         ; $5c73: $83
    add h                                         ; $5c74: $84
    add e                                         ; $5c75: $83
    add b                                         ; $5c76: $80
    ld [hl], c                                    ; $5c77: $71
    ld l, [hl]                                    ; $5c78: $6e
    ld l, l                                       ; $5c79: $6d
    ld b, l                                       ; $5c7a: $45
    ld [hl], h                                    ; $5c7b: $74
    ld d, h                                       ; $5c7c: $54
    ld l, d                                       ; $5c7d: $6a
    ld h, b                                       ; $5c7e: $60
    ld h, e                                       ; $5c7f: $63
    ld l, e                                       ; $5c80: $6b
    ld l, b                                       ; $5c81: $68
    ld a, e                                       ; $5c82: $7b
    ld h, [hl]                                    ; $5c83: $66
    ld l, h                                       ; $5c84: $6c
    ld h, l                                       ; $5c85: $65
    ld a, [bc]                                    ; $5c86: $0a
    ld [bc], a                                    ; $5c87: $02
    dec b                                         ; $5c88: $05
    and h                                         ; $5c89: $a4
    ld [bc], a                                    ; $5c8a: $02
    ld [bc], a                                    ; $5c8b: $02
    dec b                                         ; $5c8c: $05
    db $e4                                        ; $5c8d: $e4
    ld [bc], a                                    ; $5c8e: $02
    dec b                                         ; $5c8f: $05
    ld [bc], a                                    ; $5c90: $02
    db $e4                                        ; $5c91: $e4
    dec b                                         ; $5c92: $05
    dec b                                         ; $5c93: $05
    dec b                                         ; $5c94: $05
    db $e4                                        ; $5c95: $e4
    halt                                          ; $5c96: $76
    pop de                                        ; $5c97: $d1
    pop de                                        ; $5c98: $d1
    pop de                                        ; $5c99: $d1
    ld l, c                                       ; $5c9a: $69
    pop de                                        ; $5c9b: $d1
    pop de                                        ; $5c9c: $d1
    pop de                                        ; $5c9d: $d1
    ld h, a                                       ; $5c9e: $67
    pop de                                        ; $5c9f: $d1
    pop de                                        ; $5ca0: $d1
    pop de                                        ; $5ca1: $d1
    ld h, h                                       ; $5ca2: $64
    pop de                                        ; $5ca3: $d1
    pop de                                        ; $5ca4: $d1
    pop de                                        ; $5ca5: $d1
    add e                                         ; $5ca6: $83
    add e                                         ; $5ca7: $83
    add e                                         ; $5ca8: $83
    add e                                         ; $5ca9: $83
    db $e3                                        ; $5caa: $e3
    add e                                         ; $5cab: $83
    add e                                         ; $5cac: $83
    inc bc                                        ; $5cad: $03
    db $e3                                        ; $5cae: $e3
    add e                                         ; $5caf: $83
    add e                                         ; $5cb0: $83
    inc bc                                        ; $5cb1: $03
    db $e4                                        ; $5cb2: $e4
    add h                                         ; $5cb3: $84
    add e                                         ; $5cb4: $83
    inc bc                                        ; $5cb5: $03
    pop de                                        ; $5cb6: $d1
    pop de                                        ; $5cb7: $d1
    ld a, c                                       ; $5cb8: $79
    ld a, d                                       ; $5cb9: $7a
    pop de                                        ; $5cba: $d1
    pop de                                        ; $5cbb: $d1
    halt                                          ; $5cbc: $76
    ld l, l                                       ; $5cbd: $6d
    pop de                                        ; $5cbe: $d1
    pop de                                        ; $5cbf: $d1
    ld [hl], a                                    ; $5cc0: $77
    ld [hl], b                                    ; $5cc1: $70
    pop de                                        ; $5cc2: $d1
    pop de                                        ; $5cc3: $d1
    ld a, b                                       ; $5cc4: $78
    ld [hl], e                                    ; $5cc5: $73
    inc bc                                        ; $5cc6: $03
    add h                                         ; $5cc7: $84
    add e                                         ; $5cc8: $83
    add h                                         ; $5cc9: $84
    inc bc                                        ; $5cca: $03
    add e                                         ; $5ccb: $83
    and h                                         ; $5ccc: $a4
    add h                                         ; $5ccd: $84
    inc bc                                        ; $5cce: $03
    add e                                         ; $5ccf: $83
    and e                                         ; $5cd0: $a3
    and e                                         ; $5cd1: $a3
    inc bc                                        ; $5cd2: $03
    add e                                         ; $5cd3: $83
    and e                                         ; $5cd4: $a3
    and e                                         ; $5cd5: $a3
    adc e                                         ; $5cd6: $8b
    add d                                         ; $5cd7: $82
    ld l, a                                       ; $5cd8: $6f
    ld h, d                                       ; $5cd9: $62
    ld [hl], l                                    ; $5cda: $75
    ld [hl], c                                    ; $5cdb: $71
    ld [hl], d                                    ; $5cdc: $72
    ld [hl], e                                    ; $5cdd: $73
    add b                                         ; $5cde: $80
    ld [hl], h                                    ; $5cdf: $74
    adc h                                         ; $5ce0: $8c
    ld [hl], b                                    ; $5ce1: $70
    ld b, l                                       ; $5ce2: $45
    ld e, l                                       ; $5ce3: $5d
    ld b, [hl]                                    ; $5ce4: $46
    ld l, l                                       ; $5ce5: $6d
    dec c                                         ; $5ce6: $0d
    ld a, [bc]                                    ; $5ce7: $0a
    dec b                                         ; $5ce8: $05
    db $e4                                        ; $5ce9: $e4
    dec b                                         ; $5cea: $05
    ld [bc], a                                    ; $5ceb: $02
    ld [bc], a                                    ; $5cec: $02
    jp Jump_000_020d                              ; $5ced: $c3 $0d $02


    dec c                                         ; $5cf0: $0d
    jp Jump_000_0502                              ; $5cf1: $c3 $02 $05


    ld [bc], a                                    ; $5cf4: $02
    db $e3                                        ; $5cf5: $e3
    ld h, c                                       ; $5cf6: $61
    pop de                                        ; $5cf7: $d1
    pop de                                        ; $5cf8: $d1
    pop de                                        ; $5cf9: $d1
    ld a, b                                       ; $5cfa: $78
    pop de                                        ; $5cfb: $d1
    pop de                                        ; $5cfc: $d1
    pop de                                        ; $5cfd: $d1
    ld [hl], a                                    ; $5cfe: $77
    pop de                                        ; $5cff: $d1
    pop de                                        ; $5d00: $d1
    pop de                                        ; $5d01: $d1
    halt                                          ; $5d02: $76
    pop de                                        ; $5d03: $d1
    pop de                                        ; $5d04: $d1
    pop de                                        ; $5d05: $d1
    db $e3                                        ; $5d06: $e3
    add e                                         ; $5d07: $83
    add e                                         ; $5d08: $83
    inc bc                                        ; $5d09: $03
    call nz, $8383                                ; $5d0a: $c4 $83 $83
    inc bc                                        ; $5d0d: $03
    call nz, $8383                                ; $5d0e: $c4 $83 $83
    inc bc                                        ; $5d11: $03
    jp $8383                                      ; $5d12: $c3 $83 $83


    inc bc                                        ; $5d15: $03
    pop de                                        ; $5d16: $d1
    pop de                                        ; $5d17: $d1
    ld h, c                                       ; $5d18: $61
    ld h, d                                       ; $5d19: $62
    pop de                                        ; $5d1a: $d1
    pop de                                        ; $5d1b: $d1
    ld h, h                                       ; $5d1c: $64
    ld h, l                                       ; $5d1d: $65
    pop de                                        ; $5d1e: $d1
    pop de                                        ; $5d1f: $d1
    ld h, a                                       ; $5d20: $67
    ld l, b                                       ; $5d21: $68
    pop de                                        ; $5d22: $d1
    pop de                                        ; $5d23: $d1
    ld l, c                                       ; $5d24: $69
    ld l, d                                       ; $5d25: $6a
    inc bc                                        ; $5d26: $03
    add e                                         ; $5d27: $83
    add h                                         ; $5d28: $84
    add h                                         ; $5d29: $84
    inc bc                                        ; $5d2a: $03
    add e                                         ; $5d2b: $83
    add e                                         ; $5d2c: $83
    add e                                         ; $5d2d: $83
    inc bc                                        ; $5d2e: $03
    add e                                         ; $5d2f: $83
    add h                                         ; $5d30: $84
    add h                                         ; $5d31: $84
    inc bc                                        ; $5d32: $03
    add e                                         ; $5d33: $83
    add e                                         ; $5d34: $83
    add h                                         ; $5d35: $84
    ld a, e                                       ; $5d36: $7b
    ld h, e                                       ; $5d37: $63
    ld l, h                                       ; $5d38: $6c
    ld a, d                                       ; $5d39: $7a
    adc e                                         ; $5d3a: $8b
    add d                                         ; $5d3b: $82
    ld l, [hl]                                    ; $5d3c: $6e
    ld l, d                                       ; $5d3d: $6a
    adc [hl]                                      ; $5d3e: $8e
    ld [hl], c                                    ; $5d3f: $71
    ld d, h                                       ; $5d40: $54
    ld l, b                                       ; $5d41: $68
    sub b                                         ; $5d42: $90
    ld [hl], h                                    ; $5d43: $74
    ld l, e                                       ; $5d44: $6b
    ld h, l                                       ; $5d45: $65
    ld [bc], a                                    ; $5d46: $02
    dec b                                         ; $5d47: $05
    ld [bc], a                                    ; $5d48: $02
    db $e4                                        ; $5d49: $e4
    ld a, [bc]                                    ; $5d4a: $0a
    dec c                                         ; $5d4b: $0d
    ld [bc], a                                    ; $5d4c: $02
    db $e4                                        ; $5d4d: $e4
    ld a, [bc]                                    ; $5d4e: $0a
    ld [bc], a                                    ; $5d4f: $02
    ld [bc], a                                    ; $5d50: $02
    db $e4                                        ; $5d51: $e4
    ld a, [bc]                                    ; $5d52: $0a
    dec b                                         ; $5d53: $05
    ld [bc], a                                    ; $5d54: $02
    db $e4                                        ; $5d55: $e4
    ld a, c                                       ; $5d56: $79
    pop de                                        ; $5d57: $d1
    pop de                                        ; $5d58: $d1
    pop de                                        ; $5d59: $d1
    ld l, c                                       ; $5d5a: $69
    pop de                                        ; $5d5b: $d1
    pop de                                        ; $5d5c: $d1
    pop de                                        ; $5d5d: $d1
    ld h, a                                       ; $5d5e: $67
    pop de                                        ; $5d5f: $d1
    pop de                                        ; $5d60: $d1
    pop de                                        ; $5d61: $d1
    ld h, h                                       ; $5d62: $64
    pop de                                        ; $5d63: $d1
    pop de                                        ; $5d64: $d1
    pop de                                        ; $5d65: $d1
    db $e4                                        ; $5d66: $e4
    add e                                         ; $5d67: $83
    add e                                         ; $5d68: $83
    inc bc                                        ; $5d69: $03
    db $e3                                        ; $5d6a: $e3
    add e                                         ; $5d6b: $83
    add e                                         ; $5d6c: $83
    inc bc                                        ; $5d6d: $03
    db $e3                                        ; $5d6e: $e3
    add e                                         ; $5d6f: $83
    add e                                         ; $5d70: $83
    inc bc                                        ; $5d71: $03
    db $e3                                        ; $5d72: $e3
    add e                                         ; $5d73: $83
    add e                                         ; $5d74: $83
    inc bc                                        ; $5d75: $03
    pop de                                        ; $5d76: $d1
    pop de                                        ; $5d77: $d1
    pop de                                        ; $5d78: $d1
    ld h, h                                       ; $5d79: $64
    pop de                                        ; $5d7a: $d1
    pop de                                        ; $5d7b: $d1
    pop de                                        ; $5d7c: $d1
    ld h, a                                       ; $5d7d: $67
    pop de                                        ; $5d7e: $d1
    pop de                                        ; $5d7f: $d1
    pop de                                        ; $5d80: $d1
    ld l, c                                       ; $5d81: $69
    pop de                                        ; $5d82: $d1
    pop de                                        ; $5d83: $d1
    pop de                                        ; $5d84: $d1
    ld a, c                                       ; $5d85: $79
    inc bc                                        ; $5d86: $03
    inc bc                                        ; $5d87: $03
    add e                                         ; $5d88: $83
    add h                                         ; $5d89: $84
    inc bc                                        ; $5d8a: $03
    inc bc                                        ; $5d8b: $03
    add e                                         ; $5d8c: $83
    add e                                         ; $5d8d: $83
    inc bc                                        ; $5d8e: $03
    inc bc                                        ; $5d8f: $03
    add e                                         ; $5d90: $83
    add h                                         ; $5d91: $84
    inc bc                                        ; $5d92: $03
    inc bc                                        ; $5d93: $03
    add e                                         ; $5d94: $83
    add e                                         ; $5d95: $83
    pop de                                        ; $5d96: $d1
    pop de                                        ; $5d97: $d1
    pop de                                        ; $5d98: $d1
    ld de, $d1d1                                  ; $5d99: $11 $d1 $d1
    pop de                                        ; $5d9c: $d1
    ld [de], a                                    ; $5d9d: $12
    pop de                                        ; $5d9e: $d1
    pop de                                        ; $5d9f: $d1
    pop de                                        ; $5da0: $d1
    pop de                                        ; $5da1: $d1
    pop de                                        ; $5da2: $d1
    pop de                                        ; $5da3: $d1
    pop de                                        ; $5da4: $d1
    pop de                                        ; $5da5: $d1
    inc bc                                        ; $5da6: $03
    inc bc                                        ; $5da7: $03
    add e                                         ; $5da8: $83
    adc h                                         ; $5da9: $8c
    inc bc                                        ; $5daa: $03
    inc bc                                        ; $5dab: $03
    add e                                         ; $5dac: $83
    adc h                                         ; $5dad: $8c
    inc bc                                        ; $5dae: $03
    inc bc                                        ; $5daf: $03
    add e                                         ; $5db0: $83
    add e                                         ; $5db1: $83
    inc bc                                        ; $5db2: $03
    inc bc                                        ; $5db3: $03
    add e                                         ; $5db4: $83
    add e                                         ; $5db5: $83
    ld h, l                                       ; $5db6: $65
    ld l, [hl]                                    ; $5db7: $6e
    ld c, b                                       ; $5db8: $48
    ld h, b                                       ; $5db9: $60
    ld l, b                                       ; $5dba: $68
    add c                                         ; $5dbb: $81
    adc b                                         ; $5dbc: $88
    ld a, e                                       ; $5dbd: $7b
    ld l, d                                       ; $5dbe: $6a
    ld l, e                                       ; $5dbf: $6b
    adc d                                         ; $5dc0: $8a
    adc e                                         ; $5dc1: $8b
    ld a, d                                       ; $5dc2: $7a
    ld l, [hl]                                    ; $5dc3: $6e
    db $ed                                        ; $5dc4: $ed
    adc [hl]                                      ; $5dc5: $8e
    add h                                         ; $5dc6: $84
    ld [bc], a                                    ; $5dc7: $02
    dec b                                         ; $5dc8: $05
    ld [bc], a                                    ; $5dc9: $02
    add e                                         ; $5dca: $83
    ld a, [bc]                                    ; $5dcb: $0a
    dec c                                         ; $5dcc: $0d
    ld [bc], a                                    ; $5dcd: $02
    add e                                         ; $5dce: $83
    ld [bc], a                                    ; $5dcf: $02
    dec c                                         ; $5dd0: $0d
    ld a, [bc]                                    ; $5dd1: $0a
    add e                                         ; $5dd2: $83
    ld [bc], a                                    ; $5dd3: $02
    ld a, [bc]                                    ; $5dd4: $0a
    dec c                                         ; $5dd5: $0d
    ld l, [hl]                                    ; $5dd6: $6e
    adc a                                         ; $5dd7: $8f
    ld b, h                                       ; $5dd8: $44
    ld d, c                                       ; $5dd9: $51
    ld d, h                                       ; $5dda: $54
    ld b, l                                       ; $5ddb: $45
    ld d, e                                       ; $5ddc: $53
    adc b                                         ; $5ddd: $88
    add d                                         ; $5dde: $82
    ld [hl], l                                    ; $5ddf: $75
    add e                                         ; $5de0: $83
    adc d                                         ; $5de1: $8a
    ld [hl], c                                    ; $5de2: $71
    ld [hl], d                                    ; $5de3: $72
    db $ec                                        ; $5de4: $ec
    ld l, [hl]                                    ; $5de5: $6e
    dec b                                         ; $5de6: $05
    dec l                                         ; $5de7: $2d
    ld [bc], a                                    ; $5de8: $02
    ld [bc], a                                    ; $5de9: $02
    dec b                                         ; $5dea: $05
    ld [bc], a                                    ; $5deb: $02
    ld [bc], a                                    ; $5dec: $02
    ld a, [bc]                                    ; $5ded: $0a
    ld a, [bc]                                    ; $5dee: $0a
    dec b                                         ; $5def: $05
    dec c                                         ; $5df0: $0d
    dec c                                         ; $5df1: $0d
    dec b                                         ; $5df2: $05
    dec b                                         ; $5df3: $05
    ld a, [bc]                                    ; $5df4: $0a
    ld [bc], a                                    ; $5df5: $02
    ld d, d                                       ; $5df6: $52
    ld b, c                                       ; $5df7: $41
    ld b, d                                       ; $5df8: $42
    ld b, e                                       ; $5df9: $43
    ld a, e                                       ; $5dfa: $7b
    ldh a, [rHDMA4]                               ; $5dfb: $f0 $54
    add c                                         ; $5dfd: $81
    adc e                                         ; $5dfe: $8b
    add d                                         ; $5dff: $82
    ld l, a                                       ; $5e00: $6f
    add e                                         ; $5e01: $83
    adc [hl]                                      ; $5e02: $8e
    ld [hl], c                                    ; $5e03: $71
    ld [hl], d                                    ; $5e04: $72
    db $ec                                        ; $5e05: $ec
    ld [bc], a                                    ; $5e06: $02
    ld [bc], a                                    ; $5e07: $02
    ld [bc], a                                    ; $5e08: $02
    ld [bc], a                                    ; $5e09: $02
    ld [bc], a                                    ; $5e0a: $02
    ld a, [bc]                                    ; $5e0b: $0a
    ld [bc], a                                    ; $5e0c: $02
    ld a, [bc]                                    ; $5e0d: $0a
    dec c                                         ; $5e0e: $0d
    ld a, [bc]                                    ; $5e0f: $0a
    ld [bc], a                                    ; $5e10: $02
    dec c                                         ; $5e11: $0d
    ld a, [bc]                                    ; $5e12: $0a
    ld [bc], a                                    ; $5e13: $02
    ld [bc], a                                    ; $5e14: $02
    ld a, [bc]                                    ; $5e15: $0a
    ld b, h                                       ; $5e16: $44
    ld d, c                                       ; $5e17: $51
    ld d, d                                       ; $5e18: $52
    ld b, c                                       ; $5e19: $41
    adc b                                         ; $5e1a: $88
    ld d, h                                       ; $5e1b: $54
    ldh a, [$6c]                                  ; $5e1c: $f0 $6c
    adc d                                         ; $5e1e: $8a
    adc e                                         ; $5e1f: $8b
    add d                                         ; $5e20: $82
    ld l, a                                       ; $5e21: $6f
    db $ed                                        ; $5e22: $ed
    adc [hl]                                      ; $5e23: $8e
    add b                                         ; $5e24: $80
    ld [hl], d                                    ; $5e25: $72
    ld [bc], a                                    ; $5e26: $02
    ld [bc], a                                    ; $5e27: $02
    ld [bc], a                                    ; $5e28: $02
    ld [bc], a                                    ; $5e29: $02
    ld a, [bc]                                    ; $5e2a: $0a
    ld [bc], a                                    ; $5e2b: $02
    ld a, [bc]                                    ; $5e2c: $0a
    ld [bc], a                                    ; $5e2d: $02
    ld a, [bc]                                    ; $5e2e: $0a
    ld a, [bc]                                    ; $5e2f: $0a
    dec c                                         ; $5e30: $0d
    ld [bc], a                                    ; $5e31: $02
    ld a, [bc]                                    ; $5e32: $0a
    ld a, [bc]                                    ; $5e33: $0a
    ld a, [bc]                                    ; $5e34: $0a
    ld [bc], a                                    ; $5e35: $02
    ld l, l                                       ; $5e36: $6d
    ld d, h                                       ; $5e37: $54
    ld b, l                                       ; $5e38: $45
    ld d, e                                       ; $5e39: $53
    inc de                                        ; $5e3a: $13
    inc d                                         ; $5e3b: $14
    di                                            ; $5e3c: $f3
    db $f4                                        ; $5e3d: $f4
    dec d                                         ; $5e3e: $15
    ld d, $f7                                     ; $5e3f: $16 $f7
    ld hl, sp-$2f                                 ; $5e41: $f8 $d1
    pop de                                        ; $5e43: $d1
    pop de                                        ; $5e44: $d1
    pop de                                        ; $5e45: $d1
    add h                                         ; $5e46: $84
    ld [bc], a                                    ; $5e47: $02
    ld [bc], a                                    ; $5e48: $02
    ld [bc], a                                    ; $5e49: $02
    adc e                                         ; $5e4a: $8b
    adc e                                         ; $5e4b: $8b
    adc h                                         ; $5e4c: $8c
    adc e                                         ; $5e4d: $8b
    adc e                                         ; $5e4e: $8b
    adc h                                         ; $5e4f: $8c
    adc h                                         ; $5e50: $8c
    adc e                                         ; $5e51: $8b
    add e                                         ; $5e52: $83
    add e                                         ; $5e53: $83
    add e                                         ; $5e54: $83
    add h                                         ; $5e55: $84
    ld [hl], h                                    ; $5e56: $74
    adc h                                         ; $5e57: $8c
    ld d, e                                       ; $5e58: $53
    ld d, h                                       ; $5e59: $54
    ld sp, hl                                     ; $5e5a: $f9
    ld a, [$fcfb]                                 ; $5e5b: $fa $fb $fc
    db $fd                                        ; $5e5e: $fd
    cp $ff                                        ; $5e5f: $fe $ff
    nop                                           ; $5e61: $00
    pop de                                        ; $5e62: $d1
    pop de                                        ; $5e63: $d1
    pop de                                        ; $5e64: $d1
    pop de                                        ; $5e65: $d1
    dec b                                         ; $5e66: $05
    ld a, [bc]                                    ; $5e67: $0a
    dec b                                         ; $5e68: $05
    ld [bc], a                                    ; $5e69: $02
    adc e                                         ; $5e6a: $8b
    adc e                                         ; $5e6b: $8b
    adc h                                         ; $5e6c: $8c
    adc h                                         ; $5e6d: $8c
    adc h                                         ; $5e6e: $8c
    adc e                                         ; $5e6f: $8b
    adc e                                         ; $5e70: $8b
    adc e                                         ; $5e71: $8b
    add e                                         ; $5e72: $83
    add e                                         ; $5e73: $83
    add e                                         ; $5e74: $83
    add e                                         ; $5e75: $83
    ld b, l                                       ; $5e76: $45
    ld d, e                                       ; $5e77: $53
    adc h                                         ; $5e78: $8c
    xor $01                                       ; $5e79: $ee $01
    ld [bc], a                                    ; $5e7b: $02
    inc bc                                        ; $5e7c: $03
    ld a, [c]                                     ; $5e7d: $f2
    inc b                                         ; $5e7e: $04
    dec b                                         ; $5e7f: $05
    ld b, $f6                                     ; $5e80: $06 $f6
    pop de                                        ; $5e82: $d1
    pop de                                        ; $5e83: $d1
    pop de                                        ; $5e84: $d1
    pop de                                        ; $5e85: $d1
    ld [bc], a                                    ; $5e86: $02
    dec b                                         ; $5e87: $05
    dec c                                         ; $5e88: $0d
    dec c                                         ; $5e89: $0d
    adc e                                         ; $5e8a: $8b
    adc e                                         ; $5e8b: $8b
    adc e                                         ; $5e8c: $8b
    adc e                                         ; $5e8d: $8b
    adc h                                         ; $5e8e: $8c
    adc h                                         ; $5e8f: $8c
    adc h                                         ; $5e90: $8c
    adc e                                         ; $5e91: $8b
    add e                                         ; $5e92: $83
    add e                                         ; $5e93: $83
    add e                                         ; $5e94: $83
    add e                                         ; $5e95: $83
    ld d, e                                       ; $5e96: $53
    ld d, h                                       ; $5e97: $54
    ld [hl], h                                    ; $5e98: $74
    ld d, e                                       ; $5e99: $53
    di                                            ; $5e9a: $f3
    db $f4                                        ; $5e9b: $f4
    ld sp, hl                                     ; $5e9c: $f9
    ld a, [$f8f7]                                 ; $5e9d: $fa $f7 $f8
    db $fd                                        ; $5ea0: $fd
    cp $d1                                        ; $5ea1: $fe $d1
    pop de                                        ; $5ea3: $d1
    pop de                                        ; $5ea4: $d1
    pop de                                        ; $5ea5: $d1
    ld [bc], a                                    ; $5ea6: $02
    ld [bc], a                                    ; $5ea7: $02
    ld [bc], a                                    ; $5ea8: $02
    ld [bc], a                                    ; $5ea9: $02
    adc e                                         ; $5eaa: $8b
    adc e                                         ; $5eab: $8b
    adc h                                         ; $5eac: $8c
    adc h                                         ; $5ead: $8c
    adc h                                         ; $5eae: $8c
    adc e                                         ; $5eaf: $8b
    adc e                                         ; $5eb0: $8b
    adc e                                         ; $5eb1: $8b
    add e                                         ; $5eb2: $83
    add e                                         ; $5eb3: $83
    add e                                         ; $5eb4: $83
    add e                                         ; $5eb5: $83
    ld b, d                                       ; $5eb6: $42
    ld b, e                                       ; $5eb7: $43
    ld b, h                                       ; $5eb8: $44
    ld d, c                                       ; $5eb9: $51
    ld d, h                                       ; $5eba: $54
    adc b                                         ; $5ebb: $88
    ld a, e                                       ; $5ebc: $7b
    ldh a, [$83]                                  ; $5ebd: $f0 $83
    ld [hl], l                                    ; $5ebf: $75
    adc e                                         ; $5ec0: $8b
    ld l, e                                       ; $5ec1: $6b
    ld l, [hl]                                    ; $5ec2: $6e
    db $ed                                        ; $5ec3: $ed
    ld h, [hl]                                    ; $5ec4: $66
    ld [hl], c                                    ; $5ec5: $71
    ld [bc], a                                    ; $5ec6: $02
    ld [bc], a                                    ; $5ec7: $02
    ld [bc], a                                    ; $5ec8: $02
    ld [bc], a                                    ; $5ec9: $02
    ld [bc], a                                    ; $5eca: $02
    ld a, [bc]                                    ; $5ecb: $0a
    ld [bc], a                                    ; $5ecc: $02
    ld a, [bc]                                    ; $5ecd: $0a
    dec c                                         ; $5ece: $0d
    ld [bc], a                                    ; $5ecf: $02
    ld a, [bc]                                    ; $5ed0: $0a
    dec b                                         ; $5ed1: $05
    ld [bc], a                                    ; $5ed2: $02
    dec c                                         ; $5ed3: $0d
    ld [bc], a                                    ; $5ed4: $02
    ld [bc], a                                    ; $5ed5: $02
    ld d, d                                       ; $5ed6: $52
    ld b, c                                       ; $5ed7: $41
    ld b, d                                       ; $5ed8: $42
    ld b, e                                       ; $5ed9: $43
    ld b, l                                       ; $5eda: $45
    ld d, e                                       ; $5edb: $53
    ld d, h                                       ; $5edc: $54
    ld a, e                                       ; $5edd: $7b
    ld l, a                                       ; $5ede: $6f
    add e                                         ; $5edf: $83
    adc d                                         ; $5ee0: $8a
    adc e                                         ; $5ee1: $8b
    ld [hl], d                                    ; $5ee2: $72
    db $ec                                        ; $5ee3: $ec
    db $ed                                        ; $5ee4: $ed
    add b                                         ; $5ee5: $80
    ld [bc], a                                    ; $5ee6: $02
    ld [bc], a                                    ; $5ee7: $02
    ld [bc], a                                    ; $5ee8: $02
    ld [bc], a                                    ; $5ee9: $02
    ld [bc], a                                    ; $5eea: $02
    ld [bc], a                                    ; $5eeb: $02
    ld [bc], a                                    ; $5eec: $02
    ld [bc], a                                    ; $5eed: $02
    dec b                                         ; $5eee: $05
    ld a, [bc]                                    ; $5eef: $0a
    ld a, [bc]                                    ; $5ef0: $0a
    ld a, [bc]                                    ; $5ef1: $0a
    ld [bc], a                                    ; $5ef2: $02
    dec c                                         ; $5ef3: $0d
    dec c                                         ; $5ef4: $0d
    dec c                                         ; $5ef5: $0d
    ld b, h                                       ; $5ef6: $44
    ld d, c                                       ; $5ef7: $51
    adc a                                         ; $5ef8: $8f
    ld h, [hl]                                    ; $5ef9: $66
    ldh a, [$6c]                                  ; $5efa: $f0 $6c
    add c                                         ; $5efc: $81
    ld d, e                                       ; $5efd: $53
    add d                                         ; $5efe: $82
    ld l, e                                       ; $5eff: $6b
    add e                                         ; $5f00: $83
    adc d                                         ; $5f01: $8a
    ld [hl], c                                    ; $5f02: $71
    ld [hl], d                                    ; $5f03: $72
    db $ec                                        ; $5f04: $ec
    db $ed                                        ; $5f05: $ed
    ld [bc], a                                    ; $5f06: $02
    ld [bc], a                                    ; $5f07: $02
    ld a, [bc]                                    ; $5f08: $0a
    ld [bc], a                                    ; $5f09: $02
    ld a, [bc]                                    ; $5f0a: $0a
    dec b                                         ; $5f0b: $05
    dec c                                         ; $5f0c: $0d
    ld [bc], a                                    ; $5f0d: $02
    dec c                                         ; $5f0e: $0d
    dec b                                         ; $5f0f: $05
    ld a, [bc]                                    ; $5f10: $0a
    ld a, [bc]                                    ; $5f11: $0a
    ld [bc], a                                    ; $5f12: $02
    ld [bc], a                                    ; $5f13: $02
    dec c                                         ; $5f14: $0d
    dec c                                         ; $5f15: $0d
    ld h, b                                       ; $5f16: $60
    ld e, l                                       ; $5f17: $5d
    ld b, [hl]                                    ; $5f18: $46
    adc a                                         ; $5f19: $8f
    ld a, e                                       ; $5f1a: $7b
    ldh a, [rHDMA3]                               ; $5f1b: $f0 $53
    ld d, h                                       ; $5f1d: $54
    adc e                                         ; $5f1e: $8b
    ld [hl], l                                    ; $5f1f: $75
    ld h, e                                       ; $5f20: $63
    add e                                         ; $5f21: $83
    ld l, [hl]                                    ; $5f22: $6e
    ld [hl], c                                    ; $5f23: $71
    ld [hl], d                                    ; $5f24: $72
    ld l, [hl]                                    ; $5f25: $6e
    dec b                                         ; $5f26: $05
    dec b                                         ; $5f27: $05
    ld [bc], a                                    ; $5f28: $02
    ld a, [hl+]                                   ; $5f29: $2a
    ld [bc], a                                    ; $5f2a: $02
    dec c                                         ; $5f2b: $0d
    dec b                                         ; $5f2c: $05
    ld [bc], a                                    ; $5f2d: $02
    ld a, [bc]                                    ; $5f2e: $0a
    dec b                                         ; $5f2f: $05
    dec b                                         ; $5f30: $05
    dec c                                         ; $5f31: $0d
    dec b                                         ; $5f32: $05
    ld [bc], a                                    ; $5f33: $02
    ld [bc], a                                    ; $5f34: $02
    dec b                                         ; $5f35: $05
    ld d, h                                       ; $5f36: $54
    ld b, l                                       ; $5f37: $45
    sub b                                         ; $5f38: $90
    ld [hl], h                                    ; $5f39: $74
    ld c, $75                                     ; $5f3a: $0e $75
    ld h, b                                       ; $5f3c: $60
    ld e, l                                       ; $5f3d: $5d
    rrca                                          ; $5f3e: $0f
    ld c, $66                                     ; $5f3f: $0e $66
    ldh a, [$61]                                  ; $5f41: $f0 $61
    ld h, d                                       ; $5f43: $62
    adc e                                         ; $5f44: $8b
    ld d, h                                       ; $5f45: $54
    ld [bc], a                                    ; $5f46: $02
    dec b                                         ; $5f47: $05
    dec c                                         ; $5f48: $0d
    ld [bc], a                                    ; $5f49: $02
    adc e                                         ; $5f4a: $8b
    ld [bc], a                                    ; $5f4b: $02
    ld [bc], a                                    ; $5f4c: $02
    ld [bc], a                                    ; $5f4d: $02
    adc e                                         ; $5f4e: $8b
    adc h                                         ; $5f4f: $8c
    ld [bc], a                                    ; $5f50: $02
    dec c                                         ; $5f51: $0d
    add e                                         ; $5f52: $83
    add e                                         ; $5f53: $83
    ld a, [bc]                                    ; $5f54: $0a
    dec b                                         ; $5f55: $05
    adc h                                         ; $5f56: $8c
    xor $54                                       ; $5f57: $ee $54
    ld b, l                                       ; $5f59: $45
    ld b, [hl]                                    ; $5f5a: $46
    ld h, e                                       ; $5f5b: $63
    pop af                                        ; $5f5c: $f1
    ld bc, $ef80                                  ; $5f5d: $01 $80 $ef
    push af                                       ; $5f60: $f5
    inc b                                         ; $5f61: $04
    ld l, a                                       ; $5f62: $6f
    ld l, l                                       ; $5f63: $6d
    halt                                          ; $5f64: $76
    pop de                                        ; $5f65: $d1
    dec c                                         ; $5f66: $0d
    ld a, [bc]                                    ; $5f67: $0a
    dec b                                         ; $5f68: $05
    ld [bc], a                                    ; $5f69: $02
    ld [bc], a                                    ; $5f6a: $02
    ld [bc], a                                    ; $5f6b: $02
    adc e                                         ; $5f6c: $8b
    adc e                                         ; $5f6d: $8b
    ld a, [bc]                                    ; $5f6e: $0a
    adc e                                         ; $5f6f: $8b
    adc e                                         ; $5f70: $8b
    adc e                                         ; $5f71: $8b
    ld [bc], a                                    ; $5f72: $02
    and e                                         ; $5f73: $a3
    add h                                         ; $5f74: $84
    add h                                         ; $5f75: $84
    ld [hl], h                                    ; $5f76: $74
    ld d, h                                       ; $5f77: $54
    xor $53                                       ; $5f78: $ee $53
    ld [bc], a                                    ; $5f7a: $02
    inc bc                                        ; $5f7b: $03
    ld a, [c]                                     ; $5f7c: $f2
    di                                            ; $5f7d: $f3
    dec b                                         ; $5f7e: $05
    ld b, $f6                                     ; $5f7f: $06 $f6
    rst $30                                       ; $5f81: $f7
    pop de                                        ; $5f82: $d1
    pop de                                        ; $5f83: $d1
    pop de                                        ; $5f84: $d1
    pop de                                        ; $5f85: $d1
    ld [bc], a                                    ; $5f86: $02
    ld [bc], a                                    ; $5f87: $02
    ld a, [bc]                                    ; $5f88: $0a
    ld [bc], a                                    ; $5f89: $02
    adc e                                         ; $5f8a: $8b
    adc h                                         ; $5f8b: $8c
    adc e                                         ; $5f8c: $8b
    adc h                                         ; $5f8d: $8c
    adc h                                         ; $5f8e: $8c
    adc e                                         ; $5f8f: $8b
    adc e                                         ; $5f90: $8b
    adc e                                         ; $5f91: $8b
    add e                                         ; $5f92: $83
    add e                                         ; $5f93: $83
    add e                                         ; $5f94: $83
    add e                                         ; $5f95: $83
    sub b                                         ; $5f96: $90
    ld [hl], h                                    ; $5f97: $74
    ld d, e                                       ; $5f98: $53
    ld d, h                                       ; $5f99: $54
    db $f4                                        ; $5f9a: $f4
    ld sp, hl                                     ; $5f9b: $f9
    ld a, [$f8fb]                                 ; $5f9c: $fa $fb $f8
    db $fd                                        ; $5f9f: $fd
    cp $ff                                        ; $5fa0: $fe $ff
    pop de                                        ; $5fa2: $d1
    pop de                                        ; $5fa3: $d1
    pop de                                        ; $5fa4: $d1
    pop de                                        ; $5fa5: $d1
    ld a, [bc]                                    ; $5fa6: $0a
    ld [bc], a                                    ; $5fa7: $02
    ld [bc], a                                    ; $5fa8: $02
    ld [bc], a                                    ; $5fa9: $02
    adc h                                         ; $5faa: $8c
    adc e                                         ; $5fab: $8b
    adc e                                         ; $5fac: $8b
    adc e                                         ; $5fad: $8b
    adc h                                         ; $5fae: $8c
    adc h                                         ; $5faf: $8c
    adc h                                         ; $5fb0: $8c
    adc e                                         ; $5fb1: $8b
    add e                                         ; $5fb2: $83
    add e                                         ; $5fb3: $83
    add e                                         ; $5fb4: $83
    add e                                         ; $5fb5: $83
    ld h, h                                       ; $5fb6: $64
    ld h, l                                       ; $5fb7: $65
    ld h, e                                       ; $5fb8: $63
    ld [hl], c                                    ; $5fb9: $71
    ld h, a                                       ; $5fba: $67
    ld l, b                                       ; $5fbb: $68
    sub b                                         ; $5fbc: $90
    ld [hl], h                                    ; $5fbd: $74
    ld l, c                                       ; $5fbe: $69
    ld l, d                                       ; $5fbf: $6a
    ld h, b                                       ; $5fc0: $60
    ld e, l                                       ; $5fc1: $5d
    ld a, c                                       ; $5fc2: $79
    ld a, d                                       ; $5fc3: $7a
    ld a, e                                       ; $5fc4: $7b
    ldh a, [$84]                                  ; $5fc5: $f0 $84
    add e                                         ; $5fc7: $83
    ld [bc], a                                    ; $5fc8: $02
    dec b                                         ; $5fc9: $05
    add h                                         ; $5fca: $84
    add e                                         ; $5fcb: $83
    ld a, [bc]                                    ; $5fcc: $0a
    ld [bc], a                                    ; $5fcd: $02
    add h                                         ; $5fce: $84
    add e                                         ; $5fcf: $83
    ld [bc], a                                    ; $5fd0: $02
    ld [bc], a                                    ; $5fd1: $02
    add h                                         ; $5fd2: $84
    add e                                         ; $5fd3: $83
    ld [bc], a                                    ; $5fd4: $02
    dec c                                         ; $5fd5: $0d
    ld [hl], d                                    ; $5fd6: $72
    ld [hl], b                                    ; $5fd7: $70
    ld [hl], a                                    ; $5fd8: $77
    pop de                                        ; $5fd9: $d1
    add b                                         ; $5fda: $80
    ld [hl], e                                    ; $5fdb: $73
    ld a, b                                       ; $5fdc: $78
    pop de                                        ; $5fdd: $d1
    ld b, l                                       ; $5fde: $45
    ld h, d                                       ; $5fdf: $62
    ld h, c                                       ; $5fe0: $61
    pop de                                        ; $5fe1: $d1
    ld l, h                                       ; $5fe2: $6c
    ld h, l                                       ; $5fe3: $65
    ld h, h                                       ; $5fe4: $64
    pop de                                        ; $5fe5: $d1
    dec b                                         ; $5fe6: $05
    add e                                         ; $5fe7: $83
    add e                                         ; $5fe8: $83
    add e                                         ; $5fe9: $83
    dec c                                         ; $5fea: $0d
    add e                                         ; $5feb: $83
    add h                                         ; $5fec: $84
    add e                                         ; $5fed: $83
    dec b                                         ; $5fee: $05
    and h                                         ; $5fef: $a4
    and e                                         ; $5ff0: $a3
    add e                                         ; $5ff1: $83
    ld [bc], a                                    ; $5ff2: $02
    and h                                         ; $5ff3: $a4
    and e                                         ; $5ff4: $a3
    add e                                         ; $5ff5: $83
    halt                                          ; $5ff6: $76
    ld l, l                                       ; $5ff7: $6d
    adc e                                         ; $5ff8: $8b
    ld l, [hl]                                    ; $5ff9: $6e
    ld [hl], a                                    ; $5ffa: $77
    ld [hl], b                                    ; $5ffb: $70
    ld d, e                                       ; $5ffc: $53
    ld [hl], c                                    ; $5ffd: $71
    ld a, b                                       ; $5ffe: $78
    ld [hl], e                                    ; $5fff: $73
    ld h, e                                       ; $6000: $63
    ld [hl], h                                    ; $6001: $74
    ld h, c                                       ; $6002: $61
    ld h, d                                       ; $6003: $62
    ld h, b                                       ; $6004: $60
    ld e, l                                       ; $6005: $5d
    and e                                         ; $6006: $a3
    add h                                         ; $6007: $84
    ld a, [bc]                                    ; $6008: $0a
    dec b                                         ; $6009: $05
    and e                                         ; $600a: $a3
    and h                                         ; $600b: $a4
    ld [bc], a                                    ; $600c: $02
    dec b                                         ; $600d: $05
    and e                                         ; $600e: $a3
    and h                                         ; $600f: $a4
    ld [bc], a                                    ; $6010: $02
    dec b                                         ; $6011: $05
    add e                                         ; $6012: $83
    add e                                         ; $6013: $83
    ld [bc], a                                    ; $6014: $02
    ld [bc], a                                    ; $6015: $02
    ld l, a                                       ; $6016: $6f
    ld l, b                                       ; $6017: $68
    ld h, a                                       ; $6018: $67
    pop de                                        ; $6019: $d1
    ld b, l                                       ; $601a: $45
    ld l, d                                       ; $601b: $6a
    ld l, c                                       ; $601c: $69
    pop de                                        ; $601d: $d1
    adc h                                         ; $601e: $8c
    ld a, d                                       ; $601f: $7a
    ld a, c                                       ; $6020: $79
    pop de                                        ; $6021: $d1
    add b                                         ; $6022: $80
    ld l, l                                       ; $6023: $6d
    halt                                          ; $6024: $76
    pop de                                        ; $6025: $d1
    ld [bc], a                                    ; $6026: $02
    and h                                         ; $6027: $a4
    and e                                         ; $6028: $a3
    add e                                         ; $6029: $83
    ld [bc], a                                    ; $602a: $02
    and h                                         ; $602b: $a4
    and e                                         ; $602c: $a3
    add e                                         ; $602d: $83
    ld a, [bc]                                    ; $602e: $0a
    and h                                         ; $602f: $a4
    and e                                         ; $6030: $a3
    add e                                         ; $6031: $83
    ld a, [bc]                                    ; $6032: $0a
    and h                                         ; $6033: $a4
    add h                                         ; $6034: $84
    add e                                         ; $6035: $83
    ld b, h                                       ; $6036: $44
    ld d, c                                       ; $6037: $51
    ld d, d                                       ; $6038: $52
    ld b, c                                       ; $6039: $41
    adc b                                         ; $603a: $88
    ld a, e                                       ; $603b: $7b
    ld d, h                                       ; $603c: $54
    ld l, h                                       ; $603d: $6c
    adc d                                         ; $603e: $8a
    ld h, e                                       ; $603f: $63
    add d                                         ; $6040: $82
    ld l, a                                       ; $6041: $6f
    add b                                         ; $6042: $80
    adc [hl]                                      ; $6043: $8e
    ld [hl], c                                    ; $6044: $71
    ld [hl], d                                    ; $6045: $72
    ld [bc], a                                    ; $6046: $02
    ld [bc], a                                    ; $6047: $02
    ld [bc], a                                    ; $6048: $02
    ld [bc], a                                    ; $6049: $02
    ld a, [bc]                                    ; $604a: $0a
    ld [bc], a                                    ; $604b: $02
    dec b                                         ; $604c: $05
    dec b                                         ; $604d: $05
    dec c                                         ; $604e: $0d
    dec b                                         ; $604f: $05
    ld a, [bc]                                    ; $6050: $0a
    dec b                                         ; $6051: $05
    dec c                                         ; $6052: $0d
    dec c                                         ; $6053: $0d
    ld [bc], a                                    ; $6054: $02
    ld [bc], a                                    ; $6055: $02
    ld b, d                                       ; $6056: $42
    ld b, e                                       ; $6057: $43
    ld b, h                                       ; $6058: $44
    ld d, c                                       ; $6059: $51
    add c                                         ; $605a: $81
    ld d, h                                       ; $605b: $54
    ld a, e                                       ; $605c: $7b
    ld d, e                                       ; $605d: $53
    ld h, e                                       ; $605e: $63
    ld l, e                                       ; $605f: $6b
    adc e                                         ; $6060: $8b
    add d                                         ; $6061: $82
    ld h, [hl]                                    ; $6062: $66
    ld l, [hl]                                    ; $6063: $6e
    add b                                         ; $6064: $80
    ld [hl], c                                    ; $6065: $71
    ld [bc], a                                    ; $6066: $02
    ld [bc], a                                    ; $6067: $02
    ld [bc], a                                    ; $6068: $02
    ld [bc], a                                    ; $6069: $02
    dec c                                         ; $606a: $0d
    dec b                                         ; $606b: $05
    ld [bc], a                                    ; $606c: $02
    ld [bc], a                                    ; $606d: $02
    ld [bc], a                                    ; $606e: $02
    ld [bc], a                                    ; $606f: $02
    ld a, [bc]                                    ; $6070: $0a
    ld a, [bc]                                    ; $6071: $0a
    ld [bc], a                                    ; $6072: $02
    ld [bc], a                                    ; $6073: $02
    dec c                                         ; $6074: $0d
    dec b                                         ; $6075: $05
    ld d, d                                       ; $6076: $52
    adc a                                         ; $6077: $8f
    ld c, b                                       ; $6078: $48
    ld l, [hl]                                    ; $6079: $6e
    ld l, h                                       ; $607a: $6c
    add c                                         ; $607b: $81
    ld d, e                                       ; $607c: $53
    ld a, e                                       ; $607d: $7b
    ld l, a                                       ; $607e: $6f
    add e                                         ; $607f: $83
    adc d                                         ; $6080: $8a
    ld l, e                                       ; $6081: $6b
    ld [hl], d                                    ; $6082: $72
    db $ec                                        ; $6083: $ec
    ld h, [hl]                                    ; $6084: $66
    adc [hl]                                      ; $6085: $8e
    ld [bc], a                                    ; $6086: $02
    ld a, [bc]                                    ; $6087: $0a
    ld [bc], a                                    ; $6088: $02
    dec b                                         ; $6089: $05
    ld [bc], a                                    ; $608a: $02
    ld a, [bc]                                    ; $608b: $0a
    dec b                                         ; $608c: $05
    ld [bc], a                                    ; $608d: $02
    dec b                                         ; $608e: $05
    ld a, [bc]                                    ; $608f: $0a
    dec c                                         ; $6090: $0d
    ld [bc], a                                    ; $6091: $02
    ld [bc], a                                    ; $6092: $02
    dec c                                         ; $6093: $0d
    ld [bc], a                                    ; $6094: $02
    ld a, [bc]                                    ; $6095: $0a
    ld h, l                                       ; $6096: $65
    ld h, h                                       ; $6097: $64
    pop de                                        ; $6098: $d1
    pop de                                        ; $6099: $d1
    ld l, b                                       ; $609a: $68
    ld h, a                                       ; $609b: $67
    pop de                                        ; $609c: $d1
    pop de                                        ; $609d: $d1
    ld l, d                                       ; $609e: $6a
    ld l, c                                       ; $609f: $69
    pop de                                        ; $60a0: $d1
    pop de                                        ; $60a1: $d1
    ld a, d                                       ; $60a2: $7a
    ld a, c                                       ; $60a3: $79
    pop de                                        ; $60a4: $d1
    pop de                                        ; $60a5: $d1
    and e                                         ; $60a6: $a3
    and h                                         ; $60a7: $a4
    add e                                         ; $60a8: $83
    inc bc                                        ; $60a9: $03
    and h                                         ; $60aa: $a4
    and e                                         ; $60ab: $a3
    add e                                         ; $60ac: $83
    inc bc                                        ; $60ad: $03
    and h                                         ; $60ae: $a4
    and e                                         ; $60af: $a3
    add e                                         ; $60b0: $83
    inc bc                                        ; $60b1: $03
    and e                                         ; $60b2: $a3
    and e                                         ; $60b3: $a3
    add e                                         ; $60b4: $83
    inc bc                                        ; $60b5: $03
    add l                                         ; $60b6: $85
    ld d, e                                       ; $60b7: $53
    ld [hl], h                                    ; $60b8: $74
    adc h                                         ; $60b9: $8c
    db $fc                                        ; $60ba: $fc
    ld bc, $0302                                  ; $60bb: $01 $02 $03
    nop                                           ; $60be: $00
    inc b                                         ; $60bf: $04
    dec b                                         ; $60c0: $05
    ld b, $d1                                     ; $60c1: $06 $d1
    pop de                                        ; $60c3: $d1
    pop de                                        ; $60c4: $d1
    pop de                                        ; $60c5: $d1
    ld a, [bc]                                    ; $60c6: $0a
    ld [bc], a                                    ; $60c7: $02
    dec b                                         ; $60c8: $05
    ld a, [bc]                                    ; $60c9: $0a
    adc h                                         ; $60ca: $8c
    adc h                                         ; $60cb: $8c
    adc e                                         ; $60cc: $8b
    adc e                                         ; $60cd: $8b
    adc e                                         ; $60ce: $8b
    adc e                                         ; $60cf: $8b
    adc h                                         ; $60d0: $8c
    adc h                                         ; $60d1: $8c
    add e                                         ; $60d2: $83
    add e                                         ; $60d3: $83
    add e                                         ; $60d4: $83
    add e                                         ; $60d5: $83
    xor $85                                       ; $60d6: $ee $85
    ld b, l                                       ; $60d8: $45
    ld d, e                                       ; $60d9: $53
    ld a, [c]                                     ; $60da: $f2
    di                                            ; $60db: $f3
    db $f4                                        ; $60dc: $f4
    ld sp, hl                                     ; $60dd: $f9
    or $f7                                        ; $60de: $f6 $f7
    ld hl, sp-$03                                 ; $60e0: $f8 $fd
    pop de                                        ; $60e2: $d1
    pop de                                        ; $60e3: $d1
    pop de                                        ; $60e4: $d1
    pop de                                        ; $60e5: $d1
    dec c                                         ; $60e6: $0d
    ld a, [bc]                                    ; $60e7: $0a
    ld [bc], a                                    ; $60e8: $02
    ld [bc], a                                    ; $60e9: $02
    adc h                                         ; $60ea: $8c
    adc h                                         ; $60eb: $8c
    adc h                                         ; $60ec: $8c
    adc e                                         ; $60ed: $8b
    adc h                                         ; $60ee: $8c
    adc h                                         ; $60ef: $8c
    adc h                                         ; $60f0: $8c
    adc e                                         ; $60f1: $8b
    add e                                         ; $60f2: $83
    add e                                         ; $60f3: $83
    add e                                         ; $60f4: $83
    add e                                         ; $60f5: $83
    adc h                                         ; $60f6: $8c
    xor $53                                       ; $60f7: $ee $53
    ld d, h                                       ; $60f9: $54
    ld a, [$fcfb]                                 ; $60fa: $fa $fb $fc
    ld bc, $fffe                                  ; $60fd: $01 $fe $ff
    nop                                           ; $6100: $00
    inc b                                         ; $6101: $04
    pop de                                        ; $6102: $d1
    pop de                                        ; $6103: $d1
    pop de                                        ; $6104: $d1
    pop de                                        ; $6105: $d1
    ld a, [bc]                                    ; $6106: $0a
    ld a, [bc]                                    ; $6107: $0a
    ld [bc], a                                    ; $6108: $02
    ld [bc], a                                    ; $6109: $02
    adc e                                         ; $610a: $8b
    adc e                                         ; $610b: $8b
    adc h                                         ; $610c: $8c
    adc e                                         ; $610d: $8b
    adc e                                         ; $610e: $8b
    adc h                                         ; $610f: $8c

jr_080_6110:
    adc e                                         ; $6110: $8b
    adc e                                         ; $6111: $8b
    add h                                         ; $6112: $84
    add e                                         ; $6113: $83
    add e                                         ; $6114: $83
    add e                                         ; $6115: $83
    ld a, [c]                                     ; $6116: $f2
    pop de                                        ; $6117: $d1
    pop de                                        ; $6118: $d1
    pop de                                        ; $6119: $d1
    or $d1                                        ; $611a: $f6 $d1
    pop de                                        ; $611c: $d1
    pop de                                        ; $611d: $d1
    pop de                                        ; $611e: $d1
    pop de                                        ; $611f: $d1
    pop de                                        ; $6120: $d1
    pop de                                        ; $6121: $d1
    pop de                                        ; $6122: $d1
    pop de                                        ; $6123: $d1
    pop de                                        ; $6124: $d1
    pop de                                        ; $6125: $d1
    adc e                                         ; $6126: $8b
    add e                                         ; $6127: $83
    add e                                         ; $6128: $83
    inc bc                                        ; $6129: $03
    adc e                                         ; $612a: $8b
    add e                                         ; $612b: $83
    add e                                         ; $612c: $83
    inc bc                                        ; $612d: $03
    add e                                         ; $612e: $83
    add e                                         ; $612f: $83
    add e                                         ; $6130: $83
    inc bc                                        ; $6131: $03
    add e                                         ; $6132: $83
    add e                                         ; $6133: $83
    add e                                         ; $6134: $83
    inc bc                                        ; $6135: $03
    pop de                                        ; $6136: $d1
    pop de                                        ; $6137: $d1
    pop de                                        ; $6138: $d1
    rla                                           ; $6139: $17
    pop de                                        ; $613a: $d1
    pop de                                        ; $613b: $d1
    pop de                                        ; $613c: $d1
    jr jr_080_6110                                ; $613d: $18 $d1

    pop de                                        ; $613f: $d1
    halt                                          ; $6140: $76
    ld l, l                                       ; $6141: $6d
    pop de                                        ; $6142: $d1
    pop de                                        ; $6143: $d1
    ld [hl], a                                    ; $6144: $77
    ld [hl], b                                    ; $6145: $70
    inc bc                                        ; $6146: $03
    inc bc                                        ; $6147: $03
    add e                                         ; $6148: $83
    adc e                                         ; $6149: $8b
    inc bc                                        ; $614a: $03
    inc bc                                        ; $614b: $03
    add e                                         ; $614c: $83
    adc h                                         ; $614d: $8c
    inc bc                                        ; $614e: $03
    inc bc                                        ; $614f: $03
    and h                                         ; $6150: $a4
    add h                                         ; $6151: $84
    inc bc                                        ; $6152: $03
    inc b                                         ; $6153: $04
    and h                                         ; $6154: $a4
    and e                                         ; $6155: $a3
    pop de                                        ; $6156: $d1
    pop de                                        ; $6157: $d1
    pop de                                        ; $6158: $d1
    pop de                                        ; $6159: $d1
    pop de                                        ; $615a: $d1
    pop de                                        ; $615b: $d1
    rst $30                                       ; $615c: $f7
    ld b, $d1                                     ; $615d: $06 $d1
    add hl, de                                    ; $615f: $19
    di                                            ; $6160: $f3
    inc bc                                        ; $6161: $03
    ld a, [de]                                    ; $6162: $1a
    dec de                                        ; $6163: $1b
    ld l, [hl]                                    ; $6164: $6e
    add b                                         ; $6165: $80
    inc bc                                        ; $6166: $03
    add e                                         ; $6167: $83
    add e                                         ; $6168: $83
    add h                                         ; $6169: $84
    add e                                         ; $616a: $83
    add e                                         ; $616b: $83
    set 1, h                                      ; $616c: $cb $cc
    add e                                         ; $616e: $83
    adc h                                         ; $616f: $8c
    set 1, e                                      ; $6170: $cb $cb
    adc h                                         ; $6172: $8c
    adc e                                         ; $6173: $8b
    ld [bc], a                                    ; $6174: $02
    ld a, [bc]                                    ; $6175: $0a
    pop de                                        ; $6176: $d1
    pop de                                        ; $6177: $d1
    pop de                                        ; $6178: $d1
    pop de                                        ; $6179: $d1
    or $f7                                        ; $617a: $f6 $f7
    ld hl, sp-$03                                 ; $617c: $f8 $fd
    ld a, [c]                                     ; $617e: $f2
    di                                            ; $617f: $f3
    db $f4                                        ; $6180: $f4
    ld sp, hl                                     ; $6181: $f9
    ld h, [hl]                                    ; $6182: $66
    ld l, [hl]                                    ; $6183: $6e
    add b                                         ; $6184: $80
    ld h, [hl]                                    ; $6185: $66
    add e                                         ; $6186: $83
    add e                                         ; $6187: $83
    add e                                         ; $6188: $83
    add e                                         ; $6189: $83
    call z, $cbcc                                 ; $618a: $cc $cc $cb
    call z, $cccc                                 ; $618d: $cc $cc $cc
    set 1, e                                      ; $6190: $cb $cb
    ld [bc], a                                    ; $6192: $02
    ld [bc], a                                    ; $6193: $02
    ld a, [bc]                                    ; $6194: $0a
    ld [bc], a                                    ; $6195: $02
    pop de                                        ; $6196: $d1
    pop de                                        ; $6197: $d1
    pop de                                        ; $6198: $d1
    add hl, de                                    ; $6199: $19
    pop de                                        ; $619a: $d1
    pop de                                        ; $619b: $d1
    ld a, [de]                                    ; $619c: $1a
    dec de                                        ; $619d: $1b
    pop de                                        ; $619e: $d1
    add hl, de                                    ; $619f: $19
    inc e                                         ; $61a0: $1c
    dec e                                         ; $61a1: $1d
    ld a, [de]                                    ; $61a2: $1a
    dec de                                        ; $61a3: $1b
    ld e, $54                                     ; $61a4: $1e $54
    inc bc                                        ; $61a6: $03
    add e                                         ; $61a7: $83
    add e                                         ; $61a8: $83
    adc h                                         ; $61a9: $8c
    add e                                         ; $61aa: $83
    add e                                         ; $61ab: $83
    adc h                                         ; $61ac: $8c
    adc e                                         ; $61ad: $8b
    add e                                         ; $61ae: $83
    adc e                                         ; $61af: $8b
    adc e                                         ; $61b0: $8b
    adc e                                         ; $61b1: $8b
    adc e                                         ; $61b2: $8b
    adc e                                         ; $61b3: $8b
    adc e                                         ; $61b4: $8b
    ld [bc], a                                    ; $61b5: $02
    inc e                                         ; $61b6: $1c
    dec e                                         ; $61b7: $1d
    ld d, h                                       ; $61b8: $54
    ld b, l                                       ; $61b9: $45
    ld e, $63                                     ; $61ba: $1e $63
    ld h, b                                       ; $61bc: $60
    ld e, l                                       ; $61bd: $5d
    add b                                         ; $61be: $80
    ld h, [hl]                                    ; $61bf: $66
    ld a, e                                       ; $61c0: $7b
    rra                                           ; $61c1: $1f
    ld b, l                                       ; $61c2: $45
    adc d                                         ; $61c3: $8a
    jr nz, @+$23                                  ; $61c4: $20 $21

    adc e                                         ; $61c6: $8b
    adc e                                         ; $61c7: $8b
    ld [bc], a                                    ; $61c8: $02
    dec b                                         ; $61c9: $05
    adc e                                         ; $61ca: $8b
    ld [bc], a                                    ; $61cb: $02
    dec b                                         ; $61cc: $05
    dec b                                         ; $61cd: $05
    ld a, [bc]                                    ; $61ce: $0a
    dec b                                         ; $61cf: $05
    dec b                                         ; $61d0: $05
    rrca                                          ; $61d1: $0f
    dec b                                         ; $61d2: $05
    ld a, [bc]                                    ; $61d3: $0a
    rrca                                          ; $61d4: $0f
    rrca                                          ; $61d5: $0f
    ld d, e                                       ; $61d6: $53
    xor $45                                       ; $61d7: $ee $45
    sub b                                         ; $61d9: $90
    ld b, [hl]                                    ; $61da: $46
    ld b, a                                       ; $61db: $47
    ld c, b                                       ; $61dc: $48
    ld h, b                                       ; $61dd: $60
    ld [hl+], a                                   ; $61de: $22
    inc hl                                        ; $61df: $23
    inc h                                         ; $61e0: $24
    ld [hl+], a                                   ; $61e1: $22
    dec h                                         ; $61e2: $25
    ld h, $27                                     ; $61e3: $26 $27
    ld hl, $0a05                                  ; $61e5: $21 $05 $0a
    ld [bc], a                                    ; $61e8: $02
    ld a, [bc]                                    ; $61e9: $0a
    ld [bc], a                                    ; $61ea: $02
    ld [bc], a                                    ; $61eb: $02
    ld [bc], a                                    ; $61ec: $02
    dec b                                         ; $61ed: $05
    rrca                                          ; $61ee: $0f
    rrca                                          ; $61ef: $0f
    rrca                                          ; $61f0: $0f
    rrca                                          ; $61f1: $0f
    rrca                                          ; $61f2: $0f
    rrca                                          ; $61f3: $0f
    rrca                                          ; $61f4: $0f
    rrca                                          ; $61f5: $0f
    pop de                                        ; $61f6: $d1
    pop de                                        ; $61f7: $d1
    pop de                                        ; $61f8: $d1
    add hl, de                                    ; $61f9: $19
    pop de                                        ; $61fa: $d1
    pop de                                        ; $61fb: $d1
    ld a, [de]                                    ; $61fc: $1a
    dec de                                        ; $61fd: $1b
    pop de                                        ; $61fe: $d1
    add hl, de                                    ; $61ff: $19
    inc e                                         ; $6200: $1c
    dec e                                         ; $6201: $1d
    ld a, [de]                                    ; $6202: $1a
    dec de                                        ; $6203: $1b
    ld e, $63                                     ; $6204: $1e $63
    inc bc                                        ; $6206: $03
    add e                                         ; $6207: $83
    add e                                         ; $6208: $83
    adc e                                         ; $6209: $8b
    add e                                         ; $620a: $83
    add e                                         ; $620b: $83
    adc h                                         ; $620c: $8c
    adc h                                         ; $620d: $8c
    add e                                         ; $620e: $83
    adc h                                         ; $620f: $8c
    adc h                                         ; $6210: $8c
    adc e                                         ; $6211: $8b

jr_080_6212:
    adc e                                         ; $6212: $8b
    adc e                                         ; $6213: $8b
    adc e                                         ; $6214: $8b
    dec b                                         ; $6215: $05
    inc e                                         ; $6216: $1c
    dec e                                         ; $6217: $1d
    ld h, e                                       ; $6218: $63
    ld l, e                                       ; $6219: $6b
    ld e, $80                                     ; $621a: $1e $80
    ld h, [hl]                                    ; $621c: $66
    rra                                           ; $621d: $1f
    ld d, h                                       ; $621e: $54
    ld h, b                                       ; $621f: $60
    jr nz, jr_080_624a                            ; $6220: $20 $28

    adc b                                         ; $6222: $88
    rra                                           ; $6223: $1f
    add hl, hl                                    ; $6224: $29
    dec h                                         ; $6225: $25
    adc e                                         ; $6226: $8b
    adc e                                         ; $6227: $8b
    ld [bc], a                                    ; $6228: $02
    ld [bc], a                                    ; $6229: $02
    adc h                                         ; $622a: $8c
    dec c                                         ; $622b: $0d
    dec b                                         ; $622c: $05
    rrca                                          ; $622d: $0f
    ld [bc], a                                    ; $622e: $02
    dec b                                         ; $622f: $05
    rrca                                          ; $6230: $0f
    rrca                                          ; $6231: $0f
    dec c                                         ; $6232: $0d
    rrca                                          ; $6233: $0f
    rrca                                          ; $6234: $0f
    rrca                                          ; $6235: $0f
    db $ec                                        ; $6236: $ec
    rra                                           ; $6237: $1f
    dec h                                         ; $6238: $25
    ld a, [hl+]                                   ; $6239: $2a
    ld [hl+], a                                   ; $623a: $22
    daa                                           ; $623b: $27
    ld hl, $212b                                  ; $623c: $21 $2b $21
    dec h                                         ; $623f: $25
    add hl, hl                                    ; $6240: $29
    daa                                           ; $6241: $27
    add hl, hl                                    ; $6242: $29
    jr z, jr_080_6271                             ; $6243: $28 $2c

    dec h                                         ; $6245: $25
    ld a, [bc]                                    ; $6246: $0a
    rrca                                          ; $6247: $0f
    rrca                                          ; $6248: $0f
    rrca                                          ; $6249: $0f

jr_080_624a:
    rrca                                          ; $624a: $0f
    rrca                                          ; $624b: $0f
    rrca                                          ; $624c: $0f
    rrca                                          ; $624d: $0f
    rrca                                          ; $624e: $0f
    rrca                                          ; $624f: $0f
    rrca                                          ; $6250: $0f
    rrca                                          ; $6251: $0f
    rrca                                          ; $6252: $0f
    rrca                                          ; $6253: $0f
    rrca                                          ; $6254: $0f
    rrca                                          ; $6255: $0f
    dec l                                         ; $6256: $2d
    inc l                                         ; $6257: $2c
    dec h                                         ; $6258: $25
    add hl, hl                                    ; $6259: $29
    ld l, $27                                     ; $625a: $2e $27
    ld hl, $2128                                  ; $625c: $21 $28 $21
    dec h                                         ; $625f: $25
    add hl, hl                                    ; $6260: $29
    daa                                           ; $6261: $27
    add hl, hl                                    ; $6262: $29
    jr z, jr_080_6291                             ; $6263: $28 $2c

    dec h                                         ; $6265: $25
    rrca                                          ; $6266: $0f
    rrca                                          ; $6267: $0f
    rrca                                          ; $6268: $0f
    rrca                                          ; $6269: $0f
    rrca                                          ; $626a: $0f
    rrca                                          ; $626b: $0f
    rrca                                          ; $626c: $0f
    rrca                                          ; $626d: $0f
    rrca                                          ; $626e: $0f
    rrca                                          ; $626f: $0f
    rrca                                          ; $6270: $0f

jr_080_6271:
    rrca                                          ; $6271: $0f
    rrca                                          ; $6272: $0f
    rrca                                          ; $6273: $0f
    rrca                                          ; $6274: $0f
    rrca                                          ; $6275: $0f
    inc e                                         ; $6276: $1c
    dec e                                         ; $6277: $1d
    add b                                         ; $6278: $80
    add e                                         ; $6279: $83
    ld e, $54                                     ; $627a: $1e $54
    ld [hl], d                                    ; $627c: $72
    ld d, e                                       ; $627d: $53
    ld h, e                                       ; $627e: $63
    ld l, e                                       ; $627f: $6b
    ld [hl], l                                    ; $6280: $75
    rra                                           ; $6281: $1f
    ld h, [hl]                                    ; $6282: $66
    ld e, l                                       ; $6283: $5d
    rra                                           ; $6284: $1f
    jr z, jr_080_6212                             ; $6285: $28 $8b

    adc e                                         ; $6287: $8b
    ld a, [bc]                                    ; $6288: $0a
    dec c                                         ; $6289: $0d
    adc e                                         ; $628a: $8b
    ld [bc], a                                    ; $628b: $02
    dec b                                         ; $628c: $05
    ld [bc], a                                    ; $628d: $02
    ld [bc], a                                    ; $628e: $02
    dec b                                         ; $628f: $05
    ld [bc], a                                    ; $6290: $02

jr_080_6291:
    rrca                                          ; $6291: $0f
    dec b                                         ; $6292: $05
    dec b                                         ; $6293: $05
    rrca                                          ; $6294: $0f
    rrca                                          ; $6295: $0f
    cpl                                           ; $6296: $2f
    ld hl, $2821                                  ; $6297: $21 $21 $28
    jr nz, jr_080_62c1                            ; $629a: $20 $25

    add hl, hl                                    ; $629c: $29
    jr nc, jr_080_62c8                            ; $629d: $30 $29

    jr z, jr_080_62cd                             ; $629f: $28 $2c

    dec h                                         ; $62a1: $25
    inc l                                         ; $62a2: $2c
    ld sp, $2821                                  ; $62a3: $31 $21 $28
    cpl                                           ; $62a6: $2f
    rrca                                          ; $62a7: $0f
    rrca                                          ; $62a8: $0f
    rrca                                          ; $62a9: $0f
    rrca                                          ; $62aa: $0f
    rrca                                          ; $62ab: $0f
    rrca                                          ; $62ac: $0f
    rrca                                          ; $62ad: $0f
    rrca                                          ; $62ae: $0f
    rrca                                          ; $62af: $0f
    rrca                                          ; $62b0: $0f
    rrca                                          ; $62b1: $0f
    rrca                                          ; $62b2: $0f
    cpl                                           ; $62b3: $2f
    rrca                                          ; $62b4: $0f
    rrca                                          ; $62b5: $0f
    inc l                                         ; $62b6: $2c
    daa                                           ; $62b7: $27
    ld hl, $2128                                  ; $62b8: $21 $28 $21
    dec h                                         ; $62bb: $25
    add hl, hl                                    ; $62bc: $29
    daa                                           ; $62bd: $27
    add hl, hl                                    ; $62be: $29
    jr z, jr_080_62ed                             ; $62bf: $28 $2c

jr_080_62c1:
    dec h                                         ; $62c1: $25
    inc l                                         ; $62c2: $2c
    daa                                           ; $62c3: $27
    ld hl, $0f28                                  ; $62c4: $21 $28 $0f
    rrca                                          ; $62c7: $0f

jr_080_62c8:
    rrca                                          ; $62c8: $0f
    rrca                                          ; $62c9: $0f
    rrca                                          ; $62ca: $0f
    rrca                                          ; $62cb: $0f
    rrca                                          ; $62cc: $0f

jr_080_62cd:
    rrca                                          ; $62cd: $0f
    rrca                                          ; $62ce: $0f
    rrca                                          ; $62cf: $0f
    rrca                                          ; $62d0: $0f
    rrca                                          ; $62d1: $0f
    rrca                                          ; $62d2: $0f
    rrca                                          ; $62d3: $0f
    rrca                                          ; $62d4: $0f
    rrca                                          ; $62d5: $0f
    inc l                                         ; $62d6: $2c
    daa                                           ; $62d7: $27
    ld hl, $2128                                  ; $62d8: $21 $28 $21
    dec h                                         ; $62db: $25
    add hl, hl                                    ; $62dc: $29
    daa                                           ; $62dd: $27
    add hl, hl                                    ; $62de: $29
    jr z, jr_080_630d                             ; $62df: $28 $2c

    dec h                                         ; $62e1: $25
    inc l                                         ; $62e2: $2c
    daa                                           ; $62e3: $27
    jr nc, jr_080_630e                            ; $62e4: $30 $28

    rrca                                          ; $62e6: $0f
    rrca                                          ; $62e7: $0f
    rrca                                          ; $62e8: $0f
    rrca                                          ; $62e9: $0f
    rrca                                          ; $62ea: $0f
    rrca                                          ; $62eb: $0f
    rrca                                          ; $62ec: $0f

jr_080_62ed:
    rrca                                          ; $62ed: $0f
    rrca                                          ; $62ee: $0f
    rrca                                          ; $62ef: $0f
    rrca                                          ; $62f0: $0f
    rrca                                          ; $62f1: $0f
    rrca                                          ; $62f2: $0f
    rrca                                          ; $62f3: $0f
    rrca                                          ; $62f4: $0f
    rrca                                          ; $62f5: $0f
    pop de                                        ; $62f6: $d1
    pop de                                        ; $62f7: $d1
    ld a, c                                       ; $62f8: $79
    ld a, d                                       ; $62f9: $7a
    cp $ff                                        ; $62fa: $fe $ff
    ld [hl-], a                                   ; $62fc: $32
    inc sp                                        ; $62fd: $33
    ld a, [$34fb]                                 ; $62fe: $fa $fb $34
    ld l, e                                       ; $6301: $6b
    ld l, [hl]                                    ; $6302: $6e
    add b                                         ; $6303: $80
    ld h, [hl]                                    ; $6304: $66
    db $ed                                        ; $6305: $ed
    add e                                         ; $6306: $83
    add e                                         ; $6307: $83
    add e                                         ; $6308: $83
    add h                                         ; $6309: $84
    set 1, h                                      ; $630a: $cb $cc
    adc h                                         ; $630c: $8c

jr_080_630d:
    adc e                                         ; $630d: $8b

jr_080_630e:
    call z, $8bcc                                 ; $630e: $cc $cc $8b
    ld [bc], a                                    ; $6311: $02
    ld [bc], a                                    ; $6312: $02
    ld a, [bc]                                    ; $6313: $0a
    ld [bc], a                                    ; $6314: $02
    ld a, [bc]                                    ; $6315: $0a
    ld h, b                                       ; $6316: $60
    ld e, l                                       ; $6317: $5d
    ld l, [hl]                                    ; $6318: $6e
    ld h, d                                       ; $6319: $62
    ld a, e                                       ; $631a: $7b
    ld d, e                                       ; $631b: $53
    ld d, h                                       ; $631c: $54
    ld [hl], e                                    ; $631d: $73
    ld [hl], l                                    ; $631e: $75
    add d                                         ; $631f: $82
    ld l, a                                       ; $6320: $6f
    ld [hl], b                                    ; $6321: $70
    adc [hl]                                      ; $6322: $8e
    ld [hl], c                                    ; $6323: $71
    ld l, [hl]                                    ; $6324: $6e
    ld l, l                                       ; $6325: $6d
    ld [bc], a                                    ; $6326: $02
    dec b                                         ; $6327: $05
    ld [bc], a                                    ; $6328: $02
    db $e3                                        ; $6329: $e3
    ld [bc], a                                    ; $632a: $02
    dec b                                         ; $632b: $05
    ld [bc], a                                    ; $632c: $02
    jp Jump_000_0a05                              ; $632d: $c3 $05 $0a


    ld [bc], a                                    ; $6330: $02
    jp Jump_000_020d                              ; $6331: $c3 $0d $02


    ld [bc], a                                    ; $6334: $02
    db $e4                                        ; $6335: $e4
    ld [hl], h                                    ; $6336: $74
    adc h                                         ; $6337: $8c
    xor $54                                       ; $6338: $ee $54
    ld e, l                                       ; $633a: $5d
    ld b, [hl]                                    ; $633b: $46
    ld h, e                                       ; $633c: $63
    ld l, e                                       ; $633d: $6b
    dec [hl]                                      ; $633e: $35
    inc h                                         ; $633f: $24
    ld [hl+], a                                   ; $6340: $22
    dec [hl]                                      ; $6341: $35
    dec h                                         ; $6342: $25
    add hl, hl                                    ; $6343: $29
    daa                                           ; $6344: $27
    ld hl, $0d05                                  ; $6345: $21 $05 $0d
    dec c                                         ; $6348: $0d
    ld [bc], a                                    ; $6349: $02
    ld [bc], a                                    ; $634a: $02
    ld [bc], a                                    ; $634b: $02
    ld [bc], a                                    ; $634c: $02
    ld [bc], a                                    ; $634d: $02
    rrca                                          ; $634e: $0f
    rrca                                          ; $634f: $0f
    rrca                                          ; $6350: $0f
    rrca                                          ; $6351: $0f
    rrca                                          ; $6352: $0f
    rrca                                          ; $6353: $0f
    rrca                                          ; $6354: $0f
    rrca                                          ; $6355: $0f
    ld b, l                                       ; $6356: $45
    ld [hl], h                                    ; $6357: $74
    ld d, h                                       ; $6358: $54
    ld a, d                                       ; $6359: $7a
    ld [hl], l                                    ; $635a: $75
    ld e, l                                       ; $635b: $5d
    ld b, [hl]                                    ; $635c: $46
    ld l, d                                       ; $635d: $6a
    ld [hl], $66                                  ; $635e: $36 $66
    ld l, [hl]                                    ; $6360: $6e
    ld l, b                                       ; $6361: $68
    cpl                                           ; $6362: $2f
    ld d, e                                       ; $6363: $53
    ld d, h                                       ; $6364: $54
    ld h, l                                       ; $6365: $65
    dec b                                         ; $6366: $05
    ld [bc], a                                    ; $6367: $02
    ld [bc], a                                    ; $6368: $02
    db $e4                                        ; $6369: $e4
    dec b                                         ; $636a: $05
    ld [bc], a                                    ; $636b: $02
    ld [bc], a                                    ; $636c: $02
    db $e4                                        ; $636d: $e4
    rrca                                          ; $636e: $0f
    dec b                                         ; $636f: $05
    ld [bc], a                                    ; $6370: $02
    db $e4                                        ; $6371: $e4
    rrca                                          ; $6372: $0f
    ld [bc], a                                    ; $6373: $02
    dec b                                         ; $6374: $05
    db $e4                                        ; $6375: $e4
    jr z, jr_080_63a4                             ; $6376: $28 $2c

    dec h                                         ; $6378: $25
    add hl, hl                                    ; $6379: $29
    inc l                                         ; $637a: $2c
    daa                                           ; $637b: $27
    ld sp, $2128                                  ; $637c: $31 $28 $21
    dec h                                         ; $637f: $25
    scf                                           ; $6380: $37
    daa                                           ; $6381: $27
    add hl, hl                                    ; $6382: $29
    jr z, jr_080_63b1                             ; $6383: $28 $2c

    dec h                                         ; $6385: $25
    rrca                                          ; $6386: $0f
    rrca                                          ; $6387: $0f
    rrca                                          ; $6388: $0f
    rrca                                          ; $6389: $0f
    rrca                                          ; $638a: $0f
    rrca                                          ; $638b: $0f
    rrca                                          ; $638c: $0f
    rrca                                          ; $638d: $0f
    rrca                                          ; $638e: $0f
    rrca                                          ; $638f: $0f
    rrca                                          ; $6390: $0f
    rrca                                          ; $6391: $0f
    rrca                                          ; $6392: $0f
    rrca                                          ; $6393: $0f

jr_080_6394:
    rrca                                          ; $6394: $0f
    rrca                                          ; $6395: $0f
    jr c, jr_080_63fb                             ; $6396: $38 $63

    ld l, e                                       ; $6398: $6b
    ld h, d                                       ; $6399: $62
    add hl, sp                                    ; $639a: $39
    ld h, [hl]                                    ; $639b: $66
    ld l, [hl]                                    ; $639c: $6e
    ld [hl], e                                    ; $639d: $73
    cpl                                           ; $639e: $2f
    ld d, e                                       ; $639f: $53
    ld b, [hl]                                    ; $63a0: $46
    ld [hl], b                                    ; $63a1: $70
    jr c, jr_080_6394                             ; $63a2: $38 $f0

jr_080_63a4:
    ld l, h                                       ; $63a4: $6c
    ld l, l                                       ; $63a5: $6d
    rrca                                          ; $63a6: $0f
    ld [bc], a                                    ; $63a7: $02
    dec b                                         ; $63a8: $05
    db $e4                                        ; $63a9: $e4
    rrca                                          ; $63aa: $0f
    ld [bc], a                                    ; $63ab: $02
    dec b                                         ; $63ac: $05
    call nz, Call_000_050f                        ; $63ad: $c4 $0f $05
    ld [bc], a                                    ; $63b0: $02

jr_080_63b1:
    jp Jump_000_0d0f                              ; $63b1: $c3 $0f $0d


    ld [bc], a                                    ; $63b4: $02
    db $e4                                        ; $63b5: $e4
    ld h, c                                       ; $63b6: $61
    pop de                                        ; $63b7: $d1
    pop de                                        ; $63b8: $d1
    pop de                                        ; $63b9: $d1
    ld a, b                                       ; $63ba: $78
    pop de                                        ; $63bb: $d1
    pop de                                        ; $63bc: $d1
    pop de                                        ; $63bd: $d1
    ld [hl], a                                    ; $63be: $77
    pop de                                        ; $63bf: $d1
    pop de                                        ; $63c0: $d1
    pop de                                        ; $63c1: $d1
    halt                                          ; $63c2: $76
    pop de                                        ; $63c3: $d1
    pop de                                        ; $63c4: $d1
    pop de                                        ; $63c5: $d1
    db $e3                                        ; $63c6: $e3
    add e                                         ; $63c7: $83
    add e                                         ; $63c8: $83
    inc bc                                        ; $63c9: $03
    jp $8383                                      ; $63ca: $c3 $83 $83


    inc bc                                        ; $63cd: $03
    jp $8383                                      ; $63ce: $c3 $83 $83


    inc bc                                        ; $63d1: $03
    call nz, $8383                                ; $63d2: $c4 $83 $83
    inc bc                                        ; $63d5: $03
    inc l                                         ; $63d6: $2c
    daa                                           ; $63d7: $27
    ld hl, $2128                                  ; $63d8: $21 $28 $21
    dec h                                         ; $63db: $25
    add hl, hl                                    ; $63dc: $29
    daa                                           ; $63dd: $27
    add hl, hl                                    ; $63de: $29
    jr z, jr_080_640d                             ; $63df: $28 $2c

    dec h                                         ; $63e1: $25
    inc l                                         ; $63e2: $2c
    daa                                           ; $63e3: $27
    ld hl, $0f3a                                  ; $63e4: $21 $3a $0f
    rrca                                          ; $63e7: $0f
    rrca                                          ; $63e8: $0f
    rrca                                          ; $63e9: $0f
    rrca                                          ; $63ea: $0f
    rrca                                          ; $63eb: $0f
    rrca                                          ; $63ec: $0f
    rrca                                          ; $63ed: $0f
    rrca                                          ; $63ee: $0f
    rrca                                          ; $63ef: $0f
    rrca                                          ; $63f0: $0f
    rrca                                          ; $63f1: $0f
    rrca                                          ; $63f2: $0f
    rrca                                          ; $63f3: $0f
    rrca                                          ; $63f4: $0f
    rrca                                          ; $63f5: $0f
    add hl, sp                                    ; $63f6: $39
    add d                                         ; $63f7: $82
    ld l, a                                       ; $63f8: $6f
    ld a, d                                       ; $63f9: $7a
    cpl                                           ; $63fa: $2f

jr_080_63fb:
    ld [hl], c                                    ; $63fb: $71
    ld [hl], d                                    ; $63fc: $72
    ld l, d                                       ; $63fd: $6a
    dec sp                                        ; $63fe: $3b
    ld [hl], h                                    ; $63ff: $74
    adc h                                         ; $6400: $8c
    ld l, b                                       ; $6401: $68
    inc a                                         ; $6402: $3c
    ld e, l                                       ; $6403: $5d
    ld b, [hl]                                    ; $6404: $46
    ld h, l                                       ; $6405: $65
    rrca                                          ; $6406: $0f
    ld a, [bc]                                    ; $6407: $0a
    ld [bc], a                                    ; $6408: $02
    db $e3                                        ; $6409: $e3
    rrca                                          ; $640a: $0f
    ld [bc], a                                    ; $640b: $02
    ld [bc], a                                    ; $640c: $02

jr_080_640d:
    db $e3                                        ; $640d: $e3
    rrca                                          ; $640e: $0f
    dec b                                         ; $640f: $05
    ld a, [bc]                                    ; $6410: $0a
    db $e4                                        ; $6411: $e4
    rrca                                          ; $6412: $0f
    dec b                                         ; $6413: $05
    ld [bc], a                                    ; $6414: $02
    db $e4                                        ; $6415: $e4
    ld h, h                                       ; $6416: $64
    ld h, l                                       ; $6417: $65
    ld a, e                                       ; $6418: $7b
    ldh a, [$67]                                  ; $6419: $f0 $67
    ld l, b                                       ; $641b: $68
    ld h, e                                       ; $641c: $63
    add d                                         ; $641d: $82
    ld l, c                                       ; $641e: $69
    ld l, d                                       ; $641f: $6a
    ld h, [hl]                                    ; $6420: $66
    ld [hl], c                                    ; $6421: $71
    ld a, c                                       ; $6422: $79
    ld a, d                                       ; $6423: $7a
    ld d, e                                       ; $6424: $53
    ld [hl], h                                    ; $6425: $74
    add e                                         ; $6426: $83
    add e                                         ; $6427: $83
    ld [bc], a                                    ; $6428: $02
    ld a, [bc]                                    ; $6429: $0a
    add e                                         ; $642a: $83
    add h                                         ; $642b: $84
    dec b                                         ; $642c: $05
    ld a, [bc]                                    ; $642d: $0a
    add e                                         ; $642e: $83
    add e                                         ; $642f: $83
    dec b                                         ; $6430: $05
    ld [bc], a                                    ; $6431: $02
    add h                                         ; $6432: $84
    add e                                         ; $6433: $83
    ld [bc], a                                    ; $6434: $02
    dec b                                         ; $6435: $05
    ld l, h                                       ; $6436: $6c
    ld [hl], b                                    ; $6437: $70
    ld [hl], a                                    ; $6438: $77
    pop de                                        ; $6439: $d1
    ld l, a                                       ; $643a: $6f
    ld [hl], e                                    ; $643b: $73
    ld a, b                                       ; $643c: $78
    pop de                                        ; $643d: $d1
    ld [hl], d                                    ; $643e: $72
    ld h, d                                       ; $643f: $62
    ld h, c                                       ; $6440: $61
    pop de                                        ; $6441: $d1
    adc h                                         ; $6442: $8c
    ld h, l                                       ; $6443: $65
    ld h, h                                       ; $6444: $64
    pop de                                        ; $6445: $d1
    ld [bc], a                                    ; $6446: $02
    add e                                         ; $6447: $83
    add e                                         ; $6448: $83
    add e                                         ; $6449: $83
    ld [bc], a                                    ; $644a: $02
    add e                                         ; $644b: $83
    add e                                         ; $644c: $83
    add e                                         ; $644d: $83
    ld [bc], a                                    ; $644e: $02
    and h                                         ; $644f: $a4
    and h                                         ; $6450: $a4
    add e                                         ; $6451: $83
    ld a, [bc]                                    ; $6452: $0a
    and h                                         ; $6453: $a4
    and h                                         ; $6454: $a4
    add e                                         ; $6455: $83
    halt                                          ; $6456: $76
    ld l, l                                       ; $6457: $6d
    ld h, b                                       ; $6458: $60
    ld e, l                                       ; $6459: $5d
    ld [hl], a                                    ; $645a: $77
    ld [hl], b                                    ; $645b: $70
    ld h, [hl]                                    ; $645c: $66
    ldh a, [$78]                                  ; $645d: $f0 $78
    ld [hl], e                                    ; $645f: $73
    ld d, e                                       ; $6460: $53
    ld d, h                                       ; $6461: $54
    dec a                                         ; $6462: $3d
    db $fc                                        ; $6463: $fc
    ld bc, $a402                                  ; $6464: $01 $02 $a4
    add e                                         ; $6467: $83
    ld [bc], a                                    ; $6468: $02
    dec b                                         ; $6469: $05
    and h                                         ; $646a: $a4
    and h                                         ; $646b: $a4
    ld [bc], a                                    ; $646c: $02
    ld a, [bc]                                    ; $646d: $0a
    and e                                         ; $646e: $a3
    and e                                         ; $646f: $a3
    ld [bc], a                                    ; $6470: $02
    ld [bc], a                                    ; $6471: $02
    adc e                                         ; $6472: $8b
    adc e                                         ; $6473: $8b
    adc e                                         ; $6474: $8b
    adc e                                         ; $6475: $8b
    ld b, [hl]                                    ; $6476: $46
    ld l, b                                       ; $6477: $68
    ld h, a                                       ; $6478: $67
    pop de                                        ; $6479: $d1
    ld l, h                                       ; $647a: $6c
    ld l, d                                       ; $647b: $6a
    ld l, c                                       ; $647c: $69
    pop de                                        ; $647d: $d1
    ld l, a                                       ; $647e: $6f
    ld a, d                                       ; $647f: $7a
    ld a, c                                       ; $6480: $79
    pop de                                        ; $6481: $d1
    inc bc                                        ; $6482: $03
    ld a, [c]                                     ; $6483: $f2
    pop de                                        ; $6484: $d1
    pop de                                        ; $6485: $d1
    dec b                                         ; $6486: $05
    and h                                         ; $6487: $a4
    and e                                         ; $6488: $a3
    add e                                         ; $6489: $83
    dec b                                         ; $648a: $05
    and h                                         ; $648b: $a4
    and e                                         ; $648c: $a3
    add e                                         ; $648d: $83
    dec b                                         ; $648e: $05
    and h                                         ; $648f: $a4
    and e                                         ; $6490: $a3
    add e                                         ; $6491: $83
    adc e                                         ; $6492: $8b
    adc h                                         ; $6493: $8c
    add h                                         ; $6494: $84
    add e                                         ; $6495: $83
    pop de                                        ; $6496: $d1
    nop                                           ; $6497: $00
    inc b                                         ; $6498: $04
    dec b                                         ; $6499: $05
    pop de                                        ; $649a: $d1
    pop de                                        ; $649b: $d1
    pop de                                        ; $649c: $d1
    pop de                                        ; $649d: $d1
    pop de                                        ; $649e: $d1
    pop de                                        ; $649f: $d1
    pop de                                        ; $64a0: $d1
    pop de                                        ; $64a1: $d1
    pop de                                        ; $64a2: $d1
    pop de                                        ; $64a3: $d1
    pop de                                        ; $64a4: $d1
    pop de                                        ; $64a5: $d1
    add h                                         ; $64a6: $84
    adc e                                         ; $64a7: $8b
    adc e                                         ; $64a8: $8b
    adc h                                         ; $64a9: $8c
    add e                                         ; $64aa: $83
    add e                                         ; $64ab: $83
    add e                                         ; $64ac: $83
    add e                                         ; $64ad: $83
    inc bc                                        ; $64ae: $03
    inc bc                                        ; $64af: $03
    inc bc                                        ; $64b0: $03
    inc bc                                        ; $64b1: $03
    inc bc                                        ; $64b2: $03
    inc bc                                        ; $64b3: $03
    inc bc                                        ; $64b4: $03
    inc bc                                        ; $64b5: $03
    ld b, $f6                                     ; $64b6: $06 $f6
    pop de                                        ; $64b8: $d1
    pop de                                        ; $64b9: $d1
    pop de                                        ; $64ba: $d1
    pop de                                        ; $64bb: $d1
    pop de                                        ; $64bc: $d1
    pop de                                        ; $64bd: $d1
    pop de                                        ; $64be: $d1
    pop de                                        ; $64bf: $d1
    pop de                                        ; $64c0: $d1
    pop de                                        ; $64c1: $d1
    pop de                                        ; $64c2: $d1
    pop de                                        ; $64c3: $d1
    pop de                                        ; $64c4: $d1
    pop de                                        ; $64c5: $d1
    adc e                                         ; $64c6: $8b
    adc e                                         ; $64c7: $8b
    add e                                         ; $64c8: $83
    add e                                         ; $64c9: $83
    add e                                         ; $64ca: $83
    add e                                         ; $64cb: $83
    add e                                         ; $64cc: $83
    add e                                         ; $64cd: $83
    inc bc                                        ; $64ce: $03
    inc bc                                        ; $64cf: $03
    inc bc                                        ; $64d0: $03
    inc bc                                        ; $64d1: $03
    inc bc                                        ; $64d2: $03
    inc bc                                        ; $64d3: $03
    inc bc                                        ; $64d4: $03
    inc bc                                        ; $64d5: $03
    pop de                                        ; $64d6: $d1
    pop de                                        ; $64d7: $d1
    ld a, b                                       ; $64d8: $78
    ld [hl], e                                    ; $64d9: $73
    pop de                                        ; $64da: $d1
    pop de                                        ; $64db: $d1
    ld h, c                                       ; $64dc: $61
    ld h, d                                       ; $64dd: $62
    pop de                                        ; $64de: $d1
    pop de                                        ; $64df: $d1
    ld h, h                                       ; $64e0: $64
    ld h, l                                       ; $64e1: $65
    pop de                                        ; $64e2: $d1
    pop de                                        ; $64e3: $d1
    ld h, a                                       ; $64e4: $67
    ld l, b                                       ; $64e5: $68
    inc bc                                        ; $64e6: $03
    inc b                                         ; $64e7: $04
    and h                                         ; $64e8: $a4
    and e                                         ; $64e9: $a3
    inc bc                                        ; $64ea: $03
    inc bc                                        ; $64eb: $03
    add e                                         ; $64ec: $83
    add e                                         ; $64ed: $83
    inc bc                                        ; $64ee: $03
    inc bc                                        ; $64ef: $03
    add h                                         ; $64f0: $84
    add e                                         ; $64f1: $83
    inc bc                                        ; $64f2: $03
    inc bc                                        ; $64f3: $03
    add h                                         ; $64f4: $84
    add h                                         ; $64f5: $84
    pop de                                        ; $64f6: $d1
    pop de                                        ; $64f7: $d1
    ld l, c                                       ; $64f8: $69
    ld l, d                                       ; $64f9: $6a
    pop de                                        ; $64fa: $d1
    pop de                                        ; $64fb: $d1
    ld a, c                                       ; $64fc: $79
    ld a, d                                       ; $64fd: $7a
    pop de                                        ; $64fe: $d1
    pop de                                        ; $64ff: $d1
    pop de                                        ; $6500: $d1
    ld a, $d1                                     ; $6501: $3e $d1
    pop de                                        ; $6503: $d1
    pop de                                        ; $6504: $d1
    ccf                                           ; $6505: $3f
    inc bc                                        ; $6506: $03
    inc bc                                        ; $6507: $03
    add h                                         ; $6508: $84
    add e                                         ; $6509: $83
    inc bc                                        ; $650a: $03
    inc bc                                        ; $650b: $03
    add e                                         ; $650c: $83
    add h                                         ; $650d: $84
    inc bc                                        ; $650e: $03
    inc bc                                        ; $650f: $03
    add e                                         ; $6510: $83
    adc e                                         ; $6511: $8b
    inc bc                                        ; $6512: $03
    inc bc                                        ; $6513: $03
    add e                                         ; $6514: $83
    adc e                                         ; $6515: $8b
    ld d, e                                       ; $6516: $53
    ldh a, [$2f]                                  ; $6517: $f0 $2f
    daa                                           ; $6519: $27
    adc e                                         ; $651a: $8b
    ld l, e                                       ; $651b: $6b
    jr c, jr_080_6543                             ; $651c: $38 $25

    adc [hl]                                      ; $651e: $8e
    ld [hl], c                                    ; $651f: $71
    inc a                                         ; $6520: $3c
    ld a, [hl-]                                   ; $6521: $3a
    ld d, e                                       ; $6522: $53
    ld [hl], h                                    ; $6523: $74
    cpl                                           ; $6524: $2f
    daa                                           ; $6525: $27
    dec b                                         ; $6526: $05
    ld a, [bc]                                    ; $6527: $0a
    cpl                                           ; $6528: $2f
    rrca                                          ; $6529: $0f
    dec c                                         ; $652a: $0d
    ld [bc], a                                    ; $652b: $02
    cpl                                           ; $652c: $2f
    rrca                                          ; $652d: $0f
    ld a, [bc]                                    ; $652e: $0a
    ld [bc], a                                    ; $652f: $02
    cpl                                           ; $6530: $2f
    cpl                                           ; $6531: $2f
    ld [bc], a                                    ; $6532: $02
    ld [bc], a                                    ; $6533: $02
    cpl                                           ; $6534: $2f
    rrca                                          ; $6535: $0f
    jr nc, jr_080_656f                            ; $6536: $30 $37

    add hl, hl                                    ; $6538: $29
    daa                                           ; $6539: $27
    add hl, hl                                    ; $653a: $29
    jr z, jr_080_6569                             ; $653b: $28 $2c

    ld sp, $272c                                  ; $653d: $31 $2c $27
    ld hl, $2137                                  ; $6540: $21 $37 $21

jr_080_6543:
    dec h                                         ; $6543: $25
    add hl, hl                                    ; $6544: $29
    daa                                           ; $6545: $27
    rrca                                          ; $6546: $0f
    cpl                                           ; $6547: $2f
    rrca                                          ; $6548: $0f
    rrca                                          ; $6549: $0f
    rrca                                          ; $654a: $0f
    rrca                                          ; $654b: $0f
    rrca                                          ; $654c: $0f
    cpl                                           ; $654d: $2f
    rrca                                          ; $654e: $0f
    rrca                                          ; $654f: $0f
    rrca                                          ; $6550: $0f
    cpl                                           ; $6551: $2f
    rrca                                          ; $6552: $0f
    rrca                                          ; $6553: $0f
    rrca                                          ; $6554: $0f
    rrca                                          ; $6555: $0f
    ld hl, $2925                                  ; $6556: $21 $25 $29
    daa                                           ; $6559: $27
    add hl, hl                                    ; $655a: $29
    jr z, jr_080_6589                             ; $655b: $28 $2c

    dec h                                         ; $655d: $25
    inc l                                         ; $655e: $2c
    daa                                           ; $655f: $27
    ld hl, $2128                                  ; $6560: $21 $28 $21
    dec h                                         ; $6563: $25
    add hl, hl                                    ; $6564: $29
    daa                                           ; $6565: $27
    rrca                                          ; $6566: $0f
    rrca                                          ; $6567: $0f
    rrca                                          ; $6568: $0f

jr_080_6569:
    rrca                                          ; $6569: $0f
    rrca                                          ; $656a: $0f
    rrca                                          ; $656b: $0f
    rrca                                          ; $656c: $0f
    rrca                                          ; $656d: $0f
    rrca                                          ; $656e: $0f

jr_080_656f:
    rrca                                          ; $656f: $0f
    rrca                                          ; $6570: $0f
    rrca                                          ; $6571: $0f
    rrca                                          ; $6572: $0f
    rrca                                          ; $6573: $0f
    rrca                                          ; $6574: $0f
    rrca                                          ; $6575: $0f
    ld h, e                                       ; $6576: $63
    ld l, e                                       ; $6577: $6b
    jr c, jr_080_659f                             ; $6578: $38 $25

    ld h, [hl]                                    ; $657a: $66
    ld l, [hl]                                    ; $657b: $6e
    ld [hl], $24                                  ; $657c: $36 $24
    db $f4                                        ; $657e: $f4
    ld b, b                                       ; $657f: $40
    db $10                                        ; $6580: $10
    add e                                         ; $6581: $83
    ld hl, sp+$41                                 ; $6582: $f8 $41
    ld a, $63                                     ; $6584: $3e $63
    ld [bc], a                                    ; $6586: $02
    ld [bc], a                                    ; $6587: $02
    cpl                                           ; $6588: $2f

jr_080_6589:
    rrca                                          ; $6589: $0f
    ld [bc], a                                    ; $658a: $02
    ld [bc], a                                    ; $658b: $02
    ld l, a                                       ; $658c: $6f
    ld c, a                                       ; $658d: $4f
    adc h                                         ; $658e: $8c
    adc h                                         ; $658f: $8c
    adc e                                         ; $6590: $8b
    ld a, [bc]                                    ; $6591: $0a
    adc h                                         ; $6592: $8c
    adc h                                         ; $6593: $8c
    adc e                                         ; $6594: $8b
    ld [bc], a                                    ; $6595: $02
    ld h, $28                                     ; $6596: $26 $28
    inc l                                         ; $6598: $2c
    dec h                                         ; $6599: $25
    inc hl                                        ; $659a: $23
    dec [hl]                                      ; $659b: $35
    inc h                                         ; $659c: $24
    ld [hl+], a                                   ; $659d: $22
    adc d                                         ; $659e: $8a

jr_080_659f:
    adc e                                         ; $659f: $8b
    ld d, e                                       ; $65a0: $53
    ld l, a                                       ; $65a1: $6f
    ld l, e                                       ; $65a2: $6b
    ld [hl], l                                    ; $65a3: $75
    ld [hl], c                                    ; $65a4: $71
    ld l, e                                       ; $65a5: $6b
    ld c, a                                       ; $65a6: $4f
    rrca                                          ; $65a7: $0f
    rrca                                          ; $65a8: $0f
    rrca                                          ; $65a9: $0f
    ld c, a                                       ; $65aa: $4f
    ld c, a                                       ; $65ab: $4f
    ld c, a                                       ; $65ac: $4f
    ld c, a                                       ; $65ad: $4f
    ld a, [bc]                                    ; $65ae: $0a
    dec c                                         ; $65af: $0d
    dec b                                         ; $65b0: $05
    dec b                                         ; $65b1: $05
    ld [bc], a                                    ; $65b2: $02
    ld [bc], a                                    ; $65b3: $02
    ld [bc], a                                    ; $65b4: $02
    ld [bc], a                                    ; $65b5: $02
    add hl, hl                                    ; $65b6: $29
    jr z, jr_080_65e5                             ; $65b7: $28 $2c

    ld h, $35                                     ; $65b9: $26 $35
    inc h                                         ; $65bb: $24
    ld [hl+], a                                   ; $65bc: $22
    inc hl                                        ; $65bd: $23
    ld b, l                                       ; $65be: $45
    adc d                                         ; $65bf: $8a
    adc e                                         ; $65c0: $8b
    ld b, l                                       ; $65c1: $45
    db $ec                                        ; $65c2: $ec
    db $ed                                        ; $65c3: $ed
    ld l, e                                       ; $65c4: $6b
    ld [hl], l                                    ; $65c5: $75
    rrca                                          ; $65c6: $0f
    rrca                                          ; $65c7: $0f
    rrca                                          ; $65c8: $0f
    ld c, a                                       ; $65c9: $4f
    ld c, a                                       ; $65ca: $4f
    ld c, a                                       ; $65cb: $4f
    ld c, a                                       ; $65cc: $4f
    ld c, a                                       ; $65cd: $4f
    dec b                                         ; $65ce: $05
    dec c                                         ; $65cf: $0d
    dec c                                         ; $65d0: $0d
    ld [bc], a                                    ; $65d1: $02
    ld a, [bc]                                    ; $65d2: $0a
    ld a, [bc]                                    ; $65d3: $0a
    dec b                                         ; $65d4: $05
    dec b                                         ; $65d5: $05
    add hl, hl                                    ; $65d6: $29
    jr z, jr_080_6605                             ; $65d7: $28 $2c

    dec h                                         ; $65d9: $25
    inc h                                         ; $65da: $24
    ld [hl+], a                                   ; $65db: $22
    dec [hl]                                      ; $65dc: $35
    inc h                                         ; $65dd: $24
    ld d, e                                       ; $65de: $53
    add e                                         ; $65df: $83
    adc d                                         ; $65e0: $8a
    adc e                                         ; $65e1: $8b
    ld [hl], d                                    ; $65e2: $72
    db $ec                                        ; $65e3: $ec
    ld [hl], l                                    ; $65e4: $75

jr_080_65e5:
    ld h, e                                       ; $65e5: $63
    rrca                                          ; $65e6: $0f
    rrca                                          ; $65e7: $0f
    rrca                                          ; $65e8: $0f
    rrca                                          ; $65e9: $0f
    ld c, a                                       ; $65ea: $4f
    ld c, a                                       ; $65eb: $4f
    ld c, a                                       ; $65ec: $4f
    ld c, a                                       ; $65ed: $4f
    ld [bc], a                                    ; $65ee: $02
    ld a, [bc]                                    ; $65ef: $0a
    ld a, [bc]                                    ; $65f0: $0a
    ld a, [bc]                                    ; $65f1: $0a
    dec b                                         ; $65f2: $05
    ld a, [bc]                                    ; $65f3: $0a
    ld [bc], a                                    ; $65f4: $02
    dec b                                         ; $65f5: $05
    pop de                                        ; $65f6: $d1
    ld b, d                                       ; $65f7: $42
    ld b, e                                       ; $65f8: $43
    di                                            ; $65f9: $f3
    pop de                                        ; $65fa: $d1
    pop de                                        ; $65fb: $d1
    ld b, h                                       ; $65fc: $44
    rst $30                                       ; $65fd: $f7
    pop de                                        ; $65fe: $d1
    pop de                                        ; $65ff: $d1
    pop de                                        ; $6600: $d1
    pop de                                        ; $6601: $d1
    pop de                                        ; $6602: $d1
    pop de                                        ; $6603: $d1
    pop de                                        ; $6604: $d1

jr_080_6605:
    pop de                                        ; $6605: $d1
    add e                                         ; $6606: $83
    adc h                                         ; $6607: $8c
    adc h                                         ; $6608: $8c
    adc e                                         ; $6609: $8b
    add e                                         ; $660a: $83
    add e                                         ; $660b: $83
    adc e                                         ; $660c: $8b
    adc h                                         ; $660d: $8c
    add e                                         ; $660e: $83
    add e                                         ; $660f: $83
    add e                                         ; $6610: $83
    add e                                         ; $6611: $83
    add e                                         ; $6612: $83
    add e                                         ; $6613: $83
    add e                                         ; $6614: $83
    add e                                         ; $6615: $83
    db $f4                                        ; $6616: $f4
    ld sp, hl                                     ; $6617: $f9
    ld a, [$f8fb]                                 ; $6618: $fa $fb $f8
    db $fd                                        ; $661b: $fd
    cp $ff                                        ; $661c: $fe $ff
    pop de                                        ; $661e: $d1
    pop de                                        ; $661f: $d1
    pop de                                        ; $6620: $d1
    pop de                                        ; $6621: $d1
    pop de                                        ; $6622: $d1
    pop de                                        ; $6623: $d1
    pop de                                        ; $6624: $d1
    pop de                                        ; $6625: $d1
    adc e                                         ; $6626: $8b
    adc h                                         ; $6627: $8c
    adc h                                         ; $6628: $8c
    adc e                                         ; $6629: $8b
    adc e                                         ; $662a: $8b
    adc e                                         ; $662b: $8b
    adc e                                         ; $662c: $8b
    adc e                                         ; $662d: $8b
    add e                                         ; $662e: $83
    add e                                         ; $662f: $83
    add e                                         ; $6630: $83
    add e                                         ; $6631: $83
    add e                                         ; $6632: $83
    add e                                         ; $6633: $83
    add e                                         ; $6634: $83
    add e                                         ; $6635: $83
    db $fc                                        ; $6636: $fc
    ld bc, $0302                                  ; $6637: $01 $02 $03
    nop                                           ; $663a: $00
    inc b                                         ; $663b: $04
    dec b                                         ; $663c: $05
    ld b, $d1                                     ; $663d: $06 $d1
    pop de                                        ; $663f: $d1
    pop de                                        ; $6640: $d1
    pop de                                        ; $6641: $d1
    pop de                                        ; $6642: $d1
    pop de                                        ; $6643: $d1
    pop de                                        ; $6644: $d1
    pop de                                        ; $6645: $d1
    adc e                                         ; $6646: $8b
    adc h                                         ; $6647: $8c
    adc h                                         ; $6648: $8c
    adc e                                         ; $6649: $8b
    adc e                                         ; $664a: $8b
    adc h                                         ; $664b: $8c
    adc e                                         ; $664c: $8b
    adc e                                         ; $664d: $8b
    add e                                         ; $664e: $83
    add e                                         ; $664f: $83
    add e                                         ; $6650: $83
    add e                                         ; $6651: $83
    add e                                         ; $6652: $83
    add e                                         ; $6653: $83
    add e                                         ; $6654: $83
    add e                                         ; $6655: $83
    ld a, [c]                                     ; $6656: $f2
    di                                            ; $6657: $f3
    db $f4                                        ; $6658: $f4
    ld sp, hl                                     ; $6659: $f9
    or $f7                                        ; $665a: $f6 $f7
    ld hl, sp-$03                                 ; $665c: $f8 $fd
    pop de                                        ; $665e: $d1
    pop de                                        ; $665f: $d1
    pop de                                        ; $6660: $d1
    pop de                                        ; $6661: $d1
    pop de                                        ; $6662: $d1
    pop de                                        ; $6663: $d1
    pop de                                        ; $6664: $d1
    pop de                                        ; $6665: $d1
    adc e                                         ; $6666: $8b
    adc e                                         ; $6667: $8b
    adc e                                         ; $6668: $8b
    adc h                                         ; $6669: $8c
    adc e                                         ; $666a: $8b
    adc e                                         ; $666b: $8b
    adc e                                         ; $666c: $8b
    adc h                                         ; $666d: $8c
    add e                                         ; $666e: $83
    add e                                         ; $666f: $83
    add e                                         ; $6670: $83
    add e                                         ; $6671: $83
    add e                                         ; $6672: $83
    add e                                         ; $6673: $83
    add e                                         ; $6674: $83
    add e                                         ; $6675: $83
    ld hl, $2925                                  ; $6676: $21 $25 $29
    daa                                           ; $6679: $27
    ld a, [hl+]                                   ; $667a: $2a
    dec l                                         ; $667b: $2d
    inc l                                         ; $667c: $2c
    dec h                                         ; $667d: $25
    dec hl                                        ; $667e: $2b
    ld l, $21                                     ; $667f: $2e $21
    jr z, jr_080_66a4                             ; $6681: $28 $21

    dec h                                         ; $6683: $25
    add hl, hl                                    ; $6684: $29
    daa                                           ; $6685: $27
    rrca                                          ; $6686: $0f
    rrca                                          ; $6687: $0f
    rrca                                          ; $6688: $0f
    rrca                                          ; $6689: $0f
    rrca                                          ; $668a: $0f
    rrca                                          ; $668b: $0f
    rrca                                          ; $668c: $0f
    rrca                                          ; $668d: $0f
    rrca                                          ; $668e: $0f
    rrca                                          ; $668f: $0f
    rrca                                          ; $6690: $0f
    rrca                                          ; $6691: $0f
    rrca                                          ; $6692: $0f
    rrca                                          ; $6693: $0f
    rrca                                          ; $6694: $0f
    rrca                                          ; $6695: $0f
    cpl                                           ; $6696: $2f
    ldh a, [$6c]                                  ; $6697: $f0 $6c
    ld h, d                                       ; $6699: $62
    jr c, jr_080_66ff                             ; $669a: $38 $63

    ld l, a                                       ; $669c: $6f
    ld [hl], e                                    ; $669d: $73
    add hl, sp                                    ; $669e: $39
    ld h, [hl]                                    ; $669f: $66
    ld [hl], d                                    ; $66a0: $72
    ld [hl], b                                    ; $66a1: $70
    cpl                                           ; $66a2: $2f
    ld d, e                                       ; $66a3: $53

jr_080_66a4:
    adc h                                         ; $66a4: $8c
    ld l, l                                       ; $66a5: $6d
    rrca                                          ; $66a6: $0f
    dec c                                         ; $66a7: $0d
    ld [bc], a                                    ; $66a8: $02
    db $e3                                        ; $66a9: $e3
    rrca                                          ; $66aa: $0f
    dec b                                         ; $66ab: $05
    ld [bc], a                                    ; $66ac: $02
    call nz, Call_000_050f                        ; $66ad: $c4 $0f $05
    dec b                                         ; $66b0: $05
    call nz, $020f                                ; $66b1: $c4 $0f $02
    ld a, [bc]                                    ; $66b4: $0a
    db $e3                                        ; $66b5: $e3
    ld h, c                                       ; $66b6: $61
    pop de                                        ; $66b7: $d1
    pop de                                        ; $66b8: $d1
    pop de                                        ; $66b9: $d1
    ld a, b                                       ; $66ba: $78
    pop de                                        ; $66bb: $d1
    pop de                                        ; $66bc: $d1
    pop de                                        ; $66bd: $d1
    ld [hl], a                                    ; $66be: $77
    pop de                                        ; $66bf: $d1
    pop de                                        ; $66c0: $d1
    pop de                                        ; $66c1: $d1
    halt                                          ; $66c2: $76
    pop de                                        ; $66c3: $d1
    pop de                                        ; $66c4: $d1
    pop de                                        ; $66c5: $d1
    db $e4                                        ; $66c6: $e4
    add e                                         ; $66c7: $83
    add e                                         ; $66c8: $83
    inc bc                                        ; $66c9: $03
    jp $8383                                      ; $66ca: $c3 $83 $83


    inc bc                                        ; $66cd: $03
    jp $8383                                      ; $66ce: $c3 $83 $83


    inc bc                                        ; $66d1: $03
    call nz, $8383                                ; $66d2: $c4 $83 $83
    inc bc                                        ; $66d5: $03
    add hl, hl                                    ; $66d6: $29
    jr z, jr_080_66ff                             ; $66d7: $28 $26

    dec h                                         ; $66d9: $25
    ld [hl+], a                                   ; $66da: $22
    dec [hl]                                      ; $66db: $35
    inc hl                                        ; $66dc: $23
    ld [hl+], a                                   ; $66dd: $22
    ld d, h                                       ; $66de: $54
    ld b, l                                       ; $66df: $45
    add e                                         ; $66e0: $83
    adc d                                         ; $66e1: $8a
    ld l, e                                       ; $66e2: $6b
    ld [hl], l                                    ; $66e3: $75
    db $ec                                        ; $66e4: $ec
    ld l, e                                       ; $66e5: $6b
    rrca                                          ; $66e6: $0f
    rrca                                          ; $66e7: $0f
    ld c, a                                       ; $66e8: $4f
    rrca                                          ; $66e9: $0f
    ld c, a                                       ; $66ea: $4f
    ld c, a                                       ; $66eb: $4f
    ld c, a                                       ; $66ec: $4f
    ld c, a                                       ; $66ed: $4f
    dec b                                         ; $66ee: $05
    dec b                                         ; $66ef: $05
    dec c                                         ; $66f0: $0d
    ld a, [bc]                                    ; $66f1: $0a
    ld [bc], a                                    ; $66f2: $02
    ld [bc], a                                    ; $66f3: $02
    ld a, [bc]                                    ; $66f4: $0a
    ld [bc], a                                    ; $66f5: $02
    jr c, jr_080_6755                             ; $66f6: $38 $5d

    ld b, [hl]                                    ; $66f8: $46
    ld a, d                                       ; $66f9: $7a
    ld [hl], $66                                  ; $66fa: $36 $66
    ld l, [hl]                                    ; $66fc: $6e
    ld b, l                                       ; $66fd: $45
    ld b, l                                       ; $66fe: $45

jr_080_66ff:
    add d                                         ; $66ff: $82
    ld b, [hl]                                    ; $6700: $46
    ld b, a                                       ; $6701: $47
    ld [hl], l                                    ; $6702: $75
    ld h, e                                       ; $6703: $63
    ld c, b                                       ; $6704: $48
    ld c, c                                       ; $6705: $49
    rrca                                          ; $6706: $0f
    ld [bc], a                                    ; $6707: $02
    ld [bc], a                                    ; $6708: $02
    db $e3                                        ; $6709: $e3
    ld c, a                                       ; $670a: $4f
    ld [bc], a                                    ; $670b: $02
    ld [bc], a                                    ; $670c: $02
    adc h                                         ; $670d: $8c
    ld [bc], a                                    ; $670e: $02
    ld a, [bc]                                    ; $670f: $0a
    adc e                                         ; $6710: $8b
    adc h                                         ; $6711: $8c
    ld [bc], a                                    ; $6712: $02
    ld [bc], a                                    ; $6713: $02
    adc e                                         ; $6714: $8b
    adc h                                         ; $6715: $8c
    ld a, c                                       ; $6716: $79
    pop de                                        ; $6717: $d1
    pop de                                        ; $6718: $d1
    pop de                                        ; $6719: $d1
    ld c, d                                       ; $671a: $4a
    pop de                                        ; $671b: $d1
    pop de                                        ; $671c: $d1
    pop de                                        ; $671d: $d1
    ld c, e                                       ; $671e: $4b
    pop de                                        ; $671f: $d1
    pop de                                        ; $6720: $d1
    pop de                                        ; $6721: $d1
    ld c, h                                       ; $6722: $4c
    pop de                                        ; $6723: $d1
    pop de                                        ; $6724: $d1
    pop de                                        ; $6725: $d1
    db $e3                                        ; $6726: $e3
    add e                                         ; $6727: $83
    add e                                         ; $6728: $83
    inc bc                                        ; $6729: $03
    adc e                                         ; $672a: $8b
    add e                                         ; $672b: $83
    add e                                         ; $672c: $83
    inc bc                                        ; $672d: $03
    adc e                                         ; $672e: $8b
    add e                                         ; $672f: $83
    add e                                         ; $6730: $83
    inc bc                                        ; $6731: $03
    adc e                                         ; $6732: $8b
    add e                                         ; $6733: $83
    add e                                         ; $6734: $83
    inc bc                                        ; $6735: $03
    ld a, [$fcfb]                                 ; $6736: $fa $fb $fc
    ld bc, $fffe                                  ; $6739: $01 $fe $ff
    nop                                           ; $673c: $00
    inc b                                         ; $673d: $04
    pop de                                        ; $673e: $d1
    pop de                                        ; $673f: $d1
    pop de                                        ; $6740: $d1
    pop de                                        ; $6741: $d1
    pop de                                        ; $6742: $d1
    pop de                                        ; $6743: $d1
    pop de                                        ; $6744: $d1
    pop de                                        ; $6745: $d1
    adc e                                         ; $6746: $8b
    adc e                                         ; $6747: $8b
    adc e                                         ; $6748: $8b
    adc e                                         ; $6749: $8b
    adc h                                         ; $674a: $8c
    adc h                                         ; $674b: $8c
    adc e                                         ; $674c: $8b
    adc h                                         ; $674d: $8c
    add e                                         ; $674e: $83
    add e                                         ; $674f: $83
    add e                                         ; $6750: $83
    add e                                         ; $6751: $83
    add e                                         ; $6752: $83
    add e                                         ; $6753: $83
    add e                                         ; $6754: $83

jr_080_6755:
    add e                                         ; $6755: $83
    ld [bc], a                                    ; $6756: $02
    inc bc                                        ; $6757: $03
    ld c, l                                       ; $6758: $4d
    ld c, [hl]                                    ; $6759: $4e
    dec b                                         ; $675a: $05
    ld c, a                                       ; $675b: $4f
    ld d, b                                       ; $675c: $50
    pop de                                        ; $675d: $d1
    pop de                                        ; $675e: $d1
    pop de                                        ; $675f: $d1
    pop de                                        ; $6760: $d1
    pop de                                        ; $6761: $d1
    pop de                                        ; $6762: $d1
    pop de                                        ; $6763: $d1
    pop de                                        ; $6764: $d1
    pop de                                        ; $6765: $d1
    adc h                                         ; $6766: $8c
    adc e                                         ; $6767: $8b
    adc h                                         ; $6768: $8c
    adc e                                         ; $6769: $8b
    adc h                                         ; $676a: $8c
    adc e                                         ; $676b: $8b
    adc e                                         ; $676c: $8b
    add e                                         ; $676d: $83
    add e                                         ; $676e: $83
    add e                                         ; $676f: $83
    add e                                         ; $6770: $83
    add e                                         ; $6771: $83
    add e                                         ; $6772: $83
    add e                                         ; $6773: $83
    add e                                         ; $6774: $83
    add e                                         ; $6775: $83
    add hl, bc                                    ; $6776: $09
    nop                                           ; $6777: $00
    ld [de], a                                    ; $6778: $12
    nop                                           ; $6779: $00
    ret nz                                        ; $677a: $c0

    ld de, $d1d1                                  ; $677b: $11 $d1 $d1
    pop de                                        ; $677e: $d1
    jp nc, $d1d1                                  ; $677f: $d2 $d1 $d1

    pop de                                        ; $6782: $d1
    jp nc, $d1d1                                  ; $6783: $d2 $d1 $d1

    pop de                                        ; $6786: $d1
    jp nc, $d1d1                                  ; $6787: $d2 $d1 $d1

    pop de                                        ; $678a: $d1
    jp nc, $8080                                  ; $678b: $d2 $80 $80

    add b                                         ; $678e: $80
    add b                                         ; $678f: $80
    add b                                         ; $6790: $80
    add b                                         ; $6791: $80
    add b                                         ; $6792: $80
    add b                                         ; $6793: $80
    add b                                         ; $6794: $80
    add b                                         ; $6795: $80
    add b                                         ; $6796: $80
    add b                                         ; $6797: $80
    add b                                         ; $6798: $80
    add b                                         ; $6799: $80
    add b                                         ; $679a: $80
    add b                                         ; $679b: $80
    db $d3                                        ; $679c: $d3
    call nc, $d6d5                                ; $679d: $d4 $d5 $d6
    rst $10                                       ; $67a0: $d7
    ret c                                         ; $67a1: $d8

    reti                                          ; $67a2: $d9


    jp c, $dcdb                                   ; $67a3: $da $db $dc

    db $dd                                        ; $67a6: $dd
    sbc $df                                       ; $67a7: $de $df
    ldh [$e1], a                                  ; $67a9: $e0 $e1
    ld [c], a                                     ; $67ab: $e2
    ld [bc], a                                    ; $67ac: $02
    ld [bc], a                                    ; $67ad: $02
    ld [bc], a                                    ; $67ae: $02
    ld [bc], a                                    ; $67af: $02
    ld [bc], a                                    ; $67b0: $02
    ld [bc], a                                    ; $67b1: $02
    ld [bc], a                                    ; $67b2: $02
    ld [bc], a                                    ; $67b3: $02
    ld [bc], a                                    ; $67b4: $02
    ld [bc], a                                    ; $67b5: $02
    ld [bc], a                                    ; $67b6: $02
    ld [bc], a                                    ; $67b7: $02
    ld [bc], a                                    ; $67b8: $02
    ld [bc], a                                    ; $67b9: $02
    ld [bc], a                                    ; $67ba: $02
    ld [bc], a                                    ; $67bb: $02
    db $e3                                        ; $67bc: $e3
    db $e4                                        ; $67bd: $e4
    db $d3                                        ; $67be: $d3
    call nc, $e4e5                                ; $67bf: $d4 $e5 $e4
    rst $10                                       ; $67c2: $d7
    ret c                                         ; $67c3: $d8

    and $e4                                       ; $67c4: $e6 $e4
    db $db                                        ; $67c6: $db
    call c, $e4e7                                 ; $67c7: $dc $e7 $e4
    add sp, -$17                                  ; $67ca: $e8 $e9
    ld [bc], a                                    ; $67cc: $02
    ld bc, $0202                                  ; $67cd: $01 $02 $02
    ld [bc], a                                    ; $67d0: $02

Call_080_67d1:
    ld bc, $0202                                  ; $67d1: $01 $02 $02
    ld [bc], a                                    ; $67d4: $02
    ld bc, $0202                                  ; $67d5: $01 $02 $02
    ld [bc], a                                    ; $67d8: $02
    ld bc, $0202                                  ; $67d9: $01 $02 $02
    push de                                       ; $67dc: $d5
    sub $e3                                       ; $67dd: $d6 $e3
    db $e4                                        ; $67df: $e4
    reti                                          ; $67e0: $d9


    jp c, $e4e5                                   ; $67e1: $da $e5 $e4

    db $dd                                        ; $67e4: $dd
    sbc $e6                                       ; $67e5: $de $e6
    db $e4                                        ; $67e7: $e4
    pop hl                                        ; $67e8: $e1
    ld [c], a                                     ; $67e9: $e2
    rst $20                                       ; $67ea: $e7
    db $e4                                        ; $67eb: $e4
    ld [bc], a                                    ; $67ec: $02
    ld [bc], a                                    ; $67ed: $02
    ld [bc], a                                    ; $67ee: $02
    ld bc, $0202                                  ; $67ef: $01 $02 $02
    ld [bc], a                                    ; $67f2: $02
    ld bc, $0202                                  ; $67f3: $01 $02 $02
    ld [bc], a                                    ; $67f6: $02
    ld bc, $0202                                  ; $67f7: $01 $02 $02
    ld [bc], a                                    ; $67fa: $02
    ld bc, $ebea                                  ; $67fb: $01 $ea $eb
    db $ec                                        ; $67fe: $ec
    db $ed                                        ; $67ff: $ed
    xor $ef                                       ; $6800: $ee $ef
    ldh a, [$f1]                                  ; $6802: $f0 $f1
    ld a, [c]                                     ; $6804: $f2
    di                                            ; $6805: $f3
    db $f4                                        ; $6806: $f4
    push af                                       ; $6807: $f5
    or $f7                                        ; $6808: $f6 $f7
    ld hl, sp-$07                                 ; $680a: $f8 $f9
    ld [bc], a                                    ; $680c: $02
    ld [bc], a                                    ; $680d: $02
    ld [bc], a                                    ; $680e: $02
    ld [bc], a                                    ; $680f: $02
    rlca                                          ; $6810: $07
    rlca                                          ; $6811: $07
    rlca                                          ; $6812: $07
    rlca                                          ; $6813: $07
    rlca                                          ; $6814: $07
    add [hl]                                      ; $6815: $86
    add [hl]                                      ; $6816: $86
    ld [bc], a                                    ; $6817: $02
    rlca                                          ; $6818: $07
    add [hl]                                      ; $6819: $86
    add [hl]                                      ; $681a: $86
    ld [bc], a                                    ; $681b: $02
    ld a, [$fcfb]                                 ; $681c: $fa $fb $fc
    db $fd                                        ; $681f: $fd
    xor $ef                                       ; $6820: $ee $ef
    ldh a, [$fe]                                  ; $6822: $f0 $fe
    ld a, [c]                                     ; $6824: $f2
    rst $38                                       ; $6825: $ff
    nop                                           ; $6826: $00
    pop af                                        ; $6827: $f1
    or $01                                        ; $6828: $f6 $01
    ld [bc], a                                    ; $682a: $02
    inc bc                                        ; $682b: $03
    ld [bc], a                                    ; $682c: $02
    ld bc, $0202                                  ; $682d: $01 $02 $02
    rlca                                          ; $6830: $07
    rlca                                          ; $6831: $07
    rlca                                          ; $6832: $07
    rlca                                          ; $6833: $07
    ld [bc], a                                    ; $6834: $02
    inc bc                                        ; $6835: $03
    dec b                                         ; $6836: $05
    ld [bc], a                                    ; $6837: $02
    ld [bc], a                                    ; $6838: $02
    dec b                                         ; $6839: $05
    ld [bc], a                                    ; $683a: $02
    inc bc                                        ; $683b: $03
    db $ec                                        ; $683c: $ec
    db $ed                                        ; $683d: $ed
    ld a, [$04fb]                                 ; $683e: $fa $fb $04
    dec b                                         ; $6841: $05
    ld b, $fe                                     ; $6842: $06 $fe
    xor $ef                                       ; $6844: $ee $ef
    ldh a, [$f1]                                  ; $6846: $f0 $f1
    ld a, [c]                                     ; $6848: $f2
    rst $38                                       ; $6849: $ff
    nop                                           ; $684a: $00
    inc bc                                        ; $684b: $03
    ld [bc], a                                    ; $684c: $02
    ld [bc], a                                    ; $684d: $02
    ld [bc], a                                    ; $684e: $02
    ld bc, $0707                                  ; $684f: $01 $07 $07
    rlca                                          ; $6852: $07
    rlca                                          ; $6853: $07
    ld [bc], a                                    ; $6854: $02
    dec b                                         ; $6855: $05
    ld [bc], a                                    ; $6856: $02
    inc bc                                        ; $6857: $03
    inc bc                                        ; $6858: $03
    ld [bc], a                                    ; $6859: $02
    ld [bc], a                                    ; $685a: $02
    ld [bc], a                                    ; $685b: $02
    rlca                                          ; $685c: $07
    ld [$0a09], sp                                ; $685d: $08 $09 $0a
    dec bc                                        ; $6860: $0b
    inc c                                         ; $6861: $0c
    dec c                                         ; $6862: $0d
    ld c, $04                                     ; $6863: $0e $04
    rrca                                          ; $6865: $0f
    db $10                                        ; $6866: $10
    cp $ee                                        ; $6867: $fe $ee
    rst $28                                       ; $6869: $ef
    ldh a, [$f1]                                  ; $686a: $f0 $f1
    rlca                                          ; $686c: $07
    ld b, $06                                     ; $686d: $06 $06
    ld [bc], a                                    ; $686f: $02
    rlca                                          ; $6870: $07
    ld b, $06                                     ; $6871: $06 $06
    ld [bc], a                                    ; $6873: $02
    rlca                                          ; $6874: $07
    ld b, $06                                     ; $6875: $06 $06
    ld [bc], a                                    ; $6877: $02
    rlca                                          ; $6878: $07
    ld [bc], a                                    ; $6879: $02
    ld [bc], a                                    ; $687a: $02
    dec b                                         ; $687b: $05
    rlca                                          ; $687c: $07
    ld de, $1312                                  ; $687d: $11 $12 $13
    dec bc                                        ; $6880: $0b
    inc d                                         ; $6881: $14
    dec d                                         ; $6882: $15
    ld d, $04                                     ; $6883: $16 $04
    dec b                                         ; $6885: $05
    ld b, $fe                                     ; $6886: $06 $fe
    xor $ef                                       ; $6888: $ee $ef
    ldh a, [$f1]                                  ; $688a: $f0 $f1
    inc bc                                        ; $688c: $03
    ld [bc], a                                    ; $688d: $02
    ld [bc], a                                    ; $688e: $02
    ld [bc], a                                    ; $688f: $02
    dec b                                         ; $6890: $05
    ld [bc], a                                    ; $6891: $02
    ld [bc], a                                    ; $6892: $02
    dec b                                         ; $6893: $05
    ld [bc], a                                    ; $6894: $02
    ld [bc], a                                    ; $6895: $02
    inc bc                                        ; $6896: $03
    ld [bc], a                                    ; $6897: $02
    inc bc                                        ; $6898: $03
    ld [bc], a                                    ; $6899: $02
    ld [bc], a                                    ; $689a: $02
    ld [bc], a                                    ; $689b: $02
    or $01                                        ; $689c: $f6 $01
    ld [bc], a                                    ; $689e: $02
    inc de                                        ; $689f: $13
    rla                                           ; $68a0: $17
    jr @+$1b                                      ; $68a1: $18 $19

    ld a, [de]                                    ; $68a3: $1a
    dec de                                        ; $68a4: $1b
    inc e                                         ; $68a5: $1c
    dec e                                         ; $68a6: $1d
    ld e, $1b                                     ; $68a7: $1e $1b
    inc e                                         ; $68a9: $1c
    rra                                           ; $68aa: $1f
    jr nz, jr_080_68af                            ; $68ab: $20 $02

    ld [bc], a                                    ; $68ad: $02
    dec b                                         ; $68ae: $05

jr_080_68af:
    ld [bc], a                                    ; $68af: $02
    ld bc, $0202                                  ; $68b0: $01 $02 $02
    ld [bc], a                                    ; $68b3: $02
    ld bc, $0101                                  ; $68b4: $01 $01 $01
    ld bc, $0101                                  ; $68b7: $01 $01 $01
    ld bc, $f201                                  ; $68ba: $01 $01 $f2
    rst $38                                       ; $68bd: $ff
    nop                                           ; $68be: $00
    inc bc                                        ; $68bf: $03
    or $01                                        ; $68c0: $f6 $01
    ld [bc], a                                    ; $68c2: $02
    inc de                                        ; $68c3: $13
    rlca                                          ; $68c4: $07
    ld de, $2112                                  ; $68c5: $11 $12 $21
    dec bc                                        ; $68c8: $0b
    inc d                                         ; $68c9: $14
    dec d                                         ; $68ca: $15
    ld d, $07                                     ; $68cb: $16 $07
    dec b                                         ; $68cd: $05
    ld [bc], a                                    ; $68ce: $02
    ld [bc], a                                    ; $68cf: $02
    rlca                                          ; $68d0: $07
    ld [bc], a                                    ; $68d1: $02
    inc bc                                        ; $68d2: $03
    ld [bc], a                                    ; $68d3: $02
    rlca                                          ; $68d4: $07
    ld [bc], a                                    ; $68d5: $02
    ld [bc], a                                    ; $68d6: $02
    ld [bc], a                                    ; $68d7: $02
    rlca                                          ; $68d8: $07
    inc bc                                        ; $68d9: $03
    ld [bc], a                                    ; $68da: $02
    ld [bc], a                                    ; $68db: $02
    ld a, [c]                                     ; $68dc: $f2
    rst $38                                       ; $68dd: $ff
    nop                                           ; $68de: $00
    inc bc                                        ; $68df: $03
    or $01                                        ; $68e0: $f6 $01
    ld [bc], a                                    ; $68e2: $02
    inc de                                        ; $68e3: $13
    rlca                                          ; $68e4: $07
    ld de, $2112                                  ; $68e5: $11 $12 $21
    dec bc                                        ; $68e8: $0b
    inc d                                         ; $68e9: $14
    dec d                                         ; $68ea: $15
    ld d, $05                                     ; $68eb: $16 $05
    ld [bc], a                                    ; $68ed: $02
    inc bc                                        ; $68ee: $03
    ld [bc], a                                    ; $68ef: $02
    ld [bc], a                                    ; $68f0: $02
    dec b                                         ; $68f1: $05
    ld [bc], a                                    ; $68f2: $02
    dec b                                         ; $68f3: $05
    inc bc                                        ; $68f4: $03
    ld [bc], a                                    ; $68f5: $02
    inc bc                                        ; $68f6: $03
    ld [bc], a                                    ; $68f7: $02
    inc bc                                        ; $68f8: $03
    ld [bc], a                                    ; $68f9: $02
    ld [bc], a                                    ; $68fa: $02
    ld [bc], a                                    ; $68fb: $02
    dec de                                        ; $68fc: $1b
    inc e                                         ; $68fd: $1c
    ld [hl+], a                                   ; $68fe: $22
    inc hl                                        ; $68ff: $23
    dec de                                        ; $6900: $1b
    inc h                                         ; $6901: $24
    dec h                                         ; $6902: $25
    ld h, $1b                                     ; $6903: $26 $1b
    daa                                           ; $6905: $27
    jr z, jr_080_6931                             ; $6906: $28 $29

    dec de                                        ; $6908: $1b
    ld a, [hl+]                                   ; $6909: $2a
    dec hl                                        ; $690a: $2b
    inc l                                         ; $690b: $2c
    ld bc, $0101                                  ; $690c: $01 $01 $01
    ld bc, $0101                                  ; $690f: $01 $01 $01
    ld bc, $0101                                  ; $6912: $01 $01 $01
    ld bc, $0101                                  ; $6915: $01 $01 $01
    ld bc, $0101                                  ; $6918: $01 $01 $01
    ld bc, $d4d3                                  ; $691b: $01 $d3 $d4
    push de                                       ; $691e: $d5
    sub $d7                                       ; $691f: $d6 $d7
    ret c                                         ; $6921: $d8

    reti                                          ; $6922: $d9


    jp c, $dcdb                                   ; $6923: $da $db $dc

    db $dd                                        ; $6926: $dd
    sbc $e8                                       ; $6927: $de $e8
    jp hl                                         ; $6929: $e9


    pop hl                                        ; $692a: $e1
    ld [c], a                                     ; $692b: $e2
    ld [bc], a                                    ; $692c: $02
    ld [bc], a                                    ; $692d: $02
    ld [bc], a                                    ; $692e: $02
    ld [bc], a                                    ; $692f: $02
    ld [bc], a                                    ; $6930: $02

jr_080_6931:
    ld [bc], a                                    ; $6931: $02
    ld [bc], a                                    ; $6932: $02
    ld [bc], a                                    ; $6933: $02
    ld [bc], a                                    ; $6934: $02
    ld [bc], a                                    ; $6935: $02
    ld [bc], a                                    ; $6936: $02
    ld [bc], a                                    ; $6937: $02
    ld [bc], a                                    ; $6938: $02
    ld [bc], a                                    ; $6939: $02
    ld [bc], a                                    ; $693a: $02
    ld [bc], a                                    ; $693b: $02
    db $fc                                        ; $693c: $fc
    db $fd                                        ; $693d: $fd
    db $ec                                        ; $693e: $ec
    db $ed                                        ; $693f: $ed
    inc b                                         ; $6940: $04
    dec b                                         ; $6941: $05
    ld b, $fe                                     ; $6942: $06 $fe
    xor $ef                                       ; $6944: $ee $ef
    ldh a, [$f1]                                  ; $6946: $f0 $f1
    ld a, [c]                                     ; $6948: $f2
    rst $38                                       ; $6949: $ff
    nop                                           ; $694a: $00
    inc bc                                        ; $694b: $03
    ld [bc], a                                    ; $694c: $02
    ld [bc], a                                    ; $694d: $02
    ld [bc], a                                    ; $694e: $02
    ld [bc], a                                    ; $694f: $02
    rlca                                          ; $6950: $07
    rlca                                          ; $6951: $07
    rlca                                          ; $6952: $07
    rlca                                          ; $6953: $07
    ld [bc], a                                    ; $6954: $02
    dec b                                         ; $6955: $05
    ld [bc], a                                    ; $6956: $02
    ld [bc], a                                    ; $6957: $02
    inc bc                                        ; $6958: $03
    ld [bc], a                                    ; $6959: $02
    ld [bc], a                                    ; $695a: $02
    inc bc                                        ; $695b: $03
    ld a, [$fcfb]                                 ; $695c: $fa $fb $fc
    db $fd                                        ; $695f: $fd
    inc b                                         ; $6960: $04
    dec b                                         ; $6961: $05
    ld b, $fe                                     ; $6962: $06 $fe
    xor $ef                                       ; $6964: $ee $ef
    ldh a, [$f1]                                  ; $6966: $f0 $f1
    ld a, [c]                                     ; $6968: $f2
    rst $38                                       ; $6969: $ff
    nop                                           ; $696a: $00
    inc bc                                        ; $696b: $03
    ld [bc], a                                    ; $696c: $02
    ld bc, $0202                                  ; $696d: $01 $02 $02
    rlca                                          ; $6970: $07
    rlca                                          ; $6971: $07
    rlca                                          ; $6972: $07
    rlca                                          ; $6973: $07
    dec b                                         ; $6974: $05
    ld [bc], a                                    ; $6975: $02
    dec b                                         ; $6976: $05
    inc bc                                        ; $6977: $03
    ld [bc], a                                    ; $6978: $02
    dec b                                         ; $6979: $05
    dec b                                         ; $697a: $05
    ld [bc], a                                    ; $697b: $02
    db $ec                                        ; $697c: $ec
    db $ed                                        ; $697d: $ed
    ld a, [$04fb]                                 ; $697e: $fa $fb $04
    dec b                                         ; $6981: $05
    ld b, $f1                                     ; $6982: $06 $f1
    xor $ef                                       ; $6984: $ee $ef
    ldh a, [$03]                                  ; $6986: $f0 $03
    ld a, [c]                                     ; $6988: $f2
    rst $38                                       ; $6989: $ff
    nop                                           ; $698a: $00
    inc de                                        ; $698b: $13
    ld [bc], a                                    ; $698c: $02
    ld [bc], a                                    ; $698d: $02
    ld [bc], a                                    ; $698e: $02
    ld bc, $0707                                  ; $698f: $01 $07 $07
    rlca                                          ; $6992: $07
    rlca                                          ; $6993: $07
    ld [bc], a                                    ; $6994: $02
    ld [bc], a                                    ; $6995: $02
    dec b                                         ; $6996: $05
    ld [bc], a                                    ; $6997: $02
    ld [bc], a                                    ; $6998: $02
    ld [bc], a                                    ; $6999: $02
    inc bc                                        ; $699a: $03
    ld [bc], a                                    ; $699b: $02
    db $fc                                        ; $699c: $fc
    db $fd                                        ; $699d: $fd
    db $ec                                        ; $699e: $ec
    db $ed                                        ; $699f: $ed
    xor $ef                                       ; $69a0: $ee $ef
    ld b, $f1                                     ; $69a2: $06 $f1
    dec l                                         ; $69a4: $2d
    ld l, $2f                                     ; $69a5: $2e $2f
    inc bc                                        ; $69a7: $03
    or $30                                        ; $69a8: $f6 $30
    ld sp, $0213                                  ; $69aa: $31 $13 $02
    ld [bc], a                                    ; $69ad: $02
    ld [bc], a                                    ; $69ae: $02
    ld [bc], a                                    ; $69af: $02
    rlca                                          ; $69b0: $07
    rlca                                          ; $69b1: $07
    rlca                                          ; $69b2: $07
    rlca                                          ; $69b3: $07
    dec b                                         ; $69b4: $05
    add [hl]                                      ; $69b5: $86
    add [hl]                                      ; $69b6: $86
    rlca                                          ; $69b7: $07
    ld [bc], a                                    ; $69b8: $02
    add [hl]                                      ; $69b9: $86
    add [hl]                                      ; $69ba: $86
    rlca                                          ; $69bb: $07
    or $01                                        ; $69bc: $f6 $01
    ld [bc], a                                    ; $69be: $02
    inc de                                        ; $69bf: $13
    ld [hl-], a                                   ; $69c0: $32
    inc sp                                        ; $69c1: $33
    inc [hl]                                      ; $69c2: $34
    dec [hl]                                      ; $69c3: $35
    ld [hl], $37                                  ; $69c4: $36 $37
    jr c, @+$1f                                   ; $69c6: $38 $1d

    add hl, sp                                    ; $69c8: $39
    ld [hl+], a                                   ; $69c9: $22
    jr nz, jr_080_6a05                            ; $69ca: $20 $39

    ld [bc], a                                    ; $69cc: $02
    ld [bc], a                                    ; $69cd: $02
    dec b                                         ; $69ce: $05
    ld [bc], a                                    ; $69cf: $02
    ld [bc], a                                    ; $69d0: $02
    ld [bc], a                                    ; $69d1: $02
    ld [bc], a                                    ; $69d2: $02
    ld [bc], a                                    ; $69d3: $02
    ld bc, $0101                                  ; $69d4: $01 $01 $01
    ld bc, $0101                                  ; $69d7: $01 $01 $01
    ld bc, $f601                                  ; $69da: $01 $01 $f6
    ld bc, $1302                                  ; $69dd: $01 $02 $13
    ld a, [hl-]                                   ; $69e0: $3a
    dec sp                                        ; $69e1: $3b
    inc a                                         ; $69e2: $3c
    rla                                           ; $69e3: $17
    ld e, $36                                     ; $69e4: $1e $36
    inc e                                         ; $69e6: $1c
    dec de                                        ; $69e7: $1b
    ld [hl+], a                                   ; $69e8: $22
    inc hl                                        ; $69e9: $23
    inc e                                         ; $69ea: $1c
    dec de                                        ; $69eb: $1b
    ld [bc], a                                    ; $69ec: $02
    dec b                                         ; $69ed: $05
    ld [bc], a                                    ; $69ee: $02
    ld [bc], a                                    ; $69ef: $02
    ld [bc], a                                    ; $69f0: $02
    ld [bc], a                                    ; $69f1: $02
    ld [bc], a                                    ; $69f2: $02
    ld bc, $0101                                  ; $69f3: $01 $01 $01
    ld hl, $0101                                  ; $69f6: $21 $01 $01
    ld bc, $0121                                  ; $69f9: $01 $21 $01
    or $01                                        ; $69fc: $f6 $01
    ld [bc], a                                    ; $69fe: $02
    ld hl, $140b                                  ; $69ff: $21 $0b $14
    dec d                                         ; $6a02: $15
    ld d, $04                                     ; $6a03: $16 $04

jr_080_6a05:
    dec b                                         ; $6a05: $05
    ld b, $fe                                     ; $6a06: $06 $fe
    xor $ef                                       ; $6a08: $ee $ef
    ldh a, [$f1]                                  ; $6a0a: $f0 $f1
    dec b                                         ; $6a0c: $05
    inc bc                                        ; $6a0d: $03
    ld [bc], a                                    ; $6a0e: $02
    ld [bc], a                                    ; $6a0f: $02
    ld [bc], a                                    ; $6a10: $02
    ld [bc], a                                    ; $6a11: $02
    dec b                                         ; $6a12: $05
    ld [bc], a                                    ; $6a13: $02
    dec b                                         ; $6a14: $05
    ld [bc], a                                    ; $6a15: $02
    inc bc                                        ; $6a16: $03
    ld [bc], a                                    ; $6a17: $02
    ld [bc], a                                    ; $6a18: $02
    ld [bc], a                                    ; $6a19: $02
    inc bc                                        ; $6a1a: $03
    ld [bc], a                                    ; $6a1b: $02
    dec a                                         ; $6a1c: $3d
    ld a, $3f                                     ; $6a1d: $3e $3f
    ld hl, $400b                                  ; $6a1f: $21 $0b $40
    ld b, c                                       ; $6a22: $41
    ld d, $04                                     ; $6a23: $16 $04
    ld b, d                                       ; $6a25: $42
    ld b, e                                       ; $6a26: $43
    cp $ee                                        ; $6a27: $fe $ee
    rst $28                                       ; $6a29: $ef
    ldh a, [$f1]                                  ; $6a2a: $f0 $f1
    dec b                                         ; $6a2c: $05
    ld b, $06                                     ; $6a2d: $06 $06
    rlca                                          ; $6a2f: $07
    ld [bc], a                                    ; $6a30: $02
    ld b, $06                                     ; $6a31: $06 $06
    rlca                                          ; $6a33: $07
    dec b                                         ; $6a34: $05
    ld b, $06                                     ; $6a35: $06 $06
    rlca                                          ; $6a37: $07
    inc bc                                        ; $6a38: $03
    ld [bc], a                                    ; $6a39: $02
    ld [bc], a                                    ; $6a3a: $02
    rlca                                          ; $6a3b: $07
    jr nz, @+$3b                                  ; $6a3c: $20 $39

    rra                                           ; $6a3e: $1f
    jr nz, jr_080_6a85                            ; $6a3f: $20 $44

    ld b, l                                       ; $6a41: $45
    ld b, [hl]                                    ; $6a42: $46
    dec h                                         ; $6a43: $25
    ld b, a                                       ; $6a44: $47
    jr z, @+$2b                                   ; $6a45: $28 $29

    jr z, @+$2d                                   ; $6a47: $28 $2b

    inc l                                         ; $6a49: $2c
    dec hl                                        ; $6a4a: $2b
    inc l                                         ; $6a4b: $2c
    ld bc, $0101                                  ; $6a4c: $01 $01 $01
    ld bc, $0101                                  ; $6a4f: $01 $01 $01
    ld bc, $0101                                  ; $6a52: $01 $01 $01
    ld bc, $0101                                  ; $6a55: $01 $01 $01
    ld bc, $0101                                  ; $6a58: $01 $01 $01
    ld bc, $2239                                  ; $6a5b: $01 $39 $22
    inc e                                         ; $6a5e: $1c
    dec de                                        ; $6a5f: $1b
    ld h, $44                                     ; $6a60: $26 $44
    inc h                                         ; $6a62: $24
    dec de                                        ; $6a63: $1b
    add hl, hl                                    ; $6a64: $29
    ld b, a                                       ; $6a65: $47
    daa                                           ; $6a66: $27
    dec de                                        ; $6a67: $1b
    dec hl                                        ; $6a68: $2b
    inc l                                         ; $6a69: $2c
    ld a, [hl+]                                   ; $6a6a: $2a
    dec de                                        ; $6a6b: $1b
    ld bc, $2101                                  ; $6a6c: $01 $01 $21
    ld bc, $0101                                  ; $6a6f: $01 $01 $01
    ld hl, $0101                                  ; $6a72: $21 $01 $01
    ld bc, $0121                                  ; $6a75: $01 $21 $01
    ld bc, $2101                                  ; $6a78: $01 $01 $21
    ld bc, $fff2                                  ; $6a7b: $01 $f2 $ff
    nop                                           ; $6a7e: $00
    inc bc                                        ; $6a7f: $03
    or $01                                        ; $6a80: $f6 $01
    ld [bc], a                                    ; $6a82: $02
    inc de                                        ; $6a83: $13
    rlca                                          ; $6a84: $07

jr_080_6a85:
    ld de, $2112                                  ; $6a85: $11 $12 $21
    dec bc                                        ; $6a88: $0b
    inc d                                         ; $6a89: $14
    dec d                                         ; $6a8a: $15
    ld d, $02                                     ; $6a8b: $16 $02
    dec b                                         ; $6a8d: $05
    ld [bc], a                                    ; $6a8e: $02
    dec b                                         ; $6a8f: $05
    inc bc                                        ; $6a90: $03
    ld [bc], a                                    ; $6a91: $02
    inc bc                                        ; $6a92: $03
    ld [bc], a                                    ; $6a93: $02
    ld [bc], a                                    ; $6a94: $02
    dec b                                         ; $6a95: $05
    inc bc                                        ; $6a96: $03
    ld [bc], a                                    ; $6a97: $02
    dec b                                         ; $6a98: $05
    ld [bc], a                                    ; $6a99: $02
    inc bc                                        ; $6a9a: $03
    ld [bc], a                                    ; $6a9b: $02
    ld a, [c]                                     ; $6a9c: $f2
    rst $38                                       ; $6a9d: $ff
    nop                                           ; $6a9e: $00
    inc bc                                        ; $6a9f: $03
    or $01                                        ; $6aa0: $f6 $01
    ld [bc], a                                    ; $6aa2: $02
    inc de                                        ; $6aa3: $13
    rlca                                          ; $6aa4: $07
    ld de, $2112                                  ; $6aa5: $11 $12 $21
    dec bc                                        ; $6aa8: $0b
    inc d                                         ; $6aa9: $14
    dec d                                         ; $6aaa: $15
    ld d, $02                                     ; $6aab: $16 $02
    dec b                                         ; $6aad: $05
    ld [bc], a                                    ; $6aae: $02
    rlca                                          ; $6aaf: $07
    ld [bc], a                                    ; $6ab0: $02
    ld [bc], a                                    ; $6ab1: $02
    inc bc                                        ; $6ab2: $03
    rlca                                          ; $6ab3: $07
    inc bc                                        ; $6ab4: $03
    dec b                                         ; $6ab5: $05
    ld [bc], a                                    ; $6ab6: $02
    rlca                                          ; $6ab7: $07
    dec b                                         ; $6ab8: $05
    ld [bc], a                                    ; $6ab9: $02
    dec b                                         ; $6aba: $05
    rlca                                          ; $6abb: $07
    jp nc, $d1d1                                  ; $6abc: $d2 $d1 $d1

    pop de                                        ; $6abf: $d1
    jp nc, $d1d1                                  ; $6ac0: $d2 $d1 $d1

    pop de                                        ; $6ac3: $d1
    jp nc, $d1d1                                  ; $6ac4: $d2 $d1 $d1

    pop de                                        ; $6ac7: $d1
    jp nc, $d1d1                                  ; $6ac8: $d2 $d1 $d1

    pop de                                        ; $6acb: $d1
    add b                                         ; $6acc: $80
    add b                                         ; $6acd: $80
    add b                                         ; $6ace: $80
    add b                                         ; $6acf: $80
    add b                                         ; $6ad0: $80

Jump_080_6ad1:
    add b                                         ; $6ad1: $80
    add b                                         ; $6ad2: $80
    add b                                         ; $6ad3: $80
    add b                                         ; $6ad4: $80
    add b                                         ; $6ad5: $80
    add b                                         ; $6ad6: $80
    add b                                         ; $6ad7: $80
    add b                                         ; $6ad8: $80
    add b                                         ; $6ad9: $80
    add b                                         ; $6ada: $80
    add b                                         ; $6adb: $80
    pop de                                        ; $6adc: $d1
    ld c, b                                       ; $6add: $48
    ld c, c                                       ; $6ade: $49
    ld c, d                                       ; $6adf: $4a
    pop de                                        ; $6ae0: $d1
    jp nc, $e4e3                                  ; $6ae1: $d2 $e3 $e4

    pop de                                        ; $6ae4: $d1
    ld c, e                                       ; $6ae5: $4b
    push hl                                       ; $6ae6: $e5
    db $e4                                        ; $6ae7: $e4
    pop de                                        ; $6ae8: $d1
    ld c, e                                       ; $6ae9: $4b
    and $e4                                       ; $6aea: $e6 $e4
    add b                                         ; $6aec: $80
    add b                                         ; $6aed: $80
    add b                                         ; $6aee: $80
    add b                                         ; $6aef: $80
    add b                                         ; $6af0: $80
    add b                                         ; $6af1: $80
    ld [bc], a                                    ; $6af2: $02
    ld bc, $8080                                  ; $6af3: $01 $80 $80
    ld [bc], a                                    ; $6af6: $02
    ld bc, $8080                                  ; $6af7: $01 $80 $80
    ld [bc], a                                    ; $6afa: $02
    ld bc, $0504                                  ; $6afb: $01 $04 $05
    ld b, $fe                                     ; $6afe: $06 $fe
    xor $ef                                       ; $6b00: $ee $ef
    ldh a, [$f1]                                  ; $6b02: $f0 $f1
    ld a, [c]                                     ; $6b04: $f2
    rst $38                                       ; $6b05: $ff
    nop                                           ; $6b06: $00
    inc bc                                        ; $6b07: $03
    or $01                                        ; $6b08: $f6 $01
    ld [bc], a                                    ; $6b0a: $02
    inc de                                        ; $6b0b: $13
    rlca                                          ; $6b0c: $07
    ld [bc], a                                    ; $6b0d: $02
    ld [bc], a                                    ; $6b0e: $02
    dec b                                         ; $6b0f: $05
    rlca                                          ; $6b10: $07
    dec b                                         ; $6b11: $05
    inc bc                                        ; $6b12: $03
    ld [bc], a                                    ; $6b13: $02
    rlca                                          ; $6b14: $07
    ld [bc], a                                    ; $6b15: $02
    ld [bc], a                                    ; $6b16: $02
    ld [bc], a                                    ; $6b17: $02
    rlca                                          ; $6b18: $07
    ld [bc], a                                    ; $6b19: $02
    ld [bc], a                                    ; $6b1a: $02
    dec b                                         ; $6b1b: $05
    inc b                                         ; $6b1c: $04
    dec b                                         ; $6b1d: $05
    ld b, $fe                                     ; $6b1e: $06 $fe
    xor $ef                                       ; $6b20: $ee $ef
    ldh a, [$f1]                                  ; $6b22: $f0 $f1
    ld a, [c]                                     ; $6b24: $f2
    rst $38                                       ; $6b25: $ff
    nop                                           ; $6b26: $00
    inc bc                                        ; $6b27: $03
    or $01                                        ; $6b28: $f6 $01
    ld [bc], a                                    ; $6b2a: $02
    inc de                                        ; $6b2b: $13
    ld [bc], a                                    ; $6b2c: $02
    ld [bc], a                                    ; $6b2d: $02
    dec b                                         ; $6b2e: $05
    ld [bc], a                                    ; $6b2f: $02
    dec b                                         ; $6b30: $05
    inc bc                                        ; $6b31: $03
    ld [bc], a                                    ; $6b32: $02
    inc bc                                        ; $6b33: $03
    ld [bc], a                                    ; $6b34: $02
    ld [bc], a                                    ; $6b35: $02
    ld [bc], a                                    ; $6b36: $02
    ld [bc], a                                    ; $6b37: $02
    ld [bc], a                                    ; $6b38: $02
    inc bc                                        ; $6b39: $03
    ld [bc], a                                    ; $6b3a: $02
    ld [bc], a                                    ; $6b3b: $02
    dec de                                        ; $6b3c: $1b
    pop de                                        ; $6b3d: $d1
    pop de                                        ; $6b3e: $d1
    pop de                                        ; $6b3f: $d1
    ld c, h                                       ; $6b40: $4c
    ld c, l                                       ; $6b41: $4d
    ld c, l                                       ; $6b42: $4d
    ld c, l                                       ; $6b43: $4d
    ld c, [hl]                                    ; $6b44: $4e
    ld c, a                                       ; $6b45: $4f
    ld d, b                                       ; $6b46: $50
    ld c, a                                       ; $6b47: $4f
    or $01                                        ; $6b48: $f6 $01
    ld [bc], a                                    ; $6b4a: $02
    inc de                                        ; $6b4b: $13
    ld bc, $0101                                  ; $6b4c: $01 $01 $01
    ld bc, $0101                                  ; $6b4f: $01 $01 $01
    ld bc, $0101                                  ; $6b52: $01 $01 $01
    ld bc, $0101                                  ; $6b55: $01 $01 $01
    rlca                                          ; $6b58: $07
    rlca                                          ; $6b59: $07
    rlca                                          ; $6b5a: $07
    rlca                                          ; $6b5b: $07
    pop de                                        ; $6b5c: $d1
    ld c, e                                       ; $6b5d: $4b
    rst $20                                       ; $6b5e: $e7
    db $e4                                        ; $6b5f: $e4
    pop de                                        ; $6b60: $d1
    ld c, e                                       ; $6b61: $4b
    ld a, [$51fb]                                 ; $6b62: $fa $fb $51
    ld c, e                                       ; $6b65: $4b
    ld b, $fe                                     ; $6b66: $06 $fe
    ld d, c                                       ; $6b68: $51
    jp nc, $f1f0                                  ; $6b69: $d2 $f0 $f1

    add b                                         ; $6b6c: $80
    add b                                         ; $6b6d: $80
    ld [bc], a                                    ; $6b6e: $02
    ld bc, $8080                                  ; $6b6f: $01 $80 $80
    ld [bc], a                                    ; $6b72: $02
    ld bc, $8080                                  ; $6b73: $01 $80 $80
    rlca                                          ; $6b76: $07
    rlca                                          ; $6b77: $07
    add b                                         ; $6b78: $80
    add b                                         ; $6b79: $80
    rlca                                          ; $6b7a: $07
    ld [bc], a                                    ; $6b7b: $02
    rlca                                          ; $6b7c: $07
    ld de, $2112                                  ; $6b7d: $11 $12 $21
    dec bc                                        ; $6b80: $0b
    inc d                                         ; $6b81: $14
    dec d                                         ; $6b82: $15
    ld d, $04                                     ; $6b83: $16 $04
    dec b                                         ; $6b85: $05
    ld b, $fe                                     ; $6b86: $06 $fe
    xor $ef                                       ; $6b88: $ee $ef
    ldh a, [$f1]                                  ; $6b8a: $f0 $f1
    rlca                                          ; $6b8c: $07
    ld [bc], a                                    ; $6b8d: $02
    inc bc                                        ; $6b8e: $03
    ld [bc], a                                    ; $6b8f: $02
    rlca                                          ; $6b90: $07
    ld [bc], a                                    ; $6b91: $02
    dec b                                         ; $6b92: $05
    ld [bc], a                                    ; $6b93: $02
    rlca                                          ; $6b94: $07
    inc bc                                        ; $6b95: $03
    ld [bc], a                                    ; $6b96: $02
    ld [bc], a                                    ; $6b97: $02
    ld [bc], a                                    ; $6b98: $02
    dec b                                         ; $6b99: $05
    ld [bc], a                                    ; $6b9a: $02
    ld [bc], a                                    ; $6b9b: $02
    rlca                                          ; $6b9c: $07
    ld de, $2112                                  ; $6b9d: $11 $12 $21
    dec bc                                        ; $6ba0: $0b
    inc d                                         ; $6ba1: $14
    dec d                                         ; $6ba2: $15
    ld d, $04                                     ; $6ba3: $16 $04
    dec b                                         ; $6ba5: $05
    ld b, $fe                                     ; $6ba6: $06 $fe
    xor $ef                                       ; $6ba8: $ee $ef
    ldh a, [$f1]                                  ; $6baa: $f0 $f1
    dec b                                         ; $6bac: $05
    ld [bc], a                                    ; $6bad: $02
    ld [bc], a                                    ; $6bae: $02
    dec b                                         ; $6baf: $05
    inc bc                                        ; $6bb0: $03
    dec b                                         ; $6bb1: $05
    ld [bc], a                                    ; $6bb2: $02
    inc bc                                        ; $6bb3: $03
    dec b                                         ; $6bb4: $05
    ld [bc], a                                    ; $6bb5: $02
    dec b                                         ; $6bb6: $05
    ld [bc], a                                    ; $6bb7: $02
    inc bc                                        ; $6bb8: $03
    inc bc                                        ; $6bb9: $03
    ld [bc], a                                    ; $6bba: $02
    ld [bc], a                                    ; $6bbb: $02
    rlca                                          ; $6bbc: $07
    ld de, $5212                                  ; $6bbd: $11 $12 $52
    dec bc                                        ; $6bc0: $0b
    inc d                                         ; $6bc1: $14
    dec d                                         ; $6bc2: $15
    ld d, e                                       ; $6bc3: $53
    inc b                                         ; $6bc4: $04
    dec b                                         ; $6bc5: $05
    ld b, $54                                     ; $6bc6: $06 $54
    xor $ef                                       ; $6bc8: $ee $ef
    ldh a, [$f1]                                  ; $6bca: $f0 $f1
    ld [bc], a                                    ; $6bcc: $02
    ld [bc], a                                    ; $6bcd: $02
    ld [bc], a                                    ; $6bce: $02
    inc b                                         ; $6bcf: $04
    inc bc                                        ; $6bd0: $03
    ld [bc], a                                    ; $6bd1: $02
    dec b                                         ; $6bd2: $05
    inc b                                         ; $6bd3: $04
    inc bc                                        ; $6bd4: $03
    ld [bc], a                                    ; $6bd5: $02
    ld [bc], a                                    ; $6bd6: $02
    inc b                                         ; $6bd7: $04
    inc bc                                        ; $6bd8: $03
    ld [bc], a                                    ; $6bd9: $02
    inc bc                                        ; $6bda: $03
    rlca                                          ; $6bdb: $07
    ld d, c                                       ; $6bdc: $51
    ld d, l                                       ; $6bdd: $55
    ld c, c                                       ; $6bde: $49
    ld d, [hl]                                    ; $6bdf: $56
    pop de                                        ; $6be0: $d1
    pop de                                        ; $6be1: $d1
    pop de                                        ; $6be2: $d1
    jp nc, $d1d1                                  ; $6be3: $d2 $d1 $d1

    pop de                                        ; $6be6: $d1
    jp nc, Jump_080_48d1                          ; $6be7: $d2 $d1 $48

    ld c, c                                       ; $6bea: $49
    ld c, d                                       ; $6beb: $4a
    add b                                         ; $6bec: $80
    add b                                         ; $6bed: $80
    add b                                         ; $6bee: $80
    add b                                         ; $6bef: $80
    add b                                         ; $6bf0: $80
    add b                                         ; $6bf1: $80
    add b                                         ; $6bf2: $80
    add b                                         ; $6bf3: $80
    add b                                         ; $6bf4: $80
    add b                                         ; $6bf5: $80
    add b                                         ; $6bf6: $80
    add b                                         ; $6bf7: $80
    add b                                         ; $6bf8: $80
    add b                                         ; $6bf9: $80
    add b                                         ; $6bfa: $80
    add b                                         ; $6bfb: $80
    ld a, [c]                                     ; $6bfc: $f2
    rst $38                                       ; $6bfd: $ff
    nop                                           ; $6bfe: $00
    inc bc                                        ; $6bff: $03
    or $01                                        ; $6c00: $f6 $01
    ld [bc], a                                    ; $6c02: $02
    inc de                                        ; $6c03: $13
    rlca                                          ; $6c04: $07
    ld de, $2112                                  ; $6c05: $11 $12 $21
    dec bc                                        ; $6c08: $0b
    inc d                                         ; $6c09: $14
    dec d                                         ; $6c0a: $15
    ld d, $03                                     ; $6c0b: $16 $03
    ld [bc], a                                    ; $6c0d: $02
    inc bc                                        ; $6c0e: $03
    ld [bc], a                                    ; $6c0f: $02
    ld [bc], a                                    ; $6c10: $02
    ld [bc], a                                    ; $6c11: $02
    ld [bc], a                                    ; $6c12: $02
    dec b                                         ; $6c13: $05
    rlca                                          ; $6c14: $07
    dec b                                         ; $6c15: $05
    ld [bc], a                                    ; $6c16: $02
    inc bc                                        ; $6c17: $03
    rlca                                          ; $6c18: $07
    ld [bc], a                                    ; $6c19: $02
    inc bc                                        ; $6c1a: $03
    dec b                                         ; $6c1b: $05
    ld a, [c]                                     ; $6c1c: $f2
    rst $38                                       ; $6c1d: $ff
    nop                                           ; $6c1e: $00
    inc bc                                        ; $6c1f: $03
    or $01                                        ; $6c20: $f6 $01
    ld [bc], a                                    ; $6c22: $02
    inc de                                        ; $6c23: $13
    rlca                                          ; $6c24: $07
    ld de, $2112                                  ; $6c25: $11 $12 $21
    dec bc                                        ; $6c28: $0b
    inc d                                         ; $6c29: $14
    dec d                                         ; $6c2a: $15
    ld d, $05                                     ; $6c2b: $16 $05
    ld [bc], a                                    ; $6c2d: $02
    dec b                                         ; $6c2e: $05
    inc bc                                        ; $6c2f: $03
    ld [bc], a                                    ; $6c30: $02
    dec b                                         ; $6c31: $05
    ld [bc], a                                    ; $6c32: $02
    ld [bc], a                                    ; $6c33: $02
    inc bc                                        ; $6c34: $03
    ld [bc], a                                    ; $6c35: $02
    dec b                                         ; $6c36: $05
    ld [bc], a                                    ; $6c37: $02
    dec b                                         ; $6c38: $05
    ld [bc], a                                    ; $6c39: $02
    inc bc                                        ; $6c3a: $03
    ld [bc], a                                    ; $6c3b: $02
    ld a, [c]                                     ; $6c3c: $f2
    rst $38                                       ; $6c3d: $ff
    nop                                           ; $6c3e: $00
    inc bc                                        ; $6c3f: $03
    or $01                                        ; $6c40: $f6 $01
    ld [bc], a                                    ; $6c42: $02
    inc de                                        ; $6c43: $13
    rlca                                          ; $6c44: $07
    ld de, $2112                                  ; $6c45: $11 $12 $21
    dec bc                                        ; $6c48: $0b
    inc d                                         ; $6c49: $14
    dec d                                         ; $6c4a: $15
    ld d, $02                                     ; $6c4b: $16 $02
    dec b                                         ; $6c4d: $05
    inc bc                                        ; $6c4e: $03
    ld [bc], a                                    ; $6c4f: $02
    inc bc                                        ; $6c50: $03
    ld [bc], a                                    ; $6c51: $02
    dec b                                         ; $6c52: $05
    ld [bc], a                                    ; $6c53: $02
    inc bc                                        ; $6c54: $03
    inc bc                                        ; $6c55: $03
    inc bc                                        ; $6c56: $03
    ld [bc], a                                    ; $6c57: $02
    dec b                                         ; $6c58: $05
    dec b                                         ; $6c59: $05
    ld [bc], a                                    ; $6c5a: $02
    ld [bc], a                                    ; $6c5b: $02
    pop de                                        ; $6c5c: $d1
    jp nc, Jump_080_57e3                          ; $6c5d: $d2 $e3 $57

    pop de                                        ; $6c60: $d1
    ld c, e                                       ; $6c61: $4b
    push hl                                       ; $6c62: $e5
    db $e4                                        ; $6c63: $e4
    pop de                                        ; $6c64: $d1
    ld c, e                                       ; $6c65: $4b
    and $e4                                       ; $6c66: $e6 $e4
    pop de                                        ; $6c68: $d1
    ld c, e                                       ; $6c69: $4b
    rst $20                                       ; $6c6a: $e7
    db $e4                                        ; $6c6b: $e4
    add b                                         ; $6c6c: $80
    add b                                         ; $6c6d: $80
    ld [bc], a                                    ; $6c6e: $02
    ld bc, $8080                                  ; $6c6f: $01 $80 $80
    ld [bc], a                                    ; $6c72: $02
    ld bc, $8080                                  ; $6c73: $01 $80 $80
    ld [bc], a                                    ; $6c76: $02
    ld bc, $8080                                  ; $6c77: $01 $80 $80
    ld [bc], a                                    ; $6c7a: $02
    ld bc, $0504                                  ; $6c7b: $01 $04 $05
    ld b, $fe                                     ; $6c7e: $06 $fe
    xor $ef                                       ; $6c80: $ee $ef
    ldh a, [$f1]                                  ; $6c82: $f0 $f1
    ld a, [c]                                     ; $6c84: $f2
    rst $38                                       ; $6c85: $ff
    nop                                           ; $6c86: $00
    inc bc                                        ; $6c87: $03
    or $01                                        ; $6c88: $f6 $01
    ld [bc], a                                    ; $6c8a: $02
    inc de                                        ; $6c8b: $13
    rlca                                          ; $6c8c: $07
    inc bc                                        ; $6c8d: $03
    ld [bc], a                                    ; $6c8e: $02
    ld [bc], a                                    ; $6c8f: $02
    rlca                                          ; $6c90: $07
    ld [bc], a                                    ; $6c91: $02
    ld [bc], a                                    ; $6c92: $02
    dec b                                         ; $6c93: $05
    rlca                                          ; $6c94: $07
    dec b                                         ; $6c95: $05
    ld [bc], a                                    ; $6c96: $02
    inc bc                                        ; $6c97: $03
    rlca                                          ; $6c98: $07
    ld [bc], a                                    ; $6c99: $02
    ld [bc], a                                    ; $6c9a: $02
    ld [bc], a                                    ; $6c9b: $02
    inc b                                         ; $6c9c: $04
    dec b                                         ; $6c9d: $05
    ld b, $fe                                     ; $6c9e: $06 $fe
    xor $ef                                       ; $6ca0: $ee $ef
    ldh a, [$f1]                                  ; $6ca2: $f0 $f1
    ld a, [c]                                     ; $6ca4: $f2
    rst $38                                       ; $6ca5: $ff
    nop                                           ; $6ca6: $00
    inc bc                                        ; $6ca7: $03
    or $01                                        ; $6ca8: $f6 $01
    ld [bc], a                                    ; $6caa: $02
    inc de                                        ; $6cab: $13
    ld [bc], a                                    ; $6cac: $02
    ld [bc], a                                    ; $6cad: $02
    inc bc                                        ; $6cae: $03
    dec b                                         ; $6caf: $05
    inc bc                                        ; $6cb0: $03
    ld [bc], a                                    ; $6cb1: $02
    dec b                                         ; $6cb2: $05
    ld [bc], a                                    ; $6cb3: $02
    inc bc                                        ; $6cb4: $03
    inc bc                                        ; $6cb5: $03
    ld [bc], a                                    ; $6cb6: $02
    ld [bc], a                                    ; $6cb7: $02
    ld [bc], a                                    ; $6cb8: $02
    inc bc                                        ; $6cb9: $03
    ld [bc], a                                    ; $6cba: $02
    dec b                                         ; $6cbb: $05
    inc b                                         ; $6cbc: $04
    dec b                                         ; $6cbd: $05
    ld b, $fe                                     ; $6cbe: $06 $fe
    xor $ef                                       ; $6cc0: $ee $ef
    ldh a, [$f1]                                  ; $6cc2: $f0 $f1
    ld a, [c]                                     ; $6cc4: $f2
    rst $38                                       ; $6cc5: $ff
    nop                                           ; $6cc6: $00
    inc bc                                        ; $6cc7: $03
    or $01                                        ; $6cc8: $f6 $01
    ld [bc], a                                    ; $6cca: $02
    inc de                                        ; $6ccb: $13
    inc bc                                        ; $6ccc: $03
    inc bc                                        ; $6ccd: $03
    ld [bc], a                                    ; $6cce: $02
    ld [bc], a                                    ; $6ccf: $02
    inc bc                                        ; $6cd0: $03
    inc bc                                        ; $6cd1: $03
    dec b                                         ; $6cd2: $05
    rlca                                          ; $6cd3: $07
    dec b                                         ; $6cd4: $05
    ld [bc], a                                    ; $6cd5: $02
    ld [bc], a                                    ; $6cd6: $02
    rlca                                          ; $6cd7: $07
    ld [bc], a                                    ; $6cd8: $02
    ld [bc], a                                    ; $6cd9: $02
    inc bc                                        ; $6cda: $03
    rlca                                          ; $6cdb: $07
    pop de                                        ; $6cdc: $d1
    pop de                                        ; $6cdd: $d1
    pop de                                        ; $6cde: $d1
    pop de                                        ; $6cdf: $d1
    ld c, l                                       ; $6ce0: $4d
    ld c, l                                       ; $6ce1: $4d
    ld c, l                                       ; $6ce2: $4d
    ld c, l                                       ; $6ce3: $4d
    ld d, b                                       ; $6ce4: $50
    ld e, b                                       ; $6ce5: $58
    ld e, c                                       ; $6ce6: $59
    ld d, b                                       ; $6ce7: $50
    or $01                                        ; $6ce8: $f6 $01
    ld [bc], a                                    ; $6cea: $02
    inc de                                        ; $6ceb: $13
    ld bc, $0101                                  ; $6cec: $01 $01 $01
    ld bc, $0101                                  ; $6cef: $01 $01 $01
    ld bc, $0101                                  ; $6cf2: $01 $01 $01
    ld bc, $0101                                  ; $6cf5: $01 $01 $01
    rlca                                          ; $6cf8: $07
    rlca                                          ; $6cf9: $07
    rlca                                          ; $6cfa: $07
    rlca                                          ; $6cfb: $07
    pop de                                        ; $6cfc: $d1
    pop de                                        ; $6cfd: $d1
    pop de                                        ; $6cfe: $d1
    dec de                                        ; $6cff: $1b
    ld c, l                                       ; $6d00: $4d
    ld c, l                                       ; $6d01: $4d
    ld c, l                                       ; $6d02: $4d
    ld e, d                                       ; $6d03: $5a
    ld c, a                                       ; $6d04: $4f
    ld d, b                                       ; $6d05: $50
    ld c, a                                       ; $6d06: $4f
    ld c, [hl]                                    ; $6d07: $4e
    or $01                                        ; $6d08: $f6 $01
    ld [bc], a                                    ; $6d0a: $02
    inc de                                        ; $6d0b: $13
    ld bc, $0101                                  ; $6d0c: $01 $01 $01
    ld bc, $0101                                  ; $6d0f: $01 $01 $01
    ld bc, $0101                                  ; $6d12: $01 $01 $01
    ld bc, $2101                                  ; $6d15: $01 $01 $21
    rlca                                          ; $6d18: $07
    rlca                                          ; $6d19: $07
    rlca                                          ; $6d1a: $07
    rlca                                          ; $6d1b: $07
    inc b                                         ; $6d1c: $04
    dec b                                         ; $6d1d: $05
    ld b, $fe                                     ; $6d1e: $06 $fe
    xor $ef                                       ; $6d20: $ee $ef
    ldh a, [$f1]                                  ; $6d22: $f0 $f1
    ld a, [c]                                     ; $6d24: $f2
    rst $38                                       ; $6d25: $ff
    nop                                           ; $6d26: $00
    inc bc                                        ; $6d27: $03
    or $01                                        ; $6d28: $f6 $01
    ld [bc], a                                    ; $6d2a: $02
    inc de                                        ; $6d2b: $13
    ld [bc], a                                    ; $6d2c: $02
    inc bc                                        ; $6d2d: $03
    ld [bc], a                                    ; $6d2e: $02
    dec b                                         ; $6d2f: $05
    dec b                                         ; $6d30: $05
    ld [bc], a                                    ; $6d31: $02
    ld [bc], a                                    ; $6d32: $02
    inc bc                                        ; $6d33: $03
    ld [bc], a                                    ; $6d34: $02
    inc bc                                        ; $6d35: $03
    dec b                                         ; $6d36: $05
    inc bc                                        ; $6d37: $03
    ld [bc], a                                    ; $6d38: $02
    ld [bc], a                                    ; $6d39: $02
    dec b                                         ; $6d3a: $05
    ld [bc], a                                    ; $6d3b: $02
    inc b                                         ; $6d3c: $04
    dec b                                         ; $6d3d: $05
    ld b, $fe                                     ; $6d3e: $06 $fe
    xor $ef                                       ; $6d40: $ee $ef
    ldh a, [$f1]                                  ; $6d42: $f0 $f1
    ld a, [c]                                     ; $6d44: $f2
    rst $38                                       ; $6d45: $ff
    nop                                           ; $6d46: $00
    inc bc                                        ; $6d47: $03
    or $01                                        ; $6d48: $f6 $01
    ld [bc], a                                    ; $6d4a: $02
    inc de                                        ; $6d4b: $13
    ld [bc], a                                    ; $6d4c: $02
    inc bc                                        ; $6d4d: $03
    ld [bc], a                                    ; $6d4e: $02
    rlca                                          ; $6d4f: $07
    dec b                                         ; $6d50: $05
    ld [bc], a                                    ; $6d51: $02
    inc bc                                        ; $6d52: $03
    rlca                                          ; $6d53: $07
    ld [bc], a                                    ; $6d54: $02
    dec b                                         ; $6d55: $05
    ld [bc], a                                    ; $6d56: $02
    rlca                                          ; $6d57: $07
    ld [bc], a                                    ; $6d58: $02
    inc bc                                        ; $6d59: $03
    dec b                                         ; $6d5a: $05
    rlca                                          ; $6d5b: $07
    ld e, e                                       ; $6d5c: $5b
    ld e, h                                       ; $6d5d: $5c
    ld e, l                                       ; $6d5e: $5d
    ld e, [hl]                                    ; $6d5f: $5e
    ld e, a                                       ; $6d60: $5f
    ld h, b                                       ; $6d61: $60
    ld h, c                                       ; $6d62: $61
    ld h, d                                       ; $6d63: $62
    ld h, e                                       ; $6d64: $63
    ld h, h                                       ; $6d65: $64
    ld h, l                                       ; $6d66: $65
    ld h, [hl]                                    ; $6d67: $66
    xor $ef                                       ; $6d68: $ee $ef
    ldh a, [$f1]                                  ; $6d6a: $f0 $f1
    inc b                                         ; $6d6c: $04
    inc b                                         ; $6d6d: $04
    inc b                                         ; $6d6e: $04
    inc b                                         ; $6d6f: $04
    inc b                                         ; $6d70: $04
    inc b                                         ; $6d71: $04
    inc b                                         ; $6d72: $04
    inc b                                         ; $6d73: $04
    inc b                                         ; $6d74: $04
    inc b                                         ; $6d75: $04
    inc b                                         ; $6d76: $04
    inc b                                         ; $6d77: $04
    rlca                                          ; $6d78: $07
    rlca                                          ; $6d79: $07
    rlca                                          ; $6d7a: $07
    rlca                                          ; $6d7b: $07
    ld h, a                                       ; $6d7c: $67
    ld de, $2112                                  ; $6d7d: $11 $12 $21
    ld l, b                                       ; $6d80: $68
    inc d                                         ; $6d81: $14
    dec d                                         ; $6d82: $15
    ld d, $69                                     ; $6d83: $16 $69
    dec b                                         ; $6d85: $05
    ld b, $fe                                     ; $6d86: $06 $fe
    xor $ef                                       ; $6d88: $ee $ef
    ldh a, [$f1]                                  ; $6d8a: $f0 $f1
    inc b                                         ; $6d8c: $04
    ld [bc], a                                    ; $6d8d: $02
    ld [bc], a                                    ; $6d8e: $02
    ld [bc], a                                    ; $6d8f: $02
    inc b                                         ; $6d90: $04
    ld [bc], a                                    ; $6d91: $02
    dec b                                         ; $6d92: $05
    ld [bc], a                                    ; $6d93: $02
    inc b                                         ; $6d94: $04
    ld [bc], a                                    ; $6d95: $02
    inc bc                                        ; $6d96: $03
    ld [bc], a                                    ; $6d97: $02
    rlca                                          ; $6d98: $07
    inc bc                                        ; $6d99: $03
    ld [bc], a                                    ; $6d9a: $02
    ld [bc], a                                    ; $6d9b: $02
    rlca                                          ; $6d9c: $07
    ld de, $2112                                  ; $6d9d: $11 $12 $21
    dec bc                                        ; $6da0: $0b
    inc d                                         ; $6da1: $14
    dec d                                         ; $6da2: $15
    ld d, $04                                     ; $6da3: $16 $04
    dec b                                         ; $6da5: $05
    ld b, $fe                                     ; $6da6: $06 $fe
    xor $ef                                       ; $6da8: $ee $ef
    ldh a, [$f1]                                  ; $6daa: $f0 $f1
    inc bc                                        ; $6dac: $03
    inc bc                                        ; $6dad: $03
    ld [bc], a                                    ; $6dae: $02
    dec b                                         ; $6daf: $05
    ld [bc], a                                    ; $6db0: $02
    dec b                                         ; $6db1: $05
    inc bc                                        ; $6db2: $03
    ld [bc], a                                    ; $6db3: $02
    dec b                                         ; $6db4: $05
    ld [bc], a                                    ; $6db5: $02
    ld [bc], a                                    ; $6db6: $02
    inc bc                                        ; $6db7: $03
    inc bc                                        ; $6db8: $03
    inc bc                                        ; $6db9: $03
    dec b                                         ; $6dba: $05
    ld [bc], a                                    ; $6dbb: $02
    rlca                                          ; $6dbc: $07
    ld de, $2112                                  ; $6dbd: $11 $12 $21
    dec bc                                        ; $6dc0: $0b
    inc d                                         ; $6dc1: $14
    dec d                                         ; $6dc2: $15
    ld d, $04                                     ; $6dc3: $16 $04
    dec b                                         ; $6dc5: $05
    ld b, $fe                                     ; $6dc6: $06 $fe
    xor $ef                                       ; $6dc8: $ee $ef
    ldh a, [$f1]                                  ; $6dca: $f0 $f1
    ld [bc], a                                    ; $6dcc: $02
    inc bc                                        ; $6dcd: $03
    ld [bc], a                                    ; $6dce: $02
    rlca                                          ; $6dcf: $07
    inc bc                                        ; $6dd0: $03
    ld [bc], a                                    ; $6dd1: $02
    dec b                                         ; $6dd2: $05
    rlca                                          ; $6dd3: $07
    ld [bc], a                                    ; $6dd4: $02
    dec b                                         ; $6dd5: $05
    ld [bc], a                                    ; $6dd6: $02
    rlca                                          ; $6dd7: $07
    dec b                                         ; $6dd8: $05
    ld [bc], a                                    ; $6dd9: $02
    inc bc                                        ; $6dda: $03
    ld [bc], a                                    ; $6ddb: $02
    ld a, [c]                                     ; $6ddc: $f2
    rst $38                                       ; $6ddd: $ff
    nop                                           ; $6dde: $00
    inc bc                                        ; $6ddf: $03
    or $01                                        ; $6de0: $f6 $01
    ld [bc], a                                    ; $6de2: $02
    inc de                                        ; $6de3: $13
    rlca                                          ; $6de4: $07
    ld de, $2112                                  ; $6de5: $11 $12 $21
    ld c, b                                       ; $6de8: $48
    ld c, c                                       ; $6de9: $49
    ld c, c                                       ; $6dea: $49
    ld d, [hl]                                    ; $6deb: $56
    ld [bc], a                                    ; $6dec: $02
    dec b                                         ; $6ded: $05
    ld [bc], a                                    ; $6dee: $02
    ld [bc], a                                    ; $6def: $02
    inc bc                                        ; $6df0: $03
    ld [bc], a                                    ; $6df1: $02
    ld [bc], a                                    ; $6df2: $02
    inc bc                                        ; $6df3: $03
    ld [bc], a                                    ; $6df4: $02
    dec b                                         ; $6df5: $05
    ld [bc], a                                    ; $6df6: $02
    dec b                                         ; $6df7: $05
    add b                                         ; $6df8: $80
    add b                                         ; $6df9: $80
    add b                                         ; $6dfa: $80
    add b                                         ; $6dfb: $80
    ld a, [c]                                     ; $6dfc: $f2
    rst $38                                       ; $6dfd: $ff
    nop                                           ; $6dfe: $00
    inc bc                                        ; $6dff: $03
    or $01                                        ; $6e00: $f6 $01
    ld [bc], a                                    ; $6e02: $02
    inc de                                        ; $6e03: $13
    rlca                                          ; $6e04: $07
    ld de, $2112                                  ; $6e05: $11 $12 $21
    dec bc                                        ; $6e08: $0b
    inc d                                         ; $6e09: $14
    dec d                                         ; $6e0a: $15
    ld d, $05                                     ; $6e0b: $16 $05
    dec b                                         ; $6e0d: $05
    ld [bc], a                                    ; $6e0e: $02
    dec b                                         ; $6e0f: $05
    ld [bc], a                                    ; $6e10: $02
    ld [bc], a                                    ; $6e11: $02
    dec b                                         ; $6e12: $05
    ld [bc], a                                    ; $6e13: $02
    ld [bc], a                                    ; $6e14: $02
    inc bc                                        ; $6e15: $03
    inc bc                                        ; $6e16: $03
    dec b                                         ; $6e17: $05
    ld [bc], a                                    ; $6e18: $02
    dec b                                         ; $6e19: $05
    ld [bc], a                                    ; $6e1a: $02
    ld [bc], a                                    ; $6e1b: $02
    ld a, [c]                                     ; $6e1c: $f2
    rst $38                                       ; $6e1d: $ff
    nop                                           ; $6e1e: $00
    inc bc                                        ; $6e1f: $03
    or $01                                        ; $6e20: $f6 $01
    ld [bc], a                                    ; $6e22: $02
    inc de                                        ; $6e23: $13
    rlca                                          ; $6e24: $07
    ld de, $2112                                  ; $6e25: $11 $12 $21
    dec bc                                        ; $6e28: $0b
    inc d                                         ; $6e29: $14
    dec d                                         ; $6e2a: $15
    ld d, $02                                     ; $6e2b: $16 $02
    inc bc                                        ; $6e2d: $03
    inc bc                                        ; $6e2e: $03
    dec b                                         ; $6e2f: $05
    ld [bc], a                                    ; $6e30: $02
    dec b                                         ; $6e31: $05
    ld [bc], a                                    ; $6e32: $02
    inc bc                                        ; $6e33: $03
    ld [bc], a                                    ; $6e34: $02
    ld [bc], a                                    ; $6e35: $02
    inc bc                                        ; $6e36: $03
    inc bc                                        ; $6e37: $03
    inc bc                                        ; $6e38: $03
    inc bc                                        ; $6e39: $03
    ld [bc], a                                    ; $6e3a: $02
    dec b                                         ; $6e3b: $05
    ld a, [c]                                     ; $6e3c: $f2
    rst $38                                       ; $6e3d: $ff
    nop                                           ; $6e3e: $00
    inc bc                                        ; $6e3f: $03
    or $01                                        ; $6e40: $f6 $01
    ld [bc], a                                    ; $6e42: $02
    inc de                                        ; $6e43: $13
    rlca                                          ; $6e44: $07
    ld de, $2112                                  ; $6e45: $11 $12 $21
    dec bc                                        ; $6e48: $0b
    inc d                                         ; $6e49: $14
    dec d                                         ; $6e4a: $15
    ld d, $02                                     ; $6e4b: $16 $02
    inc bc                                        ; $6e4d: $03
    inc bc                                        ; $6e4e: $03
    dec b                                         ; $6e4f: $05
    ld [bc], a                                    ; $6e50: $02
    dec b                                         ; $6e51: $05
    ld [bc], a                                    ; $6e52: $02
    ld [bc], a                                    ; $6e53: $02
    ld [bc], a                                    ; $6e54: $02
    ld [bc], a                                    ; $6e55: $02
    dec b                                         ; $6e56: $05
    rlca                                          ; $6e57: $07
    inc bc                                        ; $6e58: $03
    inc bc                                        ; $6e59: $03
    ld [bc], a                                    ; $6e5a: $02
    rlca                                          ; $6e5b: $07
    jp nc, $d1d1                                  ; $6e5c: $d2 $d1 $d1

    jp nc, $d1d2                                  ; $6e5f: $d2 $d2 $d1

    pop de                                        ; $6e62: $d1
    jp nc, $d1d2                                  ; $6e63: $d2 $d2 $d1

    pop de                                        ; $6e66: $d1
    jp nc, $d1d2                                  ; $6e67: $d2 $d2 $d1

    pop de                                        ; $6e6a: $d1
    jp nc, $8080                                  ; $6e6b: $d2 $80 $80

    add b                                         ; $6e6e: $80
    add b                                         ; $6e6f: $80
    add b                                         ; $6e70: $80
    add b                                         ; $6e71: $80
    add b                                         ; $6e72: $80
    add b                                         ; $6e73: $80
    add b                                         ; $6e74: $80
    add b                                         ; $6e75: $80
    add b                                         ; $6e76: $80
    add b                                         ; $6e77: $80
    add b                                         ; $6e78: $80
    add b                                         ; $6e79: $80
    add b                                         ; $6e7a: $80
    add b                                         ; $6e7b: $80
    inc b                                         ; $6e7c: $04
    dec b                                         ; $6e7d: $05
    ld b, $fe                                     ; $6e7e: $06 $fe
    xor $ef                                       ; $6e80: $ee $ef
    ldh a, [$f1]                                  ; $6e82: $f0 $f1
    ld a, [c]                                     ; $6e84: $f2
    rst $38                                       ; $6e85: $ff
    nop                                           ; $6e86: $00
    inc bc                                        ; $6e87: $03
    or $01                                        ; $6e88: $f6 $01
    ld [bc], a                                    ; $6e8a: $02
    inc de                                        ; $6e8b: $13
    ld [bc], a                                    ; $6e8c: $02
    inc bc                                        ; $6e8d: $03
    ld [bc], a                                    ; $6e8e: $02
    inc bc                                        ; $6e8f: $03
    rlca                                          ; $6e90: $07
    ld [bc], a                                    ; $6e91: $02
    ld [bc], a                                    ; $6e92: $02
    dec b                                         ; $6e93: $05
    rlca                                          ; $6e94: $07
    ld [bc], a                                    ; $6e95: $02
    inc bc                                        ; $6e96: $03
    inc bc                                        ; $6e97: $03
    rlca                                          ; $6e98: $07
    ld [bc], a                                    ; $6e99: $02
    inc bc                                        ; $6e9a: $03
    ld [bc], a                                    ; $6e9b: $02
    inc b                                         ; $6e9c: $04
    dec b                                         ; $6e9d: $05
    ld b, $fe                                     ; $6e9e: $06 $fe
    xor $ef                                       ; $6ea0: $ee $ef
    ldh a, [$f1]                                  ; $6ea2: $f0 $f1
    ld a, [c]                                     ; $6ea4: $f2
    rst $38                                       ; $6ea5: $ff
    nop                                           ; $6ea6: $00
    inc bc                                        ; $6ea7: $03
    or $01                                        ; $6ea8: $f6 $01
    ld [bc], a                                    ; $6eaa: $02
    inc de                                        ; $6eab: $13
    ld [bc], a                                    ; $6eac: $02
    inc bc                                        ; $6ead: $03
    inc bc                                        ; $6eae: $03
    ld [bc], a                                    ; $6eaf: $02
    dec b                                         ; $6eb0: $05
    dec b                                         ; $6eb1: $05
    ld [bc], a                                    ; $6eb2: $02
    dec b                                         ; $6eb3: $05
    ld [bc], a                                    ; $6eb4: $02
    ld [bc], a                                    ; $6eb5: $02
    dec b                                         ; $6eb6: $05
    inc bc                                        ; $6eb7: $03
    ld [bc], a                                    ; $6eb8: $02
    dec b                                         ; $6eb9: $05
    ld [bc], a                                    ; $6eba: $02
    ld [bc], a                                    ; $6ebb: $02
    inc b                                         ; $6ebc: $04
    dec b                                         ; $6ebd: $05
    ld b, $fe                                     ; $6ebe: $06 $fe
    xor $ef                                       ; $6ec0: $ee $ef
    ldh a, [$f1]                                  ; $6ec2: $f0 $f1
    ld a, [c]                                     ; $6ec4: $f2
    rst $38                                       ; $6ec5: $ff
    nop                                           ; $6ec6: $00
    inc bc                                        ; $6ec7: $03
    or $01                                        ; $6ec8: $f6 $01
    ld [bc], a                                    ; $6eca: $02
    inc de                                        ; $6ecb: $13
    dec b                                         ; $6ecc: $05
    inc bc                                        ; $6ecd: $03
    ld [bc], a                                    ; $6ece: $02
    rlca                                          ; $6ecf: $07
    ld [bc], a                                    ; $6ed0: $02
    dec b                                         ; $6ed1: $05
    ld [bc], a                                    ; $6ed2: $02
    rlca                                          ; $6ed3: $07
    ld [bc], a                                    ; $6ed4: $02
    ld [bc], a                                    ; $6ed5: $02
    inc bc                                        ; $6ed6: $03
    rlca                                          ; $6ed7: $07
    dec b                                         ; $6ed8: $05
    ld [bc], a                                    ; $6ed9: $02
    ld [bc], a                                    ; $6eda: $02
    rlca                                          ; $6edb: $07
    ld d, l                                       ; $6edc: $55
    ld c, c                                       ; $6edd: $49
    ld d, [hl]                                    ; $6ede: $56
    pop de                                        ; $6edf: $d1
    ld d, a                                       ; $6ee0: $57
    db $e3                                        ; $6ee1: $e3
    jp nc, $e4d1                                  ; $6ee2: $d2 $d1 $e4

    push hl                                       ; $6ee5: $e5
    ld c, e                                       ; $6ee6: $4b
    pop de                                        ; $6ee7: $d1
    db $e4                                        ; $6ee8: $e4
    and $4b                                       ; $6ee9: $e6 $4b
    pop de                                        ; $6eeb: $d1
    add b                                         ; $6eec: $80
    add b                                         ; $6eed: $80
    add b                                         ; $6eee: $80
    add b                                         ; $6eef: $80
    ld bc, $8022                                  ; $6ef0: $01 $22 $80
    add b                                         ; $6ef3: $80
    ld bc, $8022                                  ; $6ef4: $01 $22 $80
    add b                                         ; $6ef7: $80
    ld bc, $8022                                  ; $6ef8: $01 $22 $80
    add b                                         ; $6efb: $80
    db $e4                                        ; $6efc: $e4
    rst $20                                       ; $6efd: $e7
    ld c, e                                       ; $6efe: $4b
    pop de                                        ; $6eff: $d1
    ei                                            ; $6f00: $fb
    ld a, [$d14b]                                 ; $6f01: $fa $4b $d1
    inc b                                         ; $6f04: $04
    dec b                                         ; $6f05: $05
    ld c, e                                       ; $6f06: $4b
    ld d, c                                       ; $6f07: $51
    xor $ef                                       ; $6f08: $ee $ef
    jp nc, Jump_000_0151                          ; $6f0a: $d2 $51 $01

    ld [hl+], a                                   ; $6f0d: $22
    add b                                         ; $6f0e: $80
    add b                                         ; $6f0f: $80
    ld bc, $8022                                  ; $6f10: $01 $22 $80
    add b                                         ; $6f13: $80
    rlca                                          ; $6f14: $07
    rlca                                          ; $6f15: $07
    add b                                         ; $6f16: $80
    and b                                         ; $6f17: $a0
    ld [bc], a                                    ; $6f18: $02
    rlca                                          ; $6f19: $07
    add b                                         ; $6f1a: $80
    and b                                         ; $6f1b: $a0
    ld c, b                                       ; $6f1c: $48
    ld c, c                                       ; $6f1d: $49
    ld c, d                                       ; $6f1e: $4a
    ld d, c                                       ; $6f1f: $51
    jp nc, $d1d1                                  ; $6f20: $d2 $d1 $d1

    pop de                                        ; $6f23: $d1
    jp nc, $d1d1                                  ; $6f24: $d2 $d1 $d1

    pop de                                        ; $6f27: $d1
    jp nc, $d1d1                                  ; $6f28: $d2 $d1 $d1

    pop de                                        ; $6f2b: $d1
    add b                                         ; $6f2c: $80
    add b                                         ; $6f2d: $80
    add b                                         ; $6f2e: $80
    and b                                         ; $6f2f: $a0
    add b                                         ; $6f30: $80
    add b                                         ; $6f31: $80
    add b                                         ; $6f32: $80
    add b                                         ; $6f33: $80
    add b                                         ; $6f34: $80
    add b                                         ; $6f35: $80
    add b                                         ; $6f36: $80
    add b                                         ; $6f37: $80
    add b                                         ; $6f38: $80
    add b                                         ; $6f39: $80
    add b                                         ; $6f3a: $80
    add b                                         ; $6f3b: $80
    pop de                                        ; $6f3c: $d1
    ld c, e                                       ; $6f3d: $4b
    ld a, [$51fb]                                 ; $6f3e: $fa $fb $51
    ld c, e                                       ; $6f41: $4b
    dec d                                         ; $6f42: $15
    ld d, $51                                     ; $6f43: $16 $51
    jp nc, $fe06                                  ; $6f45: $d2 $06 $fe

    ld d, c                                       ; $6f48: $51
    ld d, l                                       ; $6f49: $55
    ld c, c                                       ; $6f4a: $49
    ld d, [hl]                                    ; $6f4b: $56
    add b                                         ; $6f4c: $80
    add b                                         ; $6f4d: $80
    ld [bc], a                                    ; $6f4e: $02
    ld bc, $8080                                  ; $6f4f: $01 $80 $80
    rlca                                          ; $6f52: $07
    rlca                                          ; $6f53: $07
    add b                                         ; $6f54: $80
    add b                                         ; $6f55: $80
    rlca                                          ; $6f56: $07
    ld [bc], a                                    ; $6f57: $02
    add b                                         ; $6f58: $80
    add b                                         ; $6f59: $80
    add b                                         ; $6f5a: $80
    add b                                         ; $6f5b: $80
    rlca                                          ; $6f5c: $07
    ld de, $2112                                  ; $6f5d: $11 $12 $21
    dec bc                                        ; $6f60: $0b
    inc d                                         ; $6f61: $14
    dec d                                         ; $6f62: $15
    ld d, $04                                     ; $6f63: $16 $04
    dec b                                         ; $6f65: $05
    ld b, $fe                                     ; $6f66: $06 $fe
    xor $ef                                       ; $6f68: $ee $ef
    ldh a, [$f1]                                  ; $6f6a: $f0 $f1
    rlca                                          ; $6f6c: $07
    inc bc                                        ; $6f6d: $03
    ld [bc], a                                    ; $6f6e: $02
    dec b                                         ; $6f6f: $05
    rlca                                          ; $6f70: $07
    ld [bc], a                                    ; $6f71: $02
    inc bc                                        ; $6f72: $03
    ld [bc], a                                    ; $6f73: $02
    ld [bc], a                                    ; $6f74: $02
    dec b                                         ; $6f75: $05
    inc bc                                        ; $6f76: $03
    inc bc                                        ; $6f77: $03
    inc bc                                        ; $6f78: $03
    ld [bc], a                                    ; $6f79: $02
    ld [bc], a                                    ; $6f7a: $02
    dec b                                         ; $6f7b: $05
    rlca                                          ; $6f7c: $07
    ld de, $2112                                  ; $6f7d: $11 $12 $21
    dec bc                                        ; $6f80: $0b
    inc d                                         ; $6f81: $14
    dec d                                         ; $6f82: $15
    ld d, $04                                     ; $6f83: $16 $04
    dec b                                         ; $6f85: $05
    ld b, $fe                                     ; $6f86: $06 $fe
    xor $ef                                       ; $6f88: $ee $ef
    ldh a, [$f1]                                  ; $6f8a: $f0 $f1
    ld [bc], a                                    ; $6f8c: $02
    ld [bc], a                                    ; $6f8d: $02
    ld [bc], a                                    ; $6f8e: $02
    inc bc                                        ; $6f8f: $03
    dec b                                         ; $6f90: $05
    dec b                                         ; $6f91: $05
    inc bc                                        ; $6f92: $03
    ld [bc], a                                    ; $6f93: $02
    inc bc                                        ; $6f94: $03
    ld [bc], a                                    ; $6f95: $02
    inc bc                                        ; $6f96: $03
    dec b                                         ; $6f97: $05
    ld [bc], a                                    ; $6f98: $02
    inc bc                                        ; $6f99: $03
    ld [bc], a                                    ; $6f9a: $02
    dec b                                         ; $6f9b: $05
    rlca                                          ; $6f9c: $07
    ld de, $2112                                  ; $6f9d: $11 $12 $21
    dec bc                                        ; $6fa0: $0b
    inc d                                         ; $6fa1: $14
    dec d                                         ; $6fa2: $15
    ld d, $04                                     ; $6fa3: $16 $04
    dec b                                         ; $6fa5: $05
    ld b, $fe                                     ; $6fa6: $06 $fe
    xor $ef                                       ; $6fa8: $ee $ef
    ldh a, [$f1]                                  ; $6faa: $f0 $f1
    inc bc                                        ; $6fac: $03
    inc bc                                        ; $6fad: $03
    ld [bc], a                                    ; $6fae: $02
    rlca                                          ; $6faf: $07
    ld [bc], a                                    ; $6fb0: $02
    dec b                                         ; $6fb1: $05
    inc bc                                        ; $6fb2: $03
    rlca                                          ; $6fb3: $07
    ld [bc], a                                    ; $6fb4: $02
    inc bc                                        ; $6fb5: $03
    ld [bc], a                                    ; $6fb6: $02
    rlca                                          ; $6fb7: $07
    inc bc                                        ; $6fb8: $03
    dec b                                         ; $6fb9: $05
    ld [bc], a                                    ; $6fba: $02
    rlca                                          ; $6fbb: $07
    ld a, [c]                                     ; $6fbc: $f2
    rst $38                                       ; $6fbd: $ff
    nop                                           ; $6fbe: $00
    inc bc                                        ; $6fbf: $03
    or $01                                        ; $6fc0: $f6 $01
    ld [bc], a                                    ; $6fc2: $02
    inc de                                        ; $6fc3: $13
    rlca                                          ; $6fc4: $07
    ld de, $2112                                  ; $6fc5: $11 $12 $21
    dec bc                                        ; $6fc8: $0b
    ld l, d                                       ; $6fc9: $6a
    ld l, e                                       ; $6fca: $6b
    ld d, $02                                     ; $6fcb: $16 $02
    inc bc                                        ; $6fcd: $03
    ld [bc], a                                    ; $6fce: $02
    ld [bc], a                                    ; $6fcf: $02
    rlca                                          ; $6fd0: $07
    dec b                                         ; $6fd1: $05
    ld [bc], a                                    ; $6fd2: $02
    inc bc                                        ; $6fd3: $03
    rlca                                          ; $6fd4: $07
    ld [bc], a                                    ; $6fd5: $02
    ld [bc], a                                    ; $6fd6: $02
    ld [bc], a                                    ; $6fd7: $02
    rlca                                          ; $6fd8: $07
    ld b, $06                                     ; $6fd9: $06 $06
    inc bc                                        ; $6fdb: $03
    ld a, [c]                                     ; $6fdc: $f2
    rst $38                                       ; $6fdd: $ff
    nop                                           ; $6fde: $00
    inc bc                                        ; $6fdf: $03
    or $01                                        ; $6fe0: $f6 $01
    ld [bc], a                                    ; $6fe2: $02
    inc de                                        ; $6fe3: $13
    rlca                                          ; $6fe4: $07
    ld de, $2112                                  ; $6fe5: $11 $12 $21
    dec bc                                        ; $6fe8: $0b
    inc d                                         ; $6fe9: $14
    dec d                                         ; $6fea: $15
    ld d, $03                                     ; $6feb: $16 $03
    ld [bc], a                                    ; $6fed: $02
    dec b                                         ; $6fee: $05
    inc bc                                        ; $6fef: $03
    ld [bc], a                                    ; $6ff0: $02
    inc bc                                        ; $6ff1: $03
    ld [bc], a                                    ; $6ff2: $02
    inc bc                                        ; $6ff3: $03
    ld [bc], a                                    ; $6ff4: $02
    ld [bc], a                                    ; $6ff5: $02
    dec b                                         ; $6ff6: $05
    ld [bc], a                                    ; $6ff7: $02
    ld [bc], a                                    ; $6ff8: $02
    inc bc                                        ; $6ff9: $03
    dec b                                         ; $6ffa: $05
    ld [bc], a                                    ; $6ffb: $02
    ld a, [c]                                     ; $6ffc: $f2
    rst $38                                       ; $6ffd: $ff
    nop                                           ; $6ffe: $00
    inc bc                                        ; $6fff: $03
    or $01                                        ; $7000: $f6 $01
    ld [bc], a                                    ; $7002: $02
    inc de                                        ; $7003: $13
    rlca                                          ; $7004: $07
    ld de, $2112                                  ; $7005: $11 $12 $21
    dec bc                                        ; $7008: $0b
    inc d                                         ; $7009: $14
    dec d                                         ; $700a: $15
    ld d, $02                                     ; $700b: $16 $02
    ld [bc], a                                    ; $700d: $02
    ld [bc], a                                    ; $700e: $02
    rlca                                          ; $700f: $07
    ld [bc], a                                    ; $7010: $02
    ld [bc], a                                    ; $7011: $02
    inc bc                                        ; $7012: $03
    rlca                                          ; $7013: $07
    ld [bc], a                                    ; $7014: $02
    dec b                                         ; $7015: $05
    ld [bc], a                                    ; $7016: $02
    rlca                                          ; $7017: $07
    inc bc                                        ; $7018: $03
    ld [bc], a                                    ; $7019: $02
    ld [bc], a                                    ; $701a: $02
    rlca                                          ; $701b: $07
    pop de                                        ; $701c: $d1
    pop de                                        ; $701d: $d1
    pop de                                        ; $701e: $d1
    jp nc, $d1d1                                  ; $701f: $d2 $d1 $d1

    pop de                                        ; $7022: $d1
    jp nc, Jump_080_48d1                          ; $7023: $d2 $d1 $48

    ld c, c                                       ; $7026: $49
    ld c, d                                       ; $7027: $4a
    pop de                                        ; $7028: $d1
    jp nc, Jump_080_57e3                          ; $7029: $d2 $e3 $57

    add b                                         ; $702c: $80
    add b                                         ; $702d: $80
    add b                                         ; $702e: $80
    add b                                         ; $702f: $80
    add b                                         ; $7030: $80
    add b                                         ; $7031: $80
    add b                                         ; $7032: $80
    add b                                         ; $7033: $80
    add b                                         ; $7034: $80
    add b                                         ; $7035: $80
    add b                                         ; $7036: $80
    add b                                         ; $7037: $80
    add b                                         ; $7038: $80
    add b                                         ; $7039: $80
    ld [bc], a                                    ; $703a: $02
    ld bc, $6c04                                  ; $703b: $01 $04 $6c
    ld l, l                                       ; $703e: $6d
    cp $ee                                        ; $703f: $fe $ee
    rst $28                                       ; $7041: $ef
    ldh a, [$f1]                                  ; $7042: $f0 $f1
    ld a, [c]                                     ; $7044: $f2
    rst $38                                       ; $7045: $ff
    nop                                           ; $7046: $00
    inc bc                                        ; $7047: $03
    or $01                                        ; $7048: $f6 $01
    ld [bc], a                                    ; $704a: $02
    inc de                                        ; $704b: $13
    rlca                                          ; $704c: $07
    ld b, $06                                     ; $704d: $06 $06
    ld [bc], a                                    ; $704f: $02
    rlca                                          ; $7050: $07
    ld [bc], a                                    ; $7051: $02
    dec b                                         ; $7052: $05
    ld [bc], a                                    ; $7053: $02
    rlca                                          ; $7054: $07
    inc bc                                        ; $7055: $03
    ld [bc], a                                    ; $7056: $02
    ld [bc], a                                    ; $7057: $02
    rlca                                          ; $7058: $07
    ld [bc], a                                    ; $7059: $02
    inc bc                                        ; $705a: $03
    ld [bc], a                                    ; $705b: $02
    inc b                                         ; $705c: $04
    dec b                                         ; $705d: $05
    ld b, $fe                                     ; $705e: $06 $fe
    xor $ef                                       ; $7060: $ee $ef
    ldh a, [$f1]                                  ; $7062: $f0 $f1
    ld a, [c]                                     ; $7064: $f2
    rst $38                                       ; $7065: $ff
    nop                                           ; $7066: $00
    inc bc                                        ; $7067: $03
    or $01                                        ; $7068: $f6 $01
    ld [bc], a                                    ; $706a: $02
    inc de                                        ; $706b: $13
    dec b                                         ; $706c: $05
    ld [bc], a                                    ; $706d: $02
    ld [bc], a                                    ; $706e: $02
    inc bc                                        ; $706f: $03
    ld [bc], a                                    ; $7070: $02
    dec b                                         ; $7071: $05
    ld [bc], a                                    ; $7072: $02
    inc bc                                        ; $7073: $03
    inc bc                                        ; $7074: $03
    inc bc                                        ; $7075: $03
    ld [bc], a                                    ; $7076: $02
    dec b                                         ; $7077: $05
    inc bc                                        ; $7078: $03
    ld [bc], a                                    ; $7079: $02
    dec b                                         ; $707a: $05
    ld [bc], a                                    ; $707b: $02
    inc b                                         ; $707c: $04
    dec b                                         ; $707d: $05
    ld b, $fe                                     ; $707e: $06 $fe
    xor $ef                                       ; $7080: $ee $ef
    ldh a, [$f1]                                  ; $7082: $f0 $f1
    ld a, [c]                                     ; $7084: $f2
    rst $38                                       ; $7085: $ff
    nop                                           ; $7086: $00
    inc bc                                        ; $7087: $03
    or $01                                        ; $7088: $f6 $01
    ld [bc], a                                    ; $708a: $02
    inc de                                        ; $708b: $13
    inc bc                                        ; $708c: $03
    ld [bc], a                                    ; $708d: $02
    dec b                                         ; $708e: $05
    rlca                                          ; $708f: $07
    ld [bc], a                                    ; $7090: $02
    inc bc                                        ; $7091: $03
    ld [bc], a                                    ; $7092: $02
    rlca                                          ; $7093: $07
    ld [bc], a                                    ; $7094: $02
    inc bc                                        ; $7095: $03
    ld [bc], a                                    ; $7096: $02
    rlca                                          ; $7097: $07
    dec b                                         ; $7098: $05
    ld [bc], a                                    ; $7099: $02
    inc bc                                        ; $709a: $03
    rlca                                          ; $709b: $07
    pop de                                        ; $709c: $d1
    ld c, e                                       ; $709d: $4b
    push hl                                       ; $709e: $e5
    db $e4                                        ; $709f: $e4
    pop de                                        ; $70a0: $d1
    ld c, e                                       ; $70a1: $4b
    and $e4                                       ; $70a2: $e6 $e4
    pop de                                        ; $70a4: $d1
    ld c, e                                       ; $70a5: $4b
    rst $20                                       ; $70a6: $e7
    db $e4                                        ; $70a7: $e4
    pop de                                        ; $70a8: $d1
    ld c, e                                       ; $70a9: $4b
    ld a, [$80fb]                                 ; $70aa: $fa $fb $80
    add b                                         ; $70ad: $80
    ld [bc], a                                    ; $70ae: $02
    ld bc, $8080                                  ; $70af: $01 $80 $80
    ld [bc], a                                    ; $70b2: $02
    ld bc, $8080                                  ; $70b3: $01 $80 $80
    ld [bc], a                                    ; $70b6: $02
    ld bc, $8080                                  ; $70b7: $01 $80 $80
    ld [bc], a                                    ; $70ba: $02
    ld bc, $1107                                  ; $70bb: $01 $07 $11
    ld [de], a                                    ; $70be: $12
    ld hl, $140b                                  ; $70bf: $21 $0b $14
    dec d                                         ; $70c2: $15
    ld d, $04                                     ; $70c3: $16 $04
    dec b                                         ; $70c5: $05
    ld b, $fe                                     ; $70c6: $06 $fe
    xor $ef                                       ; $70c8: $ee $ef
    ldh a, [$f1]                                  ; $70ca: $f0 $f1
    rlca                                          ; $70cc: $07
    inc bc                                        ; $70cd: $03
    ld [bc], a                                    ; $70ce: $02
    inc bc                                        ; $70cf: $03
    rlca                                          ; $70d0: $07
    inc bc                                        ; $70d1: $03
    ld [bc], a                                    ; $70d2: $02
    dec b                                         ; $70d3: $05
    rlca                                          ; $70d4: $07
    ld [bc], a                                    ; $70d5: $02
    inc bc                                        ; $70d6: $03
    inc bc                                        ; $70d7: $03
    rlca                                          ; $70d8: $07
    ld [bc], a                                    ; $70d9: $02
    dec b                                         ; $70da: $05
    ld [bc], a                                    ; $70db: $02
    rlca                                          ; $70dc: $07
    ld de, $2112                                  ; $70dd: $11 $12 $21
    dec bc                                        ; $70e0: $0b
    inc d                                         ; $70e1: $14
    dec d                                         ; $70e2: $15
    ld d, $04                                     ; $70e3: $16 $04
    dec b                                         ; $70e5: $05
    ld b, $fe                                     ; $70e6: $06 $fe
    xor $ef                                       ; $70e8: $ee $ef
    ldh a, [$f1]                                  ; $70ea: $f0 $f1
    dec b                                         ; $70ec: $05
    ld [bc], a                                    ; $70ed: $02
    inc bc                                        ; $70ee: $03
    inc bc                                        ; $70ef: $03
    ld [bc], a                                    ; $70f0: $02
    dec b                                         ; $70f1: $05
    ld [bc], a                                    ; $70f2: $02
    inc bc                                        ; $70f3: $03
    ld [bc], a                                    ; $70f4: $02
    inc bc                                        ; $70f5: $03
    ld [bc], a                                    ; $70f6: $02
    ld [bc], a                                    ; $70f7: $02
    dec b                                         ; $70f8: $05
    ld [bc], a                                    ; $70f9: $02
    ld [bc], a                                    ; $70fa: $02
    dec b                                         ; $70fb: $05
    rlca                                          ; $70fc: $07
    ld de, $2112                                  ; $70fd: $11 $12 $21
    dec bc                                        ; $7100: $0b
    inc d                                         ; $7101: $14
    dec d                                         ; $7102: $15
    ld d, d                                       ; $7103: $52
    inc b                                         ; $7104: $04
    dec b                                         ; $7105: $05
    ld b, $53                                     ; $7106: $06 $53
    xor $ef                                       ; $7108: $ee $ef
    ldh a, [rHDMA4]                               ; $710a: $f0 $54
    inc bc                                        ; $710c: $03
    inc bc                                        ; $710d: $03
    ld [bc], a                                    ; $710e: $02
    rlca                                          ; $710f: $07
    inc bc                                        ; $7110: $03
    ld [bc], a                                    ; $7111: $02
    dec b                                         ; $7112: $05
    inc b                                         ; $7113: $04
    ld [bc], a                                    ; $7114: $02
    inc bc                                        ; $7115: $03
    ld [bc], a                                    ; $7116: $02
    inc b                                         ; $7117: $04
    inc bc                                        ; $7118: $03
    ld [bc], a                                    ; $7119: $02
    ld [bc], a                                    ; $711a: $02
    inc b                                         ; $711b: $04
    rlca                                          ; $711c: $07
    ld de, $2112                                  ; $711d: $11 $12 $21
    dec bc                                        ; $7120: $0b
    inc d                                         ; $7121: $14
    dec d                                         ; $7122: $15
    ld d, $04                                     ; $7123: $16 $04
    dec b                                         ; $7125: $05
    ld b, $fe                                     ; $7126: $06 $fe
    xor $ef                                       ; $7128: $ee $ef
    ldh a, [$f1]                                  ; $712a: $f0 $f1
    rlca                                          ; $712c: $07
    ld [bc], a                                    ; $712d: $02
    dec b                                         ; $712e: $05
    ld [bc], a                                    ; $712f: $02
    rlca                                          ; $7130: $07
    dec b                                         ; $7131: $05
    ld [bc], a                                    ; $7132: $02
    inc bc                                        ; $7133: $03
    rlca                                          ; $7134: $07
    inc bc                                        ; $7135: $03
    ld [bc], a                                    ; $7136: $02
    dec b                                         ; $7137: $05
    rlca                                          ; $7138: $07
    ld [bc], a                                    ; $7139: $02
    dec b                                         ; $713a: $05
    ld [bc], a                                    ; $713b: $02
    rlca                                          ; $713c: $07
    ld de, $2112                                  ; $713d: $11 $12 $21
    dec bc                                        ; $7140: $0b
    inc d                                         ; $7141: $14
    dec d                                         ; $7142: $15
    ld d, $04                                     ; $7143: $16 $04
    dec b                                         ; $7145: $05
    ld b, $fe                                     ; $7146: $06 $fe
    xor $ef                                       ; $7148: $ee $ef
    ldh a, [$f1]                                  ; $714a: $f0 $f1
    inc bc                                        ; $714c: $03
    inc bc                                        ; $714d: $03
    inc bc                                        ; $714e: $03
    ld [bc], a                                    ; $714f: $02
    ld [bc], a                                    ; $7150: $02
    ld [bc], a                                    ; $7151: $02
    dec b                                         ; $7152: $05
    inc bc                                        ; $7153: $03
    ld [bc], a                                    ; $7154: $02
    dec b                                         ; $7155: $05
    ld [bc], a                                    ; $7156: $02
    ld [bc], a                                    ; $7157: $02
    dec b                                         ; $7158: $05
    inc bc                                        ; $7159: $03
    ld [bc], a                                    ; $715a: $02
    ld [bc], a                                    ; $715b: $02
    rlca                                          ; $715c: $07
    ld de, $2112                                  ; $715d: $11 $12 $21
    dec bc                                        ; $7160: $0b
    inc d                                         ; $7161: $14
    dec d                                         ; $7162: $15
    ld d, $04                                     ; $7163: $16 $04
    dec b                                         ; $7165: $05
    ld b, $fe                                     ; $7166: $06 $fe
    xor $ef                                       ; $7168: $ee $ef
    ldh a, [$f1]                                  ; $716a: $f0 $f1
    inc bc                                        ; $716c: $03
    ld [bc], a                                    ; $716d: $02
    dec b                                         ; $716e: $05
    rlca                                          ; $716f: $07
    ld [bc], a                                    ; $7170: $02
    dec b                                         ; $7171: $05
    dec b                                         ; $7172: $05
    rlca                                          ; $7173: $07
    inc bc                                        ; $7174: $03
    inc bc                                        ; $7175: $03
    ld [bc], a                                    ; $7176: $02
    rlca                                          ; $7177: $07
    ld [bc], a                                    ; $7178: $02
    inc bc                                        ; $7179: $03
    ld [bc], a                                    ; $717a: $02
    rlca                                          ; $717b: $07
    jp nc, $d1d1                                  ; $717c: $d2 $d1 $d1

    jp nc, $d1d2                                  ; $717f: $d2 $d2 $d1

    pop de                                        ; $7182: $d1
    jp nc, $d1d2                                  ; $7183: $d2 $d2 $d1

    pop de                                        ; $7186: $d1
    jp nc, Jump_080_4955                          ; $7187: $d2 $55 $49

    ld c, c                                       ; $718a: $49
    ld c, d                                       ; $718b: $4a
    add b                                         ; $718c: $80
    add b                                         ; $718d: $80
    add b                                         ; $718e: $80
    add b                                         ; $718f: $80
    add b                                         ; $7190: $80
    add b                                         ; $7191: $80
    add b                                         ; $7192: $80
    add b                                         ; $7193: $80
    add b                                         ; $7194: $80
    add b                                         ; $7195: $80
    add b                                         ; $7196: $80
    add b                                         ; $7197: $80
    add b                                         ; $7198: $80
    add b                                         ; $7199: $80
    add b                                         ; $719a: $80
    add b                                         ; $719b: $80
    ld a, [c]                                     ; $719c: $f2
    rst $38                                       ; $719d: $ff
    nop                                           ; $719e: $00
    inc bc                                        ; $719f: $03
    or $01                                        ; $71a0: $f6 $01
    ld [bc], a                                    ; $71a2: $02
    inc de                                        ; $71a3: $13
    rlca                                          ; $71a4: $07
    ld de, $2112                                  ; $71a5: $11 $12 $21
    dec bc                                        ; $71a8: $0b
    inc d                                         ; $71a9: $14
    dec d                                         ; $71aa: $15
    ld d, $07                                     ; $71ab: $16 $07
    ld [bc], a                                    ; $71ad: $02
    inc bc                                        ; $71ae: $03
    inc bc                                        ; $71af: $03
    rlca                                          ; $71b0: $07
    dec b                                         ; $71b1: $05
    ld [bc], a                                    ; $71b2: $02
    inc bc                                        ; $71b3: $03
    rlca                                          ; $71b4: $07
    ld [bc], a                                    ; $71b5: $02
    dec b                                         ; $71b6: $05
    dec b                                         ; $71b7: $05
    rlca                                          ; $71b8: $07
    dec b                                         ; $71b9: $05
    ld [bc], a                                    ; $71ba: $02
    ld [bc], a                                    ; $71bb: $02
    ld a, [c]                                     ; $71bc: $f2
    rst $38                                       ; $71bd: $ff
    nop                                           ; $71be: $00
    inc bc                                        ; $71bf: $03
    or $01                                        ; $71c0: $f6 $01
    ld [bc], a                                    ; $71c2: $02
    ld l, [hl]                                    ; $71c3: $6e
    rlca                                          ; $71c4: $07
    ld de, $6f12                                  ; $71c5: $11 $12 $6f
    dec bc                                        ; $71c8: $0b
    inc d                                         ; $71c9: $14
    dec d                                         ; $71ca: $15
    ld d, $02                                     ; $71cb: $16 $02
    ld [bc], a                                    ; $71cd: $02
    ld [bc], a                                    ; $71ce: $02
    dec b                                         ; $71cf: $05
    dec b                                         ; $71d0: $05
    ld [bc], a                                    ; $71d1: $02
    inc bc                                        ; $71d2: $03
    ld [bc], a                                    ; $71d3: $02
    ld [bc], a                                    ; $71d4: $02
    inc bc                                        ; $71d5: $03
    inc bc                                        ; $71d6: $03
    ld [bc], a                                    ; $71d7: $02
    inc bc                                        ; $71d8: $03
    ld [bc], a                                    ; $71d9: $02
    ld [bc], a                                    ; $71da: $02
    dec b                                         ; $71db: $05
    ld [hl], b                                    ; $71dc: $70
    rst $38                                       ; $71dd: $ff
    nop                                           ; $71de: $00
    inc bc                                        ; $71df: $03
    ld [hl], c                                    ; $71e0: $71
    ld [hl], d                                    ; $71e1: $72
    ld [hl], e                                    ; $71e2: $73
    inc de                                        ; $71e3: $13
    ld [hl], h                                    ; $71e4: $74
    ld [hl], l                                    ; $71e5: $75
    halt                                          ; $71e6: $76
    ld hl, $7877                                  ; $71e7: $21 $77 $78
    ld a, c                                       ; $71ea: $79
    ld d, $02                                     ; $71eb: $16 $02
    ld [bc], a                                    ; $71ed: $02
    ld [bc], a                                    ; $71ee: $02
    rlca                                          ; $71ef: $07
    add [hl]                                      ; $71f0: $86
    add [hl]                                      ; $71f1: $86
    ld [bc], a                                    ; $71f2: $02
    rlca                                          ; $71f3: $07
    add [hl]                                      ; $71f4: $86
    add [hl]                                      ; $71f5: $86
    ld b, $07                                     ; $71f6: $06 $07
    ld b, $06                                     ; $71f8: $06 $06
    ld b, $07                                     ; $71fa: $06 $07
    ld d, a                                       ; $71fc: $57
    sub $e3                                       ; $71fd: $d6 $e3
    ld d, a                                       ; $71ff: $57
    db $e4                                        ; $7200: $e4
    jp c, $e4e5                                   ; $7201: $da $e5 $e4

    db $e4                                        ; $7204: $e4
    sbc $e6                                       ; $7205: $de $e6
    db $e4                                        ; $7207: $e4
    db $e4                                        ; $7208: $e4
    ld [c], a                                     ; $7209: $e2
    rst $20                                       ; $720a: $e7
    db $e4                                        ; $720b: $e4
    ld bc, $0202                                  ; $720c: $01 $02 $02
    ld bc, $0201                                  ; $720f: $01 $01 $02
    ld [bc], a                                    ; $7212: $02
    ld bc, $0201                                  ; $7213: $01 $01 $02
    ld [bc], a                                    ; $7216: $02
    ld bc, $0201                                  ; $7217: $01 $01 $02
    ld [bc], a                                    ; $721a: $02
    ld bc, $0504                                  ; $721b: $01 $04 $05
    ld b, $fe                                     ; $721e: $06 $fe
    xor $ef                                       ; $7220: $ee $ef
    ldh a, [$f1]                                  ; $7222: $f0 $f1
    ld a, [c]                                     ; $7224: $f2
    rst $38                                       ; $7225: $ff
    nop                                           ; $7226: $00
    inc bc                                        ; $7227: $03
    or $01                                        ; $7228: $f6 $01
    ld [bc], a                                    ; $722a: $02
    inc de                                        ; $722b: $13
    rlca                                          ; $722c: $07
    inc bc                                        ; $722d: $03
    inc bc                                        ; $722e: $03
    ld [bc], a                                    ; $722f: $02
    rlca                                          ; $7230: $07
    ld [bc], a                                    ; $7231: $02
    ld [bc], a                                    ; $7232: $02
    inc bc                                        ; $7233: $03
    rlca                                          ; $7234: $07
    dec b                                         ; $7235: $05
    ld [bc], a                                    ; $7236: $02
    ld [bc], a                                    ; $7237: $02
    rlca                                          ; $7238: $07
    ld [bc], a                                    ; $7239: $02
    inc bc                                        ; $723a: $03
    ld [bc], a                                    ; $723b: $02
    inc b                                         ; $723c: $04
    dec b                                         ; $723d: $05
    ld b, $7a                                     ; $723e: $06 $7a
    xor $ef                                       ; $7240: $ee $ef
    ldh a, [$f1]                                  ; $7242: $f0 $f1
    ld a, [c]                                     ; $7244: $f2
    rst $38                                       ; $7245: $ff
    nop                                           ; $7246: $00
    inc bc                                        ; $7247: $03
    or $01                                        ; $7248: $f6 $01
    ld [bc], a                                    ; $724a: $02
    inc de                                        ; $724b: $13
    dec b                                         ; $724c: $05
    ld [bc], a                                    ; $724d: $02
    dec b                                         ; $724e: $05
    ld [bc], a                                    ; $724f: $02
    ld [bc], a                                    ; $7250: $02
    dec b                                         ; $7251: $05
    ld [bc], a                                    ; $7252: $02
    ld [bc], a                                    ; $7253: $02
    inc bc                                        ; $7254: $03
    ld [bc], a                                    ; $7255: $02
    dec b                                         ; $7256: $05
    inc bc                                        ; $7257: $03
    ld [bc], a                                    ; $7258: $02
    ld [bc], a                                    ; $7259: $02
    inc bc                                        ; $725a: $03
    ld [bc], a                                    ; $725b: $02
    ld a, e                                       ; $725c: $7b
    ld a, h                                       ; $725d: $7c
    ld a, l                                       ; $725e: $7d
    cp $7e                                        ; $725f: $fe $7e
    ld a, a                                       ; $7261: $7f
    ldh a, [$f1]                                  ; $7262: $f0 $f1
    add b                                         ; $7264: $80
    add c                                         ; $7265: $81
    nop                                           ; $7266: $00
    inc bc                                        ; $7267: $03
    or $01                                        ; $7268: $f6 $01
    ld [bc], a                                    ; $726a: $02
    inc de                                        ; $726b: $13
    ld b, $06                                     ; $726c: $06 $06
    ld [bc], a                                    ; $726e: $02
    rlca                                          ; $726f: $07
    ld b, $06                                     ; $7270: $06 $06
    ld [bc], a                                    ; $7272: $02
    rlca                                          ; $7273: $07
    ld a, [bc]                                    ; $7274: $0a
    ld a, [bc]                                    ; $7275: $0a
    ld [bc], a                                    ; $7276: $02
    rlca                                          ; $7277: $07
    ld [bc], a                                    ; $7278: $02
    dec b                                         ; $7279: $05
    ld [bc], a                                    ; $727a: $02
    rlca                                          ; $727b: $07
    ei                                            ; $727c: $fb
    db $ed                                        ; $727d: $ed
    ld a, [$5bfb]                                 ; $727e: $fa $fb $5b
    ld e, h                                       ; $7281: $5c
    ld e, l                                       ; $7282: $5d
    ld e, [hl]                                    ; $7283: $5e
    ld e, a                                       ; $7284: $5f
    ld h, b                                       ; $7285: $60
    ld h, c                                       ; $7286: $61
    ld h, d                                       ; $7287: $62
    ld h, e                                       ; $7288: $63
    ld h, h                                       ; $7289: $64
    ld h, l                                       ; $728a: $65
    ld h, [hl]                                    ; $728b: $66
    ld bc, $0202                                  ; $728c: $01 $02 $02
    ld bc, $0404                                  ; $728f: $01 $04 $04
    inc b                                         ; $7292: $04
    inc b                                         ; $7293: $04
    inc b                                         ; $7294: $04
    inc b                                         ; $7295: $04
    inc b                                         ; $7296: $04
    inc b                                         ; $7297: $04
    inc b                                         ; $7298: $04
    inc b                                         ; $7299: $04
    inc b                                         ; $729a: $04
    inc b                                         ; $729b: $04
    rlca                                          ; $729c: $07
    ld de, $2112                                  ; $729d: $11 $12 $21
    ld h, a                                       ; $72a0: $67
    inc d                                         ; $72a1: $14
    dec d                                         ; $72a2: $15
    ld d, $68                                     ; $72a3: $16 $68
    dec b                                         ; $72a5: $05
    ld b, $fe                                     ; $72a6: $06 $fe
    ld l, c                                       ; $72a8: $69
    rst $28                                       ; $72a9: $ef
    ldh a, [$f1]                                  ; $72aa: $f0 $f1
    rlca                                          ; $72ac: $07
    dec b                                         ; $72ad: $05
    ld [bc], a                                    ; $72ae: $02
    dec b                                         ; $72af: $05
    inc b                                         ; $72b0: $04
    ld [bc], a                                    ; $72b1: $02
    dec b                                         ; $72b2: $05
    ld [bc], a                                    ; $72b3: $02
    inc b                                         ; $72b4: $04
    ld [bc], a                                    ; $72b5: $02
    inc bc                                        ; $72b6: $03
    inc bc                                        ; $72b7: $03
    inc b                                         ; $72b8: $04
    ld [bc], a                                    ; $72b9: $02
    dec b                                         ; $72ba: $05
    ld [bc], a                                    ; $72bb: $02
    rlca                                          ; $72bc: $07
    ld de, $2112                                  ; $72bd: $11 $12 $21
    dec bc                                        ; $72c0: $0b
    inc d                                         ; $72c1: $14
    dec d                                         ; $72c2: $15
    ld d, $04                                     ; $72c3: $16 $04
    dec b                                         ; $72c5: $05
    ld b, $fe                                     ; $72c6: $06 $fe
    xor $ef                                       ; $72c8: $ee $ef
    ldh a, [$f1]                                  ; $72ca: $f0 $f1
    ld [bc], a                                    ; $72cc: $02
    inc bc                                        ; $72cd: $03
    ld [bc], a                                    ; $72ce: $02
    ld [bc], a                                    ; $72cf: $02
    ld [bc], a                                    ; $72d0: $02
    dec b                                         ; $72d1: $05
    ld [bc], a                                    ; $72d2: $02
    inc bc                                        ; $72d3: $03
    ld [bc], a                                    ; $72d4: $02
    ld [bc], a                                    ; $72d5: $02
    dec b                                         ; $72d6: $05
    ld [bc], a                                    ; $72d7: $02
    inc bc                                        ; $72d8: $03
    inc bc                                        ; $72d9: $03
    ld [bc], a                                    ; $72da: $02
    inc bc                                        ; $72db: $03
    rlca                                          ; $72dc: $07
    ld de, $2112                                  ; $72dd: $11 $12 $21
    dec bc                                        ; $72e0: $0b
    inc d                                         ; $72e1: $14
    dec d                                         ; $72e2: $15
    ld d, $04                                     ; $72e3: $16 $04
    dec b                                         ; $72e5: $05
    ld b, $fe                                     ; $72e6: $06 $fe
    xor $ef                                       ; $72e8: $ee $ef
    ldh a, [$f1]                                  ; $72ea: $f0 $f1
    inc bc                                        ; $72ec: $03
    ld [bc], a                                    ; $72ed: $02
    ld [bc], a                                    ; $72ee: $02
    rlca                                          ; $72ef: $07
    ld [bc], a                                    ; $72f0: $02
    ld [bc], a                                    ; $72f1: $02
    inc bc                                        ; $72f2: $03
    rlca                                          ; $72f3: $07
    dec b                                         ; $72f4: $05
    inc bc                                        ; $72f5: $03
    ld [bc], a                                    ; $72f6: $02
    rlca                                          ; $72f7: $07
    inc bc                                        ; $72f8: $03
    ld [bc], a                                    ; $72f9: $02
    dec b                                         ; $72fa: $05
    rlca                                          ; $72fb: $07
    jp nc, $d1d1                                  ; $72fc: $d2 $d1 $d1

    pop de                                        ; $72ff: $d1
    jp nc, $d1d1                                  ; $7300: $d2 $d1 $d1

    pop de                                        ; $7303: $d1
    ld d, l                                       ; $7304: $55
    ld c, c                                       ; $7305: $49
    ld d, [hl]                                    ; $7306: $56
    pop de                                        ; $7307: $d1
    ld d, a                                       ; $7308: $57
    db $e3                                        ; $7309: $e3
    jp nc, $80d1                                  ; $730a: $d2 $d1 $80

    add b                                         ; $730d: $80
    add b                                         ; $730e: $80
    add b                                         ; $730f: $80
    add b                                         ; $7310: $80
    add b                                         ; $7311: $80
    add b                                         ; $7312: $80
    add b                                         ; $7313: $80
    add b                                         ; $7314: $80
    add b                                         ; $7315: $80
    add b                                         ; $7316: $80
    add b                                         ; $7317: $80
    ld bc, $8022                                  ; $7318: $01 $22 $80
    add b                                         ; $731b: $80
    db $e4                                        ; $731c: $e4
    push hl                                       ; $731d: $e5
    ld c, e                                       ; $731e: $4b
    pop de                                        ; $731f: $d1
    db $e4                                        ; $7320: $e4
    and $4b                                       ; $7321: $e6 $4b
    pop de                                        ; $7323: $d1
    db $e4                                        ; $7324: $e4
    rst $20                                       ; $7325: $e7
    ld c, e                                       ; $7326: $4b
    pop de                                        ; $7327: $d1
    ei                                            ; $7328: $fb
    ld a, [$d14b]                                 ; $7329: $fa $4b $d1
    ld bc, $8022                                  ; $732c: $01 $22 $80
    add b                                         ; $732f: $80
    ld bc, $8022                                  ; $7330: $01 $22 $80
    add b                                         ; $7333: $80
    ld bc, $8022                                  ; $7334: $01 $22 $80
    add b                                         ; $7337: $80
    ld bc, $8022                                  ; $7338: $01 $22 $80
    add b                                         ; $733b: $80
    ld d, c                                       ; $733c: $51
    ld c, e                                       ; $733d: $4b
    nop                                           ; $733e: $00
    inc bc                                        ; $733f: $03
    ld d, c                                       ; $7340: $51
    jp nc, $1302                                  ; $7341: $d2 $02 $13

    ld d, c                                       ; $7344: $51
    ld d, l                                       ; $7345: $55
    ld c, c                                       ; $7346: $49
    ld d, [hl]                                    ; $7347: $56
    pop de                                        ; $7348: $d1
    pop de                                        ; $7349: $d1
    pop de                                        ; $734a: $d1
    jp nc, $8080                                  ; $734b: $d2 $80 $80

    rlca                                          ; $734e: $07
    rlca                                          ; $734f: $07
    add b                                         ; $7350: $80
    add b                                         ; $7351: $80
    rlca                                          ; $7352: $07
    ld [bc], a                                    ; $7353: $02
    add b                                         ; $7354: $80
    add b                                         ; $7355: $80
    add b                                         ; $7356: $80
    add b                                         ; $7357: $80
    add b                                         ; $7358: $80
    add b                                         ; $7359: $80
    add b                                         ; $735a: $80
    add b                                         ; $735b: $80
    ld a, [c]                                     ; $735c: $f2
    rst $38                                       ; $735d: $ff
    nop                                           ; $735e: $00
    inc bc                                        ; $735f: $03
    or $01                                        ; $7360: $f6 $01
    ld [bc], a                                    ; $7362: $02
    inc de                                        ; $7363: $13
    rlca                                          ; $7364: $07
    ld de, $2112                                  ; $7365: $11 $12 $21
    dec bc                                        ; $7368: $0b
    inc d                                         ; $7369: $14
    dec d                                         ; $736a: $15
    ld d, $07                                     ; $736b: $16 $07
    ld [bc], a                                    ; $736d: $02
    ld [bc], a                                    ; $736e: $02
    dec b                                         ; $736f: $05
    ld [bc], a                                    ; $7370: $02
    ld [bc], a                                    ; $7371: $02
    inc bc                                        ; $7372: $03
    ld [bc], a                                    ; $7373: $02
    inc bc                                        ; $7374: $03
    ld [bc], a                                    ; $7375: $02
    ld [bc], a                                    ; $7376: $02
    dec b                                         ; $7377: $05
    ld [bc], a                                    ; $7378: $02
    ld [bc], a                                    ; $7379: $02
    dec b                                         ; $737a: $05
    ld [bc], a                                    ; $737b: $02
    ld a, [c]                                     ; $737c: $f2
    rst $38                                       ; $737d: $ff
    nop                                           ; $737e: $00
    inc bc                                        ; $737f: $03
    or $01                                        ; $7380: $f6 $01
    ld [bc], a                                    ; $7382: $02
    inc de                                        ; $7383: $13
    rlca                                          ; $7384: $07
    ld de, $2112                                  ; $7385: $11 $12 $21
    dec bc                                        ; $7388: $0b
    inc d                                         ; $7389: $14
    dec d                                         ; $738a: $15
    ld d, $03                                     ; $738b: $16 $03
    ld [bc], a                                    ; $738d: $02
    inc bc                                        ; $738e: $03
    ld [bc], a                                    ; $738f: $02
    ld [bc], a                                    ; $7390: $02
    ld [bc], a                                    ; $7391: $02
    ld [bc], a                                    ; $7392: $02
    dec b                                         ; $7393: $05
    inc bc                                        ; $7394: $03
    dec b                                         ; $7395: $05
    ld [bc], a                                    ; $7396: $02
    dec b                                         ; $7397: $05
    inc bc                                        ; $7398: $03
    ld [bc], a                                    ; $7399: $02
    inc bc                                        ; $739a: $03
    inc bc                                        ; $739b: $03
    ld a, [c]                                     ; $739c: $f2
    rst $38                                       ; $739d: $ff
    nop                                           ; $739e: $00
    inc bc                                        ; $739f: $03
    or $01                                        ; $73a0: $f6 $01
    ld [bc], a                                    ; $73a2: $02
    inc de                                        ; $73a3: $13
    rlca                                          ; $73a4: $07
    ld de, $2112                                  ; $73a5: $11 $12 $21
    dec bc                                        ; $73a8: $0b
    inc d                                         ; $73a9: $14
    dec d                                         ; $73aa: $15
    ld d, $02                                     ; $73ab: $16 $02
    dec b                                         ; $73ad: $05
    ld [bc], a                                    ; $73ae: $02
    rlca                                          ; $73af: $07
    inc bc                                        ; $73b0: $03
    ld [bc], a                                    ; $73b1: $02
    inc bc                                        ; $73b2: $03
    ld [bc], a                                    ; $73b3: $02
    inc bc                                        ; $73b4: $03
    ld [bc], a                                    ; $73b5: $02
    ld [bc], a                                    ; $73b6: $02
    inc bc                                        ; $73b7: $03
    ld [bc], a                                    ; $73b8: $02
    dec b                                         ; $73b9: $05
    ld [bc], a                                    ; $73ba: $02
    inc bc                                        ; $73bb: $03
    inc b                                         ; $73bc: $04
    dec b                                         ; $73bd: $05
    ld b, $fe                                     ; $73be: $06 $fe
    xor $ef                                       ; $73c0: $ee $ef
    ldh a, [$f1]                                  ; $73c2: $f0 $f1
    ld a, [c]                                     ; $73c4: $f2
    rst $38                                       ; $73c5: $ff
    nop                                           ; $73c6: $00
    inc bc                                        ; $73c7: $03
    or $01                                        ; $73c8: $f6 $01
    ld [bc], a                                    ; $73ca: $02
    inc de                                        ; $73cb: $13
    rlca                                          ; $73cc: $07
    ld [bc], a                                    ; $73cd: $02
    inc bc                                        ; $73ce: $03
    dec b                                         ; $73cf: $05
    rlca                                          ; $73d0: $07
    inc bc                                        ; $73d1: $03
    inc bc                                        ; $73d2: $03
    ld [bc], a                                    ; $73d3: $02
    rlca                                          ; $73d4: $07
    ld [bc], a                                    ; $73d5: $02
    inc bc                                        ; $73d6: $03
    dec b                                         ; $73d7: $05
    rlca                                          ; $73d8: $07
    dec b                                         ; $73d9: $05
    inc bc                                        ; $73da: $03
    ld [bc], a                                    ; $73db: $02
    inc b                                         ; $73dc: $04
    dec b                                         ; $73dd: $05
    ld b, $fe                                     ; $73de: $06 $fe
    xor $ef                                       ; $73e0: $ee $ef
    ldh a, [$f1]                                  ; $73e2: $f0 $f1
    ld a, [c]                                     ; $73e4: $f2
    rst $38                                       ; $73e5: $ff
    nop                                           ; $73e6: $00
    inc bc                                        ; $73e7: $03
    or $01                                        ; $73e8: $f6 $01
    ld [bc], a                                    ; $73ea: $02
    inc de                                        ; $73eb: $13
    dec b                                         ; $73ec: $05
    ld [bc], a                                    ; $73ed: $02
    inc bc                                        ; $73ee: $03
    dec b                                         ; $73ef: $05
    inc bc                                        ; $73f0: $03
    inc bc                                        ; $73f1: $03
    inc bc                                        ; $73f2: $03
    dec b                                         ; $73f3: $05
    inc bc                                        ; $73f4: $03
    ld [bc], a                                    ; $73f5: $02
    dec b                                         ; $73f6: $05
    ld [bc], a                                    ; $73f7: $02
    ld [bc], a                                    ; $73f8: $02
    dec b                                         ; $73f9: $05
    ld [bc], a                                    ; $73fa: $02
    ld [bc], a                                    ; $73fb: $02
    inc b                                         ; $73fc: $04
    dec b                                         ; $73fd: $05
    ld b, $fe                                     ; $73fe: $06 $fe
    xor $ef                                       ; $7400: $ee $ef
    ldh a, [$f1]                                  ; $7402: $f0 $f1
    ld a, [c]                                     ; $7404: $f2
    rst $38                                       ; $7405: $ff
    nop                                           ; $7406: $00
    inc bc                                        ; $7407: $03
    or $01                                        ; $7408: $f6 $01
    ld [bc], a                                    ; $740a: $02
    inc de                                        ; $740b: $13
    ld [bc], a                                    ; $740c: $02
    ld [bc], a                                    ; $740d: $02
    dec b                                         ; $740e: $05
    ld [bc], a                                    ; $740f: $02
    ld [bc], a                                    ; $7410: $02
    inc bc                                        ; $7411: $03
    inc bc                                        ; $7412: $03
    ld [bc], a                                    ; $7413: $02
    inc bc                                        ; $7414: $03
    inc bc                                        ; $7415: $03
    ld [bc], a                                    ; $7416: $02
    inc bc                                        ; $7417: $03
    ld [bc], a                                    ; $7418: $02
    ld [bc], a                                    ; $7419: $02
    dec b                                         ; $741a: $05
    ld [bc], a                                    ; $741b: $02
    pop de                                        ; $741c: $d1
    pop de                                        ; $741d: $d1
    pop de                                        ; $741e: $d1
    jp nc, $d1d1                                  ; $741f: $d2 $d1 $d1

    pop de                                        ; $7422: $d1
    add d                                         ; $7423: $82
    pop de                                        ; $7424: $d1
    pop de                                        ; $7425: $d1
    pop de                                        ; $7426: $d1
    jp nc, $d1d1                                  ; $7427: $d2 $d1 $d1

    pop de                                        ; $742a: $d1
    jp nc, $8080                                  ; $742b: $d2 $80 $80

    add b                                         ; $742e: $80
    add b                                         ; $742f: $80
    add b                                         ; $7430: $80
    add b                                         ; $7431: $80
    add b                                         ; $7432: $80
    adc b                                         ; $7433: $88
    add b                                         ; $7434: $80
    add b                                         ; $7435: $80
    add b                                         ; $7436: $80
    add b                                         ; $7437: $80
    add b                                         ; $7438: $80
    add b                                         ; $7439: $80
    add b                                         ; $743a: $80
    add b                                         ; $743b: $80
    rlca                                          ; $743c: $07
    ld de, $2112                                  ; $743d: $11 $12 $21
    ld c, c                                       ; $7440: $49
    ld c, c                                       ; $7441: $49
    ld c, c                                       ; $7442: $49
    ld c, c                                       ; $7443: $49
    pop de                                        ; $7444: $d1
    pop de                                        ; $7445: $d1
    pop de                                        ; $7446: $d1
    pop de                                        ; $7447: $d1
    inc hl                                        ; $7448: $23
    rra                                           ; $7449: $1f
    jr nz, jr_080_7485                            ; $744a: $20 $39

    rlca                                          ; $744c: $07
    ld [bc], a                                    ; $744d: $02
    ld [bc], a                                    ; $744e: $02
    inc bc                                        ; $744f: $03
    add b                                         ; $7450: $80
    add b                                         ; $7451: $80
    add b                                         ; $7452: $80
    add b                                         ; $7453: $80
    add c                                         ; $7454: $81
    add c                                         ; $7455: $81
    add c                                         ; $7456: $81
    add c                                         ; $7457: $81
    add c                                         ; $7458: $81
    add c                                         ; $7459: $81
    add c                                         ; $745a: $81
    add c                                         ; $745b: $81
    rlca                                          ; $745c: $07
    ld de, $2112                                  ; $745d: $11 $12 $21
    ld c, c                                       ; $7460: $49
    add e                                         ; $7461: $83
    dec d                                         ; $7462: $15
    ld d, $d1                                     ; $7463: $16 $d1
    pop de                                        ; $7465: $d1
    ld b, $fe                                     ; $7466: $06 $fe
    ld [hl+], a                                   ; $7468: $22
    inc e                                         ; $7469: $1c
    ldh a, [$f1]                                  ; $746a: $f0 $f1
    ld [bc], a                                    ; $746c: $02
    ld [bc], a                                    ; $746d: $02
    inc bc                                        ; $746e: $03
    inc bc                                        ; $746f: $03
    add b                                         ; $7470: $80
    adc b                                         ; $7471: $88
    ld [bc], a                                    ; $7472: $02
    ld [bc], a                                    ; $7473: $02
    add c                                         ; $7474: $81
    add c                                         ; $7475: $81
    ld [bc], a                                    ; $7476: $02
    ld [bc], a                                    ; $7477: $02
    add c                                         ; $7478: $81
    ld hl, $0207                                  ; $7479: $21 $07 $02
    rlca                                          ; $747c: $07
    ld de, $8412                                  ; $747d: $11 $12 $84
    dec bc                                        ; $7480: $0b
    inc d                                         ; $7481: $14
    dec d                                         ; $7482: $15
    add l                                         ; $7483: $85
    inc b                                         ; $7484: $04

jr_080_7485:
    dec b                                         ; $7485: $05
    ld b, $fe                                     ; $7486: $06 $fe
    xor $ef                                       ; $7488: $ee $ef
    ldh a, [$86]                                  ; $748a: $f0 $86
    ld [bc], a                                    ; $748c: $02
    inc bc                                        ; $748d: $03
    ld [bc], a                                    ; $748e: $02
    adc [hl]                                      ; $748f: $8e
    dec b                                         ; $7490: $05
    ld [bc], a                                    ; $7491: $02
    ld [bc], a                                    ; $7492: $02
    adc [hl]                                      ; $7493: $8e
    inc bc                                        ; $7494: $03
    ld [bc], a                                    ; $7495: $02
    ld [bc], a                                    ; $7496: $02
    ld [bc], a                                    ; $7497: $02
    dec b                                         ; $7498: $05
    ld [bc], a                                    ; $7499: $02
    ld [bc], a                                    ; $749a: $02
    adc [hl]                                      ; $749b: $8e
    ld [hl+], a                                   ; $749c: $22
    jr nz, jr_080_74d8                            ; $749d: $20 $39

    ld [hl+], a                                   ; $749f: $22
    add hl, sp                                    ; $74a0: $39
    rra                                           ; $74a1: $1f
    jr nz, jr_080_74dd                            ; $74a2: $20 $39

    ld [hl+], a                                   ; $74a4: $22
    jr nz, jr_080_74e0                            ; $74a5: $20 $39

    ld [hl+], a                                   ; $74a7: $22
    ld [hl+], a                                   ; $74a8: $22
    jr nz, jr_080_74e4                            ; $74a9: $20 $39

    ld [hl+], a                                   ; $74ab: $22
    ld bc, $0101                                  ; $74ac: $01 $01 $01
    ld bc, $0101                                  ; $74af: $01 $01 $01
    ld bc, $0101                                  ; $74b2: $01 $01 $01
    ld bc, $0101                                  ; $74b5: $01 $01 $01
    ld bc, $0101                                  ; $74b8: $01 $01 $01
    ld bc, $1c23                                  ; $74bb: $01 $23 $1c
    nop                                           ; $74be: $00
    inc bc                                        ; $74bf: $03
    ld [hl+], a                                   ; $74c0: $22
    inc e                                         ; $74c1: $1c
    ld [bc], a                                    ; $74c2: $02
    inc de                                        ; $74c3: $13
    inc hl                                        ; $74c4: $23
    inc e                                         ; $74c5: $1c
    ld [de], a                                    ; $74c6: $12
    ld hl, $1c23                                  ; $74c7: $21 $23 $1c
    dec d                                         ; $74ca: $15
    ld d, $01                                     ; $74cb: $16 $01
    ld hl, $0307                                  ; $74cd: $21 $07 $03
    ld bc, $0721                                  ; $74d0: $01 $21 $07
    ld [bc], a                                    ; $74d3: $02
    ld bc, $0721                                  ; $74d4: $01 $21 $07
    dec b                                         ; $74d7: $05

jr_080_74d8:
    ld bc, $0721                                  ; $74d8: $01 $21 $07
    ld [bc], a                                    ; $74db: $02
    ld a, [c]                                     ; $74dc: $f2

jr_080_74dd:
    rst $38                                       ; $74dd: $ff
    nop                                           ; $74de: $00
    add a                                         ; $74df: $87

jr_080_74e0:
    or $01                                        ; $74e0: $f6 $01
    ld [bc], a                                    ; $74e2: $02
    adc b                                         ; $74e3: $88

jr_080_74e4:
    rlca                                          ; $74e4: $07
    ld de, $2112                                  ; $74e5: $11 $12 $21
    dec bc                                        ; $74e8: $0b
    inc d                                         ; $74e9: $14
    dec d                                         ; $74ea: $15
    ld d, $02                                     ; $74eb: $16 $02
    inc bc                                        ; $74ed: $03
    ld [bc], a                                    ; $74ee: $02
    ld a, [bc]                                    ; $74ef: $0a
    ld [bc], a                                    ; $74f0: $02
    ld [bc], a                                    ; $74f1: $02
    inc bc                                        ; $74f2: $03
    ld a, [bc]                                    ; $74f3: $0a
    inc bc                                        ; $74f4: $03
    inc bc                                        ; $74f5: $03
    ld [bc], a                                    ; $74f6: $02
    ld [bc], a                                    ; $74f7: $02
    dec b                                         ; $74f8: $05
    ld [bc], a                                    ; $74f9: $02
    ld [bc], a                                    ; $74fa: $02
    dec b                                         ; $74fb: $05
    ld a, [c]                                     ; $74fc: $f2
    rst $38                                       ; $74fd: $ff
    nop                                           ; $74fe: $00
    inc bc                                        ; $74ff: $03
    or $01                                        ; $7500: $f6 $01
    ld [bc], a                                    ; $7502: $02
    inc de                                        ; $7503: $13
    rlca                                          ; $7504: $07
    ld de, $2112                                  ; $7505: $11 $12 $21
    dec bc                                        ; $7508: $0b
    inc d                                         ; $7509: $14
    dec d                                         ; $750a: $15
    ld d, $07                                     ; $750b: $16 $07
    rlca                                          ; $750d: $07
    rlca                                          ; $750e: $07
    rlca                                          ; $750f: $07
    dec b                                         ; $7510: $05
    ld [bc], a                                    ; $7511: $02
    ld [bc], a                                    ; $7512: $02
    inc bc                                        ; $7513: $03
    inc bc                                        ; $7514: $03
    inc bc                                        ; $7515: $03
    ld [bc], a                                    ; $7516: $02
    dec b                                         ; $7517: $05
    ld [bc], a                                    ; $7518: $02
    ld [bc], a                                    ; $7519: $02
    dec b                                         ; $751a: $05
    ld [bc], a                                    ; $751b: $02
    ld a, [c]                                     ; $751c: $f2
    rst $38                                       ; $751d: $ff
    nop                                           ; $751e: $00
    inc bc                                        ; $751f: $03
    or $01                                        ; $7520: $f6 $01
    ld [bc], a                                    ; $7522: $02
    inc de                                        ; $7523: $13
    rlca                                          ; $7524: $07
    ld de, $2112                                  ; $7525: $11 $12 $21
    dec bc                                        ; $7528: $0b
    inc d                                         ; $7529: $14
    dec d                                         ; $752a: $15
    ld d, $07                                     ; $752b: $16 $07
    ld [bc], a                                    ; $752d: $02
    inc bc                                        ; $752e: $03
    dec b                                         ; $752f: $05
    ld [bc], a                                    ; $7530: $02
    ld [bc], a                                    ; $7531: $02
    inc bc                                        ; $7532: $03
    ld [bc], a                                    ; $7533: $02
    ld [bc], a                                    ; $7534: $02
    inc bc                                        ; $7535: $03
    ld [bc], a                                    ; $7536: $02
    dec b                                         ; $7537: $05
    inc bc                                        ; $7538: $03
    ld [bc], a                                    ; $7539: $02
    ld [bc], a                                    ; $753a: $02
    dec b                                         ; $753b: $05
    ld a, [c]                                     ; $753c: $f2
    rst $38                                       ; $753d: $ff
    nop                                           ; $753e: $00
    inc bc                                        ; $753f: $03
    or $01                                        ; $7540: $f6 $01
    ld [bc], a                                    ; $7542: $02
    inc de                                        ; $7543: $13
    rlca                                          ; $7544: $07
    ld de, $2112                                  ; $7545: $11 $12 $21
    dec bc                                        ; $7548: $0b
    inc d                                         ; $7549: $14
    dec d                                         ; $754a: $15
    ld d, $02                                     ; $754b: $16 $02
    dec b                                         ; $754d: $05
    ld [bc], a                                    ; $754e: $02
    ld [bc], a                                    ; $754f: $02
    ld [bc], a                                    ; $7550: $02
    inc bc                                        ; $7551: $03
    dec b                                         ; $7552: $05
    ld [bc], a                                    ; $7553: $02
    ld [bc], a                                    ; $7554: $02
    inc bc                                        ; $7555: $03
    dec b                                         ; $7556: $05
    ld [bc], a                                    ; $7557: $02
    inc bc                                        ; $7558: $03
    ld [bc], a                                    ; $7559: $02
    ld [bc], a                                    ; $755a: $02
    ld [bc], a                                    ; $755b: $02
    ld a, [c]                                     ; $755c: $f2
    rst $38                                       ; $755d: $ff
    nop                                           ; $755e: $00
    inc bc                                        ; $755f: $03
    or $01                                        ; $7560: $f6 $01
    ld [bc], a                                    ; $7562: $02
    inc de                                        ; $7563: $13
    rlca                                          ; $7564: $07
    ld de, $2112                                  ; $7565: $11 $12 $21
    dec bc                                        ; $7568: $0b
    inc d                                         ; $7569: $14
    dec d                                         ; $756a: $15
    ld d, $05                                     ; $756b: $16 $05
    ld [bc], a                                    ; $756d: $02
    inc bc                                        ; $756e: $03
    rlca                                          ; $756f: $07
    inc bc                                        ; $7570: $03
    inc bc                                        ; $7571: $03
    inc bc                                        ; $7572: $03
    ld [bc], a                                    ; $7573: $02
    ld [bc], a                                    ; $7574: $02
    ld [bc], a                                    ; $7575: $02
    ld [bc], a                                    ; $7576: $02
    dec b                                         ; $7577: $05
    dec b                                         ; $7578: $05
    ld [bc], a                                    ; $7579: $02
    ld [bc], a                                    ; $757a: $02
    ld [bc], a                                    ; $757b: $02
    inc b                                         ; $757c: $04
    dec b                                         ; $757d: $05
    ld b, $fe                                     ; $757e: $06 $fe
    adc c                                         ; $7580: $89
    adc d                                         ; $7581: $8a
    adc e                                         ; $7582: $8b
    adc h                                         ; $7583: $8c
    adc l                                         ; $7584: $8d
    adc [hl]                                      ; $7585: $8e
    adc a                                         ; $7586: $8f
    sub b                                         ; $7587: $90
    or $91                                        ; $7588: $f6 $91
    sub d                                         ; $758a: $92
    sub e                                         ; $758b: $93
    ld [bc], a                                    ; $758c: $02
    inc bc                                        ; $758d: $03
    ld [bc], a                                    ; $758e: $02
    dec b                                         ; $758f: $05
    ld a, [bc]                                    ; $7590: $0a
    adc [hl]                                      ; $7591: $8e
    adc [hl]                                      ; $7592: $8e
    ld a, [bc]                                    ; $7593: $0a
    ld a, [bc]                                    ; $7594: $0a
    adc [hl]                                      ; $7595: $8e
    adc [hl]                                      ; $7596: $8e
    adc [hl]                                      ; $7597: $8e
    ld [bc], a                                    ; $7598: $02
    adc [hl]                                      ; $7599: $8e
    adc [hl]                                      ; $759a: $8e
    adc [hl]                                      ; $759b: $8e
    inc b                                         ; $759c: $04
    dec b                                         ; $759d: $05
    ld b, $fe                                     ; $759e: $06 $fe
    xor $ef                                       ; $75a0: $ee $ef
    ldh a, [$f1]                                  ; $75a2: $f0 $f1
    sub h                                         ; $75a4: $94
    rst $38                                       ; $75a5: $ff
    nop                                           ; $75a6: $00
    inc bc                                        ; $75a7: $03
    sub l                                         ; $75a8: $95
    ld bc, $1302                                  ; $75a9: $01 $02 $13
    ld [bc], a                                    ; $75ac: $02
    dec b                                         ; $75ad: $05
    ld [bc], a                                    ; $75ae: $02
    ld [bc], a                                    ; $75af: $02
    ld [bc], a                                    ; $75b0: $02
    inc bc                                        ; $75b1: $03
    ld [bc], a                                    ; $75b2: $02
    dec b                                         ; $75b3: $05
    ld a, [bc]                                    ; $75b4: $0a
    inc bc                                        ; $75b5: $03
    inc bc                                        ; $75b6: $03
    ld [bc], a                                    ; $75b7: $02
    ld a, [bc]                                    ; $75b8: $0a
    ld [bc], a                                    ; $75b9: $02
    inc bc                                        ; $75ba: $03
    inc bc                                        ; $75bb: $03
    inc b                                         ; $75bc: $04
    dec b                                         ; $75bd: $05
    ld b, $fe                                     ; $75be: $06 $fe
    xor $ef                                       ; $75c0: $ee $ef
    ldh a, [$f1]                                  ; $75c2: $f0 $f1
    ld a, [c]                                     ; $75c4: $f2
    rst $38                                       ; $75c5: $ff
    nop                                           ; $75c6: $00
    inc bc                                        ; $75c7: $03
    or $01                                        ; $75c8: $f6 $01
    ld [bc], a                                    ; $75ca: $02
    inc de                                        ; $75cb: $13
    ld [bc], a                                    ; $75cc: $02
    dec b                                         ; $75cd: $05
    ld [bc], a                                    ; $75ce: $02
    inc bc                                        ; $75cf: $03
    ld [bc], a                                    ; $75d0: $02
    inc bc                                        ; $75d1: $03
    inc bc                                        ; $75d2: $03
    ld [bc], a                                    ; $75d3: $02
    ld [bc], a                                    ; $75d4: $02
    inc bc                                        ; $75d5: $03
    ld [bc], a                                    ; $75d6: $02
    dec b                                         ; $75d7: $05
    ld [bc], a                                    ; $75d8: $02
    ld [bc], a                                    ; $75d9: $02
    ld [bc], a                                    ; $75da: $02
    ld [bc], a                                    ; $75db: $02
    inc b                                         ; $75dc: $04
    dec b                                         ; $75dd: $05
    ld b, $fe                                     ; $75de: $06 $fe
    xor $ef                                       ; $75e0: $ee $ef
    ldh a, [$f1]                                  ; $75e2: $f0 $f1
    ld a, [c]                                     ; $75e4: $f2
    rst $38                                       ; $75e5: $ff
    nop                                           ; $75e6: $00
    inc bc                                        ; $75e7: $03
    or $01                                        ; $75e8: $f6 $01
    ld [bc], a                                    ; $75ea: $02
    inc de                                        ; $75eb: $13
    inc bc                                        ; $75ec: $03
    ld [bc], a                                    ; $75ed: $02
    dec b                                         ; $75ee: $05
    rlca                                          ; $75ef: $07
    dec b                                         ; $75f0: $05
    ld [bc], a                                    ; $75f1: $02
    ld [bc], a                                    ; $75f2: $02
    rlca                                          ; $75f3: $07
    ld [bc], a                                    ; $75f4: $02
    inc bc                                        ; $75f5: $03
    ld [bc], a                                    ; $75f6: $02
    rlca                                          ; $75f7: $07
    ld [bc], a                                    ; $75f8: $02
    inc bc                                        ; $75f9: $03
    dec b                                         ; $75fa: $05
    rlca                                          ; $75fb: $07
    sub [hl]                                      ; $75fc: $96
    sub a                                         ; $75fd: $97
    sbc b                                         ; $75fe: $98
    sbc c                                         ; $75ff: $99
    sbc d                                         ; $7600: $9a
    sbc e                                         ; $7601: $9b
    sbc h                                         ; $7602: $9c
    sbc l                                         ; $7603: $9d
    sbc [hl]                                      ; $7604: $9e
    sbc a                                         ; $7605: $9f
    and b                                         ; $7606: $a0
    and c                                         ; $7607: $a1
    and d                                         ; $7608: $a2
    and e                                         ; $7609: $a3
    and h                                         ; $760a: $a4
    and l                                         ; $760b: $a5
    adc [hl]                                      ; $760c: $8e
    adc [hl]                                      ; $760d: $8e
    adc [hl]                                      ; $760e: $8e
    adc [hl]                                      ; $760f: $8e
    adc [hl]                                      ; $7610: $8e
    adc [hl]                                      ; $7611: $8e
    adc [hl]                                      ; $7612: $8e
    adc [hl]                                      ; $7613: $8e
    adc [hl]                                      ; $7614: $8e
    adc [hl]                                      ; $7615: $8e
    adc [hl]                                      ; $7616: $8e
    adc [hl]                                      ; $7617: $8e
    ld c, $0e                                     ; $7618: $0e $0e
    ld c, $0e                                     ; $761a: $0e $0e
    and [hl]                                      ; $761c: $a6
    and a                                         ; $761d: $a7
    ld [de], a                                    ; $761e: $12
    ld hl, $14a8                                  ; $761f: $21 $a8 $14
    dec d                                         ; $7622: $15
    ld d, $a9                                     ; $7623: $16 $a9
    dec b                                         ; $7625: $05
    ld b, $fe                                     ; $7626: $06 $fe
    xor d                                         ; $7628: $aa
    rst $28                                       ; $7629: $ef
    ldh a, [$f1]                                  ; $762a: $f0 $f1
    adc [hl]                                      ; $762c: $8e
    ld a, [bc]                                    ; $762d: $0a
    ld [bc], a                                    ; $762e: $02
    inc bc                                        ; $762f: $03
    adc [hl]                                      ; $7630: $8e
    ld [bc], a                                    ; $7631: $02
    dec b                                         ; $7632: $05
    ld [bc], a                                    ; $7633: $02
    adc [hl]                                      ; $7634: $8e
    ld [bc], a                                    ; $7635: $02
    ld [bc], a                                    ; $7636: $02
    inc bc                                        ; $7637: $03
    ld a, [bc]                                    ; $7638: $0a
    inc bc                                        ; $7639: $03
    inc bc                                        ; $763a: $03
    ld [bc], a                                    ; $763b: $02
    rlca                                          ; $763c: $07
    ld de, $2112                                  ; $763d: $11 $12 $21
    dec bc                                        ; $7640: $0b
    inc d                                         ; $7641: $14
    xor e                                         ; $7642: $ab
    ld c, c                                       ; $7643: $49
    inc b                                         ; $7644: $04
    dec b                                         ; $7645: $05
    pop de                                        ; $7646: $d1
    pop de                                        ; $7647: $d1
    xor $ef                                       ; $7648: $ee $ef
    inc e                                         ; $764a: $1c
    jr nz, jr_080_764f                            ; $764b: $20 $02

    dec b                                         ; $764d: $05
    dec b                                         ; $764e: $05

jr_080_764f:
    ld [bc], a                                    ; $764f: $02
    dec b                                         ; $7650: $05
    ld [bc], a                                    ; $7651: $02
    adc b                                         ; $7652: $88
    add b                                         ; $7653: $80
    ld [bc], a                                    ; $7654: $02
    ld [bc], a                                    ; $7655: $02
    add c                                         ; $7656: $81
    add c                                         ; $7657: $81
    ld [bc], a                                    ; $7658: $02
    rlca                                          ; $7659: $07
    ld bc, $0701                                  ; $765a: $01 $01 $07
    ld de, $2112                                  ; $765d: $11 $12 $21
    ld c, c                                       ; $7660: $49
    ld c, c                                       ; $7661: $49
    ld c, c                                       ; $7662: $49
    ld c, c                                       ; $7663: $49
    pop de                                        ; $7664: $d1
    pop de                                        ; $7665: $d1
    pop de                                        ; $7666: $d1
    pop de                                        ; $7667: $d1
    add hl, sp                                    ; $7668: $39
    ld [hl+], a                                   ; $7669: $22
    inc hl                                        ; $766a: $23
    rra                                           ; $766b: $1f
    ld [bc], a                                    ; $766c: $02
    ld [bc], a                                    ; $766d: $02
    ld [bc], a                                    ; $766e: $02
    rlca                                          ; $766f: $07
    add b                                         ; $7670: $80
    add b                                         ; $7671: $80
    add b                                         ; $7672: $80
    add b                                         ; $7673: $80
    add c                                         ; $7674: $81
    add c                                         ; $7675: $81
    add c                                         ; $7676: $81
    add c                                         ; $7677: $81
    ld bc, $0101                                  ; $7678: $01 $01 $01
    ld bc, $adac                                  ; $767b: $01 $ac $ad
    xor [hl]                                      ; $767e: $ae
    xor a                                         ; $767f: $af
    or b                                          ; $7680: $b0
    or c                                          ; $7681: $b1
    or d                                          ; $7682: $b2
    or e                                          ; $7683: $b3
    rlca                                          ; $7684: $07
    or h                                          ; $7685: $b4
    or l                                          ; $7686: $b5
    or [hl]                                       ; $7687: $b6
    dec bc                                        ; $7688: $0b
    inc d                                         ; $7689: $14
    dec d                                         ; $768a: $15
    ld d, $0e                                     ; $768b: $16 $0e
    ld c, $0e                                     ; $768d: $0e $0e
    ld c, $0e                                     ; $768f: $0e $0e
    ld c, $0e                                     ; $7691: $0e $0e
    ld c, $02                                     ; $7693: $0e $02
    ld a, [bc]                                    ; $7695: $0a
    ld a, [bc]                                    ; $7696: $0a
    ld a, [bc]                                    ; $7697: $0a
    ld [bc], a                                    ; $7698: $02
    ld [bc], a                                    ; $7699: $02
    ld [bc], a                                    ; $769a: $02
    dec b                                         ; $769b: $05
    ld a, [c]                                     ; $769c: $f2
    rst $38                                       ; $769d: $ff
    nop                                           ; $769e: $00
    inc bc                                        ; $769f: $03
    sub l                                         ; $76a0: $95
    ld bc, $1302                                  ; $76a1: $01 $02 $13
    rlca                                          ; $76a4: $07
    ld de, $2112                                  ; $76a5: $11 $12 $21
    dec bc                                        ; $76a8: $0b
    inc d                                         ; $76a9: $14
    dec d                                         ; $76aa: $15
    ld d, $02                                     ; $76ab: $16 $02
    ld [bc], a                                    ; $76ad: $02
    ld [bc], a                                    ; $76ae: $02
    dec b                                         ; $76af: $05
    ld a, [bc]                                    ; $76b0: $0a
    dec b                                         ; $76b1: $05
    ld [bc], a                                    ; $76b2: $02
    inc bc                                        ; $76b3: $03
    ld [bc], a                                    ; $76b4: $02
    ld [bc], a                                    ; $76b5: $02
    ld [bc], a                                    ; $76b6: $02
    dec b                                         ; $76b7: $05
    ld [bc], a                                    ; $76b8: $02
    inc bc                                        ; $76b9: $03
    ld [bc], a                                    ; $76ba: $02
    inc bc                                        ; $76bb: $03
    ld a, [c]                                     ; $76bc: $f2
    rst $38                                       ; $76bd: $ff
    inc e                                         ; $76be: $1c
    rra                                           ; $76bf: $1f
    or $01                                        ; $76c0: $f6 $01
    inc e                                         ; $76c2: $1c
    ld [hl+], a                                   ; $76c3: $22
    rlca                                          ; $76c4: $07
    ld de, $1f1c                                  ; $76c5: $11 $1c $1f
    dec bc                                        ; $76c8: $0b
    inc d                                         ; $76c9: $14
    inc e                                         ; $76ca: $1c
    rra                                           ; $76cb: $1f
    ld [bc], a                                    ; $76cc: $02
    rlca                                          ; $76cd: $07
    ld bc, $0301                                  ; $76ce: $01 $01 $03
    rlca                                          ; $76d1: $07
    ld bc, $0201                                  ; $76d2: $01 $01 $02
    rlca                                          ; $76d5: $07
    ld bc, $0201                                  ; $76d6: $01 $01 $02
    rlca                                          ; $76d9: $07
    ld bc, $2001                                  ; $76da: $01 $01 $20
    add hl, sp                                    ; $76dd: $39
    ld [hl+], a                                   ; $76de: $22
    jr nz, @+$25                                  ; $76df: $20 $23

    jr nz, jr_080_771c                            ; $76e1: $20 $39

    rra                                           ; $76e3: $1f
    jr nz, jr_080_771f                            ; $76e4: $20 $39

    ld [hl+], a                                   ; $76e6: $22
    jr nz, @+$22                                  ; $76e7: $20 $20

    add hl, sp                                    ; $76e9: $39
    ld [hl+], a                                   ; $76ea: $22
    jr nz, @+$03                                  ; $76eb: $20 $01

    ld bc, $0101                                  ; $76ed: $01 $01 $01
    ld bc, $0101                                  ; $76f0: $01 $01 $01
    ld bc, $0101                                  ; $76f3: $01 $01 $01
    ld bc, $0101                                  ; $76f6: $01 $01 $01
    ld bc, $0101                                  ; $76f9: $01 $01 $01
    ld a, [c]                                     ; $76fc: $f2
    rst $38                                       ; $76fd: $ff
    ld c, e                                       ; $76fe: $4b
    ld d, c                                       ; $76ff: $51
    or $01                                        ; $7700: $f6 $01
    jp nc, Jump_080_4851                          ; $7702: $d2 $51 $48

    ld c, c                                       ; $7705: $49
    ld c, d                                       ; $7706: $4a
    ld d, c                                       ; $7707: $51
    jp nc, $d1d1                                  ; $7708: $d2 $d1 $d1

    pop de                                        ; $770b: $d1
    rlca                                          ; $770c: $07
    rlca                                          ; $770d: $07
    add b                                         ; $770e: $80
    and b                                         ; $770f: $a0
    ld [bc], a                                    ; $7710: $02
    rlca                                          ; $7711: $07
    add b                                         ; $7712: $80
    and b                                         ; $7713: $a0
    add b                                         ; $7714: $80
    add b                                         ; $7715: $80
    add b                                         ; $7716: $80
    and b                                         ; $7717: $a0
    add b                                         ; $7718: $80
    add b                                         ; $7719: $80
    add b                                         ; $771a: $80
    add b                                         ; $771b: $80

jr_080_771c:
    jp nc, $d1d1                                  ; $771c: $d2 $d1 $d1

jr_080_771f:
    pop de                                        ; $771f: $d1
    or a                                          ; $7720: $b7
    pop de                                        ; $7721: $d1
    pop de                                        ; $7722: $d1
    pop de                                        ; $7723: $d1
    jp nc, $d1d1                                  ; $7724: $d2 $d1 $d1

    pop de                                        ; $7727: $d1
    jp nc, $d1d1                                  ; $7728: $d2 $d1 $d1

    pop de                                        ; $772b: $d1
    add b                                         ; $772c: $80
    add b                                         ; $772d: $80
    add b                                         ; $772e: $80
    add b                                         ; $772f: $80
    adc b                                         ; $7730: $88
    add b                                         ; $7731: $80
    add b                                         ; $7732: $80
    add b                                         ; $7733: $80
    add b                                         ; $7734: $80
    add b                                         ; $7735: $80
    add b                                         ; $7736: $80
    add b                                         ; $7737: $80
    add b                                         ; $7738: $80
    add b                                         ; $7739: $80
    add b                                         ; $773a: $80
    add b                                         ; $773b: $80
    add hl, sp                                    ; $773c: $39
    rra                                           ; $773d: $1f
    jr nz, jr_080_7779                            ; $773e: $20 $39

    ld [hl+], a                                   ; $7740: $22
    jr nz, jr_080_777c                            ; $7741: $20 $39

    ld [hl+], a                                   ; $7743: $22
    cp b                                          ; $7744: $b8
    cp c                                          ; $7745: $b9
    cp d                                          ; $7746: $ba
    cp e                                          ; $7747: $bb
    cp h                                          ; $7748: $bc
    cp l                                          ; $7749: $bd
    cp [hl]                                       ; $774a: $be
    cp a                                          ; $774b: $bf
    ld bc, $0101                                  ; $774c: $01 $01 $01
    ld bc, $0101                                  ; $774f: $01 $01 $01
    ld bc, $0901                                  ; $7752: $01 $01 $09
    add hl, bc                                    ; $7755: $09
    add hl, bc                                    ; $7756: $09
    add hl, bc                                    ; $7757: $09
    add hl, bc                                    ; $7758: $09
    add hl, bc                                    ; $7759: $09
    add hl, bc                                    ; $775a: $09
    add hl, bc                                    ; $775b: $09
    ld [hl+], a                                   ; $775c: $22
    inc e                                         ; $775d: $1c
    ld b, $fe                                     ; $775e: $06 $fe
    inc hl                                        ; $7760: $23
    inc e                                         ; $7761: $1c
    ldh a, [$f1]                                  ; $7762: $f0 $f1
    ret nz                                        ; $7764: $c0

    pop bc                                        ; $7765: $c1
    ld c, l                                       ; $7766: $4d
    ld c, l                                       ; $7767: $4d
    jp nz, $c4c3                                  ; $7768: $c2 $c3 $c4

    push bc                                       ; $776b: $c5
    ld bc, $0721                                  ; $776c: $01 $21 $07
    inc bc                                        ; $776f: $03
    ld bc, $0721                                  ; $7770: $01 $21 $07
    ld [bc], a                                    ; $7773: $02
    add hl, bc                                    ; $7774: $09
    add hl, bc                                    ; $7775: $09
    ld bc, $0901                                  ; $7776: $01 $01 $09

jr_080_7779:
    add hl, bc                                    ; $7779: $09
    add hl, bc                                    ; $777a: $09
    add hl, bc                                    ; $777b: $09

jr_080_777c:
    inc b                                         ; $777c: $04
    dec b                                         ; $777d: $05
    ld b, $fe                                     ; $777e: $06 $fe
    xor $ef                                       ; $7780: $ee $ef
    ldh a, [$f1]                                  ; $7782: $f0 $f1
    ld c, l                                       ; $7784: $4d
    ld c, l                                       ; $7785: $4d
    add $03                                       ; $7786: $c6 $03
    rst $00                                       ; $7788: $c7
    ret z                                         ; $7789: $c8

    ret                                           ; $778a: $c9


    inc de                                        ; $778b: $13
    inc bc                                        ; $778c: $03
    ld [bc], a                                    ; $778d: $02
    ld [bc], a                                    ; $778e: $02
    inc bc                                        ; $778f: $03
    ld [bc], a                                    ; $7790: $02
    inc bc                                        ; $7791: $03
    ld [bc], a                                    ; $7792: $02
    dec b                                         ; $7793: $05
    ld bc, $0901                                  ; $7794: $01 $01 $09
    ld [bc], a                                    ; $7797: $02
    add hl, bc                                    ; $7798: $09
    add hl, bc                                    ; $7799: $09
    add hl, bc                                    ; $779a: $09
    rlca                                          ; $779b: $07
    pop de                                        ; $779c: $d1
    pop de                                        ; $779d: $d1
    pop de                                        ; $779e: $d1
    jp nc, $d1d1                                  ; $779f: $d2 $d1 $d1

    pop de                                        ; $77a2: $d1
    jp nc, $d1d1                                  ; $77a3: $d2 $d1 $d1

    pop de                                        ; $77a6: $d1
    ld d, l                                       ; $77a7: $55
    pop de                                        ; $77a8: $d1
    pop de                                        ; $77a9: $d1
    pop de                                        ; $77aa: $d1
    pop de                                        ; $77ab: $d1
    add b                                         ; $77ac: $80
    add b                                         ; $77ad: $80
    add b                                         ; $77ae: $80
    add b                                         ; $77af: $80
    add b                                         ; $77b0: $80
    add b                                         ; $77b1: $80
    add b                                         ; $77b2: $80
    add b                                         ; $77b3: $80
    add b                                         ; $77b4: $80
    add b                                         ; $77b5: $80
    add b                                         ; $77b6: $80
    add b                                         ; $77b7: $80
    add b                                         ; $77b8: $80
    add b                                         ; $77b9: $80
    add b                                         ; $77ba: $80
    add b                                         ; $77bb: $80
    jp z, $bfcb                                   ; $77bc: $ca $cb $bf

    cp h                                          ; $77bf: $bc
    call z, $c2bf                                 ; $77c0: $cc $bf $c2
    jp z, Jump_080_4949                           ; $77c3: $ca $49 $49

    ld c, c                                       ; $77c6: $49
    ld c, c                                       ; $77c7: $49
    pop de                                        ; $77c8: $d1
    pop de                                        ; $77c9: $d1
    pop de                                        ; $77ca: $d1
    pop de                                        ; $77cb: $d1
    add hl, bc                                    ; $77cc: $09
    add hl, bc                                    ; $77cd: $09
    add hl, bc                                    ; $77ce: $09
    add hl, bc                                    ; $77cf: $09
    add hl, bc                                    ; $77d0: $09
    add hl, bc                                    ; $77d1: $09
    add hl, bc                                    ; $77d2: $09
    add hl, bc                                    ; $77d3: $09
    add b                                         ; $77d4: $80
    add b                                         ; $77d5: $80
    add b                                         ; $77d6: $80
    add b                                         ; $77d7: $80
    add b                                         ; $77d8: $80
    add b                                         ; $77d9: $80
    add b                                         ; $77da: $80
    add b                                         ; $77db: $80
    cp l                                          ; $77dc: $bd
    cp [hl]                                       ; $77dd: $be
    call $cbce                                    ; $77de: $cd $ce $cb
    rst $08                                       ; $77e1: $cf
    ret nc                                        ; $77e2: $d0

    pop de                                        ; $77e3: $d1
    ld c, c                                       ; $77e4: $49
    ld c, c                                       ; $77e5: $49
    ld c, c                                       ; $77e6: $49
    ld c, c                                       ; $77e7: $49
    pop de                                        ; $77e8: $d1
    pop de                                        ; $77e9: $d1
    pop de                                        ; $77ea: $d1
    pop de                                        ; $77eb: $d1
    add hl, bc                                    ; $77ec: $09
    add hl, bc                                    ; $77ed: $09
    add hl, bc                                    ; $77ee: $09
    add hl, bc                                    ; $77ef: $09
    add hl, bc                                    ; $77f0: $09
    add hl, bc                                    ; $77f1: $09
    add hl, bc                                    ; $77f2: $09
    add hl, bc                                    ; $77f3: $09
    add b                                         ; $77f4: $80
    add b                                         ; $77f5: $80
    add b                                         ; $77f6: $80
    add b                                         ; $77f7: $80
    add b                                         ; $77f8: $80
    add b                                         ; $77f9: $80
    add b                                         ; $77fa: $80
    add b                                         ; $77fb: $80
    jp nc, Jump_000_12d3                          ; $77fc: $d2 $d3 $12

    ld hl, $d5d4                                  ; $77ff: $21 $d4 $d5
    dec d                                         ; $7802: $15
    ld d, $49                                     ; $7803: $16 $49
    ld c, c                                       ; $7805: $49
    ld c, c                                       ; $7806: $49
    ld c, c                                       ; $7807: $49
    pop de                                        ; $7808: $d1
    pop de                                        ; $7809: $d1
    pop de                                        ; $780a: $d1
    pop de                                        ; $780b: $d1
    add hl, bc                                    ; $780c: $09
    add hl, bc                                    ; $780d: $09
    rlca                                          ; $780e: $07
    rlca                                          ; $780f: $07
    add hl, bc                                    ; $7810: $09
    add hl, bc                                    ; $7811: $09
    rlca                                          ; $7812: $07
    ld [bc], a                                    ; $7813: $02
    add b                                         ; $7814: $80
    add b                                         ; $7815: $80
    add b                                         ; $7816: $80
    add b                                         ; $7817: $80
    add b                                         ; $7818: $80
    add b                                         ; $7819: $80
    add b                                         ; $781a: $80
    add b                                         ; $781b: $80
    inc b                                         ; $781c: $04
    dec b                                         ; $781d: $05
    ld b, $fe                                     ; $781e: $06 $fe
    xor $ef                                       ; $7820: $ee $ef
    ldh a, [$f1]                                  ; $7822: $f0 $f1
    ld a, [c]                                     ; $7824: $f2
    rst $38                                       ; $7825: $ff
    nop                                           ; $7826: $00
    inc bc                                        ; $7827: $03
    or $01                                        ; $7828: $f6 $01
    ld [bc], a                                    ; $782a: $02
    inc de                                        ; $782b: $13
    ld [bc], a                                    ; $782c: $02
    inc bc                                        ; $782d: $03
    ld [bc], a                                    ; $782e: $02
    inc bc                                        ; $782f: $03
    dec b                                         ; $7830: $05
    ld [bc], a                                    ; $7831: $02
    ld [bc], a                                    ; $7832: $02
    dec b                                         ; $7833: $05
    ld [bc], a                                    ; $7834: $02
    inc bc                                        ; $7835: $03
    ld [bc], a                                    ; $7836: $02
    inc bc                                        ; $7837: $03
    ld [bc], a                                    ; $7838: $02
    dec b                                         ; $7839: $05
    ld [bc], a                                    ; $783a: $02
    dec b                                         ; $783b: $05
    inc b                                         ; $783c: $04
    dec b                                         ; $783d: $05

jr_080_783e:
    ld b, $fe                                     ; $783e: $06 $fe
    xor $ef                                       ; $7840: $ee $ef
    ldh a, [$f1]                                  ; $7842: $f0 $f1
    ld a, [c]                                     ; $7844: $f2
    add $4d                                       ; $7845: $c6 $4d
    ld c, l                                       ; $7847: $4d
    or $c9                                        ; $7848: $f6 $c9
    ret z                                         ; $784a: $c8

    rst $00                                       ; $784b: $c7
    inc bc                                        ; $784c: $03
    ld [bc], a                                    ; $784d: $02
    ld [bc], a                                    ; $784e: $02
    ld [bc], a                                    ; $784f: $02
    ld [bc], a                                    ; $7850: $02
    ld [bc], a                                    ; $7851: $02
    inc bc                                        ; $7852: $03
    inc bc                                        ; $7853: $03
    ld [bc], a                                    ; $7854: $02
    add hl, hl                                    ; $7855: $29
    ld hl, $0721                                  ; $7856: $21 $21 $07
    add hl, hl                                    ; $7859: $29
    add hl, hl                                    ; $785a: $29
    add hl, hl                                    ; $785b: $29
    inc b                                         ; $785c: $04
    dec b                                         ; $785d: $05
    inc e                                         ; $785e: $1c
    ld [hl+], a                                   ; $785f: $22
    xor $ef                                       ; $7860: $ee $ef
    inc e                                         ; $7862: $1c
    rra                                           ; $7863: $1f
    ld c, l                                       ; $7864: $4d
    ld c, l                                       ; $7865: $4d
    sub $b8                                       ; $7866: $d6 $b8
    push bc                                       ; $7868: $c5
    call nz, $bcd7                                ; $7869: $c4 $d7 $bc
    ld [bc], a                                    ; $786c: $02
    rlca                                          ; $786d: $07
    ld bc, $0301                                  ; $786e: $01 $01 $03
    rlca                                          ; $7871: $07
    ld bc, $2101                                  ; $7872: $01 $01 $21
    ld hl, $0909                                  ; $7875: $21 $09 $09
    add hl, hl                                    ; $7878: $29
    add hl, hl                                    ; $7879: $29
    add hl, bc                                    ; $787a: $09
    add hl, bc                                    ; $787b: $09
    inc hl                                        ; $787c: $23
    jr nz, jr_080_78b8                            ; $787d: $20 $39

    rra                                           ; $787f: $1f
    jr nz, jr_080_78bb                            ; $7880: $20 $39

    ld [hl+], a                                   ; $7882: $22
    jr nz, jr_080_783e                            ; $7883: $20 $b9

    cp d                                          ; $7885: $ba
    cp e                                          ; $7886: $bb
    ret nz                                        ; $7887: $c0

    cp l                                          ; $7888: $bd
    cp [hl]                                       ; $7889: $be
    cp a                                          ; $788a: $bf
    jp nz, $0101                                  ; $788b: $c2 $01 $01

    ld bc, $0101                                  ; $788e: $01 $01 $01
    ld bc, $0101                                  ; $7891: $01 $01 $01
    add hl, bc                                    ; $7894: $09
    add hl, bc                                    ; $7895: $09
    add hl, bc                                    ; $7896: $09
    add hl, bc                                    ; $7897: $09
    add hl, bc                                    ; $7898: $09
    add hl, bc                                    ; $7899: $09
    add hl, bc                                    ; $789a: $09
    add hl, bc                                    ; $789b: $09
    rlca                                          ; $789c: $07
    ld de, $2112                                  ; $789d: $11 $12 $21
    dec bc                                        ; $78a0: $0b
    inc d                                         ; $78a1: $14
    dec d                                         ; $78a2: $15
    ld d, $49                                     ; $78a3: $16 $49
    ld c, c                                       ; $78a5: $49
    ld c, c                                       ; $78a6: $49
    ld c, c                                       ; $78a7: $49
    pop de                                        ; $78a8: $d1
    pop de                                        ; $78a9: $d1
    pop de                                        ; $78aa: $d1
    pop de                                        ; $78ab: $d1
    dec b                                         ; $78ac: $05
    ld [bc], a                                    ; $78ad: $02
    inc bc                                        ; $78ae: $03
    ld [bc], a                                    ; $78af: $02
    dec b                                         ; $78b0: $05
    inc bc                                        ; $78b1: $03
    ld [bc], a                                    ; $78b2: $02
    inc bc                                        ; $78b3: $03
    add b                                         ; $78b4: $80
    add b                                         ; $78b5: $80
    add b                                         ; $78b6: $80
    add b                                         ; $78b7: $80

jr_080_78b8:
    add b                                         ; $78b8: $80
    add b                                         ; $78b9: $80
    add b                                         ; $78ba: $80

jr_080_78bb:
    add b                                         ; $78bb: $80
    rlca                                          ; $78bc: $07
    ld de, $d2d3                                  ; $78bd: $11 $d3 $d2
    dec bc                                        ; $78c0: $0b
    inc d                                         ; $78c1: $14
    push de                                       ; $78c2: $d5
    call nc, Call_080_4949                        ; $78c3: $d4 $49 $49
    ld c, c                                       ; $78c6: $49
    ld c, c                                       ; $78c7: $49
    pop de                                        ; $78c8: $d1
    pop de                                        ; $78c9: $d1
    pop de                                        ; $78ca: $d1
    pop de                                        ; $78cb: $d1
    rlca                                          ; $78cc: $07
    rlca                                          ; $78cd: $07
    add hl, hl                                    ; $78ce: $29
    add hl, hl                                    ; $78cf: $29
    ld [bc], a                                    ; $78d0: $02
    rlca                                          ; $78d1: $07
    add hl, hl                                    ; $78d2: $29
    add hl, hl                                    ; $78d3: $29
    add b                                         ; $78d4: $80
    add b                                         ; $78d5: $80
    add b                                         ; $78d6: $80
    add b                                         ; $78d7: $80
    add b                                         ; $78d8: $80
    add b                                         ; $78d9: $80
    add b                                         ; $78da: $80
    add b                                         ; $78db: $80
    adc $cd                                       ; $78dc: $ce $cd
    rst $08                                       ; $78de: $cf
    jp z, $d0d1                                   ; $78df: $ca $d1 $d0

    rst $08                                       ; $78e2: $cf
    call z, Call_080_4949                         ; $78e3: $cc $49 $49
    ld c, c                                       ; $78e6: $49
    ld c, c                                       ; $78e7: $49
    pop de                                        ; $78e8: $d1
    pop de                                        ; $78e9: $d1
    pop de                                        ; $78ea: $d1
    pop de                                        ; $78eb: $d1
    add hl, hl                                    ; $78ec: $29
    add hl, hl                                    ; $78ed: $29
    add hl, bc                                    ; $78ee: $09
    add hl, bc                                    ; $78ef: $09
    add hl, hl                                    ; $78f0: $29
    add hl, hl                                    ; $78f1: $29
    add hl, bc                                    ; $78f2: $09
    add hl, bc                                    ; $78f3: $09
    add b                                         ; $78f4: $80
    add b                                         ; $78f5: $80
    add b                                         ; $78f6: $80
    add b                                         ; $78f7: $80
    add b                                         ; $78f8: $80
    add b                                         ; $78f9: $80
    add b                                         ; $78fa: $80
    add b                                         ; $78fb: $80
    res 7, a                                      ; $78fc: $cb $bf
    cp h                                          ; $78fe: $bc
    cp l                                          ; $78ff: $bd
    cp a                                          ; $7900: $bf
    jp nz, $cbca                                  ; $7901: $c2 $ca $cb

    ld c, c                                       ; $7904: $49
    ld c, c                                       ; $7905: $49
    ld c, c                                       ; $7906: $49
    ld c, c                                       ; $7907: $49
    pop de                                        ; $7908: $d1
    pop de                                        ; $7909: $d1
    pop de                                        ; $790a: $d1
    pop de                                        ; $790b: $d1
    add hl, bc                                    ; $790c: $09
    add hl, bc                                    ; $790d: $09
    add hl, bc                                    ; $790e: $09
    add hl, bc                                    ; $790f: $09
    add hl, bc                                    ; $7910: $09
    add hl, bc                                    ; $7911: $09
    add hl, bc                                    ; $7912: $09
    add hl, bc                                    ; $7913: $09
    add b                                         ; $7914: $80
    add b                                         ; $7915: $80
    add b                                         ; $7916: $80
    add b                                         ; $7917: $80
    add b                                         ; $7918: $80
    add b                                         ; $7919: $80
    add b                                         ; $791a: $80
    add b                                         ; $791b: $80
    jp nc, $d1d1                                  ; $791c: $d2 $d1 $d1

    pop de                                        ; $791f: $d1
    jp nc, $d1d1                                  ; $7920: $d2 $d1 $d1

    pop de                                        ; $7923: $d1
    ld c, d                                       ; $7924: $4a
    pop de                                        ; $7925: $d1
    pop de                                        ; $7926: $d1
    pop de                                        ; $7927: $d1
    pop de                                        ; $7928: $d1
    pop de                                        ; $7929: $d1
    pop de                                        ; $792a: $d1
    pop de                                        ; $792b: $d1
    add b                                         ; $792c: $80
    add b                                         ; $792d: $80
    add b                                         ; $792e: $80
    add b                                         ; $792f: $80
    add b                                         ; $7930: $80
    add b                                         ; $7931: $80
    add b                                         ; $7932: $80
    add b                                         ; $7933: $80
    add b                                         ; $7934: $80
    add b                                         ; $7935: $80
    add b                                         ; $7936: $80
    add b                                         ; $7937: $80
    add b                                         ; $7938: $80
    add b                                         ; $7939: $80
    add b                                         ; $793a: $80
    add b                                         ; $793b: $80
    rlca                                          ; $793c: $07
    nop                                           ; $793d: $00
    rlca                                          ; $793e: $07
    nop                                           ; $793f: $00
    and b                                         ; $7940: $a0
    dec b                                         ; $7941: $05
    pop de                                        ; $7942: $d1
    jp nc, $d4d3                                  ; $7943: $d2 $d3 $d4

    pop de                                        ; $7946: $d1
    jp nc, $d5d5                                  ; $7947: $d2 $d5 $d5

    pop de                                        ; $794a: $d1
    jp nc, $d6d6                                  ; $794b: $d2 $d6 $d6

    pop de                                        ; $794e: $d1
    jp nc, $d8d7                                  ; $794f: $d2 $d7 $d8

    add b                                         ; $7952: $80
    add b                                         ; $7953: $80
    inc bc                                        ; $7954: $03
    inc bc                                        ; $7955: $03
    add b                                         ; $7956: $80
    add b                                         ; $7957: $80
    ld bc, $8001                                  ; $7958: $01 $01 $80
    add b                                         ; $795b: $80
    ld bc, $8001                                  ; $795c: $01 $01 $80
    add b                                         ; $795f: $80
    ld bc, $d901                                  ; $7960: $01 $01 $d9
    jp c, $dcdb                                   ; $7963: $da $db $dc

    db $dd                                        ; $7966: $dd
    sbc $df                                       ; $7967: $de $df
    ldh [$e1], a                                  ; $7969: $e0 $e1
    ld [c], a                                     ; $796b: $e2
    db $e3                                        ; $796c: $e3
    db $e4                                        ; $796d: $e4
    push hl                                       ; $796e: $e5
    and $e7                                       ; $796f: $e6 $e7
    add sp, $03                                   ; $7971: $e8 $03
    inc bc                                        ; $7973: $03
    ld [bc], a                                    ; $7974: $02
    ld [bc], a                                    ; $7975: $02
    ld bc, $0203                                  ; $7976: $01 $03 $02
    ld [bc], a                                    ; $7979: $02
    ld bc, $0203                                  ; $797a: $01 $03 $02
    ld [bc], a                                    ; $797d: $02
    ld bc, $0203                                  ; $797e: $01 $03 $02
    ld [bc], a                                    ; $7981: $02
    jp hl                                         ; $7982: $e9


    ld [$d5d5], a                                 ; $7983: $ea $d5 $d5
    db $eb                                        ; $7986: $eb
    db $ec                                        ; $7987: $ec
    sub $d6                                       ; $7988: $d6 $d6
    db $ed                                        ; $798a: $ed
    xor $ef                                       ; $798b: $ee $ef
    ldh a, [$f1]                                  ; $798d: $f0 $f1
    ld a, [c]                                     ; $798f: $f2
    di                                            ; $7990: $f3
    db $f4                                        ; $7991: $f4
    ld [bc], a                                    ; $7992: $02
    ld bc, $0101                                  ; $7993: $01 $01 $01
    ld [bc], a                                    ; $7996: $02
    ld bc, $0101                                  ; $7997: $01 $01 $01
    ld [bc], a                                    ; $799a: $02
    ld bc, $0101                                  ; $799b: $01 $01 $01
    ld [bc], a                                    ; $799e: $02
    ld bc, $0101                                  ; $799f: $01 $01 $01
    push de                                       ; $79a2: $d5
    push de                                       ; $79a3: $d5
    db $dd                                        ; $79a4: $dd
    db $db                                        ; $79a5: $db
    sub $d6                                       ; $79a6: $d6 $d6
    pop hl                                        ; $79a8: $e1
    rst $18                                       ; $79a9: $df
    push af                                       ; $79aa: $f5
    or $f7                                        ; $79ab: $f6 $f7
    db $e3                                        ; $79ad: $e3
    ld hl, sp-$07                                 ; $79ae: $f8 $f9
    ld a, [$01e7]                                 ; $79b0: $fa $e7 $01
    ld bc, $0201                                  ; $79b3: $01 $01 $02
    ld bc, $0101                                  ; $79b6: $01 $01 $01
    ld [bc], a                                    ; $79b9: $02
    ld bc, $0101                                  ; $79ba: $01 $01 $01
    ld [bc], a                                    ; $79bd: $02
    ld bc, $0101                                  ; $79be: $01 $01 $01
    ld [bc], a                                    ; $79c1: $02
    pop de                                        ; $79c2: $d1
    jp nc, $fcfb                                  ; $79c3: $d2 $fb $fc

    pop de                                        ; $79c6: $d1
    jp nc, $fefd                                  ; $79c7: $d2 $fd $fe

    pop de                                        ; $79ca: $d1
    jp nc, Jump_000_00ff                          ; $79cb: $d2 $ff $00

    pop de                                        ; $79ce: $d1
    jp nc, $0201                                  ; $79cf: $d2 $01 $02

    add b                                         ; $79d2: $80
    add b                                         ; $79d3: $80
    ld bc, $8001                                  ; $79d4: $01 $01 $80
    add b                                         ; $79d7: $80
    ld bc, $8001                                  ; $79d8: $01 $01 $80
    add b                                         ; $79db: $80
    ld bc, $8001                                  ; $79dc: $01 $01 $80
    add b                                         ; $79df: $80
    rlca                                          ; $79e0: $07
    rlca                                          ; $79e1: $07
    inc bc                                        ; $79e2: $03
    inc b                                         ; $79e3: $04
    dec b                                         ; $79e4: $05
    ld b, $03                                     ; $79e5: $06 $03
    rlca                                          ; $79e7: $07
    ld [$0a09], sp                                ; $79e8: $08 $09 $0a
    dec bc                                        ; $79eb: $0b
    inc c                                         ; $79ec: $0c
    dec c                                         ; $79ed: $0d
    ld c, $0f                                     ; $79ee: $0e $0f
    db $10                                        ; $79f0: $10
    ld de, $0301                                  ; $79f1: $11 $01 $03
    inc bc                                        ; $79f4: $03
    inc bc                                        ; $79f5: $03
    ld bc, $0707                                  ; $79f6: $01 $07 $07
    rlca                                          ; $79f9: $07
    ld bc, $0607                                  ; $79fa: $01 $07 $06
    ld b, $07                                     ; $79fd: $06 $07
    rlca                                          ; $79ff: $07
    dec b                                         ; $7a00: $05
    ld b, $12                                     ; $7a01: $06 $12
    inc de                                        ; $7a03: $13
    inc d                                         ; $7a04: $14
    dec d                                         ; $7a05: $15
    ld d, $17                                     ; $7a06: $16 $17
    jr @+$1b                                      ; $7a08: $18 $19

    ld a, [de]                                    ; $7a0a: $1a
    dec de                                        ; $7a0b: $1b
    inc e                                         ; $7a0c: $1c
    dec e                                         ; $7a0d: $1d
    ld e, $1f                                     ; $7a0e: $1e $1f
    ld bc, $0302                                  ; $7a10: $01 $02 $03
    ld bc, $0101                                  ; $7a13: $01 $01 $01
    rlca                                          ; $7a16: $07
    ld bc, $0101                                  ; $7a17: $01 $01 $01
    rlca                                          ; $7a1a: $07
    ld bc, $0101                                  ; $7a1b: $01 $01 $01
    rlca                                          ; $7a1e: $07
    rlca                                          ; $7a1f: $07
    rlca                                          ; $7a20: $07
    rlca                                          ; $7a21: $07
    jr nz, @+$23                                  ; $7a22: $20 $21

    ld [hl+], a                                   ; $7a24: $22
    ld [de], a                                    ; $7a25: $12
    inc hl                                        ; $7a26: $23
    inc h                                         ; $7a27: $24
    dec h                                         ; $7a28: $25
    add hl, bc                                    ; $7a29: $09
    ld h, $1c                                     ; $7a2a: $26 $1c
    daa                                           ; $7a2c: $27
    dec c                                         ; $7a2d: $0d
    ld c, $0f                                     ; $7a2e: $0e $0f
    db $10                                        ; $7a30: $10
    ld de, $0101                                  ; $7a31: $11 $01 $01
    ld bc, $0123                                  ; $7a34: $01 $23 $01
    ld bc, $0701                                  ; $7a37: $01 $01 $07
    ld bc, $0101                                  ; $7a3a: $01 $01 $01
    rlca                                          ; $7a3d: $07
    rlca                                          ; $7a3e: $07
    rlca                                          ; $7a3f: $07
    rlca                                          ; $7a40: $07
    rlca                                          ; $7a41: $07
    pop de                                        ; $7a42: $d1
    jp nc, Jump_000_2928                          ; $7a43: $d2 $28 $29

    pop de                                        ; $7a46: $d1
    jp nc, $2a11                                  ; $7a47: $d2 $11 $2a

    pop de                                        ; $7a4a: $d1
    dec hl                                        ; $7a4b: $2b
    inc l                                         ; $7a4c: $2c
    inc l                                         ; $7a4d: $2c
    pop de                                        ; $7a4e: $d1
    pop de                                        ; $7a4f: $d1
    pop de                                        ; $7a50: $d1
    pop de                                        ; $7a51: $d1
    add b                                         ; $7a52: $80
    add b                                         ; $7a53: $80
    rlca                                          ; $7a54: $07
    ld b, $80                                     ; $7a55: $06 $80
    add b                                         ; $7a57: $80
    daa                                           ; $7a58: $27
    ld b, $80                                     ; $7a59: $06 $80
    add b                                         ; $7a5b: $80
    add b                                         ; $7a5c: $80
    add b                                         ; $7a5d: $80
    add b                                         ; $7a5e: $80
    add b                                         ; $7a5f: $80
    add b                                         ; $7a60: $80
    add b                                         ; $7a61: $80
    dec l                                         ; $7a62: $2d
    ld l, $2f                                     ; $7a63: $2e $2f
    jr nc, jr_080_7a98                            ; $7a65: $30 $31

    ld [hl-], a                                   ; $7a67: $32
    inc sp                                        ; $7a68: $33
    inc [hl]                                      ; $7a69: $34
    dec [hl]                                      ; $7a6a: $35
    ld [hl], $11                                  ; $7a6b: $36 $11
    scf                                           ; $7a6d: $37
    jp nc, $3938                                  ; $7a6e: $d2 $38 $39

    ld a, [hl-]                                   ; $7a71: $3a
    ld b, $05                                     ; $7a72: $06 $05
    ld b, $06                                     ; $7a74: $06 $06
    dec b                                         ; $7a76: $05
    ld b, $06                                     ; $7a77: $06 $06
    ld b, $80                                     ; $7a79: $06 $80
    ld b, $05                                     ; $7a7b: $06 $05
    ld b, $80                                     ; $7a7d: $06 $80
    ld b, $06                                     ; $7a7f: $06 $06
    dec b                                         ; $7a81: $05
    dec sp                                        ; $7a82: $3b
    inc a                                         ; $7a83: $3c
    jr z, jr_080_7aaf                             ; $7a84: $28 $29

    dec a                                         ; $7a86: $3d
    ld a, $11                                     ; $7a87: $3e $11
    ld a, [hl+]                                   ; $7a89: $2a
    ccf                                           ; $7a8a: $3f
    ld b, b                                       ; $7a8b: $40
    ld b, c                                       ; $7a8c: $41
    ld b, d                                       ; $7a8d: $42
    ld b, e                                       ; $7a8e: $43
    ld b, h                                       ; $7a8f: $44
    ld b, l                                       ; $7a90: $45
    ld b, [hl]                                    ; $7a91: $46
    dec b                                         ; $7a92: $05
    ld b, $06                                     ; $7a93: $06 $06
    dec b                                         ; $7a95: $05
    ld b, $06                                     ; $7a96: $06 $06

jr_080_7a98:
    ld h, $06                                     ; $7a98: $26 $06
    dec b                                         ; $7a9a: $05
    dec b                                         ; $7a9b: $05
    ld b, $01                                     ; $7a9c: $06 $01
    dec b                                         ; $7a9e: $05
    ld b, $06                                     ; $7a9f: $06 $06
    ld bc, $2e2d                                  ; $7aa1: $01 $2d $2e
    cpl                                           ; $7aa4: $2f
    jr nc, jr_080_7ad8                            ; $7aa5: $30 $31

    ld [hl-], a                                   ; $7aa7: $32
    inc sp                                        ; $7aa8: $33
    inc [hl]                                      ; $7aa9: $34
    ld b, d                                       ; $7aaa: $42
    ld [hl], $11                                  ; $7aab: $36 $11
    scf                                           ; $7aad: $37
    ld b, [hl]                                    ; $7aae: $46

jr_080_7aaf:
    jr c, @+$3b                                   ; $7aaf: $38 $39

    ld a, [hl-]                                   ; $7ab1: $3a
    dec b                                         ; $7ab2: $05
    dec b                                         ; $7ab3: $05
    ld b, $05                                     ; $7ab4: $06 $05
    ld b, $05                                     ; $7ab6: $06 $05
    ld b, $06                                     ; $7ab8: $06 $06
    ld hl, $0506                                  ; $7aba: $21 $06 $05
    ld b, $21                                     ; $7abd: $06 $21
    dec b                                         ; $7abf: $05
    ld b, $06                                     ; $7ac0: $06 $06
    pop de                                        ; $7ac2: $d1
    ld b, a                                       ; $7ac3: $47
    inc l                                         ; $7ac4: $2c
    inc l                                         ; $7ac5: $2c
    pop de                                        ; $7ac6: $d1
    jp nc, $d5d5                                  ; $7ac7: $d2 $d5 $d5

    pop de                                        ; $7aca: $d1
    jp nc, $d6d6                                  ; $7acb: $d2 $d6 $d6

    pop de                                        ; $7ace: $d1
    jp nc, Jump_080_4948                          ; $7acf: $d2 $48 $49

    add b                                         ; $7ad2: $80
    add b                                         ; $7ad3: $80
    add b                                         ; $7ad4: $80
    add b                                         ; $7ad5: $80
    add b                                         ; $7ad6: $80
    add b                                         ; $7ad7: $80

jr_080_7ad8:
    ld bc, $8001                                  ; $7ad8: $01 $01 $80
    add b                                         ; $7adb: $80
    ld bc, $8001                                  ; $7adc: $01 $01 $80
    add b                                         ; $7adf: $80
    ld bc, $4a01                                  ; $7ae0: $01 $01 $4a
    ld c, e                                       ; $7ae3: $4b
    ld d, $4c                                     ; $7ae4: $16 $4c
    db $dd                                        ; $7ae6: $dd
    rlca                                          ; $7ae7: $07
    ld [$e109], sp                                ; $7ae8: $08 $09 $e1
    dec bc                                        ; $7aeb: $0b
    inc c                                         ; $7aec: $0c
    dec c                                         ; $7aed: $0d
    ld c, l                                       ; $7aee: $4d
    rrca                                          ; $7aef: $0f
    db $10                                        ; $7af0: $10
    ld de, $0780                                  ; $7af1: $11 $80 $07
    dec h                                         ; $7af4: $25
    ld b, $01                                     ; $7af5: $06 $01
    rlca                                          ; $7af7: $07
    ld b, $06                                     ; $7af8: $06 $06
    ld bc, $0607                                  ; $7afa: $01 $07 $06
    dec b                                         ; $7afd: $05
    ld bc, $0607                                  ; $7afe: $01 $07 $06
    ld b, $4e                                     ; $7b01: $06 $4e
    ld c, a                                       ; $7b03: $4f
    ld d, b                                       ; $7b04: $50
    ld d, c                                       ; $7b05: $51
    ld d, $52                                     ; $7b06: $16 $52
    ld d, e                                       ; $7b08: $53
    ld d, h                                       ; $7b09: $54
    ld a, [de]                                    ; $7b0a: $1a
    ld d, l                                       ; $7b0b: $55
    ld d, [hl]                                    ; $7b0c: $56
    ld d, [hl]                                    ; $7b0d: $56
    ld e, $57                                     ; $7b0e: $1e $57
    ld e, b                                       ; $7b10: $58
    ld e, b                                       ; $7b11: $58
    ld b, $01                                     ; $7b12: $06 $01
    ld bc, $0601                                  ; $7b14: $01 $01 $06
    ld bc, $0101                                  ; $7b17: $01 $01 $01
    rlca                                          ; $7b1a: $07
    ld bc, $0101                                  ; $7b1b: $01 $01 $01
    dec b                                         ; $7b1e: $05
    ld bc, $0101                                  ; $7b1f: $01 $01 $01
    ld e, c                                       ; $7b22: $59
    ld e, d                                       ; $7b23: $5a
    ld e, e                                       ; $7b24: $5b
    ld c, h                                       ; $7b25: $4c
    ld e, h                                       ; $7b26: $5c
    ld e, l                                       ; $7b27: $5d
    ld e, [hl]                                    ; $7b28: $5e
    add hl, bc                                    ; $7b29: $09
    ld d, [hl]                                    ; $7b2a: $56
    ld d, [hl]                                    ; $7b2b: $56
    ld e, a                                       ; $7b2c: $5f
    dec c                                         ; $7b2d: $0d
    ld e, b                                       ; $7b2e: $58
    ld e, b                                       ; $7b2f: $58
    ld h, b                                       ; $7b30: $60
    ld de, $0101                                  ; $7b31: $11 $01 $01
    ld bc, $0105                                  ; $7b34: $01 $05 $01
    ld bc, $0601                                  ; $7b37: $01 $01 $06
    ld bc, $0101                                  ; $7b3a: $01 $01 $01
    rlca                                          ; $7b3d: $07
    ld bc, $0101                                  ; $7b3e: $01 $01 $01
    rlca                                          ; $7b41: $07
    call c, $dae9                                 ; $7b42: $dc $e9 $da
    reti                                          ; $7b45: $d9


    ldh [$eb], a                                  ; $7b46: $e0 $eb
    ld h, c                                       ; $7b48: $61
    ld h, d                                       ; $7b49: $62
    db $e4                                        ; $7b4a: $e4
    db $ed                                        ; $7b4b: $ed
    ld h, e                                       ; $7b4c: $63
    ld h, h                                       ; $7b4d: $64
    add sp, -$0f                                  ; $7b4e: $e8 $f1
    ld h, l                                       ; $7b50: $65
    ld h, [hl]                                    ; $7b51: $66
    ld [bc], a                                    ; $7b52: $02
    ld [bc], a                                    ; $7b53: $02
    inc hl                                        ; $7b54: $23
    inc hl                                        ; $7b55: $23
    ld [bc], a                                    ; $7b56: $02
    ld [bc], a                                    ; $7b57: $02
    inc bc                                        ; $7b58: $03
    inc bc                                        ; $7b59: $03
    ld [bc], a                                    ; $7b5a: $02
    ld [bc], a                                    ; $7b5b: $02
    inc bc                                        ; $7b5c: $03
    inc bc                                        ; $7b5d: $03
    ld [bc], a                                    ; $7b5e: $02
    ld [bc], a                                    ; $7b5f: $02
    inc bc                                        ; $7b60: $03
    inc bc                                        ; $7b61: $03
    ld h, a                                       ; $7b62: $67
    db $d3                                        ; $7b63: $d3
    reti                                          ; $7b64: $d9


    reti                                          ; $7b65: $d9


    ld l, b                                       ; $7b66: $68
    ld l, c                                       ; $7b67: $69
    ld l, d                                       ; $7b68: $6a
    ld l, d                                       ; $7b69: $6a
    ld l, e                                       ; $7b6a: $6b
    ld l, h                                       ; $7b6b: $6c
    db $d3                                        ; $7b6c: $d3
    reti                                          ; $7b6d: $d9


    ld l, l                                       ; $7b6e: $6d
    ld l, [hl]                                    ; $7b6f: $6e
    reti                                          ; $7b70: $d9


    ld l, d                                       ; $7b71: $6a
    inc bc                                        ; $7b72: $03
    inc hl                                        ; $7b73: $23
    inc hl                                        ; $7b74: $23
    inc hl                                        ; $7b75: $23
    inc b                                         ; $7b76: $04
    inc bc                                        ; $7b77: $03
    inc bc                                        ; $7b78: $03
    inc bc                                        ; $7b79: $03
    inc b                                         ; $7b7a: $04
    inc bc                                        ; $7b7b: $03
    inc hl                                        ; $7b7c: $23
    inc hl                                        ; $7b7d: $23
    inc b                                         ; $7b7e: $04
    inc bc                                        ; $7b7f: $03
    inc hl                                        ; $7b80: $23
    inc bc                                        ; $7b81: $03
    db $d3                                        ; $7b82: $d3
    reti                                          ; $7b83: $d9


    jp nc, $d3d1                                  ; $7b84: $d2 $d1 $d3

    ld l, c                                       ; $7b87: $69
    jp nc, $d9d1                                  ; $7b88: $d2 $d1 $d9

    ld l, h                                       ; $7b8b: $6c
    jp nc, Jump_080_6ad1                          ; $7b8c: $d2 $d1 $6a

    ld l, [hl]                                    ; $7b8f: $6e
    jp nc, $23d1                                  ; $7b90: $d2 $d1 $23

    inc hl                                        ; $7b93: $23
    add b                                         ; $7b94: $80
    add b                                         ; $7b95: $80
    inc hl                                        ; $7b96: $23
    inc hl                                        ; $7b97: $23
    add b                                         ; $7b98: $80
    add b                                         ; $7b99: $80
    inc hl                                        ; $7b9a: $23
    inc hl                                        ; $7b9b: $23
    add b                                         ; $7b9c: $80
    add b                                         ; $7b9d: $80
    inc bc                                        ; $7b9e: $03
    inc hl                                        ; $7b9f: $23
    add b                                         ; $7ba0: $80
    add b                                         ; $7ba1: $80
    ld b, $05                                     ; $7ba2: $06 $05
    ld l, a                                       ; $7ba4: $6f
    ld [hl], b                                    ; $7ba5: $70
    ld d, $71                                     ; $7ba6: $16 $71
    ld [hl], d                                    ; $7ba8: $72
    ld [hl], e                                    ; $7ba9: $73
    ld a, [de]                                    ; $7baa: $1a
    ld [hl], h                                    ; $7bab: $74
    ld [hl], l                                    ; $7bac: $75
    ld d, $1e                                     ; $7bad: $16 $1e
    rra                                           ; $7baf: $1f
    ld bc, $2302                                  ; $7bb0: $01 $02 $23
    inc hl                                        ; $7bb3: $23
    inc bc                                        ; $7bb4: $03
    inc bc                                        ; $7bb5: $03
    rlca                                          ; $7bb6: $07
    rlca                                          ; $7bb7: $07
    rlca                                          ; $7bb8: $07
    rlca                                          ; $7bb9: $07
    ld b, $05                                     ; $7bba: $06 $05
    ld b, $06                                     ; $7bbc: $06 $06
    ld b, $06                                     ; $7bbe: $06 $06
    ld b, $05                                     ; $7bc0: $06 $05
    halt                                          ; $7bc2: $76
    ld [hl], a                                    ; $7bc3: $77
    ld a, b                                       ; $7bc4: $78
    ld a, c                                       ; $7bc5: $79
    ld a, d                                       ; $7bc6: $7a
    rlca                                          ; $7bc7: $07
    ld a, e                                       ; $7bc8: $7b
    ld a, h                                       ; $7bc9: $7c
    ld a, l                                       ; $7bca: $7d
    dec bc                                        ; $7bcb: $0b
    ld a, [hl]                                    ; $7bcc: $7e
    ld a, a                                       ; $7bcd: $7f
    add b                                         ; $7bce: $80
    rrca                                          ; $7bcf: $0f
    add c                                         ; $7bd0: $81
    add d                                         ; $7bd1: $82
    inc b                                         ; $7bd2: $04
    inc bc                                        ; $7bd3: $03
    ld [bc], a                                    ; $7bd4: $02
    ld [bc], a                                    ; $7bd5: $02
    inc b                                         ; $7bd6: $04
    rlca                                          ; $7bd7: $07
    inc b                                         ; $7bd8: $04
    inc b                                         ; $7bd9: $04
    inc b                                         ; $7bda: $04
    rlca                                          ; $7bdb: $07
    inc b                                         ; $7bdc: $04
    inc b                                         ; $7bdd: $04
    inc c                                         ; $7bde: $0c
    rlca                                          ; $7bdf: $07
    inc c                                         ; $7be0: $0c
    inc c                                         ; $7be1: $0c
    add e                                         ; $7be2: $83
    ld [hl], a                                    ; $7be3: $77
    jp nc, $84d1                                  ; $7be4: $d2 $d1 $84

    ld [hl], c                                    ; $7be7: $71
    jp nc, $85d1                                  ; $7be8: $d2 $d1 $85

    ld [hl], h                                    ; $7beb: $74
    jp nc, $86d1                                  ; $7bec: $d2 $d1 $86

    rra                                           ; $7bef: $1f
    jp nc, Jump_000_0ad1                          ; $7bf0: $d2 $d1 $0a

    inc hl                                        ; $7bf3: $23
    add b                                         ; $7bf4: $80
    add b                                         ; $7bf5: $80
    inc c                                         ; $7bf6: $0c
    rlca                                          ; $7bf7: $07
    add b                                         ; $7bf8: $80
    add b                                         ; $7bf9: $80
    inc c                                         ; $7bfa: $0c
    rlca                                          ; $7bfb: $07
    add b                                         ; $7bfc: $80
    add b                                         ; $7bfd: $80
    inc c                                         ; $7bfe: $0c
    rlca                                          ; $7bff: $07
    add b                                         ; $7c00: $80
    add b                                         ; $7c01: $80
    dec sp                                        ; $7c02: $3b
    inc a                                         ; $7c03: $3c
    jr z, jr_080_7c2f                             ; $7c04: $28 $29

    dec a                                         ; $7c06: $3d
    ld a, $11                                     ; $7c07: $3e $11
    ld a, [hl+]                                   ; $7c09: $2a
    ccf                                           ; $7c0a: $3f
    ld b, b                                       ; $7c0b: $40
    ld b, c                                       ; $7c0c: $41
    add a                                         ; $7c0d: $87
    ld b, e                                       ; $7c0e: $43
    ld b, h                                       ; $7c0f: $44
    ld b, l                                       ; $7c10: $45
    adc b                                         ; $7c11: $88
    ld b, $05                                     ; $7c12: $06 $05
    ld b, $06                                     ; $7c14: $06 $06
    ld b, $05                                     ; $7c16: $06 $05
    ld h, $05                                     ; $7c18: $26 $05
    dec b                                         ; $7c1a: $05
    ld b, $06                                     ; $7c1b: $06 $06
    ld c, $06                                     ; $7c1d: $0e $06
    dec b                                         ; $7c1f: $05
    ld b, $0e                                     ; $7c20: $06 $0e
    adc c                                         ; $7c22: $89
    ld l, $8a                                     ; $7c23: $2e $8a
    adc e                                         ; $7c25: $8b
    adc h                                         ; $7c26: $8c
    ld [hl-], a                                   ; $7c27: $32
    inc sp                                        ; $7c28: $33
    inc [hl]                                      ; $7c29: $34
    adc l                                         ; $7c2a: $8d
    ld [hl], $11                                  ; $7c2b: $36 $11
    scf                                           ; $7c2d: $37
    adc [hl]                                      ; $7c2e: $8e

jr_080_7c2f:
    jr c, jr_080_7c6a                             ; $7c2f: $38 $39

    ld a, [hl-]                                   ; $7c31: $3a
    inc c                                         ; $7c32: $0c
    rlca                                          ; $7c33: $07
    inc c                                         ; $7c34: $0c
    inc c                                         ; $7c35: $0c
    inc c                                         ; $7c36: $0c
    rlca                                          ; $7c37: $07
    rlca                                          ; $7c38: $07
    rlca                                          ; $7c39: $07
    inc c                                         ; $7c3a: $0c
    rlca                                          ; $7c3b: $07
    ld b, $05                                     ; $7c3c: $06 $05
    rrca                                          ; $7c3e: $0f
    rlca                                          ; $7c3f: $07
    dec b                                         ; $7c40: $05
    ld b, $8f                                     ; $7c41: $06 $8f
    inc a                                         ; $7c43: $3c
    jp nc, Jump_000_3dd1                          ; $7c44: $d2 $d1 $3d

    ld a, $d2                                     ; $7c47: $3e $d2
    pop de                                        ; $7c49: $d1
    ccf                                           ; $7c4a: $3f
    ld b, b                                       ; $7c4b: $40
    jp nc, Jump_080_43d1                          ; $7c4c: $d2 $d1 $43

    ld b, h                                       ; $7c4f: $44
    jp nc, Jump_000_0cd1                          ; $7c50: $d2 $d1 $0c

    rlca                                          ; $7c53: $07
    add b                                         ; $7c54: $80
    add b                                         ; $7c55: $80
    rlca                                          ; $7c56: $07
    rlca                                          ; $7c57: $07
    add b                                         ; $7c58: $80
    add b                                         ; $7c59: $80
    ld b, $07                                     ; $7c5a: $06 $07
    add b                                         ; $7c5c: $80
    add b                                         ; $7c5d: $80
    dec b                                         ; $7c5e: $05
    rlca                                          ; $7c5f: $07
    add b                                         ; $7c60: $80
    add b                                         ; $7c61: $80
    ld c, [hl]                                    ; $7c62: $4e
    sub b                                         ; $7c63: $90
    sub c                                         ; $7c64: $91
    sub d                                         ; $7c65: $92
    ld d, $71                                     ; $7c66: $16 $71
    ld [hl], d                                    ; $7c68: $72
    ld [hl], e                                    ; $7c69: $73

jr_080_7c6a:
    ld a, [de]                                    ; $7c6a: $1a
    ld [hl], h                                    ; $7c6b: $74
    ld [hl], l                                    ; $7c6c: $75
    ld d, $1e                                     ; $7c6d: $16 $1e
    rra                                           ; $7c6f: $1f
    ld bc, $0602                                  ; $7c70: $01 $02 $06
    ld c, $0d                                     ; $7c73: $0e $0d
    ld c, $05                                     ; $7c75: $0e $05
    ld b, $05                                     ; $7c77: $06 $05
    ld b, $06                                     ; $7c79: $06 $06
    dec b                                         ; $7c7b: $05
    ld b, $05                                     ; $7c7c: $06 $05
    ld b, $05                                     ; $7c7e: $06 $05
    dec b                                         ; $7c80: $05
    ld b, $93                                     ; $7c81: $06 $93

jr_080_7c83:
    ld c, e                                       ; $7c83: $4b
    ld b, a                                       ; $7c84: $47
    inc l                                         ; $7c85: $2c
    sub h                                         ; $7c86: $94
    rlca                                          ; $7c87: $07
    jp nc, $95d1                                  ; $7c88: $d2 $d1 $95

    dec bc                                        ; $7c8b: $0b
    jp nc, Jump_000_0ed1                          ; $7c8c: $d2 $d1 $0e

    rrca                                          ; $7c8f: $0f
    jp nc, $0dd1                                  ; $7c90: $d2 $d1 $0d

    ld b, $80                                     ; $7c93: $06 $80
    add b                                         ; $7c95: $80
    ld c, $06                                     ; $7c96: $0e $06
    add b                                         ; $7c98: $80
    add b                                         ; $7c99: $80
    ld c, $07                                     ; $7c9a: $0e $07
    add b                                         ; $7c9c: $80
    add b                                         ; $7c9d: $80
    ld b, $07                                     ; $7c9e: $06 $07
    add b                                         ; $7ca0: $80
    add b                                         ; $7ca1: $80
    inc l                                         ; $7ca2: $2c
    inc l                                         ; $7ca3: $2c
    ld c, d                                       ; $7ca4: $4a
    pop de                                        ; $7ca5: $d1
    pop de                                        ; $7ca6: $d1
    pop de                                        ; $7ca7: $d1
    pop de                                        ; $7ca8: $d1
    pop de                                        ; $7ca9: $d1
    pop de                                        ; $7caa: $d1
    pop de                                        ; $7cab: $d1
    pop de                                        ; $7cac: $d1
    pop de                                        ; $7cad: $d1
    pop de                                        ; $7cae: $d1
    pop de                                        ; $7caf: $d1
    pop de                                        ; $7cb0: $d1
    pop de                                        ; $7cb1: $d1
    add b                                         ; $7cb2: $80
    add b                                         ; $7cb3: $80
    add b                                         ; $7cb4: $80
    add b                                         ; $7cb5: $80
    add b                                         ; $7cb6: $80
    add b                                         ; $7cb7: $80
    add b                                         ; $7cb8: $80
    add b                                         ; $7cb9: $80
    add b                                         ; $7cba: $80
    add b                                         ; $7cbb: $80
    add b                                         ; $7cbc: $80
    add b                                         ; $7cbd: $80
    add b                                         ; $7cbe: $80
    add b                                         ; $7cbf: $80
    add b                                         ; $7cc0: $80
    add b                                         ; $7cc1: $80
    pop de                                        ; $7cc2: $d1
    jp nc, $9796                                  ; $7cc3: $d2 $96 $97

    pop de                                        ; $7cc6: $d1
    jp nc, $9998                                  ; $7cc7: $d2 $98 $99

    pop de                                        ; $7cca: $d1
    jp nc, $9b9a                                  ; $7ccb: $d2 $9a $9b

    pop de                                        ; $7cce: $d1
    jp nc, $8845                                  ; $7ccf: $d2 $45 $88

    add b                                         ; $7cd2: $80
    add b                                         ; $7cd3: $80
    add hl, bc                                    ; $7cd4: $09
    add hl, bc                                    ; $7cd5: $09
    add b                                         ; $7cd6: $80
    add b                                         ; $7cd7: $80
    add hl, bc                                    ; $7cd8: $09
    add hl, bc                                    ; $7cd9: $09
    add b                                         ; $7cda: $80
    add b                                         ; $7cdb: $80
    add hl, bc                                    ; $7cdc: $09
    add hl, bc                                    ; $7cdd: $09
    add b                                         ; $7cde: $80
    add b                                         ; $7cdf: $80
    rlca                                          ; $7ce0: $07
    rrca                                          ; $7ce1: $0f
    inc bc                                        ; $7ce2: $03
    ld l, $2f                                     ; $7ce3: $2e $2f
    jr nc, jr_080_7c83                            ; $7ce5: $30 $9c

    ld [hl-], a                                   ; $7ce7: $32
    inc sp                                        ; $7ce8: $33
    inc [hl]                                      ; $7ce9: $34
    sbc l                                         ; $7cea: $9d
    ld [hl], $11                                  ; $7ceb: $36 $11
    scf                                           ; $7ced: $37
    adc [hl]                                      ; $7cee: $8e
    jr c, jr_080_7d2a                             ; $7cef: $38 $39

    ld a, [hl-]                                   ; $7cf1: $3a
    ld bc, $0507                                  ; $7cf2: $01 $07 $05
    ld b, $09                                     ; $7cf5: $06 $09
    rlca                                          ; $7cf7: $07
    ld b, $05                                     ; $7cf8: $06 $05
    add hl, bc                                    ; $7cfa: $09
    rlca                                          ; $7cfb: $07
    ld b, $06                                     ; $7cfc: $06 $06
    rrca                                          ; $7cfe: $0f
    rlca                                          ; $7cff: $07
    ld b, $05                                     ; $7d00: $06 $05
    dec sp                                        ; $7d02: $3b
    inc a                                         ; $7d03: $3c
    jr z, jr_080_7d2f                             ; $7d04: $28 $29

    dec a                                         ; $7d06: $3d
    ld a, $11                                     ; $7d07: $3e $11
    ld a, [hl+]                                   ; $7d09: $2a
    ccf                                           ; $7d0a: $3f
    ld b, b                                       ; $7d0b: $40
    ld b, c                                       ; $7d0c: $41
    add a                                         ; $7d0d: $87
    ld b, e                                       ; $7d0e: $43
    ld b, h                                       ; $7d0f: $44
    ld b, l                                       ; $7d10: $45
    adc b                                         ; $7d11: $88
    rlca                                          ; $7d12: $07
    rlca                                          ; $7d13: $07
    rlca                                          ; $7d14: $07
    rlca                                          ; $7d15: $07
    ld b, $06                                     ; $7d16: $06 $06
    dec h                                         ; $7d18: $25
    dec b                                         ; $7d19: $05
    dec b                                         ; $7d1a: $05
    dec b                                         ; $7d1b: $05
    dec b                                         ; $7d1c: $05
    dec c                                         ; $7d1d: $0d
    ld b, $05                                     ; $7d1e: $06 $05
    ld b, $0e                                     ; $7d20: $06 $0e
    dec l                                         ; $7d22: $2d
    ld l, $2f                                     ; $7d23: $2e $2f
    jr nc, jr_080_7d58                            ; $7d25: $30 $31

    ld [hl-], a                                   ; $7d27: $32
    inc sp                                        ; $7d28: $33
    inc [hl]                                      ; $7d29: $34

jr_080_7d2a:
    sbc [hl]                                      ; $7d2a: $9e
    ld [hl], $11                                  ; $7d2b: $36 $11
    scf                                           ; $7d2d: $37
    adc [hl]                                      ; $7d2e: $8e

jr_080_7d2f:
    jr c, @+$3b                                   ; $7d2f: $38 $39

    ld a, [hl-]                                   ; $7d31: $3a
    rlca                                          ; $7d32: $07
    rlca                                          ; $7d33: $07
    rlca                                          ; $7d34: $07
    rlca                                          ; $7d35: $07
    ld b, $05                                     ; $7d36: $06 $05
    ld b, $06                                     ; $7d38: $06 $06
    dec c                                         ; $7d3a: $0d
    ld b, $06                                     ; $7d3b: $06 $06
    ld b, $0e                                     ; $7d3d: $06 $0e
    ld b, $06                                     ; $7d3f: $06 $06
    dec b                                         ; $7d41: $05
    pop de                                        ; $7d42: $d1
    jp nc, $9291                                  ; $7d43: $d2 $91 $92

    pop de                                        ; $7d46: $d1
    jp nc, $a09f                                  ; $7d47: $d2 $9f $a0

    pop de                                        ; $7d4a: $d1
    jp nc, $a2a1                                  ; $7d4b: $d2 $a1 $a2

    pop de                                        ; $7d4e: $d1
    jp nc, $a4a3                                  ; $7d4f: $d2 $a3 $a4

    add b                                         ; $7d52: $80
    add b                                         ; $7d53: $80
    rrca                                          ; $7d54: $0f
    ld c, $80                                     ; $7d55: $0e $80
    add b                                         ; $7d57: $80

jr_080_7d58:
    ld a, [hl+]                                   ; $7d58: $2a
    inc l                                         ; $7d59: $2c
    add b                                         ; $7d5a: $80
    add b                                         ; $7d5b: $80
    ld a, [hl+]                                   ; $7d5c: $2a
    inc l                                         ; $7d5d: $2c
    add b                                         ; $7d5e: $80
    add b                                         ; $7d5f: $80
    ld a, [hl+]                                   ; $7d60: $2a
    inc l                                         ; $7d61: $2c
    sub e                                         ; $7d62: $93
    ld c, e                                       ; $7d63: $4b
    ld d, $4c                                     ; $7d64: $16 $4c
    and l                                         ; $7d66: $a5
    and [hl]                                      ; $7d67: $a6
    ld [$a709], sp                                ; $7d68: $08 $09 $a7
    xor b                                         ; $7d6b: $a8
    inc c                                         ; $7d6c: $0c
    dec c                                         ; $7d6d: $0d
    xor c                                         ; $7d6e: $a9
    xor d                                         ; $7d6f: $aa
    db $10                                        ; $7d70: $10
    ld de, $050e                                  ; $7d71: $11 $0e $05
    dec h                                         ; $7d74: $25
    ld b, $2c                                     ; $7d75: $06 $2c
    inc l                                         ; $7d77: $2c
    dec b                                         ; $7d78: $05
    ld b, $2c                                     ; $7d79: $06 $2c
    inc l                                         ; $7d7b: $2c
    rlca                                          ; $7d7c: $07
    ld b, $2c                                     ; $7d7d: $06 $2c
    inc l                                         ; $7d7f: $2c
    rlca                                          ; $7d80: $07
    dec b                                         ; $7d81: $05
    ld c, [hl]                                    ; $7d82: $4e
    sub b                                         ; $7d83: $90
    sub c                                         ; $7d84: $91
    sub d                                         ; $7d85: $92
    ld d, $71                                     ; $7d86: $16 $71
    ld [hl], d                                    ; $7d88: $72
    ld [hl], e                                    ; $7d89: $73
    ld a, [de]                                    ; $7d8a: $1a
    ld [hl], h                                    ; $7d8b: $74
    ld [hl], l                                    ; $7d8c: $75
    ld d, $1e                                     ; $7d8d: $16 $1e
    rra                                           ; $7d8f: $1f
    ld bc, $0602                                  ; $7d90: $01 $02 $06
    dec c                                         ; $7d93: $0d
    ld c, $0e                                     ; $7d94: $0e $0e
    dec b                                         ; $7d96: $05
    ld b, $05                                     ; $7d97: $06 $05
    ld b, $06                                     ; $7d99: $06 $06
    dec b                                         ; $7d9b: $05
    ld b, $05                                     ; $7d9c: $06 $05
    ld b, $06                                     ; $7d9e: $06 $06
    ld b, $06                                     ; $7da0: $06 $06
    sub e                                         ; $7da2: $93
    ld c, e                                       ; $7da3: $4b
    ld d, $4c                                     ; $7da4: $16 $4c
    sub h                                         ; $7da6: $94
    rlca                                          ; $7da7: $07
    ld [$9509], sp                                ; $7da8: $08 $09 $95
    dec bc                                        ; $7dab: $0b
    inc c                                         ; $7dac: $0c
    dec c                                         ; $7dad: $0d
    ld c, $0f                                     ; $7dae: $0e $0f
    db $10                                        ; $7db0: $10
    ld de, $050e                                  ; $7db1: $11 $0e $05
    ld h, $06                                     ; $7db4: $26 $06
    dec c                                         ; $7db6: $0d
    ld b, $05                                     ; $7db7: $06 $05
    ld b, $0e                                     ; $7db9: $06 $0e
    dec b                                         ; $7dbb: $05
    dec b                                         ; $7dbc: $05
    ld b, $05                                     ; $7dbd: $06 $05
    dec b                                         ; $7dbf: $05
    ld b, $05                                     ; $7dc0: $06 $05
    pop de                                        ; $7dc2: $d1
    dec hl                                        ; $7dc3: $2b
    inc l                                         ; $7dc4: $2c
    inc l                                         ; $7dc5: $2c
    pop de                                        ; $7dc6: $d1
    pop de                                        ; $7dc7: $d1
    pop de                                        ; $7dc8: $d1
    pop de                                        ; $7dc9: $d1
    pop de                                        ; $7dca: $d1
    pop de                                        ; $7dcb: $d1
    pop de                                        ; $7dcc: $d1
    pop de                                        ; $7dcd: $d1
    pop de                                        ; $7dce: $d1
    pop de                                        ; $7dcf: $d1
    pop de                                        ; $7dd0: $d1
    pop de                                        ; $7dd1: $d1
    add b                                         ; $7dd2: $80
    add b                                         ; $7dd3: $80
    add b                                         ; $7dd4: $80
    add b                                         ; $7dd5: $80
    add b                                         ; $7dd6: $80
    add b                                         ; $7dd7: $80
    add b                                         ; $7dd8: $80
    add b                                         ; $7dd9: $80
    add b                                         ; $7dda: $80
    add b                                         ; $7ddb: $80
    add b                                         ; $7ddc: $80
    add b                                         ; $7ddd: $80
    add b                                         ; $7dde: $80
    add b                                         ; $7ddf: $80
    add b                                         ; $7de0: $80
    add b                                         ; $7de1: $80
    inc l                                         ; $7de2: $2c
    inc l                                         ; $7de3: $2c
    inc l                                         ; $7de4: $2c
    inc l                                         ; $7de5: $2c
    pop de                                        ; $7de6: $d1
    pop de                                        ; $7de7: $d1
    pop de                                        ; $7de8: $d1
    pop de                                        ; $7de9: $d1
    pop de                                        ; $7dea: $d1
    pop de                                        ; $7deb: $d1
    pop de                                        ; $7dec: $d1
    pop de                                        ; $7ded: $d1
    pop de                                        ; $7dee: $d1
    pop de                                        ; $7def: $d1
    pop de                                        ; $7df0: $d1
    pop de                                        ; $7df1: $d1
    add b                                         ; $7df2: $80

jr_080_7df3:
    add b                                         ; $7df3: $80
    add b                                         ; $7df4: $80
    add b                                         ; $7df5: $80
    add b                                         ; $7df6: $80
    add b                                         ; $7df7: $80
    add b                                         ; $7df8: $80
    add b                                         ; $7df9: $80
    add b                                         ; $7dfa: $80
    add b                                         ; $7dfb: $80
    add b                                         ; $7dfc: $80
    add b                                         ; $7dfd: $80
    add b                                         ; $7dfe: $80
    add b                                         ; $7dff: $80
    add b                                         ; $7e00: $80
    add b                                         ; $7e01: $80
    inc l                                         ; $7e02: $2c
    dec [hl]                                      ; $7e03: $35
    jr z, jr_080_7e2f                             ; $7e04: $28 $29

    pop de                                        ; $7e06: $d1
    jp nc, $2a11                                  ; $7e07: $d2 $11 $2a

    pop de                                        ; $7e0a: $d1
    dec hl                                        ; $7e0b: $2b
    xor e                                         ; $7e0c: $ab
    xor e                                         ; $7e0d: $ab
    pop de                                        ; $7e0e: $d1
    pop de                                        ; $7e0f: $d1
    xor h                                         ; $7e10: $ac
    xor h                                         ; $7e11: $ac
    add b                                         ; $7e12: $80
    add b                                         ; $7e13: $80
    dec b                                         ; $7e14: $05
    ld b, $80                                     ; $7e15: $06 $80
    add b                                         ; $7e17: $80
    ld h, $05                                     ; $7e18: $26 $05
    add b                                         ; $7e1a: $80
    add b                                         ; $7e1b: $80
    adc b                                         ; $7e1c: $88
    adc b                                         ; $7e1d: $88
    add b                                         ; $7e1e: $80
    add b                                         ; $7e1f: $80
    adc b                                         ; $7e20: $88
    adc b                                         ; $7e21: $88
    dec l                                         ; $7e22: $2d
    ld l, $47                                     ; $7e23: $2e $47
    inc l                                         ; $7e25: $2c
    ld sp, $d232                                  ; $7e26: $31 $32 $d2
    pop de                                        ; $7e29: $d1
    xor e                                         ; $7e2a: $ab
    xor e                                         ; $7e2b: $ab
    ld c, d                                       ; $7e2c: $4a
    pop de                                        ; $7e2d: $d1
    xor h                                         ; $7e2e: $ac

jr_080_7e2f:
    xor h                                         ; $7e2f: $ac
    pop de                                        ; $7e30: $d1
    pop de                                        ; $7e31: $d1
    ld b, $05                                     ; $7e32: $06 $05
    add b                                         ; $7e34: $80
    add b                                         ; $7e35: $80
    ld b, $06                                     ; $7e36: $06 $06
    add b                                         ; $7e38: $80
    add b                                         ; $7e39: $80
    adc b                                         ; $7e3a: $88
    adc b                                         ; $7e3b: $88
    add b                                         ; $7e3c: $80
    add b                                         ; $7e3d: $80
    adc b                                         ; $7e3e: $88
    adc b                                         ; $7e3f: $88
    add b                                         ; $7e40: $80
    add b                                         ; $7e41: $80
    dec sp                                        ; $7e42: $3b
    inc a                                         ; $7e43: $3c
    jr z, jr_080_7df3                             ; $7e44: $28 $ad

    dec a                                         ; $7e46: $3d
    ld a, $11                                     ; $7e47: $3e $11
    xor [hl]                                      ; $7e49: $ae
    ccf                                           ; $7e4a: $3f
    ld b, b                                       ; $7e4b: $40
    and [hl]                                      ; $7e4c: $a6
    and l                                         ; $7e4d: $a5
    ld b, e                                       ; $7e4e: $43
    ld b, h                                       ; $7e4f: $44
    xor b                                         ; $7e50: $a8
    and a                                         ; $7e51: $a7
    ld b, $06                                     ; $7e52: $06 $06
    ld b, $09                                     ; $7e54: $06 $09
    dec b                                         ; $7e56: $05
    ld b, $25                                     ; $7e57: $06 $25
    add hl, bc                                    ; $7e59: $09
    ld b, $06                                     ; $7e5a: $06 $06
    inc c                                         ; $7e5c: $0c
    inc c                                         ; $7e5d: $0c
    dec b                                         ; $7e5e: $05
    rlca                                          ; $7e5f: $07
    inc c                                         ; $7e60: $0c
    inc c                                         ; $7e61: $0c
    xor a                                         ; $7e62: $af
    or b                                          ; $7e63: $b0
    jp nc, $b1d1                                  ; $7e64: $d2 $d1 $b1

    or d                                          ; $7e67: $b2
    jp nc, $a0d1                                  ; $7e68: $d2 $d1 $a0

    sbc a                                         ; $7e6b: $9f
    jp nc, $a2d1                                  ; $7e6c: $d2 $d1 $a2

    and c                                         ; $7e6f: $a1
    jp nc, Jump_000_09d1                          ; $7e70: $d2 $d1 $09

    add hl, bc                                    ; $7e73: $09
    add b                                         ; $7e74: $80
    add b                                         ; $7e75: $80
    add hl, bc                                    ; $7e76: $09
    add hl, bc                                    ; $7e77: $09
    add b                                         ; $7e78: $80
    add b                                         ; $7e79: $80
    inc c                                         ; $7e7a: $0c
    ld a, [bc]                                    ; $7e7b: $0a
    add b                                         ; $7e7c: $80
    add b                                         ; $7e7d: $80
    inc c                                         ; $7e7e: $0c
    ld a, [bc]                                    ; $7e7f: $0a
    add b                                         ; $7e80: $80
    add b                                         ; $7e81: $80
    pop de                                        ; $7e82: $d1
    pop de                                        ; $7e83: $d1
    pop de                                        ; $7e84: $d1
    pop de                                        ; $7e85: $d1
    pop de                                        ; $7e86: $d1
    pop de                                        ; $7e87: $d1
    pop de                                        ; $7e88: $d1
    pop de                                        ; $7e89: $d1
    pop de                                        ; $7e8a: $d1
    pop de                                        ; $7e8b: $d1
    pop de                                        ; $7e8c: $d1
    pop de                                        ; $7e8d: $d1
    pop de                                        ; $7e8e: $d1
    pop de                                        ; $7e8f: $d1
    pop de                                        ; $7e90: $d1
    pop de                                        ; $7e91: $d1
    add b                                         ; $7e92: $80
    add b                                         ; $7e93: $80
    add b                                         ; $7e94: $80
    add b                                         ; $7e95: $80
    add b                                         ; $7e96: $80
    add b                                         ; $7e97: $80
    add b                                         ; $7e98: $80
    add b                                         ; $7e99: $80
    add b                                         ; $7e9a: $80
    add b                                         ; $7e9b: $80
    add b                                         ; $7e9c: $80
    add b                                         ; $7e9d: $80
    add b                                         ; $7e9e: $80
    add b                                         ; $7e9f: $80
    add b                                         ; $7ea0: $80
    add b                                         ; $7ea1: $80
    ld c, [hl]                                    ; $7ea2: $4e
    sub b                                         ; $7ea3: $90
    xor d                                         ; $7ea4: $aa
    xor c                                         ; $7ea5: $a9
    ld d, $71                                     ; $7ea6: $16 $71
    or e                                          ; $7ea8: $b3
    or h                                          ; $7ea9: $b4
    ld a, [de]                                    ; $7eaa: $1a
    ld [hl], h                                    ; $7eab: $74
    ld [hl], l                                    ; $7eac: $75
    ld d, $1e                                     ; $7ead: $16 $1e
    rra                                           ; $7eaf: $1f
    ld bc, $0502                                  ; $7eb0: $01 $02 $05
    rrca                                          ; $7eb3: $0f
    inc c                                         ; $7eb4: $0c
    inc c                                         ; $7eb5: $0c
    ld b, $07                                     ; $7eb6: $06 $07
    add hl, bc                                    ; $7eb8: $09
    add hl, bc                                    ; $7eb9: $09
    ld b, $07                                     ; $7eba: $06 $07
    rlca                                          ; $7ebc: $07
    rlca                                          ; $7ebd: $07
    dec b                                         ; $7ebe: $05
    ld b, $05                                     ; $7ebf: $06 $05
    ld b, $a4                                     ; $7ec1: $06 $a4
    and e                                         ; $7ec3: $a3
    jp nc, $b5d1                                  ; $7ec4: $d2 $d1 $b5

    or [hl]                                       ; $7ec7: $b6
    jp nc, $95d1                                  ; $7ec8: $d2 $d1 $95

    dec bc                                        ; $7ecb: $0b
    jp nc, Jump_000_0ed1                          ; $7ecc: $d2 $d1 $0e

    rrca                                          ; $7ecf: $0f
    jp nc, Jump_000_0cd1                          ; $7ed0: $d2 $d1 $0c

    ld a, [bc]                                    ; $7ed3: $0a
    add b                                         ; $7ed4: $80
    add b                                         ; $7ed5: $80
    add hl, bc                                    ; $7ed6: $09
    add hl, bc                                    ; $7ed7: $09
    add b                                         ; $7ed8: $80
    add b                                         ; $7ed9: $80
    rrca                                          ; $7eda: $0f
    rlca                                          ; $7edb: $07
    add b                                         ; $7edc: $80
    add b                                         ; $7edd: $80
    ld b, $07                                     ; $7ede: $06 $07
    add b                                         ; $7ee0: $80
    add b                                         ; $7ee1: $80
    call nz, $0600                                ; $7ee2: $c4 $00 $06
    nop                                           ; $7ee5: $00
    nop                                           ; $7ee6: $00
    ld bc, $0200                                  ; $7ee7: $01 $00 $02
    ld [bc], a                                    ; $7eea: $02
    ld hl, sp+$24                                 ; $7eeb: $f8 $24
    ldh a, [$03]                                  ; $7eed: $f0 $03
    ld [bc], a                                    ; $7eef: $02
    nop                                           ; $7ef0: $00
    inc b                                         ; $7ef1: $04
    nop                                           ; $7ef2: $00
    dec b                                         ; $7ef3: $05
    nop                                           ; $7ef4: $00
    ld b, $08                                     ; $7ef5: $06 $08
    ld h, b                                       ; $7ef7: $60
    inc de                                        ; $7ef8: $13
    nop                                           ; $7ef9: $00
    nop                                           ; $7efa: $00
    ld a, [de]                                    ; $7efb: $1a
    nop                                           ; $7efc: $00
    dec de                                        ; $7efd: $1b
    nop                                           ; $7efe: $00
    inc e                                         ; $7eff: $1c
    nop                                           ; $7f00: $00
    dec e                                         ; $7f01: $1d
    ld [hl+], a                                   ; $7f02: $22
    nop                                           ; $7f03: $00
    ld h, $08                                     ; $7f04: $26 $08
    ld d, b                                       ; $7f06: $50
    inc l                                         ; $7f07: $2c
    nop                                           ; $7f08: $00
    inc [hl]                                      ; $7f09: $34
    ld [hl-], a                                   ; $7f0a: $32
    and b                                         ; $7f0b: $a0
    rlca                                          ; $7f0c: $07
    nop                                           ; $7f0d: $00
    nop                                           ; $7f0e: $00
    ld [$0900], sp                                ; $7f0f: $08 $00 $09
    nop                                           ; $7f12: $00
    ld a, [bc]                                    ; $7f13: $0a
    nop                                           ; $7f14: $00
    rrca                                          ; $7f15: $0f
    jr z, jr_080_7f18                             ; $7f16: $28 $00

jr_080_7f18:
    db $10                                        ; $7f18: $10
    ld [$1420], sp                                ; $7f19: $08 $20 $14
    stop                                          ; $7f1c: $10 $00
    dec d                                         ; $7f1e: $15
    nop                                           ; $7f1f: $00
    ld e, $00                                     ; $7f20: $1e $00
    nop                                           ; $7f22: $00
    rra                                           ; $7f23: $1f
    nop                                           ; $7f24: $00
    jr nz, jr_080_7f27                            ; $7f25: $20 $00

jr_080_7f27:
    ld hl, $2700                                  ; $7f27: $21 $00 $27
    and b                                         ; $7f2a: $a0
    ld [$2800], sp                                ; $7f2b: $08 $00 $28
    ld [$2d10], sp                                ; $7f2e: $08 $10 $2d
    nop                                           ; $7f31: $00
    ld l, $00                                     ; $7f32: $2e $00
    cpl                                           ; $7f34: $2f
    jr nc, jr_080_7f37                            ; $7f35: $30 $00

jr_080_7f37:
    dec [hl]                                      ; $7f37: $35
    ld a, [hl+]                                   ; $7f38: $2a
    nop                                           ; $7f39: $00
    ld [hl-], a                                   ; $7f3a: $32
    ld l, b                                       ; $7f3b: $68
    stop                                          ; $7f3c: $10 $00
    add hl, sp                                    ; $7f3e: $39
    nop                                           ; $7f3f: $00
    nop                                           ; $7f40: $00
    dec bc                                        ; $7f41: $0b
    nop                                           ; $7f42: $00
    inc c                                         ; $7f43: $0c
    nop                                           ; $7f44: $00
    dec c                                         ; $7f45: $0d
    nop                                           ; $7f46: $00
    ld c, $00                                     ; $7f47: $0e $00
    db $10                                        ; $7f49: $10
    ld de, $1200                                  ; $7f4a: $11 $00 $12
    ld [$1610], sp                                ; $7f4d: $08 $10 $16
    nop                                           ; $7f50: $00
    rla                                           ; $7f51: $17
    nop                                           ; $7f52: $00
    nop                                           ; $7f53: $00
    jr jr_080_7f56                                ; $7f54: $18 $00

jr_080_7f56:
    add hl, de                                    ; $7f56: $19
    nop                                           ; $7f57: $00
    ld [hl+], a                                   ; $7f58: $22
    nop                                           ; $7f59: $00
    inc hl                                        ; $7f5a: $23
    nop                                           ; $7f5b: $00
    nop                                           ; $7f5c: $00
    inc h                                         ; $7f5d: $24
    nop                                           ; $7f5e: $00
    dec h                                         ; $7f5f: $25
    nop                                           ; $7f60: $00
    add hl, hl                                    ; $7f61: $29
    nop                                           ; $7f62: $00
    ld a, [hl+]                                   ; $7f63: $2a
    nop                                           ; $7f64: $00
    ld b, b                                       ; $7f65: $40
    dec hl                                        ; $7f66: $2b
    ld [$3000], sp                                ; $7f67: $08 $00 $30
    nop                                           ; $7f6a: $00
    ld sp, $3200                                  ; $7f6b: $31 $00 $32
    nop                                           ; $7f6e: $00
    ld bc, $0033                                  ; $7f6f: $01 $33 $00
    ld [hl], $00                                  ; $7f72: $36 $00
    scf                                           ; $7f74: $37
    nop                                           ; $7f75: $00
    jr c, @+$34                                   ; $7f76: $38 $32

    ld d, b                                       ; $7f78: $50
    nop                                           ; $7f79: $00
    ld de, $3a00                                  ; $7f7a: $11 $00 $3a
    nop                                           ; $7f7d: $00
    dec sp                                        ; $7f7e: $3b
    nop                                           ; $7f7f: $00
    inc a                                         ; $7f80: $3c
    nop                                           ; $7f81: $00
    nop                                           ; $7f82: $00
    dec a                                         ; $7f83: $3d
    nop                                           ; $7f84: $00
    ld a, $00                                     ; $7f85: $3e $00
    ccf                                           ; $7f87: $3f
    nop                                           ; $7f88: $00
    ld b, b                                       ; $7f89: $40
    nop                                           ; $7f8a: $00
    db $10                                        ; $7f8b: $10
    ld b, c                                       ; $7f8c: $41
    nop                                           ; $7f8d: $00
    ld b, d                                       ; $7f8e: $42
    ld [$4300], sp                                ; $7f8f: $08 $00 $43
    nop                                           ; $7f92: $00
    ld b, h                                       ; $7f93: $44
    nop                                           ; $7f94: $00
    nop                                           ; $7f95: $00
    ld b, l                                       ; $7f96: $45
    nop                                           ; $7f97: $00
    ld b, [hl]                                    ; $7f98: $46
    nop                                           ; $7f99: $00
    ld c, c                                       ; $7f9a: $49
    nop                                           ; $7f9b: $00
    ld c, d                                       ; $7f9c: $4a
    nop                                           ; $7f9d: $00
    nop                                           ; $7f9e: $00
    ld c, e                                       ; $7f9f: $4b
    nop                                           ; $7fa0: $00
    ld c, h                                       ; $7fa1: $4c
    nop                                           ; $7fa2: $00
    ld c, [hl]                                    ; $7fa3: $4e
    nop                                           ; $7fa4: $00
    ld c, a                                       ; $7fa5: $4f
    nop                                           ; $7fa6: $00
    ld b, b                                       ; $7fa7: $40
    ld d, b                                       ; $7fa8: $50
    ld [$5100], sp                                ; $7fa9: $08 $00 $51
    nop                                           ; $7fac: $00
    ld d, d                                       ; $7fad: $52
    nop                                           ; $7fae: $00
    ld d, e                                       ; $7faf: $53
    nop                                           ; $7fb0: $00
    nop                                           ; $7fb1: $00
    ld d, h                                       ; $7fb2: $54
    nop                                           ; $7fb3: $00
    ld d, [hl]                                    ; $7fb4: $56
    nop                                           ; $7fb5: $00
    ld d, a                                       ; $7fb6: $57
    nop                                           ; $7fb7: $00
    ld e, b                                       ; $7fb8: $58
    nop                                           ; $7fb9: $00
    ld b, c                                       ; $7fba: $41
    ld e, c                                       ; $7fbb: $59
    ld [hl-], a                                   ; $7fbc: $32
    ld b, b                                       ; $7fbd: $40
    ld b, b                                       ; $7fbe: $40
    nop                                           ; $7fbf: $00
    ld e, h                                       ; $7fc0: $5c
    nop                                           ; $7fc1: $00
    ld e, l                                       ; $7fc2: $5d
    ld h, h                                       ; $7fc3: $64
    sub c                                         ; $7fc4: $91
    inc b                                         ; $7fc5: $04
    ld b, a                                       ; $7fc6: $47
    nop                                           ; $7fc7: $00
    ld c, b                                       ; $7fc8: $48
    nop                                           ; $7fc9: $00
    ld c, l                                       ; $7fca: $4d
    ld a, [hl]                                    ; $7fcb: $7e
    sub c                                         ; $7fcc: $91
    ld d, l                                       ; $7fcd: $55
    nop                                           ; $7fce: $00
    db $10                                        ; $7fcf: $10
    ld e, d                                       ; $7fd0: $5a
    nop                                           ; $7fd1: $00
    ld e, e                                       ; $7fd2: $5b
    sbc b                                         ; $7fd3: $98
    sub c                                         ; $7fd4: $91
    rrca                                          ; $7fd5: $0f
    nop                                           ; $7fd6: $00
    nop                                           ; $7fd7: $00
    dec d                                         ; $7fd8: $15
    nop                                           ; $7fd9: $00
    ld bc, $001b                                  ; $7fda: $01 $1b $00
    ld [bc], a                                    ; $7fdd: $02
    dec de                                        ; $7fde: $1b
    nop                                           ; $7fdf: $00
    ld [bc], a                                    ; $7fe0: $02
    dec de                                        ; $7fe1: $1b
    nop                                           ; $7fe2: $00
    ld [bc], a                                    ; $7fe3: $02
    ld [bc], a                                    ; $7fe4: $02
    nop                                           ; $7fe5: $00
    ld a, [bc]                                    ; $7fe6: $0a
    nop                                           ; $7fe7: $00
    rrca                                          ; $7fe8: $0f
    ld bc, $0207                                  ; $7fe9: $01 $07 $02
    ld [hl], l                                    ; $7fec: $75
    nop                                           ; $7fed: $00
    dec de                                        ; $7fee: $1b
    nop                                           ; $7fef: $00
    rlca                                          ; $7ff0: $07
    nop                                           ; $7ff1: $00
    inc d                                         ; $7ff2: $14
    ld bc, $00f7                                  ; $7ff3: $01 $f7 $00
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
