; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $079", ROMX[$4000], BANK[$79]

    db $79

    ld sp, $3332                                  ; $4001: $31 $32 $33
    inc [hl]                                      ; $4004: $34
    dec [hl]                                      ; $4005: $35
    ld [hl], $37                                  ; $4006: $36 $37
    jr c, @+$3b                                   ; $4008: $38 $39

    jr nc, jr_079_403d                            ; $400a: $30 $31

    ld [hl-], a                                   ; $400c: $32
    inc sp                                        ; $400d: $33
    inc [hl]                                      ; $400e: $34
    dec [hl]                                      ; $400f: $35

    db $0f, $00, $19, $00

    jr nz, jr_079_403a                            ; $4014: $20 $24

    db $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1
    db $83, $83, $83, $83, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03

    jp nc, $d4d3                                  ; $4036: $d2 $d3 $d4

    push de                                       ; $4039: $d5

jr_079_403a:
    sub $d7                                       ; $403a: $d6 $d7
    ret c                                         ; $403c: $d8

jr_079_403d:
    reti                                          ; $403d: $d9


    jp c, $dcdb                                   ; $403e: $da $db $dc

    db $dd                                        ; $4041: $dd
    sbc $df                                       ; $4042: $de $df
    ldh [$e1], a                                  ; $4044: $e0 $e1
    add e                                         ; $4046: $83
    add e                                         ; $4047: $83
    rlca                                          ; $4048: $07
    ld bc, $a3a3                                  ; $4049: $01 $a3 $a3
    rlca                                          ; $404c: $07
    ld bc, $a3a3                                  ; $404d: $01 $a3 $a3
    rlca                                          ; $4050: $07
    ld b, $a3                                     ; $4051: $06 $a3
    and e                                         ; $4053: $a3
    rlca                                          ; $4054: $07
    ld b, $e2                                     ; $4055: $06 $e2
    db $e3                                        ; $4057: $e3
    db $e4                                        ; $4058: $e4
    push hl                                       ; $4059: $e5
    and $e7                                       ; $405a: $e6 $e7
    add sp, -$17                                  ; $405c: $e8 $e9
    ld [$eceb], a                                 ; $405e: $ea $eb $ec
    db $ed                                        ; $4061: $ed
    xor $ef                                       ; $4062: $ee $ef
    ldh a, [$f1]                                  ; $4064: $f0 $f1
    ld bc, $0101                                  ; $4066: $01 $01 $01
    rlca                                          ; $4069: $07
    ld b, $06                                     ; $406a: $06 $06
    ld bc, $0607                                  ; $406c: $01 $07 $06
    ld b, $06                                     ; $406f: $06 $06
    rlca                                          ; $4071: $07
    ld b, $06                                     ; $4072: $06 $06
    ld bc, $d707                                  ; $4074: $01 $07 $d7
    sub $d1                                       ; $4077: $d6 $d1
    pop de                                        ; $4079: $d1
    db $db                                        ; $407a: $db
    jp c, $d1d1                                   ; $407b: $da $d1 $d1

    rst $18                                       ; $407e: $df
    sbc $d1                                       ; $407f: $de $d1
    pop de                                        ; $4081: $d1
    ld a, [c]                                     ; $4082: $f2
    di                                            ; $4083: $f3
    db $f4                                        ; $4084: $f4
    push af                                       ; $4085: $f5
    inc bc                                        ; $4086: $03
    inc bc                                        ; $4087: $03
    inc bc                                        ; $4088: $03
    inc bc                                        ; $4089: $03
    inc bc                                        ; $408a: $03
    inc bc                                        ; $408b: $03
    inc bc                                        ; $408c: $03
    inc bc                                        ; $408d: $03
    inc bc                                        ; $408e: $03
    inc bc                                        ; $408f: $03
    inc bc                                        ; $4090: $03
    inc bc                                        ; $4091: $03
    inc bc                                        ; $4092: $03
    inc bc                                        ; $4093: $03
    ld [bc], a                                    ; $4094: $02
    inc bc                                        ; $4095: $03
    or $f2                                        ; $4096: $f6 $f2
    rst $30                                       ; $4098: $f7
    ld hl, sp-$07                                 ; $4099: $f8 $f9
    ld a, [$fcfb]                                 ; $409b: $fa $fb $fc
    jp nc, $d4d3                                  ; $409e: $d2 $d3 $d4

    push de                                       ; $40a1: $d5
    sub $d7                                       ; $40a2: $d6 $d7
    ret c                                         ; $40a4: $d8

    db $fd                                        ; $40a5: $fd
    add e                                         ; $40a6: $83
    and e                                         ; $40a7: $a3
    rlca                                          ; $40a8: $07
    ld bc, $a383                                  ; $40a9: $01 $83 $a3
    rlca                                          ; $40ac: $07
    ld bc, $8383                                  ; $40ad: $01 $83 $83
    rlca                                          ; $40b0: $07
    ld [bc], a                                    ; $40b1: $02
    and e                                         ; $40b2: $a3
    and e                                         ; $40b3: $a3
    rlca                                          ; $40b4: $07
    ld [bc], a                                    ; $40b5: $02
    cp $ff                                        ; $40b6: $fe $ff
    nop                                           ; $40b8: $00
    ld bc, $0302                                  ; $40b9: $01 $02 $03
    inc b                                         ; $40bc: $04
    dec b                                         ; $40bd: $05
    ld b, $07                                     ; $40be: $06 $07
    db $e4                                        ; $40c0: $e4
    push hl                                       ; $40c1: $e5
    ld [$0a09], sp                                ; $40c2: $08 $09 $0a
    dec bc                                        ; $40c5: $0b
    ld b, $06                                     ; $40c6: $06 $06
    ld b, $07                                     ; $40c8: $06 $07
    ld bc, $0101                                  ; $40ca: $01 $01 $01
    rlca                                          ; $40cd: $07
    ld bc, $0101                                  ; $40ce: $01 $01 $01
    rlca                                          ; $40d1: $07
    ld bc, $0201                                  ; $40d2: $01 $01 $02
    rlca                                          ; $40d5: $07
    ld a, [$0d0c]                                 ; $40d6: $fa $0c $0d
    ld c, $d3                                     ; $40d9: $0e $d3
    rrca                                          ; $40db: $0f
    db $10                                        ; $40dc: $10
    ld de, $12d7                                  ; $40dd: $11 $d7 $12
    inc de                                        ; $40e0: $13
    inc d                                         ; $40e1: $14
    dec d                                         ; $40e2: $15
    ld d, $17                                     ; $40e3: $16 $17
    jr jr_079_40ea                                ; $40e5: $18 $03

    inc bc                                        ; $40e7: $03
    ld [bc], a                                    ; $40e8: $02
    inc bc                                        ; $40e9: $03

jr_079_40ea:
    inc hl                                        ; $40ea: $23
    inc bc                                        ; $40eb: $03
    ld [bc], a                                    ; $40ec: $02
    inc bc                                        ; $40ed: $03
    inc bc                                        ; $40ee: $03
    inc bc                                        ; $40ef: $03
    ld [bc], a                                    ; $40f0: $02
    inc bc                                        ; $40f1: $03
    inc bc                                        ; $40f2: $03
    inc bc                                        ; $40f3: $03
    ld [bc], a                                    ; $40f4: $02
    inc bc                                        ; $40f5: $03
    jp c, Jump_000_19db                           ; $40f6: $da $db $19

    ld a, [de]                                    ; $40f9: $1a
    sbc $df                                       ; $40fa: $de $df
    dec de                                        ; $40fc: $1b
    inc e                                         ; $40fd: $1c
    or $f2                                        ; $40fe: $f6 $f2
    dec e                                         ; $4100: $1d
    ld e, $f9                                     ; $4101: $1e $f9
    ld a, [$201f]                                 ; $4103: $fa $1f $20
    and e                                         ; $4106: $a3
    and e                                         ; $4107: $a3
    rlca                                          ; $4108: $07
    ld bc, $a3a3                                  ; $4109: $01 $a3 $a3
    rlca                                          ; $410c: $07
    ld bc, $a383                                  ; $410d: $01 $83 $a3
    rlca                                          ; $4110: $07
    ld [bc], a                                    ; $4111: $02
    add e                                         ; $4112: $83
    and e                                         ; $4113: $a3
    rlca                                          ; $4114: $07
    ld bc, $2221                                  ; $4115: $01 $21 $22
    inc hl                                        ; $4118: $23
    inc h                                         ; $4119: $24
    dec h                                         ; $411a: $25
    ld h, $27                                     ; $411b: $26 $27
    jr z, jr_079_4148                             ; $411d: $28 $29

    ld a, [hl+]                                   ; $411f: $2a
    dec hl                                        ; $4120: $2b
    inc l                                         ; $4121: $2c
    dec l                                         ; $4122: $2d
    ld l, $2f                                     ; $4123: $2e $2f
    jr nc, jr_079_4129                            ; $4125: $30 $02

    ld [bc], a                                    ; $4127: $02
    ld [bc], a                                    ; $4128: $02

jr_079_4129:
    rlca                                          ; $4129: $07
    ld bc, $0202                                  ; $412a: $01 $02 $02
    rlca                                          ; $412d: $07
    ld [bc], a                                    ; $412e: $02
    ld [bc], a                                    ; $412f: $02
    ld bc, $0101                                  ; $4130: $01 $01 $01
    ld bc, $0201                                  ; $4133: $01 $01 $02
    ld sp, $3332                                  ; $4136: $31 $32 $33
    inc [hl]                                      ; $4139: $34
    dec [hl]                                      ; $413a: $35
    ld [hl], $37                                  ; $413b: $36 $37
    jr c, jr_079_4178                             ; $413d: $38 $39

    ld a, [hl-]                                   ; $413f: $3a
    dec sp                                        ; $4140: $3b
    inc a                                         ; $4141: $3c
    ei                                            ; $4142: $fb
    db $fc                                        ; $4143: $fc
    ld [bc], a                                    ; $4144: $02
    dec a                                         ; $4145: $3d
    inc bc                                        ; $4146: $03
    inc bc                                        ; $4147: $03

jr_079_4148:
    ld [bc], a                                    ; $4148: $02
    inc bc                                        ; $4149: $03
    dec b                                         ; $414a: $05
    dec b                                         ; $414b: $05
    dec b                                         ; $414c: $05
    dec b                                         ; $414d: $05
    rlca                                          ; $414e: $07
    rlca                                          ; $414f: $07
    rlca                                          ; $4150: $07
    rlca                                          ; $4151: $07
    ld bc, $0202                                  ; $4152: $01 $02 $02
    ld bc, $d3d2                                  ; $4155: $01 $d2 $d3
    call nc, $d6d5                                ; $4158: $d4 $d5 $d6
    rst $10                                       ; $415b: $d7
    ret c                                         ; $415c: $d8

    db $fd                                        ; $415d: $fd
    jp c, Jump_000_19db                           ; $415e: $da $db $19

    ld a, [de]                                    ; $4161: $1a
    sbc $df                                       ; $4162: $de $df

jr_079_4164:
    dec [hl]                                      ; $4164: $35
    ld [hl], $83                                  ; $4165: $36 $83
    add e                                         ; $4167: $83
    rlca                                          ; $4168: $07
    ld bc, $a3a3                                  ; $4169: $01 $a3 $a3
    rlca                                          ; $416c: $07
    ld bc, $a3a3                                  ; $416d: $01 $a3 $a3
    rlca                                          ; $4170: $07
    ld bc, $a3a3                                  ; $4171: $01 $a3 $a3
    rlca                                          ; $4174: $07
    ld [bc], a                                    ; $4175: $02
    ld b, $07                                     ; $4176: $06 $07

jr_079_4178:
    db $e4                                        ; $4178: $e4
    push hl                                       ; $4179: $e5
    ld [$3f3e], sp                                ; $417a: $08 $3e $3f
    jp hl                                         ; $417d: $e9


    ld hl, $4140                                  ; $417e: $21 $40 $41
    ld b, d                                       ; $4181: $42
    scf                                           ; $4182: $37
    jr c, jr_079_4164                             ; $4183: $38 $df

    sbc $01                                       ; $4185: $de $01
    ld [bc], a                                    ; $4187: $02
    ld [bc], a                                    ; $4188: $02
    ld bc, $0202                                  ; $4189: $01 $02 $02
    ld bc, $0201                                  ; $418c: $01 $01 $02
    ld [bc], a                                    ; $418f: $02
    add e                                         ; $4190: $83
    add e                                         ; $4191: $83
    ld [bc], a                                    ; $4192: $02
    rlca                                          ; $4193: $07
    add e                                         ; $4194: $83
    add e                                         ; $4195: $83
    call nc, Call_000_06d5                        ; $4196: $d4 $d5 $06
    rlca                                          ; $4199: $07
    ret c                                         ; $419a: $d8

    db $fd                                        ; $419b: $fd
    ld [$433e], sp                                ; $419c: $08 $3e $43
    ld b, h                                       ; $419f: $44
    ld b, l                                       ; $41a0: $45
    ld b, [hl]                                    ; $41a1: $46
    pop de                                        ; $41a2: $d1
    pop de                                        ; $41a3: $d1
    pop de                                        ; $41a4: $d1
    pop de                                        ; $41a5: $d1
    ld bc, $0201                                  ; $41a6: $01 $01 $02
    ld [bc], a                                    ; $41a9: $02
    ld bc, $0201                                  ; $41aa: $01 $01 $02
    ld [bc], a                                    ; $41ad: $02
    add e                                         ; $41ae: $83
    add e                                         ; $41af: $83
    add e                                         ; $41b0: $83
    add e                                         ; $41b1: $83
    add e                                         ; $41b2: $83
    add e                                         ; $41b3: $83
    add e                                         ; $41b4: $83
    add e                                         ; $41b5: $83
    pop de                                        ; $41b6: $d1
    pop de                                        ; $41b7: $d1
    pop de                                        ; $41b8: $d1
    pop de                                        ; $41b9: $d1
    pop de                                        ; $41ba: $d1
    pop de                                        ; $41bb: $d1
    pop de                                        ; $41bc: $d1
    pop de                                        ; $41bd: $d1
    pop de                                        ; $41be: $d1
    pop de                                        ; $41bf: $d1
    pop de                                        ; $41c0: $d1
    pop de                                        ; $41c1: $d1
    ld b, a                                       ; $41c2: $47
    ld c, b                                       ; $41c3: $48
    ld c, c                                       ; $41c4: $49
    db $f4                                        ; $41c5: $f4
    inc bc                                        ; $41c6: $03
    inc bc                                        ; $41c7: $03
    inc bc                                        ; $41c8: $03
    inc bc                                        ; $41c9: $03
    inc bc                                        ; $41ca: $03
    inc bc                                        ; $41cb: $03
    inc bc                                        ; $41cc: $03
    inc bc                                        ; $41cd: $03
    inc bc                                        ; $41ce: $03
    inc bc                                        ; $41cf: $03
    inc bc                                        ; $41d0: $03
    inc bc                                        ; $41d1: $03
    inc bc                                        ; $41d2: $03
    inc bc                                        ; $41d3: $03
    inc bc                                        ; $41d4: $03
    ld [bc], a                                    ; $41d5: $02
    pop de                                        ; $41d6: $d1
    pop de                                        ; $41d7: $d1
    pop de                                        ; $41d8: $d1
    pop de                                        ; $41d9: $d1
    pop de                                        ; $41da: $d1
    pop de                                        ; $41db: $d1
    pop de                                        ; $41dc: $d1
    pop de                                        ; $41dd: $d1
    pop de                                        ; $41de: $d1
    pop de                                        ; $41df: $d1
    pop de                                        ; $41e0: $d1
    pop de                                        ; $41e1: $d1
    ld c, d                                       ; $41e2: $4a
    ld c, e                                       ; $41e3: $4b
    ld c, d                                       ; $41e4: $4a
    db $f4                                        ; $41e5: $f4
    inc bc                                        ; $41e6: $03
    inc bc                                        ; $41e7: $03
    inc bc                                        ; $41e8: $03
    inc bc                                        ; $41e9: $03
    inc bc                                        ; $41ea: $03
    inc bc                                        ; $41eb: $03
    inc bc                                        ; $41ec: $03
    inc bc                                        ; $41ed: $03
    inc bc                                        ; $41ee: $03
    inc bc                                        ; $41ef: $03
    inc bc                                        ; $41f0: $03
    inc bc                                        ; $41f1: $03
    ld [bc], a                                    ; $41f2: $02
    ld [bc], a                                    ; $41f3: $02
    ld [hl+], a                                   ; $41f4: $22
    ld [bc], a                                    ; $41f5: $02
    pop de                                        ; $41f6: $d1
    pop de                                        ; $41f7: $d1
    pop de                                        ; $41f8: $d1
    pop de                                        ; $41f9: $d1
    pop de                                        ; $41fa: $d1
    pop de                                        ; $41fb: $d1
    pop de                                        ; $41fc: $d1
    pop de                                        ; $41fd: $d1
    pop de                                        ; $41fe: $d1
    pop de                                        ; $41ff: $d1
    pop de                                        ; $4200: $d1
    pop de                                        ; $4201: $d1
    ld b, a                                       ; $4202: $47
    ld c, b                                       ; $4203: $48
    push af                                       ; $4204: $f5
    ld c, h                                       ; $4205: $4c
    inc bc                                        ; $4206: $03
    inc bc                                        ; $4207: $03
    inc bc                                        ; $4208: $03
    inc bc                                        ; $4209: $03
    inc bc                                        ; $420a: $03
    inc bc                                        ; $420b: $03
    inc bc                                        ; $420c: $03
    inc bc                                        ; $420d: $03
    inc bc                                        ; $420e: $03
    inc bc                                        ; $420f: $03
    inc bc                                        ; $4210: $03
    inc bc                                        ; $4211: $03
    inc bc                                        ; $4212: $03
    inc bc                                        ; $4213: $03
    inc bc                                        ; $4214: $03
    inc bc                                        ; $4215: $03
    pop de                                        ; $4216: $d1
    pop de                                        ; $4217: $d1
    pop de                                        ; $4218: $d1
    pop de                                        ; $4219: $d1
    pop de                                        ; $421a: $d1
    pop de                                        ; $421b: $d1
    pop de                                        ; $421c: $d1
    pop de                                        ; $421d: $d1
    pop de                                        ; $421e: $d1
    pop de                                        ; $421f: $d1
    pop de                                        ; $4220: $d1
    pop de                                        ; $4221: $d1
    ld c, l                                       ; $4222: $4d
    ld c, [hl]                                    ; $4223: $4e
    ld c, a                                       ; $4224: $4f
    push af                                       ; $4225: $f5
    inc bc                                        ; $4226: $03
    inc bc                                        ; $4227: $03
    inc bc                                        ; $4228: $03
    inc bc                                        ; $4229: $03
    inc bc                                        ; $422a: $03
    inc bc                                        ; $422b: $03
    inc bc                                        ; $422c: $03
    inc bc                                        ; $422d: $03
    inc bc                                        ; $422e: $03
    inc bc                                        ; $422f: $03
    inc bc                                        ; $4230: $03
    inc bc                                        ; $4231: $03
    inc bc                                        ; $4232: $03
    inc bc                                        ; $4233: $03
    inc bc                                        ; $4234: $03
    inc bc                                        ; $4235: $03
    ld d, b                                       ; $4236: $50
    ld d, c                                       ; $4237: $51
    ld d, d                                       ; $4238: $52
    inc de                                        ; $4239: $13
    ld d, e                                       ; $423a: $53
    ld d, h                                       ; $423b: $54
    ld d, l                                       ; $423c: $55
    inc de                                        ; $423d: $13
    ld d, [hl]                                    ; $423e: $56
    ld d, a                                       ; $423f: $57
    ld e, b                                       ; $4240: $58
    inc de                                        ; $4241: $13
    ld e, c                                       ; $4242: $59
    ld e, d                                       ; $4243: $5a
    ld e, e                                       ; $4244: $5b
    inc de                                        ; $4245: $13
    inc bc                                        ; $4246: $03
    inc bc                                        ; $4247: $03
    inc bc                                        ; $4248: $03
    ld [bc], a                                    ; $4249: $02
    inc bc                                        ; $424a: $03
    inc bc                                        ; $424b: $03
    inc bc                                        ; $424c: $03
    ld [bc], a                                    ; $424d: $02
    inc bc                                        ; $424e: $03
    inc bc                                        ; $424f: $03
    inc bc                                        ; $4250: $03
    ld [bc], a                                    ; $4251: $02
    inc bc                                        ; $4252: $03
    inc bc                                        ; $4253: $03
    inc bc                                        ; $4254: $03
    ld [bc], a                                    ; $4255: $02
    ld e, h                                       ; $4256: $5c
    ld e, l                                       ; $4257: $5d
    ld e, h                                       ; $4258: $5c
    inc de                                        ; $4259: $13
    ld e, [hl]                                    ; $425a: $5e
    ld e, a                                       ; $425b: $5f
    ld h, b                                       ; $425c: $60
    inc de                                        ; $425d: $13
    ld h, c                                       ; $425e: $61
    ld h, d                                       ; $425f: $62
    ld h, e                                       ; $4260: $63
    inc de                                        ; $4261: $13
    ld h, h                                       ; $4262: $64
    ld h, l                                       ; $4263: $65
    ld h, [hl]                                    ; $4264: $66
    inc de                                        ; $4265: $13
    ld [bc], a                                    ; $4266: $02
    ld [bc], a                                    ; $4267: $02
    ld [hl+], a                                   ; $4268: $22
    ld [bc], a                                    ; $4269: $02
    inc b                                         ; $426a: $04
    inc b                                         ; $426b: $04
    inc b                                         ; $426c: $04
    ld [bc], a                                    ; $426d: $02
    inc b                                         ; $426e: $04
    inc b                                         ; $426f: $04
    inc b                                         ; $4270: $04
    ld [bc], a                                    ; $4271: $02
    inc b                                         ; $4272: $04
    inc b                                         ; $4273: $04
    inc b                                         ; $4274: $04
    ld [bc], a                                    ; $4275: $02
    ld d, b                                       ; $4276: $50
    ld d, c                                       ; $4277: $51
    ld h, a                                       ; $4278: $67
    ld l, b                                       ; $4279: $68
    ld d, e                                       ; $427a: $53
    ld l, c                                       ; $427b: $69
    ld l, d                                       ; $427c: $6a
    ld l, e                                       ; $427d: $6b
    ld d, [hl]                                    ; $427e: $56
    ld l, h                                       ; $427f: $6c
    ld l, l                                       ; $4280: $6d
    ld l, [hl]                                    ; $4281: $6e
    ld e, c                                       ; $4282: $59
    ld e, d                                       ; $4283: $5a
    jr jr_079_42f5                                ; $4284: $18 $6f

    inc bc                                        ; $4286: $03
    inc bc                                        ; $4287: $03
    inc bc                                        ; $4288: $03
    inc bc                                        ; $4289: $03
    inc bc                                        ; $428a: $03
    inc bc                                        ; $428b: $03
    inc bc                                        ; $428c: $03
    inc bc                                        ; $428d: $03
    inc bc                                        ; $428e: $03
    inc bc                                        ; $428f: $03
    inc bc                                        ; $4290: $03
    inc bc                                        ; $4291: $03
    inc bc                                        ; $4292: $03
    inc bc                                        ; $4293: $03
    inc bc                                        ; $4294: $03
    inc bc                                        ; $4295: $03
    ld [hl], b                                    ; $4296: $70
    ld [hl], c                                    ; $4297: $71
    ld [hl], d                                    ; $4298: $72
    ld c, $73                                     ; $4299: $0e $73
    ld [hl], h                                    ; $429b: $74
    ld [hl], l                                    ; $429c: $75
    ld de, $7776                                  ; $429d: $11 $76 $77
    ld a, b                                       ; $42a0: $78
    inc d                                         ; $42a1: $14
    ld a, c                                       ; $42a2: $79
    ld a, d                                       ; $42a3: $7a
    ld a, e                                       ; $42a4: $7b
    jr jr_079_42aa                                ; $42a5: $18 $03

    inc bc                                        ; $42a7: $03
    inc bc                                        ; $42a8: $03
    inc bc                                        ; $42a9: $03

jr_079_42aa:
    inc bc                                        ; $42aa: $03
    inc bc                                        ; $42ab: $03
    inc bc                                        ; $42ac: $03
    inc bc                                        ; $42ad: $03
    inc bc                                        ; $42ae: $03
    inc bc                                        ; $42af: $03
    inc bc                                        ; $42b0: $03
    inc bc                                        ; $42b1: $03
    inc bc                                        ; $42b2: $03
    inc bc                                        ; $42b3: $03
    inc bc                                        ; $42b4: $03
    inc bc                                        ; $42b5: $03
    ld a, h                                       ; $42b6: $7c
    ld a, l                                       ; $42b7: $7d
    ld a, [hl]                                    ; $42b8: $7e
    inc sp                                        ; $42b9: $33
    ld a, a                                       ; $42ba: $7f
    pop af                                        ; $42bb: $f1
    dec [hl]                                      ; $42bc: $35
    ld [hl], $80                                  ; $42bd: $36 $80
    add c                                         ; $42bf: $81

jr_079_42c0:
    add hl, sp                                    ; $42c0: $39
    ld a, [hl-]                                   ; $42c1: $3a
    cpl                                           ; $42c2: $2f
    jr nc, jr_079_42c0                            ; $42c3: $30 $fb

    db $fc                                        ; $42c5: $fc
    inc bc                                        ; $42c6: $03
    inc bc                                        ; $42c7: $03
    inc bc                                        ; $42c8: $03
    ld [bc], a                                    ; $42c9: $02
    dec b                                         ; $42ca: $05
    dec b                                         ; $42cb: $05
    dec b                                         ; $42cc: $05
    dec b                                         ; $42cd: $05
    rrca                                          ; $42ce: $0f
    rrca                                          ; $42cf: $0f
    rlca                                          ; $42d0: $07
    rlca                                          ; $42d1: $07
    ld [bc], a                                    ; $42d2: $02
    ld bc, $0101                                  ; $42d3: $01 $01 $01
    add d                                         ; $42d6: $82
    add e                                         ; $42d7: $83
    add h                                         ; $42d8: $84
    inc sp                                        ; $42d9: $33
    scf                                           ; $42da: $37
    jr c, jr_079_435c                             ; $42db: $38 $7f

    pop af                                        ; $42dd: $f1
    dec sp                                        ; $42de: $3b
    inc a                                         ; $42df: $3c
    add b                                         ; $42e0: $80
    add c                                         ; $42e1: $81
    ld [bc], a                                    ; $42e2: $02
    dec a                                         ; $42e3: $3d
    cpl                                           ; $42e4: $2f
    jr nc, @+$0e                                  ; $42e5: $30 $0c

    inc c                                         ; $42e7: $0c
    inc c                                         ; $42e8: $0c
    ld [bc], a                                    ; $42e9: $02
    dec b                                         ; $42ea: $05
    dec b                                         ; $42eb: $05
    dec b                                         ; $42ec: $05
    dec b                                         ; $42ed: $05
    rlca                                          ; $42ee: $07
    rlca                                          ; $42ef: $07
    rrca                                          ; $42f0: $0f
    rrca                                          ; $42f1: $0f
    ld bc, $0101                                  ; $42f2: $01 $01 $01

jr_079_42f5:
    ld bc, $7d7c                                  ; $42f5: $01 $7c $7d
    inc [hl]                                      ; $42f8: $34
    ld a, h                                       ; $42f9: $7c
    ldh [$e1], a                                  ; $42fa: $e0 $e1
    xor $ef                                       ; $42fc: $ee $ef
    rst $30                                       ; $42fe: $f7
    ld hl, sp-$02                                 ; $42ff: $f8 $fe
    rst $38                                       ; $4301: $ff
    ei                                            ; $4302: $fb
    db $fc                                        ; $4303: $fc
    ld [bc], a                                    ; $4304: $02
    inc bc                                        ; $4305: $03
    inc bc                                        ; $4306: $03
    inc bc                                        ; $4307: $03
    inc bc                                        ; $4308: $03
    inc bc                                        ; $4309: $03
    dec b                                         ; $430a: $05
    dec b                                         ; $430b: $05
    dec b                                         ; $430c: $05
    dec b                                         ; $430d: $05
    rlca                                          ; $430e: $07
    rlca                                          ; $430f: $07
    rlca                                          ; $4310: $07
    rlca                                          ; $4311: $07
    ld bc, $0202                                  ; $4312: $01 $02 $02
    ld bc, $7e7d                                  ; $4315: $01 $7d $7e
    add l                                         ; $4318: $85
    inc [hl]                                      ; $4319: $34
    ldh a, [$f1]                                  ; $431a: $f0 $f1
    dec de                                        ; $431c: $1b
    inc e                                         ; $431d: $1c
    nop                                           ; $431e: $00
    ld bc, $1e1d                                  ; $431f: $01 $1d $1e
    inc b                                         ; $4322: $04
    dec b                                         ; $4323: $05
    rra                                           ; $4324: $1f
    jr nz, jr_079_432a                            ; $4325: $20 $03

    inc bc                                        ; $4327: $03
    dec bc                                        ; $4328: $0b
    inc bc                                        ; $4329: $03

jr_079_432a:
    dec b                                         ; $432a: $05
    dec b                                         ; $432b: $05
    dec b                                         ; $432c: $05
    dec b                                         ; $432d: $05
    rlca                                          ; $432e: $07
    rlca                                          ; $432f: $07
    rlca                                          ; $4330: $07
    rlca                                          ; $4331: $07
    ld bc, $0101                                  ; $4332: $01 $01 $01
    ld bc, $e5e4                                  ; $4335: $01 $e4 $e5
    call nc, Call_000_3fd5                        ; $4338: $d4 $d5 $3f
    jp hl                                         ; $433b: $e9


    ret c                                         ; $433c: $d8

    db $fd                                        ; $433d: $fd
    add [hl]                                      ; $433e: $86
    add a                                         ; $433f: $87
    adc b                                         ; $4340: $88
    adc c                                         ; $4341: $89
    pop de                                        ; $4342: $d1
    pop de                                        ; $4343: $d1
    pop de                                        ; $4344: $d1
    pop de                                        ; $4345: $d1
    ld bc, $0101                                  ; $4346: $01 $01 $01
    ld bc, $0101                                  ; $4349: $01 $01 $01
    ld [bc], a                                    ; $434c: $02
    ld [bc], a                                    ; $434d: $02
    adc e                                         ; $434e: $8b
    adc e                                         ; $434f: $8b
    adc e                                         ; $4350: $8b
    adc e                                         ; $4351: $8b
    add e                                         ; $4352: $83
    add e                                         ; $4353: $83
    add e                                         ; $4354: $83
    add e                                         ; $4355: $83
    ld [c], a                                     ; $4356: $e2
    db $e3                                        ; $4357: $e3
    db $e4                                        ; $4358: $e4
    push hl                                       ; $4359: $e5
    and $e7                                       ; $435a: $e6 $e7

jr_079_435c:
    add sp, -$17                                  ; $435c: $e8 $e9
    ld b, e                                       ; $435e: $43
    ld b, h                                       ; $435f: $44
    ld b, l                                       ; $4360: $45
    ld b, [hl]                                    ; $4361: $46
    pop de                                        ; $4362: $d1
    pop de                                        ; $4363: $d1
    pop de                                        ; $4364: $d1
    pop de                                        ; $4365: $d1
    ld bc, $0101                                  ; $4366: $01 $01 $01
    ld bc, $0606                                  ; $4369: $01 $06 $06
    ld bc, $8301                                  ; $436c: $01 $01 $83
    add e                                         ; $436f: $83
    add e                                         ; $4370: $83
    add e                                         ; $4371: $83
    add e                                         ; $4372: $83
    add e                                         ; $4373: $83
    add e                                         ; $4374: $83
    add e                                         ; $4375: $83
    pop de                                        ; $4376: $d1
    pop de                                        ; $4377: $d1
    pop de                                        ; $4378: $d1
    pop de                                        ; $4379: $d1
    pop de                                        ; $437a: $d1
    pop de                                        ; $437b: $d1
    pop de                                        ; $437c: $d1
    pop de                                        ; $437d: $d1
    pop de                                        ; $437e: $d1
    pop de                                        ; $437f: $d1
    pop de                                        ; $4380: $d1
    pop de                                        ; $4381: $d1
    ld b, a                                       ; $4382: $47
    ld c, b                                       ; $4383: $48
    db $f4                                        ; $4384: $f4
    adc d                                         ; $4385: $8a
    inc bc                                        ; $4386: $03
    inc bc                                        ; $4387: $03
    inc bc                                        ; $4388: $03
    inc bc                                        ; $4389: $03
    inc bc                                        ; $438a: $03
    inc bc                                        ; $438b: $03
    inc bc                                        ; $438c: $03
    inc bc                                        ; $438d: $03
    inc bc                                        ; $438e: $03
    inc bc                                        ; $438f: $03
    inc bc                                        ; $4390: $03
    inc bc                                        ; $4391: $03
    inc bc                                        ; $4392: $03
    inc bc                                        ; $4393: $03
    ld [bc], a                                    ; $4394: $02
    dec bc                                        ; $4395: $0b
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
    adc e                                         ; $43a2: $8b
    adc h                                         ; $43a3: $8c
    adc l                                         ; $43a4: $8d
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
    dec bc                                        ; $43b2: $0b
    dec bc                                        ; $43b3: $0b
    dec bc                                        ; $43b4: $0b
    inc bc                                        ; $43b5: $03
    ld d, b                                       ; $43b6: $50
    ld d, c                                       ; $43b7: $51
    inc de                                        ; $43b8: $13
    adc [hl]                                      ; $43b9: $8e
    ld d, e                                       ; $43ba: $53
    ld l, c                                       ; $43bb: $69
    inc de                                        ; $43bc: $13
    adc a                                         ; $43bd: $8f
    ld d, [hl]                                    ; $43be: $56
    ld l, h                                       ; $43bf: $6c
    inc de                                        ; $43c0: $13
    sub b                                         ; $43c1: $90
    ld e, c                                       ; $43c2: $59
    ld e, d                                       ; $43c3: $5a
    inc de                                        ; $43c4: $13
    sub c                                         ; $43c5: $91
    inc bc                                        ; $43c6: $03
    inc bc                                        ; $43c7: $03
    ld [bc], a                                    ; $43c8: $02
    dec bc                                        ; $43c9: $0b
    inc bc                                        ; $43ca: $03
    inc bc                                        ; $43cb: $03
    ld [bc], a                                    ; $43cc: $02
    dec bc                                        ; $43cd: $0b
    inc bc                                        ; $43ce: $03
    inc bc                                        ; $43cf: $03
    ld [bc], a                                    ; $43d0: $02
    dec bc                                        ; $43d1: $0b
    inc bc                                        ; $43d2: $03
    inc bc                                        ; $43d3: $03
    ld [bc], a                                    ; $43d4: $02
    dec bc                                        ; $43d5: $0b
    sub d                                         ; $43d6: $92
    sub e                                         ; $43d7: $93
    sub h                                         ; $43d8: $94
    ld c, a                                       ; $43d9: $4f
    sub l                                         ; $43da: $95
    sub [hl]                                      ; $43db: $96
    sub a                                         ; $43dc: $97
    ld [hl], d                                    ; $43dd: $72
    sbc b                                         ; $43de: $98
    sbc c                                         ; $43df: $99
    sbc d                                         ; $43e0: $9a
    ld [hl], l                                    ; $43e1: $75
    sbc e                                         ; $43e2: $9b
    sbc h                                         ; $43e3: $9c
    sbc l                                         ; $43e4: $9d
    ld a, b                                       ; $43e5: $78
    dec bc                                        ; $43e6: $0b
    dec bc                                        ; $43e7: $0b
    dec bc                                        ; $43e8: $0b
    inc bc                                        ; $43e9: $03
    dec bc                                        ; $43ea: $0b
    dec bc                                        ; $43eb: $0b
    dec bc                                        ; $43ec: $0b
    inc bc                                        ; $43ed: $03
    dec bc                                        ; $43ee: $0b
    dec bc                                        ; $43ef: $0b
    dec bc                                        ; $43f0: $0b
    inc bc                                        ; $43f1: $03
    dec bc                                        ; $43f2: $0b
    dec bc                                        ; $43f3: $0b
    dec bc                                        ; $43f4: $0b
    inc bc                                        ; $43f5: $03
    push af                                       ; $43f6: $f5
    ld b, a                                       ; $43f7: $47
    sbc [hl]                                      ; $43f8: $9e
    sbc a                                         ; $43f9: $9f
    and b                                         ; $43fa: $a0
    and c                                         ; $43fb: $a1
    and d                                         ; $43fc: $a2
    and e                                         ; $43fd: $a3
    and h                                         ; $43fe: $a4
    and l                                         ; $43ff: $a5
    and [hl]                                      ; $4400: $a6
    and a                                         ; $4401: $a7
    xor b                                         ; $4402: $a8
    xor c                                         ; $4403: $a9
    xor d                                         ; $4404: $aa
    xor e                                         ; $4405: $ab
    inc bc                                        ; $4406: $03
    inc bc                                        ; $4407: $03
    dec bc                                        ; $4408: $0b
    dec bc                                        ; $4409: $0b
    dec bc                                        ; $440a: $0b
    dec bc                                        ; $440b: $0b
    dec bc                                        ; $440c: $0b
    dec bc                                        ; $440d: $0b
    dec bc                                        ; $440e: $0b
    dec bc                                        ; $440f: $0b
    dec bc                                        ; $4410: $0b
    dec bc                                        ; $4411: $0b
    dec bc                                        ; $4412: $0b
    dec bc                                        ; $4413: $0b
    dec bc                                        ; $4414: $0b
    dec bc                                        ; $4415: $0b
    adc d                                         ; $4416: $8a
    db $f4                                        ; $4417: $f4
    ld c, d                                       ; $4418: $4a
    ld c, e                                       ; $4419: $4b
    adc [hl]                                      ; $441a: $8e
    inc de                                        ; $441b: $13
    ld e, h                                       ; $441c: $5c
    ld e, l                                       ; $441d: $5d
    xor h                                         ; $441e: $ac
    inc de                                        ; $441f: $13
    ld e, [hl]                                    ; $4420: $5e
    ld e, a                                       ; $4421: $5f
    xor l                                         ; $4422: $ad
    inc de                                        ; $4423: $13
    ld h, c                                       ; $4424: $61
    ld h, d                                       ; $4425: $62
    dec bc                                        ; $4426: $0b
    ld [bc], a                                    ; $4427: $02
    ld [bc], a                                    ; $4428: $02
    ld [bc], a                                    ; $4429: $02
    dec bc                                        ; $442a: $0b
    ld [bc], a                                    ; $442b: $02
    ld [bc], a                                    ; $442c: $02
    ld [bc], a                                    ; $442d: $02
    dec bc                                        ; $442e: $0b
    ld [bc], a                                    ; $442f: $02
    inc b                                         ; $4430: $04
    inc b                                         ; $4431: $04
    dec bc                                        ; $4432: $0b
    ld [bc], a                                    ; $4433: $02
    inc b                                         ; $4434: $04
    inc b                                         ; $4435: $04
    ld a, h                                       ; $4436: $7c
    ld a, l                                       ; $4437: $7d
    inc sp                                        ; $4438: $33
    xor [hl]                                      ; $4439: $ae
    dec h                                         ; $443a: $25
    jr c, @+$81                                   ; $443b: $38 $7f

    pop af                                        ; $443d: $f1
    add hl, hl                                    ; $443e: $29
    inc a                                         ; $443f: $3c
    add b                                         ; $4440: $80
    add c                                         ; $4441: $81
    dec l                                         ; $4442: $2d
    ld l, $2f                                     ; $4443: $2e $2f
    jr nc, jr_079_444a                            ; $4445: $30 $03

    inc bc                                        ; $4447: $03
    ld [bc], a                                    ; $4448: $02
    dec bc                                        ; $4449: $0b

jr_079_444a:
    dec b                                         ; $444a: $05
    dec b                                         ; $444b: $05
    dec b                                         ; $444c: $05
    dec b                                         ; $444d: $05
    rlca                                          ; $444e: $07
    rlca                                          ; $444f: $07
    rrca                                          ; $4450: $0f
    rrca                                          ; $4451: $0f
    ld bc, $0202                                  ; $4452: $01 $02 $02
    ld bc, $b0af                                  ; $4455: $01 $af $b0
    or c                                          ; $4458: $b1
    ld a, e                                       ; $4459: $7b
    dec [hl]                                      ; $445a: $35
    or d                                          ; $445b: $b2
    or e                                          ; $445c: $b3
    add l                                         ; $445d: $85
    add hl, sp                                    ; $445e: $39
    ld a, [hl-]                                   ; $445f: $3a
    dec sp                                        ; $4460: $3b
    inc a                                         ; $4461: $3c
    ei                                            ; $4462: $fb
    db $fc                                        ; $4463: $fc
    ld [bc], a                                    ; $4464: $02
    dec a                                         ; $4465: $3d
    dec bc                                        ; $4466: $0b
    dec bc                                        ; $4467: $0b
    dec bc                                        ; $4468: $0b
    inc bc                                        ; $4469: $03
    dec b                                         ; $446a: $05
    dec bc                                        ; $446b: $0b
    dec bc                                        ; $446c: $0b
    dec bc                                        ; $446d: $0b
    rlca                                          ; $446e: $07
    dec b                                         ; $446f: $05
    dec b                                         ; $4470: $05
    dec b                                         ; $4471: $05
    ld bc, $0707                                  ; $4472: $01 $07 $07
    rlca                                          ; $4475: $07
    or h                                          ; $4476: $b4
    or l                                          ; $4477: $b5
    or [hl]                                       ; $4478: $b6
    or a                                          ; $4479: $b7
    inc [hl]                                      ; $447a: $34
    ld a, h                                       ; $447b: $7c
    cp b                                          ; $447c: $b8
    cp c                                          ; $447d: $b9
    add b                                         ; $447e: $80
    add c                                         ; $447f: $81

jr_079_4480:
    add hl, sp                                    ; $4480: $39
    ld a, [hl-]                                   ; $4481: $3a
    cpl                                           ; $4482: $2f
    jr nc, jr_079_4480                            ; $4483: $30 $fb

    db $fc                                        ; $4485: $fc
    dec bc                                        ; $4486: $0b
    dec bc                                        ; $4487: $0b
    dec bc                                        ; $4488: $0b
    dec bc                                        ; $4489: $0b
    inc bc                                        ; $448a: $03
    inc bc                                        ; $448b: $03
    dec bc                                        ; $448c: $0b
    dec bc                                        ; $448d: $0b
    dec c                                         ; $448e: $0d
    dec c                                         ; $448f: $0d
    dec b                                         ; $4490: $05
    dec b                                         ; $4491: $05
    rlca                                          ; $4492: $07
    rlca                                          ; $4493: $07
    rlca                                          ; $4494: $07
    rlca                                          ; $4495: $07
    cp d                                          ; $4496: $ba
    inc de                                        ; $4497: $13
    ld h, h                                       ; $4498: $64
    ld h, l                                       ; $4499: $65
    cp e                                          ; $449a: $bb
    inc sp                                        ; $449b: $33
    add d                                         ; $449c: $82
    add e                                         ; $449d: $83
    dec sp                                        ; $449e: $3b
    inc a                                         ; $449f: $3c
    add b                                         ; $44a0: $80
    add c                                         ; $44a1: $81
    ld [bc], a                                    ; $44a2: $02
    dec a                                         ; $44a3: $3d
    cpl                                           ; $44a4: $2f
    jr nc, jr_079_44b2                            ; $44a5: $30 $0b

    ld [bc], a                                    ; $44a7: $02
    inc b                                         ; $44a8: $04
    inc b                                         ; $44a9: $04
    dec bc                                        ; $44aa: $0b
    ld [bc], a                                    ; $44ab: $02
    inc c                                         ; $44ac: $0c
    inc c                                         ; $44ad: $0c
    dec b                                         ; $44ae: $05
    dec b                                         ; $44af: $05
    dec c                                         ; $44b0: $0d
    dec c                                         ; $44b1: $0d

jr_079_44b2:
    rlca                                          ; $44b2: $07
    rlca                                          ; $44b3: $07
    rlca                                          ; $44b4: $07
    rlca                                          ; $44b5: $07
    ld b, $07                                     ; $44b6: $06 $07
    db $e4                                        ; $44b8: $e4
    push hl                                       ; $44b9: $e5
    ld [$3f3e], sp                                ; $44ba: $08 $3e $3f
    jp hl                                         ; $44bd: $e9


    add [hl]                                      ; $44be: $86
    add a                                         ; $44bf: $87
    adc b                                         ; $44c0: $88
    adc c                                         ; $44c1: $89
    pop de                                        ; $44c2: $d1
    pop de                                        ; $44c3: $d1
    pop de                                        ; $44c4: $d1
    pop de                                        ; $44c5: $d1
    ld [bc], a                                    ; $44c6: $02
    ld bc, $0102                                  ; $44c7: $01 $02 $01
    ld bc, $0201                                  ; $44ca: $01 $01 $02
    ld [bc], a                                    ; $44cd: $02
    adc e                                         ; $44ce: $8b
    adc e                                         ; $44cf: $8b
    adc e                                         ; $44d0: $8b
    adc e                                         ; $44d1: $8b
    add e                                         ; $44d2: $83
    add e                                         ; $44d3: $83
    add e                                         ; $44d4: $83
    add e                                         ; $44d5: $83
    ld b, $07                                     ; $44d6: $06 $07
    db $e4                                        ; $44d8: $e4
    push hl                                       ; $44d9: $e5
    ld [$3f3e], sp                                ; $44da: $08 $3e $3f
    jp hl                                         ; $44dd: $e9


    ld b, e                                       ; $44de: $43
    ld b, h                                       ; $44df: $44
    ld b, l                                       ; $44e0: $45
    ld b, [hl]                                    ; $44e1: $46
    pop de                                        ; $44e2: $d1
    pop de                                        ; $44e3: $d1
    pop de                                        ; $44e4: $d1
    pop de                                        ; $44e5: $d1
    ld [bc], a                                    ; $44e6: $02
    ld [bc], a                                    ; $44e7: $02
    ld bc, $0201                                  ; $44e8: $01 $01 $02
    ld bc, $0101                                  ; $44eb: $01 $01 $01
    add e                                         ; $44ee: $83
    add e                                         ; $44ef: $83
    add e                                         ; $44f0: $83
    add e                                         ; $44f1: $83
    add e                                         ; $44f2: $83
    add e                                         ; $44f3: $83
    add e                                         ; $44f4: $83
    add e                                         ; $44f5: $83
    ld c, d                                       ; $44f6: $4a
    db $f4                                        ; $44f7: $f4
    ld c, b                                       ; $44f8: $48
    ld c, c                                       ; $44f9: $49
    ld e, h                                       ; $44fa: $5c
    inc de                                        ; $44fb: $13
    ld d, c                                       ; $44fc: $51
    ld d, d                                       ; $44fd: $52
    ld h, b                                       ; $44fe: $60
    inc de                                        ; $44ff: $13
    ld l, c                                       ; $4500: $69
    ld d, l                                       ; $4501: $55
    ld h, e                                       ; $4502: $63
    inc de                                        ; $4503: $13
    ld l, h                                       ; $4504: $6c
    ld e, b                                       ; $4505: $58
    ld [hl+], a                                   ; $4506: $22
    ld [bc], a                                    ; $4507: $02
    inc bc                                        ; $4508: $03
    inc bc                                        ; $4509: $03
    ld [hl+], a                                   ; $450a: $22
    ld [bc], a                                    ; $450b: $02
    inc bc                                        ; $450c: $03
    inc bc                                        ; $450d: $03
    inc b                                         ; $450e: $04
    ld [bc], a                                    ; $450f: $02
    inc bc                                        ; $4510: $03
    inc bc                                        ; $4511: $03
    inc b                                         ; $4512: $04
    ld [bc], a                                    ; $4513: $02
    inc bc                                        ; $4514: $03
    inc bc                                        ; $4515: $03
    adc d                                         ; $4516: $8a
    adc e                                         ; $4517: $8b
    cp h                                          ; $4518: $bc
    pop de                                        ; $4519: $d1
    adc [hl]                                      ; $451a: $8e
    sub d                                         ; $451b: $92
    cp l                                          ; $451c: $bd
    cp [hl]                                       ; $451d: $be
    ld d, h                                       ; $451e: $54
    sub l                                         ; $451f: $95
    cp a                                          ; $4520: $bf
    ret nz                                        ; $4521: $c0

    ld d, a                                       ; $4522: $57
    sbc b                                         ; $4523: $98
    pop bc                                        ; $4524: $c1
    jp nz, $0b0b                                  ; $4525: $c2 $0b $0b

    dec bc                                        ; $4528: $0b
    inc bc                                        ; $4529: $03
    dec bc                                        ; $452a: $0b
    dec bc                                        ; $452b: $0b
    dec bc                                        ; $452c: $0b
    dec bc                                        ; $452d: $0b
    inc bc                                        ; $452e: $03
    dec bc                                        ; $452f: $0b
    dec bc                                        ; $4530: $0b
    dec bc                                        ; $4531: $0b
    inc bc                                        ; $4532: $03
    dec bc                                        ; $4533: $0b
    adc e                                         ; $4534: $8b
    adc e                                         ; $4535: $8b
    ld h, [hl]                                    ; $4536: $66
    inc de                                        ; $4537: $13

jr_079_4538:
    ld e, d                                       ; $4538: $5a
    ld e, e                                       ; $4539: $5b
    add h                                         ; $453a: $84
    inc sp                                        ; $453b: $33
    ld a, l                                       ; $453c: $7d
    ld a, [hl]                                    ; $453d: $7e
    add hl, sp                                    ; $453e: $39
    ld a, [hl-]                                   ; $453f: $3a
    dec sp                                        ; $4540: $3b
    inc a                                         ; $4541: $3c
    ei                                            ; $4542: $fb
    db $fc                                        ; $4543: $fc
    ld [bc], a                                    ; $4544: $02
    dec a                                         ; $4545: $3d
    inc b                                         ; $4546: $04
    ld [bc], a                                    ; $4547: $02
    inc bc                                        ; $4548: $03
    inc bc                                        ; $4549: $03
    inc c                                         ; $454a: $0c
    ld [bc], a                                    ; $454b: $02
    inc bc                                        ; $454c: $03
    inc bc                                        ; $454d: $03
    dec b                                         ; $454e: $05
    dec b                                         ; $454f: $05
    dec b                                         ; $4550: $05
    dec b                                         ; $4551: $05
    rlca                                          ; $4552: $07
    rlca                                          ; $4553: $07
    rlca                                          ; $4554: $07
    rlca                                          ; $4555: $07
    sub c                                         ; $4556: $91
    sbc e                                         ; $4557: $9b
    jp $aec4                                      ; $4558: $c3 $c4 $ae


    xor a                                         ; $455b: $af
    push bc                                       ; $455c: $c5
    add $80                                       ; $455d: $c6 $80
    add c                                         ; $455f: $81
    ld a, [$2ff9]                                 ; $4560: $fa $f9 $2f
    jr nc, jr_079_4538                            ; $4563: $30 $d3

    jp nc, $0b0b                                  ; $4565: $d2 $0b $0b

    adc e                                         ; $4568: $8b
    adc e                                         ; $4569: $8b
    dec bc                                        ; $456a: $0b
    dec bc                                        ; $456b: $0b
    adc e                                         ; $456c: $8b
    adc e                                         ; $456d: $8b
    dec c                                         ; $456e: $0d
    dec c                                         ; $456f: $0d
    add e                                         ; $4570: $83
    and e                                         ; $4571: $a3
    rlca                                          ; $4572: $07
    rlca                                          ; $4573: $07
    and e                                         ; $4574: $a3
    and e                                         ; $4575: $a3
    call nc, $e2d5                                ; $4576: $d4 $d5 $e2
    db $e3                                        ; $4579: $e3
    ret c                                         ; $457a: $d8

    reti                                          ; $457b: $d9


    and $e7                                       ; $457c: $e6 $e7
    ld b, d                                       ; $457e: $42
    ld b, c                                       ; $457f: $41
    ld [$f6eb], a                                 ; $4580: $ea $eb $f6
    ld a, [c]                                     ; $4583: $f2
    xor $ef                                       ; $4584: $ee $ef
    ld bc, $0202                                  ; $4586: $01 $02 $02
    ld bc, $0101                                  ; $4589: $01 $01 $01
    ld b, $06                                     ; $458c: $06 $06
    and e                                         ; $458e: $a3
    and e                                         ; $458f: $a3
    ld b, $06                                     ; $4590: $06 $06
    add e                                         ; $4592: $83
    and e                                         ; $4593: $a3
    rlca                                          ; $4594: $07
    ld b, $e4                                     ; $4595: $06 $e4
    push hl                                       ; $4597: $e5
    rst $10                                       ; $4598: $d7
    sub $e8                                       ; $4599: $d6 $e8
    jp hl                                         ; $459b: $e9


    db $db                                        ; $459c: $db
    jp c, $edec                                   ; $459d: $da $ec $ed

    rst $18                                       ; $45a0: $df
    sbc $f0                                       ; $45a1: $de $f0
    pop af                                        ; $45a3: $f1
    ld a, [c]                                     ; $45a4: $f2
    or $01                                        ; $45a5: $f6 $01
    rlca                                          ; $45a7: $07
    add e                                         ; $45a8: $83
    add e                                         ; $45a9: $83
    ld bc, $8307                                  ; $45aa: $01 $07 $83
    add e                                         ; $45ad: $83
    ld b, $07                                     ; $45ae: $06 $07
    add e                                         ; $45b0: $83
    add e                                         ; $45b1: $83
    ld bc, $8307                                  ; $45b2: $01 $07 $83
    and e                                         ; $45b5: $a3
    or $f2                                        ; $45b6: $f6 $f2
    add hl, sp                                    ; $45b8: $39
    ld a, [hl-]                                   ; $45b9: $3a
    ld sp, hl                                     ; $45ba: $f9
    ld a, [$fcfb]                                 ; $45bb: $fa $fb $fc
    jp nc, $d4d3                                  ; $45be: $d2 $d3 $d4

    push de                                       ; $45c1: $d5
    sub $d7                                       ; $45c2: $d6 $d7
    ret c                                         ; $45c4: $d8

    reti                                          ; $45c5: $d9


    add e                                         ; $45c6: $83
    and e                                         ; $45c7: $a3
    rlca                                          ; $45c8: $07
    ld [bc], a                                    ; $45c9: $02
    add e                                         ; $45ca: $83
    and e                                         ; $45cb: $a3
    rlca                                          ; $45cc: $07
    ld bc, $8383                                  ; $45cd: $01 $83 $83
    rlca                                          ; $45d0: $07
    ld bc, $a3a3                                  ; $45d1: $01 $a3 $a3
    rlca                                          ; $45d4: $07
    ld bc, $3c3b                                  ; $45d5: $01 $3b $3c
    ld a, [c]                                     ; $45d8: $f2
    or $02                                        ; $45d9: $f6 $02
    dec a                                         ; $45db: $3d
    ld a, [$e2f9]                                 ; $45dc: $fa $f9 $e2
    db $e3                                        ; $45df: $e3
    db $d3                                        ; $45e0: $d3
    jp nc, $e7e6                                  ; $45e1: $d2 $e6 $e7

    rst $10                                       ; $45e4: $d7
    sub $01                                       ; $45e5: $d6 $01
    rlca                                          ; $45e7: $07
    inc bc                                        ; $45e8: $03
    inc hl                                        ; $45e9: $23
    ld bc, $0307                                  ; $45ea: $01 $07 $03
    inc hl                                        ; $45ed: $23
    ld bc, $2307                                  ; $45ee: $01 $07 $23
    inc hl                                        ; $45f1: $23
    ld b, $07                                     ; $45f2: $06 $07
    inc bc                                        ; $45f4: $03
    inc bc                                        ; $45f5: $03
    jp c, $dcdb                                   ; $45f6: $da $db $dc

    db $dd                                        ; $45f9: $dd
    sbc $df                                       ; $45fa: $de $df
    ldh [$e1], a                                  ; $45fc: $e0 $e1
    or $f2                                        ; $45fe: $f6 $f2
    rst $30                                       ; $4600: $f7
    ld hl, sp-$07                                 ; $4601: $f8 $f9
    ld a, [$fcfb]                                 ; $4603: $fa $fb $fc
    and e                                         ; $4606: $a3
    and e                                         ; $4607: $a3
    rlca                                          ; $4608: $07
    ld b, $a3                                     ; $4609: $06 $a3
    and e                                         ; $460b: $a3
    rlca                                          ; $460c: $07
    ld b, $83                                     ; $460d: $06 $83
    and e                                         ; $460f: $a3
    rlca                                          ; $4610: $07
    ld bc, $a383                                  ; $4611: $01 $83 $a3
    rlca                                          ; $4614: $07
    ld bc, $ebea                                  ; $4615: $01 $ea $eb
    db $db                                        ; $4618: $db
    jp c, $efee                                   ; $4619: $da $ee $ef

    rst $18                                       ; $461c: $df
    sbc $fe                                       ; $461d: $de $fe
    rst $38                                       ; $461f: $ff
    ld a, [c]                                     ; $4620: $f2
    or $02                                        ; $4621: $f6 $02
    inc bc                                        ; $4623: $03
    ld a, [$06f9]                                 ; $4624: $fa $f9 $06
    rlca                                          ; $4627: $07
    inc bc                                        ; $4628: $03
    inc bc                                        ; $4629: $03
    ld b, $07                                     ; $462a: $06 $07
    inc bc                                        ; $462c: $03
    inc bc                                        ; $462d: $03
    ld b, $07                                     ; $462e: $06 $07
    inc bc                                        ; $4630: $03
    inc hl                                        ; $4631: $23
    ld bc, $0307                                  ; $4632: $01 $07 $03
    inc hl                                        ; $4635: $23
    jp nc, $d4d3                                  ; $4636: $d2 $d3 $d4

    push de                                       ; $4639: $d5
    sub $d7                                       ; $463a: $d6 $d7
    ret c                                         ; $463c: $d8

    db $fd                                        ; $463d: $fd
    jp c, Jump_000_19db                           ; $463e: $da $db $19

    ld a, [de]                                    ; $4641: $1a
    sbc $df                                       ; $4642: $de $df
    dec [hl]                                      ; $4644: $35
    ld [hl], $83                                  ; $4645: $36 $83
    add e                                         ; $4647: $83
    rlca                                          ; $4648: $07
    ld bc, $a3a3                                  ; $4649: $01 $a3 $a3
    rlca                                          ; $464c: $07
    ld [bc], a                                    ; $464d: $02
    and e                                         ; $464e: $a3
    and e                                         ; $464f: $a3
    rlca                                          ; $4650: $07
    ld [bc], a                                    ; $4651: $02
    and e                                         ; $4652: $a3
    and e                                         ; $4653: $a3
    rlca                                          ; $4654: $07
    ld bc, $0706                                  ; $4655: $01 $06 $07
    db $d3                                        ; $4658: $d3
    jp nc, $3e08                                  ; $4659: $d2 $08 $3e

    rst $10                                       ; $465c: $d7
    sub $21                                       ; $465d: $d6 $21
    ld b, b                                       ; $465f: $40
    db $db                                        ; $4660: $db
    jp c, $3837                                   ; $4661: $da $37 $38

    rst $18                                       ; $4664: $df
    sbc $01                                       ; $4665: $de $01
    rlca                                          ; $4667: $07
    inc hl                                        ; $4668: $23
    inc hl                                        ; $4669: $23
    ld bc, $0307                                  ; $466a: $01 $07 $03
    inc bc                                        ; $466d: $03
    ld [bc], a                                    ; $466e: $02
    rlca                                          ; $466f: $07
    inc bc                                        ; $4670: $03
    inc bc                                        ; $4671: $03
    ld [bc], a                                    ; $4672: $02
    rlca                                          ; $4673: $07
    inc bc                                        ; $4674: $03
    inc bc                                        ; $4675: $03
    dec sp                                        ; $4676: $3b
    inc a                                         ; $4677: $3c
    ld a, [c]                                     ; $4678: $f2
    di                                            ; $4679: $f3
    ld [bc], a                                    ; $467a: $02
    dec a                                         ; $467b: $3d
    ld a, [$060c]                                 ; $467c: $fa $0c $06
    rlca                                          ; $467f: $07
    db $d3                                        ; $4680: $d3
    rrca                                          ; $4681: $0f
    ld [$d73e], sp                                ; $4682: $08 $3e $d7
    ld [de], a                                    ; $4685: $12
    ld bc, $0307                                  ; $4686: $01 $07 $03
    inc bc                                        ; $4689: $03
    ld bc, $0307                                  ; $468a: $01 $07 $03
    inc bc                                        ; $468d: $03
    ld bc, $2307                                  ; $468e: $01 $07 $23
    inc bc                                        ; $4691: $03
    ld bc, $0307                                  ; $4692: $01 $07 $03
    inc bc                                        ; $4695: $03
    db $f4                                        ; $4696: $f4
    adc e                                         ; $4697: $8b
    rst $00                                       ; $4698: $c7
    ld c, a                                       ; $4699: $4f
    inc de                                        ; $469a: $13
    sub d                                         ; $469b: $92
    ret z                                         ; $469c: $c8

    ld [hl], d                                    ; $469d: $72
    inc de                                        ; $469e: $13
    sub l                                         ; $469f: $95
    ret                                           ; $46a0: $c9


    ld [hl], l                                    ; $46a1: $75
    inc de                                        ; $46a2: $13
    sbc b                                         ; $46a3: $98
    jp z, $0278                                   ; $46a4: $ca $78 $02

    dec bc                                        ; $46a7: $0b
    dec bc                                        ; $46a8: $0b
    inc bc                                        ; $46a9: $03
    ld [bc], a                                    ; $46aa: $02
    dec bc                                        ; $46ab: $0b
    dec bc                                        ; $46ac: $0b
    inc bc                                        ; $46ad: $03
    ld [bc], a                                    ; $46ae: $02
    dec bc                                        ; $46af: $0b
    dec bc                                        ; $46b0: $0b
    inc bc                                        ; $46b1: $03
    ld [bc], a                                    ; $46b2: $02
    dec bc                                        ; $46b3: $0b
    dec bc                                        ; $46b4: $0b
    inc bc                                        ; $46b5: $03
    pop de                                        ; $46b6: $d1
    pop de                                        ; $46b7: $d1
    pop de                                        ; $46b8: $d1
    pop de                                        ; $46b9: $d1
    pop de                                        ; $46ba: $d1
    pop de                                        ; $46bb: $d1
    pop de                                        ; $46bc: $d1
    set 2, c                                      ; $46bd: $cb $d1
    pop de                                        ; $46bf: $d1
    pop de                                        ; $46c0: $d1
    call z, $d1d1                                 ; $46c1: $cc $d1 $d1
    call Call_000_03ce                            ; $46c4: $cd $ce $03
    inc bc                                        ; $46c7: $03
    inc bc                                        ; $46c8: $03
    inc bc                                        ; $46c9: $03
    inc bc                                        ; $46ca: $03
    inc bc                                        ; $46cb: $03
    inc bc                                        ; $46cc: $03
    dec bc                                        ; $46cd: $0b
    inc bc                                        ; $46ce: $03
    inc bc                                        ; $46cf: $03
    inc bc                                        ; $46d0: $03
    dec bc                                        ; $46d1: $0b
    inc bc                                        ; $46d2: $03
    inc bc                                        ; $46d3: $03
    dec bc                                        ; $46d4: $0b
    dec bc                                        ; $46d5: $0b
    pop de                                        ; $46d6: $d1
    pop de                                        ; $46d7: $d1
    pop de                                        ; $46d8: $d1
    pop de                                        ; $46d9: $d1
    rst $00                                       ; $46da: $c7
    ld c, a                                       ; $46db: $4f
    push af                                       ; $46dc: $f5
    ld b, a                                       ; $46dd: $47
    ret z                                         ; $46de: $c8

    ld [hl], d                                    ; $46df: $72
    ld c, $50                                     ; $46e0: $0e $50
    ret                                           ; $46e2: $c9


    ld [hl], l                                    ; $46e3: $75
    ld d, h                                       ; $46e4: $54
    ld d, e                                       ; $46e5: $53
    inc bc                                        ; $46e6: $03
    inc bc                                        ; $46e7: $03
    inc bc                                        ; $46e8: $03
    inc bc                                        ; $46e9: $03
    dec bc                                        ; $46ea: $0b
    inc bc                                        ; $46eb: $03
    inc bc                                        ; $46ec: $03
    inc bc                                        ; $46ed: $03
    dec bc                                        ; $46ee: $0b
    inc bc                                        ; $46ef: $03
    inc bc                                        ; $46f0: $03
    inc bc                                        ; $46f1: $03
    dec bc                                        ; $46f2: $0b
    inc bc                                        ; $46f3: $03
    inc bc                                        ; $46f4: $03
    inc bc                                        ; $46f5: $03
    pop de                                        ; $46f6: $d1
    pop de                                        ; $46f7: $d1
    pop de                                        ; $46f8: $d1
    pop de                                        ; $46f9: $d1
    ld c, b                                       ; $46fa: $48
    ld c, c                                       ; $46fb: $49
    db $f4                                        ; $46fc: $f4
    ld c, d                                       ; $46fd: $4a
    ld d, c                                       ; $46fe: $51
    ld d, d                                       ; $46ff: $52
    inc de                                        ; $4700: $13
    ld e, h                                       ; $4701: $5c
    ld l, c                                       ; $4702: $69
    ld d, l                                       ; $4703: $55
    inc de                                        ; $4704: $13
    ld e, [hl]                                    ; $4705: $5e
    inc bc                                        ; $4706: $03
    inc bc                                        ; $4707: $03
    inc bc                                        ; $4708: $03
    inc bc                                        ; $4709: $03
    inc bc                                        ; $470a: $03
    inc bc                                        ; $470b: $03
    ld [bc], a                                    ; $470c: $02
    ld [bc], a                                    ; $470d: $02
    inc bc                                        ; $470e: $03
    inc bc                                        ; $470f: $03
    ld [bc], a                                    ; $4710: $02
    ld [bc], a                                    ; $4711: $02
    inc bc                                        ; $4712: $03
    inc bc                                        ; $4713: $03
    ld [bc], a                                    ; $4714: $02
    inc b                                         ; $4715: $04
    pop de                                        ; $4716: $d1
    pop de                                        ; $4717: $d1
    rst $08                                       ; $4718: $cf
    ret nc                                        ; $4719: $d0

    pop de                                        ; $471a: $d1
    pop de                                        ; $471b: $d1
    pop de                                        ; $471c: $d1
    jp nc, $d1d1                                  ; $471d: $d2 $d1 $d1

    db $d3                                        ; $4720: $d3
    call nc, $d1d1                                ; $4721: $d4 $d1 $d1
    ld sp, hl                                     ; $4724: $f9
    ld a, [$0303]                                 ; $4725: $fa $03 $03
    dec bc                                        ; $4728: $0b
    dec bc                                        ; $4729: $0b
    inc bc                                        ; $472a: $03
    inc bc                                        ; $472b: $03
    dec bc                                        ; $472c: $0b
    dec bc                                        ; $472d: $0b
    inc bc                                        ; $472e: $03
    inc bc                                        ; $472f: $03
    dec bc                                        ; $4730: $0b
    dec bc                                        ; $4731: $0b
    inc bc                                        ; $4732: $03
    inc bc                                        ; $4733: $03
    inc bc                                        ; $4734: $03
    inc hl                                        ; $4735: $23
    jp z, Jump_079_5778                           ; $4736: $ca $78 $57

    ld d, [hl]                                    ; $4739: $56
    push de                                       ; $473a: $d5
    ld a, e                                       ; $473b: $7b
    jr @+$5b                                      ; $473c: $18 $59

    sub $85                                       ; $473e: $d6 $85
    inc [hl]                                      ; $4740: $34
    ld a, h                                       ; $4741: $7c
    ei                                            ; $4742: $fb
    db $fc                                        ; $4743: $fc
    ld [bc], a                                    ; $4744: $02
    dec a                                         ; $4745: $3d
    dec bc                                        ; $4746: $0b
    inc bc                                        ; $4747: $03
    inc bc                                        ; $4748: $03
    inc bc                                        ; $4749: $03
    dec bc                                        ; $474a: $0b
    inc bc                                        ; $474b: $03
    inc bc                                        ; $474c: $03
    inc bc                                        ; $474d: $03
    dec bc                                        ; $474e: $0b
    dec bc                                        ; $474f: $0b
    inc bc                                        ; $4750: $03
    inc bc                                        ; $4751: $03
    dec b                                         ; $4752: $05
    dec b                                         ; $4753: $05
    dec b                                         ; $4754: $05
    dec b                                         ; $4755: $05
    ld l, h                                       ; $4756: $6c
    ld e, b                                       ; $4757: $58
    inc de                                        ; $4758: $13
    ld h, c                                       ; $4759: $61
    ld e, d                                       ; $475a: $5a
    ld e, e                                       ; $475b: $5b
    inc de                                        ; $475c: $13
    ld h, h                                       ; $475d: $64
    ld a, l                                       ; $475e: $7d
    ld a, [hl]                                    ; $475f: $7e

jr_079_4760:
    inc sp                                        ; $4760: $33
    add d                                         ; $4761: $82
    cpl                                           ; $4762: $2f
    jr nc, jr_079_4760                            ; $4763: $30 $fb

    db $fc                                        ; $4765: $fc
    inc bc                                        ; $4766: $03
    inc bc                                        ; $4767: $03
    ld [bc], a                                    ; $4768: $02
    inc b                                         ; $4769: $04
    inc bc                                        ; $476a: $03
    inc bc                                        ; $476b: $03
    ld [bc], a                                    ; $476c: $02
    inc b                                         ; $476d: $04
    inc bc                                        ; $476e: $03
    inc bc                                        ; $476f: $03
    ld [bc], a                                    ; $4770: $02
    inc c                                         ; $4771: $0c
    dec b                                         ; $4772: $05
    dec b                                         ; $4773: $05
    dec b                                         ; $4774: $05
    dec b                                         ; $4775: $05
    pop de                                        ; $4776: $d1
    pop de                                        ; $4777: $d1
    jp nc, $d1d3                                  ; $4778: $d2 $d3 $d1

    pop de                                        ; $477b: $d1
    sub $d7                                       ; $477c: $d6 $d7
    pop de                                        ; $477e: $d1
    pop de                                        ; $477f: $d1
    jp c, $d1db                                   ; $4780: $da $db $d1

    pop de                                        ; $4783: $d1
    sbc $df                                       ; $4784: $de $df
    inc bc                                        ; $4786: $03
    inc bc                                        ; $4787: $03
    inc bc                                        ; $4788: $03
    inc bc                                        ; $4789: $03
    inc bc                                        ; $478a: $03
    inc bc                                        ; $478b: $03
    inc hl                                        ; $478c: $23
    inc hl                                        ; $478d: $23
    inc bc                                        ; $478e: $03
    inc bc                                        ; $478f: $03
    inc hl                                        ; $4790: $23
    inc hl                                        ; $4791: $23
    inc bc                                        ; $4792: $03
    inc bc                                        ; $4793: $03
    inc hl                                        ; $4794: $23
    inc hl                                        ; $4795: $23
    call nc, $e2d5                                ; $4796: $d4 $d5 $e2
    db $e3                                        ; $4799: $e3
    ret c                                         ; $479a: $d8

    reti                                          ; $479b: $d9


    and $e7                                       ; $479c: $e6 $e7
    call c, $eadd                                 ; $479e: $dc $dd $ea
    db $eb                                        ; $47a1: $eb
    ldh [$e1], a                                  ; $47a2: $e0 $e1
    xor $ef                                       ; $47a4: $ee $ef
    rlca                                          ; $47a6: $07
    rlca                                          ; $47a7: $07
    rlca                                          ; $47a8: $07
    rlca                                          ; $47a9: $07
    rlca                                          ; $47aa: $07
    ld bc, $0606                                  ; $47ab: $01 $06 $06
    rlca                                          ; $47ae: $07
    ld b, $06                                     ; $47af: $06 $06
    ld b, $07                                     ; $47b1: $06 $07
    ld b, $06                                     ; $47b3: $06 $06
    ld b, $e4                                     ; $47b5: $06 $e4
    push hl                                       ; $47b7: $e5
    call nc, $e8d5                                ; $47b8: $d4 $d5 $e8
    jp hl                                         ; $47bb: $e9


    ret c                                         ; $47bc: $d8

    db $fd                                        ; $47bd: $fd
    db $ec                                        ; $47be: $ec
    db $ed                                        ; $47bf: $ed
    add hl, de                                    ; $47c0: $19
    ld a, [de]                                    ; $47c1: $1a
    ldh a, [$f1]                                  ; $47c2: $f0 $f1
    ld b, c                                       ; $47c4: $41
    ld b, d                                       ; $47c5: $42
    rlca                                          ; $47c6: $07
    rlca                                          ; $47c7: $07
    rlca                                          ; $47c8: $07
    rlca                                          ; $47c9: $07
    ld bc, $0101                                  ; $47ca: $01 $01 $01
    ld [bc], a                                    ; $47cd: $02
    ld b, $01                                     ; $47ce: $06 $01
    ld bc, $0101                                  ; $47d0: $01 $01 $01
    ld bc, $8383                                  ; $47d3: $01 $83 $83
    adc d                                         ; $47d6: $8a
    db $f4                                        ; $47d7: $f4
    di                                            ; $47d8: $f3
    ld a, [c]                                     ; $47d9: $f2
    adc [hl]                                      ; $47da: $8e
    rst $10                                       ; $47db: $d7
    inc c                                         ; $47dc: $0c
    ld a, [$d8ac]                                 ; $47dd: $fa $ac $d8
    rrca                                          ; $47e0: $0f
    db $d3                                        ; $47e1: $d3
    xor l                                         ; $47e2: $ad
    reti                                          ; $47e3: $d9


    ld [de], a                                    ; $47e4: $12
    rst $10                                       ; $47e5: $d7
    dec bc                                        ; $47e6: $0b
    ld [bc], a                                    ; $47e7: $02
    inc hl                                        ; $47e8: $23
    inc hl                                        ; $47e9: $23
    dec bc                                        ; $47ea: $0b
    ld a, [bc]                                    ; $47eb: $0a
    inc hl                                        ; $47ec: $23
    inc hl                                        ; $47ed: $23
    dec bc                                        ; $47ee: $0b
    ld a, [bc]                                    ; $47ef: $0a
    inc hl                                        ; $47f0: $23
    inc bc                                        ; $47f1: $03
    dec bc                                        ; $47f2: $0b
    ld a, [bc]                                    ; $47f3: $0a
    inc hl                                        ; $47f4: $23
    inc hl                                        ; $47f5: $23
    rst $30                                       ; $47f6: $f7
    ld hl, sp-$02                                 ; $47f7: $f8 $fe
    rst $38                                       ; $47f9: $ff
    ei                                            ; $47fa: $fb
    db $fc                                        ; $47fb: $fc
    ld [bc], a                                    ; $47fc: $02
    inc bc                                        ; $47fd: $03
    call nc, Call_000_06d5                        ; $47fe: $d4 $d5 $06
    rlca                                          ; $4801: $07
    ret c                                         ; $4802: $d8

    db $fd                                        ; $4803: $fd
    ld [$0709], sp                                ; $4804: $08 $09 $07
    ld bc, $0606                                  ; $4807: $01 $06 $06
    rlca                                          ; $480a: $07
    ld bc, $0101                                  ; $480b: $01 $01 $01
    rlca                                          ; $480e: $07
    ld [bc], a                                    ; $480f: $02
    ld bc, $0701                                  ; $4810: $01 $01 $07
    ld [bc], a                                    ; $4813: $02
    ld bc, $0001                                  ; $4814: $01 $01 $00
    ld bc, $f3f2                                  ; $4817: $01 $f2 $f3
    inc b                                         ; $481a: $04
    dec b                                         ; $481b: $05
    ld a, [$e40c]                                 ; $481c: $fa $0c $e4
    push hl                                       ; $481f: $e5
    db $d3                                        ; $4820: $d3
    rrca                                          ; $4821: $0f
    ld a, [bc]                                    ; $4822: $0a
    dec bc                                        ; $4823: $0b
    rst $10                                       ; $4824: $d7
    ld [de], a                                    ; $4825: $12
    ld b, $07                                     ; $4826: $06 $07
    add e                                         ; $4828: $83
    add e                                         ; $4829: $83
    ld bc, $0307                                  ; $482a: $01 $07 $03
    inc bc                                        ; $482d: $03
    ld bc, $2307                                  ; $482e: $01 $07 $23
    inc bc                                        ; $4831: $03
    ld bc, $0307                                  ; $4832: $01 $07 $03
    inc bc                                        ; $4835: $03
    pop de                                        ; $4836: $d1
    pop de                                        ; $4837: $d1
    pop de                                        ; $4838: $d1
    pop de                                        ; $4839: $d1
    ld c, e                                       ; $483a: $4b
    ld c, d                                       ; $483b: $4a
    db $f4                                        ; $483c: $f4
    ld b, a                                       ; $483d: $47
    ld e, l                                       ; $483e: $5d
    ld e, h                                       ; $483f: $5c
    inc de                                        ; $4840: $13
    ld d, b                                       ; $4841: $50
    ld e, a                                       ; $4842: $5f
    ld h, b                                       ; $4843: $60
    inc de                                        ; $4844: $13
    ld d, e                                       ; $4845: $53
    inc bc                                        ; $4846: $03
    inc bc                                        ; $4847: $03
    inc bc                                        ; $4848: $03
    inc bc                                        ; $4849: $03
    ld [bc], a                                    ; $484a: $02
    ld [hl+], a                                   ; $484b: $22
    ld [bc], a                                    ; $484c: $02
    inc bc                                        ; $484d: $03
    ld [bc], a                                    ; $484e: $02
    ld [hl+], a                                   ; $484f: $22
    ld [bc], a                                    ; $4850: $02
    inc bc                                        ; $4851: $03
    inc b                                         ; $4852: $04
    inc b                                         ; $4853: $04
    ld [bc], a                                    ; $4854: $02
    inc bc                                        ; $4855: $03
    pop de                                        ; $4856: $d1
    pop de                                        ; $4857: $d1
    pop de                                        ; $4858: $d1
    pop de                                        ; $4859: $d1
    ld c, b                                       ; $485a: $48
    ld c, c                                       ; $485b: $49
    adc d                                         ; $485c: $8a
    db $f4                                        ; $485d: $f4
    ld d, c                                       ; $485e: $51
    ld d, d                                       ; $485f: $52
    adc [hl]                                      ; $4860: $8e
    rst $10                                       ; $4861: $d7
    ld l, c                                       ; $4862: $69
    ld d, l                                       ; $4863: $55
    adc a                                         ; $4864: $8f
    ret c                                         ; $4865: $d8

    inc bc                                        ; $4866: $03
    inc bc                                        ; $4867: $03
    inc bc                                        ; $4868: $03
    inc bc                                        ; $4869: $03
    inc bc                                        ; $486a: $03
    inc bc                                        ; $486b: $03
    dec bc                                        ; $486c: $0b
    ld [bc], a                                    ; $486d: $02
    inc bc                                        ; $486e: $03
    inc bc                                        ; $486f: $03
    dec bc                                        ; $4870: $0b
    ld a, [bc]                                    ; $4871: $0a
    inc bc                                        ; $4872: $03
    inc bc                                        ; $4873: $03
    dec bc                                        ; $4874: $0b
    ld a, [bc]                                    ; $4875: $0a
    pop de                                        ; $4876: $d1
    pop de                                        ; $4877: $d1
    pop de                                        ; $4878: $d1
    pop de                                        ; $4879: $d1
    rst $00                                       ; $487a: $c7
    ld c, a                                       ; $487b: $4f
    push af                                       ; $487c: $f5
    ld b, a                                       ; $487d: $47
    ret z                                         ; $487e: $c8

    ld [hl], d                                    ; $487f: $72
    jp c, $c9db                                   ; $4880: $da $db $c9

    ld [hl], l                                    ; $4883: $75
    call c, Call_000_03d1                         ; $4884: $dc $d1 $03
    inc bc                                        ; $4887: $03
    inc bc                                        ; $4888: $03
    inc bc                                        ; $4889: $03
    dec bc                                        ; $488a: $0b
    inc bc                                        ; $488b: $03
    inc bc                                        ; $488c: $03
    inc bc                                        ; $488d: $03
    dec bc                                        ; $488e: $0b
    inc bc                                        ; $488f: $03
    dec bc                                        ; $4890: $0b
    dec bc                                        ; $4891: $0b
    dec bc                                        ; $4892: $0b
    inc bc                                        ; $4893: $03
    dec bc                                        ; $4894: $0b
    inc bc                                        ; $4895: $03
    pop de                                        ; $4896: $d1
    pop de                                        ; $4897: $d1
    pop de                                        ; $4898: $d1
    pop de                                        ; $4899: $d1
    ld c, b                                       ; $489a: $48
    ld c, c                                       ; $489b: $49
    adc d                                         ; $489c: $8a
    db $f4                                        ; $489d: $f4
    ld d, c                                       ; $489e: $51
    ld d, d                                       ; $489f: $52
    adc [hl]                                      ; $48a0: $8e
    dec c                                         ; $48a1: $0d
    db $dd                                        ; $48a2: $dd
    ld d, l                                       ; $48a3: $55
    adc a                                         ; $48a4: $8f
    db $10                                        ; $48a5: $10
    inc bc                                        ; $48a6: $03
    inc bc                                        ; $48a7: $03
    inc bc                                        ; $48a8: $03
    inc bc                                        ; $48a9: $03
    inc bc                                        ; $48aa: $03
    inc bc                                        ; $48ab: $03
    dec bc                                        ; $48ac: $0b
    ld [bc], a                                    ; $48ad: $02
    inc bc                                        ; $48ae: $03
    inc bc                                        ; $48af: $03
    dec bc                                        ; $48b0: $0b
    ld [bc], a                                    ; $48b1: $02
    dec bc                                        ; $48b2: $0b
    inc bc                                        ; $48b3: $03
    dec bc                                        ; $48b4: $0b
    ld [bc], a                                    ; $48b5: $02
    ld h, d                                       ; $48b6: $62
    ld h, e                                       ; $48b7: $63
    inc de                                        ; $48b8: $13
    ld d, [hl]                                    ; $48b9: $56
    ld h, l                                       ; $48ba: $65
    ld h, [hl]                                    ; $48bb: $66
    inc de                                        ; $48bc: $13
    ld e, c                                       ; $48bd: $59
    add e                                         ; $48be: $83
    add h                                         ; $48bf: $84
    inc sp                                        ; $48c0: $33
    ld a, h                                       ; $48c1: $7c
    ld [bc], a                                    ; $48c2: $02
    dec a                                         ; $48c3: $3d
    cpl                                           ; $48c4: $2f
    jr nc, jr_079_48cb                            ; $48c5: $30 $04

    inc b                                         ; $48c7: $04
    ld [bc], a                                    ; $48c8: $02
    inc bc                                        ; $48c9: $03
    inc b                                         ; $48ca: $04

jr_079_48cb:
    inc b                                         ; $48cb: $04
    ld [bc], a                                    ; $48cc: $02
    inc bc                                        ; $48cd: $03
    inc c                                         ; $48ce: $0c
    inc c                                         ; $48cf: $0c
    ld [bc], a                                    ; $48d0: $02
    inc bc                                        ; $48d1: $03
    dec b                                         ; $48d2: $05
    dec b                                         ; $48d3: $05
    dec b                                         ; $48d4: $05
    dec b                                         ; $48d5: $05
    ld l, h                                       ; $48d6: $6c
    ld e, b                                       ; $48d7: $58
    sub b                                         ; $48d8: $90
    reti                                          ; $48d9: $d9


    ld e, d                                       ; $48da: $5a
    ld e, e                                       ; $48db: $5b
    sub c                                         ; $48dc: $91
    inc de                                        ; $48dd: $13
    ld a, l                                       ; $48de: $7d
    ld a, [hl]                                    ; $48df: $7e
    xor [hl]                                      ; $48e0: $ae
    inc sp                                        ; $48e1: $33
    ei                                            ; $48e2: $fb
    db $fc                                        ; $48e3: $fc
    ld [bc], a                                    ; $48e4: $02
    dec a                                         ; $48e5: $3d
    inc bc                                        ; $48e6: $03
    inc bc                                        ; $48e7: $03
    dec bc                                        ; $48e8: $0b
    ld a, [bc]                                    ; $48e9: $0a
    inc bc                                        ; $48ea: $03
    inc bc                                        ; $48eb: $03
    dec bc                                        ; $48ec: $0b
    ld [bc], a                                    ; $48ed: $02
    inc bc                                        ; $48ee: $03
    inc bc                                        ; $48ef: $03
    dec bc                                        ; $48f0: $0b
    ld [bc], a                                    ; $48f1: $02
    dec b                                         ; $48f2: $05
    dec b                                         ; $48f3: $05
    dec b                                         ; $48f4: $05
    dec b                                         ; $48f5: $05
    jp z, $de78                                   ; $48f6: $ca $78 $de

    rst $18                                       ; $48f9: $df
    push de                                       ; $48fa: $d5
    ld a, e                                       ; $48fb: $7b
    ldh [$e1], a                                  ; $48fc: $e0 $e1
    sub $85                                       ; $48fe: $d6 $85

jr_079_4900:
    inc [hl]                                      ; $4900: $34
    ld a, h                                       ; $4901: $7c
    cpl                                           ; $4902: $2f
    jr nc, jr_079_4900                            ; $4903: $30 $fb

    db $fc                                        ; $4905: $fc
    dec bc                                        ; $4906: $0b
    inc bc                                        ; $4907: $03
    dec bc                                        ; $4908: $0b
    dec bc                                        ; $4909: $0b
    dec bc                                        ; $490a: $0b
    inc bc                                        ; $490b: $03
    dec bc                                        ; $490c: $0b
    dec bc                                        ; $490d: $0b
    dec bc                                        ; $490e: $0b
    dec bc                                        ; $490f: $0b
    inc bc                                        ; $4910: $03
    inc bc                                        ; $4911: $03
    dec b                                         ; $4912: $05
    dec b                                         ; $4913: $05
    dec b                                         ; $4914: $05
    dec b                                         ; $4915: $05
    ld [c], a                                     ; $4916: $e2
    ld e, b                                       ; $4917: $58
    sub b                                         ; $4918: $90
    inc de                                        ; $4919: $13
    db $e3                                        ; $491a: $e3
    ld e, e                                       ; $491b: $5b
    sub c                                         ; $491c: $91
    rla                                           ; $491d: $17
    ld a, l                                       ; $491e: $7d
    ld a, [hl]                                    ; $491f: $7e
    xor [hl]                                      ; $4920: $ae
    inc sp                                        ; $4921: $33
    ld [bc], a                                    ; $4922: $02
    dec a                                         ; $4923: $3d
    cpl                                           ; $4924: $2f
    jr nc, jr_079_4932                            ; $4925: $30 $0b

    inc bc                                        ; $4927: $03
    dec bc                                        ; $4928: $0b
    ld [bc], a                                    ; $4929: $02
    dec bc                                        ; $492a: $0b
    inc bc                                        ; $492b: $03
    dec bc                                        ; $492c: $0b
    ld [bc], a                                    ; $492d: $02
    inc bc                                        ; $492e: $03
    inc bc                                        ; $492f: $03
    dec bc                                        ; $4930: $0b
    ld [bc], a                                    ; $4931: $02

jr_079_4932:
    dec b                                         ; $4932: $05
    dec b                                         ; $4933: $05
    dec b                                         ; $4934: $05
    dec b                                         ; $4935: $05
    ld b, $07                                     ; $4936: $06 $07
    db $e4                                        ; $4938: $e4
    push hl                                       ; $4939: $e5
    ld [$3f3e], sp                                ; $493a: $08 $3e $3f
    jp hl                                         ; $493d: $e9


    ld hl, $e440                                  ; $493e: $21 $40 $e4
    push hl                                       ; $4941: $e5
    ld b, e                                       ; $4942: $43
    ld b, h                                       ; $4943: $44
    ld b, l                                       ; $4944: $45
    ld b, [hl]                                    ; $4945: $46
    rlca                                          ; $4946: $07
    rlca                                          ; $4947: $07
    rlca                                          ; $4948: $07
    rlca                                          ; $4949: $07
    ld [bc], a                                    ; $494a: $02
    ld bc, $0101                                  ; $494b: $01 $01 $01
    ld [bc], a                                    ; $494e: $02
    ld [bc], a                                    ; $494f: $02
    add hl, bc                                    ; $4950: $09
    add hl, bc                                    ; $4951: $09
    add e                                         ; $4952: $83
    add e                                         ; $4953: $83
    add e                                         ; $4954: $83
    add e                                         ; $4955: $83
    call nc, Call_000_06d5                        ; $4956: $d4 $d5 $06
    rlca                                          ; $4959: $07
    ret c                                         ; $495a: $d8

    db $fd                                        ; $495b: $fd
    ld [$193e], sp                                ; $495c: $08 $3e $19
    ld a, [de]                                    ; $495f: $1a
    ld hl, $8640                                  ; $4960: $21 $40 $86
    add a                                         ; $4963: $87
    adc b                                         ; $4964: $88
    adc c                                         ; $4965: $89
    rlca                                          ; $4966: $07
    rlca                                          ; $4967: $07
    rlca                                          ; $4968: $07
    rlca                                          ; $4969: $07
    ld bc, $0201                                  ; $496a: $01 $01 $02
    ld bc, $0202                                  ; $496d: $01 $02 $02
    ld [bc], a                                    ; $4970: $02
    ld [bc], a                                    ; $4971: $02
    adc e                                         ; $4972: $8b
    adc e                                         ; $4973: $8b
    adc e                                         ; $4974: $8b
    adc e                                         ; $4975: $8b
    db $e4                                        ; $4976: $e4
    push hl                                       ; $4977: $e5
    call nc, Call_000_3fd5                        ; $4978: $d4 $d5 $3f
    jp hl                                         ; $497b: $e9


    ret c                                         ; $497c: $d8

    db $fd                                        ; $497d: $fd
    db $e4                                        ; $497e: $e4
    push hl                                       ; $497f: $e5
    add hl, de                                    ; $4980: $19
    ld a, [de]                                    ; $4981: $1a
    ld b, e                                       ; $4982: $43
    ld b, h                                       ; $4983: $44
    ld b, l                                       ; $4984: $45
    ld b, [hl]                                    ; $4985: $46
    rlca                                          ; $4986: $07
    rlca                                          ; $4987: $07
    rlca                                          ; $4988: $07
    rlca                                          ; $4989: $07
    ld [bc], a                                    ; $498a: $02
    ld [bc], a                                    ; $498b: $02
    ld [bc], a                                    ; $498c: $02
    ld [bc], a                                    ; $498d: $02
    ld a, [bc]                                    ; $498e: $0a
    add hl, bc                                    ; $498f: $09
    ld bc, $8301                                  ; $4990: $01 $01 $83
    add e                                         ; $4993: $83
    add e                                         ; $4994: $83
    add e                                         ; $4995: $83
    db $f4                                        ; $4996: $f4
    adc e                                         ; $4997: $8b
    rst $00                                       ; $4998: $c7
    ld c, a                                       ; $4999: $4f
    dec c                                         ; $499a: $0d
    sub d                                         ; $499b: $92
    ret z                                         ; $499c: $c8

    ld [hl], d                                    ; $499d: $72
    db $10                                        ; $499e: $10
    sub l                                         ; $499f: $95
    ld d, h                                       ; $49a0: $54
    ld [hl], l                                    ; $49a1: $75
    inc de                                        ; $49a2: $13
    sbc b                                         ; $49a3: $98
    ld d, a                                       ; $49a4: $57
    ld a, b                                       ; $49a5: $78
    add d                                         ; $49a6: $82
    adc e                                         ; $49a7: $8b
    adc e                                         ; $49a8: $8b
    add e                                         ; $49a9: $83
    ld [bc], a                                    ; $49aa: $02
    dec bc                                        ; $49ab: $0b
    dec bc                                        ; $49ac: $0b
    inc bc                                        ; $49ad: $03
    ld [bc], a                                    ; $49ae: $02
    dec bc                                        ; $49af: $0b
    inc bc                                        ; $49b0: $03
    inc bc                                        ; $49b1: $03
    ld [bc], a                                    ; $49b2: $02
    dec bc                                        ; $49b3: $0b
    inc bc                                        ; $49b4: $03
    inc bc                                        ; $49b5: $03
    push af                                       ; $49b6: $f5
    ld b, a                                       ; $49b7: $47
    db $f4                                        ; $49b8: $f4
    ld c, c                                       ; $49b9: $49
    ld c, $50                                     ; $49ba: $0e $50
    inc de                                        ; $49bc: $13
    ld d, d                                       ; $49bd: $52
    ld de, $1353                                  ; $49be: $11 $53 $13
    ld d, l                                       ; $49c1: $55
    inc d                                         ; $49c2: $14
    ld d, [hl]                                    ; $49c3: $56
    inc de                                        ; $49c4: $13
    ld e, b                                       ; $49c5: $58
    add e                                         ; $49c6: $83
    add e                                         ; $49c7: $83
    add d                                         ; $49c8: $82
    add e                                         ; $49c9: $83
    inc bc                                        ; $49ca: $03
    inc bc                                        ; $49cb: $03
    ld [bc], a                                    ; $49cc: $02
    inc bc                                        ; $49cd: $03
    inc bc                                        ; $49ce: $03
    inc bc                                        ; $49cf: $03
    ld [bc], a                                    ; $49d0: $02
    inc bc                                        ; $49d1: $03
    inc bc                                        ; $49d2: $03
    inc bc                                        ; $49d3: $03
    ld [bc], a                                    ; $49d4: $02
    inc bc                                        ; $49d5: $03
    adc d                                         ; $49d6: $8a
    adc e                                         ; $49d7: $8b
    set 2, c                                      ; $49d8: $cb $d1
    adc [hl]                                      ; $49da: $8e
    sub d                                         ; $49db: $92
    call z, $8fd1                                 ; $49dc: $cc $d1 $8f
    sub l                                         ; $49df: $95
    adc $cd                                       ; $49e0: $ce $cd
    sub b                                         ; $49e2: $90
    sbc b                                         ; $49e3: $98
    ret nc                                        ; $49e4: $d0

    rst $08                                       ; $49e5: $cf
    adc e                                         ; $49e6: $8b
    adc e                                         ; $49e7: $8b
    xor e                                         ; $49e8: $ab
    add e                                         ; $49e9: $83
    dec bc                                        ; $49ea: $0b
    dec bc                                        ; $49eb: $0b
    dec hl                                        ; $49ec: $2b
    inc bc                                        ; $49ed: $03
    dec bc                                        ; $49ee: $0b
    dec bc                                        ; $49ef: $0b
    dec hl                                        ; $49f0: $2b
    dec hl                                        ; $49f1: $2b
    dec bc                                        ; $49f2: $0b
    dec bc                                        ; $49f3: $0b
    dec hl                                        ; $49f4: $2b
    dec hl                                        ; $49f5: $2b
    ld sp, hl                                     ; $49f6: $f9
    ld a, [$fffe]                                 ; $49f7: $fa $fe $ff
    di                                            ; $49fa: $f3
    ld a, [c]                                     ; $49fb: $f2
    ld [bc], a                                    ; $49fc: $02
    inc bc                                        ; $49fd: $03
    inc c                                         ; $49fe: $0c
    ld a, [$0706]                                 ; $49ff: $fa $06 $07
    rrca                                          ; $4a02: $0f
    db $d3                                        ; $4a03: $d3
    ld [$033e], sp                                ; $4a04: $08 $3e $03
    inc hl                                        ; $4a07: $23
    rlca                                          ; $4a08: $07
    ld b, $23                                     ; $4a09: $06 $23
    inc hl                                        ; $4a0b: $23
    rlca                                          ; $4a0c: $07
    ld bc, $2323                                  ; $4a0d: $01 $23 $23
    rlca                                          ; $4a10: $07
    ld bc, $0323                                  ; $4a11: $01 $23 $03
    rlca                                          ; $4a14: $07
    ld bc, $0100                                  ; $4a15: $01 $00 $01
    ld a, [$04f9]                                 ; $4a18: $fa $f9 $04
    dec b                                         ; $4a1b: $05
    db $d3                                        ; $4a1c: $d3
    jp nc, $e5e4                                  ; $4a1d: $d2 $e4 $e5

    rst $10                                       ; $4a20: $d7
    sub $3f                                       ; $4a21: $d6 $3f
    jp hl                                         ; $4a23: $e9


    db $db                                        ; $4a24: $db
    jp c, $0706                                   ; $4a25: $da $06 $07

    add e                                         ; $4a28: $83
    and e                                         ; $4a29: $a3
    ld bc, $a307                                  ; $4a2a: $01 $07 $a3
    and e                                         ; $4a2d: $a3
    ld bc, $8307                                  ; $4a2e: $01 $07 $83
    add e                                         ; $4a31: $83
    ld [bc], a                                    ; $4a32: $02
    rlca                                          ; $4a33: $07
    add e                                         ; $4a34: $83
    add e                                         ; $4a35: $83
    ld [de], a                                    ; $4a36: $12
    rst $10                                       ; $4a37: $d7

jr_079_4a38:
    ld hl, $1640                                  ; $4a38: $21 $40 $16
    dec d                                         ; $4a3b: $15
    scf                                           ; $4a3c: $37
    jr c, jr_079_4a71                             ; $4a3d: $38 $32

    ld sp, $3c3b                                  ; $4a3f: $31 $3b $3c
    ei                                            ; $4a42: $fb
    db $fc                                        ; $4a43: $fc
    ld [bc], a                                    ; $4a44: $02
    dec a                                         ; $4a45: $3d
    inc hl                                        ; $4a46: $23
    inc hl                                        ; $4a47: $23
    rlca                                          ; $4a48: $07
    ld [bc], a                                    ; $4a49: $02
    inc hl                                        ; $4a4a: $23
    inc hl                                        ; $4a4b: $23
    rlca                                          ; $4a4c: $07
    ld [bc], a                                    ; $4a4d: $02
    inc hl                                        ; $4a4e: $23
    inc hl                                        ; $4a4f: $23
    rlca                                          ; $4a50: $07
    ld [bc], a                                    ; $4a51: $02
    dec b                                         ; $4a52: $05
    dec b                                         ; $4a53: $05
    rlca                                          ; $4a54: $07
    ld bc, $e5e4                                  ; $4a55: $01 $e4 $e5
    rst $18                                       ; $4a58: $df
    sbc $7f                                       ; $4a59: $de $7f
    pop af                                        ; $4a5b: $f1
    ld a, [c]                                     ; $4a5c: $f2
    or $80                                        ; $4a5d: $f6 $80
    add c                                         ; $4a5f: $81
    ld a, [$2ff9]                                 ; $4a60: $fa $f9 $2f
    jr nc, jr_079_4a38                            ; $4a63: $30 $d3

    jp nc, $0f09                                  ; $4a65: $d2 $09 $0f

    add e                                         ; $4a68: $83
    add e                                         ; $4a69: $83
    ld bc, $8307                                  ; $4a6a: $01 $07 $83
    and e                                         ; $4a6d: $a3
    add hl, bc                                    ; $4a6e: $09
    rrca                                          ; $4a6f: $0f
    add e                                         ; $4a70: $83

jr_079_4a71:
    and e                                         ; $4a71: $a3
    ld bc, $a307                                  ; $4a72: $01 $07 $a3
    and e                                         ; $4a75: $a3
    call nc, Call_000_06d5                        ; $4a76: $d4 $d5 $06
    rlca                                          ; $4a79: $07
    ret c                                         ; $4a7a: $d8

    db $fd                                        ; $4a7b: $fd
    ld [$193e], sp                                ; $4a7c: $08 $3e $19
    ld a, [de]                                    ; $4a7f: $1a
    ld hl, $4340                                  ; $4a80: $21 $40 $43
    ld b, h                                       ; $4a83: $44
    ld b, l                                       ; $4a84: $45
    ld b, [hl]                                    ; $4a85: $46
    rlca                                          ; $4a86: $07
    rlca                                          ; $4a87: $07
    ld bc, $0101                                  ; $4a88: $01 $01 $01
    ld bc, $0201                                  ; $4a8b: $01 $01 $02
    ld [bc], a                                    ; $4a8e: $02
    ld [bc], a                                    ; $4a8f: $02
    ld [bc], a                                    ; $4a90: $02
    ld bc, $8383                                  ; $4a91: $01 $83 $83
    add e                                         ; $4a94: $83
    add e                                         ; $4a95: $83
    db $e4                                        ; $4a96: $e4
    push hl                                       ; $4a97: $e5
    rst $10                                       ; $4a98: $d7
    sub $3f                                       ; $4a99: $d6 $3f
    jp hl                                         ; $4a9b: $e9


    db $db                                        ; $4a9c: $db
    jp c, $e5e4                                   ; $4a9d: $da $e4 $e5

    rst $18                                       ; $4aa0: $df
    sbc $86                                       ; $4aa1: $de $86
    add a                                         ; $4aa3: $87
    and $e7                                       ; $4aa4: $e6 $e7
    ld bc, $8307                                  ; $4aa6: $01 $07 $83
    add e                                         ; $4aa9: $83
    ld bc, $8307                                  ; $4aaa: $01 $07 $83
    add e                                         ; $4aad: $83
    add hl, bc                                    ; $4aae: $09
    rrca                                          ; $4aaf: $0f
    add e                                         ; $4ab0: $83
    add e                                         ; $4ab1: $83
    adc e                                         ; $4ab2: $8b
    adc e                                         ; $4ab3: $8b
    adc e                                         ; $4ab4: $8b
    adc e                                         ; $4ab5: $8b
    jp c, Jump_000_19db                           ; $4ab6: $da $db $19

    ld a, [de]                                    ; $4ab9: $1a
    sbc $df                                       ; $4aba: $de $df
    dec [hl]                                      ; $4abc: $35
    ld [hl], $f6                                  ; $4abd: $36 $f6
    ld a, [c]                                     ; $4abf: $f2
    add hl, sp                                    ; $4ac0: $39
    ld a, [hl-]                                   ; $4ac1: $3a
    ld sp, hl                                     ; $4ac2: $f9
    ld a, [$fcfb]                                 ; $4ac3: $fa $fb $fc
    and e                                         ; $4ac6: $a3
    and e                                         ; $4ac7: $a3
    rlca                                          ; $4ac8: $07
    ld [bc], a                                    ; $4ac9: $02
    and e                                         ; $4aca: $a3
    and e                                         ; $4acb: $a3
    rlca                                          ; $4acc: $07
    ld bc, $a383                                  ; $4acd: $01 $83 $a3
    rlca                                          ; $4ad0: $07
    ld bc, $a383                                  ; $4ad1: $01 $83 $a3
    rlca                                          ; $4ad4: $07
    ld bc, $4021                                  ; $4ad5: $01 $21 $40
    dec d                                         ; $4ad8: $15
    ld d, $37                                     ; $4ad9: $16 $37
    jr c, jr_079_4b0e                             ; $4adb: $38 $31

    ld [hl-], a                                   ; $4add: $32
    dec sp                                        ; $4ade: $3b
    inc a                                         ; $4adf: $3c
    add b                                         ; $4ae0: $80
    add c                                         ; $4ae1: $81
    ld [bc], a                                    ; $4ae2: $02
    dec a                                         ; $4ae3: $3d
    cpl                                           ; $4ae4: $2f
    jr nc, jr_079_4ae9                            ; $4ae5: $30 $02

    rlca                                          ; $4ae7: $07
    inc bc                                        ; $4ae8: $03

jr_079_4ae9:
    inc bc                                        ; $4ae9: $03
    ld bc, $0307                                  ; $4aea: $01 $07 $03
    inc bc                                        ; $4aed: $03
    ld bc, $0d07                                  ; $4aee: $01 $07 $0d
    dec c                                         ; $4af1: $0d
    ld bc, $0701                                  ; $4af2: $01 $01 $07
    rlca                                          ; $4af5: $07
    inc de                                        ; $4af6: $13
    sbc e                                         ; $4af7: $9b
    push de                                       ; $4af8: $d5
    ld a, e                                       ; $4af9: $7b
    inc sp                                        ; $4afa: $33
    xor a                                         ; $4afb: $af
    sub $85                                       ; $4afc: $d6 $85
    add hl, sp                                    ; $4afe: $39
    ld a, [hl-]                                   ; $4aff: $3a
    dec sp                                        ; $4b00: $3b
    inc a                                         ; $4b01: $3c
    ei                                            ; $4b02: $fb
    db $fc                                        ; $4b03: $fc
    ld [bc], a                                    ; $4b04: $02
    dec a                                         ; $4b05: $3d
    ld [bc], a                                    ; $4b06: $02
    dec bc                                        ; $4b07: $0b
    dec bc                                        ; $4b08: $0b
    inc bc                                        ; $4b09: $03
    ld [bc], a                                    ; $4b0a: $02
    dec bc                                        ; $4b0b: $0b
    dec bc                                        ; $4b0c: $0b
    dec bc                                        ; $4b0d: $0b

jr_079_4b0e:
    dec b                                         ; $4b0e: $05
    dec b                                         ; $4b0f: $05
    dec b                                         ; $4b10: $05
    dec b                                         ; $4b11: $05
    rlca                                          ; $4b12: $07
    rlca                                          ; $4b13: $07
    rlca                                          ; $4b14: $07
    rlca                                          ; $4b15: $07
    jp nc, $d4d3                                  ; $4b16: $d2 $d3 $d4

    push de                                       ; $4b19: $d5
    sub $d7                                       ; $4b1a: $d6 $d7
    ret c                                         ; $4b1c: $d8

    db $fd                                        ; $4b1d: $fd
    jp c, Jump_000_19db                           ; $4b1e: $da $db $19

    ld a, [de]                                    ; $4b21: $1a
    sbc $df                                       ; $4b22: $de $df
    dec [hl]                                      ; $4b24: $35
    ld [hl], $83                                  ; $4b25: $36 $83
    add e                                         ; $4b27: $83
    rlca                                          ; $4b28: $07
    ld [bc], a                                    ; $4b29: $02
    and e                                         ; $4b2a: $a3
    and e                                         ; $4b2b: $a3
    rlca                                          ; $4b2c: $07
    ld bc, $a3a3                                  ; $4b2d: $01 $a3 $a3
    rlca                                          ; $4b30: $07
    ld bc, $a3a3                                  ; $4b31: $01 $a3 $a3
    rlca                                          ; $4b34: $07
    ld bc, $0706                                  ; $4b35: $01 $06 $07
    db $e4                                        ; $4b38: $e4
    push hl                                       ; $4b39: $e5
    ld [$0a09], sp                                ; $4b3a: $08 $09 $0a
    dec bc                                        ; $4b3d: $0b
    ld hl, $2322                                  ; $4b3e: $21 $22 $23
    inc h                                         ; $4b41: $24
    scf                                           ; $4b42: $37
    ld h, $27                                     ; $4b43: $26 $27
    jr z, @+$03                                   ; $4b45: $28 $01

    ld bc, $0101                                  ; $4b47: $01 $01 $01
    ld [bc], a                                    ; $4b4a: $02
    ld bc, $0202                                  ; $4b4b: $01 $02 $02
    ld bc, $0202                                  ; $4b4e: $01 $02 $02
    ld [bc], a                                    ; $4b51: $02
    ld bc, $0202                                  ; $4b52: $01 $02 $02
    ld bc, $d5d4                                  ; $4b55: $01 $d4 $d5
    ld b, $07                                     ; $4b58: $06 $07
    ret c                                         ; $4b5a: $d8

    db $fd                                        ; $4b5b: $fd
    ld [$193e], sp                                ; $4b5c: $08 $3e $19
    ld a, [de]                                    ; $4b5f: $1a
    ld hl, $3540                                  ; $4b60: $21 $40 $35
    ld [hl], $37                                  ; $4b63: $36 $37
    jr c, jr_079_4b69                             ; $4b65: $38 $02

    ld [bc], a                                    ; $4b67: $02
    ld [bc], a                                    ; $4b68: $02

jr_079_4b69:
    ld [bc], a                                    ; $4b69: $02
    ld [bc], a                                    ; $4b6a: $02
    ld bc, $0201                                  ; $4b6b: $01 $01 $02
    ld bc, $0101                                  ; $4b6e: $01 $01 $01
    ld bc, $0101                                  ; $4b71: $01 $01 $01
    ld bc, $f607                                  ; $4b74: $01 $07 $f6
    ld a, [c]                                     ; $4b77: $f2
    add hl, sp                                    ; $4b78: $39
    ld a, [hl-]                                   ; $4b79: $3a
    ld sp, hl                                     ; $4b7a: $f9
    ld a, [$fcfb]                                 ; $4b7b: $fa $fb $fc
    jp nc, $d4d3                                  ; $4b7e: $d2 $d3 $d4

    push de                                       ; $4b81: $d5
    sub $d7                                       ; $4b82: $d6 $d7
    ret c                                         ; $4b84: $d8

    db $fd                                        ; $4b85: $fd
    add e                                         ; $4b86: $83
    and e                                         ; $4b87: $a3
    rlca                                          ; $4b88: $07
    ld [bc], a                                    ; $4b89: $02
    add e                                         ; $4b8a: $83
    and e                                         ; $4b8b: $a3
    rlca                                          ; $4b8c: $07
    ld [bc], a                                    ; $4b8d: $02
    add e                                         ; $4b8e: $83
    add e                                         ; $4b8f: $83
    rlca                                          ; $4b90: $07
    ld [bc], a                                    ; $4b91: $02
    and e                                         ; $4b92: $a3
    and e                                         ; $4b93: $a3
    rlca                                          ; $4b94: $07
    ld bc, $2a3b                                  ; $4b95: $01 $3b $2a
    dec hl                                        ; $4b98: $2b
    inc l                                         ; $4b99: $2c
    ld [bc], a                                    ; $4b9a: $02
    dec a                                         ; $4b9b: $3d
    cpl                                           ; $4b9c: $2f
    jr nc, jr_079_4ba5                            ; $4b9d: $30 $06

    rlca                                          ; $4b9f: $07
    db $e4                                        ; $4ba0: $e4
    push hl                                       ; $4ba1: $e5
    ld [$3f3e], sp                                ; $4ba2: $08 $3e $3f

jr_079_4ba5:
    jp hl                                         ; $4ba5: $e9


    ld bc, $0102                                  ; $4ba6: $01 $02 $01
    ld bc, $0201                                  ; $4ba9: $01 $01 $02
    ld bc, $0202                                  ; $4bac: $01 $02 $02
    ld bc, $0201                                  ; $4baf: $01 $01 $02
    ld [bc], a                                    ; $4bb2: $02
    ld bc, $0202                                  ; $4bb3: $01 $02 $02
    add hl, sp                                    ; $4bb6: $39
    ld a, [hl-]                                   ; $4bb7: $3a
    dec sp                                        ; $4bb8: $3b
    inc a                                         ; $4bb9: $3c
    ei                                            ; $4bba: $fb
    db $fc                                        ; $4bbb: $fc
    ld [bc], a                                    ; $4bbc: $02
    dec a                                         ; $4bbd: $3d
    call nc, $e2d5                                ; $4bbe: $d4 $d5 $e2
    db $e3                                        ; $4bc1: $e3
    ret c                                         ; $4bc2: $d8

    reti                                          ; $4bc3: $d9


    and $e7                                       ; $4bc4: $e6 $e7
    ld bc, $0201                                  ; $4bc6: $01 $01 $02
    rlca                                          ; $4bc9: $07
    ld [bc], a                                    ; $4bca: $02
    ld [bc], a                                    ; $4bcb: $02
    ld bc, $0207                                  ; $4bcc: $01 $07 $02
    ld bc, $0701                                  ; $4bcf: $01 $01 $07
    ld bc, $0601                                  ; $4bd2: $01 $01 $06
    rlca                                          ; $4bd5: $07
    jp c, Jump_000_19db                           ; $4bd6: $da $db $19

    ld a, [de]                                    ; $4bd9: $1a
    sbc $df                                       ; $4bda: $de $df
    dec de                                        ; $4bdc: $1b
    inc e                                         ; $4bdd: $1c
    or $f2                                        ; $4bde: $f6 $f2
    dec e                                         ; $4be0: $1d
    ld e, $f9                                     ; $4be1: $1e $f9
    ld a, [$201f]                                 ; $4be3: $fa $1f $20
    and e                                         ; $4be6: $a3
    and e                                         ; $4be7: $a3
    rlca                                          ; $4be8: $07
    ld bc, $a3a3                                  ; $4be9: $01 $a3 $a3
    rlca                                          ; $4bec: $07
    ld bc, $a383                                  ; $4bed: $01 $83 $a3
    rlca                                          ; $4bf0: $07
    ld [bc], a                                    ; $4bf1: $02
    add e                                         ; $4bf2: $83
    and e                                         ; $4bf3: $a3
    rlca                                          ; $4bf4: $07
    ld [bc], a                                    ; $4bf5: $02
    ld hl, $e440                                  ; $4bf6: $21 $40 $e4
    push hl                                       ; $4bf9: $e5
    dec h                                         ; $4bfa: $25
    jr c, @+$81                                   ; $4bfb: $38 $7f

    pop af                                        ; $4bfd: $f1
    add hl, hl                                    ; $4bfe: $29
    inc a                                         ; $4bff: $3c
    add b                                         ; $4c00: $80
    add c                                         ; $4c01: $81
    dec l                                         ; $4c02: $2d
    ld l, $2f                                     ; $4c03: $2e $2f
    jr nc, @+$03                                  ; $4c05: $30 $01

    ld bc, $0909                                  ; $4c07: $01 $09 $09
    ld bc, $0101                                  ; $4c0a: $01 $01 $01
    ld [bc], a                                    ; $4c0d: $02
    ld bc, $0901                                  ; $4c0e: $01 $01 $09
    ld a, [bc]                                    ; $4c11: $0a
    ld bc, $0101                                  ; $4c12: $01 $01 $01
    ld bc, $dddc                                  ; $4c15: $01 $dc $dd
    ld [$e0eb], a                                 ; $4c18: $ea $eb $e0
    pop hl                                        ; $4c1b: $e1
    xor $ef                                       ; $4c1c: $ee $ef
    rst $30                                       ; $4c1e: $f7
    ld hl, sp-$02                                 ; $4c1f: $f8 $fe
    rst $38                                       ; $4c21: $ff
    ei                                            ; $4c22: $fb
    db $fc                                        ; $4c23: $fc
    ld [bc], a                                    ; $4c24: $02
    inc bc                                        ; $4c25: $03
    ld bc, $0606                                  ; $4c26: $01 $06 $06
    rlca                                          ; $4c29: $07
    ld bc, $0606                                  ; $4c2a: $01 $06 $06
    rlca                                          ; $4c2d: $07
    ld [bc], a                                    ; $4c2e: $02
    ld bc, $0706                                  ; $4c2f: $01 $06 $07
    ld [bc], a                                    ; $4c32: $02
    ld bc, $0701                                  ; $4c33: $01 $01 $07
    cp d                                          ; $4c36: $ba
    inc de                                        ; $4c37: $13
    ld d, $15                                     ; $4c38: $16 $15
    cp e                                          ; $4c3a: $bb
    inc sp                                        ; $4c3b: $33
    ld [hl-], a                                   ; $4c3c: $32
    ld sp, $3c3b                                  ; $4c3d: $31 $3b $3c
    add b                                         ; $4c40: $80
    add c                                         ; $4c41: $81
    ld [bc], a                                    ; $4c42: $02
    dec a                                         ; $4c43: $3d
    cpl                                           ; $4c44: $2f
    jr nc, jr_079_4c52                            ; $4c45: $30 $0b

    ld [bc], a                                    ; $4c47: $02
    inc hl                                        ; $4c48: $23
    inc hl                                        ; $4c49: $23
    dec bc                                        ; $4c4a: $0b
    ld [bc], a                                    ; $4c4b: $02
    inc hl                                        ; $4c4c: $23
    inc hl                                        ; $4c4d: $23
    dec b                                         ; $4c4e: $05
    dec b                                         ; $4c4f: $05
    dec c                                         ; $4c50: $0d
    dec c                                         ; $4c51: $0d

jr_079_4c52:
    rlca                                          ; $4c52: $07
    rlca                                          ; $4c53: $07
    rlca                                          ; $4c54: $07
    rlca                                          ; $4c55: $07
    add hl, de                                    ; $4c56: $19
    ld a, [de]                                    ; $4c57: $1a
    ld hl, $3522                                  ; $4c58: $21 $22 $35
    ld [hl], $37                                  ; $4c5b: $36 $37
    ld h, $39                                     ; $4c5d: $26 $39
    ld a, [hl-]                                   ; $4c5f: $3a
    dec sp                                        ; $4c60: $3b
    ld a, [hl+]                                   ; $4c61: $2a
    ei                                            ; $4c62: $fb
    db $fc                                        ; $4c63: $fc
    ld [bc], a                                    ; $4c64: $02
    dec a                                         ; $4c65: $3d
    rlca                                          ; $4c66: $07
    ld bc, $0101                                  ; $4c67: $01 $01 $01
    rlca                                          ; $4c6a: $07
    ld bc, $0102                                  ; $4c6b: $01 $02 $01
    rlca                                          ; $4c6e: $07
    ld bc, $0201                                  ; $4c6f: $01 $01 $02
    ld bc, $0201                                  ; $4c72: $01 $01 $02
    ld bc, $2423                                  ; $4c75: $01 $23 $24
    dec d                                         ; $4c78: $15
    ld d, $27                                     ; $4c79: $16 $27
    jr z, jr_079_4cae                             ; $4c7b: $28 $31

    ld [hl-], a                                   ; $4c7d: $32
    dec hl                                        ; $4c7e: $2b
    inc l                                         ; $4c7f: $2c

jr_079_4c80:
    add hl, sp                                    ; $4c80: $39
    ld a, [hl-]                                   ; $4c81: $3a
    cpl                                           ; $4c82: $2f
    jr nc, jr_079_4c80                            ; $4c83: $30 $fb

    db $fc                                        ; $4c85: $fc
    ld bc, $0307                                  ; $4c86: $01 $07 $03
    inc bc                                        ; $4c89: $03
    ld bc, $0307                                  ; $4c8a: $01 $07 $03
    inc bc                                        ; $4c8d: $03
    ld [bc], a                                    ; $4c8e: $02
    rlca                                          ; $4c8f: $07
    dec b                                         ; $4c90: $05
    dec b                                         ; $4c91: $05
    ld bc, $0701                                  ; $4c92: $01 $01 $07
    rlca                                          ; $4c95: $07
    db $e4                                        ; $4c96: $e4
    push hl                                       ; $4c97: $e5
    call nc, Call_000_3fd5                        ; $4c98: $d4 $d5 $3f
    jp hl                                         ; $4c9b: $e9


    ret c                                         ; $4c9c: $d8

    db $fd                                        ; $4c9d: $fd
    ld b, c                                       ; $4c9e: $41
    ld b, d                                       ; $4c9f: $42
    add [hl]                                      ; $4ca0: $86
    ld b, e                                       ; $4ca1: $43
    rst $10                                       ; $4ca2: $d7
    sub $d1                                       ; $4ca3: $d6 $d1
    pop de                                        ; $4ca5: $d1
    ld bc, $0101                                  ; $4ca6: $01 $01 $01
    ld [bc], a                                    ; $4ca9: $02
    ld [bc], a                                    ; $4caa: $02
    ld bc, $0102                                  ; $4cab: $01 $02 $01

jr_079_4cae:
    add e                                         ; $4cae: $83
    add e                                         ; $4caf: $83
    adc e                                         ; $4cb0: $8b
    add e                                         ; $4cb1: $83
    add e                                         ; $4cb2: $83
    add e                                         ; $4cb3: $83
    add e                                         ; $4cb4: $83
    add e                                         ; $4cb5: $83
    ld b, $07                                     ; $4cb6: $06 $07
    db $e4                                        ; $4cb8: $e4
    push hl                                       ; $4cb9: $e5
    ld [$3f3e], sp                                ; $4cba: $08 $3e $3f
    jp hl                                         ; $4cbd: $e9


    ld b, h                                       ; $4cbe: $44
    ld b, l                                       ; $4cbf: $45
    ld b, [hl]                                    ; $4cc0: $46
    add [hl]                                      ; $4cc1: $86
    pop de                                        ; $4cc2: $d1
    pop de                                        ; $4cc3: $d1
    pop de                                        ; $4cc4: $d1
    pop de                                        ; $4cc5: $d1
    ld bc, $0101                                  ; $4cc6: $01 $01 $01
    ld bc, $0101                                  ; $4cc9: $01 $01 $01
    ld bc, $8301                                  ; $4ccc: $01 $01 $83
    add e                                         ; $4ccf: $83
    add e                                         ; $4cd0: $83
    adc e                                         ; $4cd1: $8b
    add e                                         ; $4cd2: $83
    add e                                         ; $4cd3: $83
    add e                                         ; $4cd4: $83
    add e                                         ; $4cd5: $83
    call nc, Call_000_06d5                        ; $4cd6: $d4 $d5 $06
    rlca                                          ; $4cd9: $07
    ret c                                         ; $4cda: $d8

    db $fd                                        ; $4cdb: $fd
    ld [$873e], sp                                ; $4cdc: $08 $3e $87
    adc b                                         ; $4cdf: $88
    adc c                                         ; $4ce0: $89
    ld b, e                                       ; $4ce1: $43
    pop de                                        ; $4ce2: $d1
    pop de                                        ; $4ce3: $d1
    pop de                                        ; $4ce4: $d1
    pop de                                        ; $4ce5: $d1
    ld bc, $0101                                  ; $4ce6: $01 $01 $01
    ld [bc], a                                    ; $4ce9: $02
    ld [bc], a                                    ; $4cea: $02
    ld bc, $0201                                  ; $4ceb: $01 $01 $02
    adc e                                         ; $4cee: $8b
    adc e                                         ; $4cef: $8b
    adc e                                         ; $4cf0: $8b
    add e                                         ; $4cf1: $83
    add e                                         ; $4cf2: $83
    add e                                         ; $4cf3: $83
    add e                                         ; $4cf4: $83
    add e                                         ; $4cf5: $83
    db $e4                                        ; $4cf6: $e4
    push hl                                       ; $4cf7: $e5
    call nc, Call_000_3fd5                        ; $4cf8: $d4 $d5 $3f
    jp hl                                         ; $4cfb: $e9


    ret c                                         ; $4cfc: $d8

    db $fd                                        ; $4cfd: $fd
    ld b, h                                       ; $4cfe: $44
    ld b, l                                       ; $4cff: $45
    ld b, [hl]                                    ; $4d00: $46
    add [hl]                                      ; $4d01: $86
    pop de                                        ; $4d02: $d1
    pop de                                        ; $4d03: $d1
    pop de                                        ; $4d04: $d1
    pop de                                        ; $4d05: $d1
    ld [bc], a                                    ; $4d06: $02
    ld [bc], a                                    ; $4d07: $02
    ld [bc], a                                    ; $4d08: $02
    ld bc, $0102                                  ; $4d09: $01 $02 $01
    ld bc, $8301                                  ; $4d0c: $01 $01 $83
    add e                                         ; $4d0f: $83
    add e                                         ; $4d10: $83
    adc e                                         ; $4d11: $8b
    add e                                         ; $4d12: $83
    add e                                         ; $4d13: $83
    add e                                         ; $4d14: $83
    add e                                         ; $4d15: $83
    db $db                                        ; $4d16: $db
    jp c, $d1d1                                   ; $4d17: $da $d1 $d1

    rst $18                                       ; $4d1a: $df
    sbc $d1                                       ; $4d1b: $de $d1
    pop de                                        ; $4d1d: $d1
    ld a, [c]                                     ; $4d1e: $f2
    di                                            ; $4d1f: $f3
    rst $00                                       ; $4d20: $c7
    ld c, a                                       ; $4d21: $4f
    ld a, [$c80c]                                 ; $4d22: $fa $0c $c8
    ld [hl], d                                    ; $4d25: $72
    inc bc                                        ; $4d26: $03
    inc bc                                        ; $4d27: $03
    inc bc                                        ; $4d28: $03
    inc bc                                        ; $4d29: $03
    inc bc                                        ; $4d2a: $03
    inc bc                                        ; $4d2b: $03
    inc bc                                        ; $4d2c: $03
    inc bc                                        ; $4d2d: $03
    inc bc                                        ; $4d2e: $03
    inc bc                                        ; $4d2f: $03
    dec bc                                        ; $4d30: $0b
    inc bc                                        ; $4d31: $03
    inc bc                                        ; $4d32: $03
    inc bc                                        ; $4d33: $03
    dec bc                                        ; $4d34: $0b
    inc bc                                        ; $4d35: $03
    pop de                                        ; $4d36: $d1
    pop de                                        ; $4d37: $d1
    pop de                                        ; $4d38: $d1
    pop de                                        ; $4d39: $d1
    pop de                                        ; $4d3a: $d1
    pop de                                        ; $4d3b: $d1
    pop de                                        ; $4d3c: $d1
    pop de                                        ; $4d3d: $d1
    db $f4                                        ; $4d3e: $f4
    ld c, d                                       ; $4d3f: $4a
    ld c, e                                       ; $4d40: $4b
    ld c, d                                       ; $4d41: $4a
    inc de                                        ; $4d42: $13
    ld e, h                                       ; $4d43: $5c
    ld e, l                                       ; $4d44: $5d
    ld e, h                                       ; $4d45: $5c
    inc bc                                        ; $4d46: $03
    inc bc                                        ; $4d47: $03
    inc bc                                        ; $4d48: $03
    inc bc                                        ; $4d49: $03
    inc bc                                        ; $4d4a: $03
    inc bc                                        ; $4d4b: $03
    inc bc                                        ; $4d4c: $03
    inc bc                                        ; $4d4d: $03
    ld [bc], a                                    ; $4d4e: $02
    ld [bc], a                                    ; $4d4f: $02
    ld [bc], a                                    ; $4d50: $02
    ld [hl+], a                                   ; $4d51: $22
    ld [bc], a                                    ; $4d52: $02
    ld [bc], a                                    ; $4d53: $02
    ld [bc], a                                    ; $4d54: $02
    ld [hl+], a                                   ; $4d55: $22
    pop de                                        ; $4d56: $d1
    pop de                                        ; $4d57: $d1
    pop de                                        ; $4d58: $d1
    pop de                                        ; $4d59: $d1
    pop de                                        ; $4d5a: $d1
    pop de                                        ; $4d5b: $d1
    pop de                                        ; $4d5c: $d1
    pop de                                        ; $4d5d: $d1
    db $f4                                        ; $4d5e: $f4
    adc e                                         ; $4d5f: $8b
    rst $00                                       ; $4d60: $c7
    ld c, a                                       ; $4d61: $4f
    inc de                                        ; $4d62: $13
    sub d                                         ; $4d63: $92
    ret z                                         ; $4d64: $c8

    ld [hl], d                                    ; $4d65: $72
    inc bc                                        ; $4d66: $03
    inc bc                                        ; $4d67: $03
    inc bc                                        ; $4d68: $03
    inc bc                                        ; $4d69: $03
    inc bc                                        ; $4d6a: $03
    inc bc                                        ; $4d6b: $03
    inc bc                                        ; $4d6c: $03
    inc bc                                        ; $4d6d: $03
    ld [bc], a                                    ; $4d6e: $02
    dec bc                                        ; $4d6f: $0b
    dec bc                                        ; $4d70: $0b
    inc bc                                        ; $4d71: $03
    ld [bc], a                                    ; $4d72: $02
    dec bc                                        ; $4d73: $0b
    dec bc                                        ; $4d74: $0b
    inc bc                                        ; $4d75: $03
    pop de                                        ; $4d76: $d1
    pop de                                        ; $4d77: $d1
    pop de                                        ; $4d78: $d1
    pop de                                        ; $4d79: $d1
    pop de                                        ; $4d7a: $d1
    pop de                                        ; $4d7b: $d1
    pop de                                        ; $4d7c: $d1
    pop de                                        ; $4d7d: $d1
    push af                                       ; $4d7e: $f5
    ld b, a                                       ; $4d7f: $47
    ld c, b                                       ; $4d80: $48
    ld c, c                                       ; $4d81: $49
    ld c, $50                                     ; $4d82: $0e $50
    ld d, c                                       ; $4d84: $51
    ld d, d                                       ; $4d85: $52
    inc bc                                        ; $4d86: $03
    inc bc                                        ; $4d87: $03
    inc bc                                        ; $4d88: $03
    inc bc                                        ; $4d89: $03
    inc bc                                        ; $4d8a: $03
    inc bc                                        ; $4d8b: $03
    inc bc                                        ; $4d8c: $03
    inc bc                                        ; $4d8d: $03
    inc bc                                        ; $4d8e: $03
    inc bc                                        ; $4d8f: $03
    inc bc                                        ; $4d90: $03
    inc bc                                        ; $4d91: $03
    inc bc                                        ; $4d92: $03
    inc bc                                        ; $4d93: $03
    inc bc                                        ; $4d94: $03
    inc bc                                        ; $4d95: $03
    db $d3                                        ; $4d96: $d3
    rrca                                          ; $4d97: $0f
    ret                                           ; $4d98: $c9


    ld [hl], l                                    ; $4d99: $75
    rst $10                                       ; $4d9a: $d7
    ld [de], a                                    ; $4d9b: $12
    jp z, Jump_000_1578                           ; $4d9c: $ca $78 $15

    ld d, $d5                                     ; $4d9f: $16 $d5
    ld a, e                                       ; $4da1: $7b
    ld sp, $d632                                  ; $4da2: $31 $32 $d6
    add l                                         ; $4da5: $85
    inc hl                                        ; $4da6: $23
    inc bc                                        ; $4da7: $03
    dec bc                                        ; $4da8: $0b
    inc bc                                        ; $4da9: $03
    inc bc                                        ; $4daa: $03
    inc bc                                        ; $4dab: $03
    dec bc                                        ; $4dac: $0b
    inc bc                                        ; $4dad: $03
    inc bc                                        ; $4dae: $03
    inc bc                                        ; $4daf: $03
    dec bc                                        ; $4db0: $0b
    inc bc                                        ; $4db1: $03
    inc bc                                        ; $4db2: $03
    inc bc                                        ; $4db3: $03
    dec bc                                        ; $4db4: $0b
    dec bc                                        ; $4db5: $0b
    inc de                                        ; $4db6: $13
    ld e, [hl]                                    ; $4db7: $5e
    ld e, a                                       ; $4db8: $5f
    ld h, b                                       ; $4db9: $60
    inc de                                        ; $4dba: $13
    ld h, c                                       ; $4dbb: $61
    ld h, d                                       ; $4dbc: $62
    ld h, e                                       ; $4dbd: $63
    inc de                                        ; $4dbe: $13
    ld h, h                                       ; $4dbf: $64
    ld h, l                                       ; $4dc0: $65
    ld h, [hl]                                    ; $4dc1: $66
    inc sp                                        ; $4dc2: $33
    add d                                         ; $4dc3: $82
    add e                                         ; $4dc4: $83
    add h                                         ; $4dc5: $84
    ld [bc], a                                    ; $4dc6: $02
    inc b                                         ; $4dc7: $04
    inc b                                         ; $4dc8: $04
    inc b                                         ; $4dc9: $04
    ld [bc], a                                    ; $4dca: $02
    inc b                                         ; $4dcb: $04
    inc b                                         ; $4dcc: $04
    inc b                                         ; $4dcd: $04
    ld [bc], a                                    ; $4dce: $02
    inc b                                         ; $4dcf: $04
    inc b                                         ; $4dd0: $04
    inc b                                         ; $4dd1: $04
    ld [bc], a                                    ; $4dd2: $02
    inc c                                         ; $4dd3: $0c
    inc c                                         ; $4dd4: $0c
    inc c                                         ; $4dd5: $0c
    inc de                                        ; $4dd6: $13
    sub l                                         ; $4dd7: $95
    ret                                           ; $4dd8: $c9


    ld [hl], l                                    ; $4dd9: $75
    inc de                                        ; $4dda: $13
    sbc b                                         ; $4ddb: $98
    jp z, Jump_000_1378                           ; $4ddc: $ca $78 $13

    sbc e                                         ; $4ddf: $9b
    push de                                       ; $4de0: $d5
    ld a, e                                       ; $4de1: $7b
    inc sp                                        ; $4de2: $33
    xor a                                         ; $4de3: $af
    sub $85                                       ; $4de4: $d6 $85
    ld [bc], a                                    ; $4de6: $02
    dec bc                                        ; $4de7: $0b
    dec bc                                        ; $4de8: $0b
    inc bc                                        ; $4de9: $03
    ld [bc], a                                    ; $4dea: $02
    dec bc                                        ; $4deb: $0b
    dec bc                                        ; $4dec: $0b
    inc bc                                        ; $4ded: $03
    ld [bc], a                                    ; $4dee: $02
    dec bc                                        ; $4def: $0b
    dec bc                                        ; $4df0: $0b
    inc bc                                        ; $4df1: $03
    ld [bc], a                                    ; $4df2: $02
    dec bc                                        ; $4df3: $0b
    dec bc                                        ; $4df4: $0b
    dec bc                                        ; $4df5: $0b
    ld d, h                                       ; $4df6: $54
    ld d, e                                       ; $4df7: $53
    ld l, c                                       ; $4df8: $69
    ld d, l                                       ; $4df9: $55
    ld d, a                                       ; $4dfa: $57
    ld d, [hl]                                    ; $4dfb: $56
    ld l, h                                       ; $4dfc: $6c
    ld e, b                                       ; $4dfd: $58
    jr @+$5b                                      ; $4dfe: $18 $59

    ld e, d                                       ; $4e00: $5a
    ld e, e                                       ; $4e01: $5b
    inc [hl]                                      ; $4e02: $34
    ld a, h                                       ; $4e03: $7c
    ld a, l                                       ; $4e04: $7d
    ld a, [hl]                                    ; $4e05: $7e
    inc bc                                        ; $4e06: $03
    inc bc                                        ; $4e07: $03
    inc bc                                        ; $4e08: $03
    inc bc                                        ; $4e09: $03
    inc bc                                        ; $4e0a: $03
    inc bc                                        ; $4e0b: $03
    inc bc                                        ; $4e0c: $03
    inc bc                                        ; $4e0d: $03
    inc bc                                        ; $4e0e: $03
    inc bc                                        ; $4e0f: $03
    inc bc                                        ; $4e10: $03
    inc bc                                        ; $4e11: $03
    inc bc                                        ; $4e12: $03
    inc bc                                        ; $4e13: $03
    inc bc                                        ; $4e14: $03
    inc bc                                        ; $4e15: $03
    rla                                           ; $4e16: $17
    sbc e                                         ; $4e17: $9b
    push de                                       ; $4e18: $d5
    ld a, e                                       ; $4e19: $7b
    inc sp                                        ; $4e1a: $33
    xor a                                         ; $4e1b: $af
    sub $85                                       ; $4e1c: $d6 $85
    dec sp                                        ; $4e1e: $3b
    inc a                                         ; $4e1f: $3c
    add b                                         ; $4e20: $80
    add c                                         ; $4e21: $81
    ld [bc], a                                    ; $4e22: $02
    dec a                                         ; $4e23: $3d
    cpl                                           ; $4e24: $2f
    jr nc, jr_079_4e29                            ; $4e25: $30 $02

    dec bc                                        ; $4e27: $0b
    dec bc                                        ; $4e28: $0b

jr_079_4e29:
    inc bc                                        ; $4e29: $03
    ld [bc], a                                    ; $4e2a: $02
    dec bc                                        ; $4e2b: $0b
    dec bc                                        ; $4e2c: $0b
    dec bc                                        ; $4e2d: $0b
    dec b                                         ; $4e2e: $05
    dec b                                         ; $4e2f: $05
    dec c                                         ; $4e30: $0d
    dec c                                         ; $4e31: $0d
    rlca                                          ; $4e32: $07
    rlca                                          ; $4e33: $07
    rlca                                          ; $4e34: $07
    rlca                                          ; $4e35: $07
    jr @+$5b                                      ; $4e36: $18 $59

    inc de                                        ; $4e38: $13
    ld e, e                                       ; $4e39: $5b
    inc [hl]                                      ; $4e3a: $34
    ld a, h                                       ; $4e3b: $7c
    inc sp                                        ; $4e3c: $33
    ld a, [hl]                                    ; $4e3d: $7e
    add hl, sp                                    ; $4e3e: $39
    ld a, [hl-]                                   ; $4e3f: $3a
    dec sp                                        ; $4e40: $3b
    inc a                                         ; $4e41: $3c
    ei                                            ; $4e42: $fb
    db $fc                                        ; $4e43: $fc
    ld [bc], a                                    ; $4e44: $02
    dec a                                         ; $4e45: $3d
    inc bc                                        ; $4e46: $03
    inc bc                                        ; $4e47: $03
    ld [bc], a                                    ; $4e48: $02
    inc bc                                        ; $4e49: $03
    inc bc                                        ; $4e4a: $03
    inc bc                                        ; $4e4b: $03
    ld [bc], a                                    ; $4e4c: $02
    inc bc                                        ; $4e4d: $03
    dec b                                         ; $4e4e: $05
    dec b                                         ; $4e4f: $05
    dec b                                         ; $4e50: $05
    dec b                                         ; $4e51: $05
    rlca                                          ; $4e52: $07
    rlca                                          ; $4e53: $07
    rlca                                          ; $4e54: $07
    rlca                                          ; $4e55: $07
    sub c                                         ; $4e56: $91
    sbc e                                         ; $4e57: $9b
    jp nc, $aed1                                  ; $4e58: $d2 $d1 $ae

    xor a                                         ; $4e5b: $af
    call nc, $80d3                                ; $4e5c: $d4 $d3 $80
    add c                                         ; $4e5f: $81
    db $db                                        ; $4e60: $db
    jp c, Jump_000_302f                           ; $4e61: $da $2f $30

    rst $18                                       ; $4e64: $df
    sbc $0b                                       ; $4e65: $de $0b
    dec bc                                        ; $4e67: $0b
    dec hl                                        ; $4e68: $2b
    dec hl                                        ; $4e69: $2b
    dec bc                                        ; $4e6a: $0b
    dec bc                                        ; $4e6b: $0b
    dec hl                                        ; $4e6c: $2b
    dec hl                                        ; $4e6d: $2b
    dec c                                         ; $4e6e: $0d
    dec c                                         ; $4e6f: $0d
    inc bc                                        ; $4e70: $03
    inc bc                                        ; $4e71: $03
    rlca                                          ; $4e72: $07
    rlca                                          ; $4e73: $07
    inc bc                                        ; $4e74: $03
    inc bc                                        ; $4e75: $03

    db $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $cb, $d1, $d1, $d1, $cc
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $0b, $03, $03, $03, $0b

    ld b, $07                                     ; $4e96: $06 $07
    db $e4                                        ; $4e98: $e4
    push hl                                       ; $4e99: $e5
    ld [$3f3e], sp                                ; $4e9a: $08 $3e $3f
    jp hl                                         ; $4e9d: $e9


    add a                                         ; $4e9e: $87
    adc b                                         ; $4e9f: $88
    adc c                                         ; $4ea0: $89
    ld b, d                                       ; $4ea1: $42
    pop de                                        ; $4ea2: $d1
    pop de                                        ; $4ea3: $d1
    pop de                                        ; $4ea4: $d1
    or $01                                        ; $4ea5: $f6 $01
    ld bc, $0201                                  ; $4ea7: $01 $01 $02
    ld bc, $0202                                  ; $4eaa: $01 $02 $02
    ld bc, $8b8b                                  ; $4ead: $01 $8b $8b
    adc e                                         ; $4eb0: $8b
    and e                                         ; $4eb1: $a3
    add e                                         ; $4eb2: $83
    add e                                         ; $4eb3: $83
    add e                                         ; $4eb4: $83
    add e                                         ; $4eb5: $83
    call nc, $e2d5                                ; $4eb6: $d4 $d5 $e2
    db $e3                                        ; $4eb9: $e3
    ret c                                         ; $4eba: $d8

    reti                                          ; $4ebb: $d9


    and $e7                                       ; $4ebc: $e6 $e7
    ld b, c                                       ; $4ebe: $41
    db $dd                                        ; $4ebf: $dd
    ld [$f2eb], a                                 ; $4ec0: $ea $eb $f2
    pop hl                                        ; $4ec3: $e1
    xor $ef                                       ; $4ec4: $ee $ef
    ld [bc], a                                    ; $4ec6: $02
    ld bc, $0101                                  ; $4ec7: $01 $01 $01
    ld bc, $0601                                  ; $4eca: $01 $01 $06
    ld b, $a3                                     ; $4ecd: $06 $a3
    ld b, $06                                     ; $4ecf: $06 $06
    ld b, $a3                                     ; $4ed1: $06 $a3
    rlca                                          ; $4ed3: $07
    ld b, $06                                     ; $4ed4: $06 $06
    db $e4                                        ; $4ed6: $e4
    push hl                                       ; $4ed7: $e5
    ld a, [c]                                     ; $4ed8: $f2
    or $e8                                        ; $4ed9: $f6 $e8
    jp hl                                         ; $4edb: $e9


    ld a, [$ecf9]                                 ; $4edc: $fa $f9 $ec
    db $ed                                        ; $4edf: $ed
    db $d3                                        ; $4ee0: $d3
    jp nc, $f1f0                                  ; $4ee1: $d2 $f0 $f1

    rst $10                                       ; $4ee4: $d7
    sub $01                                       ; $4ee5: $d6 $01
    rlca                                          ; $4ee7: $07
    inc bc                                        ; $4ee8: $03
    inc hl                                        ; $4ee9: $23
    ld bc, $0307                                  ; $4eea: $01 $07 $03
    inc hl                                        ; $4eed: $23
    ld b, $07                                     ; $4eee: $06 $07
    inc hl                                        ; $4ef0: $23
    inc hl                                        ; $4ef1: $23
    ld bc, $0307                                  ; $4ef2: $01 $07 $03
    inc bc                                        ; $4ef5: $03

    db $d1, $d1, $cd, $ce, $d1, $d1, $cf, $d0, $d1, $d1, $d1, $d2, $d1, $d1, $d3, $d4
    db $03, $03, $0b, $0b, $03, $03, $0b, $0b, $03, $03, $8b, $8b, $03, $03, $8b, $8b

    pop de                                        ; $4f16: $d1
    pop de                                        ; $4f17: $d1
    pop de                                        ; $4f18: $d1
    ld sp, hl                                     ; $4f19: $f9
    pop de                                        ; $4f1a: $d1
    pop de                                        ; $4f1b: $d1
    pop de                                        ; $4f1c: $d1
    jp nc, $d1bc                                  ; $4f1d: $d2 $bc $d1

    pop de                                        ; $4f20: $d1
    or $bd                                        ; $4f21: $f6 $bd
    cp [hl]                                       ; $4f23: $be
    pop de                                        ; $4f24: $d1
    ld sp, hl                                     ; $4f25: $f9
    inc bc                                        ; $4f26: $03
    inc bc                                        ; $4f27: $03
    inc bc                                        ; $4f28: $03
    add e                                         ; $4f29: $83
    inc bc                                        ; $4f2a: $03
    inc bc                                        ; $4f2b: $03
    inc bc                                        ; $4f2c: $03
    add e                                         ; $4f2d: $83
    dec bc                                        ; $4f2e: $0b
    inc bc                                        ; $4f2f: $03
    inc bc                                        ; $4f30: $03
    add e                                         ; $4f31: $83
    dec bc                                        ; $4f32: $0b
    dec bc                                        ; $4f33: $0b
    inc bc                                        ; $4f34: $03
    add e                                         ; $4f35: $83
    ld a, [$fef8]                                 ; $4f36: $fa $f8 $fe
    rst $38                                       ; $4f39: $ff
    db $d3                                        ; $4f3a: $d3
    db $fc                                        ; $4f3b: $fc
    ld [bc], a                                    ; $4f3c: $02
    inc bc                                        ; $4f3d: $03
    ld a, [c]                                     ; $4f3e: $f2
    push de                                       ; $4f3f: $d5
    ld b, $07                                     ; $4f40: $06 $07
    ld a, [$08fd]                                 ; $4f42: $fa $fd $08
    ld a, $a3                                     ; $4f45: $3e $a3
    rlca                                          ; $4f47: $07
    ld b, $06                                     ; $4f48: $06 $06
    add e                                         ; $4f4a: $83
    rlca                                          ; $4f4b: $07
    ld bc, $a301                                  ; $4f4c: $01 $01 $a3
    rlca                                          ; $4f4f: $07
    ld bc, $a301                                  ; $4f50: $01 $01 $a3
    rlca                                          ; $4f53: $07
    ld [bc], a                                    ; $4f54: $02
    ld bc, $0100                                  ; $4f55: $01 $00 $01
    db $db                                        ; $4f58: $db
    jp c, $0504                                   ; $4f59: $da $04 $05

    rst $18                                       ; $4f5c: $df
    sbc $e4                                       ; $4f5d: $de $e4
    push hl                                       ; $4f5f: $e5
    ld a, [c]                                     ; $4f60: $f2
    or $3f                                        ; $4f61: $f6 $3f
    jp hl                                         ; $4f63: $e9


    ld a, [$06f9]                                 ; $4f64: $fa $f9 $06
    rlca                                          ; $4f67: $07
    inc bc                                        ; $4f68: $03
    inc bc                                        ; $4f69: $03
    ld bc, $0307                                  ; $4f6a: $01 $07 $03
    inc bc                                        ; $4f6d: $03
    ld bc, $0307                                  ; $4f6e: $01 $07 $03
    inc hl                                        ; $4f71: $23
    ld bc, $0307                                  ; $4f72: $01 $07 $03
    inc hl                                        ; $4f75: $23

    db $d1, $d1, $f6, $f2, $d1, $d1, $f9, $fa, $d1, $d1, $d2, $d3, $d1, $d1, $d6, $d7
    db $03, $03, $83, $a3, $03, $03, $83, $a3, $03, $03, $83, $83, $03, $03, $a3, $a3

    cp a                                          ; $4f96: $bf
    ret nz                                        ; $4f97: $c0

    pop de                                        ; $4f98: $d1
    jp nc, $c2c1                                  ; $4f99: $d2 $c1 $c2

    pop de                                        ; $4f9c: $d1
    sub $c3                                       ; $4f9d: $d6 $c3
    call nz, $dad1                                ; $4f9f: $c4 $d1 $da
    push bc                                       ; $4fa2: $c5
    add $d1                                       ; $4fa3: $c6 $d1
    sbc $0b                                       ; $4fa5: $de $0b
    dec bc                                        ; $4fa7: $0b
    inc bc                                        ; $4fa8: $03
    add e                                         ; $4fa9: $83
    adc e                                         ; $4faa: $8b
    adc e                                         ; $4fab: $8b
    inc bc                                        ; $4fac: $03
    and e                                         ; $4fad: $a3
    adc e                                         ; $4fae: $8b
    adc e                                         ; $4faf: $8b
    inc bc                                        ; $4fb0: $03
    and e                                         ; $4fb1: $a3
    adc e                                         ; $4fb2: $8b
    adc e                                         ; $4fb3: $8b
    inc bc                                        ; $4fb4: $03
    and e                                         ; $4fb5: $a3
    db $d3                                        ; $4fb6: $d3
    ld a, [de]                                    ; $4fb7: $1a
    ld hl, $d740                                  ; $4fb8: $21 $40 $d7
    ld [hl], $37                                  ; $4fbb: $36 $37
    jr c, @-$23                                   ; $4fbd: $38 $db

    ld a, [hl-]                                   ; $4fbf: $3a
    dec sp                                        ; $4fc0: $3b
    inc a                                         ; $4fc1: $3c
    rst $18                                       ; $4fc2: $df
    db $fc                                        ; $4fc3: $fc
    ld [bc], a                                    ; $4fc4: $02
    dec a                                         ; $4fc5: $3d
    add e                                         ; $4fc6: $83
    rlca                                          ; $4fc7: $07
    ld [bc], a                                    ; $4fc8: $02
    ld bc, $07a3                                  ; $4fc9: $01 $a3 $07
    ld [bc], a                                    ; $4fcc: $02
    ld [bc], a                                    ; $4fcd: $02
    and e                                         ; $4fce: $a3
    rlca                                          ; $4fcf: $07
    ld bc, $a302                                  ; $4fd0: $01 $02 $a3
    rlca                                          ; $4fd3: $07
    ld bc, $e401                                  ; $4fd4: $01 $01 $e4
    push hl                                       ; $4fd7: $e5
    db $d3                                        ; $4fd8: $d3
    jp nc, $f17f                                  ; $4fd9: $d2 $7f $f1

    rst $10                                       ; $4fdc: $d7
    sub $80                                       ; $4fdd: $d6 $80
    add c                                         ; $4fdf: $81
    db $db                                        ; $4fe0: $db
    jp c, Jump_000_302f                           ; $4fe1: $da $2f $30

    rst $18                                       ; $4fe4: $df
    sbc $09                                       ; $4fe5: $de $09
    rrca                                          ; $4fe7: $0f
    inc hl                                        ; $4fe8: $23
    inc hl                                        ; $4fe9: $23
    ld bc, $0307                                  ; $4fea: $01 $07 $03
    inc bc                                        ; $4fed: $03
    ld a, [bc]                                    ; $4fee: $0a
    rrca                                          ; $4fef: $0f
    inc bc                                        ; $4ff0: $03
    inc bc                                        ; $4ff1: $03
    ld [bc], a                                    ; $4ff2: $02
    rlca                                          ; $4ff3: $07
    inc bc                                        ; $4ff4: $03
    inc bc                                        ; $4ff5: $03
    pop de                                        ; $4ff6: $d1
    pop de                                        ; $4ff7: $d1
    jp c, $d1db                                   ; $4ff8: $da $db $d1

    pop de                                        ; $4ffb: $d1
    sbc $df                                       ; $4ffc: $de $df
    pop de                                        ; $4ffe: $d1
    pop de                                        ; $4fff: $d1
    or $f2                                        ; $5000: $f6 $f2
    pop de                                        ; $5002: $d1
    pop de                                        ; $5003: $d1
    ld sp, hl                                     ; $5004: $f9
    ld a, [$0303]                                 ; $5005: $fa $03 $03
    inc hl                                        ; $5008: $23
    inc hl                                        ; $5009: $23
    inc bc                                        ; $500a: $03
    inc bc                                        ; $500b: $03
    inc hl                                        ; $500c: $23
    inc hl                                        ; $500d: $23
    inc bc                                        ; $500e: $03
    inc bc                                        ; $500f: $03
    inc bc                                        ; $5010: $03
    inc hl                                        ; $5011: $23
    inc bc                                        ; $5012: $03
    inc bc                                        ; $5013: $03
    inc bc                                        ; $5014: $03
    inc hl                                        ; $5015: $23
    pop de                                        ; $5016: $d1
    pop de                                        ; $5017: $d1
    pop de                                        ; $5018: $d1
    pop de                                        ; $5019: $d1
    pop de                                        ; $501a: $d1
    pop de                                        ; $501b: $d1
    pop de                                        ; $501c: $d1
    pop de                                        ; $501d: $d1
    rst $00                                       ; $501e: $c7
    db $f4                                        ; $501f: $f4
    ld c, d                                       ; $5020: $4a
    ld c, e                                       ; $5021: $4b
    ret z                                         ; $5022: $c8

    inc de                                        ; $5023: $13
    ld e, h                                       ; $5024: $5c
    ld e, l                                       ; $5025: $5d
    inc bc                                        ; $5026: $03
    inc bc                                        ; $5027: $03
    inc bc                                        ; $5028: $03
    inc bc                                        ; $5029: $03
    inc bc                                        ; $502a: $03
    inc bc                                        ; $502b: $03
    inc bc                                        ; $502c: $03
    inc bc                                        ; $502d: $03
    dec bc                                        ; $502e: $0b
    ld [bc], a                                    ; $502f: $02
    ld [bc], a                                    ; $5030: $02
    ld [bc], a                                    ; $5031: $02
    dec bc                                        ; $5032: $0b
    ld [bc], a                                    ; $5033: $02
    ld [bc], a                                    ; $5034: $02
    ld [bc], a                                    ; $5035: $02
    pop de                                        ; $5036: $d1
    pop de                                        ; $5037: $d1
    pop de                                        ; $5038: $d1
    pop de                                        ; $5039: $d1
    pop de                                        ; $503a: $d1
    pop de                                        ; $503b: $d1
    pop de                                        ; $503c: $d1
    pop de                                        ; $503d: $d1
    ld c, d                                       ; $503e: $4a
    db $f4                                        ; $503f: $f4
    adc e                                         ; $5040: $8b
    cp h                                          ; $5041: $bc
    ld e, h                                       ; $5042: $5c
    inc de                                        ; $5043: $13
    sub d                                         ; $5044: $92
    cp l                                          ; $5045: $bd
    inc bc                                        ; $5046: $03
    inc bc                                        ; $5047: $03
    inc bc                                        ; $5048: $03
    inc bc                                        ; $5049: $03
    inc bc                                        ; $504a: $03
    inc bc                                        ; $504b: $03
    inc bc                                        ; $504c: $03
    inc bc                                        ; $504d: $03
    ld [hl+], a                                   ; $504e: $22
    ld [bc], a                                    ; $504f: $02
    dec bc                                        ; $5050: $0b
    dec bc                                        ; $5051: $0b
    ld [hl+], a                                   ; $5052: $22
    ld [bc], a                                    ; $5053: $02
    dec bc                                        ; $5054: $0b
    dec bc                                        ; $5055: $0b
    pop de                                        ; $5056: $d1
    pop de                                        ; $5057: $d1
    pop de                                        ; $5058: $d1
    pop de                                        ; $5059: $d1
    pop de                                        ; $505a: $d1
    pop de                                        ; $505b: $d1
    pop de                                        ; $505c: $d1
    pop de                                        ; $505d: $d1
    pop de                                        ; $505e: $d1
    pop de                                        ; $505f: $d1
    pop de                                        ; $5060: $d1
    pop de                                        ; $5061: $d1
    cp [hl]                                       ; $5062: $be
    pop de                                        ; $5063: $d1
    pop de                                        ; $5064: $d1
    pop de                                        ; $5065: $d1
    inc bc                                        ; $5066: $03
    inc bc                                        ; $5067: $03
    inc bc                                        ; $5068: $03
    inc bc                                        ; $5069: $03
    inc bc                                        ; $506a: $03
    inc bc                                        ; $506b: $03
    inc bc                                        ; $506c: $03
    inc bc                                        ; $506d: $03
    inc bc                                        ; $506e: $03
    inc bc                                        ; $506f: $03
    inc bc                                        ; $5070: $03
    inc bc                                        ; $5071: $03
    dec bc                                        ; $5072: $0b
    inc bc                                        ; $5073: $03
    inc bc                                        ; $5074: $03
    inc bc                                        ; $5075: $03
    ret                                           ; $5076: $c9


    inc de                                        ; $5077: $13
    ld e, [hl]                                    ; $5078: $5e
    ld e, a                                       ; $5079: $5f
    jp z, $6113                                   ; $507a: $ca $13 $61

    ld h, d                                       ; $507d: $62
    push de                                       ; $507e: $d5
    inc de                                        ; $507f: $13
    ld h, h                                       ; $5080: $64
    ld h, l                                       ; $5081: $65
    sub $33                                       ; $5082: $d6 $33
    add d                                         ; $5084: $82
    add e                                         ; $5085: $83
    dec bc                                        ; $5086: $0b
    ld [bc], a                                    ; $5087: $02
    inc b                                         ; $5088: $04
    inc b                                         ; $5089: $04
    dec bc                                        ; $508a: $0b
    ld [bc], a                                    ; $508b: $02
    inc b                                         ; $508c: $04
    inc b                                         ; $508d: $04
    dec bc                                        ; $508e: $0b
    ld [bc], a                                    ; $508f: $02
    inc b                                         ; $5090: $04
    inc b                                         ; $5091: $04
    dec bc                                        ; $5092: $0b
    ld [bc], a                                    ; $5093: $02
    inc c                                         ; $5094: $0c
    inc c                                         ; $5095: $0c
    ld h, b                                       ; $5096: $60
    inc de                                        ; $5097: $13
    sub l                                         ; $5098: $95
    cp a                                          ; $5099: $bf
    ld h, e                                       ; $509a: $63
    inc de                                        ; $509b: $13
    sbc b                                         ; $509c: $98
    pop bc                                        ; $509d: $c1
    ld h, [hl]                                    ; $509e: $66
    inc de                                        ; $509f: $13
    sbc e                                         ; $50a0: $9b
    jp $3384                                      ; $50a1: $c3 $84 $33


    xor a                                         ; $50a4: $af
    push bc                                       ; $50a5: $c5
    inc b                                         ; $50a6: $04
    ld [bc], a                                    ; $50a7: $02
    dec bc                                        ; $50a8: $0b
    dec bc                                        ; $50a9: $0b
    inc b                                         ; $50aa: $04
    ld [bc], a                                    ; $50ab: $02
    dec bc                                        ; $50ac: $0b
    adc e                                         ; $50ad: $8b
    inc b                                         ; $50ae: $04
    ld [bc], a                                    ; $50af: $02
    dec bc                                        ; $50b0: $0b
    adc e                                         ; $50b1: $8b
    inc c                                         ; $50b2: $0c
    ld [bc], a                                    ; $50b3: $02
    dec bc                                        ; $50b4: $0b
    adc e                                         ; $50b5: $8b
    ret nz                                        ; $50b6: $c0

    pop de                                        ; $50b7: $d1
    pop de                                        ; $50b8: $d1
    pop de                                        ; $50b9: $d1
    jp nz, $d1d1                                  ; $50ba: $c2 $d1 $d1

    pop de                                        ; $50bd: $d1
    call nz, $d1d1                                ; $50be: $c4 $d1 $d1
    pop de                                        ; $50c1: $d1
    add $d1                                       ; $50c2: $c6 $d1
    pop de                                        ; $50c4: $d1
    pop de                                        ; $50c5: $d1
    dec bc                                        ; $50c6: $0b
    inc bc                                        ; $50c7: $03
    inc bc                                        ; $50c8: $03
    inc bc                                        ; $50c9: $03
    adc e                                         ; $50ca: $8b
    inc bc                                        ; $50cb: $03
    inc bc                                        ; $50cc: $03
    inc bc                                        ; $50cd: $03
    adc e                                         ; $50ce: $8b
    inc bc                                        ; $50cf: $03
    inc bc                                        ; $50d0: $03
    inc bc                                        ; $50d1: $03
    adc e                                         ; $50d2: $8b
    inc bc                                        ; $50d3: $03
    inc bc                                        ; $50d4: $03
    inc bc                                        ; $50d5: $03
    add hl, sp                                    ; $50d6: $39
    ld a, [hl-]                                   ; $50d7: $3a
    dec sp                                        ; $50d8: $3b
    inc a                                         ; $50d9: $3c
    ei                                            ; $50da: $fb
    db $fc                                        ; $50db: $fc
    ld [bc], a                                    ; $50dc: $02
    dec a                                         ; $50dd: $3d
    call nc, Call_000_06d5                        ; $50de: $d4 $d5 $06
    rlca                                          ; $50e1: $07
    ret c                                         ; $50e2: $d8

    db $fd                                        ; $50e3: $fd
    ld [$053e], sp                                ; $50e4: $08 $3e $05
    dec b                                         ; $50e7: $05
    dec b                                         ; $50e8: $05
    dec b                                         ; $50e9: $05
    rlca                                          ; $50ea: $07
    rlca                                          ; $50eb: $07
    rlca                                          ; $50ec: $07
    rlca                                          ; $50ed: $07
    rlca                                          ; $50ee: $07
    ld bc, $0101                                  ; $50ef: $01 $01 $01
    rlca                                          ; $50f2: $07
    ld [bc], a                                    ; $50f3: $02
    ld bc, $8001                                  ; $50f4: $01 $01 $80
    add c                                         ; $50f7: $81

jr_079_50f8:
    add hl, sp                                    ; $50f8: $39
    db $d3                                        ; $50f9: $d3
    cpl                                           ; $50fa: $2f
    jr nc, jr_079_50f8                            ; $50fb: $30 $fb

    rst $10                                       ; $50fd: $d7
    db $e4                                        ; $50fe: $e4
    push hl                                       ; $50ff: $e5
    call nc, Call_000_3fdb                        ; $5100: $d4 $db $3f
    jp hl                                         ; $5103: $e9


    ret c                                         ; $5104: $d8

    rst $18                                       ; $5105: $df
    dec c                                         ; $5106: $0d
    dec c                                         ; $5107: $0d
    dec b                                         ; $5108: $05
    and e                                         ; $5109: $a3
    rlca                                          ; $510a: $07
    rlca                                          ; $510b: $07
    rlca                                          ; $510c: $07
    add e                                         ; $510d: $83
    ld bc, $0701                                  ; $510e: $01 $01 $07
    add e                                         ; $5111: $83
    ld [bc], a                                    ; $5112: $02
    ld [bc], a                                    ; $5113: $02
    rlca                                          ; $5114: $07
    add e                                         ; $5115: $83
    jp nc, $d1d1                                  ; $5116: $d2 $d1 $d1

    pop de                                        ; $5119: $d1
    sub $d1                                       ; $511a: $d6 $d1
    pop de                                        ; $511c: $d1
    pop de                                        ; $511d: $d1
    jp c, $d1d1                                   ; $511e: $da $d1 $d1

    pop de                                        ; $5121: $d1
    sbc $d1                                       ; $5122: $de $d1
    pop de                                        ; $5124: $d1
    pop de                                        ; $5125: $d1
    and e                                         ; $5126: $a3
    inc bc                                        ; $5127: $03
    inc bc                                        ; $5128: $03
    inc bc                                        ; $5129: $03
    add e                                         ; $512a: $83
    inc bc                                        ; $512b: $03
    inc bc                                        ; $512c: $03
    inc bc                                        ; $512d: $03
    add e                                         ; $512e: $83
    inc bc                                        ; $512f: $03
    inc bc                                        ; $5130: $03
    inc bc                                        ; $5131: $03
    add e                                         ; $5132: $83
    inc bc                                        ; $5133: $03
    inc bc                                        ; $5134: $03
    inc bc                                        ; $5135: $03
    add hl, de                                    ; $5136: $19
    ld a, [de]                                    ; $5137: $1a
    ld hl, $3540                                  ; $5138: $21 $40 $35
    ld [hl], $37                                  ; $513b: $36 $37
    jr c, jr_079_5178                             ; $513d: $38 $39

    ld a, [hl-]                                   ; $513f: $3a
    dec sp                                        ; $5140: $3b
    inc a                                         ; $5141: $3c
    ei                                            ; $5142: $fb
    db $fc                                        ; $5143: $fc
    ld [bc], a                                    ; $5144: $02
    dec a                                         ; $5145: $3d
    rlca                                          ; $5146: $07
    ld [bc], a                                    ; $5147: $02
    ld bc, $0701                                  ; $5148: $01 $01 $07
    ld bc, $0102                                  ; $514b: $01 $02 $01
    rlca                                          ; $514e: $07
    ld bc, $0201                                  ; $514f: $01 $01 $02
    rlca                                          ; $5152: $07
    ld bc, $0101                                  ; $5153: $01 $01 $01
    db $e4                                        ; $5156: $e4
    push hl                                       ; $5157: $e5
    add hl, de                                    ; $5158: $19
    ld a, [c]                                     ; $5159: $f2
    ld a, a                                       ; $515a: $7f
    pop af                                        ; $515b: $f1
    dec [hl]                                      ; $515c: $35
    ld a, [$8180]                                 ; $515d: $fa $80 $81

jr_079_5160:
    add hl, sp                                    ; $5160: $39
    db $d3                                        ; $5161: $d3
    cpl                                           ; $5162: $2f
    jr nc, jr_079_5160                            ; $5163: $30 $fb

    rst $10                                       ; $5165: $d7
    ld a, [bc]                                    ; $5166: $0a
    add hl, bc                                    ; $5167: $09
    rlca                                          ; $5168: $07
    add e                                         ; $5169: $83
    ld bc, $0701                                  ; $516a: $01 $01 $07
    add e                                         ; $516d: $83
    ld a, [bc]                                    ; $516e: $0a
    add hl, bc                                    ; $516f: $09
    rlca                                          ; $5170: $07
    and e                                         ; $5171: $a3
    ld bc, $0701                                  ; $5172: $01 $01 $07
    add e                                         ; $5175: $83
    or $d1                                        ; $5176: $f6 $d1

jr_079_5178:
    pop de                                        ; $5178: $d1
    pop de                                        ; $5179: $d1
    ld sp, hl                                     ; $517a: $f9
    pop de                                        ; $517b: $d1
    pop de                                        ; $517c: $d1
    pop de                                        ; $517d: $d1
    jp nc, $d1d1                                  ; $517e: $d2 $d1 $d1

    pop de                                        ; $5181: $d1
    sub $d1                                       ; $5182: $d6 $d1
    pop de                                        ; $5184: $d1
    pop de                                        ; $5185: $d1
    and e                                         ; $5186: $a3
    inc bc                                        ; $5187: $03
    inc bc                                        ; $5188: $03
    inc bc                                        ; $5189: $03
    and e                                         ; $518a: $a3
    inc bc                                        ; $518b: $03
    inc bc                                        ; $518c: $03
    inc bc                                        ; $518d: $03
    and e                                         ; $518e: $a3
    inc bc                                        ; $518f: $03
    inc bc                                        ; $5190: $03
    inc bc                                        ; $5191: $03
    add e                                         ; $5192: $83
    inc bc                                        ; $5193: $03
    inc bc                                        ; $5194: $03
    inc bc                                        ; $5195: $03
    ld b, $07                                     ; $5196: $06 $07
    db $e4                                        ; $5198: $e4
    push hl                                       ; $5199: $e5
    ld [$3f3e], sp                                ; $519a: $08 $3e $3f
    jp hl                                         ; $519d: $e9


    ld hl, $e440                                  ; $519e: $21 $40 $e4
    push hl                                       ; $51a1: $e5
    scf                                           ; $51a2: $37
    jr c, jr_079_5224                             ; $51a3: $38 $7f

    pop af                                        ; $51a5: $f1
    ld bc, $0202                                  ; $51a6: $01 $02 $02
    ld [bc], a                                    ; $51a9: $02
    ld [bc], a                                    ; $51aa: $02
    ld [bc], a                                    ; $51ab: $02
    ld bc, $0101                                  ; $51ac: $01 $01 $01
    ld bc, $0909                                  ; $51af: $01 $09 $09
    ld bc, $0201                                  ; $51b2: $01 $01 $02
    ld [bc], a                                    ; $51b5: $02
    call nc, Call_000_06d5                        ; $51b6: $d4 $d5 $06
    rlca                                          ; $51b9: $07
    ret c                                         ; $51ba: $d8

    db $fd                                        ; $51bb: $fd
    ld [$193e], sp                                ; $51bc: $08 $3e $19
    ld a, [de]                                    ; $51bf: $1a
    ld hl, $3540                                  ; $51c0: $21 $40 $35
    ld [hl], $37                                  ; $51c3: $36 $37
    jr c, jr_079_51c8                             ; $51c5: $38 $01

    ld [bc], a                                    ; $51c7: $02

jr_079_51c8:
    ld bc, $0107                                  ; $51c8: $01 $07 $01
    ld bc, $0102                                  ; $51cb: $01 $02 $01
    ld [bc], a                                    ; $51ce: $02
    ld [bc], a                                    ; $51cf: $02
    ld bc, $0201                                  ; $51d0: $01 $01 $02
    ld [bc], a                                    ; $51d3: $02
    ld bc, $e701                                  ; $51d4: $01 $01 $e7
    and $87                                       ; $51d7: $e6 $87
    adc b                                         ; $51d9: $88
    pop de                                        ; $51da: $d1
    pop de                                        ; $51db: $d1
    pop de                                        ; $51dc: $d1
    pop de                                        ; $51dd: $d1
    pop de                                        ; $51de: $d1
    res 1, d                                      ; $51df: $cb $8a
    adc e                                         ; $51e1: $8b
    pop de                                        ; $51e2: $d1
    call z, $928e                                 ; $51e3: $cc $8e $92
    xor e                                         ; $51e6: $ab
    xor e                                         ; $51e7: $ab
    adc e                                         ; $51e8: $8b
    adc e                                         ; $51e9: $8b
    add e                                         ; $51ea: $83
    add e                                         ; $51eb: $83
    add e                                         ; $51ec: $83
    add e                                         ; $51ed: $83
    inc bc                                        ; $51ee: $03
    dec bc                                        ; $51ef: $0b
    dec bc                                        ; $51f0: $0b
    dec bc                                        ; $51f1: $0b
    inc bc                                        ; $51f2: $03
    dec bc                                        ; $51f3: $0b
    dec bc                                        ; $51f4: $0b
    dec bc                                        ; $51f5: $0b
    adc c                                         ; $51f6: $89
    ld b, e                                       ; $51f7: $43
    ld b, h                                       ; $51f8: $44
    ld b, l                                       ; $51f9: $45
    pop de                                        ; $51fa: $d1
    pop de                                        ; $51fb: $d1
    pop de                                        ; $51fc: $d1
    pop de                                        ; $51fd: $d1
    db $f4                                        ; $51fe: $f4
    ld c, d                                       ; $51ff: $4a
    ld c, e                                       ; $5200: $4b
    ld c, d                                       ; $5201: $4a
    inc de                                        ; $5202: $13
    ld e, h                                       ; $5203: $5c
    ld e, l                                       ; $5204: $5d
    ld e, h                                       ; $5205: $5c
    adc e                                         ; $5206: $8b
    add e                                         ; $5207: $83
    add e                                         ; $5208: $83
    add e                                         ; $5209: $83
    add e                                         ; $520a: $83
    add e                                         ; $520b: $83
    add e                                         ; $520c: $83
    add e                                         ; $520d: $83
    ld [bc], a                                    ; $520e: $02
    ld [bc], a                                    ; $520f: $02
    ld [bc], a                                    ; $5210: $02
    ld [hl+], a                                   ; $5211: $22
    ld [bc], a                                    ; $5212: $02
    ld [bc], a                                    ; $5213: $02
    ld [bc], a                                    ; $5214: $02
    ld [hl+], a                                   ; $5215: $22
    ld b, [hl]                                    ; $5216: $46
    add [hl]                                      ; $5217: $86
    add a                                         ; $5218: $87
    adc b                                         ; $5219: $88
    pop de                                        ; $521a: $d1
    pop de                                        ; $521b: $d1
    pop de                                        ; $521c: $d1
    pop de                                        ; $521d: $d1
    db $f4                                        ; $521e: $f4
    ld c, b                                       ; $521f: $48
    ld c, c                                       ; $5220: $49
    adc d                                         ; $5221: $8a
    inc de                                        ; $5222: $13
    ld d, c                                       ; $5223: $51

jr_079_5224:
    ld d, d                                       ; $5224: $52
    adc [hl]                                      ; $5225: $8e
    add e                                         ; $5226: $83
    adc e                                         ; $5227: $8b
    adc e                                         ; $5228: $8b
    adc e                                         ; $5229: $8b
    add e                                         ; $522a: $83
    add e                                         ; $522b: $83
    add e                                         ; $522c: $83
    add e                                         ; $522d: $83
    ld [bc], a                                    ; $522e: $02
    inc bc                                        ; $522f: $03
    inc bc                                        ; $5230: $03
    dec bc                                        ; $5231: $0b
    ld [bc], a                                    ; $5232: $02
    inc bc                                        ; $5233: $03
    inc bc                                        ; $5234: $03
    dec bc                                        ; $5235: $0b
    call $8fce                                    ; $5236: $cd $ce $8f
    sub l                                         ; $5239: $95
    rst $08                                       ; $523a: $cf
    ret nc                                        ; $523b: $d0

    sub b                                         ; $523c: $90
    sbc b                                         ; $523d: $98
    pop de                                        ; $523e: $d1
    jp nc, $9b91                                  ; $523f: $d2 $91 $9b

    db $d3                                        ; $5242: $d3
    call nc, $afae                                ; $5243: $d4 $ae $af
    dec bc                                        ; $5246: $0b
    dec bc                                        ; $5247: $0b
    dec bc                                        ; $5248: $0b
    dec bc                                        ; $5249: $0b
    adc e                                         ; $524a: $8b
    adc e                                         ; $524b: $8b
    dec bc                                        ; $524c: $0b
    dec bc                                        ; $524d: $0b
    adc e                                         ; $524e: $8b
    adc e                                         ; $524f: $8b
    dec bc                                        ; $5250: $0b
    dec bc                                        ; $5251: $0b
    adc e                                         ; $5252: $8b
    adc e                                         ; $5253: $8b
    dec bc                                        ; $5254: $0b
    dec bc                                        ; $5255: $0b
    inc de                                        ; $5256: $13
    ld l, c                                       ; $5257: $69
    ld d, l                                       ; $5258: $55
    ld d, h                                       ; $5259: $54
    inc de                                        ; $525a: $13
    ld l, h                                       ; $525b: $6c
    ld e, b                                       ; $525c: $58
    ld d, a                                       ; $525d: $57
    inc de                                        ; $525e: $13
    ld e, d                                       ; $525f: $5a
    ld e, e                                       ; $5260: $5b
    sub c                                         ; $5261: $91
    inc sp                                        ; $5262: $33
    ld a, l                                       ; $5263: $7d
    ld a, [hl]                                    ; $5264: $7e
    xor [hl]                                      ; $5265: $ae
    ld [bc], a                                    ; $5266: $02
    inc bc                                        ; $5267: $03
    inc bc                                        ; $5268: $03
    inc bc                                        ; $5269: $03
    ld [bc], a                                    ; $526a: $02
    inc bc                                        ; $526b: $03
    inc bc                                        ; $526c: $03
    inc bc                                        ; $526d: $03
    ld [bc], a                                    ; $526e: $02
    inc bc                                        ; $526f: $03
    inc bc                                        ; $5270: $03
    dec bc                                        ; $5271: $0b
    ld [bc], a                                    ; $5272: $02
    inc bc                                        ; $5273: $03
    inc bc                                        ; $5274: $03
    dec bc                                        ; $5275: $0b
    jp c, $d4db                                   ; $5276: $da $db $d4

    push de                                       ; $5279: $d5
    sbc $df                                       ; $527a: $de $df
    ret c                                         ; $527c: $d8

    db $fd                                        ; $527d: $fd
    or $f2                                        ; $527e: $f6 $f2
    add hl, de                                    ; $5280: $19
    ld a, [de]                                    ; $5281: $1a
    ld sp, hl                                     ; $5282: $f9
    ld a, [$3635]                                 ; $5283: $fa $35 $36
    and e                                         ; $5286: $a3
    and e                                         ; $5287: $a3
    dec b                                         ; $5288: $05
    dec b                                         ; $5289: $05
    and e                                         ; $528a: $a3
    and e                                         ; $528b: $a3
    rlca                                          ; $528c: $07
    rlca                                          ; $528d: $07
    add e                                         ; $528e: $83
    and e                                         ; $528f: $a3
    rlca                                          ; $5290: $07
    ld bc, $a383                                  ; $5291: $01 $83 $a3
    rlca                                          ; $5294: $07
    ld [bc], a                                    ; $5295: $02
    ld b, $07                                     ; $5296: $06 $07
    db $e4                                        ; $5298: $e4
    push hl                                       ; $5299: $e5
    ld [$3f3e], sp                                ; $529a: $08 $3e $3f
    jp hl                                         ; $529d: $e9


    ld hl, $e440                                  ; $529e: $21 $40 $e4
    push hl                                       ; $52a1: $e5
    scf                                           ; $52a2: $37
    jr c, @+$81                                   ; $52a3: $38 $7f

    pop af                                        ; $52a5: $f1
    dec b                                         ; $52a6: $05
    dec b                                         ; $52a7: $05
    dec b                                         ; $52a8: $05
    dec b                                         ; $52a9: $05
    rlca                                          ; $52aa: $07
    rlca                                          ; $52ab: $07
    rlca                                          ; $52ac: $07
    rlca                                          ; $52ad: $07
    ld bc, $0a01                                  ; $52ae: $01 $01 $0a
    ld a, [bc]                                    ; $52b1: $0a
    ld bc, $0202                                  ; $52b2: $01 $02 $02
    ld bc, $d5d4                                  ; $52b5: $01 $d4 $d5
    ld b, $07                                     ; $52b8: $06 $07
    ret c                                         ; $52ba: $d8

    db $fd                                        ; $52bb: $fd
    ld [$193e], sp                                ; $52bc: $08 $3e $19
    ld a, [de]                                    ; $52bf: $1a
    ld hl, $3540                                  ; $52c0: $21 $40 $35
    ld [hl], $37                                  ; $52c3: $36 $37
    jr c, jr_079_52cc                             ; $52c5: $38 $05

    dec b                                         ; $52c7: $05
    dec b                                         ; $52c8: $05
    dec b                                         ; $52c9: $05
    rlca                                          ; $52ca: $07
    rlca                                          ; $52cb: $07

jr_079_52cc:
    rlca                                          ; $52cc: $07
    rlca                                          ; $52cd: $07
    ld [bc], a                                    ; $52ce: $02
    ld bc, $0101                                  ; $52cf: $01 $01 $01
    ld bc, $0101                                  ; $52d2: $01 $01 $01
    ld bc, $e5e4                                  ; $52d5: $01 $e4 $e5
    call nc, Call_000_3fd5                        ; $52d8: $d4 $d5 $3f
    jp hl                                         ; $52db: $e9


    ret c                                         ; $52dc: $d8

    db $fd                                        ; $52dd: $fd
    db $e4                                        ; $52de: $e4
    push hl                                       ; $52df: $e5
    add hl, de                                    ; $52e0: $19
    ld a, [de]                                    ; $52e1: $1a
    ld a, a                                       ; $52e2: $7f
    pop af                                        ; $52e3: $f1
    dec [hl]                                      ; $52e4: $35
    ld [hl], $05                                  ; $52e5: $36 $05
    dec b                                         ; $52e7: $05
    dec b                                         ; $52e8: $05
    dec b                                         ; $52e9: $05
    rlca                                          ; $52ea: $07
    rlca                                          ; $52eb: $07
    rlca                                          ; $52ec: $07
    rlca                                          ; $52ed: $07
    add hl, bc                                    ; $52ee: $09
    add hl, bc                                    ; $52ef: $09
    ld [bc], a                                    ; $52f0: $02
    ld [bc], a                                    ; $52f1: $02
    ld bc, $0201                                  ; $52f2: $01 $01 $02
    ld [bc], a                                    ; $52f5: $02
    ld b, $07                                     ; $52f6: $06 $07
    db $e4                                        ; $52f8: $e4
    push hl                                       ; $52f9: $e5
    ld [$3f3e], sp                                ; $52fa: $08 $3e $3f
    jp hl                                         ; $52fd: $e9


    ld hl, $e440                                  ; $52fe: $21 $40 $e4
    push hl                                       ; $5301: $e5
    scf                                           ; $5302: $37
    jr c, jr_079_5384                             ; $5303: $38 $7f

    pop af                                        ; $5305: $f1
    dec b                                         ; $5306: $05
    dec b                                         ; $5307: $05
    dec b                                         ; $5308: $05
    dec b                                         ; $5309: $05
    rlca                                          ; $530a: $07
    rlca                                          ; $530b: $07
    rlca                                          ; $530c: $07
    rlca                                          ; $530d: $07
    ld [bc], a                                    ; $530e: $02
    ld [bc], a                                    ; $530f: $02
    ld a, [bc]                                    ; $5310: $0a
    ld a, [bc]                                    ; $5311: $0a
    ld [bc], a                                    ; $5312: $02
    ld [bc], a                                    ; $5313: $02
    ld [bc], a                                    ; $5314: $02
    ld [bc], a                                    ; $5315: $02
    call nc, Call_000_06d5                        ; $5316: $d4 $d5 $06
    rlca                                          ; $5319: $07
    ret c                                         ; $531a: $d8

    db $fd                                        ; $531b: $fd
    ld [$1909], sp                                ; $531c: $08 $09 $19
    ld a, [de]                                    ; $531f: $1a
    ld hl, $3522                                  ; $5320: $21 $22 $35
    ld [hl], $37                                  ; $5323: $36 $37
    ld h, $05                                     ; $5325: $26 $05
    dec b                                         ; $5327: $05
    dec b                                         ; $5328: $05
    dec b                                         ; $5329: $05
    rlca                                          ; $532a: $07
    rlca                                          ; $532b: $07
    rlca                                          ; $532c: $07
    rlca                                          ; $532d: $07
    ld [bc], a                                    ; $532e: $02
    ld [bc], a                                    ; $532f: $02
    ld bc, $0201                                  ; $5330: $01 $01 $02
    ld [bc], a                                    ; $5333: $02
    ld bc, $e401                                  ; $5334: $01 $01 $e4
    push hl                                       ; $5337: $e5
    call nc, $0ad5                                ; $5338: $d4 $d5 $0a
    dec bc                                        ; $533b: $0b
    ret c                                         ; $533c: $d8

    db $fd                                        ; $533d: $fd
    inc hl                                        ; $533e: $23
    inc h                                         ; $533f: $24
    add hl, de                                    ; $5340: $19
    ld a, [de]                                    ; $5341: $1a
    daa                                           ; $5342: $27
    jr z, jr_079_537a                             ; $5343: $28 $35

    ld [hl], $05                                  ; $5345: $36 $05
    dec b                                         ; $5347: $05
    dec b                                         ; $5348: $05
    dec b                                         ; $5349: $05
    rlca                                          ; $534a: $07
    rlca                                          ; $534b: $07
    rlca                                          ; $534c: $07
    rlca                                          ; $534d: $07
    ld bc, $0101                                  ; $534e: $01 $01 $01
    rlca                                          ; $5351: $07
    ld bc, $0101                                  ; $5352: $01 $01 $01
    rlca                                          ; $5355: $07
    adc c                                         ; $5356: $89
    ld b, e                                       ; $5357: $43
    ld b, h                                       ; $5358: $44
    ld b, l                                       ; $5359: $45
    pop de                                        ; $535a: $d1
    pop de                                        ; $535b: $d1
    pop de                                        ; $535c: $d1
    pop de                                        ; $535d: $d1
    adc e                                         ; $535e: $8b
    rst $00                                       ; $535f: $c7
    db $f4                                        ; $5360: $f4
    push af                                       ; $5361: $f5
    sub d                                         ; $5362: $92
    ret z                                         ; $5363: $c8

    rst $10                                       ; $5364: $d7
    jp c, $838b                                   ; $5365: $da $8b $83

    add e                                         ; $5368: $83
    add e                                         ; $5369: $83
    add e                                         ; $536a: $83
    add e                                         ; $536b: $83
    add e                                         ; $536c: $83
    add e                                         ; $536d: $83
    dec bc                                        ; $536e: $0b
    dec bc                                        ; $536f: $0b
    ld [bc], a                                    ; $5370: $02
    inc bc                                        ; $5371: $03
    dec bc                                        ; $5372: $0b
    dec bc                                        ; $5373: $0b
    ld a, [bc]                                    ; $5374: $0a
    dec bc                                        ; $5375: $0b
    ld b, [hl]                                    ; $5376: $46
    add [hl]                                      ; $5377: $86
    add a                                         ; $5378: $87
    adc b                                         ; $5379: $88

jr_079_537a:
    pop de                                        ; $537a: $d1
    pop de                                        ; $537b: $d1
    pop de                                        ; $537c: $d1
    pop de                                        ; $537d: $d1
    ld b, a                                       ; $537e: $47
    ld c, b                                       ; $537f: $48
    ld c, c                                       ; $5380: $49
    adc d                                         ; $5381: $8a
    db $db                                        ; $5382: $db
    ld d, c                                       ; $5383: $51

jr_079_5384:
    ld d, d                                       ; $5384: $52
    adc [hl]                                      ; $5385: $8e
    add e                                         ; $5386: $83
    adc e                                         ; $5387: $8b
    adc e                                         ; $5388: $8b
    adc e                                         ; $5389: $8b
    add e                                         ; $538a: $83
    add e                                         ; $538b: $83
    add e                                         ; $538c: $83
    add e                                         ; $538d: $83
    inc bc                                        ; $538e: $03
    inc bc                                        ; $538f: $03
    inc bc                                        ; $5390: $03
    dec bc                                        ; $5391: $0b
    dec bc                                        ; $5392: $0b
    inc bc                                        ; $5393: $03
    inc bc                                        ; $5394: $03
    dec bc                                        ; $5395: $0b
    adc c                                         ; $5396: $89
    ld b, d                                       ; $5397: $42
    ld b, c                                       ; $5398: $41
    ld a, [hl+]                                   ; $5399: $2a
    pop de                                        ; $539a: $d1
    or $f2                                        ; $539b: $f6 $f2
    dec a                                         ; $539d: $3d
    db $f4                                        ; $539e: $f4
    di                                            ; $539f: $f3
    ld a, [c]                                     ; $53a0: $f2
    db $e3                                        ; $53a1: $e3
    inc de                                        ; $53a2: $13
    inc c                                         ; $53a3: $0c
    ld a, [$8be7]                                 ; $53a4: $fa $e7 $8b
    and e                                         ; $53a7: $a3
    and e                                         ; $53a8: $a3
    ld bc, $8383                                  ; $53a9: $01 $83 $83
    and e                                         ; $53ac: $a3
    rlca                                          ; $53ad: $07
    ld [bc], a                                    ; $53ae: $02
    inc hl                                        ; $53af: $23
    inc hl                                        ; $53b0: $23
    rlca                                          ; $53b1: $07
    ld [bc], a                                    ; $53b2: $02
    inc hl                                        ; $53b3: $23
    inc hl                                        ; $53b4: $23
    rlca                                          ; $53b5: $07
    dec hl                                        ; $53b6: $2b
    inc l                                         ; $53b7: $2c

jr_079_53b8:
    add hl, sp                                    ; $53b8: $39
    ld a, [hl-]                                   ; $53b9: $3a
    cpl                                           ; $53ba: $2f
    jr nc, jr_079_53b8                            ; $53bb: $30 $fb

    db $fc                                        ; $53bd: $fc
    db $e4                                        ; $53be: $e4
    push hl                                       ; $53bf: $e5
    call nc, $e8d5                                ; $53c0: $d4 $d5 $e8
    jp hl                                         ; $53c3: $e9


    ret c                                         ; $53c4: $d8

    db $fd                                        ; $53c5: $fd
    ld [bc], a                                    ; $53c6: $02
    ld [bc], a                                    ; $53c7: $02
    ld bc, $0207                                  ; $53c8: $01 $07 $02
    ld [bc], a                                    ; $53cb: $02
    ld bc, $0207                                  ; $53cc: $01 $07 $02
    ld [bc], a                                    ; $53cf: $02
    ld bc, $0107                                  ; $53d0: $01 $07 $01
    ld [bc], a                                    ; $53d3: $02
    ld [bc], a                                    ; $53d4: $02
    rlca                                          ; $53d5: $07
    sub l                                         ; $53d6: $95
    ret                                           ; $53d7: $c9


    ret c                                         ; $53d8: $d8

    call c, $ca98                                 ; $53d9: $dc $98 $ca
    reti                                          ; $53dc: $d9


    sbc $9b                                       ; $53dd: $de $9b
    push de                                       ; $53df: $d5
    inc de                                        ; $53e0: $13
    ldh [$af], a                                  ; $53e1: $e0 $af
    sub $33                                       ; $53e3: $d6 $33
    inc [hl]                                      ; $53e5: $34
    dec bc                                        ; $53e6: $0b
    dec bc                                        ; $53e7: $0b
    ld a, [bc]                                    ; $53e8: $0a
    dec bc                                        ; $53e9: $0b
    dec bc                                        ; $53ea: $0b
    dec bc                                        ; $53eb: $0b
    ld a, [bc]                                    ; $53ec: $0a
    dec bc                                        ; $53ed: $0b
    dec bc                                        ; $53ee: $0b
    dec bc                                        ; $53ef: $0b
    ld [bc], a                                    ; $53f0: $02
    dec bc                                        ; $53f1: $0b
    dec bc                                        ; $53f2: $0b
    dec bc                                        ; $53f3: $0b
    ld [bc], a                                    ; $53f4: $02
    inc bc                                        ; $53f5: $03
    pop de                                        ; $53f6: $d1
    db $dd                                        ; $53f7: $dd
    ld d, l                                       ; $53f8: $55
    adc a                                         ; $53f9: $8f
    rst $18                                       ; $53fa: $df
    ld [c], a                                     ; $53fb: $e2
    ld e, b                                       ; $53fc: $58
    sub b                                         ; $53fd: $90
    pop hl                                        ; $53fe: $e1
    db $e3                                        ; $53ff: $e3
    ld e, e                                       ; $5400: $5b
    sub c                                         ; $5401: $91
    ld a, h                                       ; $5402: $7c
    ld a, l                                       ; $5403: $7d
    ld a, [hl]                                    ; $5404: $7e
    xor [hl]                                      ; $5405: $ae
    inc bc                                        ; $5406: $03
    dec bc                                        ; $5407: $0b
    inc bc                                        ; $5408: $03
    dec bc                                        ; $5409: $0b
    dec bc                                        ; $540a: $0b
    dec bc                                        ; $540b: $0b
    inc bc                                        ; $540c: $03
    dec bc                                        ; $540d: $0b
    dec bc                                        ; $540e: $0b
    dec bc                                        ; $540f: $0b
    inc bc                                        ; $5410: $03
    dec bc                                        ; $5411: $0b
    inc bc                                        ; $5412: $03
    inc bc                                        ; $5413: $03
    inc bc                                        ; $5414: $03
    dec bc                                        ; $5415: $0b
    inc de                                        ; $5416: $13
    rrca                                          ; $5417: $0f
    db $d3                                        ; $5418: $d3
    db $eb                                        ; $5419: $eb
    inc de                                        ; $541a: $13
    ld [de], a                                    ; $541b: $12
    rst $10                                       ; $541c: $d7
    rst $28                                       ; $541d: $ef
    inc de                                        ; $541e: $13
    ld d, $15                                     ; $541f: $16 $15
    rst $38                                       ; $5421: $ff
    inc sp                                        ; $5422: $33
    ld [hl-], a                                   ; $5423: $32
    ld sp, $0203                                  ; $5424: $31 $03 $02
    inc hl                                        ; $5427: $23
    inc bc                                        ; $5428: $03
    rlca                                          ; $5429: $07
    ld [bc], a                                    ; $542a: $02
    inc hl                                        ; $542b: $23
    inc hl                                        ; $542c: $23
    rlca                                          ; $542d: $07
    ld [bc], a                                    ; $542e: $02
    inc hl                                        ; $542f: $23
    inc hl                                        ; $5430: $23
    rlca                                          ; $5431: $07
    ld [bc], a                                    ; $5432: $02
    inc hl                                        ; $5433: $23
    inc hl                                        ; $5434: $23
    rlca                                          ; $5435: $07
    db $ec                                        ; $5436: $ec
    db $ed                                        ; $5437: $ed
    add hl, de                                    ; $5438: $19
    ld a, [de]                                    ; $5439: $1a
    ldh a, [$f1]                                  ; $543a: $f0 $f1
    dec [hl]                                      ; $543c: $35
    ld [hl], $00                                  ; $543d: $36 $00
    ld bc, $3a39                                  ; $543f: $01 $39 $3a
    inc b                                         ; $5442: $04
    dec b                                         ; $5443: $05
    ei                                            ; $5444: $fb
    db $fc                                        ; $5445: $fc
    ld b, $02                                     ; $5446: $06 $02
    ld [bc], a                                    ; $5448: $02
    rlca                                          ; $5449: $07
    ld bc, $0202                                  ; $544a: $01 $02 $02
    rlca                                          ; $544d: $07
    ld b, $01                                     ; $544e: $06 $01
    ld bc, $0107                                  ; $5450: $01 $07 $01
    ld bc, $0701                                  ; $5453: $01 $01 $07
    db $e4                                        ; $5456: $e4
    push hl                                       ; $5457: $e5
    call nc, Call_000_3fd5                        ; $5458: $d4 $d5 $3f
    jp hl                                         ; $545b: $e9


    ret c                                         ; $545c: $d8

    reti                                          ; $545d: $d9


    db $e4                                        ; $545e: $e4
    push hl                                       ; $545f: $e5
    call c, Call_079_7fdd                         ; $5460: $dc $dd $7f
    pop af                                        ; $5463: $f1
    ldh [$e1], a                                  ; $5464: $e0 $e1
    dec b                                         ; $5466: $05
    dec b                                         ; $5467: $05
    dec b                                         ; $5468: $05
    dec b                                         ; $5469: $05
    rlca                                          ; $546a: $07
    rlca                                          ; $546b: $07
    rlca                                          ; $546c: $07
    rlca                                          ; $546d: $07
    add hl, bc                                    ; $546e: $09
    add hl, bc                                    ; $546f: $09
    ld bc, $0106                                  ; $5470: $01 $06 $01
    ld bc, $0601                                  ; $5473: $01 $01 $06
    ld [c], a                                     ; $5476: $e2
    db $e3                                        ; $5477: $e3
    db $e4                                        ; $5478: $e4
    push hl                                       ; $5479: $e5
    and $e7                                       ; $547a: $e6 $e7
    add sp, -$17                                  ; $547c: $e8 $e9
    ld [$eceb], a                                 ; $547e: $ea $eb $ec
    db $ed                                        ; $5481: $ed
    xor $ef                                       ; $5482: $ee $ef
    ldh a, [$f1]                                  ; $5484: $f0 $f1
    dec b                                         ; $5486: $05
    dec b                                         ; $5487: $05
    dec b                                         ; $5488: $05
    dec b                                         ; $5489: $05
    rlca                                          ; $548a: $07
    rlca                                          ; $548b: $07
    rlca                                          ; $548c: $07
    rlca                                          ; $548d: $07
    ld b, $06                                     ; $548e: $06 $06
    ld b, $01                                     ; $5490: $06 $01
    ld b, $06                                     ; $5492: $06 $06
    ld bc, $d401                                  ; $5494: $01 $01 $d4
    push de                                       ; $5497: $d5
    ld b, $07                                     ; $5498: $06 $07
    ret c                                         ; $549a: $d8

    db $fd                                        ; $549b: $fd
    ld [$193e], sp                                ; $549c: $08 $3e $19
    ld a, [de]                                    ; $549f: $1a
    ld hl, $3540                                  ; $54a0: $21 $40 $35
    ld [hl], $37                                  ; $54a3: $36 $37
    jr c, jr_079_54ac                             ; $54a5: $38 $05

    dec b                                         ; $54a7: $05
    dec b                                         ; $54a8: $05
    rlca                                          ; $54a9: $07

jr_079_54aa:
    rlca                                          ; $54aa: $07
    rlca                                          ; $54ab: $07

jr_079_54ac:
    rlca                                          ; $54ac: $07
    ld bc, $0201                                  ; $54ad: $01 $01 $02
    ld [bc], a                                    ; $54b0: $02
    ld bc, $0201                                  ; $54b1: $01 $01 $02
    ld [bc], a                                    ; $54b4: $02
    ld [bc], a                                    ; $54b5: $02
    db $e4                                        ; $54b6: $e4
    push hl                                       ; $54b7: $e5
    call nc, Call_000_3fd5                        ; $54b8: $d4 $d5 $3f
    jp hl                                         ; $54bb: $e9


    ret c                                         ; $54bc: $d8

    db $fd                                        ; $54bd: $fd
    db $e4                                        ; $54be: $e4
    push hl                                       ; $54bf: $e5
    add hl, de                                    ; $54c0: $19
    ld a, [de]                                    ; $54c1: $1a
    ld a, a                                       ; $54c2: $7f
    pop af                                        ; $54c3: $f1
    dec [hl]                                      ; $54c4: $35
    ld [hl], $01                                  ; $54c5: $36 $01
    ld bc, $0701                                  ; $54c7: $01 $01 $07
    ld bc, $0101                                  ; $54ca: $01 $01 $01
    rlca                                          ; $54cd: $07
    add hl, bc                                    ; $54ce: $09
    add hl, bc                                    ; $54cf: $09
    ld bc, $0207                                  ; $54d0: $01 $07 $02
    ld bc, $0701                                  ; $54d3: $01 $01 $07
    ld a, [c]                                     ; $54d6: $f2
    or $d1                                        ; $54d7: $f6 $d1
    or $fa                                        ; $54d9: $f6 $fa
    ld sp, hl                                     ; $54db: $f9
    pop de                                        ; $54dc: $d1
    ld sp, hl                                     ; $54dd: $f9
    db $d3                                        ; $54de: $d3
    jp nc, $d2d1                                  ; $54df: $d2 $d1 $d2

    rst $10                                       ; $54e2: $d7
    sub $d1                                       ; $54e3: $d6 $d1
    sub $83                                       ; $54e5: $d6 $83
    and e                                         ; $54e7: $a3
    inc bc                                        ; $54e8: $03
    add e                                         ; $54e9: $83
    add e                                         ; $54ea: $83
    and e                                         ; $54eb: $a3
    inc bc                                        ; $54ec: $03
    add e                                         ; $54ed: $83
    and e                                         ; $54ee: $a3
    and e                                         ; $54ef: $a3
    inc bc                                        ; $54f0: $03
    add e                                         ; $54f1: $83
    add e                                         ; $54f2: $83
    add e                                         ; $54f3: $83
    inc bc                                        ; $54f4: $03
    and e                                         ; $54f5: $a3
    ld a, [c]                                     ; $54f6: $f2
    push de                                       ; $54f7: $d5
    ld b, $07                                     ; $54f8: $06 $07
    ld a, [$08fd]                                 ; $54fa: $fa $fd $08
    ld a, $d3                                     ; $54fd: $3e $d3
    ld a, [de]                                    ; $54ff: $1a
    ld hl, $d740                                  ; $5500: $21 $40 $d7
    ld [hl], $37                                  ; $5503: $36 $37
    jr c, jr_079_54aa                             ; $5505: $38 $a3

    rlca                                          ; $5507: $07
    ld bc, $a301                                  ; $5508: $01 $01 $a3
    rlca                                          ; $550b: $07
    ld [bc], a                                    ; $550c: $02
    ld [bc], a                                    ; $550d: $02
    add e                                         ; $550e: $83
    rlca                                          ; $550f: $07
    ld bc, $a302                                  ; $5510: $01 $02 $a3
    rlca                                          ; $5513: $07
    ld bc, $e402                                  ; $5514: $01 $02 $e4
    push hl                                       ; $5517: $e5
    ld a, [c]                                     ; $5518: $f2
    di                                            ; $5519: $f3
    ccf                                           ; $551a: $3f
    jp hl                                         ; $551b: $e9


    ld a, [$e40c]                                 ; $551c: $fa $0c $e4
    push hl                                       ; $551f: $e5
    db $d3                                        ; $5520: $d3
    rrca                                          ; $5521: $0f
    ld a, a                                       ; $5522: $7f
    pop af                                        ; $5523: $f1
    rst $10                                       ; $5524: $d7
    ld [de], a                                    ; $5525: $12
    ld bc, $0307                                  ; $5526: $01 $07 $03
    inc bc                                        ; $5529: $03
    ld bc, $0307                                  ; $552a: $01 $07 $03
    inc bc                                        ; $552d: $03
    add hl, bc                                    ; $552e: $09
    rrca                                          ; $552f: $0f
    inc hl                                        ; $5530: $23
    inc bc                                        ; $5531: $03
    ld [bc], a                                    ; $5532: $02
    rlca                                          ; $5533: $07
    inc bc                                        ; $5534: $03
    inc bc                                        ; $5535: $03
    push af                                       ; $5536: $f5
    ld b, a                                       ; $5537: $47
    di                                            ; $5538: $f3
    ld a, [c]                                     ; $5539: $f2
    ld c, $50                                     ; $553a: $0e $50
    inc c                                         ; $553c: $0c
    ld a, [$5354]                                 ; $553d: $fa $54 $53
    rrca                                          ; $5540: $0f
    db $d3                                        ; $5541: $d3
    ld d, a                                       ; $5542: $57
    ld d, [hl]                                    ; $5543: $56
    ld [de], a                                    ; $5544: $12
    rst $10                                       ; $5545: $d7
    inc bc                                        ; $5546: $03
    inc bc                                        ; $5547: $03
    inc hl                                        ; $5548: $23
    inc hl                                        ; $5549: $23
    inc bc                                        ; $554a: $03
    inc bc                                        ; $554b: $03
    inc hl                                        ; $554c: $23
    inc hl                                        ; $554d: $23
    inc bc                                        ; $554e: $03
    inc bc                                        ; $554f: $03
    inc hl                                        ; $5550: $23
    inc bc                                        ; $5551: $03
    inc bc                                        ; $5552: $03
    inc bc                                        ; $5553: $03
    inc hl                                        ; $5554: $23
    inc hl                                        ; $5555: $23
    db $db                                        ; $5556: $db
    jp c, $dad1                                   ; $5557: $da $d1 $da

    rst $18                                       ; $555a: $df
    sbc $d1                                       ; $555b: $de $d1
    sbc $f2                                       ; $555d: $de $f2
    or $d1                                        ; $555f: $f6 $d1
    or $fa                                        ; $5561: $f6 $fa
    ld sp, hl                                     ; $5563: $f9
    pop de                                        ; $5564: $d1
    ld sp, hl                                     ; $5565: $f9
    add e                                         ; $5566: $83
    add e                                         ; $5567: $83
    inc bc                                        ; $5568: $03
    and e                                         ; $5569: $a3
    add e                                         ; $556a: $83
    add e                                         ; $556b: $83
    inc bc                                        ; $556c: $03
    and e                                         ; $556d: $a3
    add e                                         ; $556e: $83
    and e                                         ; $556f: $a3
    inc bc                                        ; $5570: $03
    add e                                         ; $5571: $83
    add e                                         ; $5572: $83
    and e                                         ; $5573: $a3
    inc bc                                        ; $5574: $03
    add e                                         ; $5575: $83
    db $db                                        ; $5576: $db
    ld a, [hl-]                                   ; $5577: $3a
    dec sp                                        ; $5578: $3b
    inc a                                         ; $5579: $3c
    rst $18                                       ; $557a: $df
    db $fc                                        ; $557b: $fc
    ld [bc], a                                    ; $557c: $02
    dec a                                         ; $557d: $3d
    ld a, [c]                                     ; $557e: $f2
    push de                                       ; $557f: $d5
    ld [c], a                                     ; $5580: $e2
    db $e3                                        ; $5581: $e3
    ld a, [$e6d9]                                 ; $5582: $fa $d9 $e6
    rst $20                                       ; $5585: $e7
    and e                                         ; $5586: $a3
    rlca                                          ; $5587: $07
    ld bc, $a301                                  ; $5588: $01 $01 $a3
    rlca                                          ; $558b: $07
    ld bc, $a302                                  ; $558c: $01 $02 $a3
    rlca                                          ; $558f: $07
    ld [bc], a                                    ; $5590: $02
    ld bc, $07a3                                  ; $5591: $01 $a3 $07
    ld b, $06                                     ; $5594: $06 $06
    add b                                         ; $5596: $80
    add c                                         ; $5597: $81
    dec d                                         ; $5598: $15
    ld d, $2f                                     ; $5599: $16 $2f
    jr nc, jr_079_55ce                            ; $559b: $30 $31

    ld [hl-], a                                   ; $559d: $32
    db $e4                                        ; $559e: $e4
    push hl                                       ; $559f: $e5
    call nc, $e8d5                                ; $55a0: $d4 $d5 $e8
    jp hl                                         ; $55a3: $e9


    ret c                                         ; $55a4: $d8

    db $fd                                        ; $55a5: $fd
    add hl, bc                                    ; $55a6: $09
    rrca                                          ; $55a7: $0f
    inc bc                                        ; $55a8: $03
    inc bc                                        ; $55a9: $03
    ld bc, $0307                                  ; $55aa: $01 $07 $03
    inc bc                                        ; $55ad: $03
    ld [bc], a                                    ; $55ae: $02
    rlca                                          ; $55af: $07
    dec b                                         ; $55b0: $05
    dec b                                         ; $55b1: $05
    ld bc, $0701                                  ; $55b2: $01 $01 $07
    rlca                                          ; $55b5: $07
    jr @+$5b                                      ; $55b6: $18 $59

    ld d, $15                                     ; $55b8: $16 $15
    inc [hl]                                      ; $55ba: $34
    ld a, h                                       ; $55bb: $7c
    ld [hl-], a                                   ; $55bc: $32
    ld sp, $0706                                  ; $55bd: $31 $06 $07
    db $e4                                        ; $55c0: $e4
    push hl                                       ; $55c1: $e5
    ld [$3f3e], sp                                ; $55c2: $08 $3e $3f
    jp hl                                         ; $55c5: $e9


    inc bc                                        ; $55c6: $03
    inc bc                                        ; $55c7: $03
    inc hl                                        ; $55c8: $23
    inc hl                                        ; $55c9: $23
    inc bc                                        ; $55ca: $03
    inc bc                                        ; $55cb: $03
    inc hl                                        ; $55cc: $23
    inc hl                                        ; $55cd: $23

jr_079_55ce:
    dec b                                         ; $55ce: $05
    dec b                                         ; $55cf: $05
    dec b                                         ; $55d0: $05
    dec b                                         ; $55d1: $05
    rlca                                          ; $55d2: $07
    rlca                                          ; $55d3: $07
    rlca                                          ; $55d4: $07
    rlca                                          ; $55d5: $07
    db $d3                                        ; $55d6: $d3
    db $dd                                        ; $55d7: $dd
    ld [$d7eb], a                                 ; $55d8: $ea $eb $d7
    pop hl                                        ; $55db: $e1
    xor $ef                                       ; $55dc: $ee $ef
    db $db                                        ; $55de: $db
    ld hl, sp-$02                                 ; $55df: $f8 $fe
    rst $38                                       ; $55e1: $ff
    rst $18                                       ; $55e2: $df
    db $fc                                        ; $55e3: $fc
    ld [bc], a                                    ; $55e4: $02
    inc bc                                        ; $55e5: $03
    add e                                         ; $55e6: $83
    rlca                                          ; $55e7: $07
    ld b, $06                                     ; $55e8: $06 $06
    and e                                         ; $55ea: $a3
    rlca                                          ; $55eb: $07
    ld b, $06                                     ; $55ec: $06 $06
    and e                                         ; $55ee: $a3
    rlca                                          ; $55ef: $07
    ld b, $06                                     ; $55f0: $06 $06
    and e                                         ; $55f2: $a3
    rlca                                          ; $55f3: $07
    ld bc, $ec01                                  ; $55f4: $01 $01 $ec
    db $ed                                        ; $55f7: $ed
    add hl, de                                    ; $55f8: $19
    ld a, [de]                                    ; $55f9: $1a
    ldh a, [$f1]                                  ; $55fa: $f0 $f1
    dec [hl]                                      ; $55fc: $35
    ld [hl], $00                                  ; $55fd: $36 $00
    ld bc, $3a39                                  ; $55ff: $01 $39 $3a
    inc b                                         ; $5602: $04
    dec b                                         ; $5603: $05
    ei                                            ; $5604: $fb
    db $fc                                        ; $5605: $fc
    ld b, $01                                     ; $5606: $06 $01
    ld bc, $0102                                  ; $5608: $01 $02 $01
    ld bc, $0201                                  ; $560b: $01 $01 $02
    ld b, $01                                     ; $560e: $06 $01
    ld bc, $0101                                  ; $5610: $01 $01 $01
    ld bc, $0101                                  ; $5613: $01 $01 $01
    ld hl, $e440                                  ; $5616: $21 $40 $e4
    push hl                                       ; $5619: $e5
    scf                                           ; $561a: $37
    jr c, jr_079_569c                             ; $561b: $38 $7f

    pop af                                        ; $561d: $f1
    dec sp                                        ; $561e: $3b
    inc a                                         ; $561f: $3c
    add b                                         ; $5620: $80
    add c                                         ; $5621: $81
    ld [bc], a                                    ; $5622: $02
    dec a                                         ; $5623: $3d
    cpl                                           ; $5624: $2f
    jr nc, jr_079_5628                            ; $5625: $30 $01

    ld [bc], a                                    ; $5627: $02

jr_079_5628:
    add hl, bc                                    ; $5628: $09
    add hl, bc                                    ; $5629: $09
    ld bc, $0101                                  ; $562a: $01 $01 $01
    ld [bc], a                                    ; $562d: $02
    ld [bc], a                                    ; $562e: $02
    ld [bc], a                                    ; $562f: $02
    add hl, bc                                    ; $5630: $09
    add hl, bc                                    ; $5631: $09
    ld bc, $0202                                  ; $5632: $01 $02 $02
    ld [bc], a                                    ; $5635: $02
    ld a, [c]                                     ; $5636: $f2
    or $d1                                        ; $5637: $f6 $d1
    rst $20                                       ; $5639: $e7
    ld a, [$d1f9]                                 ; $563a: $fa $f9 $d1
    pop de                                        ; $563d: $d1
    db $d3                                        ; $563e: $d3
    jp nc, $d1d1                                  ; $563f: $d2 $d1 $d1

    rst $10                                       ; $5642: $d7
    sub $d1                                       ; $5643: $d6 $d1
    pop de                                        ; $5645: $d1
    add e                                         ; $5646: $83
    and e                                         ; $5647: $a3
    inc bc                                        ; $5648: $03
    xor e                                         ; $5649: $ab
    add e                                         ; $564a: $83
    and e                                         ; $564b: $a3
    inc bc                                        ; $564c: $03
    add e                                         ; $564d: $83
    and e                                         ; $564e: $a3
    and e                                         ; $564f: $a3
    inc bc                                        ; $5650: $03
    inc bc                                        ; $5651: $03
    add e                                         ; $5652: $83
    add e                                         ; $5653: $83
    inc bc                                        ; $5654: $03
    inc bc                                        ; $5655: $03
    and $87                                       ; $5656: $e6 $87
    adc b                                         ; $5658: $88
    adc c                                         ; $5659: $89
    pop de                                        ; $565a: $d1
    pop de                                        ; $565b: $d1
    pop de                                        ; $565c: $d1
    pop de                                        ; $565d: $d1
    pop de                                        ; $565e: $d1
    pop de                                        ; $565f: $d1
    pop de                                        ; $5660: $d1
    pop de                                        ; $5661: $d1
    pop de                                        ; $5662: $d1
    pop de                                        ; $5663: $d1
    pop de                                        ; $5664: $d1
    pop de                                        ; $5665: $d1
    xor e                                         ; $5666: $ab
    adc e                                         ; $5667: $8b
    adc e                                         ; $5668: $8b
    adc e                                         ; $5669: $8b
    add e                                         ; $566a: $83
    add e                                         ; $566b: $83
    add e                                         ; $566c: $83
    add e                                         ; $566d: $83
    inc bc                                        ; $566e: $03
    inc bc                                        ; $566f: $03
    inc bc                                        ; $5670: $03
    inc bc                                        ; $5671: $03
    inc bc                                        ; $5672: $03
    inc bc                                        ; $5673: $03
    inc bc                                        ; $5674: $03
    inc bc                                        ; $5675: $03
    ld b, e                                       ; $5676: $43
    ld b, h                                       ; $5677: $44
    ld b, l                                       ; $5678: $45
    ld b, [hl]                                    ; $5679: $46
    pop de                                        ; $567a: $d1
    pop de                                        ; $567b: $d1
    pop de                                        ; $567c: $d1
    pop de                                        ; $567d: $d1
    pop de                                        ; $567e: $d1
    pop de                                        ; $567f: $d1
    pop de                                        ; $5680: $d1
    pop de                                        ; $5681: $d1
    pop de                                        ; $5682: $d1
    pop de                                        ; $5683: $d1
    pop de                                        ; $5684: $d1
    pop de                                        ; $5685: $d1
    add e                                         ; $5686: $83
    add e                                         ; $5687: $83
    add e                                         ; $5688: $83
    add e                                         ; $5689: $83
    add e                                         ; $568a: $83
    add e                                         ; $568b: $83
    add e                                         ; $568c: $83
    add e                                         ; $568d: $83
    inc bc                                        ; $568e: $03
    inc bc                                        ; $568f: $03
    inc bc                                        ; $5690: $03
    inc bc                                        ; $5691: $03
    inc bc                                        ; $5692: $03
    inc bc                                        ; $5693: $03
    inc bc                                        ; $5694: $03
    inc bc                                        ; $5695: $03
    add [hl]                                      ; $5696: $86
    add a                                         ; $5697: $87
    adc b                                         ; $5698: $88
    adc c                                         ; $5699: $89
    pop de                                        ; $569a: $d1
    pop de                                        ; $569b: $d1

jr_079_569c:
    pop de                                        ; $569c: $d1
    pop de                                        ; $569d: $d1
    pop de                                        ; $569e: $d1
    pop de                                        ; $569f: $d1
    pop de                                        ; $56a0: $d1
    pop de                                        ; $56a1: $d1
    pop de                                        ; $56a2: $d1
    pop de                                        ; $56a3: $d1
    pop de                                        ; $56a4: $d1
    pop de                                        ; $56a5: $d1
    adc e                                         ; $56a6: $8b
    adc e                                         ; $56a7: $8b
    adc e                                         ; $56a8: $8b
    adc e                                         ; $56a9: $8b
    add e                                         ; $56aa: $83
    add e                                         ; $56ab: $83
    add e                                         ; $56ac: $83
    add e                                         ; $56ad: $83
    inc bc                                        ; $56ae: $03
    inc bc                                        ; $56af: $03
    inc bc                                        ; $56b0: $03
    inc bc                                        ; $56b1: $03
    inc bc                                        ; $56b2: $03
    inc bc                                        ; $56b3: $03
    inc bc                                        ; $56b4: $03
    inc bc                                        ; $56b5: $03
    call nc, Call_000_06d5                        ; $56b6: $d4 $d5 $06
    rlca                                          ; $56b9: $07
    ret c                                         ; $56ba: $d8

    db $fd                                        ; $56bb: $fd
    ld [$1909], sp                                ; $56bc: $08 $09 $19
    ld a, [de]                                    ; $56bf: $1a
    ld hl, $3522                                  ; $56c0: $21 $22 $35
    ld [hl], $37                                  ; $56c3: $36 $37
    ld h, $07                                     ; $56c5: $26 $07
    ld bc, $0102                                  ; $56c7: $01 $02 $01
    rlca                                          ; $56ca: $07
    ld bc, $0102                                  ; $56cb: $01 $02 $01
    rlca                                          ; $56ce: $07
    ld bc, $0202                                  ; $56cf: $01 $02 $02
    rlca                                          ; $56d2: $07
    ld bc, $0101                                  ; $56d3: $01 $01 $01
    db $e4                                        ; $56d6: $e4
    push hl                                       ; $56d7: $e5
    call nc, $0adb                                ; $56d8: $d4 $db $0a
    dec bc                                        ; $56db: $0b
    ret c                                         ; $56dc: $d8

    rst $18                                       ; $56dd: $df
    inc hl                                        ; $56de: $23
    inc h                                         ; $56df: $24
    add hl, de                                    ; $56e0: $19
    ld a, [c]                                     ; $56e1: $f2
    daa                                           ; $56e2: $27
    jr z, jr_079_571a                             ; $56e3: $28 $35

    ld a, [$0101]                                 ; $56e5: $fa $01 $01
    rlca                                          ; $56e8: $07
    add e                                         ; $56e9: $83
    ld bc, $0702                                  ; $56ea: $01 $02 $07
    add e                                         ; $56ed: $83
    ld bc, $0701                                  ; $56ee: $01 $01 $07
    add e                                         ; $56f1: $83
    ld [bc], a                                    ; $56f2: $02
    ld bc, $8307                                  ; $56f3: $01 $07 $83
    jp c, $d1d1                                   ; $56f6: $da $d1 $d1

    pop de                                        ; $56f9: $d1
    sbc $d1                                       ; $56fa: $de $d1
    pop de                                        ; $56fc: $d1
    pop de                                        ; $56fd: $d1
    or $d1                                        ; $56fe: $f6 $d1
    pop de                                        ; $5700: $d1
    pop de                                        ; $5701: $d1
    ld sp, hl                                     ; $5702: $f9
    pop de                                        ; $5703: $d1
    pop de                                        ; $5704: $d1
    pop de                                        ; $5705: $d1
    add e                                         ; $5706: $83
    inc bc                                        ; $5707: $03
    inc bc                                        ; $5708: $03
    inc bc                                        ; $5709: $03
    add e                                         ; $570a: $83
    inc bc                                        ; $570b: $03
    inc bc                                        ; $570c: $03
    inc bc                                        ; $570d: $03
    and e                                         ; $570e: $a3
    inc bc                                        ; $570f: $03
    inc bc                                        ; $5710: $03
    inc bc                                        ; $5711: $03
    and e                                         ; $5712: $a3
    inc bc                                        ; $5713: $03
    inc bc                                        ; $5714: $03
    inc bc                                        ; $5715: $03
    add hl, sp                                    ; $5716: $39
    ld a, [hl-]                                   ; $5717: $3a
    dec sp                                        ; $5718: $3b
    ld a, [hl+]                                   ; $5719: $2a

jr_079_571a:
    ei                                            ; $571a: $fb
    db $fc                                        ; $571b: $fc
    ld [bc], a                                    ; $571c: $02
    dec a                                         ; $571d: $3d
    call nc, Call_000_06d5                        ; $571e: $d4 $d5 $06
    rlca                                          ; $5721: $07
    ret c                                         ; $5722: $d8

    db $fd                                        ; $5723: $fd
    ld [$073e], sp                                ; $5724: $08 $3e $07
    ld bc, $0101                                  ; $5727: $01 $01 $01
    rlca                                          ; $572a: $07
    ld [bc], a                                    ; $572b: $02
    ld bc, $0701                                  ; $572c: $01 $01 $07
    ld [bc], a                                    ; $572f: $02
    ld [bc], a                                    ; $5730: $02
    ld bc, $0101                                  ; $5731: $01 $01 $01
    ld bc, $2b02                                  ; $5734: $01 $02 $2b
    inc l                                         ; $5737: $2c

jr_079_5738:
    add hl, sp                                    ; $5738: $39
    db $d3                                        ; $5739: $d3
    cpl                                           ; $573a: $2f
    jr nc, jr_079_5738                            ; $573b: $30 $fb

    rst $10                                       ; $573d: $d7
    db $e4                                        ; $573e: $e4
    push hl                                       ; $573f: $e5
    call nc, Call_000_3fdb                        ; $5740: $d4 $db $3f
    jp hl                                         ; $5743: $e9


    ret c                                         ; $5744: $d8

    rst $18                                       ; $5745: $df
    ld bc, $0701                                  ; $5746: $01 $01 $07
    and e                                         ; $5749: $a3

jr_079_574a:
    ld [bc], a                                    ; $574a: $02
    ld [bc], a                                    ; $574b: $02
    rlca                                          ; $574c: $07
    add e                                         ; $574d: $83
    ld bc, $0702                                  ; $574e: $01 $02 $07
    add e                                         ; $5751: $83
    ld bc, $0701                                  ; $5752: $01 $01 $07
    add e                                         ; $5755: $83
    add hl, de                                    ; $5756: $19
    ld a, [de]                                    ; $5757: $1a
    ld hl, $3540                                  ; $5758: $21 $40 $35
    ld [hl], $37                                  ; $575b: $36 $37
    jr c, jr_079_5798                             ; $575d: $38 $39

    ld a, [hl-]                                   ; $575f: $3a
    dec sp                                        ; $5760: $3b
    inc a                                         ; $5761: $3c
    ei                                            ; $5762: $fb
    db $fc                                        ; $5763: $fc
    ld [bc], a                                    ; $5764: $02
    dec a                                         ; $5765: $3d
    ld bc, $0202                                  ; $5766: $01 $02 $02
    ld bc, $0102                                  ; $5769: $01 $02 $01
    ld bc, $0101                                  ; $576c: $01 $01 $01
    ld bc, $0102                                  ; $576f: $01 $02 $01
    ld bc, $0102                                  ; $5772: $01 $02 $01
    ld bc, $e5e4                                  ; $5775: $01 $e4 $e5

Jump_079_5778:
    add hl, de                                    ; $5778: $19
    ld a, [c]                                     ; $5779: $f2
    ld a, a                                       ; $577a: $7f
    pop af                                        ; $577b: $f1
    dec [hl]                                      ; $577c: $35
    ld a, [$8180]                                 ; $577d: $fa $80 $81

jr_079_5780:
    add hl, sp                                    ; $5780: $39
    db $d3                                        ; $5781: $d3
    cpl                                           ; $5782: $2f
    jr nc, jr_079_5780                            ; $5783: $30 $fb

    rst $10                                       ; $5785: $d7
    add hl, bc                                    ; $5786: $09
    add hl, bc                                    ; $5787: $09
    rlca                                          ; $5788: $07
    add e                                         ; $5789: $83
    ld bc, $0701                                  ; $578a: $01 $01 $07
    add e                                         ; $578d: $83
    add hl, bc                                    ; $578e: $09
    add hl, bc                                    ; $578f: $09
    rlca                                          ; $5790: $07
    and e                                         ; $5791: $a3
    ld bc, $0702                                  ; $5792: $01 $02 $07
    add e                                         ; $5795: $83
    ld b, d                                       ; $5796: $42
    ld b, c                                       ; $5797: $41

jr_079_5798:
    ld b, $07                                     ; $5798: $06 $07
    ld sp, hl                                     ; $579a: $f9
    ld a, [$3e08]                                 ; $579b: $fa $08 $3e
    jp nc, $21d3                                  ; $579e: $d2 $d3 $21

    ld b, b                                       ; $57a1: $40
    sub $d7                                       ; $57a2: $d6 $d7
    scf                                           ; $57a4: $37
    jr c, jr_079_574a                             ; $57a5: $38 $a3

    and e                                         ; $57a7: $a3
    ld bc, $8301                                  ; $57a8: $01 $01 $83
    and e                                         ; $57ab: $a3
    rlca                                          ; $57ac: $07
    ld bc, $0303                                  ; $57ad: $01 $03 $03
    rlca                                          ; $57b0: $07
    ld bc, $2323                                  ; $57b1: $01 $23 $23
    rlca                                          ; $57b4: $07
    ld [bc], a                                    ; $57b5: $02
    db $e4                                        ; $57b6: $e4
    push hl                                       ; $57b7: $e5
    call nc, Call_000_3fdb                        ; $57b8: $d4 $db $3f
    jp hl                                         ; $57bb: $e9


    ret c                                         ; $57bc: $d8

    rst $18                                       ; $57bd: $df
    db $e4                                        ; $57be: $e4
    push hl                                       ; $57bf: $e5
    add hl, de                                    ; $57c0: $19
    ld a, [c]                                     ; $57c1: $f2
    ld a, a                                       ; $57c2: $7f
    pop af                                        ; $57c3: $f1
    dec [hl]                                      ; $57c4: $35
    ld a, [$0201]                                 ; $57c5: $fa $01 $02
    rlca                                          ; $57c8: $07
    add e                                         ; $57c9: $83
    ld [bc], a                                    ; $57ca: $02
    ld [bc], a                                    ; $57cb: $02
    rlca                                          ; $57cc: $07
    add e                                         ; $57cd: $83
    ld a, [bc]                                    ; $57ce: $0a
    add hl, bc                                    ; $57cf: $09
    rlca                                          ; $57d0: $07
    add e                                         ; $57d1: $83
    ld [bc], a                                    ; $57d2: $02
    ld bc, $8307                                  ; $57d3: $01 $07 $83

    db $d2, $d3, $39, $3a, $d6, $d7, $fb, $fc, $da, $db, $d4, $d5, $de, $df, $d8, $fd
    db $83, $83, $07, $01, $a3, $a3, $07, $01, $a3, $a3, $07, $02, $a3, $a3, $07, $01

    dec sp                                        ; $57f6: $3b
    inc a                                         ; $57f7: $3c
    add b                                         ; $57f8: $80
    add c                                         ; $57f9: $81
    ld [bc], a                                    ; $57fa: $02
    dec a                                         ; $57fb: $3d
    cpl                                           ; $57fc: $2f
    jr nc, jr_079_5805                            ; $57fd: $30 $06

    rlca                                          ; $57ff: $07
    db $e4                                        ; $5800: $e4
    push hl                                       ; $5801: $e5
    ld [$0a09], sp                                ; $5802: $08 $09 $0a

jr_079_5805:
    dec bc                                        ; $5805: $0b
    ld [bc], a                                    ; $5806: $02
    ld bc, $0909                                  ; $5807: $01 $09 $09
    ld [bc], a                                    ; $580a: $02
    ld bc, $0701                                  ; $580b: $01 $01 $07
    ld bc, $0102                                  ; $580e: $01 $02 $01
    rlca                                          ; $5811: $07
    ld bc, $0101                                  ; $5812: $01 $01 $01
    rlca                                          ; $5815: $07
    ld b, c                                       ; $5816: $41
    ld b, d                                       ; $5817: $42
    ld b, e                                       ; $5818: $43
    ld b, h                                       ; $5819: $44
    ld a, [c]                                     ; $581a: $f2
    or $d1                                        ; $581b: $f6 $d1
    pop de                                        ; $581d: $d1
    ld a, [$d1f9]                                 ; $581e: $fa $f9 $d1
    pop de                                        ; $5821: $d1
    db $d3                                        ; $5822: $d3
    jp nc, $d1d1                                  ; $5823: $d2 $d1 $d1

    add e                                         ; $5826: $83
    add e                                         ; $5827: $83
    add e                                         ; $5828: $83
    add e                                         ; $5829: $83
    add e                                         ; $582a: $83
    and e                                         ; $582b: $a3
    add e                                         ; $582c: $83
    add e                                         ; $582d: $83
    inc bc                                        ; $582e: $03
    inc hl                                        ; $582f: $23
    inc bc                                        ; $5830: $03
    inc bc                                        ; $5831: $03
    inc hl                                        ; $5832: $23
    inc hl                                        ; $5833: $23
    inc bc                                        ; $5834: $03
    inc bc                                        ; $5835: $03

    db $f6, $f2, $19, $1a, $f9, $fa, $35, $36, $d2, $d3, $39, $3a, $d6, $d7, $fb, $fc
    db $83, $a3, $07, $01, $83, $a3, $07, $01, $83, $83, $07, $01, $a3, $a3, $07, $02
    db $21, $22, $23, $24, $37, $26, $27, $28, $3b, $2a, $2b, $2c, $02, $3d, $2f, $30
    db $01, $01, $01, $07, $01, $02, $02, $07, $01, $02, $02, $07, $01, $01, $01, $07
    db $f2, $f3, $f4, $4f, $fa, $0c, $0d, $72, $d3, $0f, $10, $75, $d7, $12, $13, $78
    db $03, $03, $02, $03, $03, $03, $02, $03, $23, $03, $02, $03, $03, $03, $02, $03
    db $da, $db, $d4, $d5, $de, $df, $d8, $d9, $f6, $f2, $dc, $dd, $f9, $fa, $e0, $e1
    db $a3, $a3, $07, $02, $a3, $a3, $07, $01, $83, $a3, $07, $06, $83, $a3, $07, $06
    db $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed, $ee, $ef, $f0, $f1
    db $01, $01, $01, $07, $06, $06, $01, $07, $06, $06, $06, $07, $06, $06, $01, $01
    db $15, $16, $17, $7b, $31, $32, $33, $85, $19, $1a, $21, $40, $35, $36, $37, $38
    db $03, $03, $02, $03, $03, $03, $02, $0b, $05, $05, $05, $05, $07, $07, $07, $07
    db $d2, $d3, $f7, $f8, $d6, $d7, $fb, $fc, $da, $db, $d4, $d5, $de, $df, $d8, $fd
    db $83, $83, $07, $01, $a3, $a3, $07, $01, $a3, $a3, $07, $01, $a3, $a3, $07, $01
    db $fe, $ff, $00, $01, $02, $03, $04, $05, $06, $07, $41, $42, $08, $3e, $f2, $f6
    db $06, $06, $06, $01, $01, $01, $01, $01, $01, $01, $83, $83, $01, $07, $83, $a3
    db $39, $3a, $3b, $3c, $fb, $fc, $02, $3d, $43, $44, $43, $44, $d1, $d1, $d1, $d1
    db $01, $01, $01, $02, $01, $01, $02, $02, $83, $83, $83, $83, $83, $83, $83, $83

    ld b, l                                       ; $5956: $45
    ld b, [hl]                                    ; $5957: $46
    add [hl]                                      ; $5958: $86
    add a                                         ; $5959: $87
    pop de                                        ; $595a: $d1
    pop de                                        ; $595b: $d1
    pop de                                        ; $595c: $d1
    pop de                                        ; $595d: $d1
    pop de                                        ; $595e: $d1
    pop de                                        ; $595f: $d1
    pop de                                        ; $5960: $d1
    pop de                                        ; $5961: $d1
    pop de                                        ; $5962: $d1
    pop de                                        ; $5963: $d1
    pop de                                        ; $5964: $d1
    pop de                                        ; $5965: $d1
    add e                                         ; $5966: $83
    add e                                         ; $5967: $83
    adc e                                         ; $5968: $8b
    adc e                                         ; $5969: $8b
    add e                                         ; $596a: $83
    add e                                         ; $596b: $83
    add e                                         ; $596c: $83
    add e                                         ; $596d: $83
    inc bc                                        ; $596e: $03
    inc bc                                        ; $596f: $03
    inc bc                                        ; $5970: $03
    inc bc                                        ; $5971: $03
    inc bc                                        ; $5972: $03
    inc bc                                        ; $5973: $03
    inc bc                                        ; $5974: $03
    inc bc                                        ; $5975: $03
    adc b                                         ; $5976: $88
    adc c                                         ; $5977: $89
    ld b, e                                       ; $5978: $43
    ld b, h                                       ; $5979: $44
    pop de                                        ; $597a: $d1
    pop de                                        ; $597b: $d1
    pop de                                        ; $597c: $d1
    pop de                                        ; $597d: $d1
    pop de                                        ; $597e: $d1
    pop de                                        ; $597f: $d1
    pop de                                        ; $5980: $d1
    pop de                                        ; $5981: $d1
    pop de                                        ; $5982: $d1
    pop de                                        ; $5983: $d1
    pop de                                        ; $5984: $d1
    pop de                                        ; $5985: $d1
    adc e                                         ; $5986: $8b
    adc e                                         ; $5987: $8b
    add e                                         ; $5988: $83
    add e                                         ; $5989: $83
    add e                                         ; $598a: $83
    add e                                         ; $598b: $83
    add e                                         ; $598c: $83
    add e                                         ; $598d: $83
    inc bc                                        ; $598e: $03
    inc bc                                        ; $598f: $03
    inc bc                                        ; $5990: $03
    inc bc                                        ; $5991: $03
    inc bc                                        ; $5992: $03
    inc bc                                        ; $5993: $03
    inc bc                                        ; $5994: $03
    inc bc                                        ; $5995: $03

    db $f5, $f5, $4c, $4d, $0e, $67, $68, $70, $11, $6a, $6b, $73, $14, $6d, $6e, $76
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $4e, $8b, $f4, $4a, $71, $92, $13, $5c, $74, $95, $13, $5e, $77, $98, $13, $61
    db $03, $0b, $02, $02, $03, $0b, $02, $02, $03, $0b, $02, $04, $03, $0b, $02, $04
    db $4b, $4a, $f4, $8a, $5d, $5c, $13, $8e, $5f, $60, $13, $8f, $62, $63, $13, $90
    db $02, $22, $02, $0b, $02, $22, $02, $0b, $04, $04, $02, $0b, $04, $04, $02, $0b
    db $c7, $4f, $f5, $47, $c8, $72, $0e, $50, $c9, $75, $54, $53, $ca, $78, $57, $56
    db $0b, $03, $03, $03, $0b, $03, $03, $03, $0b, $03, $03, $03, $0b, $03, $03, $03
    db $18, $18, $6f, $79, $34, $34, $7c, $7d, $e4, $e5, $19, $1a, $7f, $f1, $35, $36
    db $03, $03, $03, $03, $03, $03, $03, $03, $0d, $0d, $05, $05, $07, $07, $07, $07
    db $7a, $9b, $13, $64, $7e, $af, $33, $82, $21, $40, $e4, $e5, $37, $38, $7f, $f1
    db $03, $0b, $02, $04, $03, $0b, $02, $0c, $05, $05, $0d, $0d, $07, $07, $07, $07
    db $65, $66, $13, $91, $83, $84, $33, $ae, $19, $1a, $21, $40, $35, $36, $37, $38
    db $04, $04, $02, $0b, $0c, $0c, $02, $0b, $05, $05, $05, $05, $07, $07, $07, $07
    db $d5, $7b, $18, $59, $d6, $85, $34, $7c, $e4, $e5, $19, $1a, $7f, $f1, $1b, $1c
    db $0b, $03, $03, $03, $0b, $0b, $03, $03, $0d, $0d, $05, $05, $07, $07, $07, $07
    db $80, $81, $39, $3a, $2f, $30, $fb, $fc, $45, $46, $86, $87, $d1, $d1, $d1, $d1
    db $0a, $0a, $02, $02, $02, $02, $02, $01, $83, $83, $8b, $8b, $83, $83, $83, $83
    db $3b, $3c, $80, $81, $02, $3d, $2f, $30, $88, $89, $43, $44, $d1, $d1, $d1, $d1
    db $02, $02, $09, $09, $01, $01, $02, $02, $8b, $8b, $83, $83, $83, $83, $83, $83
    db $39, $3a, $3b, $3c, $fb, $fc, $02, $3d, $45, $46, $86, $87, $d1, $d1, $d1, $d1
    db $01, $02, $02, $02, $02, $02, $01, $01, $83, $83, $8b, $8b, $83, $83, $83, $83
    db $80, $81, $1d, $1e, $2f, $30, $1f, $20, $88, $89, $42, $41, $d1, $d1, $da, $db
    db $0a, $09, $01, $01, $01, $01, $01, $01, $8b, $8b, $a3, $a3, $83, $83, $a3, $a3

    and $e7                                       ; $5b16: $e6 $e7
    pop de                                        ; $5b18: $d1
    pop de                                        ; $5b19: $d1
    pop de                                        ; $5b1a: $d1
    pop de                                        ; $5b1b: $d1
    pop de                                        ; $5b1c: $d1
    pop de                                        ; $5b1d: $d1
    pop de                                        ; $5b1e: $d1
    pop de                                        ; $5b1f: $d1
    pop de                                        ; $5b20: $d1
    pop de                                        ; $5b21: $d1
    pop de                                        ; $5b22: $d1
    pop de                                        ; $5b23: $d1
    pop de                                        ; $5b24: $d1
    pop de                                        ; $5b25: $d1
    adc e                                         ; $5b26: $8b
    adc e                                         ; $5b27: $8b
    inc bc                                        ; $5b28: $03
    inc bc                                        ; $5b29: $03
    add e                                         ; $5b2a: $83
    add e                                         ; $5b2b: $83
    inc bc                                        ; $5b2c: $03
    inc bc                                        ; $5b2d: $03
    inc bc                                        ; $5b2e: $03
    inc bc                                        ; $5b2f: $03
    inc bc                                        ; $5b30: $03
    inc bc                                        ; $5b31: $03
    inc bc                                        ; $5b32: $03
    inc bc                                        ; $5b33: $03
    inc bc                                        ; $5b34: $03
    inc bc                                        ; $5b35: $03

    db $f4, $49, $8a, $8b, $13, $52, $8e, $92, $13, $55, $8f, $95, $13, $58, $90, $98
    db $02, $03, $0b, $0b, $02, $03, $0b, $0b, $02, $03, $0b, $0b, $02, $03, $0b, $0b
    db $bc, $d1, $d1, $d1, $bd, $be, $d1, $d1, $bf, $c0, $d1, $d1, $c1, $c2, $d1, $d1
    db $0b, $03, $03, $03, $0b, $0b, $03, $03, $0b, $0b, $03, $03, $0b, $0b, $03, $03
    db $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $c7, $4f, $f5, $f4, $c8, $72, $0e, $d7
    db $03, $03, $03, $03, $03, $03, $03, $03, $0b, $03, $03, $02, $0b, $03, $03, $0a
    db $13, $5b, $91, $9b, $33, $7e, $ae, $af, $21, $40, $e4, $e5, $25, $38, $7f, $f1
    db $02, $03, $0b, $0b, $02, $03, $0b, $0b, $05, $05, $0d, $0d, $07, $07, $07, $07
    db $c3, $c4, $d1, $d1, $c5, $c6, $d1, $d1, $f2, $f6, $d1, $d1, $fa, $f9, $d1, $d1
    db $0b, $0b, $03, $03, $0b, $0b, $03, $03, $03, $23, $03, $03, $03, $23, $03, $03
    db $c9, $75, $11, $d8, $ca, $78, $14, $d9, $d5, $7b, $18, $13, $d6, $85, $34, $33
    db $0b, $03, $03, $0a, $0b, $03, $03, $0a, $0b, $03, $03, $02, $0b, $0b, $03, $02
    db $29, $3c, $80, $81, $2d, $2e, $2f, $30, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9
    db $01, $02, $09, $0f, $01, $01, $02, $07, $01, $01, $01, $07, $07, $06, $01, $07
    db $d3, $d2, $d1, $d1, $d7, $d6, $d1, $d1, $db, $da, $d1, $d1, $df, $de, $d1, $d1
    db $a3, $a3, $03, $03, $83, $83, $03, $03, $83, $83, $03, $03, $83, $83, $03, $03
    db $3b, $3c, $80, $81, $02, $3d, $2f, $30, $06, $07, $e4, $e5, $08, $3e, $3f, $e9
    db $05, $05, $0d, $0d, $07, $07, $07, $07, $07, $01, $01, $01, $07, $01, $01, $01

    jp c, Jump_000_3bdb                           ; $5c56: $da $db $3b

    inc a                                         ; $5c59: $3c
    sbc $df                                       ; $5c5a: $de $df
    ld [bc], a                                    ; $5c5c: $02
    dec a                                         ; $5c5d: $3d
    or $f2                                        ; $5c5e: $f6 $f2
    ld [c], a                                     ; $5c60: $e2
    db $e3                                        ; $5c61: $e3
    ld sp, hl                                     ; $5c62: $f9
    ld a, [$e7e6]                                 ; $5c63: $fa $e6 $e7
    inc hl                                        ; $5c66: $23
    inc hl                                        ; $5c67: $23
    rlca                                          ; $5c68: $07
    ld bc, $2323                                  ; $5c69: $01 $23 $23
    rlca                                          ; $5c6c: $07
    ld bc, $2303                                  ; $5c6d: $01 $03 $23
    rlca                                          ; $5c70: $07
    ld bc, $2303                                  ; $5c71: $01 $03 $23
    rlca                                          ; $5c74: $07
    ld b, $80                                     ; $5c75: $06 $80
    add c                                         ; $5c77: $81

jr_079_5c78:
    add hl, sp                                    ; $5c78: $39
    db $d3                                        ; $5c79: $d3
    cpl                                           ; $5c7a: $2f
    jr nc, jr_079_5c78                            ; $5c7b: $30 $fb

    rst $10                                       ; $5c7d: $d7
    db $e4                                        ; $5c7e: $e4
    push hl                                       ; $5c7f: $e5
    call nc, $e8db                                ; $5c80: $d4 $db $e8
    jp hl                                         ; $5c83: $e9


    ret c                                         ; $5c84: $d8

    rst $18                                       ; $5c85: $df
    add hl, bc                                    ; $5c86: $09
    add hl, bc                                    ; $5c87: $09
    rlca                                          ; $5c88: $07
    and e                                         ; $5c89: $a3
    ld bc, $0702                                  ; $5c8a: $01 $02 $07
    add e                                         ; $5c8d: $83
    ld bc, $0702                                  ; $5c8e: $01 $02 $07
    add e                                         ; $5c91: $83
    ld bc, $0701                                  ; $5c92: $01 $01 $07
    add e                                         ; $5c95: $83
    jp nc, $ead3                                  ; $5c96: $d2 $d3 $ea

    db $eb                                        ; $5c99: $eb
    sub $d7                                       ; $5c9a: $d6 $d7
    xor $ef                                       ; $5c9c: $ee $ef
    di                                            ; $5c9e: $f3
    ld a, [c]                                     ; $5c9f: $f2
    cp $ff                                        ; $5ca0: $fe $ff
    inc c                                         ; $5ca2: $0c
    ld a, [$0302]                                 ; $5ca3: $fa $02 $03
    inc bc                                        ; $5ca6: $03
    inc bc                                        ; $5ca7: $03
    rlca                                          ; $5ca8: $07
    ld b, $23                                     ; $5ca9: $06 $23
    inc hl                                        ; $5cab: $23
    rlca                                          ; $5cac: $07
    ld b, $23                                     ; $5cad: $06 $23
    inc hl                                        ; $5caf: $23
    rlca                                          ; $5cb0: $07
    ld b, $23                                     ; $5cb1: $06 $23
    inc hl                                        ; $5cb3: $23
    rlca                                          ; $5cb4: $07
    ld bc, $edec                                  ; $5cb5: $01 $ec $ed
    add hl, de                                    ; $5cb8: $19
    ld a, [c]                                     ; $5cb9: $f2
    ldh a, [$f1]                                  ; $5cba: $f0 $f1
    dec [hl]                                      ; $5cbc: $35
    ld a, [$0100]                                 ; $5cbd: $fa $00 $01
    add hl, sp                                    ; $5cc0: $39
    db $d3                                        ; $5cc1: $d3
    inc b                                         ; $5cc2: $04
    dec b                                         ; $5cc3: $05
    ei                                            ; $5cc4: $fb
    rst $10                                       ; $5cc5: $d7
    ld b, $01                                     ; $5cc6: $06 $01
    rlca                                          ; $5cc8: $07
    add e                                         ; $5cc9: $83
    ld bc, $0701                                  ; $5cca: $01 $01 $07
    add e                                         ; $5ccd: $83
    ld b, $01                                     ; $5cce: $06 $01
    rlca                                          ; $5cd0: $07
    and e                                         ; $5cd1: $a3
    ld bc, $0701                                  ; $5cd2: $01 $01 $07
    add e                                         ; $5cd5: $83
    rrca                                          ; $5cd6: $0f
    db $d3                                        ; $5cd7: $d3
    ld b, $07                                     ; $5cd8: $06 $07
    ld [de], a                                    ; $5cda: $12
    rst $10                                       ; $5cdb: $d7
    ld [$163e], sp                                ; $5cdc: $08 $3e $16
    dec d                                         ; $5cdf: $15
    ld hl, $3240                                  ; $5ce0: $21 $40 $32
    ld sp, $3837                                  ; $5ce3: $31 $37 $38
    inc hl                                        ; $5ce6: $23
    inc bc                                        ; $5ce7: $03
    rlca                                          ; $5ce8: $07
    ld bc, $2323                                  ; $5ce9: $01 $23 $23
    rlca                                          ; $5cec: $07
    ld bc, $2323                                  ; $5ced: $01 $23 $23
    rlca                                          ; $5cf0: $07
    ld bc, $2323                                  ; $5cf1: $01 $23 $23
    rlca                                          ; $5cf4: $07
    ld bc, $e5e4                                  ; $5cf5: $01 $e4 $e5
    call nc, Call_000_3fdb                        ; $5cf8: $d4 $db $3f
    jp hl                                         ; $5cfb: $e9


    ret c                                         ; $5cfc: $d8

    rst $18                                       ; $5cfd: $df
    db $e4                                        ; $5cfe: $e4
    push hl                                       ; $5cff: $e5
    add hl, de                                    ; $5d00: $19
    ld a, [c]                                     ; $5d01: $f2
    ld a, a                                       ; $5d02: $7f
    pop af                                        ; $5d03: $f1
    dec [hl]                                      ; $5d04: $35
    ld a, [$0101]                                 ; $5d05: $fa $01 $01
    rlca                                          ; $5d08: $07
    add e                                         ; $5d09: $83
    ld bc, $0702                                  ; $5d0a: $01 $02 $07
    add e                                         ; $5d0d: $83
    ld a, [bc]                                    ; $5d0e: $0a
    ld a, [bc]                                    ; $5d0f: $0a
    rlca                                          ; $5d10: $07
    add e                                         ; $5d11: $83
    ld [bc], a                                    ; $5d12: $02
    ld bc, $8307                                  ; $5d13: $01 $07 $83
    add hl, sp                                    ; $5d16: $39
    ld a, [hl-]                                   ; $5d17: $3a
    dec sp                                        ; $5d18: $3b
    inc a                                         ; $5d19: $3c
    ei                                            ; $5d1a: $fb
    db $fc                                        ; $5d1b: $fc
    ld [bc], a                                    ; $5d1c: $02
    dec a                                         ; $5d1d: $3d
    call nc, Call_000_06d5                        ; $5d1e: $d4 $d5 $06
    rlca                                          ; $5d21: $07
    ret c                                         ; $5d22: $d8

    db $fd                                        ; $5d23: $fd
    ld [$053e], sp                                ; $5d24: $08 $3e $05
    dec b                                         ; $5d27: $05
    rlca                                          ; $5d28: $07
    ld bc, $0707                                  ; $5d29: $01 $07 $07
    ld bc, $0201                                  ; $5d2c: $01 $01 $02
    ld bc, $0101                                  ; $5d2f: $01 $01 $01
    ld bc, $0202                                  ; $5d32: $01 $02 $02
    ld bc, $8180                                  ; $5d35: $01 $80 $81

jr_079_5d38:
    add hl, sp                                    ; $5d38: $39
    db $d3                                        ; $5d39: $d3
    cpl                                           ; $5d3a: $2f
    jr nc, jr_079_5d38                            ; $5d3b: $30 $fb

    rst $10                                       ; $5d3d: $d7
    db $e4                                        ; $5d3e: $e4
    push hl                                       ; $5d3f: $e5
    call nc, Call_000_3fdb                        ; $5d40: $d4 $db $3f
    jp hl                                         ; $5d43: $e9


    ret c                                         ; $5d44: $d8

    add sp, $0a                                   ; $5d45: $e8 $0a
    add hl, bc                                    ; $5d47: $09
    rlca                                          ; $5d48: $07
    and e                                         ; $5d49: $a3
    ld bc, $0701                                  ; $5d4a: $01 $01 $07
    add e                                         ; $5d4d: $83
    ld bc, $0701                                  ; $5d4e: $01 $01 $07
    add e                                         ; $5d51: $83
    ld bc, $0702                                  ; $5d52: $01 $02 $07
    adc e                                         ; $5d55: $8b
    jp nc, $d1d1                                  ; $5d56: $d2 $d1 $d1

    pop de                                        ; $5d59: $d1
    sub $d1                                       ; $5d5a: $d6 $d1
    pop de                                        ; $5d5c: $d1
    pop de                                        ; $5d5d: $d1
    jp c, $d1d1                                   ; $5d5e: $da $d1 $d1

    pop de                                        ; $5d61: $d1
    jp hl                                         ; $5d62: $e9


    pop de                                        ; $5d63: $d1
    pop de                                        ; $5d64: $d1
    pop de                                        ; $5d65: $d1
    and e                                         ; $5d66: $a3
    inc bc                                        ; $5d67: $03
    inc bc                                        ; $5d68: $03
    inc bc                                        ; $5d69: $03
    add e                                         ; $5d6a: $83
    inc bc                                        ; $5d6b: $03
    inc bc                                        ; $5d6c: $03
    inc bc                                        ; $5d6d: $03
    add e                                         ; $5d6e: $83
    inc bc                                        ; $5d6f: $03
    inc bc                                        ; $5d70: $03
    inc bc                                        ; $5d71: $03
    adc e                                         ; $5d72: $8b
    inc bc                                        ; $5d73: $03
    inc bc                                        ; $5d74: $03
    inc bc                                        ; $5d75: $03

    db $f6, $f2, $19, $1a, $f9, $fa, $35, $36, $d2, $d3, $39, $3a, $d6, $d7, $fb, $fc
    db $83, $a3, $07, $02, $83, $a3, $07, $02, $83, $83, $07, $02, $a3, $a3, $07, $02
    db $21, $40, $fa, $f9, $37, $38, $f2, $f3, $3b, $3c, $fa, $0c, $02, $3d, $d3, $0f
    db $01, $07, $03, $23, $01, $07, $03, $03, $01, $07, $03, $03, $02, $07, $23, $03
    db $d1, $d1, $d1, $d1, $f4, $4a, $4b, $4a, $13, $5c, $5d, $5c, $13, $5e, $5f, $60
    db $03, $03, $03, $03, $02, $02, $02, $22, $02, $02, $02, $22, $02, $04, $04, $04
    db $da, $db, $d4, $d5, $de, $df, $d8, $fd, $f6, $f2, $19, $1a, $f9, $fa, $35, $36
    db $a3, $a3, $07, $01, $a3, $a3, $07, $01, $83, $a3, $07, $01, $83, $a3, $07, $02
    db $06, $07, $d7, $12, $08, $3e, $15, $16, $21, $40, $31, $32, $37, $38, $7f, $f1
    db $02, $07, $03, $03, $01, $07, $03, $03, $01, $07, $03, $03, $02, $07, $05, $05
    db $13, $61, $62, $63, $13, $64, $65, $66, $33, $82, $83, $84, $1b, $1c, $25, $38
    db $02, $04, $04, $04, $02, $04, $04, $04, $02, $0c, $0c, $0c, $05, $05, $05, $05
    db $3b, $3c, $80, $81, $02, $3d, $2f, $30, $06, $07, $e4, $e5, $08, $3e, $3f, $e9
    db $01, $01, $0f, $0f, $01, $01, $01, $01, $01, $02, $02, $02, $02, $02, $02, $01
    db $1d, $1e, $29, $3c, $1f, $20, $2d, $2e, $d4, $d5, $06, $07, $d8, $fd, $08, $3e
    db $07, $07, $07, $07, $02, $02, $01, $01, $02, $02, $01, $01, $01, $01, $01, $02
    db $e7, $e6, $88, $89, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1
    db $ab, $ab, $8b, $8b, $83, $83, $83, $83, $03, $03, $03, $03, $03, $03, $03, $03
    db $42, $41, $e4, $e5, $e7, $e6, $45, $46, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1
    db $a3, $a3, $0d, $0f, $ab, $ab, $83, $83, $03, $83, $83, $83, $03, $03, $03, $03
    db $19, $1a, $21, $40, $86, $87, $88, $89, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1
    db $01, $01, $01, $01, $8b, $8b, $8b, $8b, $83, $83, $83, $83, $03, $03, $03, $03
    db $d1, $d1, $d1, $d1, $f4, $c7, $4f, $f5, $13, $c8, $72, $0e, $13, $c9, $75, $54
    db $03, $03, $03, $03, $02, $0b, $03, $03, $02, $0b, $03, $03, $02, $0b, $03, $03
    db $d1, $d1, $d1, $d1, $47, $48, $f4, $8a, $50, $51, $d7, $8e, $53, $69, $d8, $ac
    db $03, $03, $03, $03, $03, $03, $02, $2b, $03, $03, $0a, $2b, $03, $03, $0a, $2b
    db $d1, $d1, $d1, $d1, $9f, $9e, $47, $f5, $a3, $a2, $a1, $a0, $a7, $a6, $a5, $a4
    db $03, $03, $03, $03, $2b, $2b, $23, $23, $2b, $2b, $2b, $2b, $2b, $2b, $2b, $2b
    db $d1, $d1, $de, $df, $bc, $d1, $f6, $f2, $bd, $be, $f9, $fa, $bf, $c0, $d2, $d3
    db $03, $03, $23, $23, $0b, $03, $03, $23, $0b, $0b, $03, $23, $0b, $0b, $03, $03
    db $13, $ca, $78, $57, $13, $d5, $7b, $18, $33, $d6, $85, $34, $7f, $f1, $35, $36
    db $02, $0b, $03, $03, $02, $0b, $03, $03, $02, $0b, $0b, $03, $05, $05, $05, $05
    db $56, $6c, $d9, $ad, $59, $5a, $13, $ba, $7c, $7d, $33, $bb, $37, $38, $7f, $f1
    db $03, $03, $0a, $2b, $03, $03, $02, $2b, $03, $03, $02, $2b, $05, $05, $05, $05
    db $ab, $aa, $a9, $a8, $b7, $b6, $b5, $b4, $b9, $b8, $7c, $34, $35, $36, $37, $38
    db $2b, $2b, $2b, $2b, $2b, $2b, $2b, $2b, $2b, $2b, $23, $23, $05, $05, $05, $05
    db $c1, $c2, $d6, $d7, $c3, $c4, $da, $db, $c5, $c6, $de, $df, $d7, $ea, $eb, $d7
    db $0b, $0b, $23, $23, $0b, $0b, $23, $23, $0b, $0b, $23, $23, $03, $0b, $0b, $23
    db $80, $81, $39, $3a, $2f, $30, $fb, $fc, $e4, $e5, $ec, $ed, $3f, $e9, $ee, $ef
    db $0f, $0f, $07, $07, $01, $02, $02, $01, $02, $02, $09, $09, $02, $02, $0a, $09
    db $3b, $3c, $80, $81, $02, $3d, $2f, $30, $f0, $07, $e4, $e5, $f1, $3e, $3f, $e9
    db $07, $07, $0f, $0f, $01, $01, $02, $02, $09, $01, $01, $01, $09, $01, $01, $02
    db $39, $3a, $3b, $3c, $fb, $fc, $02, $3d, $d4, $d5, $06, $07, $d8, $fd, $08, $09
    db $07, $07, $07, $07, $02, $01, $01, $07, $02, $02, $01, $07, $01, $02, $01, $01
    db $15, $f2, $f3, $f4, $31, $f5, $f6, $f7, $e4, $e5, $d4, $d5, $0a, $0b, $d8, $fd
    db $03, $0b, $0b, $0b, $03, $0b, $0b, $0b, $05, $05, $05, $05, $07, $07, $07, $07
    db $e4, $e5, $f8, $f9, $42, $41, $35, $36, $e7, $e6, $45, $46, $d1, $d1, $d1, $d1
    db $09, $09, $0a, $0a, $a3, $a3, $05, $07, $ab, $ab, $83, $83, $03, $83, $83, $83
    db $fa, $40, $e4, $e5, $37, $38, $7f, $f1, $86, $87, $88, $89, $d1, $d1, $d1, $d1
    db $09, $01, $0a, $09, $01, $02, $01, $01, $8b, $8b, $8b, $8b, $83, $83, $83, $83
    db $19, $1a, $21, $22, $35, $36, $37, $26, $42, $41, $3b, $2a, $f6, $f2, $02, $3d
    db $01, $02, $02, $02, $01, $01, $01, $02, $a3, $a3, $01, $01, $83, $a3, $07, $01
    db $23, $24, $19, $1a, $27, $28, $35, $36, $2b, $2c, $39, $3a, $2f, $30, $fb, $fc
    db $02, $01, $01, $02, $02, $02, $02, $01, $02, $01, $01, $01, $02, $01, $01, $07
    db $ea, $eb, $ec, $ed, $ee, $ef, $f0, $f1, $fe, $ff, $00, $01, $02, $03, $04, $05
    db $07, $06, $06, $07, $07, $06, $01, $07, $07, $06, $06, $07, $07, $01, $01, $07
    db $f2, $f6, $d1, $d1, $fa, $f9, $d1, $d1, $f2, $f3, $c7, $f4, $fa, $0c, $c8, $13
    db $03, $23, $03, $03, $03, $23, $03, $03, $03, $03, $0b, $02, $03, $03, $0b, $02
    db $d1, $d1, $e7, $e6, $d1, $d1, $d1, $d1, $4a, $4b, $4a, $f4, $5c, $5d, $5c, $13
    db $03, $03, $ab, $ab, $03, $03, $83, $83, $02, $02, $22, $02, $02, $02, $22, $02
    db $43, $44, $45, $46, $d1, $d1, $d1, $d1, $48, $49, $8a, $f4, $51, $52, $8e, $0d
    db $83, $83, $83, $83, $83, $83, $83, $83, $03, $03, $0b, $02, $03, $03, $0b, $02
    db $06, $07, $e4, $e5, $08, $3e, $3f, $e9, $21, $40, $e4, $e5, $37, $38, $7f, $f1
    db $07, $02, $02, $07, $07, $02, $01, $07, $07, $02, $0a, $0f, $07, $02, $02, $07
    db $d3, $0f, $c9, $13, $d7, $12, $ca, $13, $15, $16, $d5, $13, $31, $32, $d6, $33
    db $23, $03, $0b, $02, $03, $03, $0b, $02, $03, $03, $0b, $02, $03, $03, $0b, $02
    db $5e, $5f, $60, $13, $61, $62, $63, $13, $64, $65, $66, $13, $82, $83, $84, $33
    db $04, $04, $04, $02, $04, $04, $04, $02, $04, $04, $04, $02, $0c, $0c, $0c, $02
    db $69, $55, $8f, $10, $6c, $58, $90, $13, $5a, $5b, $91, $17, $7d, $7e, $ae, $33
    db $03, $03, $0b, $02, $03, $03, $0b, $02, $03, $03, $0b, $02, $03, $03, $0b, $02
    db $3b, $3c, $80, $81, $02, $3d, $2f, $30, $06, $07, $e4, $e5, $08, $3e, $3f, $e9
    db $07, $01, $0a, $0f, $07, $01, $02, $01, $07, $02, $01, $01, $01, $02, $01, $01
    db $39, $3a, $3b, $3c, $fb, $fc, $02, $3d, $d4, $d5, $e2, $e3, $d8, $d9, $e6, $e7
    db $05, $05, $05, $05, $07, $07, $07, $07, $02, $02, $01, $01, $02, $01, $06, $06
    db $80, $81, $39, $3a, $2f, $30, $fb, $fc, $e4, $e5, $d4, $d5, $e8, $e9, $d8, $fd
    db $0d, $0d, $05, $05, $07, $07, $07, $07, $02, $02, $01, $01, $01, $01, $02, $02
    db $3b, $3c, $80, $81, $02, $3d, $2f, $30, $06, $07, $e4, $e5, $08, $3e, $3f, $e9
    db $05, $05, $0d, $0d, $07, $07, $07, $07, $01, $02, $01, $01, $01, $02, $01, $01
    db $21, $40, $e4, $e5, $37, $38, $7f, $f1, $41, $42, $43, $44, $fa, $f9, $d1, $d1
    db $01, $02, $0a, $0a, $01, $02, $01, $01, $83, $83, $83, $83, $83, $a3, $83, $83
    db $dc, $dd, $ea, $eb, $e0, $e1, $ee, $ef, $45, $46, $86, $87, $d1, $d1, $d1, $d1
    db $02, $06, $06, $06, $02, $06, $06, $06, $83, $83, $8b, $8b, $83, $83, $83, $83
    db $ec, $ed, $19, $1a, $f0, $f1, $35, $36, $88, $89, $43, $44, $d1, $d1, $d1, $d1
    db $06, $02, $01, $01, $01, $01, $01, $02, $8b, $8b, $83, $83, $83, $83, $83, $83
    db $21, $40, $e4, $e5, $37, $38, $7f, $f1, $45, $46, $86, $87, $d1, $d1, $d1, $d1
    db $01, $01, $0a, $09, $01, $01, $01, $02, $83, $83, $8b, $8b, $83, $83, $83, $83

    ld b, d                                       ; $62d6: $42
    ld b, c                                       ; $62d7: $41
    ld hl, $f640                                  ; $62d8: $21 $40 $f6
    ld a, [c]                                     ; $62db: $f2
    scf                                           ; $62dc: $37
    jr c, @-$0b                                   ; $62dd: $38 $f3

    ld a, [c]                                     ; $62df: $f2
    dec sp                                        ; $62e0: $3b
    inc a                                         ; $62e1: $3c
    inc c                                         ; $62e2: $0c
    ld a, [$3d02]                                 ; $62e3: $fa $02 $3d
    and e                                         ; $62e6: $a3
    and e                                         ; $62e7: $a3
    ld bc, $8301                                  ; $62e8: $01 $01 $83
    and e                                         ; $62eb: $a3
    rlca                                          ; $62ec: $07
    ld [bc], a                                    ; $62ed: $02
    inc hl                                        ; $62ee: $23
    inc hl                                        ; $62ef: $23
    rlca                                          ; $62f0: $07
    ld bc, $2323                                  ; $62f1: $01 $23 $23
    rlca                                          ; $62f4: $07
    ld bc, $e5e4                                  ; $62f5: $01 $e4 $e5
    ei                                            ; $62f8: $fb
    db $fc                                        ; $62f9: $fc
    ld a, a                                       ; $62fa: $7f
    pop af                                        ; $62fb: $f1
    rst $18                                       ; $62fc: $df
    sbc $80                                       ; $62fd: $de $80

jr_079_62ff:
    add c                                         ; $62ff: $81
    ld a, [c]                                     ; $6300: $f2
    or $2f                                        ; $6301: $f6 $2f
    jr nc, jr_079_62ff                            ; $6303: $30 $fa

    ld sp, hl                                     ; $6305: $f9
    ld a, [bc]                                    ; $6306: $0a
    add hl, bc                                    ; $6307: $09
    adc e                                         ; $6308: $8b
    adc e                                         ; $6309: $8b
    ld [bc], a                                    ; $630a: $02
    rlca                                          ; $630b: $07
    add e                                         ; $630c: $83
    add e                                         ; $630d: $83
    add hl, bc                                    ; $630e: $09
    rrca                                          ; $630f: $0f
    add e                                         ; $6310: $83
    and e                                         ; $6311: $a3
    ld bc, $8307                                  ; $6312: $01 $07 $83
    and e                                         ; $6315: $a3
    db $fd                                        ; $6316: $fd
    pop de                                        ; $6317: $d1
    pop de                                        ; $6318: $d1
    pop de                                        ; $6319: $d1
    pop de                                        ; $631a: $d1
    pop de                                        ; $631b: $d1
    pop de                                        ; $631c: $d1
    pop de                                        ; $631d: $d1
    pop de                                        ; $631e: $d1
    pop de                                        ; $631f: $d1
    pop de                                        ; $6320: $d1
    pop de                                        ; $6321: $d1
    pop de                                        ; $6322: $d1
    pop de                                        ; $6323: $d1
    pop de                                        ; $6324: $d1
    pop de                                        ; $6325: $d1
    dec bc                                        ; $6326: $0b
    inc bc                                        ; $6327: $03
    inc bc                                        ; $6328: $03
    inc bc                                        ; $6329: $03
    inc bc                                        ; $632a: $03
    inc bc                                        ; $632b: $03
    inc bc                                        ; $632c: $03
    inc bc                                        ; $632d: $03
    inc bc                                        ; $632e: $03
    inc bc                                        ; $632f: $03
    inc bc                                        ; $6330: $03
    inc bc                                        ; $6331: $03
    inc bc                                        ; $6332: $03
    inc bc                                        ; $6333: $03
    inc bc                                        ; $6334: $03
    inc bc                                        ; $6335: $03
    rrca                                          ; $6336: $0f
    db $d3                                        ; $6337: $d3
    ld b, $07                                     ; $6338: $06 $07
    ld [de], a                                    ; $633a: $12
    rst $10                                       ; $633b: $d7
    ld [$1609], sp                                ; $633c: $08 $09 $16
    dec d                                         ; $633f: $15
    ld hl, $3222                                  ; $6340: $21 $22 $32
    ld sp, $2637                                  ; $6343: $31 $37 $26
    inc hl                                        ; $6346: $23

jr_079_6347:
    inc bc                                        ; $6347: $03
    rlca                                          ; $6348: $07
    ld bc, $2323                                  ; $6349: $01 $23 $23
    rlca                                          ; $634c: $07
    ld bc, $2323                                  ; $634d: $01 $23 $23
    rlca                                          ; $6350: $07
    ld bc, $2323                                  ; $6351: $01 $23 $23
    rlca                                          ; $6354: $07
    ld [bc], a                                    ; $6355: $02
    db $e4                                        ; $6356: $e4
    push hl                                       ; $6357: $e5
    db $d3                                        ; $6358: $d3
    jp nc, Jump_000_0b0a                          ; $6359: $d2 $0a $0b

    rst $10                                       ; $635c: $d7
    sub $23                                       ; $635d: $d6 $23
    inc h                                         ; $635f: $24
    db $db                                        ; $6360: $db
    jp c, $2827                                   ; $6361: $da $27 $28

    rst $18                                       ; $6364: $df
    sbc $01                                       ; $6365: $de $01
    rlca                                          ; $6367: $07
    and e                                         ; $6368: $a3
    and e                                         ; $6369: $a3
    ld [bc], a                                    ; $636a: $02
    rlca                                          ; $636b: $07
    add e                                         ; $636c: $83
    add e                                         ; $636d: $83
    ld [bc], a                                    ; $636e: $02
    rlca                                          ; $636f: $07
    add e                                         ; $6370: $83
    add e                                         ; $6371: $83
    ld [bc], a                                    ; $6372: $02
    rlca                                          ; $6373: $07
    add e                                         ; $6374: $83
    add e                                         ; $6375: $83
    add hl, sp                                    ; $6376: $39
    ld a, [hl-]                                   ; $6377: $3a
    dec sp                                        ; $6378: $3b
    ld a, [hl+]                                   ; $6379: $2a
    ei                                            ; $637a: $fb
    db $fc                                        ; $637b: $fc
    ld [bc], a                                    ; $637c: $02
    dec a                                         ; $637d: $3d
    db $ec                                        ; $637e: $ec
    db $ed                                        ; $637f: $ed
    ldh a, [rTAC]                                 ; $6380: $f0 $07
    xor $ef                                       ; $6382: $ee $ef
    pop af                                        ; $6384: $f1
    ld a, $05                                     ; $6385: $3e $05
    dec b                                         ; $6387: $05
    rlca                                          ; $6388: $07
    ld bc, $0707                                  ; $6389: $01 $07 $07
    ld bc, $0901                                  ; $638c: $01 $01 $09
    add hl, bc                                    ; $638f: $09
    add hl, bc                                    ; $6390: $09
    ld bc, $0a09                                  ; $6391: $01 $09 $0a
    ld a, [bc]                                    ; $6394: $0a
    ld [bc], a                                    ; $6395: $02
    dec hl                                        ; $6396: $2b

jr_079_6397:
    inc l                                         ; $6397: $2c
    ld a, [c]                                     ; $6398: $f2
    or $2f                                        ; $6399: $f6 $2f
    jr nc, jr_079_6397                            ; $639b: $30 $fa

    ld sp, hl                                     ; $639d: $f9
    db $e4                                        ; $639e: $e4
    push hl                                       ; $639f: $e5
    db $d3                                        ; $63a0: $d3
    jp nc, $e93f                                  ; $63a1: $d2 $3f $e9

    rst $10                                       ; $63a4: $d7
    sub $02                                       ; $63a5: $d6 $02
    rlca                                          ; $63a7: $07
    add e                                         ; $63a8: $83
    and e                                         ; $63a9: $a3
    ld bc, $8307                                  ; $63aa: $01 $07 $83
    and e                                         ; $63ad: $a3
    ld bc, $a307                                  ; $63ae: $01 $07 $a3
    and e                                         ; $63b1: $a3
    ld bc, $8307                                  ; $63b2: $01 $07 $83
    add e                                         ; $63b5: $83
    ld hl, sp-$07                                 ; $63b6: $f8 $f9
    ld a, [$3540]                                 ; $63b8: $fa $40 $35
    ld [hl], $37                                  ; $63bb: $36 $37
    jr c, jr_079_6347                             ; $63bd: $38 $88

    adc c                                         ; $63bf: $89
    ld b, e                                       ; $63c0: $43
    ld b, h                                       ; $63c1: $44
    pop de                                        ; $63c2: $d1
    pop de                                        ; $63c3: $d1
    pop de                                        ; $63c4: $d1
    pop de                                        ; $63c5: $d1
    add hl, bc                                    ; $63c6: $09
    add hl, bc                                    ; $63c7: $09
    ld a, [bc]                                    ; $63c8: $0a
    ld bc, $0102                                  ; $63c9: $01 $02 $01
    ld bc, $8b01                                  ; $63cc: $01 $01 $8b
    adc e                                         ; $63cf: $8b
    add e                                         ; $63d0: $83
    add e                                         ; $63d1: $83
    add e                                         ; $63d2: $83
    add e                                         ; $63d3: $83
    add e                                         ; $63d4: $83
    add e                                         ; $63d5: $83
    db $e4                                        ; $63d6: $e4
    push hl                                       ; $63d7: $e5
    db $db                                        ; $63d8: $db
    jp c, $f17f                                   ; $63d9: $da $7f $f1

    rst $18                                       ; $63dc: $df
    sbc $45                                       ; $63dd: $de $45
    ld b, [hl]                                    ; $63df: $46
    and $e7                                       ; $63e0: $e6 $e7
    pop de                                        ; $63e2: $d1
    pop de                                        ; $63e3: $d1
    pop de                                        ; $63e4: $d1
    pop de                                        ; $63e5: $d1
    add hl, bc                                    ; $63e6: $09
    rrca                                          ; $63e7: $0f
    add e                                         ; $63e8: $83
    add e                                         ; $63e9: $83
    ld bc, $8307                                  ; $63ea: $01 $07 $83
    add e                                         ; $63ed: $83
    add e                                         ; $63ee: $83
    add e                                         ; $63ef: $83
    adc e                                         ; $63f0: $8b
    adc e                                         ; $63f1: $8b
    add e                                         ; $63f2: $83
    add e                                         ; $63f3: $83
    add e                                         ; $63f4: $83
    add e                                         ; $63f5: $83

    db $f9, $fa, $06, $07, $d2, $d3, $08, $3e, $d6, $d7, $21, $40, $da, $db, $37, $fe
    db $83, $a3, $07, $01, $83, $83, $07, $01, $a3, $a3, $07, $02, $a3, $a3, $07, $09
    db $e4, $e5, $d4, $d5, $3f, $e9, $d8, $fd, $e4, $e5, $19, $1a, $ff, $00, $01, $36
    db $01, $02, $01, $07, $01, $02, $02, $07, $0a, $09, $01, $07, $09, $09, $09, $07

    dec b                                         ; $6436: $05
    nop                                           ; $6437: $00
    ld h, $00                                     ; $6438: $26 $00
    ld b, b                                       ; $643a: $40
    dec d                                         ; $643b: $15
    sub c                                         ; $643c: $91
    sub d                                         ; $643d: $92
    sub e                                         ; $643e: $93
    sub h                                         ; $643f: $94
    sub l                                         ; $6440: $95
    sub [hl]                                      ; $6441: $96
    sub a                                         ; $6442: $97
    sbc b                                         ; $6443: $98
    sbc c                                         ; $6444: $99
    sbc d                                         ; $6445: $9a
    sbc e                                         ; $6446: $9b
    sbc h                                         ; $6447: $9c
    sbc l                                         ; $6448: $9d
    sbc [hl]                                      ; $6449: $9e
    sbc a                                         ; $644a: $9f
    and b                                         ; $644b: $a0
    dec b                                         ; $644c: $05
    dec b                                         ; $644d: $05
    dec b                                         ; $644e: $05
    dec b                                         ; $644f: $05
    dec b                                         ; $6450: $05
    dec b                                         ; $6451: $05
    dec b                                         ; $6452: $05
    dec b                                         ; $6453: $05
    dec b                                         ; $6454: $05
    dec b                                         ; $6455: $05
    dec b                                         ; $6456: $05
    dec b                                         ; $6457: $05
    dec b                                         ; $6458: $05
    dec b                                         ; $6459: $05
    dec b                                         ; $645a: $05
    dec b                                         ; $645b: $05
    sub d                                         ; $645c: $92
    sub c                                         ; $645d: $91
    and c                                         ; $645e: $a1
    and d                                         ; $645f: $a2
    and e                                         ; $6460: $a3
    and h                                         ; $6461: $a4
    and l                                         ; $6462: $a5
    and [hl]                                      ; $6463: $a6
    and a                                         ; $6464: $a7
    xor b                                         ; $6465: $a8
    xor c                                         ; $6466: $a9
    xor d                                         ; $6467: $aa
    xor e                                         ; $6468: $ab
    xor h                                         ; $6469: $ac

Call_079_646a:
    xor l                                         ; $646a: $ad
    xor [hl]                                      ; $646b: $ae
    dec b                                         ; $646c: $05
    dec b                                         ; $646d: $05
    dec b                                         ; $646e: $05
    dec b                                         ; $646f: $05
    dec b                                         ; $6470: $05
    dec b                                         ; $6471: $05
    dec b                                         ; $6472: $05
    dec b                                         ; $6473: $05
    dec b                                         ; $6474: $05
    dec b                                         ; $6475: $05
    dec b                                         ; $6476: $05
    dec b                                         ; $6477: $05
    dec b                                         ; $6478: $05
    dec b                                         ; $6479: $05
    dec b                                         ; $647a: $05
    dec b                                         ; $647b: $05
    xor a                                         ; $647c: $af
    or b                                          ; $647d: $b0
    or c                                          ; $647e: $b1
    or c                                          ; $647f: $b1
    or d                                          ; $6480: $b2
    or e                                          ; $6481: $b3
    or h                                          ; $6482: $b4
    or l                                          ; $6483: $b5
    or [hl]                                       ; $6484: $b6
    or a                                          ; $6485: $b7
    cp b                                          ; $6486: $b8
    cp c                                          ; $6487: $b9
    cp d                                          ; $6488: $ba
    cp e                                          ; $6489: $bb
    cp h                                          ; $648a: $bc
    cp l                                          ; $648b: $bd
    dec b                                         ; $648c: $05
    dec b                                         ; $648d: $05
    dec b                                         ; $648e: $05
    dec b                                         ; $648f: $05
    dec b                                         ; $6490: $05
    dec b                                         ; $6491: $05
    dec b                                         ; $6492: $05
    dec b                                         ; $6493: $05
    dec b                                         ; $6494: $05
    dec b                                         ; $6495: $05
    dec b                                         ; $6496: $05
    dec b                                         ; $6497: $05
    dec b                                         ; $6498: $05
    dec b                                         ; $6499: $05
    dec b                                         ; $649a: $05
    dec b                                         ; $649b: $05
    cp [hl]                                       ; $649c: $be
    cp a                                          ; $649d: $bf
    ret nz                                        ; $649e: $c0

    pop bc                                        ; $649f: $c1
    jp nz, $c4c3                                  ; $64a0: $c2 $c3 $c4

    push bc                                       ; $64a3: $c5
    add $c7                                       ; $64a4: $c6 $c7
    ret z                                         ; $64a6: $c8

    ret                                           ; $64a7: $c9


    jp z, $91cb                                   ; $64a8: $ca $cb $91

    call z, Call_000_0505                         ; $64ab: $cc $05 $05
    dec b                                         ; $64ae: $05
    dec b                                         ; $64af: $05
    dec b                                         ; $64b0: $05
    dec b                                         ; $64b1: $05
    dec b                                         ; $64b2: $05
    dec b                                         ; $64b3: $05
    dec b                                         ; $64b4: $05
    dec b                                         ; $64b5: $05
    dec b                                         ; $64b6: $05
    dec b                                         ; $64b7: $05
    dec b                                         ; $64b8: $05
    dec b                                         ; $64b9: $05
    dec b                                         ; $64ba: $05
    dec b                                         ; $64bb: $05
    call $cfce                                    ; $64bc: $cd $ce $cf
    ret nc                                        ; $64bf: $d0

    pop de                                        ; $64c0: $d1
    jp nc, $d3d3                                  ; $64c1: $d2 $d3 $d3

    call nc, $d6d5                                ; $64c4: $d4 $d5 $d6
    rst $10                                       ; $64c7: $d7
    ret c                                         ; $64c8: $d8

    reti                                          ; $64c9: $d9


    jp c, $05db                                   ; $64ca: $da $db $05

    rlca                                          ; $64cd: $07
    rlca                                          ; $64ce: $07
    rlca                                          ; $64cf: $07
    rlca                                          ; $64d0: $07
    rlca                                          ; $64d1: $07
    rlca                                          ; $64d2: $07
    rlca                                          ; $64d3: $07
    rlca                                          ; $64d4: $07
    rlca                                          ; $64d5: $07
    ld [bc], a                                    ; $64d6: $02
    ld [bc], a                                    ; $64d7: $02
    ld [bc], a                                    ; $64d8: $02
    ld [bc], a                                    ; $64d9: $02
    ld [bc], a                                    ; $64da: $02
    ld [bc], a                                    ; $64db: $02
    ret nc                                        ; $64dc: $d0

    rst $08                                       ; $64dd: $cf
    adc $dc                                       ; $64de: $ce $dc
    db $dd                                        ; $64e0: $dd
    sbc $df                                       ; $64e1: $de $df
    jp nc, $e1e0                                  ; $64e3: $d2 $e0 $e1

    ld [c], a                                     ; $64e6: $e2
    ld [c], a                                     ; $64e7: $e2
    db $e3                                        ; $64e8: $e3
    db $e4                                        ; $64e9: $e4
    push hl                                       ; $64ea: $e5
    and $07                                       ; $64eb: $e6 $07
    rlca                                          ; $64ed: $07
    rlca                                          ; $64ee: $07
    rlca                                          ; $64ef: $07
    rlca                                          ; $64f0: $07
    rlca                                          ; $64f1: $07
    rlca                                          ; $64f2: $07
    rlca                                          ; $64f3: $07
    ld [bc], a                                    ; $64f4: $02
    rlca                                          ; $64f5: $07
    rlca                                          ; $64f6: $07
    ld h, a                                       ; $64f7: $67
    ld [bc], a                                    ; $64f8: $02
    ld [bc], a                                    ; $64f9: $02
    ld [bc], a                                    ; $64fa: $02
    ld [bc], a                                    ; $64fb: $02
    rst $20                                       ; $64fc: $e7
    add sp, -$17                                  ; $64fd: $e8 $e9
    ld [$eceb], a                                 ; $64ff: $ea $eb $ec
    db $ed                                        ; $6502: $ed
    xor $ef                                       ; $6503: $ee $ef
    ldh a, [$e2]                                  ; $6505: $f0 $e2
    ld [c], a                                     ; $6507: $e2
    pop af                                        ; $6508: $f1
    ld a, [c]                                     ; $6509: $f2
    di                                            ; $650a: $f3
    pop af                                        ; $650b: $f1
    rlca                                          ; $650c: $07
    rlca                                          ; $650d: $07
    rlca                                          ; $650e: $07
    rlca                                          ; $650f: $07
    rlca                                          ; $6510: $07
    rlca                                          ; $6511: $07
    rlca                                          ; $6512: $07
    rlca                                          ; $6513: $07
    rlca                                          ; $6514: $07
    rlca                                          ; $6515: $07
    rlca                                          ; $6516: $07
    rlca                                          ; $6517: $07
    rlca                                          ; $6518: $07
    rlca                                          ; $6519: $07
    rlca                                          ; $651a: $07
    rlca                                          ; $651b: $07
    db $f4                                        ; $651c: $f4
    push af                                       ; $651d: $f5
    or $f7                                        ; $651e: $f6 $f7
    ld hl, sp-$07                                 ; $6520: $f8 $f9
    ld a, [$fcfb]                                 ; $6522: $fa $fb $fc
    db $fd                                        ; $6525: $fd
    cp $ff                                        ; $6526: $fe $ff
    nop                                           ; $6528: $00
    ld bc, $0302                                  ; $6529: $01 $02 $03
    dec b                                         ; $652c: $05
    dec b                                         ; $652d: $05
    dec b                                         ; $652e: $05
    dec b                                         ; $652f: $05
    rlca                                          ; $6530: $07
    rlca                                          ; $6531: $07
    rlca                                          ; $6532: $07
    rlca                                          ; $6533: $07
    rlca                                          ; $6534: $07
    rlca                                          ; $6535: $07
    rlca                                          ; $6536: $07
    rlca                                          ; $6537: $07
    rlca                                          ; $6538: $07
    rlca                                          ; $6539: $07
    ld bc, $0400                                  ; $653a: $01 $00 $04
    dec b                                         ; $653d: $05
    ld b, $07                                     ; $653e: $06 $07
    ld [$0904], sp                                ; $6540: $08 $04 $09
    ld a, [bc]                                    ; $6543: $0a
    ld [$0c0b], sp                                ; $6544: $08 $0b $0c
    dec c                                         ; $6547: $0d
    ld [$0e04], sp                                ; $6548: $08 $04 $0e
    rrca                                          ; $654b: $0f
    nop                                           ; $654c: $00
    nop                                           ; $654d: $00
    ld [bc], a                                    ; $654e: $02
    ld [bc], a                                    ; $654f: $02
    jr nz, jr_079_6552                            ; $6550: $20 $00

jr_079_6552:
    ld [bc], a                                    ; $6552: $02
    ld [bc], a                                    ; $6553: $02
    jr nz, jr_079_6576                            ; $6554: $20 $20

    ld [bc], a                                    ; $6556: $02
    ld [bc], a                                    ; $6557: $02
    jr nz, jr_079_655a                            ; $6558: $20 $00

jr_079_655a:
    ld [bc], a                                    ; $655a: $02
    ld [bc], a                                    ; $655b: $02
    db $10                                        ; $655c: $10
    ld de, $1312                                  ; $655d: $11 $12 $13
    inc d                                         ; $6560: $14
    dec d                                         ; $6561: $15
    ld d, $05                                     ; $6562: $16 $05
    rla                                           ; $6564: $17
    jr @+$1b                                      ; $6565: $18 $19

    ld [bc], a                                    ; $6567: $02
    ld a, [de]                                    ; $6568: $1a
    dec de                                        ; $6569: $1b
    inc e                                         ; $656a: $1c
    dec e                                         ; $656b: $1d
    ld [bc], a                                    ; $656c: $02
    ld b, c                                       ; $656d: $41
    nop                                           ; $656e: $00
    ld bc, $0202                                  ; $656f: $01 $02 $02
    ld [bc], a                                    ; $6572: $02
    ld hl, $0202                                  ; $6573: $21 $02 $02

jr_079_6576:
    ld [bc], a                                    ; $6576: $02
    ld h, c                                       ; $6577: $61
    ld [bc], a                                    ; $6578: $02
    ld [bc], a                                    ; $6579: $02
    ld [bc], a                                    ; $657a: $02
    ld h, c                                       ; $657b: $61
    ld e, $1d                                     ; $657c: $1e $1d
    rra                                           ; $657e: $1f
    jr nz, jr_079_65a2                            ; $657f: $20 $21

    ld [hl+], a                                   ; $6581: $22
    inc hl                                        ; $6582: $23
    ld e, $24                                     ; $6583: $1e $24
    dec h                                         ; $6585: $25
    ld h, $27                                     ; $6586: $26 $27
    jr z, @+$2b                                   ; $6588: $28 $29

    ld a, [hl+]                                   ; $658a: $2a
    ld a, [hl+]                                   ; $658b: $2a
    ld bc, $0101                                  ; $658c: $01 $01 $01
    ld bc, $0101                                  ; $658f: $01 $01 $01
    ld bc, $0161                                  ; $6592: $01 $61 $01
    ld bc, $0101                                  ; $6595: $01 $01 $01
    ld hl, $0101                                  ; $6598: $21 $01 $01
    ld b, c                                       ; $659b: $41
    dec hl                                        ; $659c: $2b
    dec b                                         ; $659d: $05
    inc l                                         ; $659e: $2c
    dec l                                         ; $659f: $2d
    ld l, $2f                                     ; $65a0: $2e $2f

jr_079_65a2:
    jr nc, @+$33                                  ; $65a2: $30 $31

    jr z, @+$1f                                   ; $65a4: $28 $1d

    ld [hl-], a                                   ; $65a6: $32
    ld hl, $0233                                  ; $65a7: $21 $33 $02
    inc [hl]                                      ; $65aa: $34
    ld [hl-], a                                   ; $65ab: $32
    nop                                           ; $65ac: $00
    nop                                           ; $65ad: $00
    ld bc, $0100                                  ; $65ae: $01 $00 $01
    ld bc, $0101                                  ; $65b1: $01 $01 $01
    ld bc, $0141                                  ; $65b4: $01 $41 $01
    ld h, b                                       ; $65b7: $60
    ld bc, $0001                                  ; $65b8: $01 $01 $00
    ld h, c                                       ; $65bb: $61
    ld [$350b], sp                                ; $65bc: $08 $0b $35
    ld a, [bc]                                    ; $65bf: $0a
    ld [hl], $37                                  ; $65c0: $36 $37
    jr c, jr_079_65d1                             ; $65c2: $38 $0d

    ld [$3905], sp                                ; $65c4: $08 $05 $39
    rrca                                          ; $65c7: $0f
    ld [$3a0b], sp                                ; $65c8: $08 $0b $3a
    rst $10                                       ; $65cb: $d7
    jr nz, @+$22                                  ; $65cc: $20 $20

    ld [bc], a                                    ; $65ce: $02
    ld [bc], a                                    ; $65cf: $02
    nop                                           ; $65d0: $00

jr_079_65d1:
    nop                                           ; $65d1: $00
    ld [bc], a                                    ; $65d2: $02
    ld [bc], a                                    ; $65d3: $02
    jr nz, jr_079_6616                            ; $65d4: $20 $40

    ld [bc], a                                    ; $65d6: $02
    ld [bc], a                                    ; $65d7: $02
    jr nz, jr_079_65fa                            ; $65d8: $20 $20

    ld [bc], a                                    ; $65da: $02
    ld [bc], a                                    ; $65db: $02
    inc d                                         ; $65dc: $14
    ld de, $2b30                                  ; $65dd: $11 $30 $2b
    rla                                           ; $65e0: $17
    dec d                                         ; $65e1: $15
    ld d, $2c                                     ; $65e2: $16 $2c
    ld a, [de]                                    ; $65e4: $1a
    jr @+$1b                                      ; $65e5: $18 $19

    dec sp                                        ; $65e7: $3b
    ldh [rNR31], a                                ; $65e8: $e0 $1b
    inc e                                         ; $65ea: $1c
    inc l                                         ; $65eb: $2c
    ld [bc], a                                    ; $65ec: $02
    ld bc, $2060                                  ; $65ed: $01 $60 $20
    ld [bc], a                                    ; $65f0: $02
    ld [bc], a                                    ; $65f1: $02
    ld [bc], a                                    ; $65f2: $02
    ld bc, $0202                                  ; $65f3: $01 $02 $02
    ld [bc], a                                    ; $65f6: $02
    ld bc, $0202                                  ; $65f7: $01 $02 $02

jr_079_65fa:
    ld [bc], a                                    ; $65fa: $02
    ld hl, $3d3c                                  ; $65fb: $21 $3c $3d
    add hl, hl                                    ; $65fe: $29
    ld a, $3d                                     ; $65ff: $3e $3d
    ccf                                           ; $6601: $3f
    ccf                                           ; $6602: $3f
    ld b, b                                       ; $6603: $40
    ld l, $2e                                     ; $6604: $2e $2e
    ld b, c                                       ; $6606: $41
    ld b, d                                       ; $6607: $42
    dec hl                                        ; $6608: $2b
    ld b, e                                       ; $6609: $43
    ld a, [hl+]                                   ; $660a: $2a
    ld a, [hl+]                                   ; $660b: $2a
    ld bc, $2101                                  ; $660c: $01 $01 $21
    ld bc, $0101                                  ; $660f: $01 $01 $01
    ld hl, $4101                                  ; $6612: $21 $01 $41
    ld b, c                                       ; $6615: $41

jr_079_6616:
    ld bc, $0101                                  ; $6616: $01 $01 $01
    ld bc, $0101                                  ; $6619: $01 $01 $01
    ld l, $05                                     ; $661c: $2e $05
    inc l                                         ; $661e: $2c
    dec l                                         ; $661f: $2d
    ld l, $2c                                     ; $6620: $2e $2c
    dec b                                         ; $6622: $05
    dec hl                                        ; $6623: $2b
    inc sp                                        ; $6624: $33
    inc [hl]                                      ; $6625: $34
    ld [bc], a                                    ; $6626: $02
    ld b, h                                       ; $6627: $44
    dec a                                         ; $6628: $3d
    dec e                                         ; $6629: $1d
    rra                                           ; $662a: $1f
    jr nz, @+$63                                  ; $662b: $20 $61

    ld b, c                                       ; $662d: $41
    ld b, b                                       ; $662e: $40
    ld b, b                                       ; $662f: $40
    ld h, c                                       ; $6630: $61
    jr nz, jr_079_6653                            ; $6631: $20 $20

    jr nz, jr_079_6636                            ; $6633: $20 $01

    ld h, c                                       ; $6635: $61

jr_079_6636:
    ld h, b                                       ; $6636: $60
    ld b, c                                       ; $6637: $41
    ld hl, $0101                                  ; $6638: $21 $01 $01
    nop                                           ; $663b: $00
    ld b, l                                       ; $663c: $45
    ld b, [hl]                                    ; $663d: $46
    ld b, a                                       ; $663e: $47
    ld c, b                                       ; $663f: $48
    ld c, c                                       ; $6640: $49
    ld c, d                                       ; $6641: $4a
    ld c, e                                       ; $6642: $4b
    ld c, h                                       ; $6643: $4c
    ld c, l                                       ; $6644: $4d
    ld c, [hl]                                    ; $6645: $4e
    ld c, a                                       ; $6646: $4f
    ld d, b                                       ; $6647: $50
    ld d, c                                       ; $6648: $51
    ld d, d                                       ; $6649: $52
    ld d, e                                       ; $664a: $53
    ld d, h                                       ; $664b: $54
    dec b                                         ; $664c: $05
    dec b                                         ; $664d: $05
    dec b                                         ; $664e: $05
    dec b                                         ; $664f: $05
    dec b                                         ; $6650: $05
    dec b                                         ; $6651: $05
    dec b                                         ; $6652: $05

jr_079_6653:
    dec b                                         ; $6653: $05
    dec b                                         ; $6654: $05
    dec b                                         ; $6655: $05
    dec b                                         ; $6656: $05
    dec b                                         ; $6657: $05
    dec b                                         ; $6658: $05
    dec b                                         ; $6659: $05
    dec b                                         ; $665a: $05
    dec b                                         ; $665b: $05
    ld d, l                                       ; $665c: $55
    ld d, [hl]                                    ; $665d: $56
    ld d, a                                       ; $665e: $57
    ld e, b                                       ; $665f: $58
    ld e, c                                       ; $6660: $59
    db $ed                                        ; $6661: $ed
    ld e, d                                       ; $6662: $5a
    ld e, c                                       ; $6663: $59
    ld e, e                                       ; $6664: $5b
    ld e, h                                       ; $6665: $5c
    ld e, l                                       ; $6666: $5d
    ld [c], a                                     ; $6667: $e2
    ld e, [hl]                                    ; $6668: $5e
    ld de, $0001                                  ; $6669: $11 $01 $00
    rlca                                          ; $666c: $07
    rlca                                          ; $666d: $07
    rlca                                          ; $666e: $07
    rlca                                          ; $666f: $07
    rlca                                          ; $6670: $07
    rlca                                          ; $6671: $07
    rlca                                          ; $6672: $07
    rlca                                          ; $6673: $07
    ld [bc], a                                    ; $6674: $02
    ld [bc], a                                    ; $6675: $02
    rlca                                          ; $6676: $07
    rlca                                          ; $6677: $07
    nop                                           ; $6678: $00
    nop                                           ; $6679: $00
    ld [hl+], a                                   ; $667a: $22
    ld [hl+], a                                   ; $667b: $22
    ld e, a                                       ; $667c: $5f
    ld de, $0804                                  ; $667d: $11 $04 $08
    inc bc                                        ; $6680: $03
    dec sp                                        ; $6681: $3b
    dec bc                                        ; $6682: $0b
    ld [$5e60], sp                                ; $6683: $08 $60 $5e
    inc b                                         ; $6686: $04
    ld [$3b03], sp                                ; $6687: $08 $03 $3b
    ld [bc], a                                    ; $668a: $02
    ld b, h                                       ; $668b: $44
    ld bc, $2040                                  ; $668c: $01 $40 $20
    nop                                           ; $668f: $00
    ld b, c                                       ; $6690: $41
    ld bc, $0000                                  ; $6691: $01 $00 $00
    nop                                           ; $6694: $00
    nop                                           ; $6695: $00
    ld h, b                                       ; $6696: $60
    ld b, b                                       ; $6697: $40
    nop                                           ; $6698: $00
    ld b, b                                       ; $6699: $40
    jr nz, jr_079_669c                            ; $669a: $20 $00

jr_079_669c:
    ld e, a                                       ; $669c: $5f
    ld de, $6105                                  ; $669d: $11 $05 $61
    ld h, d                                       ; $66a0: $62
    ld h, e                                       ; $66a1: $63
    ld h, h                                       ; $66a2: $64
    ld h, l                                       ; $66a3: $65
    inc a                                         ; $66a4: $3c
    ld h, [hl]                                    ; $66a5: $66
    ld h, a                                       ; $66a6: $67
    ld l, b                                       ; $66a7: $68
    ld l, c                                       ; $66a8: $69
    ld l, d                                       ; $66a9: $6a
    ld l, d                                       ; $66aa: $6a
    ld h, c                                       ; $66ab: $61
    ld b, b                                       ; $66ac: $40
    nop                                           ; $66ad: $00
    ld h, b                                       ; $66ae: $60
    nop                                           ; $66af: $00
    nop                                           ; $66b0: $00
    nop                                           ; $66b1: $00
    nop                                           ; $66b2: $00
    nop                                           ; $66b3: $00
    ld bc, $0000                                  ; $66b4: $01 $00 $00
    nop                                           ; $66b7: $00
    nop                                           ; $66b8: $00
    nop                                           ; $66b9: $00
    nop                                           ; $66ba: $00
    nop                                           ; $66bb: $00
    ld [hl], $37                                  ; $66bc: $36 $37
    ld l, e                                       ; $66be: $6b
    db $db                                        ; $66bf: $db
    ld [$6c0b], sp                                ; $66c0: $08 $0b $6c
    rlca                                          ; $66c3: $07
    ld l, l                                       ; $66c4: $6d
    ld l, [hl]                                    ; $66c5: $6e
    ld l, a                                       ; $66c6: $6f
    ld a, [bc]                                    ; $66c7: $0a
    ld h, c                                       ; $66c8: $61
    ld [hl], b                                    ; $66c9: $70
    inc c                                         ; $66ca: $0c
    dec c                                         ; $66cb: $0d
    nop                                           ; $66cc: $00
    nop                                           ; $66cd: $00
    ld [bc], a                                    ; $66ce: $02
    ld [bc], a                                    ; $66cf: $02
    ld h, b                                       ; $66d0: $60
    ld h, b                                       ; $66d1: $60
    ld [bc], a                                    ; $66d2: $02
    ld [bc], a                                    ; $66d3: $02
    nop                                           ; $66d4: $00
    nop                                           ; $66d5: $00
    ld [bc], a                                    ; $66d6: $02
    ld [bc], a                                    ; $66d7: $02
    jr nz, jr_079_66da                            ; $66d8: $20 $00

jr_079_66da:
    ld [bc], a                                    ; $66da: $02
    ld [bc], a                                    ; $66db: $02
    db $e3                                        ; $66dc: $e3
    ld [hl-], a                                   ; $66dd: $32
    ld h, [hl]                                    ; $66de: $66
    inc a                                         ; $66df: $3c
    db $10                                        ; $66e0: $10
    dec d                                         ; $66e1: $15
    ld d, $31                                     ; $66e2: $16 $31
    inc d                                         ; $66e4: $14
    jr jr_079_6700                                ; $66e5: $18 $19

    dec b                                         ; $66e7: $05
    rla                                           ; $66e8: $17
    dec de                                        ; $66e9: $1b
    inc e                                         ; $66ea: $1c
    ld [bc], a                                    ; $66eb: $02
    ld [bc], a                                    ; $66ec: $02
    ld b, c                                       ; $66ed: $41
    ld hl, $0221                                  ; $66ee: $21 $21 $02
    ld [bc], a                                    ; $66f1: $02
    ld [bc], a                                    ; $66f2: $02
    ld bc, $0202                                  ; $66f3: $01 $02 $02
    ld [bc], a                                    ; $66f6: $02
    jr nz, jr_079_66fb                            ; $66f7: $20 $02

    ld [bc], a                                    ; $66f9: $02
    ld [bc], a                                    ; $66fa: $02

jr_079_66fb:
    ld h, c                                       ; $66fb: $61
    ld b, h                                       ; $66fc: $44
    ld l, $29                                     ; $66fd: $2e $29
    ccf                                           ; $66ff: $3f

jr_079_6700:
    inc de                                        ; $6700: $13
    ld l, $3d                                     ; $6701: $2e $3d
    ld [hl], c                                    ; $6703: $71
    inc l                                         ; $6704: $2c
    dec a                                         ; $6705: $3d
    rra                                           ; $6706: $1f
    jr nz, @+$30                                  ; $6707: $20 $2e

    ld a, $2a                                     ; $6709: $3e $2a
    inc sp                                        ; $670b: $33
    ld h, c                                       ; $670c: $61
    ld b, c                                       ; $670d: $41
    ld hl, $6161                                  ; $670e: $21 $61 $61
    ld b, c                                       ; $6711: $41
    ld hl, $0101                                  ; $6712: $21 $01 $01
    ld bc, $0101                                  ; $6715: $01 $01 $01
    ld b, c                                       ; $6718: $41
    ld hl, $4101                                  ; $6719: $21 $01 $41
    ld l, $66                                     ; $671c: $2e $66
    ld [hl], d                                    ; $671e: $72
    ld [hl], e                                    ; $671f: $73
    ld [hl], h                                    ; $6720: $74
    ld h, e                                       ; $6721: $63
    ld [hl], l                                    ; $6722: $75
    halt                                          ; $6723: $76
    ld l, c                                       ; $6724: $69
    ld l, d                                       ; $6725: $6a
    ld e, [hl]                                    ; $6726: $5e
    ld [hl], a                                    ; $6727: $77
    ld a, b                                       ; $6728: $78
    dec e                                         ; $6729: $1d
    rra                                           ; $672a: $1f
    ld e, $61                                     ; $672b: $1e $61
    ld b, c                                       ; $672d: $41
    nop                                           ; $672e: $00
    ld bc, $4101                                  ; $672f: $01 $01 $41
    ld bc, $0101                                  ; $6732: $01 $01 $01
    ld bc, $0061                                  ; $6735: $01 $61 $00
    ld bc, $4041                                  ; $6738: $01 $41 $40
    ld b, c                                       ; $673b: $41
    ld b, h                                       ; $673c: $44
    ld [bc], a                                    ; $673d: $02
    ld a, c                                       ; $673e: $79
    rrca                                          ; $673f: $0f
    ld [$7a04], sp                                ; $6740: $08 $04 $7a
    ld a, e                                       ; $6743: $7b
    ld [$7c0b], sp                                ; $6744: $08 $0b $7c
    ld a, l                                       ; $6747: $7d
    ld [$5e04], sp                                ; $6748: $08 $04 $5e
    ld h, b                                       ; $674b: $60
    ld h, b                                       ; $674c: $60
    ld b, b                                       ; $674d: $40
    ld [bc], a                                    ; $674e: $02
    ld [bc], a                                    ; $674f: $02
    jr nz, jr_079_6752                            ; $6750: $20 $00

jr_079_6752:
    ld [bc], a                                    ; $6752: $02
    ld [bc], a                                    ; $6753: $02
    jr nz, jr_079_6776                            ; $6754: $20 $20

    ld [bc], a                                    ; $6756: $02
    ld [bc], a                                    ; $6757: $02
    ld h, b                                       ; $6758: $60
    ld b, b                                       ; $6759: $40
    jr nz, @+$22                                  ; $675a: $20 $20

    ld a, [de]                                    ; $675c: $1a
    ld l, d                                       ; $675d: $6a
    ld e, [hl]                                    ; $675e: $5e
    ld h, b                                       ; $675f: $60
    ld a, [hl]                                    ; $6760: $7e
    inc l                                         ; $6761: $2c
    dec b                                         ; $6762: $05
    dec hl                                        ; $6763: $2b
    ld a, a                                       ; $6764: $7f
    inc [hl]                                      ; $6765: $34
    ld [bc], a                                    ; $6766: $02
    inc l                                         ; $6767: $2c
    ld hl, $1280                                  ; $6768: $21 $80 $12
    ld a, b                                       ; $676b: $78
    ld [bc], a                                    ; $676c: $02
    ld b, b                                       ; $676d: $40
    ld hl, $0221                                  ; $676e: $21 $21 $02
    ld hl, $2020                                  ; $6771: $21 $20 $20
    ld [bc], a                                    ; $6774: $02
    ld h, c                                       ; $6775: $61

jr_079_6776:
    ld h, c                                       ; $6776: $61
    ld bc, $0940                                  ; $6777: $01 $40 $09
    ld b, b                                       ; $677a: $40
    ld hl, $402e                                  ; $677b: $21 $2e $40
    add hl, hl                                    ; $677e: $29
    jr z, jr_079_67be                             ; $677f: $28 $3d

    ccf                                           ; $6781: $3f
    dec a                                         ; $6782: $3d
    inc a                                         ; $6783: $3c
    add c                                         ; $6784: $81
    ld a, $3f                                     ; $6785: $3e $3f
    dec a                                         ; $6787: $3d
    inc sp                                        ; $6788: $33
    ld a, [hl+]                                   ; $6789: $2a
    dec a                                         ; $678a: $3d
    ld h, [hl]                                    ; $678b: $66
    ld b, c                                       ; $678c: $41
    ld hl, $0121                                  ; $678d: $21 $21 $01
    ld bc, $2101                                  ; $6790: $01 $01 $21
    ld hl, $0109                                  ; $6793: $21 $09 $01
    ld hl, $6121                                  ; $6796: $21 $21 $61
    ld hl, $2121                                  ; $6799: $21 $21 $21
    dec e                                         ; $679c: $1d
    dec e                                         ; $679d: $1d
    rra                                           ; $679e: $1f
    ld e, a                                       ; $679f: $5f
    add d                                         ; $67a0: $82
    ld [de], a                                    ; $67a1: $12
    ld de, $2c66                                  ; $67a2: $11 $66 $2c
    ld [bc], a                                    ; $67a5: $02
    dec sp                                        ; $67a6: $3b
    inc bc                                        ; $67a7: $03
    dec hl                                        ; $67a8: $2b
    dec b                                         ; $67a9: $05
    ld e, [hl]                                    ; $67aa: $5e
    ld h, b                                       ; $67ab: $60
    ld b, c                                       ; $67ac: $41
    ld b, c                                       ; $67ad: $41
    ld b, b                                       ; $67ae: $40
    ld b, b                                       ; $67af: $40
    ld [$6120], sp                                ; $67b0: $08 $20 $61
    jr nz, jr_079_67d6                            ; $67b3: $20 $21

    ld bc, $6121                                  ; $67b5: $01 $21 $61
    ld b, c                                       ; $67b8: $41
    ld b, b                                       ; $67b9: $40
    ld hl, $4421                                  ; $67ba: $21 $21 $44
    ld [bc], a                                    ; $67bd: $02

jr_079_67be:
    dec sp                                        ; $67be: $3b
    inc bc                                        ; $67bf: $03
    ld h, c                                       ; $67c0: $61
    dec b                                         ; $67c1: $05
    ld de, $655f                                  ; $67c2: $11 $5f $65
    ld h, h                                       ; $67c5: $64
    ld h, e                                       ; $67c6: $63
    ld h, d                                       ; $67c7: $62
    ld l, b                                       ; $67c8: $68
    ld h, a                                       ; $67c9: $67
    ld h, [hl]                                    ; $67ca: $66
    inc a                                         ; $67cb: $3c
    jr nz, jr_079_67ce                            ; $67cc: $20 $00

jr_079_67ce:
    ld h, b                                       ; $67ce: $60
    jr nz, jr_079_67f1                            ; $67cf: $20 $20

    ld b, b                                       ; $67d1: $40
    jr nz, jr_079_6834                            ; $67d2: $20 $60

    jr nz, jr_079_67f6                            ; $67d4: $20 $20

jr_079_67d6:
    jr nz, @+$22                                  ; $67d6: $20 $20

    jr nz, jr_079_67fa                            ; $67d8: $20 $20

    jr nz, @+$23                                  ; $67da: $20 $21

    ld [hl-], a                                   ; $67dc: $32
    inc [hl]                                      ; $67dd: $34
    ld [bc], a                                    ; $67de: $02
    dec e                                         ; $67df: $1d
    dec l                                         ; $67e0: $2d
    inc l                                         ; $67e1: $2c
    dec b                                         ; $67e2: $05
    dec hl                                        ; $67e3: $2b
    dec hl                                        ; $67e4: $2b
    dec b                                         ; $67e5: $05
    inc l                                         ; $67e6: $2c
    inc l                                         ; $67e7: $2c
    ld b, h                                       ; $67e8: $44
    ld [bc], a                                    ; $67e9: $02
    inc [hl]                                      ; $67ea: $34
    ld l, $61                                     ; $67eb: $2e $61
    jr nz, @+$23                                  ; $67ed: $20 $21

    ld h, c                                       ; $67ef: $61
    ld h, b                                       ; $67f0: $60

jr_079_67f1:
    ld h, b                                       ; $67f1: $60
    ld h, c                                       ; $67f2: $61
    jr nz, jr_079_67f5                            ; $67f3: $20 $00

jr_079_67f5:
    nop                                           ; $67f5: $00

jr_079_67f6:
    nop                                           ; $67f6: $00
    ld bc, $4061                                  ; $67f7: $01 $61 $40

jr_079_67fa:
    ld b, c                                       ; $67fa: $41
    ld b, c                                       ; $67fb: $41
    jr z, jr_079_6827                             ; $67fc: $28 $29

    ld l, $83                                     ; $67fe: $2e $83
    inc a                                         ; $6800: $3c
    dec a                                         ; $6801: $3d
    ld l, $66                                     ; $6802: $2e $66
    dec a                                         ; $6804: $3d
    ccf                                           ; $6805: $3f
    add c                                         ; $6806: $81
    ld a, $3e                                     ; $6807: $3e $3e
    ld b, c                                       ; $6809: $41
    add h                                         ; $680a: $84
    ccf                                           ; $680b: $3f
    ld hl, $6101                                  ; $680c: $21 $01 $61
    ld [$0101], sp                                ; $680f: $08 $01 $01
    ld h, c                                       ; $6812: $61
    ld hl, $0101                                  ; $6813: $21 $01 $01
    add hl, bc                                    ; $6816: $09
    ld bc, $2121                                  ; $6817: $01 $21 $21
    add hl, bc                                    ; $681a: $09
    ld hl, $7377                                  ; $681b: $21 $77 $73
    dec sp                                        ; $681e: $3b
    inc bc                                        ; $681f: $03
    ld hl, $5f60                                  ; $6820: $21 $60 $5f
    ld e, a                                       ; $6823: $5f
    add l                                         ; $6824: $85
    ld [hl], l                                    ; $6825: $75
    ld h, e                                       ; $6826: $63

jr_079_6827:
    ld h, d                                       ; $6827: $62
    dec a                                         ; $6828: $3d
    inc l                                         ; $6829: $2c
    ld h, [hl]                                    ; $682a: $66
    inc a                                         ; $682b: $3c
    nop                                           ; $682c: $00
    ld h, c                                       ; $682d: $61
    ld h, c                                       ; $682e: $61
    jr nz, jr_079_6892                            ; $682f: $20 $61

    ld bc, $6060                                  ; $6831: $01 $60 $60

jr_079_6834:
    ld l, c                                       ; $6834: $69
    ld h, b                                       ; $6835: $60
    ld hl, $2120                                  ; $6836: $21 $20 $21
    ld hl, $2121                                  ; $6839: $21 $21 $21
    ld h, b                                       ; $683c: $60
    ld e, [hl]                                    ; $683d: $5e
    ld l, d                                       ; $683e: $6a
    ld l, c                                       ; $683f: $69
    ld b, h                                       ; $6840: $44
    ld [bc], a                                    ; $6841: $02
    inc l                                         ; $6842: $2c
    inc a                                         ; $6843: $3c
    ld [$3404], sp                                ; $6844: $08 $04 $34
    ld l, c                                       ; $6847: $69
    ld [$800b], sp                                ; $6848: $08 $0b $80
    ld hl, $0000                                  ; $684b: $21 $00 $00
    ld h, b                                       ; $684e: $60
    ld h, b                                       ; $684f: $60
    ld h, b                                       ; $6850: $60
    ld b, b                                       ; $6851: $40
    nop                                           ; $6852: $00
    ld hl, $0020                                  ; $6853: $21 $20 $00
    ld b, b                                       ; $6856: $40
    jr nz, jr_079_6879                            ; $6857: $20 $20

    jr nz, jr_079_6883                            ; $6859: $20 $28

    jr nz, @+$22                                  ; $685b: $20 $20

    rra                                           ; $685d: $1f
    inc sp                                        ; $685e: $33
    ld l, $44                                     ; $685f: $2e $44
    ld [bc], a                                    ; $6861: $02
    ld l, $43                                     ; $6862: $2e $43
    jr nz, jr_079_6885                            ; $6864: $20 $1f

    ld l, $28                                     ; $6866: $2e $28
    ld h, b                                       ; $6868: $60
    ld e, [hl]                                    ; $6869: $5e
    cpl                                           ; $686a: $2f
    inc sp                                        ; $686b: $33
    ld h, c                                       ; $686c: $61
    ld h, b                                       ; $686d: $60
    ld hl, $6141                                  ; $686e: $21 $41 $61
    ld b, b                                       ; $6871: $40
    ld b, c                                       ; $6872: $41
    ld bc, $2120                                  ; $6873: $01 $20 $21
    ld b, c                                       ; $6876: $41
    ld h, c                                       ; $6877: $61
    ld b, c                                       ; $6878: $41

jr_079_6879:
    ld b, c                                       ; $6879: $41
    ld b, b                                       ; $687a: $40
    ld hl, $8640                                  ; $687b: $21 $40 $86
    ld a, $41                                     ; $687e: $3e $41
    ld b, d                                       ; $6880: $42
    add a                                         ; $6881: $87
    ccf                                           ; $6882: $3f

jr_079_6883:
    add [hl]                                      ; $6883: $86
    add hl, hl                                    ; $6884: $29

jr_079_6885:
    ccf                                           ; $6885: $3f
    adc b                                         ; $6886: $88
    adc c                                         ; $6887: $89
    ld a, [hl+]                                   ; $6888: $2a
    adc d                                         ; $6889: $8a
    add h                                         ; $688a: $84
    adc e                                         ; $688b: $8b
    ld hl, $0109                                  ; $688c: $21 $09 $01
    ld bc, $0921                                  ; $688f: $01 $21 $09

jr_079_6892:
    ld hl, $4129                                  ; $6892: $21 $29 $41
    ld hl, $0909                                  ; $6895: $21 $09 $09
    ld h, c                                       ; $6898: $61
    add hl, bc                                    ; $6899: $09
    add hl, hl                                    ; $689a: $29
    add hl, bc                                    ; $689b: $09
    ld a, $2e                                     ; $689c: $3e $2e
    adc h                                         ; $689e: $8c
    adc l                                         ; $689f: $8d
    ld b, b                                       ; $68a0: $40
    ld l, $8e                                     ; $68a1: $2e $8e
    adc a                                         ; $68a3: $8f
    sub b                                         ; $68a4: $90
    add c                                         ; $68a5: $81
    cpl                                           ; $68a6: $2f
    ld sp, $3086                                  ; $68a7: $31 $86 $30
    add b                                         ; $68aa: $80
    ld hl, $6101                                  ; $68ab: $21 $01 $61
    ld a, [bc]                                    ; $68ae: $0a
    rrca                                          ; $68af: $0f
    ld bc, $0a61                                  ; $68b0: $01 $61 $0a
    ld a, [bc]                                    ; $68b3: $0a
    add hl, bc                                    ; $68b4: $09
    add hl, bc                                    ; $68b5: $09
    ld b, b                                       ; $68b6: $40
    ld bc, $0169                                  ; $68b7: $01 $69 $01
    ld l, c                                       ; $68ba: $69
    ld h, b                                       ; $68bb: $60
    add l                                         ; $68bc: $85
    ld [hl-], a                                   ; $68bd: $32
    ld h, h                                       ; $68be: $64
    ld h, l                                       ; $68bf: $65
    cpl                                           ; $68c0: $2f
    jr nc, jr_079_692a                            ; $68c1: $30 $67

    ld l, b                                       ; $68c3: $68
    ld l, d                                       ; $68c4: $6a
    ld h, [hl]                                    ; $68c5: $66
    ld [hl], l                                    ; $68c6: $75
    ld h, l                                       ; $68c7: $65
    dec e                                         ; $68c8: $1d
    dec sp                                        ; $68c9: $3b
    dec bc                                        ; $68ca: $0b
    ld [$4008], sp                                ; $68cb: $08 $08 $40
    nop                                           ; $68ce: $00
    nop                                           ; $68cf: $00
    ld b, b                                       ; $68d0: $40
    ld b, c                                       ; $68d1: $41
    nop                                           ; $68d2: $00
    nop                                           ; $68d3: $00
    ld bc, $4020                                  ; $68d4: $01 $20 $40
    nop                                           ; $68d7: $00
    ld b, c                                       ; $68d8: $41
    ld h, c                                       ; $68d9: $61
    ld b, b                                       ; $68da: $40
    ld b, b                                       ; $68db: $40
    ld sp, $6e34                                  ; $68dc: $31 $34 $6e
    ld l, l                                       ; $68df: $6d
    inc [hl]                                      ; $68e0: $34
    ld h, e                                       ; $68e1: $63
    dec bc                                        ; $68e2: $0b
    ld [$765f], sp                                ; $68e3: $08 $5f $76
    ld l, [hl]                                    ; $68e6: $6e
    ld l, l                                       ; $68e7: $6d
    ld b, h                                       ; $68e8: $44
    ld [bc], a                                    ; $68e9: $02
    ld [hl], b                                    ; $68ea: $70
    ld h, c                                       ; $68eb: $61
    ld h, c                                       ; $68ec: $61
    ld hl, $2020                                  ; $68ed: $21 $20 $20
    ld b, b                                       ; $68f0: $40
    jr nz, jr_079_6933                            ; $68f1: $20 $40

    ld b, b                                       ; $68f3: $40
    ld h, b                                       ; $68f4: $60
    ld h, b                                       ; $68f5: $60
    jr nz, jr_079_6918                            ; $68f6: $20 $20

    ld h, c                                       ; $68f8: $61
    ld b, b                                       ; $68f9: $40
    jr nz, jr_079_68fc                            ; $68fa: $20 $00

jr_079_68fc:
    ld sp, $0234                                  ; $68fc: $31 $34 $02
    ld b, h                                       ; $68ff: $44
    dec l                                         ; $6900: $2d
    inc l                                         ; $6901: $2c
    inc b                                         ; $6902: $04
    ld [$052b], sp                                ; $6903: $08 $2b $05
    dec bc                                        ; $6906: $0b
    ld [$0244], sp                                ; $6907: $08 $44 $02
    scf                                           ; $690a: $37
    ld [hl], $61                                  ; $690b: $36 $61
    ld hl, $4060                                  ; $690d: $21 $60 $40
    ld h, b                                       ; $6910: $60
    ld h, c                                       ; $6911: $61
    jr nz, jr_079_6914                            ; $6912: $20 $00

jr_079_6914:
    nop                                           ; $6914: $00
    nop                                           ; $6915: $00
    nop                                           ; $6916: $00
    nop                                           ; $6917: $00

jr_079_6918:
    ld h, c                                       ; $6918: $61
    ld b, b                                       ; $6919: $40
    jr nz, jr_079_693c                            ; $691a: $20 $20

    jr nz, @+$21                                  ; $691c: $20 $1f

    dec b                                         ; $691e: $05
    ld [$115f], sp                                ; $691f: $08 $5f $11
    dec bc                                        ; $6922: $0b
    ld [$3b91], sp                                ; $6923: $08 $91 $3b
    scf                                           ; $6926: $37
    ld [hl], $60                                  ; $6927: $36 $60
    ld e, [hl]                                    ; $6929: $5e

jr_079_692a:
    inc b                                         ; $692a: $04
    ld [$6061], sp                                ; $692b: $08 $61 $60
    ld h, b                                       ; $692e: $60
    nop                                           ; $692f: $00
    ld bc, $0040                                  ; $6930: $01 $40 $00

jr_079_6933:
    nop                                           ; $6933: $00
    ld a, [bc]                                    ; $6934: $0a
    ld bc, $2020                                  ; $6935: $01 $20 $20
    nop                                           ; $6938: $00
    nop                                           ; $6939: $00

jr_079_693a:
    ld h, b                                       ; $693a: $60
    ld b, b                                       ; $693b: $40

jr_079_693c:
    ld [hl], $37                                  ; $693c: $36 $37
    inc [hl]                                      ; $693e: $34
    ld sp, $0508                                  ; $693f: $31 $08 $05
    inc l                                         ; $6942: $2c
    dec l                                         ; $6943: $2d
    ld [$050b], sp                                ; $6944: $08 $0b $05
    dec hl                                        ; $6947: $2b
    ld [hl], $37                                  ; $6948: $36 $37
    ld [bc], a                                    ; $694a: $02
    ld b, h                                       ; $694b: $44
    nop                                           ; $694c: $00
    nop                                           ; $694d: $00
    ld bc, $2041                                  ; $694e: $01 $41 $20
    ld b, b                                       ; $6951: $40
    ld b, c                                       ; $6952: $41
    ld b, b                                       ; $6953: $40
    jr nz, jr_079_6976                            ; $6954: $20 $20

    jr nz, @+$22                                  ; $6956: $20 $20

    nop                                           ; $6958: $00
    nop                                           ; $6959: $00
    ld h, b                                       ; $695a: $60
    ld b, c                                       ; $695b: $41
    inc bc                                        ; $695c: $03
    dec sp                                        ; $695d: $3b
    ld [hl-], a                                   ; $695e: $32
    ld l, $5f                                     ; $695f: $2e $5f
    ld de, $2e30                                  ; $6961: $11 $30 $2e
    ld h, d                                       ; $6964: $62
    ld h, e                                       ; $6965: $63
    inc a                                         ; $6966: $3c
    inc sp                                        ; $6967: $33
    inc a                                         ; $6968: $3c
    ld h, [hl]                                    ; $6969: $66
    inc sp                                        ; $696a: $33
    ld b, d                                       ; $696b: $42
    nop                                           ; $696c: $00
    ld b, c                                       ; $696d: $41
    ld h, c                                       ; $696e: $61
    ld b, c                                       ; $696f: $41
    ld b, b                                       ; $6970: $40
    ld bc, $4160                                  ; $6971: $01 $60 $41
    nop                                           ; $6974: $00
    nop                                           ; $6975: $00

jr_079_6976:
    ld hl, $0121                                  ; $6976: $21 $21 $01
    ld bc, $2121                                  ; $6979: $01 $21 $21
    ld a, $92                                     ; $697c: $3e $92
    add [hl]                                      ; $697e: $86
    ld a, [hl+]                                   ; $697f: $2a
    ld b, b                                       ; $6980: $40
    ld a, $87                                     ; $6981: $3e $87
    add hl, hl                                    ; $6983: $29
    ld b, d                                       ; $6984: $42
    ccf                                           ; $6985: $3f
    sub e                                         ; $6986: $93
    inc sp                                        ; $6987: $33
    ld a, [hl+]                                   ; $6988: $2a
    adc d                                         ; $6989: $8a
    add h                                         ; $698a: $84
    ld l, $21                                     ; $698b: $2e $21
    add hl, bc                                    ; $698d: $09
    add hl, bc                                    ; $698e: $09
    ld bc, $2121                                  ; $698f: $01 $21 $21
    add hl, bc                                    ; $6992: $09
    ld hl, $0121                                  ; $6993: $21 $21 $01
    add hl, bc                                    ; $6996: $09
    ld bc, $4921                                  ; $6997: $01 $21 $49
    ld l, c                                       ; $699a: $69
    ld h, c                                       ; $699b: $61
    inc sp                                        ; $699c: $33
    ld e, [hl]                                    ; $699d: $5e
    sub h                                         ; $699e: $94
    sub l                                         ; $699f: $95
    jr z, jr_079_69de                             ; $69a0: $28 $3c

    jr nc, jr_079_693a                            ; $69a2: $30 $96

    ld [hl], c                                    ; $69a4: $71
    ld hl, $2b28                                  ; $69a5: $21 $28 $2b
    sub a                                         ; $69a8: $97
    sbc b                                         ; $69a9: $98
    sbc c                                         ; $69aa: $99
    ld b, h                                       ; $69ab: $44
    ld b, c                                       ; $69ac: $41
    ld bc, $0808                                  ; $69ad: $01 $08 $08
    ld bc, $0101                                  ; $69b0: $01 $01 $01
    ld [$6121], sp                                ; $69b3: $08 $21 $61
    ld bc, $0920                                  ; $69b6: $01 $20 $09
    add hl, bc                                    ; $69b9: $09
    ld [$3641], sp                                ; $69ba: $08 $41 $36
    scf                                           ; $69bd: $37
    rra                                           ; $69be: $1f
    jr nz, @+$0a                                  ; $69bf: $20 $08

    dec bc                                        ; $69c1: $0b
    ld [hl], d                                    ; $69c2: $72
    ld [hl], e                                    ; $69c3: $73
    ld [$7505], sp                                ; $69c4: $08 $05 $75
    halt                                          ; $69c7: $76
    ld [hl], $37                                  ; $69c8: $36 $37
    ld e, [hl]                                    ; $69ca: $5e
    ld h, b                                       ; $69cb: $60
    ld b, b                                       ; $69cc: $40
    ld b, b                                       ; $69cd: $40
    ld bc, $6001                                  ; $69ce: $01 $01 $60
    ld h, b                                       ; $69d1: $60
    nop                                           ; $69d2: $00
    nop                                           ; $69d3: $00
    ld h, b                                       ; $69d4: $60
    nop                                           ; $69d5: $00
    nop                                           ; $69d6: $00
    nop                                           ; $69d7: $00
    ld b, b                                       ; $69d8: $40
    ld b, b                                       ; $69d9: $40
    ld h, b                                       ; $69da: $60
    ld h, c                                       ; $69db: $61
    sbc b                                         ; $69dc: $98
    sub a                                         ; $69dd: $97

jr_079_69de:
    ld l, $2a                                     ; $69de: $2e $2a
    add l                                         ; $69e0: $85
    ld [hl-], a                                   ; $69e1: $32
    ld l, $3f                                     ; $69e2: $2e $3f
    ld [hl-], a                                   ; $69e4: $32
    jr nc, @+$1f                                  ; $69e5: $30 $1d

    ld l, c                                       ; $69e7: $69
    ld l, c                                       ; $69e8: $69
    add b                                         ; $69e9: $80
    ld [de], a                                    ; $69ea: $12
    ld [hl-], a                                   ; $69eb: $32
    ld l, c                                       ; $69ec: $69
    ld l, c                                       ; $69ed: $69
    ld b, c                                       ; $69ee: $41
    ld hl, $4108                                  ; $69ef: $21 $08 $41
    ld b, c                                       ; $69f2: $41
    ld b, c                                       ; $69f3: $41
    ld h, c                                       ; $69f4: $61
    ld b, b                                       ; $69f5: $40
    ld h, b                                       ; $69f6: $60
    ld bc, $4940                                  ; $69f7: $01 $40 $49
    nop                                           ; $69fa: $00
    ld hl, $293f                                  ; $69fb: $21 $3f $29
    jr z, @+$30                                   ; $69fe: $28 $2e

jr_079_6a00:
    ld [hl], c                                    ; $6a00: $71
    dec a                                         ; $6a01: $3d
    sub e                                         ; $6a02: $93
    jr nc, @+$73                                  ; $6a03: $30 $71

    ld a, $71                                     ; $6a05: $3e $71
    ld hl, $3f71                                  ; $6a07: $21 $71 $3f
    adc d                                         ; $6a0a: $8a
    add h                                         ; $6a0b: $84
    ld b, c                                       ; $6a0c: $41
    ld hl, $6101                                  ; $6a0d: $21 $01 $61
    ld hl, $0921                                  ; $6a10: $21 $21 $09
    ld hl, $2101                                  ; $6a13: $21 $01 $21
    ld hl, $0161                                  ; $6a16: $21 $61 $01
    ld b, c                                       ; $6a19: $41
    ld c, c                                       ; $6a1a: $49
    ld l, c                                       ; $6a1b: $69
    ld e, $1d                                     ; $6a1c: $1e $1d
    ld [hl-], a                                   ; $6a1e: $32
    ld h, [hl]                                    ; $6a1f: $66
    jr nc, @+$65                                  ; $6a20: $30 $63

    inc a                                         ; $6a22: $3c
    ld l, d                                       ; $6a23: $6a
    ld h, [hl]                                    ; $6a24: $66
    ld [hl], d                                    ; $6a25: $72
    ld [hl], l                                    ; $6a26: $75
    inc l                                         ; $6a27: $2c
    ld l, $6a                                     ; $6a28: $2e $6a
    cpl                                           ; $6a2a: $2f
    inc [hl]                                      ; $6a2b: $34
    ld bc, $6101                                  ; $6a2c: $01 $01 $61
    jr nz, jr_079_6a72                            ; $6a2f: $20 $41

    ld h, c                                       ; $6a31: $61
    ld h, c                                       ; $6a32: $61
    ld h, b                                       ; $6a33: $60
    ld b, c                                       ; $6a34: $41
    ld bc, $0001                                  ; $6a35: $01 $01 $00
    ld hl, $4001                                  ; $6a38: $21 $01 $40
    ld b, b                                       ; $6a3b: $40
    ld [$1f0b], sp                                ; $6a3c: $08 $0b $1f
    ld e, [hl]                                    ; $6a3f: $5e
    ld [$1104], sp                                ; $6a40: $08 $04 $11
    ld e, a                                       ; $6a43: $5f
    ld b, h                                       ; $6a44: $44
    ld [bc], a                                    ; $6a45: $02
    dec sp                                        ; $6a46: $3b
    inc bc                                        ; $6a47: $03
    ld h, c                                       ; $6a48: $61
    dec b                                         ; $6a49: $05
    ld e, [hl]                                    ; $6a4a: $5e
    ld h, b                                       ; $6a4b: $60
    ld h, b                                       ; $6a4c: $60
    ld h, b                                       ; $6a4d: $60
    ld b, b                                       ; $6a4e: $40
    ld h, b                                       ; $6a4f: $60
    ld h, b                                       ; $6a50: $60
    ld b, b                                       ; $6a51: $40
    ld h, b                                       ; $6a52: $60
    ld hl, $0020                                  ; $6a53: $21 $20 $00
    ld hl, $2061                                  ; $6a56: $21 $61 $20
    ld b, b                                       ; $6a59: $40
    jr nz, @+$22                                  ; $6a5a: $20 $20

    ld h, b                                       ; $6a5c: $60
    ld [hl-], a                                   ; $6a5d: $32
    dec sp                                        ; $6a5e: $3b
    dec b                                         ; $6a5f: $05
    sbc d                                         ; $6a60: $9a
    jr nc, @+$13                                  ; $6a61: $30 $11

    jr nc, jr_079_6a00                            ; $6a63: $30 $9b

    sbc h                                         ; $6a65: $9c
    sub l                                         ; $6a66: $95
    ld [hl], l                                    ; $6a67: $75
    sbc l                                         ; $6a68: $9d
    sbc [hl]                                      ; $6a69: $9e
    inc a                                         ; $6a6a: $3c
    inc sp                                        ; $6a6b: $33
    ld b, c                                       ; $6a6c: $41
    ld b, c                                       ; $6a6d: $41
    ld h, c                                       ; $6a6e: $61
    ld hl, $4108                                  ; $6a6f: $21 $08 $41

jr_079_6a72:
    ld hl, $0861                                  ; $6a72: $21 $61 $08
    ld [$0148], sp                                ; $6a75: $08 $48 $01
    ld [$2108], sp                                ; $6a78: $08 $08 $21
    ld hl, $3d97                                  ; $6a7b: $21 $97 $3d
    ld b, b                                       ; $6a7e: $40
    ld a, $2f                                     ; $6a7f: $3e $2f
    add hl, hl                                    ; $6a81: $29
    adc e                                         ; $6a82: $8b
    adc d                                         ; $6a83: $8a
    ld hl, $718b                                  ; $6a84: $21 $8b $71
    dec a                                         ; $6a87: $3d
    add [hl]                                      ; $6a88: $86
    ld a, [hl+]                                   ; $6a89: $2a
    adc d                                         ; $6a8a: $8a
    add h                                         ; $6a8b: $84
    ld c, c                                       ; $6a8c: $49
    ld b, c                                       ; $6a8d: $41
    ld hl, $6121                                  ; $6a8e: $21 $21 $61
    ld b, c                                       ; $6a91: $41
    ld c, c                                       ; $6a92: $49
    ld c, c                                       ; $6a93: $49
    ld b, c                                       ; $6a94: $41
    ld c, c                                       ; $6a95: $49
    ld h, c                                       ; $6a96: $61
    ld h, c                                       ; $6a97: $61
    add hl, bc                                    ; $6a98: $09
    ld hl, $6949                                  ; $6a99: $21 $49 $69
    ld [hl], c                                    ; $6a9c: $71
    dec l                                         ; $6a9d: $2d
    inc a                                         ; $6a9e: $3c
    add b                                         ; $6a9f: $80
    ld [hl], c                                    ; $6aa0: $71
    sub a                                         ; $6aa1: $97
    sbc b                                         ; $6aa2: $98
    inc [hl]                                      ; $6aa3: $34
    dec l                                         ; $6aa4: $2d
    ld e, $1d                                     ; $6aa5: $1e $1d
    ld l, d                                       ; $6aa7: $6a
    inc sp                                        ; $6aa8: $33
    dec b                                         ; $6aa9: $05
    ld e, a                                       ; $6aaa: $5f
    dec l                                         ; $6aab: $2d
    ld b, c                                       ; $6aac: $41
    ld hl, $2861                                  ; $6aad: $21 $61 $28
    ld hl, $0909                                  ; $6ab0: $21 $09 $09
    ld bc, $0101                                  ; $6ab3: $01 $01 $01
    ld bc, $0101                                  ; $6ab6: $01 $01 $01
    ld bc, $2101                                  ; $6ab9: $01 $01 $21
    ld h, l                                       ; $6abc: $65
    ld h, h                                       ; $6abd: $64
    dec sp                                        ; $6abe: $3b
    inc bc                                        ; $6abf: $03
    ld l, b                                       ; $6ac0: $68
    ld h, a                                       ; $6ac1: $67
    ld de, $645f                                  ; $6ac2: $11 $5f $64
    ld [hl], l                                    ; $6ac5: $75
    ld h, e                                       ; $6ac6: $63
    ld h, d                                       ; $6ac7: $62
    ld [$6672], sp                                ; $6ac8: $08 $72 $66
    inc a                                         ; $6acb: $3c
    jr nz, @+$22                                  ; $6acc: $20 $20

    ld h, b                                       ; $6ace: $60
    jr nz, jr_079_6af1                            ; $6acf: $20 $20

    jr nz, @+$22                                  ; $6ad1: $20 $20

    ld h, b                                       ; $6ad3: $60
    jr nz, @+$62                                  ; $6ad4: $20 $60

    jr nz, @+$22                                  ; $6ad6: $20 $20

    ld h, b                                       ; $6ad8: $60
    ld h, b                                       ; $6ad9: $60
    jr nz, @+$23                                  ; $6ada: $20 $21

    ld sp, $752c                                  ; $6adc: $31 $2c $75
    ld hl, $052d                                  ; $6adf: $21 $2d $05
    ld [hl], c                                    ; $6ae2: $71
    dec b                                         ; $6ae3: $05
    dec hl                                        ; $6ae4: $2b
    add b                                         ; $6ae5: $80
    dec b                                         ; $6ae6: $05
    dec l                                         ; $6ae7: $2d
    ld b, h                                       ; $6ae8: $44
    ld l, d                                       ; $6ae9: $6a
    ld [de], a                                    ; $6aea: $12
    jr nc, jr_079_6b4e                            ; $6aeb: $30 $61

    ld bc, $0141                                  ; $6aed: $01 $41 $01
    ld h, b                                       ; $6af0: $60

jr_079_6af1:
    nop                                           ; $6af1: $00
    ld hl, $0021                                  ; $6af2: $21 $21 $00
    ld c, c                                       ; $6af5: $49
    nop                                           ; $6af6: $00
    ld hl, $4061                                  ; $6af7: $21 $61 $40
    ld b, b                                       ; $6afa: $40
    ld bc, $8633                                  ; $6afb: $01 $33 $86
    ccf                                           ; $6afe: $3f
    ld [hl], c                                    ; $6aff: $71
    inc sp                                        ; $6b00: $33
    ld b, d                                       ; $6b01: $42
    dec a                                         ; $6b02: $3d
    add h                                         ; $6b03: $84
    ld l, $2a                                     ; $6b04: $2e $2a
    ld a, [hl+]                                   ; $6b06: $2a
    ld [hl], c                                    ; $6b07: $71
    ld l, $3f                                     ; $6b08: $2e $3f
    dec a                                         ; $6b0a: $3d
    sbc b                                         ; $6b0b: $98
    ld hl, $2109                                  ; $6b0c: $21 $09 $21
    ld hl, $2121                                  ; $6b0f: $21 $21 $21
    ld hl, $4169                                  ; $6b12: $21 $69 $41
    ld hl, $2121                                  ; $6b15: $21 $21 $21
    ld b, c                                       ; $6b18: $41
    ld b, c                                       ; $6b19: $41
    ld bc, $2e29                                  ; $6b1a: $01 $29 $2e
    dec l                                         ; $6b1d: $2d
    inc bc                                        ; $6b1e: $03
    sbc a                                         ; $6b1f: $9f
    dec e                                         ; $6b20: $1d
    dec l                                         ; $6b21: $2d
    ld l, d                                       ; $6b22: $6a
    jr nc, jr_079_6b54                            ; $6b23: $30 $2f

    jr nc, jr_079_6b54                            ; $6b25: $30 $2d

    sub h                                         ; $6b27: $94
    ld hl, $a075                                  ; $6b28: $21 $75 $a0
    and c                                         ; $6b2b: $a1
    ld h, c                                       ; $6b2c: $61
    ld bc, $0841                                  ; $6b2d: $01 $41 $08
    ld hl, $0121                                  ; $6b30: $21 $21 $01
    ld b, c                                       ; $6b33: $41
    ld bc, $2101                                  ; $6b34: $01 $01 $21
    ld c, b                                       ; $6b37: $48
    ld hl, $0861                                  ; $6b38: $21 $61 $08
    ld [$3b03], sp                                ; $6b3b: $08 $03 $3b
    inc [hl]                                      ; $6b3e: $34
    ld b, h                                       ; $6b3f: $44
    ld [hl-], a                                   ; $6b40: $32
    ld de, $6105                                  ; $6b41: $11 $05 $61
    and d                                         ; $6b44: $a2
    ld h, e                                       ; $6b45: $63
    ld h, h                                       ; $6b46: $64
    ld h, l                                       ; $6b47: $65
    inc a                                         ; $6b48: $3c
    ld h, [hl]                                    ; $6b49: $66
    ld h, a                                       ; $6b4a: $67
    ld l, b                                       ; $6b4b: $68
    nop                                           ; $6b4c: $00
    ld b, b                                       ; $6b4d: $40

jr_079_6b4e:
    ld b, b                                       ; $6b4e: $40
    nop                                           ; $6b4f: $00
    ld h, c                                       ; $6b50: $61
    nop                                           ; $6b51: $00
    ld h, b                                       ; $6b52: $60
    nop                                           ; $6b53: $00

jr_079_6b54:
    ld [$0000], sp                                ; $6b54: $08 $00 $00
    nop                                           ; $6b57: $00
    ld bc, $0000                                  ; $6b58: $01 $00 $00
    nop                                           ; $6b5b: $00
    inc a                                         ; $6b5c: $3c
    ld b, h                                       ; $6b5d: $44
    ld [hl], l                                    ; $6b5e: $75
    ld h, h                                       ; $6b5f: $64
    ld l, c                                       ; $6b60: $69
    jr nz, @+$36                                  ; $6b61: $20 $34

    ld [$443c], sp                                ; $6b63: $08 $3c $44
    scf                                           ; $6b66: $37
    ld [hl], $69                                  ; $6b67: $36 $69
    jr nz, @+$0d                                  ; $6b69: $20 $0b

    ld [$6121], sp                                ; $6b6b: $08 $21 $61
    ld b, b                                       ; $6b6e: $40
    nop                                           ; $6b6f: $00
    ld h, b                                       ; $6b70: $60
    ld h, c                                       ; $6b71: $61
    ld b, b                                       ; $6b72: $40
    ld b, b                                       ; $6b73: $40
    ld hl, $6061                                  ; $6b74: $21 $61 $60
    ld h, b                                       ; $6b77: $60
    jr nz, jr_079_6b9a                            ; $6b78: $20 $20

    ld b, b                                       ; $6b7a: $40
    ld b, b                                       ; $6b7b: $40
    ld hl, $6e60                                  ; $6b7c: $21 $60 $6e
    ld l, l                                       ; $6b7f: $6d
    ld sp, $7003                                  ; $6b80: $31 $03 $70
    ld h, c                                       ; $6b83: $61
    dec l                                         ; $6b84: $2d
    ld e, a                                       ; $6b85: $5f
    scf                                           ; $6b86: $37
    ld [hl], $2b                                  ; $6b87: $36 $2b
    ld h, d                                       ; $6b89: $62
    inc l                                         ; $6b8a: $2c
    ld [$4120], sp                                ; $6b8b: $08 $20 $41
    jr nz, jr_079_6bb0                            ; $6b8e: $20 $20

    ld b, c                                       ; $6b90: $41
    nop                                           ; $6b91: $00
    jr nz, jr_079_6b94                            ; $6b92: $20 $00

jr_079_6b94:
    ld b, b                                       ; $6b94: $40
    ld b, b                                       ; $6b95: $40
    jr nz, jr_079_6bb8                            ; $6b96: $20 $20

    jr nz, jr_079_6b9a                            ; $6b98: $20 $00

jr_079_6b9a:
    ld b, b                                       ; $6b9a: $40
    nop                                           ; $6b9b: $00
    dec sp                                        ; $6b9c: $3b
    jr nz, @+$07                                  ; $6b9d: $20 $05

    ld [$4496], sp                                ; $6b9f: $08 $96 $44
    scf                                           ; $6ba2: $37
    ld [hl], $95                                  ; $6ba3: $36 $95
    ld e, a                                       ; $6ba5: $5f
    dec bc                                        ; $6ba6: $0b
    ld [$622d], sp                                ; $6ba7: $08 $2d $62
    scf                                           ; $6baa: $37
    ld [hl], $61                                  ; $6bab: $36 $61
    ld h, c                                       ; $6bad: $61
    jr nz, jr_079_6bf0                            ; $6bae: $20 $40

jr_079_6bb0:
    ld c, b                                       ; $6bb0: $48
    ld h, c                                       ; $6bb1: $61
    ld h, b                                       ; $6bb2: $60
    ld h, b                                       ; $6bb3: $60
    ld c, b                                       ; $6bb4: $48
    ld b, b                                       ; $6bb5: $40
    ld b, b                                       ; $6bb6: $40
    ld b, b                                       ; $6bb7: $40

jr_079_6bb8:
    ld hl, $6000                                  ; $6bb8: $21 $00 $60
    ld h, b                                       ; $6bbb: $60
    ld e, $1d                                     ; $6bbc: $1e $1d
    rra                                           ; $6bbe: $1f
    jr nz, @+$15                                  ; $6bbf: $20 $13

    ld [de], a                                    ; $6bc1: $12
    ld de, $6e5f                                  ; $6bc2: $11 $5f $6e
    ld [bc], a                                    ; $6bc5: $02
    dec sp                                        ; $6bc6: $3b
    inc bc                                        ; $6bc7: $03
    ld [$a305], sp                                ; $6bc8: $08 $05 $a3
    adc a                                         ; $6bcb: $8f
    ld b, b                                       ; $6bcc: $40
    ld b, b                                       ; $6bcd: $40
    ld b, b                                       ; $6bce: $40
    ld b, c                                       ; $6bcf: $41
    jr nz, jr_079_6bf2                            ; $6bd0: $20 $20

    ld h, b                                       ; $6bd2: $60
    ld hl, $0000                                  ; $6bd3: $21 $00 $00
    ld hl, $2061                                  ; $6bd6: $21 $61 $20
    ld b, b                                       ; $6bd9: $40
    ld a, [bc]                                    ; $6bda: $0a
    ld c, a                                       ; $6bdb: $4f
    ld l, c                                       ; $6bdc: $69
    inc l                                         ; $6bdd: $2c
    and h                                         ; $6bde: $a4
    and l                                         ; $6bdf: $a5
    dec l                                         ; $6be0: $2d
    ld h, [hl]                                    ; $6be1: $66
    ld a, b                                       ; $6be2: $78
    inc sp                                        ; $6be3: $33
    ld sp, $1d63                                  ; $6be4: $31 $63 $1d
    jr z, jr_079_6c5c                             ; $6be7: $28 $73

    ld h, d                                       ; $6be9: $62
    dec hl                                        ; $6bea: $2b
    inc a                                         ; $6beb: $3c
    ld b, b                                       ; $6bec: $40
    ld hl, $0909                                  ; $6bed: $21 $09 $09

jr_079_6bf0:
    jr nz, @+$63                                  ; $6bf0: $20 $61

jr_079_6bf2:
    ld hl, $2161                                  ; $6bf2: $21 $61 $21
    ld h, c                                       ; $6bf5: $61
    ld h, c                                       ; $6bf6: $61
    ld hl, $2000                                  ; $6bf7: $21 $00 $20
    jr nz, jr_079_6bfd                            ; $6bfa: $20 $01

    and [hl]                                      ; $6bfc: $a6

jr_079_6bfd:
    ccf                                           ; $6bfd: $3f
    sub e                                         ; $6bfe: $93
    ld hl, $8a2a                                  ; $6bff: $21 $2a $8a
    add h                                         ; $6c02: $84
    adc e                                         ; $6c03: $8b
    add hl, hl                                    ; $6c04: $29
    ccf                                           ; $6c05: $3f
    adc b                                         ; $6c06: $88
    adc c                                         ; $6c07: $89
    dec a                                         ; $6c08: $3d
    ld a, [hl+]                                   ; $6c09: $2a
    ld a, [hl+]                                   ; $6c0a: $2a
    ld [hl], c                                    ; $6c0b: $71
    add hl, bc                                    ; $6c0c: $09
    ld bc, $2109                                  ; $6c0d: $01 $09 $21
    ld hl, $6949                                  ; $6c10: $21 $49 $69
    ld c, c                                       ; $6c13: $49
    ld bc, $4961                                  ; $6c14: $01 $61 $49
    ld c, c                                       ; $6c17: $49
    ld bc, $2101                                  ; $6c18: $01 $01 $21
    ld h, c                                       ; $6c1b: $61
    cpl                                           ; $6c1c: $2f
    jr nc, @+$13                                  ; $6c1d: $30 $11

    jr nc, jr_079_6bb8                            ; $6c1f: $30 $97

    dec b                                         ; $6c21: $05
    dec sp                                        ; $6c22: $3b
    ld [hl-], a                                   ; $6c23: $32
    and a                                         ; $6c24: $a7
    ld [hl-], a                                   ; $6c25: $32
    jr nc, @-$7e                                  ; $6c26: $30 $80

    xor b                                         ; $6c28: $a8
    jr nc, @+$64                                  ; $6c29: $30 $62

    ld h, b                                       ; $6c2b: $60
    ld bc, $4101                                  ; $6c2c: $01 $01 $41
    ld hl, $4129                                  ; $6c2f: $21 $29 $41
    ld bc, $0921                                  ; $6c32: $01 $21 $09
    ld b, c                                       ; $6c35: $41
    ld hl, $0929                                  ; $6c36: $21 $29 $09
    ld b, c                                       ; $6c39: $41
    nop                                           ; $6c3a: $00
    ld hl, $3208                                  ; $6c3b: $21 $08 $32
    xor c                                         ; $6c3e: $a9
    adc l                                         ; $6c3f: $8d
    ld [$1191], sp                                ; $6c40: $08 $91 $11
    ld e, a                                       ; $6c43: $5f
    inc b                                         ; $6c44: $04
    ld [hl], l                                    ; $6c45: $75
    ld h, e                                       ; $6c46: $63
    ld h, d                                       ; $6c47: $62
    ld h, c                                       ; $6c48: $61
    ld h, h                                       ; $6c49: $64
    ld h, [hl]                                    ; $6c4a: $66
    inc a                                         ; $6c4b: $3c
    jr nz, @+$42                                  ; $6c4c: $20 $40

    ld a, [bc]                                    ; $6c4e: $0a
    ld c, d                                       ; $6c4f: $4a
    ld h, b                                       ; $6c50: $60
    ld a, [bc]                                    ; $6c51: $0a
    jr nz, jr_079_6cb4                            ; $6c52: $20 $60

    ld b, b                                       ; $6c54: $40
    ld h, b                                       ; $6c55: $60
    jr nz, @+$22                                  ; $6c56: $20 $20

    jr nz, jr_079_6c7a                            ; $6c58: $20 $20

    jr nz, @+$23                                  ; $6c5a: $20 $21

jr_079_6c5c:
    inc l                                         ; $6c5c: $2c
    ld h, d                                       ; $6c5d: $62
    inc l                                         ; $6c5e: $2c
    dec a                                         ; $6c5f: $3d
    add l                                         ; $6c60: $85
    ld [hl-], a                                   ; $6c61: $32
    ld l, $3e                                     ; $6c62: $2e $3e
    cpl                                           ; $6c64: $2f
    jr nc, jr_079_6c95                            ; $6c65: $30 $2e

    ld b, b                                       ; $6c67: $40
    ld h, d                                       ; $6c68: $62
    ld h, e                                       ; $6c69: $63
    ld [hl], l                                    ; $6c6a: $75
    ld hl, $6101                                  ; $6c6b: $21 $01 $61
    ld bc, $0801                                  ; $6c6e: $01 $01 $08
    ld b, b                                       ; $6c71: $40
    ld b, c                                       ; $6c72: $41
    ld hl, $4040                                  ; $6c73: $21 $40 $40
    ld b, c                                       ; $6c76: $41
    ld hl, $0000                                  ; $6c77: $21 $00 $00

jr_079_6c7a:
    ld b, c                                       ; $6c7a: $41
    ld bc, $843f                                  ; $6c7b: $01 $3f $84
    xor d                                         ; $6c7e: $aa
    xor e                                         ; $6c7f: $ab
    ld b, c                                       ; $6c80: $41
    ld a, $3f                                     ; $6c81: $3e $3f
    xor h                                         ; $6c83: $ac
    add [hl]                                      ; $6c84: $86
    ccf                                           ; $6c85: $3f
    adc d                                         ; $6c86: $8a
    ld a, $ad                                     ; $6c87: $3e $ad
    ld a, [hl+]                                   ; $6c89: $2a
    xor [hl]                                      ; $6c8a: $ae
    xor a                                         ; $6c8b: $af
    ld bc, $0929                                  ; $6c8c: $01 $29 $09
    add hl, bc                                    ; $6c8f: $09
    ld hl, $6121                                  ; $6c90: $21 $21 $61
    add hl, bc                                    ; $6c93: $09
    add hl, bc                                    ; $6c94: $09

jr_079_6c95:
    ld bc, $0109                                  ; $6c95: $01 $09 $01
    add hl, bc                                    ; $6c98: $09
    ld b, c                                       ; $6c99: $41
    add hl, bc                                    ; $6c9a: $09
    add hl, bc                                    ; $6c9b: $09
    ld a, $71                                     ; $6c9c: $3e $71
    rra                                           ; $6c9e: $1f
    inc bc                                        ; $6c9f: $03
    ld [hl], c                                    ; $6ca0: $71
    ld h, [hl]                                    ; $6ca1: $66
    ld [hl], d                                    ; $6ca2: $72
    ld e, a                                       ; $6ca3: $5f
    or b                                          ; $6ca4: $b0
    ld h, e                                       ; $6ca5: $63
    ld [hl], l                                    ; $6ca6: $75
    ld h, d                                       ; $6ca7: $62
    or c                                          ; $6ca8: $b1
    inc l                                         ; $6ca9: $2c
    dec b                                         ; $6caa: $05
    or d                                          ; $6cab: $b2
    ld bc, $0121                                  ; $6cac: $01 $21 $01
    jr nz, jr_079_6cd2                            ; $6caf: $20 $21

    ld b, c                                       ; $6cb1: $41
    nop                                           ; $6cb2: $00
    ld h, b                                       ; $6cb3: $60

jr_079_6cb4:
    add hl, bc                                    ; $6cb4: $09
    ld b, c                                       ; $6cb5: $41
    ld bc, $0920                                  ; $6cb6: $01 $20 $09
    jr nz, jr_079_6cdb                            ; $6cb9: $20 $20

    add hl, bc                                    ; $6cbb: $09
    ld h, c                                       ; $6cbc: $61
    ld [de], a                                    ; $6cbd: $12
    add b                                         ; $6cbe: $80
    ld hl, $6e6d                                  ; $6cbf: $21 $6d $6e
    ld l, d                                       ; $6cc2: $6a
    ld l, c                                       ; $6cc3: $69
    ld h, c                                       ; $6cc4: $61
    ld [hl], b                                    ; $6cc5: $70
    inc l                                         ; $6cc6: $2c
    dec l                                         ; $6cc7: $2d
    ld h, l                                       ; $6cc8: $65
    ld h, h                                       ; $6cc9: $64
    inc [hl]                                      ; $6cca: $34
    ld sp, $2020                                  ; $6ccb: $31 $20 $20
    ld l, b                                       ; $6cce: $68
    jr nz, jr_079_6cd1                            ; $6ccf: $20 $00

jr_079_6cd1:
    nop                                           ; $6cd1: $00

jr_079_6cd2:
    ld h, b                                       ; $6cd2: $60
    ld h, b                                       ; $6cd3: $60
    jr nz, jr_079_6cd6                            ; $6cd4: $20 $00

jr_079_6cd6:
    nop                                           ; $6cd6: $00
    nop                                           ; $6cd7: $00
    jr nz, @+$22                                  ; $6cd8: $20 $20

    ld b, b                                       ; $6cda: $40

jr_079_6cdb:
    ld bc, $1130                                  ; $6cdb: $01 $30 $11
    jr nc, @+$31                                  ; $6cde: $30 $2f

    ld [hl-], a                                   ; $6ce0: $32
    dec sp                                        ; $6ce1: $3b
    dec b                                         ; $6ce2: $05
    sub a                                         ; $6ce3: $97
    add b                                         ; $6ce4: $80
    ld [de], a                                    ; $6ce5: $12
    ld [hl-], a                                   ; $6ce6: $32
    and a                                         ; $6ce7: $a7
    rra                                           ; $6ce8: $1f
    dec e                                         ; $6ce9: $1d
    or e                                          ; $6cea: $b3
    dec sp                                        ; $6ceb: $3b
    ld bc, $2161                                  ; $6cec: $01 $61 $21
    ld hl, $2101                                  ; $6cef: $21 $01 $21
    ld h, c                                       ; $6cf2: $61
    add hl, bc                                    ; $6cf3: $09
    add hl, bc                                    ; $6cf4: $09
    ld b, b                                       ; $6cf5: $40
    ld h, c                                       ; $6cf6: $61
    add hl, hl                                    ; $6cf7: $29
    ld hl, $0921                                  ; $6cf8: $21 $21 $09
    ld b, c                                       ; $6cfb: $41
    or h                                          ; $6cfc: $b4
    ld [hl], h                                    ; $6cfd: $74
    or l                                          ; $6cfe: $b5
    or [hl]                                       ; $6cff: $b6
    sbc b                                         ; $6d00: $98
    or a                                          ; $6d01: $b7
    dec a                                         ; $6d02: $3d
    ld [hl], c                                    ; $6d03: $71
    ld hl, $3f93                                  ; $6d04: $21 $93 $3f
    and [hl]                                      ; $6d07: $a6
    add [hl]                                      ; $6d08: $86
    adc e                                         ; $6d09: $8b
    add h                                         ; $6d0a: $84
    ld a, [hl+]                                   ; $6d0b: $2a
    add hl, bc                                    ; $6d0c: $09
    ld hl, $0909                                  ; $6d0d: $21 $09 $09
    add hl, bc                                    ; $6d10: $09
    add hl, bc                                    ; $6d11: $09
    ld h, c                                       ; $6d12: $61
    ld h, c                                       ; $6d13: $61
    ld bc, $2129                                  ; $6d14: $01 $29 $21
    add hl, hl                                    ; $6d17: $29
    add hl, bc                                    ; $6d18: $09
    ld l, c                                       ; $6d19: $69
    ld c, c                                       ; $6d1a: $49
    ld bc, $02b8                                  ; $6d1b: $01 $b8 $02
    add b                                         ; $6d1e: $80
    ld hl, $12a8                                  ; $6d1f: $21 $a8 $12
    ld l, d                                       ; $6d22: $6a
    ld l, c                                       ; $6d23: $69
    and l                                         ; $6d24: $a5
    and h                                         ; $6d25: $a4
    inc l                                         ; $6d26: $2c
    inc [hl]                                      ; $6d27: $34
    inc sp                                        ; $6d28: $33
    ld a, b                                       ; $6d29: $78
    ld h, [hl]                                    ; $6d2a: $66
    cp c                                          ; $6d2b: $b9
    add hl, bc                                    ; $6d2c: $09
    ld b, c                                       ; $6d2d: $41
    ld l, c                                       ; $6d2e: $69
    ld hl, $6009                                  ; $6d2f: $21 $09 $60
    ld h, b                                       ; $6d32: $60
    ld h, b                                       ; $6d33: $60
    add hl, hl                                    ; $6d34: $29
    add hl, hl                                    ; $6d35: $29
    ld bc, $4141                                  ; $6d36: $01 $41 $41
    ld bc, $0a41                                  ; $6d39: $01 $41 $0a
    ld l, b                                       ; $6d3c: $68
    ld h, a                                       ; $6d3d: $67
    add b                                         ; $6d3e: $80
    ld hl, $3736                                  ; $6d3f: $21 $36 $37
    inc [hl]                                      ; $6d42: $34
    ld sp, $0b08                                  ; $6d43: $31 $08 $0b
    inc l                                         ; $6d46: $2c
    dec l                                         ; $6d47: $2d
    ld [$0504], sp                                ; $6d48: $08 $04 $05
    dec hl                                        ; $6d4b: $2b
    jr nz, @+$22                                  ; $6d4c: $20 $20

    jr z, jr_079_6db0                             ; $6d4e: $28 $60

    ld b, b                                       ; $6d50: $40
    ld b, b                                       ; $6d51: $40
    ld bc, $6041                                  ; $6d52: $01 $41 $60
    ld h, b                                       ; $6d55: $60
    ld b, c                                       ; $6d56: $41
    ld b, b                                       ; $6d57: $40
    ld h, b                                       ; $6d58: $60
    ld b, b                                       ; $6d59: $40
    jr nz, @+$22                                  ; $6d5a: $20 $20

    ld h, b                                       ; $6d5c: $60
    ld [hl], c                                    ; $6d5d: $71
    cp d                                          ; $6d5e: $ba
    ld [hl], c                                    ; $6d5f: $71
    inc bc                                        ; $6d60: $03
    dec sp                                        ; $6d61: $3b

jr_079_6d62:
    ld h, d                                       ; $6d62: $62
    ld [hl], h                                    ; $6d63: $74
    ld e, a                                       ; $6d64: $5f
    ld de, $8630                                  ; $6d65: $11 $30 $86
    ld h, d                                       ; $6d68: $62
    ld h, e                                       ; $6d69: $63
    inc sp                                        ; $6d6a: $33
    ld a, [hl+]                                   ; $6d6b: $2a
    ld bc, $0921                                  ; $6d6c: $01 $21 $09
    ld hl, $4100                                  ; $6d6f: $21 $00 $41
    ld bc, $4001                                  ; $6d72: $01 $01 $40
    ld bc, $0961                                  ; $6d75: $01 $61 $09
    ld bc, $6100                                  ; $6d78: $01 $00 $61
    ld hl, $8990                                  ; $6d7b: $21 $90 $89
    adc b                                         ; $6d7e: $88
    add hl, hl                                    ; $6d7f: $29
    cp e                                          ; $6d80: $bb
    sub d                                         ; $6d81: $92
    cp h                                          ; $6d82: $bc
    ld b, d                                       ; $6d83: $42
    adc e                                         ; $6d84: $8b
    add h                                         ; $6d85: $84
    adc d                                         ; $6d86: $8a
    ld a, [hl+]                                   ; $6d87: $2a
    ld b, c                                       ; $6d88: $41
    ld a, $3f                                     ; $6d89: $3e $3f
    xor h                                         ; $6d8b: $ac
    ld l, c                                       ; $6d8c: $69
    ld l, c                                       ; $6d8d: $69
    ld l, c                                       ; $6d8e: $69
    ld hl, $6909                                  ; $6d8f: $21 $09 $69
    add hl, bc                                    ; $6d92: $09
    ld b, c                                       ; $6d93: $41
    ld l, c                                       ; $6d94: $69
    ld c, c                                       ; $6d95: $49
    ld l, c                                       ; $6d96: $69
    ld bc, $6161                                  ; $6d97: $01 $61 $61
    ld hl, $2849                                  ; $6d9a: $21 $49 $28
    dec e                                         ; $6d9d: $1d
    ld h, e                                       ; $6d9e: $63
    cp l                                          ; $6d9f: $bd
    ld b, e                                       ; $6da0: $43
    inc [hl]                                      ; $6da1: $34
    jr nc, jr_079_6d62                            ; $6da2: $30 $be

    inc sp                                        ; $6da4: $33
    ld a, b                                       ; $6da5: $78
    ld e, [hl]                                    ; $6da6: $5e
    ld h, e                                       ; $6da7: $63
    ld [hl], c                                    ; $6da8: $71
    or l                                          ; $6da9: $b5
    or [hl]                                       ; $6daa: $b6
    cp b                                          ; $6dab: $b8
    ld bc, $4141                                  ; $6dac: $01 $41 $41
    ld a, [bc]                                    ; $6daf: $0a

jr_079_6db0:
    ld h, c                                       ; $6db0: $61
    ld hl, $0a01                                  ; $6db1: $21 $01 $0a
    ld b, c                                       ; $6db4: $41
    ld bc, $6121                                  ; $6db5: $01 $21 $61
    ld h, c                                       ; $6db8: $61
    ld c, c                                       ; $6db9: $49
    ld c, c                                       ; $6dba: $49
    ld c, c                                       ; $6dbb: $49
    inc [hl]                                      ; $6dbc: $34
    ld l, d                                       ; $6dbd: $6a
    dec bc                                        ; $6dbe: $0b
    ld [$7634], sp                                ; $6dbf: $08 $34 $76
    dec b                                         ; $6dc2: $05
    ld [$3444], sp                                ; $6dc3: $08 $44 $34
    scf                                           ; $6dc6: $37
    ld [hl], $21                                  ; $6dc7: $36 $21
    add b                                         ; $6dc9: $80
    dec bc                                        ; $6dca: $0b
    ld [$4040], sp                                ; $6dcb: $08 $40 $40
    ld b, b                                       ; $6dce: $40
    ld b, b                                       ; $6dcf: $40
    ld hl, $2021                                  ; $6dd0: $21 $21 $20
    ld b, b                                       ; $6dd3: $40
    ld h, c                                       ; $6dd4: $61
    ld h, b                                       ; $6dd5: $60
    ld h, b                                       ; $6dd6: $60
    ld h, b                                       ; $6dd7: $60
    ld b, b                                       ; $6dd8: $40
    ld [$4040], sp                                ; $6dd9: $08 $40 $40
    ld sp, $6e34                                  ; $6ddc: $31 $34 $6e
    ld l, l                                       ; $6ddf: $6d
    inc [hl]                                      ; $6de0: $34
    ld h, e                                       ; $6de1: $63
    ld [hl], b                                    ; $6de2: $70
    ld h, c                                       ; $6de3: $61
    inc [hl]                                      ; $6de4: $34
    halt                                          ; $6de5: $76
    ld h, h                                       ; $6de6: $64
    ld h, l                                       ; $6de7: $65
    ld b, h                                       ; $6de8: $44
    ld [bc], a                                    ; $6de9: $02
    ld h, a                                       ; $6dea: $67
    ld l, b                                       ; $6deb: $68
    ld h, c                                       ; $6dec: $61
    ld hl, $2020                                  ; $6ded: $21 $20 $20
    ld b, b                                       ; $6df0: $40
    jr nz, jr_079_6e13                            ; $6df1: $20 $20

    nop                                           ; $6df3: $00
    ld hl, $0060                                  ; $6df4: $21 $60 $00
    nop                                           ; $6df7: $00
    ld h, c                                       ; $6df8: $61
    ld b, b                                       ; $6df9: $40
    nop                                           ; $6dfa: $00
    nop                                           ; $6dfb: $00
    ld h, b                                       ; $6dfc: $60
    sub c                                         ; $6dfd: $91
    scf                                           ; $6dfe: $37
    ld [hl], $20                                  ; $6dff: $36 $20
    rra                                           ; $6e01: $1f
    dec bc                                        ; $6e02: $0b

jr_079_6e03:
    ld [$c0bf], sp                                ; $6e03: $08 $bf $c0
    inc b                                         ; $6e06: $04
    ld [$c2c1], sp                                ; $6e07: $08 $c1 $c2
    ld [bc], a                                    ; $6e0a: $02
    ld b, h                                       ; $6e0b: $44
    ld b, c                                       ; $6e0c: $41
    ld a, [bc]                                    ; $6e0d: $0a
    ld h, b                                       ; $6e0e: $60
    ld h, b                                       ; $6e0f: $60
    ld h, c                                       ; $6e10: $61
    ld h, b                                       ; $6e11: $60
    ld b, b                                       ; $6e12: $40

jr_079_6e13:
    ld b, b                                       ; $6e13: $40
    ld a, [bc]                                    ; $6e14: $0a
    ld a, [bc]                                    ; $6e15: $0a
    ld h, b                                       ; $6e16: $60
    ld b, b                                       ; $6e17: $40
    ld a, [bc]                                    ; $6e18: $0a
    rrca                                          ; $6e19: $0f
    jr nz, jr_079_6e1c                            ; $6e1a: $20 $00

jr_079_6e1c:
    jp $05c4                                      ; $6e1c: $c3 $c4 $05


    ld h, c                                       ; $6e1f: $61
    push bc                                       ; $6e20: $c5
    ld e, a                                       ; $6e21: $5f
    ld h, h                                       ; $6e22: $64
    ld h, l                                       ; $6e23: $65
    ld de, $6711                                  ; $6e24: $11 $11 $67
    ld l, b                                       ; $6e27: $68
    ld [bc], a                                    ; $6e28: $02
    ld l, d                                       ; $6e29: $6a
    ld l, [hl]                                    ; $6e2a: $6e
    ld l, l                                       ; $6e2b: $6d
    rrca                                          ; $6e2c: $0f
    ld a, [bc]                                    ; $6e2d: $0a
    ld h, b                                       ; $6e2e: $60
    nop                                           ; $6e2f: $00
    ld a, [bc]                                    ; $6e30: $0a
    ld b, b                                       ; $6e31: $40
    nop                                           ; $6e32: $00
    nop                                           ; $6e33: $00
    nop                                           ; $6e34: $00
    nop                                           ; $6e35: $00
    nop                                           ; $6e36: $00
    nop                                           ; $6e37: $00
    ld bc, $2040                                  ; $6e38: $01 $40 $20
    jr nz, jr_079_6e03                            ; $6e3b: $20 $c6

    rst $00                                       ; $6e3d: $c7
    ld l, c                                       ; $6e3e: $69
    inc a                                         ; $6e3f: $3c
    ld h, c                                       ; $6e40: $61
    ld [de], a                                    ; $6e41: $12
    rra                                           ; $6e42: $1f
    ld l, c                                       ; $6e43: $69
    ld l, l                                       ; $6e44: $6d
    ld l, [hl]                                    ; $6e45: $6e
    ld [hl], c                                    ; $6e46: $71
    cp d                                          ; $6e47: $ba
    ld h, c                                       ; $6e48: $61
    ld [hl], b                                    ; $6e49: $70
    dec sp                                        ; $6e4a: $3b
    ld h, d                                       ; $6e4b: $62
    ld [$2008], sp                                ; $6e4c: $08 $08 $20
    ld hl, $2020                                  ; $6e4f: $21 $20 $20
    ld b, b                                       ; $6e52: $40
    jr nz, jr_079_6e55                            ; $6e53: $20 $00

jr_079_6e55:
    nop                                           ; $6e55: $00
    ld hl, $2009                                  ; $6e56: $21 $09 $20
    nop                                           ; $6e59: $00
    ld b, c                                       ; $6e5a: $41
    ld bc, $0244                                  ; $6e5b: $01 $44 $02
    jr z, jr_079_6e89                             ; $6e5e: $28 $29

    jr nz, jr_079_6e81                            ; $6e60: $20 $1f

    inc a                                         ; $6e62: $3c
    dec a                                         ; $6e63: $3d
    ld [hl], c                                    ; $6e64: $71
    sub b                                         ; $6e65: $90
    dec a                                         ; $6e66: $3d
    ccf                                           ; $6e67: $3f
    ld [hl], h                                    ; $6e68: $74
    cp e                                          ; $6e69: $bb
    sub d                                         ; $6e6a: $92
    cp h                                          ; $6e6b: $bc
    ld h, c                                       ; $6e6c: $61
    ld b, b                                       ; $6e6d: $40
    ld hl, $2001                                  ; $6e6e: $21 $01 $20
    ld hl, $0101                                  ; $6e71: $21 $01 $01
    ld hl, $0169                                  ; $6e74: $21 $69 $01
    ld bc, $0901                                  ; $6e77: $01 $01 $09
    ld l, c                                       ; $6e7a: $69
    add hl, bc                                    ; $6e7b: $09
    ld b, d                                       ; $6e7c: $42
    add a                                         ; $6e7d: $87
    cp h                                          ; $6e7e: $bc
    sub d                                         ; $6e7f: $92
    add hl, hl                                    ; $6e80: $29

jr_079_6e81:
    ccf                                           ; $6e81: $3f
    adc b                                         ; $6e82: $88
    adc c                                         ; $6e83: $89
    add hl, hl                                    ; $6e84: $29
    add a                                         ; $6e85: $87
    cp h                                          ; $6e86: $bc
    add h                                         ; $6e87: $84
    ld b, d                                       ; $6e88: $42

jr_079_6e89:
    add a                                         ; $6e89: $87
    cp h                                          ; $6e8a: $bc
    ld a, $21                                     ; $6e8b: $3e $21
    add hl, bc                                    ; $6e8d: $09
    ld l, c                                       ; $6e8e: $69
    add hl, bc                                    ; $6e8f: $09
    ld b, c                                       ; $6e90: $41
    ld hl, $0909                                  ; $6e91: $21 $09 $09
    ld hl, $6909                                  ; $6e94: $21 $09 $69
    add hl, hl                                    ; $6e97: $29
    ld b, c                                       ; $6e98: $41
    add hl, bc                                    ; $6e99: $09
    ld l, c                                       ; $6e9a: $69
    ld hl, $84bb                                  ; $6e9b: $21 $bb $84
    ccf                                           ; $6e9e: $3f
    dec a                                         ; $6e9f: $3d
    sub b                                         ; $6ea0: $90
    ld a, $41                                     ; $6ea1: $3e $41
    ld a, $aa                                     ; $6ea3: $3e $aa
    ccf                                           ; $6ea5: $3f
    add [hl]                                      ; $6ea6: $86
    ld b, b                                       ; $6ea7: $40
    ccf                                           ; $6ea8: $3f
    adc b                                         ; $6ea9: $88
    adc c                                         ; $6eaa: $89
    sub b                                         ; $6eab: $90
    ld l, c                                       ; $6eac: $69
    add hl, bc                                    ; $6ead: $09
    ld hl, $0921                                  ; $6eae: $21 $21 $09
    ld bc, $0101                                  ; $6eb1: $01 $01 $01
    add hl, bc                                    ; $6eb4: $09
    ld hl, $0129                                  ; $6eb5: $21 $29 $01
    ld h, c                                       ; $6eb8: $61
    add hl, bc                                    ; $6eb9: $09
    add hl, bc                                    ; $6eba: $09
    add hl, bc                                    ; $6ebb: $09
    ld l, [hl]                                    ; $6ebc: $6e
    ret z                                         ; $6ebd: $c8

    ret                                           ; $6ebe: $c9


    jp z, $cbcb                                   ; $6ebf: $ca $cb $cb

    call z, $cacd                                 ; $6ec2: $cc $cd $ca
    set 1, [hl]                                   ; $6ec5: $cb $ce
    rst $08                                       ; $6ec7: $cf
    ret nc                                        ; $6ec8: $d0

    pop de                                        ; $6ec9: $d1
    jp nc, Jump_000_00d3                          ; $6eca: $d2 $d3 $00

    dec bc                                        ; $6ecd: $0b
    ld [$0b0b], sp                                ; $6ece: $08 $0b $0b
    ld l, e                                       ; $6ed1: $6b
    dec bc                                        ; $6ed2: $0b
    dec bc                                        ; $6ed3: $0b
    dec bc                                        ; $6ed4: $0b
    ld l, e                                       ; $6ed5: $6b
    dec bc                                        ; $6ed6: $0b
    dec bc                                        ; $6ed7: $0b
    dec bc                                        ; $6ed8: $0b
    dec bc                                        ; $6ed9: $0b
    dec bc                                        ; $6eda: $0b
    dec bc                                        ; $6edb: $0b
    call nc, $d533                                ; $6edc: $d4 $33 $d5
    sub $d7                                       ; $6edf: $d6 $d7
    ret c                                         ; $6ee1: $d8

    reti                                          ; $6ee2: $d9


    jp c, $dcdb                                   ; $6ee3: $da $db $dc

    db $dd                                        ; $6ee6: $dd
    sbc $df                                       ; $6ee7: $de $df
    ldh [$e1], a                                  ; $6ee9: $e0 $e1
    ld [c], a                                     ; $6eeb: $e2
    dec bc                                        ; $6eec: $0b
    ld hl, $0909                                  ; $6eed: $21 $09 $09
    dec bc                                        ; $6ef0: $0b
    dec bc                                        ; $6ef1: $0b
    dec bc                                        ; $6ef2: $0b
    adc [hl]                                      ; $6ef3: $8e
    dec bc                                        ; $6ef4: $0b
    dec bc                                        ; $6ef5: $0b
    dec bc                                        ; $6ef6: $0b
    adc [hl]                                      ; $6ef7: $8e
    dec bc                                        ; $6ef8: $0b
    dec bc                                        ; $6ef9: $0b
    dec bc                                        ; $6efa: $0b
    adc [hl]                                      ; $6efb: $8e
    db $e3                                        ; $6efc: $e3
    db $e4                                        ; $6efd: $e4
    sub $87                                       ; $6efe: $d6 $87
    push hl                                       ; $6f00: $e5
    push hl                                       ; $6f01: $e5
    push hl                                       ; $6f02: $e5
    push hl                                       ; $6f03: $e5
    and $e6                                       ; $6f04: $e6 $e6
    and $e7                                       ; $6f06: $e6 $e7
    add sp, -$18                                  ; $6f08: $e8 $e8
    add sp, -$17                                  ; $6f0a: $e8 $e9
    add hl, bc                                    ; $6f0c: $09
    add hl, bc                                    ; $6f0d: $09
    add hl, bc                                    ; $6f0e: $09
    add hl, bc                                    ; $6f0f: $09
    adc [hl]                                      ; $6f10: $8e
    adc [hl]                                      ; $6f11: $8e
    xor [hl]                                      ; $6f12: $ae
    xor [hl]                                      ; $6f13: $ae
    adc [hl]                                      ; $6f14: $8e
    adc [hl]                                      ; $6f15: $8e
    xor [hl]                                      ; $6f16: $ae
    adc [hl]                                      ; $6f17: $8e
    adc [hl]                                      ; $6f18: $8e
    adc [hl]                                      ; $6f19: $8e
    xor [hl]                                      ; $6f1a: $ae
    adc [hl]                                      ; $6f1b: $8e
    cp h                                          ; $6f1c: $bc
    inc sp                                        ; $6f1d: $33
    ld a, b                                       ; $6f1e: $78
    ld e, [hl]                                    ; $6f1f: $5e
    jp c, $ebea                                   ; $6f20: $da $ea $eb

    db $ec                                        ; $6f23: $ec
    db $ed                                        ; $6f24: $ed
    xor $ef                                       ; $6f25: $ee $ef
    ldh a, [$e2]                                  ; $6f27: $f0 $e2
    pop hl                                        ; $6f29: $e1
    ldh [$df], a                                  ; $6f2a: $e0 $df
    ld l, c                                       ; $6f2c: $69
    ld bc, $6141                                  ; $6f2d: $01 $41 $61
    xor [hl]                                      ; $6f30: $ae
    dec bc                                        ; $6f31: $0b
    dec bc                                        ; $6f32: $0b
    dec bc                                        ; $6f33: $0b
    adc [hl]                                      ; $6f34: $8e
    dec bc                                        ; $6f35: $0b
    dec bc                                        ; $6f36: $0b
    dec bc                                        ; $6f37: $0b
    xor [hl]                                      ; $6f38: $ae
    dec hl                                        ; $6f39: $2b
    dec hl                                        ; $6f3a: $2b
    dec hl                                        ; $6f3b: $2b
    pop af                                        ; $6f3c: $f1
    ld a, [c]                                     ; $6f3d: $f2
    di                                            ; $6f3e: $f3
    ld a, [c]                                     ; $6f3f: $f2
    db $f4                                        ; $6f40: $f4
    push af                                       ; $6f41: $f5
    or $f7                                        ; $6f42: $f6 $f7
    ld hl, sp-$07                                 ; $6f44: $f8 $f9
    ld a, [$fcfb]                                 ; $6f46: $fa $fb $fc
    db $fd                                        ; $6f49: $fd
    ld h, e                                       ; $6f4a: $63
    ld h, d                                       ; $6f4b: $62
    dec bc                                        ; $6f4c: $0b
    dec bc                                        ; $6f4d: $0b
    dec bc                                        ; $6f4e: $0b
    ld l, e                                       ; $6f4f: $6b
    dec bc                                        ; $6f50: $0b
    dec bc                                        ; $6f51: $0b
    dec bc                                        ; $6f52: $0b
    dec bc                                        ; $6f53: $0b
    dec bc                                        ; $6f54: $0b
    dec bc                                        ; $6f55: $0b
    ld a, [bc]                                    ; $6f56: $0a
    ld a, [bc]                                    ; $6f57: $0a
    dec bc                                        ; $6f58: $0b
    ld a, [bc]                                    ; $6f59: $0a
    ld b, b                                       ; $6f5a: $40
    nop                                           ; $6f5b: $00
    cp $ff                                        ; $6f5c: $fe $ff
    nop                                           ; $6f5e: $00
    ld bc, $0302                                  ; $6f5f: $01 $02 $03
    inc b                                         ; $6f62: $04
    xor e                                         ; $6f63: $ab
    ld [hl], e                                    ; $6f64: $73
    ld h, d                                       ; $6f65: $62
    rra                                           ; $6f66: $1f
    ccf                                           ; $6f67: $3f
    inc l                                         ; $6f68: $2c
    ld h, d                                       ; $6f69: $62
    inc l                                         ; $6f6a: $2c
    ld [hl], h                                    ; $6f6b: $74
    dec bc                                        ; $6f6c: $0b
    dec bc                                        ; $6f6d: $0b
    dec bc                                        ; $6f6e: $0b
    adc [hl]                                      ; $6f6f: $8e
    ld a, [bc]                                    ; $6f70: $0a
    ld a, [bc]                                    ; $6f71: $0a
    ld a, [bc]                                    ; $6f72: $0a
    add hl, hl                                    ; $6f73: $29
    nop                                           ; $6f74: $00
    jr nz, @+$23                                  ; $6f75: $20 $21

    ld h, c                                       ; $6f77: $61
    ld bc, $0161                                  ; $6f78: $01 $61 $01
    ld bc, $0605                                  ; $6f7b: $01 $05 $06
    ld b, $05                                     ; $6f7e: $06 $05
    db $e3                                        ; $6f80: $e3
    db $e4                                        ; $6f81: $e4
    ld [hl], c                                    ; $6f82: $71
    db $e4                                        ; $6f83: $e4
    adc b                                         ; $6f84: $88
    adc c                                         ; $6f85: $89
    sub b                                         ; $6f86: $90
    rra                                           ; $6f87: $1f
    cp e                                          ; $6f88: $bb
    sub d                                         ; $6f89: $92
    ld [hl], l                                    ; $6f8a: $75
    ld hl, $0e8e                                  ; $6f8b: $21 $8e $0e
    ld c, $ae                                     ; $6f8e: $0e $ae
    ld c, c                                       ; $6f90: $49
    ld c, c                                       ; $6f91: $49
    ld hl, $4949                                  ; $6f92: $21 $49 $49
    ld c, c                                       ; $6f95: $49
    ld c, c                                       ; $6f96: $49
    ld bc, $6909                                  ; $6f97: $01 $09 $69
    ld b, c                                       ; $6f9a: $41
    ld bc, $0701                                  ; $6f9b: $01 $01 $07
    ld [$7109], sp                                ; $6f9e: $08 $09 $71
    ld a, [bc]                                    ; $6fa1: $0a
    dec bc                                        ; $6fa2: $0b
    inc c                                         ; $6fa3: $0c
    ld [hl], e                                    ; $6fa4: $73
    rra                                           ; $6fa5: $1f
    ld h, d                                       ; $6fa6: $62
    ld [hl], e                                    ; $6fa7: $73
    inc sp                                        ; $6fa8: $33
    inc l                                         ; $6fa9: $2c
    ld h, d                                       ; $6faa: $62
    inc l                                         ; $6fab: $2c
    xor [hl]                                      ; $6fac: $ae
    dec bc                                        ; $6fad: $0b
    dec bc                                        ; $6fae: $0b
    dec bc                                        ; $6faf: $0b
    ld hl, $0a0a                                  ; $6fb0: $21 $0a $0a
    ld a, [bc]                                    ; $6fb3: $0a
    jr nz, jr_079_6fb7                            ; $6fb4: $20 $01

    nop                                           ; $6fb6: $00

jr_079_6fb7:
    jr nz, jr_079_6fda                            ; $6fb7: $20 $21

    ld hl, $2141                                  ; $6fb9: $21 $41 $21
    dec c                                         ; $6fbc: $0d
    ld h, e                                       ; $6fbd: $63
    ld [hl], d                                    ; $6fbe: $72
    ld c, $0f                                     ; $6fbf: $0e $0f
    ld c, $62                                     ; $6fc1: $0e $62
    inc a                                         ; $6fc3: $3c
    db $10                                        ; $6fc4: $10
    ld de, $6969                                  ; $6fc5: $11 $69 $69
    ld [de], a                                    ; $6fc8: $12
    ld l, [hl]                                    ; $6fc9: $6e
    ld de, $0a21                                  ; $6fca: $11 $21 $0a
    ld b, b                                       ; $6fcd: $40
    nop                                           ; $6fce: $00
    ld [$2808], sp                                ; $6fcf: $08 $08 $28
    jr nz, @+$23                                  ; $6fd2: $20 $21

    ld [$2028], sp                                ; $6fd4: $08 $28 $20
    jr nz, jr_079_6fe1                            ; $6fd7: $20 $08

    nop                                           ; $6fd9: $00

jr_079_6fda:
    jr z, @+$22                                   ; $6fda: $28 $20

    add l                                         ; $6fdc: $85
    ld [hl-], a                                   ; $6fdd: $32
    ld l, $86                                     ; $6fde: $2e $86
    ld [hl], c                                    ; $6fe0: $71

jr_079_6fe1:
    ld [bc], a                                    ; $6fe1: $02
    inc [hl]                                      ; $6fe2: $34
    ld b, e                                       ; $6fe3: $43
    jr nz, jr_079_7005                            ; $6fe4: $20 $1f

    dec e                                         ; $6fe6: $1d
    jr z, jr_079_7049                             ; $6fe7: $28 $60

    ld e, [hl]                                    ; $6fe9: $5e
    ld a, b                                       ; $6fea: $78
    inc sp                                        ; $6feb: $33
    ld [$4140], sp                                ; $6fec: $08 $40 $41
    add hl, bc                                    ; $6fef: $09
    ld hl, $4140                                  ; $6ff0: $21 $40 $41
    ld bc, $2120                                  ; $6ff3: $01 $20 $21
    ld hl, $4161                                  ; $6ff6: $21 $61 $41
    ld b, c                                       ; $6ff9: $41
    ld h, c                                       ; $6ffa: $61
    ld hl, $848b                                  ; $6ffb: $21 $8b $84
    ld a, [hl+]                                   ; $6ffe: $2a
    inc sp                                        ; $6fff: $33
    ccf                                           ; $7000: $3f
    add h                                         ; $7001: $84
    xor h                                         ; $7002: $ac
    ld [hl], c                                    ; $7003: $71
    ld b, c                                       ; $7004: $41

jr_079_7005:
    ld a, $2e                                     ; $7005: $3e $2e
    ccf                                           ; $7007: $3f
    add [hl]                                      ; $7008: $86
    ccf                                           ; $7009: $3f
    and [hl]                                      ; $700a: $a6
    ccf                                           ; $700b: $3f
    ld l, c                                       ; $700c: $69
    ld c, c                                       ; $700d: $49
    ld bc, $0141                                  ; $700e: $01 $41 $01
    add hl, hl                                    ; $7011: $29
    ld c, c                                       ; $7012: $49
    ld h, c                                       ; $7013: $61
    ld hl, $4121                                  ; $7014: $21 $21 $41
    ld b, c                                       ; $7017: $41
    add hl, bc                                    ; $7018: $09
    ld bc, $0109                                  ; $7019: $01 $09 $01
    dec a                                         ; $701c: $3d
    ld l, $32                                     ; $701d: $2e $32
    add l                                         ; $701f: $85
    ld a, [hl+]                                   ; $7020: $2a
    add [hl]                                      ; $7021: $86
    ld b, b                                       ; $7022: $40
    ld l, $3d                                     ; $7023: $2e $3d
    xor l                                         ; $7025: $ad
    ld hl, $9375                                  ; $7026: $21 $75 $93
    or h                                          ; $7029: $b4
    cpl                                           ; $702a: $2f
    jr nc, @+$23                                  ; $702b: $30 $21

    ld h, c                                       ; $702d: $61
    ld h, b                                       ; $702e: $60
    jr z, @+$23                                   ; $702f: $28 $21

    add hl, hl                                    ; $7031: $29
    ld bc, $0161                                  ; $7032: $01 $61 $01
    add hl, hl                                    ; $7035: $29
    ld hl, $0961                                  ; $7036: $21 $61 $09
    add hl, hl                                    ; $7039: $29
    ld bc, $2c01                                  ; $703a: $01 $01 $2c
    ld l, d                                       ; $703d: $6a
    halt                                          ; $703e: $76
    dec b                                         ; $703f: $05
    ld l, $2c                                     ; $7040: $2e $2c
    inc [hl]                                      ; $7042: $34
    scf                                           ; $7043: $37
    ld l, $34                                     ; $7044: $2e $34
    add b                                         ; $7046: $80
    dec bc                                        ; $7047: $0b
    add c                                         ; $7048: $81

jr_079_7049:
    add b                                         ; $7049: $80
    ld h, a                                       ; $704a: $67
    ld l, b                                       ; $704b: $68
    ld hl, $2140                                  ; $704c: $21 $40 $21
    jr nz, @+$63                                  ; $704f: $20 $61

    jr nz, jr_079_70b3                            ; $7051: $20 $60

    ld h, b                                       ; $7053: $60
    ld h, c                                       ; $7054: $61
    ld h, b                                       ; $7055: $60
    ld [$0940], sp                                ; $7056: $08 $40 $09
    ld [$0000], sp                                ; $7059: $08 $00 $00
    ld h, b                                       ; $705c: $60
    ld hl, $3637                                  ; $705d: $21 $37 $36
    inc de                                        ; $7060: $13
    call nc, Call_079_646a                        ; $7061: $d4 $6a $64
    inc d                                         ; $7064: $14
    dec d                                         ; $7065: $15
    ld d, $17                                     ; $7066: $16 $17
    db $d3                                        ; $7068: $d3
    jp nc, $1918                                  ; $7069: $d2 $18 $19

    ld h, c                                       ; $706c: $61
    nop                                           ; $706d: $00
    ld h, b                                       ; $706e: $60
    ld h, b                                       ; $706f: $60
    dec bc                                        ; $7070: $0b
    dec bc                                        ; $7071: $0b
    ld b, b                                       ; $7072: $40
    nop                                           ; $7073: $00
    dec bc                                        ; $7074: $0b
    dec bc                                        ; $7075: $0b
    dec bc                                        ; $7076: $0b
    dec bc                                        ; $7077: $0b
    dec hl                                        ; $7078: $2b
    dec hl                                        ; $7079: $2b
    dec bc                                        ; $707a: $0b
    dec bc                                        ; $707b: $0b
    ld a, [c]                                     ; $707c: $f2
    di                                            ; $707d: $f3
    ld a, [de]                                    ; $707e: $1a
    dec de                                        ; $707f: $1b
    rst $30                                       ; $7080: $f7
    or $f5                                        ; $7081: $f6 $f5
    db $f4                                        ; $7083: $f4
    ei                                            ; $7084: $fb
    inc e                                         ; $7085: $1c
    dec e                                         ; $7086: $1d
    ld e, $62                                     ; $7087: $1e $62
    rra                                           ; $7089: $1f
    jr nz, @+$23                                  ; $708a: $20 $21

    ld c, e                                       ; $708c: $4b
    dec hl                                        ; $708d: $2b
    dec bc                                        ; $708e: $0b
    dec bc                                        ; $708f: $0b
    dec hl                                        ; $7090: $2b
    dec hl                                        ; $7091: $2b
    dec hl                                        ; $7092: $2b
    dec hl                                        ; $7093: $2b
    ld a, [hl+]                                   ; $7094: $2a
    dec bc                                        ; $7095: $0b
    dec bc                                        ; $7096: $0b
    dec bc                                        ; $7097: $0b
    jr nz, @+$0c                                  ; $7098: $20 $0a

    dec bc                                        ; $709a: $0b
    dec bc                                        ; $709b: $0b
    ld c, $22                                     ; $709c: $0e $22
    inc hl                                        ; $709e: $23
    inc h                                         ; $709f: $24
    dec l                                         ; $70a0: $2d
    ld l, c                                       ; $70a1: $69
    ld l, c                                       ; $70a2: $69
    ld de, $21a0                                  ; $70a3: $11 $a0 $21
    ld de, $116e                                  ; $70a6: $11 $6e $11
    ld l, c                                       ; $70a9: $69
    ld l, c                                       ; $70aa: $69
    ld [hl], b                                    ; $70ab: $70
    jr z, jr_079_70b6                             ; $70ac: $28 $08

    ld a, [bc]                                    ; $70ae: $0a
    ld a, [bc]                                    ; $70af: $0a
    ld hl, $0000                                  ; $70b0: $21 $00 $00

jr_079_70b3:
    ld [$0008], sp                                ; $70b3: $08 $08 $00

jr_079_70b6:
    ld [$4120], sp                                ; $70b6: $08 $20 $41
    ld b, b                                       ; $70b9: $40
    jr nz, jr_079_70dc                            ; $70ba: $20 $20

    dec h                                         ; $70bc: $25
    ld [hl], b                                    ; $70bd: $70
    ld l, c                                       ; $70be: $69
    ld l, c                                       ; $70bf: $69
    ld h, $64                                     ; $70c0: $26 $64
    ld l, c                                       ; $70c2: $69
    dec l                                         ; $70c3: $2d
    daa                                           ; $70c4: $27
    jr z, @+$36                                   ; $70c5: $28 $34

    ld sp, $3736                                  ; $70c7: $31 $36 $37
    ld [bc], a                                    ; $70ca: $02
    ld b, h                                       ; $70cb: $44
    ld [$0000], sp                                ; $70cc: $08 $00 $00
    ld h, b                                       ; $70cf: $60
    ld [$2020], sp                                ; $70d0: $08 $20 $20
    nop                                           ; $70d3: $00
    ld [$4008], sp                                ; $70d4: $08 $08 $40
    ld bc, $0000                                  ; $70d7: $01 $00 $00
    ld h, b                                       ; $70da: $60
    ld b, c                                       ; $70db: $41

jr_079_70dc:
    jr nz, jr_079_70fd                            ; $70dc: $20 $1f

    and h                                         ; $70de: $a4
    and l                                         ; $70df: $a5
    ld c, $29                                     ; $70e0: $0e $29
    ld [de], a                                    ; $70e2: $12
    xor b                                         ; $70e3: $a8
    inc bc                                        ; $70e4: $03
    ld [hl+], a                                   ; $70e5: $22
    ld [bc], a                                    ; $70e6: $02
    cp b                                          ; $70e7: $b8
    inc a                                         ; $70e8: $3c
    sub c                                         ; $70e9: $91
    inc l                                         ; $70ea: $2c
    dec a                                         ; $70eb: $3d
    ld h, c                                       ; $70ec: $61
    ld h, b                                       ; $70ed: $60
    ld c, c                                       ; $70ee: $49
    ld c, c                                       ; $70ef: $49
    ld [$0009], sp                                ; $70f0: $08 $09 $00
    ld l, c                                       ; $70f3: $69
    ld b, c                                       ; $70f4: $41
    ld b, c                                       ; $70f5: $41
    ld hl, $0169                                  ; $70f6: $21 $69 $01
    ld a, [bc]                                    ; $70f9: $0a
    ld bc, $8901                                  ; $70fa: $01 $01 $89

jr_079_70fd:
    adc b                                         ; $70fd: $88
    ld a, [hl+]                                   ; $70fe: $2a
    adc d                                         ; $70ff: $8a
    ld [hl], c                                    ; $7100: $71
    dec a                                         ; $7101: $3d
    or a                                          ; $7102: $b7
    sbc b                                         ; $7103: $98
    or [hl]                                       ; $7104: $b6
    or l                                          ; $7105: $b5
    ld [hl], h                                    ; $7106: $74
    or h                                          ; $7107: $b4
    ccf                                           ; $7108: $3f
    add h                                         ; $7109: $84
    ld b, c                                       ; $710a: $41
    ld a, $29                                     ; $710b: $3e $29
    add hl, hl                                    ; $710d: $29
    ld hl, $0149                                  ; $710e: $21 $49 $01
    ld bc, $6969                                  ; $7111: $01 $69 $69
    ld l, c                                       ; $7114: $69
    ld l, c                                       ; $7115: $69
    ld b, c                                       ; $7116: $41
    ld l, c                                       ; $7117: $69
    ld bc, $0129                                  ; $7118: $01 $29 $01
    ld bc, $9884                                  ; $711b: $01 $84 $98
    sub a                                         ; $711e: $97
    dec b                                         ; $711f: $05
    sub a                                         ; $7120: $97
    dec b                                         ; $7121: $05
    inc l                                         ; $7122: $2c
    dec l                                         ; $7123: $2d
    cpl                                           ; $7124: $2f
    jr nc, @+$36                                  ; $7125: $30 $34

    ld sp, $342e                                  ; $7127: $31 $2e $34
    ld [bc], a                                    ; $712a: $02
    ld b, h                                       ; $712b: $44
    ld l, c                                       ; $712c: $69
    add hl, hl                                    ; $712d: $29
    add hl, hl                                    ; $712e: $29
    ld b, c                                       ; $712f: $41
    ld l, c                                       ; $7130: $69
    ld bc, $0001                                  ; $7131: $01 $01 $00
    ld b, c                                       ; $7134: $41
    ld b, c                                       ; $7135: $41
    ld b, c                                       ; $7136: $41
    ld bc, $6161                                  ; $7137: $01 $61 $61
    ld h, b                                       ; $713a: $60
    ld b, c                                       ; $713b: $41
    ld [$1f05], sp                                ; $713c: $08 $05 $1f
    jr nz, @+$0a                                  ; $713f: $20 $08

    dec bc                                        ; $7141: $0b
    ld de, $365f                                  ; $7142: $11 $5f $36
    scf                                           ; $7145: $37
    dec sp                                        ; $7146: $3b
    sub c                                         ; $7147: $91
    ld [$5e04], sp                                ; $7148: $08 $04 $5e
    ld h, b                                       ; $714b: $60
    jr nz, @+$42                                  ; $714c: $20 $40

    ld b, b                                       ; $714e: $40
    ld b, c                                       ; $714f: $41
    jr nz, jr_079_7172                            ; $7150: $20 $20

    ld h, b                                       ; $7152: $60
    ld hl, $0000                                  ; $7153: $21 $00 $00
    ld hl, $600a                                  ; $7156: $21 $0a $60
    ld b, b                                       ; $7159: $40
    jr nz, @+$22                                  ; $715a: $20 $20

    adc h                                         ; $715c: $8c
    adc l                                         ; $715d: $8d
    ld l, $3e                                     ; $715e: $2e $3e
    adc [hl]                                      ; $7160: $8e
    adc a                                         ; $7161: $8f
    ld l, $40                                     ; $7162: $2e $40
    ld sp, $812f                                  ; $7164: $31 $2f $81
    sub b                                         ; $7167: $90
    ld hl, $3080                                  ; $7168: $21 $80 $30
    add [hl]                                      ; $716b: $86
    ld a, [bc]                                    ; $716c: $0a
    rrca                                          ; $716d: $0f
    ld b, c                                       ; $716e: $41
    ld hl, $0a0a                                  ; $716f: $21 $0a $0a

jr_079_7172:
    ld b, c                                       ; $7172: $41
    ld hl, $6021                                  ; $7173: $21 $21 $60
    add hl, hl                                    ; $7176: $29
    add hl, hl                                    ; $7177: $29
    ld b, b                                       ; $7178: $40
    ld c, c                                       ; $7179: $49
    ld hl, $4149                                  ; $717a: $21 $49 $41
    ld a, $86                                     ; $717d: $3e $86
    ld b, b                                       ; $717f: $40
    add [hl]                                      ; $7180: $86
    ccf                                           ; $7181: $3f
    add a                                         ; $7182: $87
    ld b, d                                       ; $7183: $42
    adc c                                         ; $7184: $89
    adc b                                         ; $7185: $88
    ccf                                           ; $7186: $3f
    add hl, hl                                    ; $7187: $29
    adc e                                         ; $7188: $8b
    add h                                         ; $7189: $84
    adc d                                         ; $718a: $8a
    ld a, [hl+]                                   ; $718b: $2a
    ld hl, $2921                                  ; $718c: $21 $21 $29
    ld bc, $0109                                  ; $718f: $01 $09 $01
    add hl, hl                                    ; $7192: $29
    ld bc, $2929                                  ; $7193: $01 $29 $29
    ld bc, $2961                                  ; $7196: $01 $61 $29
    add hl, bc                                    ; $7199: $09
    add hl, hl                                    ; $719a: $29
    ld b, c                                       ; $719b: $41
    ld l, $33                                     ; $719c: $2e $33
    rra                                           ; $719e: $1f
    jr nz, jr_079_71e4                            ; $719f: $20 $43

    ld l, $02                                     ; $71a1: $2e $02
    ld b, h                                       ; $71a3: $44
    jr z, jr_079_71d4                             ; $71a4: $28 $2e

    rra                                           ; $71a6: $1f
    jr nz, jr_079_71dc                            ; $71a7: $20 $33

    cpl                                           ; $71a9: $2f
    ld e, [hl]                                    ; $71aa: $5e
    ld h, b                                       ; $71ab: $60
    ld h, c                                       ; $71ac: $61
    ld bc, $4140                                  ; $71ad: $01 $40 $41
    ld hl, $6061                                  ; $71b0: $21 $61 $60
    ld b, c                                       ; $71b3: $41
    ld b, c                                       ; $71b4: $41
    ld h, c                                       ; $71b5: $61
    ld bc, $0100                                  ; $71b6: $01 $00 $01
    ld h, b                                       ; $71b9: $60
    ld h, c                                       ; $71ba: $61
    ld h, c                                       ; $71bb: $61
    ld b, h                                       ; $71bc: $44
    inc [hl]                                      ; $71bd: $34
    dec sp                                        ; $71be: $3b
    inc bc                                        ; $71bf: $03
    ld h, c                                       ; $71c0: $61
    dec b                                         ; $71c1: $05
    ld de, $655f                                  ; $71c2: $11 $5f $65
    ld h, h                                       ; $71c5: $64
    ld h, e                                       ; $71c6: $63
    ld h, d                                       ; $71c7: $62
    ld l, b                                       ; $71c8: $68
    ld h, a                                       ; $71c9: $67
    ld h, [hl]                                    ; $71ca: $66
    inc a                                         ; $71cb: $3c
    jr nz, jr_079_722e                            ; $71cc: $20 $60

    ld h, b                                       ; $71ce: $60
    jr nz, jr_079_71f1                            ; $71cf: $20 $20

    ld b, b                                       ; $71d1: $40
    jr nz, jr_079_7234                            ; $71d2: $20 $60

jr_079_71d4:
    jr nz, jr_079_71f6                            ; $71d4: $20 $20

    jr nz, @+$22                                  ; $71d6: $20 $20

    jr nz, jr_079_71fa                            ; $71d8: $20 $20

    jr nz, jr_079_71fd                            ; $71da: $20 $21

jr_079_71dc:
    sub l                                         ; $71dc: $95
    sub h                                         ; $71dd: $94
    ld e, [hl]                                    ; $71de: $5e
    inc sp                                        ; $71df: $33
    dec l                                         ; $71e0: $2d
    inc l                                         ; $71e1: $2c
    dec b                                         ; $71e2: $05
    dec hl                                        ; $71e3: $2b

jr_079_71e4:
    dec hl                                        ; $71e4: $2b
    dec b                                         ; $71e5: $05
    inc l                                         ; $71e6: $2c
    inc l                                         ; $71e7: $2c
    ld b, h                                       ; $71e8: $44
    ld [bc], a                                    ; $71e9: $02
    inc [hl]                                      ; $71ea: $34
    ld l, $28                                     ; $71eb: $2e $28
    jr z, @+$23                                   ; $71ed: $28 $21

    ld h, c                                       ; $71ef: $61
    ld h, b                                       ; $71f0: $60

jr_079_71f1:
    ld h, b                                       ; $71f1: $60
    ld h, c                                       ; $71f2: $61
    jr nz, jr_079_71f5                            ; $71f3: $20 $00

jr_079_71f5:
    nop                                           ; $71f5: $00

jr_079_71f6:
    nop                                           ; $71f6: $00
    ld bc, $4061                                  ; $71f7: $01 $61 $40

jr_079_71fa:
    ld b, c                                       ; $71fa: $41
    ld b, c                                       ; $71fb: $41
    ld a, [hl+]                                   ; $71fc: $2a

jr_079_71fd:
    add [hl]                                      ; $71fd: $86
    sub d                                         ; $71fe: $92
    ld a, $3c                                     ; $71ff: $3e $3c
    dec a                                         ; $7201: $3d
    ld l, $66                                     ; $7202: $2e $66
    dec a                                         ; $7204: $3d
    ccf                                           ; $7205: $3f
    add c                                         ; $7206: $81
    ld a, $3e                                     ; $7207: $3e $3e
    ld b, c                                       ; $7209: $41
    add h                                         ; $720a: $84
    ccf                                           ; $720b: $3f
    ld hl, $2929                                  ; $720c: $21 $29 $29
    ld bc, $0101                                  ; $720f: $01 $01 $01
    ld h, c                                       ; $7212: $61
    ld hl, $0101                                  ; $7213: $21 $01 $01
    add hl, bc                                    ; $7216: $09
    ld bc, $2121                                  ; $7217: $01 $21 $21
    add hl, bc                                    ; $721a: $09
    ld hl, $322e                                  ; $721b: $21 $2e $32
    dec sp                                        ; $721e: $3b
    inc bc                                        ; $721f: $03
    ld hl, $5f60                                  ; $7220: $21 $60 $5f
    ld e, a                                       ; $7223: $5f
    add l                                         ; $7224: $85
    ld [hl], l                                    ; $7225: $75
    ld h, e                                       ; $7226: $63
    ld h, d                                       ; $7227: $62
    dec a                                         ; $7228: $3d
    inc l                                         ; $7229: $2c
    ld h, [hl]                                    ; $722a: $66
    inc a                                         ; $722b: $3c
    ld h, c                                       ; $722c: $61
    ld b, c                                       ; $722d: $41

jr_079_722e:
    ld h, c                                       ; $722e: $61
    jr nz, jr_079_7292                            ; $722f: $20 $61

    ld bc, $6060                                  ; $7231: $01 $60 $60

jr_079_7234:
    ld l, c                                       ; $7234: $69
    ld h, b                                       ; $7235: $60
    ld hl, $2120                                  ; $7236: $21 $20 $21
    ld hl, $2121                                  ; $7239: $21 $21 $21
    dec sp                                        ; $723c: $3b
    ld de, $3637                                  ; $723d: $11 $37 $36
    ld c, $11                                     ; $7240: $0e $11
    dec bc                                        ; $7242: $0b
    ld [$3b03], sp                                ; $7243: $08 $03 $3b
    inc b                                         ; $7246: $04
    ld [$663c], sp                                ; $7247: $08 $3c $66
    ld h, a                                       ; $724a: $67
    ld l, b                                       ; $724b: $68
    ld bc, $6028                                  ; $724c: $01 $28 $60
    ld h, b                                       ; $724f: $60
    ld [$4040], sp                                ; $7250: $08 $40 $40
    ld b, b                                       ; $7253: $40
    ld b, c                                       ; $7254: $41
    ld bc, $4060                                  ; $7255: $01 $60 $40
    ld bc, $0000                                  ; $7258: $01 $00 $00
    nop                                           ; $725b: $00
    ld l, c                                       ; $725c: $69
    ld l, d                                       ; $725d: $6a
    ld e, [hl]                                    ; $725e: $5e
    ld h, b                                       ; $725f: $60
    inc a                                         ; $7260: $3c
    inc l                                         ; $7261: $2c
    ld [bc], a                                    ; $7262: $02
    ld b, h                                       ; $7263: $44
    ld l, c                                       ; $7264: $69
    inc [hl]                                      ; $7265: $34
    inc b                                         ; $7266: $04
    ld [$8021], sp                                ; $7267: $08 $21 $80
    dec bc                                        ; $726a: $0b
    ld [$4040], sp                                ; $726b: $08 $40 $40
    jr nz, jr_079_7290                            ; $726e: $20 $20

    ld bc, $6020                                  ; $7270: $01 $20 $60
    ld b, b                                       ; $7273: $40
    nop                                           ; $7274: $00
    ld h, b                                       ; $7275: $60
    jr nz, jr_079_7278                            ; $7276: $20 $00

jr_079_7278:
    nop                                           ; $7278: $00
    ld [$0000], sp                                ; $7279: $08 $00 $00
    ld sp, $3734                                  ; $727c: $31 $34 $37
    ld [hl], $2d                                  ; $727f: $36 $2d
    inc l                                         ; $7281: $2c
    inc b                                         ; $7282: $04
    ld [$052b], sp                                ; $7283: $08 $2b $05
    dec bc                                        ; $7286: $0b
    ld [$0244], sp                                ; $7287: $08 $44 $02
    scf                                           ; $728a: $37
    ld [hl], $61                                  ; $728b: $36 $61
    ld hl, $2020                                  ; $728d: $21 $20 $20

jr_079_7290:
    ld h, b                                       ; $7290: $60
    ld h, c                                       ; $7291: $61

jr_079_7292:
    jr nz, jr_079_7294                            ; $7292: $20 $00

jr_079_7294:
    nop                                           ; $7294: $00
    nop                                           ; $7295: $00
    nop                                           ; $7296: $00
    nop                                           ; $7297: $00
    ld h, c                                       ; $7298: $61
    ld b, b                                       ; $7299: $40
    jr nz, jr_079_72bc                            ; $729a: $20 $20

    ld h, l                                       ; $729c: $65
    ld h, h                                       ; $729d: $64
    dec sp                                        ; $729e: $3b
    inc bc                                        ; $729f: $03
    ld l, b                                       ; $72a0: $68
    ld h, a                                       ; $72a1: $67
    ld de, $615f                                  ; $72a2: $11 $5f $61
    ld [de], a                                    ; $72a5: $12
    add b                                         ; $72a6: $80
    ld hl, $6e6d                                  ; $72a7: $21 $6d $6e
    ld l, d                                       ; $72aa: $6a
    ld l, c                                       ; $72ab: $69
    jr nz, @+$22                                  ; $72ac: $20 $20

    ld h, b                                       ; $72ae: $60
    jr nz, jr_079_72d1                            ; $72af: $20 $20

    jr nz, @+$22                                  ; $72b1: $20 $20

    ld h, b                                       ; $72b3: $60
    jr nz, jr_079_72d6                            ; $72b4: $20 $20

    ld l, b                                       ; $72b6: $68
    jr nz, jr_079_72b9                            ; $72b7: $20 $00

jr_079_72b9:
    nop                                           ; $72b9: $00
    ld h, b                                       ; $72ba: $60
    ld h, b                                       ; $72bb: $60

jr_079_72bc:
    ld sp, $752c                                  ; $72bc: $31 $2c $75
    ld hl, $052d                                  ; $72bf: $21 $2d $05
    ld [hl], c                                    ; $72c2: $71
    dec b                                         ; $72c3: $05
    jr nc, @+$13                                  ; $72c4: $30 $11

    jr nc, @+$31                                  ; $72c6: $30 $2f

    ld [hl-], a                                   ; $72c8: $32
    dec sp                                        ; $72c9: $3b
    dec b                                         ; $72ca: $05
    sub a                                         ; $72cb: $97
    ld h, c                                       ; $72cc: $61
    ld bc, $0141                                  ; $72cd: $01 $41 $01
    ld h, b                                       ; $72d0: $60

jr_079_72d1:
    nop                                           ; $72d1: $00
    ld hl, $0121                                  ; $72d2: $21 $21 $01
    ld h, c                                       ; $72d5: $61

jr_079_72d6:
    ld hl, $0121                                  ; $72d6: $21 $21 $01
    ld hl, $0961                                  ; $72d9: $21 $61 $09
    inc sp                                        ; $72dc: $33
    add [hl]                                      ; $72dd: $86
    ccf                                           ; $72de: $3f
    ld [hl], c                                    ; $72df: $71
    inc sp                                        ; $72e0: $33
    ld b, d                                       ; $72e1: $42
    dec a                                         ; $72e2: $3d
    add h                                         ; $72e3: $84
    or h                                          ; $72e4: $b4
    ld [hl], h                                    ; $72e5: $74
    or l                                          ; $72e6: $b5
    or [hl]                                       ; $72e7: $b6
    sbc b                                         ; $72e8: $98
    or a                                          ; $72e9: $b7
    dec a                                         ; $72ea: $3d
    ld [hl], c                                    ; $72eb: $71
    ld hl, $2109                                  ; $72ec: $21 $09 $21
    ld hl, $2121                                  ; $72ef: $21 $21 $21
    ld hl, $0969                                  ; $72f2: $21 $69 $09
    ld hl, $0909                                  ; $72f5: $21 $09 $09
    add hl, bc                                    ; $72f8: $09
    add hl, bc                                    ; $72f9: $09
    ld h, c                                       ; $72fa: $61
    ld h, c                                       ; $72fb: $61
    ld l, $2d                                     ; $72fc: $2e $2d
    inc bc                                        ; $72fe: $03
    sbc a                                         ; $72ff: $9f
    dec e                                         ; $7300: $1d
    dec l                                         ; $7301: $2d
    ld l, d                                       ; $7302: $6a
    jr nc, @-$46                                  ; $7303: $30 $b8

    ld [bc], a                                    ; $7305: $02
    add b                                         ; $7306: $80
    ld hl, $12a8                                  ; $7307: $21 $a8 $12
    ld l, d                                       ; $730a: $6a
    ld l, c                                       ; $730b: $69
    ld h, c                                       ; $730c: $61
    ld bc, $0841                                  ; $730d: $01 $41 $08
    ld hl, $0121                                  ; $7310: $21 $21 $01
    ld b, c                                       ; $7313: $41
    add hl, bc                                    ; $7314: $09
    ld b, c                                       ; $7315: $41
    ld l, c                                       ; $7316: $69
    ld hl, $6009                                  ; $7317: $21 $09 $60
    ld h, b                                       ; $731a: $60
    ld h, b                                       ; $731b: $60
    dec sp                                        ; $731c: $3b
    jr nz, @+$07                                  ; $731d: $20 $05

    ld [$4496], sp                                ; $731f: $08 $96 $44
    scf                                           ; $7322: $37
    ld [hl], $60                                  ; $7323: $36 $60
    sub c                                         ; $7325: $91
    scf                                           ; $7326: $37
    ld [hl], $20                                  ; $7327: $36 $20
    rra                                           ; $7329: $1f
    dec bc                                        ; $732a: $0b
    ld [$6161], sp                                ; $732b: $08 $61 $61
    jr nz, jr_079_7370                            ; $732e: $20 $40

    ld c, b                                       ; $7330: $48
    ld h, c                                       ; $7331: $61
    ld h, b                                       ; $7332: $60
    ld h, b                                       ; $7333: $60
    ld b, c                                       ; $7334: $41
    ld a, [bc]                                    ; $7335: $0a
    ld h, b                                       ; $7336: $60
    ld h, b                                       ; $7337: $60
    ld h, c                                       ; $7338: $61
    ld h, b                                       ; $7339: $60
    ld b, b                                       ; $733a: $40
    ld b, b                                       ; $733b: $40
    ld h, c                                       ; $733c: $61
    ld [hl], b                                    ; $733d: $70
    inc l                                         ; $733e: $2c
    dec l                                         ; $733f: $2d
    ld h, l                                       ; $7340: $65
    ld h, h                                       ; $7341: $64
    inc [hl]                                      ; $7342: $34
    ld sp, $6768                                  ; $7343: $31 $68 $67
    add b                                         ; $7346: $80
    ld hl, $3736                                  ; $7347: $21 $36 $37
    inc [hl]                                      ; $734a: $34
    ld sp, $0020                                  ; $734b: $31 $20 $00

Jump_079_734e:
    nop                                           ; $734e: $00
    nop                                           ; $734f: $00
    jr nz, @+$22                                  ; $7350: $20 $20

    ld b, b                                       ; $7352: $40
    ld bc, $2020                                  ; $7353: $01 $20 $20
    jr z, jr_079_73b8                             ; $7356: $28 $60

    ld b, b                                       ; $7358: $40
    ld b, b                                       ; $7359: $40
    ld bc, $8041                                  ; $735a: $01 $41 $80
    ld [de], a                                    ; $735d: $12
    ld [hl-], a                                   ; $735e: $32
    and a                                         ; $735f: $a7
    rra                                           ; $7360: $1f
    dec e                                         ; $7361: $1d
    or e                                          ; $7362: $b3
    dec sp                                        ; $7363: $3b
    ld h, b                                       ; $7364: $60
    ld [hl], c                                    ; $7365: $71
    cp d                                          ; $7366: $ba
    ld [hl], c                                    ; $7367: $71
    inc bc                                        ; $7368: $03
    dec sp                                        ; $7369: $3b

jr_079_736a:
    ld h, d                                       ; $736a: $62
    ld [hl], h                                    ; $736b: $74
    add hl, bc                                    ; $736c: $09
    ld b, b                                       ; $736d: $40
    ld h, c                                       ; $736e: $61
    add hl, hl                                    ; $736f: $29

jr_079_7370:
    ld hl, $0921                                  ; $7370: $21 $21 $09
    ld b, c                                       ; $7373: $41
    ld bc, $0921                                  ; $7374: $01 $21 $09
    ld hl, $4100                                  ; $7377: $21 $00 $41
    ld bc, $2101                                  ; $737a: $01 $01 $21
    sub e                                         ; $737d: $93
    ccf                                           ; $737e: $3f
    and [hl]                                      ; $737f: $a6
    add [hl]                                      ; $7380: $86
    adc e                                         ; $7381: $8b
    add h                                         ; $7382: $84
    ld a, [hl+]                                   ; $7383: $2a
    sub b                                         ; $7384: $90
    adc c                                         ; $7385: $89
    adc b                                         ; $7386: $88
    add hl, hl                                    ; $7387: $29
    cp e                                          ; $7388: $bb
    sub d                                         ; $7389: $92
    cp h                                          ; $738a: $bc
    ld b, d                                       ; $738b: $42
    ld bc, $2129                                  ; $738c: $01 $29 $21
    add hl, hl                                    ; $738f: $29
    add hl, bc                                    ; $7390: $09
    ld l, c                                       ; $7391: $69
    ld c, c                                       ; $7392: $49
    ld bc, $6969                                  ; $7393: $01 $69 $69
    ld l, c                                       ; $7396: $69
    ld hl, $6909                                  ; $7397: $21 $09 $69
    add hl, bc                                    ; $739a: $09
    ld b, c                                       ; $739b: $41
    and l                                         ; $739c: $a5
    and h                                         ; $739d: $a4
    inc l                                         ; $739e: $2c
    inc [hl]                                      ; $739f: $34
    inc sp                                        ; $73a0: $33
    ld a, b                                       ; $73a1: $78
    ld h, [hl]                                    ; $73a2: $66
    cp c                                          ; $73a3: $b9
    jr z, jr_079_73c3                             ; $73a4: $28 $1d

    ld h, e                                       ; $73a6: $63
    cp l                                          ; $73a7: $bd
    ld b, e                                       ; $73a8: $43
    inc [hl]                                      ; $73a9: $34
    jr nc, jr_079_736a                            ; $73aa: $30 $be

    add hl, hl                                    ; $73ac: $29
    add hl, hl                                    ; $73ad: $29
    ld bc, $4141                                  ; $73ae: $01 $41 $41
    ld bc, $0a41                                  ; $73b1: $01 $41 $0a
    ld bc, $4141                                  ; $73b4: $01 $41 $41
    ld a, [bc]                                    ; $73b7: $0a

jr_079_73b8:
    ld h, c                                       ; $73b8: $61
    ld hl, $0a01                                  ; $73b9: $21 $01 $0a
    ld [$2c0b], sp                                ; $73bc: $08 $0b $2c
    dec l                                         ; $73bf: $2d
    ld [$0504], sp                                ; $73c0: $08 $04 $05

jr_079_73c3:
    dec hl                                        ; $73c3: $2b
    add $c7                                       ; $73c4: $c6 $c7
    ld l, c                                       ; $73c6: $69
    inc a                                         ; $73c7: $3c
    rrca                                          ; $73c8: $0f
    ld c, $1f                                     ; $73c9: $0e $1f
    ld l, c                                       ; $73cb: $69
    ld h, b                                       ; $73cc: $60
    ld h, b                                       ; $73cd: $60
    ld b, c                                       ; $73ce: $41
    ld b, b                                       ; $73cf: $40
    ld h, b                                       ; $73d0: $60
    ld b, b                                       ; $73d1: $40
    jr nz, jr_079_73f4                            ; $73d2: $20 $20

    ld [$2008], sp                                ; $73d4: $08 $08 $20
    ld hl, $2808                                  ; $73d7: $21 $08 $28
    ld b, b                                       ; $73da: $40
    jr nz, @+$61                                  ; $73db: $20 $5f

    ld de, $8630                                  ; $73dd: $11 $30 $86
    ld h, d                                       ; $73e0: $62
    ld h, e                                       ; $73e1: $63
    ld l, $3e                                     ; $73e2: $2e $3e
    ld b, h                                       ; $73e4: $44
    ld [bc], a                                    ; $73e5: $02
    inc [hl]                                      ; $73e6: $34
    ld b, e                                       ; $73e7: $43
    jr nz, jr_079_7409                            ; $73e8: $20 $1f

    dec e                                         ; $73ea: $1d
    jr z, jr_079_742d                             ; $73eb: $28 $40

    ld bc, $0961                                  ; $73ed: $01 $61 $09
    ld bc, $0100                                  ; $73f0: $01 $00 $01
    ld h, c                                       ; $73f3: $61

jr_079_73f4:
    ld h, c                                       ; $73f4: $61
    ld b, b                                       ; $73f5: $40
    ld b, c                                       ; $73f6: $41
    ld bc, $2120                                  ; $73f7: $01 $20 $21
    ld hl, $8b61                                  ; $73fa: $21 $61 $8b
    add h                                         ; $73fd: $84
    adc d                                         ; $73fe: $8a
    ld a, [hl+]                                   ; $73ff: $2a
    ld b, c                                       ; $7400: $41
    ld a, $3f                                     ; $7401: $3e $3f
    xor h                                         ; $7403: $ac
    ld b, d                                       ; $7404: $42
    add a                                         ; $7405: $87
    cp h                                          ; $7406: $bc
    sub d                                         ; $7407: $92
    add hl, hl                                    ; $7408: $29

jr_079_7409:
    ccf                                           ; $7409: $3f
    adc b                                         ; $740a: $88
    adc c                                         ; $740b: $89
    ld l, c                                       ; $740c: $69
    ld c, c                                       ; $740d: $49
    ld l, c                                       ; $740e: $69
    ld bc, $6161                                  ; $740f: $01 $61 $61
    ld hl, $2149                                  ; $7412: $21 $49 $21
    add hl, bc                                    ; $7415: $09
    ld l, c                                       ; $7416: $69
    add hl, bc                                    ; $7417: $09
    ld b, c                                       ; $7418: $41
    ld hl, $0909                                  ; $7419: $21 $09 $09
    inc sp                                        ; $741c: $33
    ld a, b                                       ; $741d: $78
    ld e, [hl]                                    ; $741e: $5e
    ld h, e                                       ; $741f: $63
    ld [hl], c                                    ; $7420: $71
    ld h, [hl]                                    ; $7421: $66
    dec b                                         ; $7422: $05
    adc a                                         ; $7423: $8f
    cp e                                          ; $7424: $bb
    ld l, $66                                     ; $7425: $2e $66
    adc l                                         ; $7427: $8d
    sub b                                         ; $7428: $90
    add c                                         ; $7429: $81
    ld a, $20                                     ; $742a: $3e $20
    ld b, c                                       ; $742c: $41

jr_079_742d:
    ld bc, $6121                                  ; $742d: $01 $21 $61
    ld h, c                                       ; $7430: $61
    ld bc, $6f20                                  ; $7431: $01 $20 $6f
    ld l, c                                       ; $7434: $69
    ld h, c                                       ; $7435: $61
    ld hl, $096a                                  ; $7436: $21 $6a $09
    add hl, bc                                    ; $7439: $09
    ld bc, $1041                                  ; $743a: $01 $41 $10
    ld h, e                                       ; $743d: $63
    ld de, $1221                                  ; $743e: $11 $21 $12
    ld l, [hl]                                    ; $7441: $6e
    ret z                                         ; $7442: $c8

    call nc, $cac9                                ; $7443: $d4 $c9 $ca
    rl l                                          ; $7446: $cb $15
    ld a, [hl+]                                   ; $7448: $2a
    ret nc                                        ; $7449: $d0

    pop de                                        ; $744a: $d1
    dec hl                                        ; $744b: $2b
    ld [$6040], sp                                ; $744c: $08 $40 $60
    jr nz, jr_079_7459                            ; $744f: $20 $08

    nop                                           ; $7451: $00
    dec bc                                        ; $7452: $0b
    dec hl                                        ; $7453: $2b
    ld [$6b0b], sp                                ; $7454: $08 $0b $6b
    dec hl                                        ; $7457: $2b
    dec bc                                        ; $7458: $0b

jr_079_7459:
    dec bc                                        ; $7459: $0b
    dec bc                                        ; $745a: $0b
    dec bc                                        ; $745b: $0b

jr_079_745c:
    ld h, b                                       ; $745c: $60
    ld e, [hl]                                    ; $745d: $5e
    ld a, b                                       ; $745e: $78
    inc sp                                        ; $745f: $33
    inc de                                        ; $7460: $13
    db $ec                                        ; $7461: $ec
    db $eb                                        ; $7462: $eb
    ld [$f014], a                                 ; $7463: $ea $14 $f0
    rst $28                                       ; $7466: $ef
    xor $2c                                       ; $7467: $ee $2c
    dec l                                         ; $7469: $2d
    ld l, $2f                                     ; $746a: $2e $2f
    ld b, c                                       ; $746c: $41
    ld b, c                                       ; $746d: $41
    ld h, c                                       ; $746e: $61
    ld hl, $2b2b                                  ; $746f: $21 $2b $2b
    dec hl                                        ; $7472: $2b
    dec hl                                        ; $7473: $2b
    dec hl                                        ; $7474: $2b
    dec hl                                        ; $7475: $2b
    dec hl                                        ; $7476: $2b
    dec hl                                        ; $7477: $2b
    dec bc                                        ; $7478: $0b
    dec bc                                        ; $7479: $0b
    dec bc                                        ; $747a: $0b
    dec bc                                        ; $747b: $0b
    push de                                       ; $747c: $d5
    sub $e3                                       ; $747d: $d6 $e3
    db $e4                                        ; $747f: $e4
    jr nc, jr_079_745c                            ; $7480: $30 $da

    push hl                                       ; $7482: $e5
    push hl                                       ; $7483: $e5
    ld sp, $e6de                                  ; $7484: $31 $de $e6
    rst $20                                       ; $7487: $e7
    ld [hl-], a                                   ; $7488: $32
    ld [c], a                                     ; $7489: $e2
    add sp, -$17                                  ; $748a: $e8 $e9
    add hl, bc                                    ; $748c: $09
    add hl, bc                                    ; $748d: $09
    add hl, bc                                    ; $748e: $09
    add hl, bc                                    ; $748f: $09
    dec bc                                        ; $7490: $0b
    adc [hl]                                      ; $7491: $8e
    adc [hl]                                      ; $7492: $8e
    xor [hl]                                      ; $7493: $ae
    dec bc                                        ; $7494: $0b
    adc [hl]                                      ; $7495: $8e
    adc [hl]                                      ; $7496: $8e
    adc [hl]                                      ; $7497: $8e
    dec bc                                        ; $7498: $0b
    adc [hl]                                      ; $7499: $8e
    adc [hl]                                      ; $749a: $8e
    adc [hl]                                      ; $749b: $8e
    sub $2e                                       ; $749c: $d6 $2e
    add b                                         ; $749e: $80
    inc de                                        ; $749f: $13
    jp c, $d8d9                                   ; $74a0: $da $d9 $d8

    rst $10                                       ; $74a3: $d7
    db $ed                                        ; $74a4: $ed
    db $dd                                        ; $74a5: $dd
    call c, $e2db                                 ; $74a6: $dc $db $e2
    pop hl                                        ; $74a9: $e1
    ldh [$df], a                                  ; $74aa: $e0 $df
    add hl, bc                                    ; $74ac: $09
    ld h, c                                       ; $74ad: $61
    ld l, c                                       ; $74ae: $69
    ld b, b                                       ; $74af: $40
    xor [hl]                                      ; $74b0: $ae
    dec hl                                        ; $74b1: $2b
    dec hl                                        ; $74b2: $2b
    dec hl                                        ; $74b3: $2b
    adc [hl]                                      ; $74b4: $8e
    dec hl                                        ; $74b5: $2b
    dec hl                                        ; $74b6: $2b
    dec hl                                        ; $74b7: $2b
    xor [hl]                                      ; $74b8: $ae
    dec hl                                        ; $74b9: $2b
    dec hl                                        ; $74ba: $2b
    dec hl                                        ; $74bb: $2b
    inc sp                                        ; $74bc: $33
    pop af                                        ; $74bd: $f1
    ld a, [c]                                     ; $74be: $f2
    rst $18                                       ; $74bf: $df
    inc [hl]                                      ; $74c0: $34
    dec [hl]                                      ; $74c1: $35
    db $d3                                        ; $74c2: $d3
    ld [hl], $37                                  ; $74c3: $36 $37
    jr c, jr_079_7500                             ; $74c5: $38 $39

    ld a, [hl-]                                   ; $74c7: $3a
    ld e, $1d                                     ; $74c8: $1e $1d
    inc e                                         ; $74ca: $1c
    dec sp                                        ; $74cb: $3b
    dec bc                                        ; $74cc: $0b
    dec bc                                        ; $74cd: $0b
    dec bc                                        ; $74ce: $0b
    ld l, e                                       ; $74cf: $6b
    dec bc                                        ; $74d0: $0b
    dec bc                                        ; $74d1: $0b
    ld l, e                                       ; $74d2: $6b
    dec bc                                        ; $74d3: $0b
    dec bc                                        ; $74d4: $0b
    dec bc                                        ; $74d5: $0b
    dec bc                                        ; $74d6: $0b
    dec bc                                        ; $74d7: $0b
    dec hl                                        ; $74d8: $2b
    dec hl                                        ; $74d9: $2b
    dec hl                                        ; $74da: $2b
    ld a, [bc]                                    ; $74db: $0a
    inc a                                         ; $74dc: $3c
    dec a                                         ; $74dd: $3d
    cp $ff                                        ; $74de: $fe $ff
    ld a, $3f                                     ; $74e0: $3e $3f
    ld [bc], a                                    ; $74e2: $02
    inc bc                                        ; $74e3: $03
    ld b, b                                       ; $74e4: $40
    ld h, d                                       ; $74e5: $62
    ld c, $1f                                     ; $74e6: $0e $1f
    ld h, d                                       ; $74e8: $62
    rra                                           ; $74e9: $1f
    dec e                                         ; $74ea: $1d
    ld a, $0b                                     ; $74eb: $3e $0b
    dec bc                                        ; $74ed: $0b
    dec bc                                        ; $74ee: $0b
    dec bc                                        ; $74ef: $0b
    dec bc                                        ; $74f0: $0b
    ld a, [bc]                                    ; $74f1: $0a
    ld a, [bc]                                    ; $74f2: $0a
    ld a, [bc]                                    ; $74f3: $0a
    ld a, [bc]                                    ; $74f4: $0a
    jr nz, @+$2a                                  ; $74f5: $20 $28

    ld hl, $2120                                  ; $74f7: $21 $20 $21
    ld hl, $0021                                  ; $74fa: $21 $21 $00
    ld bc, $0505                                  ; $74fd: $01 $05 $05

jr_079_7500:
    inc b                                         ; $7500: $04
    xor e                                         ; $7501: $ab
    db $e3                                        ; $7502: $e3
    db $e4                                        ; $7503: $e4
    halt                                          ; $7504: $76
    ccf                                           ; $7505: $3f
    adc b                                         ; $7506: $88
    adc c                                         ; $7507: $89
    xor e                                         ; $7508: $ab
    xor d                                         ; $7509: $aa
    ld a, $3f                                     ; $750a: $3e $3f
    dec bc                                        ; $750c: $0b
    adc [hl]                                      ; $750d: $8e
    adc [hl]                                      ; $750e: $8e
    xor [hl]                                      ; $750f: $ae
    ld a, [bc]                                    ; $7510: $0a
    add hl, hl                                    ; $7511: $29
    ld c, c                                       ; $7512: $49
    ld c, c                                       ; $7513: $49
    ld h, c                                       ; $7514: $61
    ld h, c                                       ; $7515: $61
    ld c, c                                       ; $7516: $49
    ld c, c                                       ; $7517: $49
    add hl, hl                                    ; $7518: $29
    add hl, hl                                    ; $7519: $29
    ld hl, $0121                                  ; $751a: $21 $21 $01
    rlca                                          ; $751d: $07
    ld [$7109], sp                                ; $751e: $08 $09 $71
    ld a, [bc]                                    ; $7521: $0a
    dec bc                                        ; $7522: $0b
    inc c                                         ; $7523: $0c
    sub b                                         ; $7524: $90
    rra                                           ; $7525: $1f
    ld h, d                                       ; $7526: $62
    ld [hl], e                                    ; $7527: $73
    dec a                                         ; $7528: $3d
    inc l                                         ; $7529: $2c
    ld h, d                                       ; $752a: $62
    inc l                                         ; $752b: $2c
    xor [hl]                                      ; $752c: $ae
    dec bc                                        ; $752d: $0b
    dec bc                                        ; $752e: $0b
    dec bc                                        ; $752f: $0b
    ld hl, $0a0a                                  ; $7530: $21 $0a $0a
    ld a, [bc]                                    ; $7533: $0a
    ld c, c                                       ; $7534: $49
    ld bc, $2000                                  ; $7535: $01 $00 $20
    ld hl, $4121                                  ; $7538: $21 $21 $41
    ld hl, $c0bf                                  ; $753b: $21 $bf $c0
    inc b                                         ; $753e: $04
    ld [$c2c1], sp                                ; $753f: $08 $c1 $c2
    ld [bc], a                                    ; $7542: $02
    ld b, h                                       ; $7543: $44
    jp $05c4                                      ; $7544: $c3 $c4 $05


    ld h, c                                       ; $7547: $61
    push bc                                       ; $7548: $c5
    ld e, a                                       ; $7549: $5f
    ld h, h                                       ; $754a: $64
    ld h, l                                       ; $754b: $65
    ld a, [bc]                                    ; $754c: $0a
    ld a, [bc]                                    ; $754d: $0a
    ld h, b                                       ; $754e: $60
    ld b, b                                       ; $754f: $40
    ld a, [bc]                                    ; $7550: $0a
    rrca                                          ; $7551: $0f
    jr nz, jr_079_7554                            ; $7552: $20 $00

jr_079_7554:
    rrca                                          ; $7554: $0f
    ld a, [bc]                                    ; $7555: $0a
    ld h, b                                       ; $7556: $60
    nop                                           ; $7557: $00
    ld a, [bc]                                    ; $7558: $0a
    ld b, b                                       ; $7559: $40
    nop                                           ; $755a: $00
    nop                                           ; $755b: $00
    ld de, $6711                                  ; $755c: $11 $11 $67
    ld l, b                                       ; $755f: $68
    and e                                         ; $7560: $a3
    ld h, e                                       ; $7561: $63
    ld [hl], l                                    ; $7562: $75
    ld h, h                                       ; $7563: $64
    xor c                                         ; $7564: $a9
    ld h, [hl]                                    ; $7565: $66
    ld [hl], d                                    ; $7566: $72
    ld [$6969], sp                                ; $7567: $08 $69 $69
    ld h, h                                       ; $756a: $64
    ld l, b                                       ; $756b: $68
    nop                                           ; $756c: $00
    nop                                           ; $756d: $00
    nop                                           ; $756e: $00
    nop                                           ; $756f: $00
    ld a, [hl+]                                   ; $7570: $2a
    nop                                           ; $7571: $00
    ld b, b                                       ; $7572: $40
    nop                                           ; $7573: $00

Jump_079_7574:
    ld a, [hl+]                                   ; $7574: $2a
    nop                                           ; $7575: $00
    ld b, b                                       ; $7576: $40
    ld b, b                                       ; $7577: $40
    ld b, b                                       ; $7578: $40
    nop                                           ; $7579: $00
    nop                                           ; $757a: $00
    nop                                           ; $757b: $00
    jr nc, jr_079_75aa                            ; $757c: $30 $2c

    ld l, c                                       ; $757e: $69
    ld [$cccd], sp                                ; $757f: $08 $cd $cc
    ld l, d                                       ; $7582: $6a
    ld h, h                                       ; $7583: $64
    rst $08                                       ; $7584: $cf
    adc $16                                       ; $7585: $ce $16
    rla                                           ; $7587: $17
    db $d3                                        ; $7588: $d3
    jp nc, $1918                                  ; $7589: $d2 $18 $19

    ld bc, $0020                                  ; $758c: $01 $20 $00
    nop                                           ; $758f: $00
    dec hl                                        ; $7590: $2b
    dec hl                                        ; $7591: $2b
    ld b, b                                       ; $7592: $40
    nop                                           ; $7593: $00
    dec hl                                        ; $7594: $2b
    dec hl                                        ; $7595: $2b
    dec bc                                        ; $7596: $0b
    dec bc                                        ; $7597: $0b
    dec hl                                        ; $7598: $2b
    dec hl                                        ; $7599: $2b
    dec bc                                        ; $759a: $0b
    dec bc                                        ; $759b: $0b
    ld a, [c]                                     ; $759c: $f2
    di                                            ; $759d: $f3
    ld a, [de]                                    ; $759e: $1a
    dec de                                        ; $759f: $1b
    rst $30                                       ; $75a0: $f7
    or $f5                                        ; $75a1: $f6 $f5
    db $f4                                        ; $75a3: $f4
    ei                                            ; $75a4: $fb
    ld a, [$f8f9]                                 ; $75a5: $fa $f9 $f8
    ld h, d                                       ; $75a8: $62
    ld h, e                                       ; $75a9: $63

jr_079_75aa:
    db $fd                                        ; $75aa: $fd
    db $fc                                        ; $75ab: $fc
    ld c, e                                       ; $75ac: $4b
    dec hl                                        ; $75ad: $2b
    dec bc                                        ; $75ae: $0b
    dec bc                                        ; $75af: $0b
    dec hl                                        ; $75b0: $2b
    dec hl                                        ; $75b1: $2b
    dec hl                                        ; $75b2: $2b
    dec hl                                        ; $75b3: $2b
    ld a, [hl+]                                   ; $75b4: $2a
    ld a, [hl+]                                   ; $75b5: $2a
    dec hl                                        ; $75b6: $2b
    dec hl                                        ; $75b7: $2b
    jr nz, @+$62                                  ; $75b8: $20 $60

    ld a, [hl+]                                   ; $75ba: $2a
    dec hl                                        ; $75bb: $2b
    ld hl, $1f20                                  ; $75bc: $21 $20 $1f
    add l                                         ; $75bf: $85
    inc h                                         ; $75c0: $24
    inc hl                                        ; $75c1: $23
    ld [hl+], a                                   ; $75c2: $22
    cpl                                           ; $75c3: $2f
    add $c7                                       ; $75c4: $c6 $c7
    ld l, c                                       ; $75c6: $69
    ld l, c                                       ; $75c7: $69
    rrca                                          ; $75c8: $0f
    ld c, $62                                     ; $75c9: $0e $62
    inc a                                         ; $75cb: $3c
    dec hl                                        ; $75cc: $2b
    dec hl                                        ; $75cd: $2b
    ld a, [hl+]                                   ; $75ce: $2a
    jr z, jr_079_75fb                             ; $75cf: $28 $2a

    ld a, [hl+]                                   ; $75d1: $2a
    jr z, jr_079_7634                             ; $75d2: $28 $60

    ld [$2008], sp                                ; $75d4: $08 $08 $20
    nop                                           ; $75d7: $00
    ld [$2028], sp                                ; $75d8: $08 $28 $20
    ld hl, $720e                                  ; $75db: $21 $0e $72
    ld h, [hl]                                    ; $75de: $66
    ld [hl], c                                    ; $75df: $71
    halt                                          ; $75e0: $76
    ld [hl], l                                    ; $75e1: $75
    ld [hl], c                                    ; $75e2: $71
    or b                                          ; $75e3: $b0
    dec hl                                        ; $75e4: $2b
    dec b                                         ; $75e5: $05
    inc l                                         ; $75e6: $2c
    or c                                          ; $75e7: $b1
    ld [hl], c                                    ; $75e8: $71
    ld [bc], a                                    ; $75e9: $02
    inc [hl]                                      ; $75ea: $34
    ld b, e                                       ; $75eb: $43
    jr z, jr_079_760e                             ; $75ec: $28 $20

    ld h, c                                       ; $75ee: $61
    ld bc, $2121                                  ; $75ef: $01 $21 $21
    ld hl, $0029                                  ; $75f2: $21 $29 $00
    nop                                           ; $75f5: $00
    nop                                           ; $75f6: $00
    add hl, hl                                    ; $75f7: $29
    ld hl, $4140                                  ; $75f8: $21 $40 $41

jr_079_75fb:
    ld bc, $3fac                                  ; $75fb: $01 $ac $3f
    ld a, $41                                     ; $75fe: $3e $41
    ld a, $8a                                     ; $7600: $3e $8a
    ccf                                           ; $7602: $3f
    add [hl]                                      ; $7603: $86
    xor a                                         ; $7604: $af
    xor [hl]                                      ; $7605: $ae
    ld a, [hl+]                                   ; $7606: $2a
    xor l                                         ; $7607: $ad
    ld b, d                                       ; $7608: $42
    add a                                         ; $7609: $87
    cp h                                          ; $760a: $bc
    sub d                                         ; $760b: $92
    add hl, hl                                    ; $760c: $29
    ld b, c                                       ; $760d: $41

jr_079_760e:
    ld bc, $2101                                  ; $760e: $01 $01 $21
    add hl, hl                                    ; $7611: $29
    ld hl, $2929                                  ; $7612: $21 $29 $29
    add hl, hl                                    ; $7615: $29
    ld h, c                                       ; $7616: $61
    add hl, hl                                    ; $7617: $29
    ld hl, $6909                                  ; $7618: $21 $09 $69
    add hl, bc                                    ; $761b: $09
    ld a, $2e                                     ; $761c: $3e $2e
    ld [hl-], a                                   ; $761e: $32
    add l                                         ; $761f: $85
    ld b, b                                       ; $7620: $40
    ld l, $30                                     ; $7621: $2e $30

jr_079_7623:
    cpl                                           ; $7623: $2f
    ld hl, $6375                                  ; $7624: $21 $75 $63
    ld h, d                                       ; $7627: $62
    cp e                                          ; $7628: $bb
    ld l, $66                                     ; $7629: $2e $66
    ld h, e                                       ; $762b: $63
    ld bc, $6061                                  ; $762c: $01 $61 $60
    jr z, jr_079_7632                             ; $762f: $28 $01

    ld h, c                                       ; $7631: $61

jr_079_7632:
    ld h, b                                       ; $7632: $60
    ld h, b                                       ; $7633: $60

jr_079_7634:
    ld hl, $2061                                  ; $7634: $21 $61 $20
    jr nz, @+$6b                                  ; $7637: $20 $69

    ld h, c                                       ; $7639: $61
    ld hl, $1060                                  ; $763a: $21 $60 $10
    ld de, $6969                                  ; $763d: $11 $69 $69
    ld [de], a                                    ; $7640: $12
    ld l, [hl]                                    ; $7641: $6e
    ld de, $2521                                  ; $7642: $11 $21 $25
    ld [hl], b                                    ; $7645: $70
    ld l, c                                       ; $7646: $69
    ld l, c                                       ; $7647: $69
    ld h, $64                                     ; $7648: $26 $64
    ld l, c                                       ; $764a: $69
    dec l                                         ; $764b: $2d
    ld [$2028], sp                                ; $764c: $08 $28 $20
    jr nz, @+$0a                                  ; $764f: $20 $08

    nop                                           ; $7651: $00
    jr z, @+$22                                   ; $7652: $28 $20

    ld [$0000], sp                                ; $7654: $08 $00 $00
    ld h, b                                       ; $7657: $60
    ld [$2020], sp                                ; $7658: $08 $20 $20
    nop                                           ; $765b: $00
    jr nz, jr_079_767d                            ; $765c: $20 $1f

    dec e                                         ; $765e: $1d
    jr z, @+$62                                   ; $765f: $28 $60

    ld e, [hl]                                    ; $7661: $5e
    ld a, b                                       ; $7662: $78
    inc sp                                        ; $7663: $33
    jr nz, jr_079_7685                            ; $7664: $20 $1f

    and h                                         ; $7666: $a4
    and l                                         ; $7667: $a5
    ld c, $29                                     ; $7668: $0e $29
    ld [de], a                                    ; $766a: $12
    xor b                                         ; $766b: $a8
    jr nz, @+$23                                  ; $766c: $20 $21

    ld hl, $4161                                  ; $766e: $21 $61 $41
    ld b, c                                       ; $7671: $41
    ld h, c                                       ; $7672: $61
    ld hl, $6061                                  ; $7673: $21 $61 $60
    ld c, c                                       ; $7676: $49
    ld c, c                                       ; $7677: $49
    ld [$0009], sp                                ; $7678: $08 $09 $00
    ld l, c                                       ; $767b: $69
    add hl, hl                                    ; $767c: $29

jr_079_767d:
    ccf                                           ; $767d: $3f
    adc b                                         ; $767e: $88
    adc c                                         ; $767f: $89
    ld a, [hl+]                                   ; $7680: $2a
    adc d                                         ; $7681: $8a
    add h                                         ; $7682: $84
    adc e                                         ; $7683: $8b
    and [hl]                                      ; $7684: $a6

jr_079_7685:
    ccf                                           ; $7685: $3f
    sub e                                         ; $7686: $93
    ld hl, $3d71                                  ; $7687: $21 $71 $3d
    or a                                          ; $768a: $b7
    sbc b                                         ; $768b: $98
    ld b, c                                       ; $768c: $41
    ld hl, $0909                                  ; $768d: $21 $09 $09
    ld h, c                                       ; $7690: $61
    add hl, bc                                    ; $7691: $09
    add hl, hl                                    ; $7692: $29
    add hl, bc                                    ; $7693: $09
    ld c, c                                       ; $7694: $49
    ld b, c                                       ; $7695: $41
    ld c, c                                       ; $7696: $49
    ld h, c                                       ; $7697: $61
    ld bc, $6901                                  ; $7698: $01 $01 $69
    ld l, c                                       ; $769b: $69
    sub b                                         ; $769c: $90
    add c                                         ; $769d: $81
    ld a, $69                                     ; $769e: $3e $69
    add [hl]                                      ; $76a0: $86
    jr nc, jr_079_7623                            ; $76a1: $30 $80

    ld hl, $32a7                                  ; $76a3: $21 $a7 $32
    ld l, d                                       ; $76a6: $6a
    ld l, c                                       ; $76a7: $69
    sub a                                         ; $76a8: $97
    dec b                                         ; $76a9: $05
    inc l                                         ; $76aa: $2c
    dec l                                         ; $76ab: $2d
    add hl, bc                                    ; $76ac: $09
    add hl, bc                                    ; $76ad: $09
    ld bc, $6921                                  ; $76ae: $01 $21 $69
    ld bc, $2169                                  ; $76b1: $01 $69 $21
    ld c, c                                       ; $76b4: $49
    ld bc, $6060                                  ; $76b5: $01 $60 $60
    ld l, c                                       ; $76b8: $69
    ld bc, $0001                                  ; $76b9: $01 $01 $00
    daa                                           ; $76bc: $27
    jr z, @+$36                                   ; $76bd: $28 $34

    ld sp, $4241                                  ; $76bf: $31 $41 $42
    ld l, c                                       ; $76c2: $69
    ld hl, $6443                                  ; $76c3: $21 $43 $64
    ld de, $6431                                  ; $76c6: $11 $31 $64
    ld [hl], l                                    ; $76c9: $75
    ld b, h                                       ; $76ca: $44
    inc a                                         ; $76cb: $3c
    ld [$4008], sp                                ; $76cc: $08 $08 $40
    ld bc, $0808                                  ; $76cf: $01 $08 $08
    ld h, b                                       ; $76d2: $60
    ld h, b                                       ; $76d3: $60
    ld [$2820], sp                                ; $76d4: $08 $20 $28
    ld b, c                                       ; $76d7: $41
    jr nz, @+$62                                  ; $76d8: $20 $60

    ld b, c                                       ; $76da: $41
    ld bc, $2203                                  ; $76db: $01 $03 $22
    ld [bc], a                                    ; $76de: $02
    cp b                                          ; $76df: $b8
    ld h, b                                       ; $76e0: $60
    ld e, [hl]                                    ; $76e1: $5e
    dec b                                         ; $76e2: $05
    inc [hl]                                      ; $76e3: $34
    inc bc                                        ; $76e4: $03
    dec sp                                        ; $76e5: $3b
    ld [hl-], a                                   ; $76e6: $32
    dec e                                         ; $76e7: $1d
    ld h, [hl]                                    ; $76e8: $66
    ld [hl-], a                                   ; $76e9: $32
    dec e                                         ; $76ea: $1d
    ld e, $41                                     ; $76eb: $1e $41
    ld b, c                                       ; $76ed: $41
    ld hl, $0169                                  ; $76ee: $21 $69 $01
    ld bc, $4160                                  ; $76f1: $01 $60 $41
    nop                                           ; $76f4: $00
    ld b, c                                       ; $76f5: $41
    ld h, c                                       ; $76f6: $61
    ld hl, $4100                                  ; $76f7: $21 $00 $41
    ld hl, $b621                                  ; $76fa: $21 $21 $b6
    or l                                          ; $76fd: $b5
    ld [hl], h                                    ; $76fe: $74
    or h                                          ; $76ff: $b4
    ld b, e                                       ; $7700: $43
    ld b, h                                       ; $7701: $44
    ld b, l                                       ; $7702: $45
    ld b, [hl]                                    ; $7703: $46
    jr z, jr_079_772d                             ; $7704: $28 $27

    ld h, $25                                     ; $7706: $26 $25
    ld l, $28                                     ; $7708: $2e $28
    add hl, hl                                    ; $770a: $29
    ccf                                           ; $770b: $3f
    ld l, c                                       ; $770c: $69
    ld l, c                                       ; $770d: $69
    ld b, c                                       ; $770e: $41
    ld l, c                                       ; $770f: $69
    ld bc, $0909                                  ; $7710: $01 $09 $09
    add hl, bc                                    ; $7713: $09
    ld h, c                                       ; $7714: $61
    ld h, c                                       ; $7715: $61
    ld h, c                                       ; $7716: $61
    ld h, c                                       ; $7717: $61
    ld b, c                                       ; $7718: $41
    ld hl, $6101                                  ; $7719: $21 $01 $61
    cpl                                           ; $771c: $2f
    jr nc, jr_079_7753                            ; $771d: $30 $34

    ld sp, $1247                                  ; $771f: $31 $47 $12
    add b                                         ; $7722: $80
    ld [hl], c                                    ; $7723: $71
    inc h                                         ; $7724: $24
    ld [bc], a                                    ; $7725: $02
    inc [hl]                                      ; $7726: $34
    ld sp, $2e2a                                  ; $7727: $31 $2a $2e
    sub a                                         ; $772a: $97
    sbc b                                         ; $772b: $98
    ld b, c                                       ; $772c: $41

jr_079_772d:
    ld b, c                                       ; $772d: $41
    ld b, c                                       ; $772e: $41
    ld bc, $6009                                  ; $772f: $01 $09 $60
    add hl, hl                                    ; $7732: $29
    ld hl, $0161                                  ; $7733: $21 $61 $01
    nop                                           ; $7736: $00
    ld b, b                                       ; $7737: $40
    ld bc, $4961                                  ; $7738: $01 $61 $49
    ld c, c                                       ; $773b: $49
    ld [$2034], sp                                ; $773c: $08 $34 $20
    ld l, c                                       ; $773f: $69
    ld [hl], $37                                  ; $7740: $36 $37
    ld b, h                                       ; $7742: $44
    inc a                                         ; $7743: $3c
    ld [$200b], sp                                ; $7744: $08 $0b $20
    ld l, c                                       ; $7747: $69
    ld l, l                                       ; $7748: $6d
    ld l, [hl]                                    ; $7749: $6e
    ld h, b                                       ; $774a: $60
    ld hl, $6060                                  ; $774b: $21 $60 $60
    ld b, c                                       ; $774e: $41
    ld b, b                                       ; $774f: $40
    ld b, b                                       ; $7750: $40
    ld b, b                                       ; $7751: $40
    ld b, c                                       ; $7752: $41

jr_079_7753:
    ld bc, $6060                                  ; $7753: $01 $60 $60
    nop                                           ; $7756: $00
    nop                                           ; $7757: $00
    nop                                           ; $7758: $00
    nop                                           ; $7759: $00
    ld h, c                                       ; $775a: $61
    nop                                           ; $775b: $00
    ld l, d                                       ; $775c: $6a
    inc a                                         ; $775d: $3c
    ld h, e                                       ; $775e: $63
    jr nc, @+$2e                                  ; $775f: $30 $2c

    ld [hl], l                                    ; $7761: $75
    ld [hl], d                                    ; $7762: $72
    ld h, [hl]                                    ; $7763: $66
    inc [hl]                                      ; $7764: $34
    cpl                                           ; $7765: $2f
    ld l, d                                       ; $7766: $6a
    ld l, $80                                     ; $7767: $2e $80
    inc a                                         ; $7769: $3c
    dec l                                         ; $776a: $2d
    ld [hl], c                                    ; $776b: $71
    ld b, b                                       ; $776c: $40
    ld b, c                                       ; $776d: $41
    ld b, c                                       ; $776e: $41
    ld h, c                                       ; $776f: $61
    jr nz, @+$23                                  ; $7770: $20 $21

    ld hl, $6061                                  ; $7772: $21 $61 $60
    ld h, b                                       ; $7775: $60
    ld hl, $0801                                  ; $7776: $21 $01 $08
    ld b, c                                       ; $7779: $41
    ld bc, $3061                                  ; $777a: $01 $61 $30
    sub e                                         ; $777d: $93
    dec a                                         ; $777e: $3d
    ld [hl], c                                    ; $777f: $71
    ld hl, $3e71                                  ; $7780: $21 $71 $3e
    ld [hl], c                                    ; $7783: $71
    add h                                         ; $7784: $84
    adc d                                         ; $7785: $8a
    ccf                                           ; $7786: $3f
    ld [hl], c                                    ; $7787: $71
    ld a, $40                                     ; $7788: $3e $40
    dec a                                         ; $778a: $3d
    sub a                                         ; $778b: $97
    ld bc, $0129                                  ; $778c: $01 $29 $01
    ld bc, $0141                                  ; $778f: $01 $41 $01
    ld bc, $4921                                  ; $7792: $01 $21 $49
    ld l, c                                       ; $7795: $69
    ld h, c                                       ; $7796: $61
    ld hl, $0101                                  ; $7797: $21 $01 $01
    ld h, c                                       ; $779a: $61
    ld l, c                                       ; $779b: $69
    ccf                                           ; $779c: $3f
    ld l, $32                                     ; $779d: $2e $32
    add l                                         ; $779f: $85
    ld l, c                                       ; $77a0: $69
    dec e                                         ; $77a1: $1d
    jr nc, jr_079_77d6                            ; $77a2: $30 $32

    ld [hl-], a                                   ; $77a4: $32
    ld [de], a                                    ; $77a5: $12
    add b                                         ; $77a6: $80
    ld l, c                                       ; $77a7: $69
    dec b                                         ; $77a8: $05
    dec sp                                        ; $77a9: $3b
    ld [hl-], a                                   ; $77aa: $32
    ld h, b                                       ; $77ab: $60
    ld h, c                                       ; $77ac: $61
    ld h, c                                       ; $77ad: $61
    ld h, c                                       ; $77ae: $61
    jr z, jr_079_77d2                             ; $77af: $28 $21

    ld b, b                                       ; $77b1: $40
    ld h, b                                       ; $77b2: $60
    ld b, c                                       ; $77b3: $41
    ld bc, $6920                                  ; $77b4: $01 $20 $69
    ld h, b                                       ; $77b7: $60
    ld bc, $6141                                  ; $77b8: $01 $41 $61
    ld h, c                                       ; $77bb: $61
    ld c, $72                                     ; $77bc: $0e $72
    ld h, e                                       ; $77be: $63
    dec c                                         ; $77bf: $0d
    halt                                          ; $77c0: $76
    ld l, c                                       ; $77c1: $69
    ld l, c                                       ; $77c2: $69
    ld c, b                                       ; $77c3: $48
    dec hl                                        ; $77c4: $2b
    dec b                                         ; $77c5: $05
    ld l, [hl]                                    ; $77c6: $6e
    ld l, l                                       ; $77c7: $6d
    ld b, h                                       ; $77c8: $44
    ld [bc], a                                    ; $77c9: $02
    ld [hl], b                                    ; $77ca: $70
    ld h, c                                       ; $77cb: $61
    jr z, @+$22                                   ; $77cc: $28 $20

    ld h, b                                       ; $77ce: $60
    ld a, [hl+]                                   ; $77cf: $2a
    jr nz, jr_079_77d2                            ; $77d0: $20 $00

jr_079_77d2:
    ld b, b                                       ; $77d2: $40
    ld [$0000], sp                                ; $77d3: $08 $00 $00

jr_079_77d6:
    jr nz, jr_079_77f8                            ; $77d6: $20 $20

    ld h, c                                       ; $77d8: $61
    ld b, b                                       ; $77d9: $40
    jr nz, jr_079_77dc                            ; $77da: $20 $00

jr_079_77dc:
    jr nz, jr_079_77fd                            ; $77dc: $20 $1f

    ld h, h                                       ; $77de: $64
    ld h, l                                       ; $77df: $65
    ld h, b                                       ; $77e0: $60
    ld l, c                                       ; $77e1: $69
    ld h, a                                       ; $77e2: $67
    ld l, b                                       ; $77e3: $68
    jr nz, jr_079_77f7                            ; $77e4: $20 $11

    scf                                           ; $77e6: $37
    ld [hl], $0e                                  ; $77e7: $36 $0e
    ld de, $080b                                  ; $77e9: $11 $0b $08
    ld hl, $0021                                  ; $77ec: $21 $21 $00
    nop                                           ; $77ef: $00
    ld b, c                                       ; $77f0: $41
    ld b, b                                       ; $77f1: $40
    nop                                           ; $77f2: $00
    nop                                           ; $77f3: $00
    ld h, c                                       ; $77f4: $61
    jr z, jr_079_7857                             ; $77f5: $28 $60

jr_079_77f7:
    ld h, b                                       ; $77f7: $60

jr_079_77f8:
    ld [$4040], sp                                ; $77f8: $08 $40 $40
    ld b, b                                       ; $77fb: $40
    inc bc                                        ; $77fc: $03

jr_079_77fd:
    dec sp                                        ; $77fd: $3b
    inc b                                         ; $77fe: $04
    ld [$5e03], sp                                ; $77ff: $08 $03 $5e
    dec b                                         ; $7802: $05
    add $03                                       ; $7803: $c6 $03
    ld l, c                                       ; $7805: $69
    ld l, c                                       ; $7806: $69
    ld c, c                                       ; $7807: $49
    jr nz, jr_079_7829                            ; $7808: $20 $1f

    scf                                           ; $780a: $37
    ld [hl], $41                                  ; $780b: $36 $41
    ld bc, $4060                                  ; $780d: $01 $60 $40
    ld bc, $6000                                  ; $7810: $01 $00 $60
    jr z, jr_079_7815                             ; $7813: $28 $00

jr_079_7815:
    nop                                           ; $7815: $00
    ld b, b                                       ; $7816: $40
    ld [$2121], sp                                ; $7817: $08 $21 $21
    ld h, b                                       ; $781a: $60
    ld h, b                                       ; $781b: $60
    ld [hl], e                                    ; $781c: $73
    ld [hl], d                                    ; $781d: $72
    dec bc                                        ; $781e: $0b
    ld [$7576], sp                                ; $781f: $08 $76 $75
    dec b                                         ; $7822: $05
    ld [$5e60], sp                                ; $7823: $08 $60 $5e
    scf                                           ; $7826: $37
    ld [hl], $5e                                  ; $7827: $36 $5e

jr_079_7829:
    rra                                           ; $7829: $1f
    dec bc                                        ; $782a: $0b
    ld [$2020], sp                                ; $782b: $08 $20 $20
    ld b, b                                       ; $782e: $40
    ld b, b                                       ; $782f: $40
    jr nz, jr_079_7852                            ; $7830: $20 $20

    jr nz, @+$42                                  ; $7832: $20 $40

    ld b, c                                       ; $7834: $41
    ld b, b                                       ; $7835: $40
    ld h, b                                       ; $7836: $60
    ld h, b                                       ; $7837: $60
    ld b, b                                       ; $7838: $40
    ld h, b                                       ; $7839: $60

jr_079_783a:
    ld b, b                                       ; $783a: $40
    ld b, b                                       ; $783b: $40
    ld h, c                                       ; $783c: $61
    ld [hl], b                                    ; $783d: $70
    inc bc                                        ; $783e: $03
    ld sp, $4b4a                                  ; $783f: $31 $4a $4b
    ld c, h                                       ; $7842: $4c
    ld c, l                                       ; $7843: $4d
    ld c, [hl]                                    ; $7844: $4e
    ld c, a                                       ; $7845: $4f
    ld d, b                                       ; $7846: $50
    ld d, c                                       ; $7847: $51
    jp nc, $d2df                                  ; $7848: $d2 $df $d2

    db $eb                                        ; $784b: $eb
    jr nz, jr_079_784e                            ; $784c: $20 $00

jr_079_784e:
    jr nz, jr_079_78b1                            ; $784e: $20 $61

    rrca                                          ; $7850: $0f
    rrca                                          ; $7851: $0f

jr_079_7852:
    rrca                                          ; $7852: $0f
    rrca                                          ; $7853: $0f
    rrca                                          ; $7854: $0f
    rrca                                          ; $7855: $0f
    ld a, [bc]                                    ; $7856: $0a

jr_079_7857:
    ld a, [bc]                                    ; $7857: $0a
    rlca                                          ; $7858: $07
    rlca                                          ; $7859: $07
    ld h, a                                       ; $785a: $67
    rlca                                          ; $785b: $07
    inc [hl]                                      ; $785c: $34
    sbc b                                         ; $785d: $98
    sub a                                         ; $785e: $97
    ld [hl], c                                    ; $785f: $71
    ld d, d                                       ; $7860: $52
    ld d, e                                       ; $7861: $53
    ld d, h                                       ; $7862: $54
    ld d, l                                       ; $7863: $55
    ld d, [hl]                                    ; $7864: $56
    ld d, a                                       ; $7865: $57
    ld e, b                                       ; $7866: $58
    ld e, c                                       ; $7867: $59
    db $ec                                        ; $7868: $ec
    jp nc, $5b5a                                  ; $7869: $d2 $5a $5b

    ld hl, $2929                                  ; $786c: $21 $29 $29
    ld bc, $080f                                  ; $786f: $01 $0f $08
    ld [$0f08], sp                                ; $7872: $08 $08 $0f
    rrca                                          ; $7875: $0f
    rrca                                          ; $7876: $0f
    rrca                                          ; $7877: $0f
    daa                                           ; $7878: $27
    rlca                                          ; $7879: $07
    ld a, [bc]                                    ; $787a: $0a
    ld a, [bc]                                    ; $787b: $0a
    adc d                                         ; $787c: $8a
    adc e                                         ; $787d: $8b
    add hl, hl                                    ; $787e: $29
    cpl                                           ; $787f: $2f
    ld e, h                                       ; $7880: $5c
    ld e, l                                       ; $7881: $5d
    ld e, [hl]                                    ; $7882: $5e
    ld e, a                                       ; $7883: $5f
    ld e, d                                       ; $7884: $5a
    ld e, e                                       ; $7885: $5b
    ld h, b                                       ; $7886: $60
    ld h, c                                       ; $7887: $61
    ld h, c                                       ; $7888: $61
    ld e, e                                       ; $7889: $5b
    ld h, c                                       ; $788a: $61
    ld e, e                                       ; $788b: $5b
    ld l, c                                       ; $788c: $69
    ld l, c                                       ; $788d: $69
    ld h, c                                       ; $788e: $61
    ld b, c                                       ; $788f: $41
    rrca                                          ; $7890: $0f
    rrca                                          ; $7891: $0f
    rrca                                          ; $7892: $0f
    rrca                                          ; $7893: $0f
    ld a, [bc]                                    ; $7894: $0a
    rrca                                          ; $7895: $0f
    rrca                                          ; $7896: $0f
    rrca                                          ; $7897: $0f
    cpl                                           ; $7898: $2f
    ld l, a                                       ; $7899: $6f
    ld l, a                                       ; $789a: $6f
    cpl                                           ; $789b: $2f
    jr nc, @+$13                                  ; $789c: $30 $11

    jr nc, jr_079_783a                            ; $789e: $30 $9a

    ld e, h                                       ; $78a0: $5c
    ld h, d                                       ; $78a1: $62
    ld h, e                                       ; $78a2: $63
    ld h, h                                       ; $78a3: $64
    ld h, l                                       ; $78a4: $65
    ld h, [hl]                                    ; $78a5: $66
    ld h, a                                       ; $78a6: $67
    ld d, a                                       ; $78a7: $57
    ld e, d                                       ; $78a8: $5a
    ld e, e                                       ; $78a9: $5b
    ld e, d                                       ; $78aa: $5a
    ld l, b                                       ; $78ab: $68
    ld b, c                                       ; $78ac: $41
    ld bc, $2861                                  ; $78ad: $01 $61 $28
    cpl                                           ; $78b0: $2f

jr_079_78b1:
    ld [$0808], sp                                ; $78b1: $08 $08 $08
    rrca                                          ; $78b4: $0f
    rrca                                          ; $78b5: $0f
    rrca                                          ; $78b6: $0f
    cpl                                           ; $78b7: $2f
    ld l, a                                       ; $78b8: $6f
    ld a, [hl+]                                   ; $78b9: $2a
    ld a, [hl+]                                   ; $78ba: $2a
    rrca                                          ; $78bb: $0f
    ld l, c                                       ; $78bc: $69
    rst $18                                       ; $78bd: $df
    db $ec                                        ; $78be: $ec
    db $eb                                        ; $78bf: $eb
    ld c, [hl]                                    ; $78c0: $4e
    rst $18                                       ; $78c1: $df
    ld c, [hl]                                    ; $78c2: $4e
    jp nc, $df69                                  ; $78c3: $d2 $69 $df

    db $ec                                        ; $78c6: $ec
    db $eb                                        ; $78c7: $eb
    ld c, [hl]                                    ; $78c8: $4e
    rst $18                                       ; $78c9: $df
    ld c, [hl]                                    ; $78ca: $4e
    jp nc, Jump_000_270f                          ; $78cb: $d2 $0f $27

    daa                                           ; $78ce: $27
    daa                                           ; $78cf: $27
    cpl                                           ; $78d0: $2f
    daa                                           ; $78d1: $27
    rrca                                          ; $78d2: $0f
    ld b, a                                       ; $78d3: $47
    rrca                                          ; $78d4: $0f
    daa                                           ; $78d5: $27
    daa                                           ; $78d6: $27
    daa                                           ; $78d7: $27
    cpl                                           ; $78d8: $2f
    daa                                           ; $78d9: $27
    rrca                                          ; $78da: $0f
    ld b, a                                       ; $78db: $47
    jp nc, $5b5a                                  ; $78dc: $d2 $5a $5b

    ld e, d                                       ; $78df: $5a
    ld e, d                                       ; $78e0: $5a
    ld e, e                                       ; $78e1: $5b
    ld h, c                                       ; $78e2: $61
    ld e, e                                       ; $78e3: $5b
    jp nc, $5b5a                                  ; $78e4: $d2 $5a $5b

    ld e, d                                       ; $78e7: $5a
    ld e, d                                       ; $78e8: $5a
    ld e, e                                       ; $78e9: $5b
    ld h, c                                       ; $78ea: $61
    ld e, e                                       ; $78eb: $5b
    rlca                                          ; $78ec: $07
    ld a, [bc]                                    ; $78ed: $0a
    ld a, [bc]                                    ; $78ee: $0a
    ld c, a                                       ; $78ef: $4f
    ld a, [bc]                                    ; $78f0: $0a
    ld a, [bc]                                    ; $78f1: $0a
    cpl                                           ; $78f2: $2f
    ld l, a                                       ; $78f3: $6f
    rlca                                          ; $78f4: $07
    ld a, [bc]                                    ; $78f5: $0a
    ld a, [bc]                                    ; $78f6: $0a
    ld c, a                                       ; $78f7: $4f
    ld a, [bc]                                    ; $78f8: $0a
    ld a, [bc]                                    ; $78f9: $0a
    cpl                                           ; $78fa: $2f
    ld l, a                                       ; $78fb: $6f
    ld e, e                                       ; $78fc: $5b
    ld h, c                                       ; $78fd: $61
    ld e, e                                       ; $78fe: $5b
    ld h, c                                       ; $78ff: $61
    ld h, c                                       ; $7900: $61
    ld e, d                                       ; $7901: $5a
    ld l, d                                       ; $7902: $6a
    ld l, e                                       ; $7903: $6b
    ld e, e                                       ; $7904: $5b
    ld h, c                                       ; $7905: $61
    ld e, e                                       ; $7906: $5b
    ld h, c                                       ; $7907: $61
    ld h, c                                       ; $7908: $61
    ld e, d                                       ; $7909: $5a
    ld l, d                                       ; $790a: $6a
    ld l, e                                       ; $790b: $6b
    rrca                                          ; $790c: $0f
    ld c, a                                       ; $790d: $4f
    ld c, a                                       ; $790e: $4f
    rrca                                          ; $790f: $0f
    ld l, a                                       ; $7910: $6f
    ld l, a                                       ; $7911: $6f
    ld a, [bc]                                    ; $7912: $0a
    ld a, [bc]                                    ; $7913: $0a
    rrca                                          ; $7914: $0f
    ld c, a                                       ; $7915: $4f
    ld c, a                                       ; $7916: $4f
    rrca                                          ; $7917: $0f
    ld l, a                                       ; $7918: $6f
    ld l, a                                       ; $7919: $6f
    ld a, [bc]                                    ; $791a: $0a
    ld a, [bc]                                    ; $791b: $0a
    ld h, c                                       ; $791c: $61
    ld e, e                                       ; $791d: $5b
    ld h, c                                       ; $791e: $61
    ld e, e                                       ; $791f: $5b
    ld e, d                                       ; $7920: $5a
    ld e, e                                       ; $7921: $5b
    ld h, c                                       ; $7922: $61
    ld e, e                                       ; $7923: $5b
    ld h, c                                       ; $7924: $61
    ld e, e                                       ; $7925: $5b
    ld h, c                                       ; $7926: $61
    ld e, e                                       ; $7927: $5b
    ld e, d                                       ; $7928: $5a
    ld e, e                                       ; $7929: $5b
    ld h, c                                       ; $792a: $61
    ld e, e                                       ; $792b: $5b
    ld c, a                                       ; $792c: $4f
    ld c, a                                       ; $792d: $4f
    rrca                                          ; $792e: $0f
    ld a, [hl+]                                   ; $792f: $2a
    ld c, a                                       ; $7930: $4f
    ld l, a                                       ; $7931: $6f
    ld l, a                                       ; $7932: $6f
    cpl                                           ; $7933: $2f
    ld c, a                                       ; $7934: $4f
    ld c, a                                       ; $7935: $4f
    rrca                                          ; $7936: $0f
    ld a, [hl+]                                   ; $7937: $2a
    ld c, a                                       ; $7938: $4f
    ld l, a                                       ; $7939: $6f
    ld l, a                                       ; $793a: $6f
    cpl                                           ; $793b: $2f
    ld e, a                                       ; $793c: $5f
    ld de, $0804                                  ; $793d: $11 $04 $08
    ld d, d                                       ; $7940: $52
    ld l, h                                       ; $7941: $6c
    ld l, l                                       ; $7942: $6d
    ld c, e                                       ; $7943: $4b
    ld l, [hl]                                    ; $7944: $6e
    ld l, a                                       ; $7945: $6f
    ld d, b                                       ; $7946: $50
    ld c, a                                       ; $7947: $4f
    ld [hl], b                                    ; $7948: $70
    ld l, c                                       ; $7949: $69
    ld [hl], c                                    ; $794a: $71
    ld [hl], d                                    ; $794b: $72
    ld bc, $6040                                  ; $794c: $01 $40 $60
    ld b, b                                       ; $794f: $40
    cpl                                           ; $7950: $2f
    rrca                                          ; $7951: $0f
    rrca                                          ; $7952: $0f
    cpl                                           ; $7953: $2f
    rrca                                          ; $7954: $0f
    ld a, [bc]                                    ; $7955: $0a
    ld a, [hl+]                                   ; $7956: $2a
    ld a, [hl+]                                   ; $7957: $2a
    rrca                                          ; $7958: $0f
    rrca                                          ; $7959: $0f
    rrca                                          ; $795a: $0f
    rrca                                          ; $795b: $0f
    ld e, d                                       ; $795c: $5a
    jp nc, Jump_079_734e                          ; $795d: $d2 $4e $73

    ld e, d                                       ; $7960: $5a
    ld e, e                                       ; $7961: $5b
    ld [hl], h                                    ; $7962: $74
    ld [hl], l                                    ; $7963: $75
    ld e, d                                       ; $7964: $5a
    jp nc, Jump_079_734e                          ; $7965: $d2 $4e $73

    ld e, d                                       ; $7968: $5a
    ld e, e                                       ; $7969: $5b
    ld [hl], h                                    ; $796a: $74
    ld [hl], l                                    ; $796b: $75
    ld a, [hl+]                                   ; $796c: $2a
    ld b, a                                       ; $796d: $47
    rrca                                          ; $796e: $0f
    rrca                                          ; $796f: $0f
    ld l, a                                       ; $7970: $6f
    ld a, [hl+]                                   ; $7971: $2a
    rrca                                          ; $7972: $0f
    rrca                                          ; $7973: $0f
    ld a, [hl+]                                   ; $7974: $2a
    ld b, a                                       ; $7975: $47
    rrca                                          ; $7976: $0f
    rrca                                          ; $7977: $0f
    ld l, a                                       ; $7978: $6f
    ld a, [hl+]                                   ; $7979: $2a
    rrca                                          ; $797a: $0f
    rrca                                          ; $797b: $0f
    dec b                                         ; $797c: $05
    nop                                           ; $797d: $00
    dec b                                         ; $797e: $05
    nop                                           ; $797f: $00
    ldh [rSC], a                                  ; $7980: $e0 $02
    pop de                                        ; $7982: $d1
    jp nc, $d2d2                                  ; $7983: $d2 $d2 $d2

    db $d3                                        ; $7986: $d3
    call nc, $d6d5                                ; $7987: $d4 $d5 $d6
    db $d3                                        ; $798a: $d3
    rst $10                                       ; $798b: $d7
    ret c                                         ; $798c: $d8

    reti                                          ; $798d: $d9


    db $d3                                        ; $798e: $d3
    jp c, $dbdb                                   ; $798f: $da $db $db

    nop                                           ; $7992: $00
    nop                                           ; $7993: $00
    nop                                           ; $7994: $00
    nop                                           ; $7995: $00
    add b                                         ; $7996: $80
    inc bc                                        ; $7997: $03
    inc bc                                        ; $7998: $03
    inc bc                                        ; $7999: $03
    add b                                         ; $799a: $80
    inc bc                                        ; $799b: $03
    ld b, $06                                     ; $799c: $06 $06
    add b                                         ; $799e: $80
    inc bc                                        ; $799f: $03
    inc bc                                        ; $79a0: $03
    inc hl                                        ; $79a1: $23
    jp nc, $d2d2                                  ; $79a2: $d2 $d2 $d2

    jp nc, $dddc                                  ; $79a5: $d2 $dc $dd

    sbc $d4                                       ; $79a8: $de $d4
    rst $18                                       ; $79aa: $df
    ldh [$e1], a                                  ; $79ab: $e0 $e1
    rst $10                                       ; $79ad: $d7
    jp c, $dada                                   ; $79ae: $da $da $da

    ld [c], a                                     ; $79b1: $e2
    nop                                           ; $79b2: $00
    nop                                           ; $79b3: $00
    nop                                           ; $79b4: $00
    nop                                           ; $79b5: $00
    inc bc                                        ; $79b6: $03
    inc bc                                        ; $79b7: $03
    inc bc                                        ; $79b8: $03
    inc bc                                        ; $79b9: $03
    ld b, $06                                     ; $79ba: $06 $06
    ld b, $03                                     ; $79bc: $06 $03
    inc bc                                        ; $79be: $03
    inc bc                                        ; $79bf: $03
    inc bc                                        ; $79c0: $03
    ld [bc], a                                    ; $79c1: $02
    jp nc, $d2d2                                  ; $79c2: $d2 $d2 $d2

    jp nc, $d6d5                                  ; $79c5: $d2 $d5 $d6

    call c, $e3dd                                 ; $79c8: $dc $dd $e3
    db $e4                                        ; $79cb: $e4
    ret c                                         ; $79cc: $d8

    reti                                          ; $79cd: $d9


    push hl                                       ; $79ce: $e5
    and $db                                       ; $79cf: $e6 $db
    db $db                                        ; $79d1: $db
    nop                                           ; $79d2: $00
    nop                                           ; $79d3: $00
    nop                                           ; $79d4: $00
    nop                                           ; $79d5: $00
    inc bc                                        ; $79d6: $03
    inc bc                                        ; $79d7: $03
    inc bc                                        ; $79d8: $03
    inc bc                                        ; $79d9: $03
    inc bc                                        ; $79da: $03
    inc bc                                        ; $79db: $03
    inc b                                         ; $79dc: $04
    inc b                                         ; $79dd: $04
    ld [bc], a                                    ; $79de: $02
    inc bc                                        ; $79df: $03
    inc bc                                        ; $79e0: $03
    inc hl                                        ; $79e1: $23
    jp nc, $d2d2                                  ; $79e2: $d2 $d2 $d2

    jp nc, $d4de                                  ; $79e5: $d2 $de $d4

    push de                                       ; $79e8: $d5
    sub $df                                       ; $79e9: $d6 $df
    rst $20                                       ; $79eb: $e7
    add sp, -$1f                                  ; $79ec: $e8 $e1
    jp c, $dae9                                   ; $79ee: $da $e9 $da

    jp c, RST_00                                  ; $79f1: $da $00 $00

    nop                                           ; $79f4: $00
    nop                                           ; $79f5: $00
    inc bc                                        ; $79f6: $03
    inc bc                                        ; $79f7: $03
    inc bc                                        ; $79f8: $03
    inc bc                                        ; $79f9: $03
    inc b                                         ; $79fa: $04
    inc b                                         ; $79fb: $04
    inc b                                         ; $79fc: $04
    inc b                                         ; $79fd: $04
    inc bc                                        ; $79fe: $03
    inc bc                                        ; $79ff: $03
    inc bc                                        ; $7a00: $03
    inc bc                                        ; $7a01: $03
    db $d3                                        ; $7a02: $d3
    jp c, $d9d8                                   ; $7a03: $da $d8 $d9

    db $d3                                        ; $7a06: $d3
    ld [$eceb], a                                 ; $7a07: $ea $eb $ec
    db $d3                                        ; $7a0a: $d3
    db $ed                                        ; $7a0b: $ed
    xor $ef                                       ; $7a0c: $ee $ef
    db $d3                                        ; $7a0e: $d3
    ldh a, [$f1]                                  ; $7a0f: $f0 $f1
    ld a, [c]                                     ; $7a11: $f2
    add b                                         ; $7a12: $80
    inc bc                                        ; $7a13: $03
    inc b                                         ; $7a14: $04
    inc b                                         ; $7a15: $04
    add b                                         ; $7a16: $80
    inc bc                                        ; $7a17: $03
    inc bc                                        ; $7a18: $03
    inc bc                                        ; $7a19: $03
    add b                                         ; $7a1a: $80
    inc bc                                        ; $7a1b: $03
    inc bc                                        ; $7a1c: $03
    inc bc                                        ; $7a1d: $03
    add b                                         ; $7a1e: $80
    ld bc, $0101                                  ; $7a1f: $01 $01 $01
    rst $18                                       ; $7a22: $df
    ldh [$e1], a                                  ; $7a23: $e0 $e1
    di                                            ; $7a25: $f3
    db $f4                                        ; $7a26: $f4
    push af                                       ; $7a27: $f5
    or $f7                                        ; $7a28: $f6 $f7
    ld hl, sp-$07                                 ; $7a2a: $f8 $f9
    ld a, [$fcfb]                                 ; $7a2c: $fa $fb $fc
    db $fd                                        ; $7a2f: $fd
    cp $ff                                        ; $7a30: $fe $ff
    inc b                                         ; $7a32: $04
    inc b                                         ; $7a33: $04
    inc b                                         ; $7a34: $04
    ld [bc], a                                    ; $7a35: $02
    inc bc                                        ; $7a36: $03
    inc bc                                        ; $7a37: $03
    inc bc                                        ; $7a38: $03
    ld [bc], a                                    ; $7a39: $02
    inc bc                                        ; $7a3a: $03
    inc bc                                        ; $7a3b: $03
    inc bc                                        ; $7a3c: $03
    ld [bc], a                                    ; $7a3d: $02
    ld bc, $0101                                  ; $7a3e: $01 $01 $01
    ld [bc], a                                    ; $7a41: $02
    nop                                           ; $7a42: $00
    ld bc, $d9d8                                  ; $7a43: $01 $d8 $d9
    ld [bc], a                                    ; $7a46: $02
    inc bc                                        ; $7a47: $03
    inc b                                         ; $7a48: $04
    dec b                                         ; $7a49: $05
    ld b, $07                                     ; $7a4a: $06 $07
    ld hl, sp-$07                                 ; $7a4c: $f8 $f9
    ld b, $08                                     ; $7a4e: $06 $08
    add hl, bc                                    ; $7a50: $09
    ld a, [bc]                                    ; $7a51: $0a
    ld [bc], a                                    ; $7a52: $02
    inc bc                                        ; $7a53: $03
    ld b, $06                                     ; $7a54: $06 $06
    ld [bc], a                                    ; $7a56: $02
    inc bc                                        ; $7a57: $03
    inc bc                                        ; $7a58: $03
    inc bc                                        ; $7a59: $03
    ld [bc], a                                    ; $7a5a: $02
    inc bc                                        ; $7a5b: $03
    inc bc                                        ; $7a5c: $03
    inc bc                                        ; $7a5d: $03
    ld [bc], a                                    ; $7a5e: $02
    ld bc, $0101                                  ; $7a5f: $01 $01 $01
    rst $18                                       ; $7a62: $df
    rst $20                                       ; $7a63: $e7
    add sp, -$1f                                  ; $7a64: $e8 $e1
    or $0b                                        ; $7a66: $f6 $0b
    db $eb                                        ; $7a68: $eb
    db $ec                                        ; $7a69: $ec
    ld a, [$eeed]                                 ; $7a6a: $fa $ed $ee
    rst $28                                       ; $7a6d: $ef
    inc c                                         ; $7a6e: $0c
    dec c                                         ; $7a6f: $0d
    ld c, $0f                                     ; $7a70: $0e $0f
    ld b, $06                                     ; $7a72: $06 $06
    ld b, $06                                     ; $7a74: $06 $06
    inc bc                                        ; $7a76: $03
    inc bc                                        ; $7a77: $03
    inc bc                                        ; $7a78: $03
    inc bc                                        ; $7a79: $03
    inc bc                                        ; $7a7a: $03
    inc bc                                        ; $7a7b: $03
    inc bc                                        ; $7a7c: $03
    inc bc                                        ; $7a7d: $03
    ld bc, $0101                                  ; $7a7e: $01 $01 $01
    ld bc, $10d3                                  ; $7a81: $01 $d3 $10
    ld de, $d312                                  ; $7a84: $11 $12 $d3
    inc de                                        ; $7a87: $13
    inc d                                         ; $7a88: $14
    dec d                                         ; $7a89: $15
    db $d3                                        ; $7a8a: $d3
    ld d, $17                                     ; $7a8b: $16 $17
    rla                                           ; $7a8d: $17
    db $d3                                        ; $7a8e: $d3
    jr jr_079_7aaa                                ; $7a8f: $18 $19

    ld a, [de]                                    ; $7a91: $1a
    add b                                         ; $7a92: $80
    rlca                                          ; $7a93: $07
    rlca                                          ; $7a94: $07
    rlca                                          ; $7a95: $07
    add b                                         ; $7a96: $80
    rlca                                          ; $7a97: $07
    rlca                                          ; $7a98: $07
    rlca                                          ; $7a99: $07
    add b                                         ; $7a9a: $80
    rlca                                          ; $7a9b: $07
    rlca                                          ; $7a9c: $07
    rlca                                          ; $7a9d: $07
    add b                                         ; $7a9e: $80
    ld bc, $0101                                  ; $7a9f: $01 $01 $01
    dec de                                        ; $7aa2: $1b
    inc e                                         ; $7aa3: $1c
    dec e                                         ; $7aa4: $1d
    ld e, $1f                                     ; $7aa5: $1e $1f
    jr nz, jr_079_7aca                            ; $7aa7: $20 $21

    ld [hl+], a                                   ; $7aa9: $22

jr_079_7aaa:
    rla                                           ; $7aaa: $17
    inc hl                                        ; $7aab: $23
    inc h                                         ; $7aac: $24
    dec h                                         ; $7aad: $25
    ld h, $27                                     ; $7aae: $26 $27
    jr z, @+$2b                                   ; $7ab0: $28 $29

    rlca                                          ; $7ab2: $07
    rlca                                          ; $7ab3: $07
    ld bc, $0702                                  ; $7ab4: $01 $02 $07
    rlca                                          ; $7ab7: $07
    ld bc, $0701                                  ; $7ab8: $01 $01 $07
    rlca                                          ; $7abb: $07
    ld bc, $0101                                  ; $7abc: $01 $01 $01
    ld bc, $0101                                  ; $7abf: $01 $01 $01
    ld a, [hl+]                                   ; $7ac2: $2a
    dec hl                                        ; $7ac3: $2b
    inc l                                         ; $7ac4: $2c
    dec l                                         ; $7ac5: $2d
    ld l, $2f                                     ; $7ac6: $2e $2f
    jr nc, jr_079_7afb                            ; $7ac8: $30 $31

jr_079_7aca:
    ld [hl-], a                                   ; $7aca: $32
    inc sp                                        ; $7acb: $33
    inc [hl]                                      ; $7acc: $34
    dec [hl]                                      ; $7acd: $35
    ld [hl], $37                                  ; $7ace: $36 $37
    jr c, jr_079_7b0b                             ; $7ad0: $38 $39

    ld [bc], a                                    ; $7ad2: $02
    ld bc, $0101                                  ; $7ad3: $01 $01 $01
    ld bc, $0101                                  ; $7ad6: $01 $01 $01
    ld bc, $0101                                  ; $7ad9: $01 $01 $01
    ld bc, $0101                                  ; $7adc: $01 $01 $01
    ld bc, $0101                                  ; $7adf: $01 $01 $01
    ld a, [hl-]                                   ; $7ae2: $3a
    dec sp                                        ; $7ae3: $3b
    inc a                                         ; $7ae4: $3c
    dec a                                         ; $7ae5: $3d
    ld a, $3f                                     ; $7ae6: $3e $3f
    ld b, b                                       ; $7ae8: $40
    ld b, c                                       ; $7ae9: $41
    ld b, d                                       ; $7aea: $42
    ld b, e                                       ; $7aeb: $43
    ld b, h                                       ; $7aec: $44
    ld b, l                                       ; $7aed: $45
    ld b, [hl]                                    ; $7aee: $46
    ld b, a                                       ; $7aef: $47
    ld c, b                                       ; $7af0: $48
    ld c, c                                       ; $7af1: $49
    ld bc, $0101                                  ; $7af2: $01 $01 $01
    ld bc, $0101                                  ; $7af5: $01 $01 $01
    ld bc, $0101                                  ; $7af8: $01 $01 $01

jr_079_7afb:
    ld bc, $0101                                  ; $7afb: $01 $01 $01
    ld bc, $0101                                  ; $7afe: $01 $01 $01
    ld bc, $4ad3                                  ; $7b01: $01 $d3 $4a
    ld c, e                                       ; $7b04: $4b
    ld c, h                                       ; $7b05: $4c
    db $d3                                        ; $7b06: $d3
    ld c, l                                       ; $7b07: $4d
    ld c, [hl]                                    ; $7b08: $4e
    ld c, a                                       ; $7b09: $4f
    db $d3                                        ; $7b0a: $d3

jr_079_7b0b:
    ld d, b                                       ; $7b0b: $50
    ld d, c                                       ; $7b0c: $51
    ld d, d                                       ; $7b0d: $52
    ld d, e                                       ; $7b0e: $53
    jp nc, $d2d2                                  ; $7b0f: $d2 $d2 $d2

    add b                                         ; $7b12: $80
    ld bc, $0101                                  ; $7b13: $01 $01 $01
    add b                                         ; $7b16: $80
    ld bc, $0101                                  ; $7b17: $01 $01 $01
    add b                                         ; $7b1a: $80
    ld bc, $0101                                  ; $7b1b: $01 $01 $01
    add b                                         ; $7b1e: $80
    add b                                         ; $7b1f: $80
    add b                                         ; $7b20: $80
    add b                                         ; $7b21: $80
    ld d, h                                       ; $7b22: $54
    ld d, l                                       ; $7b23: $55
    ld d, [hl]                                    ; $7b24: $56
    ld d, a                                       ; $7b25: $57
    ld e, b                                       ; $7b26: $58
    ld e, c                                       ; $7b27: $59
    ld e, d                                       ; $7b28: $5a
    ld e, e                                       ; $7b29: $5b
    ld e, h                                       ; $7b2a: $5c
    ld e, l                                       ; $7b2b: $5d
    ld e, [hl]                                    ; $7b2c: $5e
    ld e, a                                       ; $7b2d: $5f
    jp nc, $d2d2                                  ; $7b2e: $d2 $d2 $d2

    jp nc, $0101                                  ; $7b31: $d2 $01 $01

    ld bc, $0101                                  ; $7b34: $01 $01 $01
    ld bc, $0101                                  ; $7b37: $01 $01 $01
    ld bc, $0101                                  ; $7b3a: $01 $01 $01
    ld bc, $8080                                  ; $7b3d: $01 $80 $80
    add b                                         ; $7b40: $80
    add b                                         ; $7b41: $80
    jp c, $6160                                   ; $7b42: $da $60 $61

    ld h, d                                       ; $7b45: $62
    ld h, e                                       ; $7b46: $63
    ld h, h                                       ; $7b47: $64
    ld h, l                                       ; $7b48: $65
    ld h, [hl]                                    ; $7b49: $66
    ld h, a                                       ; $7b4a: $67
    ld l, b                                       ; $7b4b: $68
    ld l, c                                       ; $7b4c: $69
    ld l, d                                       ; $7b4d: $6a
    ld l, e                                       ; $7b4e: $6b
    ld l, h                                       ; $7b4f: $6c
    ld l, l                                       ; $7b50: $6d
    ld l, [hl]                                    ; $7b51: $6e
    ld bc, $0101                                  ; $7b52: $01 $01 $01
    ld bc, $0101                                  ; $7b55: $01 $01 $01
    ld bc, $0101                                  ; $7b58: $01 $01 $01
    ld bc, $0101                                  ; $7b5b: $01 $01 $01
    add b                                         ; $7b5e: $80
    ld bc, $0101                                  ; $7b5f: $01 $01 $01
    ld l, a                                       ; $7b62: $6f
    ld [hl], b                                    ; $7b63: $70
    ld [hl], c                                    ; $7b64: $71
    ld [hl], d                                    ; $7b65: $72
    ld [hl], e                                    ; $7b66: $73
    jp c, Jump_079_7574                           ; $7b67: $da $74 $75

    halt                                          ; $7b6a: $76
    ld [hl], a                                    ; $7b6b: $77
    ld a, b                                       ; $7b6c: $78
    ld a, c                                       ; $7b6d: $79
    pop de                                        ; $7b6e: $d1
    jp nc, $d2d2                                  ; $7b6f: $d2 $d2 $d2

    ld bc, $0101                                  ; $7b72: $01 $01 $01
    ld bc, $0101                                  ; $7b75: $01 $01 $01
    ld bc, $0101                                  ; $7b78: $01 $01 $01
    ld bc, $0101                                  ; $7b7b: $01 $01 $01
    add b                                         ; $7b7e: $80
    add b                                         ; $7b7f: $80
    add b                                         ; $7b80: $80
    add b                                         ; $7b81: $80
    jp nc, $d2d2                                  ; $7b82: $d2 $d2 $d2

    ld l, e                                       ; $7b85: $6b
    call c, $dedd                                 ; $7b86: $dc $dd $de
    db $d3                                        ; $7b89: $d3
    ld a, d                                       ; $7b8a: $7a
    ld a, e                                       ; $7b8b: $7b
    ld a, h                                       ; $7b8c: $7c
    db $d3                                        ; $7b8d: $d3
    ld a, l                                       ; $7b8e: $7d
    ld a, [hl]                                    ; $7b8f: $7e
    and $d3                                       ; $7b90: $e6 $d3
    nop                                           ; $7b92: $00
    nop                                           ; $7b93: $00
    nop                                           ; $7b94: $00
    nop                                           ; $7b95: $00
    inc bc                                        ; $7b96: $03
    inc bc                                        ; $7b97: $03
    inc bc                                        ; $7b98: $03
    add b                                         ; $7b99: $80
    inc bc                                        ; $7b9a: $03
    inc bc                                        ; $7b9b: $03
    inc bc                                        ; $7b9c: $03
    add b                                         ; $7b9d: $80
    dec b                                         ; $7b9e: $05
    dec b                                         ; $7b9f: $05
    inc bc                                        ; $7ba0: $03
    add b                                         ; $7ba1: $80
    ld a, a                                       ; $7ba2: $7f
    add b                                         ; $7ba3: $80
    ld bc, $81d3                                  ; $7ba4: $01 $d3 $81
    add d                                         ; $7ba7: $82
    inc bc                                        ; $7ba8: $03
    db $d3                                        ; $7ba9: $d3
    add e                                         ; $7baa: $83
    add h                                         ; $7bab: $84
    rlca                                          ; $7bac: $07
    db $d3                                        ; $7bad: $d3
    add l                                         ; $7bae: $85
    add [hl]                                      ; $7baf: $86
    add a                                         ; $7bb0: $87
    db $d3                                        ; $7bb1: $d3
    dec b                                         ; $7bb2: $05
    dec c                                         ; $7bb3: $0d
    inc bc                                        ; $7bb4: $03
    add b                                         ; $7bb5: $80
    dec c                                         ; $7bb6: $0d
    dec c                                         ; $7bb7: $0d
    inc bc                                        ; $7bb8: $03
    add b                                         ; $7bb9: $80
    dec c                                         ; $7bba: $0d
    dec c                                         ; $7bbb: $0d
    inc bc                                        ; $7bbc: $03
    add b                                         ; $7bbd: $80
    dec c                                         ; $7bbe: $0d
    dec c                                         ; $7bbf: $0d
    add hl, bc                                    ; $7bc0: $09
    add b                                         ; $7bc1: $80
    adc b                                         ; $7bc2: $88
    adc c                                         ; $7bc3: $89
    adc d                                         ; $7bc4: $8a
    db $d3                                        ; $7bc5: $d3
    adc e                                         ; $7bc6: $8b
    adc h                                         ; $7bc7: $8c
    adc l                                         ; $7bc8: $8d
    db $d3                                        ; $7bc9: $d3
    adc [hl]                                      ; $7bca: $8e
    adc a                                         ; $7bcb: $8f
    sub b                                         ; $7bcc: $90
    db $d3                                        ; $7bcd: $d3
    sub c                                         ; $7bce: $91
    sub d                                         ; $7bcf: $92
    sub e                                         ; $7bd0: $93
    db $d3                                        ; $7bd1: $d3
    dec c                                         ; $7bd2: $0d
    dec c                                         ; $7bd3: $0d
    add hl, bc                                    ; $7bd4: $09
    add b                                         ; $7bd5: $80
    add hl, bc                                    ; $7bd6: $09
    add hl, bc                                    ; $7bd7: $09
    add hl, bc                                    ; $7bd8: $09
    add b                                         ; $7bd9: $80
    add hl, bc                                    ; $7bda: $09
    add hl, bc                                    ; $7bdb: $09
    add hl, bc                                    ; $7bdc: $09
    add b                                         ; $7bdd: $80
    add hl, bc                                    ; $7bde: $09
    add hl, bc                                    ; $7bdf: $09
    add hl, bc                                    ; $7be0: $09
    add b                                         ; $7be1: $80
    sub h                                         ; $7be2: $94
    sub l                                         ; $7be3: $95
    sub [hl]                                      ; $7be4: $96
    db $d3                                        ; $7be5: $d3
    sub a                                         ; $7be6: $97
    sbc b                                         ; $7be7: $98
    sbc c                                         ; $7be8: $99
    db $d3                                        ; $7be9: $d3
    sbc d                                         ; $7bea: $9a
    sbc e                                         ; $7beb: $9b
    sbc h                                         ; $7bec: $9c
    db $d3                                        ; $7bed: $d3
    jp nc, $d2d2                                  ; $7bee: $d2 $d2 $d2

    sbc l                                         ; $7bf1: $9d
    add hl, bc                                    ; $7bf2: $09
    add hl, bc                                    ; $7bf3: $09
    add hl, bc                                    ; $7bf4: $09
    add b                                         ; $7bf5: $80
    add hl, bc                                    ; $7bf6: $09
    add hl, bc                                    ; $7bf7: $09
    add hl, bc                                    ; $7bf8: $09
    add b                                         ; $7bf9: $80
    add hl, bc                                    ; $7bfa: $09
    add hl, bc                                    ; $7bfb: $09
    add hl, bc                                    ; $7bfc: $09
    add b                                         ; $7bfd: $80
    add b                                         ; $7bfe: $80
    add b                                         ; $7bff: $80
    add b                                         ; $7c00: $80
    adc b                                         ; $7c01: $88
    sbc [hl]                                      ; $7c02: $9e
    sbc [hl]                                      ; $7c03: $9e
    sbc [hl]                                      ; $7c04: $9e
    sbc [hl]                                      ; $7c05: $9e
    sbc [hl]                                      ; $7c06: $9e
    sbc [hl]                                      ; $7c07: $9e
    sbc [hl]                                      ; $7c08: $9e
    sbc [hl]                                      ; $7c09: $9e
    sbc [hl]                                      ; $7c0a: $9e
    sbc [hl]                                      ; $7c0b: $9e
    sbc [hl]                                      ; $7c0c: $9e
    sbc [hl]                                      ; $7c0d: $9e
    sbc [hl]                                      ; $7c0e: $9e
    sbc [hl]                                      ; $7c0f: $9e
    sbc [hl]                                      ; $7c10: $9e
    sbc [hl]                                      ; $7c11: $9e
    adc b                                         ; $7c12: $88
    adc b                                         ; $7c13: $88
    adc b                                         ; $7c14: $88
    adc b                                         ; $7c15: $88
    adc b                                         ; $7c16: $88
    adc b                                         ; $7c17: $88
    adc b                                         ; $7c18: $88
    adc b                                         ; $7c19: $88
    adc b                                         ; $7c1a: $88
    adc b                                         ; $7c1b: $88
    adc b                                         ; $7c1c: $88
    adc b                                         ; $7c1d: $88
    adc b                                         ; $7c1e: $88
    adc b                                         ; $7c1f: $88
    adc b                                         ; $7c20: $88
    adc b                                         ; $7c21: $88
    ld d, e                                       ; $7c22: $53
    sbc a                                         ; $7c23: $9f
    sbc a                                         ; $7c24: $9f
    sbc a                                         ; $7c25: $9f
    sbc [hl]                                      ; $7c26: $9e
    and b                                         ; $7c27: $a0
    and b                                         ; $7c28: $a0
    and b                                         ; $7c29: $a0
    sbc [hl]                                      ; $7c2a: $9e
    sbc [hl]                                      ; $7c2b: $9e
    sbc [hl]                                      ; $7c2c: $9e
    sbc [hl]                                      ; $7c2d: $9e
    sbc [hl]                                      ; $7c2e: $9e
    sbc [hl]                                      ; $7c2f: $9e
    sbc [hl]                                      ; $7c30: $9e
    sbc [hl]                                      ; $7c31: $9e
    add b                                         ; $7c32: $80
    adc b                                         ; $7c33: $88
    adc b                                         ; $7c34: $88
    adc b                                         ; $7c35: $88
    adc b                                         ; $7c36: $88
    adc b                                         ; $7c37: $88
    adc b                                         ; $7c38: $88
    adc b                                         ; $7c39: $88
    adc b                                         ; $7c3a: $88
    adc b                                         ; $7c3b: $88
    adc b                                         ; $7c3c: $88
    adc b                                         ; $7c3d: $88
    adc b                                         ; $7c3e: $88
    adc b                                         ; $7c3f: $88
    adc b                                         ; $7c40: $88
    adc b                                         ; $7c41: $88
    sbc l                                         ; $7c42: $9d
    sbc [hl]                                      ; $7c43: $9e
    sbc [hl]                                      ; $7c44: $9e
    sbc [hl]                                      ; $7c45: $9e
    sbc [hl]                                      ; $7c46: $9e
    sbc [hl]                                      ; $7c47: $9e
    sbc [hl]                                      ; $7c48: $9e
    sbc [hl]                                      ; $7c49: $9e
    sbc [hl]                                      ; $7c4a: $9e
    sbc [hl]                                      ; $7c4b: $9e
    sbc [hl]                                      ; $7c4c: $9e
    sbc [hl]                                      ; $7c4d: $9e
    sbc [hl]                                      ; $7c4e: $9e
    sbc [hl]                                      ; $7c4f: $9e
    sbc [hl]                                      ; $7c50: $9e
    sbc [hl]                                      ; $7c51: $9e
    adc b                                         ; $7c52: $88
    adc b                                         ; $7c53: $88
    adc b                                         ; $7c54: $88
    adc b                                         ; $7c55: $88
    adc b                                         ; $7c56: $88
    adc b                                         ; $7c57: $88
    adc b                                         ; $7c58: $88
    adc b                                         ; $7c59: $88
    adc b                                         ; $7c5a: $88
    adc b                                         ; $7c5b: $88
    adc b                                         ; $7c5c: $88
    adc b                                         ; $7c5d: $88
    adc b                                         ; $7c5e: $88
    adc b                                         ; $7c5f: $88
    adc b                                         ; $7c60: $88
    adc b                                         ; $7c61: $88

    db $05, $00, $05, $00

    ldh [rSC], a                                  ; $7c66: $e0 $02

    db $d1, $d2, $d2, $d2, $d3, $d4, $d5, $d6, $d3, $d7, $d8, $d9, $d3, $da, $db, $dc
    db $80, $00, $00, $00, $80, $03, $03, $03, $80, $03, $03, $03, $80, $05, $05, $05
    db $d2, $d2, $d2, $d2, $dd, $d4, $d5, $d6, $de, $d7, $d8, $d9, $df, $e0, $e1, $e2
    db $00, $00, $00, $00, $03, $03, $03, $03, $03, $03, $03, $03, $05, $05, $05, $05
    db $d2, $d2, $d2, $d2, $dd, $d4, $d5, $d6, $de, $d7, $d8, $d9, $e3, $e0, $e1, $dc
    db $00, $00, $00, $00, $03, $03, $03, $03, $03, $03, $03, $03, $05, $05, $05, $05
    db $d2, $d2, $d2, $d2, $dd, $d4, $d5, $d6, $de, $d7, $d8, $d9, $e4, $e0, $e5, $e6
    db $00, $00, $00, $00, $03, $03, $03, $03, $03, $03, $03, $03, $05, $05, $03, $03
    db $d3, $e7, $e8, $e9, $d3, $ea, $eb, $ec, $d3, $ed, $ee, $ef, $d3, $f0, $f1, $f2
    db $80, $04, $04, $04, $80, $04, $04, $04, $80, $03, $03, $03, $80, $01, $01, $01
    db $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $ed, $ee, $fd, $fe, $ff, $00
    db $06, $06, $06, $04, $06, $06, $06, $04, $03, $03, $03, $03, $01, $01, $01, $02
    db $01, $02, $03, $04, $05, $06, $07, $08, $ef, $fb, $fc, $ed, $f0, $f1, $f2, $fd
    db $04, $06, $06, $04, $04, $06, $06, $04, $03, $03, $03, $03, $01, $01, $01, $01
    db $09, $0a, $0b, $0c, $0d, $0e, $0f, $10, $ee, $ef, $11, $12, $fe, $ff, $00, $f0
    db $04, $04, $03, $03, $04, $04, $03, $03, $03, $03, $03, $03, $01, $01, $02, $01
    db $d3, $13, $14, $15, $d3, $16, $17, $18, $d3, $19, $1a, $1b, $d3, $1c, $1d, $1e
    db $80, $01, $01, $01, $80, $01, $01, $01, $80, $01, $01, $01, $80, $01, $01, $01
    db $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $00
    db $01, $01, $01, $02, $01, $01, $01, $02, $01, $01, $01, $02, $01, $01, $01, $02
    db $13, $14, $15, $1f, $16, $17, $18, $23, $19, $1a, $1b, $27, $1c, $1d, $1e, $2b
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $20, $21, $2e, $2f, $24, $25, $30, $31, $28, $29, $32, $33, $2c, $2d, $34, $35
    db $01, $01, $07, $07, $01, $01, $07, $07, $01, $01, $07, $07, $01, $01, $02, $01
    db $d3, $36, $37, $38, $d3, $39, $3a, $3b, $d3, $3c, $3d, $3e, $3f, $d2, $d2, $d2
    db $80, $02, $02, $02, $80, $01, $01, $01, $80, $01, $01, $01, $80, $80, $80, $80
    db $36, $37, $40, $41, $42, $43, $44, $22, $45, $46, $47, $26, $d2, $d2, $d2, $d2
    db $02, $02, $02, $02, $01, $01, $01, $02, $01, $01, $01, $02, $80, $80, $80, $80
    db $38, $36, $37, $40, $39, $3a, $3b, $42, $3c, $3d, $3e, $45, $48, $14, $15, $1f
    db $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $80, $01, $01, $01
    db $37, $40, $41, $38, $43, $44, $22, $39, $46, $47, $26, $3c, $d1, $d2, $d2, $d2
    db $02, $02, $02, $02, $01, $01, $02, $01, $01, $01, $02, $01, $80, $80, $80, $80
    db $d2, $d2, $d2, $48, $dd, $d4, $d5, $d3, $de, $49, $d8, $d3, $4a, $4b, $4c, $d3
    db $00, $00, $00, $80, $03, $03, $03, $80, $03, $03, $03, $80, $03, $03, $03, $80
    db $4d, $4e, $4f, $d3, $50, $51, $52, $d3, $53, $54, $55, $d3, $f1, $f2, $fd, $d3
    db $03, $03, $03, $80, $03, $03, $03, $80, $03, $03, $03, $80, $01, $01, $01, $80
    db $2f, $56, $57, $d3, $58, $59, $5a, $d3, $33, $33, $33, $d3, $5b, $5c, $5d, $d3
    db $07, $07, $07, $80, $07, $07, $07, $80, $07, $07, $07, $80, $01, $01, $01, $80
    db $36, $37, $40, $d3, $3a, $3b, $42, $d3, $3d, $3e, $45, $d3, $d2, $d2, $d2, $5e
    db $02, $02, $02, $80, $01, $01, $01, $80, $01, $01, $01, $80, $80, $80, $80, $80
    db $5f, $5f, $5f, $5f, $5f, $5f, $5f, $5f, $5f, $5f, $5f, $5f, $5f, $5f, $5f, $5f
    db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
    db $3f, $60, $60, $60, $5f, $61, $61, $61, $5f, $5f, $5f, $5f, $5f, $5f, $5f, $5f
    db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
    db $5e, $5f, $5f, $5f, $5f, $5f, $5f, $5f, $5f, $5f, $5f, $5f, $5f, $5f, $5f, $5f
    db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80

    adc c                                         ; $7f48: $89
    nop                                           ; $7f49: $00
    ld b, b                                       ; $7f4a: $40
    nop                                           ; $7f4b: $00
    ld bc, $0100                                  ; $7f4c: $01 $00 $01
    nop                                           ; $7f4f: $00
    ld [bc], a                                    ; $7f50: $02
    nop                                           ; $7f51: $00
    add hl, bc                                    ; $7f52: $09
    nop                                           ; $7f53: $00
    ld b, $0a                                     ; $7f54: $06 $0a
    nop                                           ; $7f56: $00
    dec bc                                        ; $7f57: $0b
    nop                                           ; $7f58: $00
    inc c                                         ; $7f59: $0c
    rrca                                          ; $7f5a: $0f
    ld [$1004], sp                                ; $7f5b: $08 $04 $10
    inc bc                                        ; $7f5e: $03
    nop                                           ; $7f5f: $00
    nop                                           ; $7f60: $00
    inc b                                         ; $7f61: $04
    nop                                           ; $7f62: $00
    dec c                                         ; $7f63: $0d
    nop                                           ; $7f64: $00
    ld c, $00                                     ; $7f65: $0e $00
    rrca                                          ; $7f67: $0f
    jr nz, jr_079_7f6a                            ; $7f68: $20 $00

jr_079_7f6a:
    db $10                                        ; $7f6a: $10
    inc d                                         ; $7f6b: $14
    jr nc, @+$07                                  ; $7f6c: $30 $05

    nop                                           ; $7f6e: $00
    ld b, $00                                     ; $7f6f: $06 $00
    ld de, $0002                                  ; $7f71: $11 $02 $00
    ld [de], a                                    ; $7f74: $12
    nop                                           ; $7f75: $00
    inc de                                        ; $7f76: $13
    nop                                           ; $7f77: $00
    inc d                                         ; $7f78: $14
    jr z, jr_079_7fab                             ; $7f79: $28 $30

    rlca                                          ; $7f7b: $07
    nop                                           ; $7f7c: $00
    nop                                           ; $7f7d: $00
    ld [$1500], sp                                ; $7f7e: $08 $00 $15
    nop                                           ; $7f81: $00
    ld d, $00                                     ; $7f82: $16 $00
    rla                                           ; $7f84: $17
    jr nz, jr_079_7f87                            ; $7f85: $20 $00

jr_079_7f87:
    jr @+$3e                                      ; $7f87: $18 $3c

    jr nc, jr_079_7fa4                            ; $7f89: $30 $19

    nop                                           ; $7f8b: $00
    ld a, [de]                                    ; $7f8c: $1a
    nop                                           ; $7f8d: $00
    inc hl                                        ; $7f8e: $23
    ld [bc], a                                    ; $7f8f: $02
    nop                                           ; $7f90: $00
    inc h                                         ; $7f91: $24
    nop                                           ; $7f92: $00
    dec h                                         ; $7f93: $25
    nop                                           ; $7f94: $00
    ld h, $50                                     ; $7f95: $26 $50
    jr nc, jr_079_7fb4                            ; $7f97: $30 $1b

    nop                                           ; $7f99: $00
    nop                                           ; $7f9a: $00
    inc e                                         ; $7f9b: $1c
    nop                                           ; $7f9c: $00
    daa                                           ; $7f9d: $27
    nop                                           ; $7f9e: $00
    jr z, jr_079_7fa1                             ; $7f9f: $28 $00

jr_079_7fa1:
    add hl, hl                                    ; $7fa1: $29
    jr nz, jr_079_7fa4                            ; $7fa2: $20 $00

jr_079_7fa4:
    ld a, [hl+]                                   ; $7fa4: $2a
    ld h, h                                       ; $7fa5: $64
    jr nc, @+$1f                                  ; $7fa6: $30 $1d

    nop                                           ; $7fa8: $00
    ld e, $00                                     ; $7fa9: $1e $00

jr_079_7fab:
    dec hl                                        ; $7fab: $2b
    nop                                           ; $7fac: $00
    nop                                           ; $7fad: $00
    inc l                                         ; $7fae: $2c
    nop                                           ; $7faf: $00
    dec l                                         ; $7fb0: $2d
    nop                                           ; $7fb1: $00
    ld l, $00                                     ; $7fb2: $2e $00

jr_079_7fb4:
    inc sp                                        ; $7fb4: $33
    nop                                           ; $7fb5: $00
    nop                                           ; $7fb6: $00
    inc [hl]                                      ; $7fb7: $34
    nop                                           ; $7fb8: $00
    rra                                           ; $7fb9: $1f
    nop                                           ; $7fba: $00
    jr nz, jr_079_7fbd                            ; $7fbb: $20 $00

jr_079_7fbd:
    ld hl, $0000                                  ; $7fbd: $21 $00 $00
    ld [hl+], a                                   ; $7fc0: $22
    nop                                           ; $7fc1: $00
    cpl                                           ; $7fc2: $2f
    nop                                           ; $7fc3: $00
    jr nc, jr_079_7fc6                            ; $7fc4: $30 $00

jr_079_7fc6:
    ld sp, $0000                                  ; $7fc6: $31 $00 $00
    ld [hl-], a                                   ; $7fc9: $32
    nop                                           ; $7fca: $00
    dec [hl]                                      ; $7fcb: $35
    nop                                           ; $7fcc: $00
    ld [hl], $00                                  ; $7fcd: $36 $00
    scf                                           ; $7fcf: $37
    nop                                           ; $7fd0: $00
    nop                                           ; $7fd1: $00
    jr c, jr_079_7fd4                             ; $7fd2: $38 $00

jr_079_7fd4:
    add hl, sp                                    ; $7fd4: $39
    nop                                           ; $7fd5: $00
    ld a, [hl-]                                   ; $7fd6: $3a
    nop                                           ; $7fd7: $00
    dec a                                         ; $7fd8: $3d
    nop                                           ; $7fd9: $00
    nop                                           ; $7fda: $00
    ld a, $00                                     ; $7fdb: $3e $00

Call_079_7fdd:
    ccf                                           ; $7fdd: $3f
    nop                                           ; $7fde: $00
    ld b, b                                       ; $7fdf: $40
    nop                                           ; $7fe0: $00
    ld b, c                                       ; $7fe1: $41
    ld [bc], a                                    ; $7fe2: $02
    nop                                           ; $7fe3: $00
    ld b, d                                       ; $7fe4: $42
    nop                                           ; $7fe5: $00
    dec sp                                        ; $7fe6: $3b
    nop                                           ; $7fe7: $00
    inc a                                         ; $7fe8: $3c
    ld [bc], a                                    ; $7fe9: $02
    ld h, b                                       ; $7fea: $60
    ld b, e                                       ; $7feb: $43
    nop                                           ; $7fec: $00
    nop                                           ; $7fed: $00
    ld [$5f00], sp                                ; $7fee: $08 $00 $5f
    inc b                                         ; $7ff1: $04
    ld bc, $0060                                  ; $7ff2: $01 $60 $00
    ld bc, $1470                                  ; $7ff5: $01 $70 $14
    ld [$4804], sp                                ; $7ff8: $08 $04 $48
    ld de, $3500                                  ; $7ffb: $11 $00 $35
    ld b, b                                       ; $7ffe: $40
    rst $38                                       ; $7fff: $ff
