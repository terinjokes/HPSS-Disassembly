; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $084", ROMX[$4000], BANK[$84]

    add h                                         ; $4000: $84
    ld [$0d00], sp                                ; $4001: $08 $00 $0d
    nop                                           ; $4004: $00
    ld b, b                                       ; $4005: $40
    ld a, [bc]                                    ; $4006: $0a
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


    jp c, $d4db                                   ; $402e: $da $db $d4

    call c, $dedd                                 ; $4031: $dc $dd $de
    call nc, $e0df                                ; $4034: $d4 $df $e0
    inc b                                         ; $4037: $04
    inc b                                         ; $4038: $04
    inc b                                         ; $4039: $04
    inc b                                         ; $403a: $04
    inc b                                         ; $403b: $04
    inc b                                         ; $403c: $04
    inc b                                         ; $403d: $04
    inc b                                         ; $403e: $04
    inc b                                         ; $403f: $04
    inc b                                         ; $4040: $04
    inc b                                         ; $4041: $04
    inc b                                         ; $4042: $04
    inc b                                         ; $4043: $04
    inc b                                         ; $4044: $04
    inc b                                         ; $4045: $04
    inc b                                         ; $4046: $04
    db $d3                                        ; $4047: $d3
    call nc, $d3d5                                ; $4048: $d4 $d5 $d3
    rst $10                                       ; $404b: $d7
    ret c                                         ; $404c: $d8

    reti                                          ; $404d: $d9


    rst $10                                       ; $404e: $d7
    db $db                                        ; $404f: $db
    call nc, $dbdc                                ; $4050: $d4 $dc $db
    pop hl                                        ; $4053: $e1
    ld [c], a                                     ; $4054: $e2
    db $e3                                        ; $4055: $e3
    sbc $04                                       ; $4056: $de $04
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
    ld bc, $0101                                  ; $4063: $01 $01 $01
    inc b                                         ; $4066: $04
    call nc, $e5e4                                ; $4067: $d4 $e4 $e5
    and $d8                                       ; $406a: $e6 $d8
    ret c                                         ; $406c: $d8

    rst $20                                       ; $406d: $e7
    and $d4                                       ; $406e: $e6 $d4
    call nc, $e8d1                                ; $4070: $d4 $d1 $e8
    call nc, $d1d4                                ; $4073: $d4 $d4 $d1
    jp hl                                         ; $4076: $e9


    inc b                                         ; $4077: $04
    inc b                                         ; $4078: $04
    inc b                                         ; $4079: $04
    inc b                                         ; $407a: $04
    inc b                                         ; $407b: $04
    inc b                                         ; $407c: $04
    inc b                                         ; $407d: $04
    inc b                                         ; $407e: $04
    inc b                                         ; $407f: $04
    inc b                                         ; $4080: $04
    inc b                                         ; $4081: $04
    inc b                                         ; $4082: $04
    inc b                                         ; $4083: $04
    inc b                                         ; $4084: $04
    inc b                                         ; $4085: $04
    inc b                                         ; $4086: $04
    ld [$eceb], a                                 ; $4087: $ea $eb $ec
    db $ed                                        ; $408a: $ed
    xor $ef                                       ; $408b: $ee $ef
    ldh a, [$f1]                                  ; $408d: $f0 $f1
    ld a, [c]                                     ; $408f: $f2
    di                                            ; $4090: $f3
    db $f4                                        ; $4091: $f4
    push af                                       ; $4092: $f5
    or $f7                                        ; $4093: $f6 $f7
    ld hl, sp-$07                                 ; $4095: $f8 $f9
    inc b                                         ; $4097: $04
    inc b                                         ; $4098: $04
    inc b                                         ; $4099: $04
    inc b                                         ; $409a: $04
    rlca                                          ; $409b: $07
    rlca                                          ; $409c: $07
    rlca                                          ; $409d: $07
    rlca                                          ; $409e: $07
    rlca                                          ; $409f: $07
    ld b, $05                                     ; $40a0: $06 $05
    ld b, $07                                     ; $40a2: $06 $07
    dec b                                         ; $40a4: $05
    ld b, $06                                     ; $40a5: $06 $06
    ld a, [$fcfb]                                 ; $40a7: $fa $fb $fc
    ld [$fefd], a                                 ; $40aa: $ea $fd $fe
    rst $38                                       ; $40ad: $ff
    nop                                           ; $40ae: $00
    ld bc, $0302                                  ; $40af: $01 $02 $03
    inc b                                         ; $40b2: $04
    dec b                                         ; $40b3: $05
    ld b, $07                                     ; $40b4: $06 $07
    ld [$0101], sp                                ; $40b6: $08 $01 $01
    ld bc, $0704                                  ; $40b9: $01 $04 $07
    rlca                                          ; $40bc: $07
    rlca                                          ; $40bd: $07
    rlca                                          ; $40be: $07
    rlca                                          ; $40bf: $07
    rlca                                          ; $40c0: $07
    rlca                                          ; $40c1: $07
    ld b, $06                                     ; $40c2: $06 $06
    ld b, $05                                     ; $40c4: $06 $05
    ld b, $eb                                     ; $40c6: $06 $eb
    db $eb                                        ; $40c8: $eb
    add hl, bc                                    ; $40c9: $09
    ld a, [bc]                                    ; $40ca: $0a
    dec bc                                        ; $40cb: $0b
    inc c                                         ; $40cc: $0c
    ldh a, [$f1]                                  ; $40cd: $f0 $f1
    ld a, [c]                                     ; $40cf: $f2
    di                                            ; $40d0: $f3
    db $f4                                        ; $40d1: $f4
    push af                                       ; $40d2: $f5
    or $f7                                        ; $40d3: $f6 $f7
    ld hl, sp-$07                                 ; $40d5: $f8 $f9
    inc b                                         ; $40d7: $04
    inc b                                         ; $40d8: $04
    inc b                                         ; $40d9: $04
    inc b                                         ; $40da: $04
    rlca                                          ; $40db: $07
    rlca                                          ; $40dc: $07
    rlca                                          ; $40dd: $07
    rlca                                          ; $40de: $07
    dec b                                         ; $40df: $05
    dec b                                         ; $40e0: $05
    dec b                                         ; $40e1: $05
    ld b, $06                                     ; $40e2: $06 $06
    ld b, $05                                     ; $40e4: $06 $05
    ld b, $0d                                     ; $40e6: $06 $0d
    ld c, $0f                                     ; $40e8: $0e $0f
    db $10                                        ; $40ea: $10
    ld b, $11                                     ; $40eb: $06 $11
    ld [de], a                                    ; $40ed: $12
    inc de                                        ; $40ee: $13
    inc d                                         ; $40ef: $14
    dec d                                         ; $40f0: $15
    ld d, $17                                     ; $40f1: $16 $17
    jr @+$1b                                      ; $40f3: $18 $19

    ld a, [de]                                    ; $40f5: $1a
    dec de                                        ; $40f6: $1b
    rlca                                          ; $40f7: $07
    ld b, $06                                     ; $40f8: $06 $06
    ld b, $27                                     ; $40fa: $06 $27
    ld b, $05                                     ; $40fc: $06 $05
    dec b                                         ; $40fe: $05
    rlca                                          ; $40ff: $07
    dec b                                         ; $4100: $05
    ld b, $06                                     ; $4101: $06 $06
    rlca                                          ; $4103: $07
    ld b, $06                                     ; $4104: $06 $06
    ld bc, $1d1c                                  ; $4106: $01 $1c $1d
    ld e, $1f                                     ; $4109: $1e $1f
    jr nz, jr_084_412e                            ; $410b: $20 $21

    ld hl, $0622                                  ; $410d: $21 $22 $06
    inc hl                                        ; $4110: $23
    inc hl                                        ; $4111: $23
    inc h                                         ; $4112: $24
    dec h                                         ; $4113: $25
    ld h, $27                                     ; $4114: $26 $27
    dec h                                         ; $4116: $25
    dec b                                         ; $4117: $05
    ld b, $06                                     ; $4118: $06 $06
    ld b, $06                                     ; $411a: $06 $06
    inc bc                                        ; $411c: $03
    inc hl                                        ; $411d: $23
    dec b                                         ; $411e: $05
    ld b, $03                                     ; $411f: $06 $03
    inc hl                                        ; $4121: $23
    ld b, $01                                     ; $4122: $06 $01
    ld bc, $2101                                  ; $4124: $01 $01 $21
    dec c                                         ; $4127: $0d
    ld c, $0f                                     ; $4128: $0e $0f
    db $10                                        ; $412a: $10
    ld b, $11                                     ; $412b: $06 $11
    ld [de], a                                    ; $412d: $12

jr_084_412e:
    inc de                                        ; $412e: $13
    inc d                                         ; $412f: $14
    dec d                                         ; $4130: $15
    ld d, $17                                     ; $4131: $16 $17
    jr z, @+$1b                                   ; $4133: $28 $19

    ld a, [de]                                    ; $4135: $1a
    add hl, hl                                    ; $4136: $29
    ld b, $06                                     ; $4137: $06 $06
    dec b                                         ; $4139: $05
    dec b                                         ; $413a: $05
    ld h, $06                                     ; $413b: $26 $06
    dec b                                         ; $413d: $05
    ld b, $05                                     ; $413e: $06 $05
    ld b, $06                                     ; $4140: $06 $06
    ld b, $01                                     ; $4142: $06 $01
    ld b, $05                                     ; $4144: $06 $05
    ld b, $2a                                     ; $4146: $06 $2a
    dec hl                                        ; $4148: $2b
    inc l                                         ; $4149: $2c
    dec l                                         ; $414a: $2d
    ld l, $2f                                     ; $414b: $2e $2f
    jr nc, jr_084_4180                            ; $414d: $30 $31

    ld a, [c]                                     ; $414f: $f2
    di                                            ; $4150: $f3
    db $f4                                        ; $4151: $f4
    ld [hl-], a                                   ; $4152: $32
    or $f7                                        ; $4153: $f6 $f7
    ld hl, sp+$33                                 ; $4155: $f8 $33
    rlca                                          ; $4157: $07
    ld b, $06                                     ; $4158: $06 $06
    ld bc, $0507                                  ; $415a: $01 $07 $05
    rlca                                          ; $415d: $07
    ld bc, $0607                                  ; $415e: $01 $07 $06
    rlca                                          ; $4161: $07
    ld bc, $0507                                  ; $4162: $01 $07 $05
    rlca                                          ; $4165: $07
    ld bc, $3534                                  ; $4166: $01 $34 $35
    ld [hl], $37                                  ; $4169: $36 $37
    jr c, jr_084_41a6                             ; $416b: $38 $39

    add hl, sp                                    ; $416d: $39
    ld a, [hl-]                                   ; $416e: $3a
    dec sp                                        ; $416f: $3b
    inc a                                         ; $4170: $3c
    dec a                                         ; $4171: $3d
    ld a, $3f                                     ; $4172: $3e $3f
    ld b, b                                       ; $4174: $40
    ld b, c                                       ; $4175: $41
    ld b, d                                       ; $4176: $42
    ld bc, $0101                                  ; $4177: $01 $01 $01
    ld bc, $0101                                  ; $417a: $01 $01 $01
    ld bc, $0101                                  ; $417d: $01 $01 $01

jr_084_4180:
    ld bc, $0101                                  ; $4180: $01 $01 $01
    ld bc, $0101                                  ; $4183: $01 $01 $01
    ld bc, $2b28                                  ; $4186: $01 $28 $2b
    inc l                                         ; $4189: $2c
    ld b, e                                       ; $418a: $43
    ld b, h                                       ; $418b: $44
    cpl                                           ; $418c: $2f
    jr nc, jr_084_41d4                            ; $418d: $30 $45

    ld b, [hl]                                    ; $418f: $46
    di                                            ; $4190: $f3
    db $f4                                        ; $4191: $f4
    push af                                       ; $4192: $f5
    ld b, a                                       ; $4193: $47
    rst $30                                       ; $4194: $f7
    ld hl, sp-$07                                 ; $4195: $f8 $f9
    ld bc, $0606                                  ; $4197: $01 $06 $06
    ld b, $01                                     ; $419a: $06 $01
    rlca                                          ; $419c: $07
    dec b                                         ; $419d: $05
    ld b, $01                                     ; $419e: $06 $01
    rlca                                          ; $41a0: $07
    dec b                                         ; $41a1: $05
    dec b                                         ; $41a2: $05
    ld bc, $0607                                  ; $41a3: $01 $07 $06

jr_084_41a6:
    dec b                                         ; $41a6: $05
    ld c, b                                       ; $41a7: $48
    push hl                                       ; $41a8: $e5
    db $e4                                        ; $41a9: $e4
    call nc, $e748                                ; $41aa: $d4 $48 $e7
    ret c                                         ; $41ad: $d8

    ret c                                         ; $41ae: $d8

    ld c, c                                       ; $41af: $49
    pop de                                        ; $41b0: $d1
    call nc, Call_084_4ad4                        ; $41b1: $d4 $d4 $4a
    pop de                                        ; $41b4: $d1
    call nc, Call_000_04d4                        ; $41b5: $d4 $d4 $04
    inc h                                         ; $41b8: $24
    inc h                                         ; $41b9: $24
    inc h                                         ; $41ba: $24
    inc b                                         ; $41bb: $04
    inc h                                         ; $41bc: $24
    inc h                                         ; $41bd: $24
    inc h                                         ; $41be: $24
    inc b                                         ; $41bf: $04
    inc b                                         ; $41c0: $04
    inc h                                         ; $41c1: $24
    inc h                                         ; $41c2: $24
    inc b                                         ; $41c3: $04
    inc b                                         ; $41c4: $04
    inc h                                         ; $41c5: $24
    inc h                                         ; $41c6: $24
    push de                                       ; $41c7: $d5
    db $d3                                        ; $41c8: $d3
    call nc, $d9d5                                ; $41c9: $d4 $d5 $d9
    rst $10                                       ; $41cc: $d7
    ld c, e                                       ; $41cd: $4b
    ld c, h                                       ; $41ce: $4c
    call c, Call_084_4ddb                         ; $41cf: $dc $db $4d
    ld c, [hl]                                    ; $41d2: $4e
    rst $18                                       ; $41d3: $df

jr_084_41d4:
    sbc $4f                                       ; $41d4: $de $4f
    ld d, b                                       ; $41d6: $50
    inc b                                         ; $41d7: $04
    inc b                                         ; $41d8: $04
    inc h                                         ; $41d9: $24
    inc b                                         ; $41da: $04
    inc b                                         ; $41db: $04
    inc b                                         ; $41dc: $04
    ld bc, $0401                                  ; $41dd: $01 $01 $04
    inc b                                         ; $41e0: $04
    ld bc, $0401                                  ; $41e1: $01 $01 $04
    inc b                                         ; $41e4: $04
    ld bc, $d601                                  ; $41e5: $01 $01 $d6
    db $d3                                        ; $41e8: $d3
    call nc, Call_084_4cd5                        ; $41e9: $d4 $d5 $4c
    ld c, h                                       ; $41ec: $4c
    ld c, h                                       ; $41ed: $4c
    ld d, c                                       ; $41ee: $51
    ld c, h                                       ; $41ef: $4c
    ld c, h                                       ; $41f0: $4c
    ld c, h                                       ; $41f1: $4c
    ld d, c                                       ; $41f2: $51
    ld d, b                                       ; $41f3: $50
    ld d, b                                       ; $41f4: $50
    ld d, b                                       ; $41f5: $50
    ld d, d                                       ; $41f6: $52
    inc b                                         ; $41f7: $04
    inc b                                         ; $41f8: $04
    inc h                                         ; $41f9: $24
    inc b                                         ; $41fa: $04
    ld bc, $0101                                  ; $41fb: $01 $01 $01
    ld bc, $0101                                  ; $41fe: $01 $01 $01
    ld bc, $0101                                  ; $4201: $01 $01 $01
    ld bc, $0101                                  ; $4204: $01 $01 $01
    jp nc, $d1d1                                  ; $4207: $d2 $d1 $d1

    pop de                                        ; $420a: $d1
    jp nc, $d1d1                                  ; $420b: $d2 $d1 $d1

    pop de                                        ; $420e: $d1
    jp nc, $d1d1                                  ; $420f: $d2 $d1 $d1

    pop de                                        ; $4212: $d1
    jp nc, $d1d1                                  ; $4213: $d2 $d1 $d1

    pop de                                        ; $4216: $d1
    add b                                         ; $4217: $80
    add b                                         ; $4218: $80
    add b                                         ; $4219: $80
    add b                                         ; $421a: $80
    add b                                         ; $421b: $80
    add b                                         ; $421c: $80
    add b                                         ; $421d: $80
    add b                                         ; $421e: $80
    add b                                         ; $421f: $80
    add b                                         ; $4220: $80
    add b                                         ; $4221: $80
    add b                                         ; $4222: $80
    add b                                         ; $4223: $80
    add b                                         ; $4224: $80
    add b                                         ; $4225: $80
    add b                                         ; $4226: $80
    ld d, e                                       ; $4227: $53
    ld d, h                                       ; $4228: $54
    db $eb                                        ; $4229: $eb
    db $eb                                        ; $422a: $eb
    db $fd                                        ; $422b: $fd
    ld d, l                                       ; $422c: $55
    rst $38                                       ; $422d: $ff
    nop                                           ; $422e: $00
    ld bc, $0302                                  ; $422f: $01 $02 $03
    inc b                                         ; $4232: $04
    dec b                                         ; $4233: $05
    ld b, $07                                     ; $4234: $06 $07
    ld [$0404], sp                                ; $4236: $08 $04 $04
    inc h                                         ; $4239: $24
    inc h                                         ; $423a: $24
    rlca                                          ; $423b: $07
    rlca                                          ; $423c: $07
    rlca                                          ; $423d: $07
    rlca                                          ; $423e: $07
    ld b, $06                                     ; $423f: $06 $06
    dec b                                         ; $4241: $05
    ld b, $05                                     ; $4242: $06 $05
    dec b                                         ; $4244: $05
    ld b, $06                                     ; $4245: $06 $06
    db $ec                                        ; $4247: $ec
    ld [$5756], a                                 ; $4248: $ea $56 $57
    dec bc                                        ; $424b: $0b
    inc c                                         ; $424c: $0c
    ld e, b                                       ; $424d: $58
    ld e, c                                       ; $424e: $59
    ld a, [c]                                     ; $424f: $f2
    di                                            ; $4250: $f3
    ld e, b                                       ; $4251: $58
    ld e, d                                       ; $4252: $5a
    or $f7                                        ; $4253: $f6 $f7
    ld e, e                                       ; $4255: $5b
    ld e, h                                       ; $4256: $5c
    inc b                                         ; $4257: $04
    inc b                                         ; $4258: $04
    ld bc, $0701                                  ; $4259: $01 $01 $07
    rlca                                          ; $425c: $07
    ld bc, $0601                                  ; $425d: $01 $01 $06
    rlca                                          ; $4260: $07
    ld bc, $0501                                  ; $4261: $01 $01 $05
    rlca                                          ; $4264: $07
    ld bc, $5d01                                  ; $4265: $01 $01 $5d
    ld e, [hl]                                    ; $4268: $5e
    ld e, a                                       ; $4269: $5f
    ld h, b                                       ; $426a: $60
    ld h, c                                       ; $426b: $61
    ld h, d                                       ; $426c: $62
    ld h, e                                       ; $426d: $63
    ld h, h                                       ; $426e: $64
    ld h, l                                       ; $426f: $65
    ld h, [hl]                                    ; $4270: $66
    ld h, a                                       ; $4271: $67
    ld h, h                                       ; $4272: $64
    ld l, b                                       ; $4273: $68
    ld l, c                                       ; $4274: $69
    ld l, d                                       ; $4275: $6a
    ld l, e                                       ; $4276: $6b
    ld bc, $0101                                  ; $4277: $01 $01 $01
    ld bc, $0101                                  ; $427a: $01 $01 $01
    ld bc, $0101                                  ; $427d: $01 $01 $01
    ld bc, $0101                                  ; $4280: $01 $01 $01
    ld bc, $0101                                  ; $4283: $01 $01 $01
    ld bc, $d1d2                                  ; $4286: $01 $d2 $d1
    pop de                                        ; $4289: $d1
    pop de                                        ; $428a: $d1
    ld l, h                                       ; $428b: $6c
    ld l, l                                       ; $428c: $6d
    ld l, [hl]                                    ; $428d: $6e
    pop de                                        ; $428e: $d1
    call nc, $d2d5                                ; $428f: $d4 $d5 $d2
    pop de                                        ; $4292: $d1
    db $eb                                        ; $4293: $eb
    reti                                          ; $4294: $d9


    ld l, a                                       ; $4295: $6f
    pop de                                        ; $4296: $d1
    add b                                         ; $4297: $80
    add b                                         ; $4298: $80
    add b                                         ; $4299: $80
    add b                                         ; $429a: $80
    add b                                         ; $429b: $80
    add b                                         ; $429c: $80
    add b                                         ; $429d: $80
    add b                                         ; $429e: $80
    inc b                                         ; $429f: $04
    inc b                                         ; $42a0: $04
    add b                                         ; $42a1: $80
    add b                                         ; $42a2: $80
    inc b                                         ; $42a3: $04
    inc b                                         ; $42a4: $04
    add b                                         ; $42a5: $80
    add b                                         ; $42a6: $80
    inc e                                         ; $42a7: $1c
    dec e                                         ; $42a8: $1d
    ld e, $1f                                     ; $42a9: $1e $1f
    jr nz, jr_084_431d                            ; $42ab: $20 $70

    ld [hl], c                                    ; $42ad: $71
    ld [hl+], a                                   ; $42ae: $22
    ld b, $72                                     ; $42af: $06 $72
    ld [hl], e                                    ; $42b1: $73
    ld [hl], h                                    ; $42b2: $74
    ld [hl], l                                    ; $42b3: $75
    halt                                          ; $42b4: $76
    ld [hl], a                                    ; $42b5: $77
    ld a, b                                       ; $42b6: $78
    ld b, $06                                     ; $42b7: $06 $06
    dec b                                         ; $42b9: $05
    dec b                                         ; $42ba: $05
    ld b, $06                                     ; $42bb: $06 $06
    dec b                                         ; $42bd: $05
    ld b, $05                                     ; $42be: $06 $05
    ld b, $01                                     ; $42c0: $06 $01
    ld bc, $0606                                  ; $42c2: $01 $06 $06
    ld bc, $0d01                                  ; $42c5: $01 $01 $0d
    ld c, $0f                                     ; $42c8: $0e $0f
    db $10                                        ; $42ca: $10
    ld b, $11                                     ; $42cb: $06 $11
    ld [de], a                                    ; $42cd: $12
    inc de                                        ; $42ce: $13
    ld a, c                                       ; $42cf: $79
    dec d                                         ; $42d0: $15
    ld d, $17                                     ; $42d1: $16 $17
    ld a, d                                       ; $42d3: $7a
    add hl, de                                    ; $42d4: $19
    ld a, [de]                                    ; $42d5: $1a
    add hl, hl                                    ; $42d6: $29
    ld b, $07                                     ; $42d7: $06 $07
    rlca                                          ; $42d9: $07
    rlca                                          ; $42da: $07
    ld h, $06                                     ; $42db: $26 $06
    dec b                                         ; $42dd: $05
    ld b, $01                                     ; $42de: $06 $01
    ld b, $06                                     ; $42e0: $06 $06
    dec b                                         ; $42e2: $05
    ld bc, $0606                                  ; $42e3: $01 $06 $06
    ld b, $1c                                     ; $42e6: $06 $1c
    dec e                                         ; $42e8: $1d
    ld e, $1f                                     ; $42e9: $1e $1f
    jr nz, jr_084_435d                            ; $42eb: $20 $70

    ld [hl], c                                    ; $42ed: $71
    ld [hl+], a                                   ; $42ee: $22
    ld b, $72                                     ; $42ef: $06 $72
    ld a, e                                       ; $42f1: $7b
    inc h                                         ; $42f2: $24
    ld [hl], l                                    ; $42f3: $75
    halt                                          ; $42f4: $76
    ld a, h                                       ; $42f5: $7c
    ld a, l                                       ; $42f6: $7d
    rlca                                          ; $42f7: $07
    rlca                                          ; $42f8: $07
    rlca                                          ; $42f9: $07
    rlca                                          ; $42fa: $07
    ld b, $06                                     ; $42fb: $06 $06
    dec b                                         ; $42fd: $05
    rlca                                          ; $42fe: $07
    ld b, $05                                     ; $42ff: $06 $05
    dec b                                         ; $4301: $05
    rlca                                          ; $4302: $07
    dec b                                         ; $4303: $05
    ld b, $06                                     ; $4304: $06 $06
    rlca                                          ; $4306: $07
    call nc, Call_084_6fdc                        ; $4307: $d4 $dc $6f
    pop de                                        ; $430a: $d1
    call nc, Call_084_6fdf                        ; $430b: $d4 $df $6f
    pop de                                        ; $430e: $d1
    db $eb                                        ; $430f: $eb
    db $ec                                        ; $4310: $ec
    ld l, a                                       ; $4311: $6f
    pop de                                        ; $4312: $d1
    jr jr_084_432e                                ; $4313: $18 $19

    ld l, a                                       ; $4315: $6f
    ld a, [hl]                                    ; $4316: $7e
    inc b                                         ; $4317: $04
    inc b                                         ; $4318: $04
    add b                                         ; $4319: $80
    add b                                         ; $431a: $80
    inc b                                         ; $431b: $04
    inc b                                         ; $431c: $04

jr_084_431d:
    add b                                         ; $431d: $80
    add b                                         ; $431e: $80
    inc b                                         ; $431f: $04
    inc b                                         ; $4320: $04
    add b                                         ; $4321: $80
    add b                                         ; $4322: $80
    rlca                                          ; $4323: $07
    rlca                                          ; $4324: $07
    add b                                         ; $4325: $80
    add b                                         ; $4326: $80
    di                                            ; $4327: $f3
    ld a, a                                       ; $4328: $7f
    add b                                         ; $4329: $80
    add c                                         ; $432a: $81
    add d                                         ; $432b: $82
    add e                                         ; $432c: $83
    add h                                         ; $432d: $84

jr_084_432e:
    add l                                         ; $432e: $85
    ld bc, $0302                                  ; $432f: $01 $02 $03
    inc b                                         ; $4332: $04
    dec b                                         ; $4333: $05
    ld b, $07                                     ; $4334: $06 $07
    ld [$0726], sp                                ; $4336: $08 $26 $07
    ld a, [bc]                                    ; $4339: $0a
    ld a, [bc]                                    ; $433a: $0a
    ld c, $0f                                     ; $433b: $0e $0f
    ld a, [bc]                                    ; $433d: $0a
    rrca                                          ; $433e: $0f
    ld b, $07                                     ; $433f: $06 $07
    rlca                                          ; $4341: $07
    rlca                                          ; $4342: $07
    ld b, $06                                     ; $4343: $06 $06
    ld b, $05                                     ; $4345: $06 $05
    add b                                         ; $4347: $80
    dec hl                                        ; $4348: $2b
    inc l                                         ; $4349: $2c
    ld b, e                                       ; $434a: $43
    add h                                         ; $434b: $84
    cpl                                           ; $434c: $2f
    jr nc, @+$47                                  ; $434d: $30 $45

    ld a, [c]                                     ; $434f: $f2
    di                                            ; $4350: $f3
    db $f4                                        ; $4351: $f4
    push af                                       ; $4352: $f5
    or $f7                                        ; $4353: $f6 $f7
    ld hl, sp-$07                                 ; $4355: $f8 $f9
    ld a, [hl+]                                   ; $4357: $2a
    rlca                                          ; $4358: $07
    ld b, $05                                     ; $4359: $06 $05
    ld a, [hl+]                                   ; $435b: $2a
    rlca                                          ; $435c: $07

jr_084_435d:
    ld b, $06                                     ; $435d: $06 $06
    rlca                                          ; $435f: $07
    rlca                                          ; $4360: $07
    dec b                                         ; $4361: $05
    dec b                                         ; $4362: $05
    ld b, $06                                     ; $4363: $06 $06
    ld b, $05                                     ; $4365: $06 $05
    di                                            ; $4367: $f3
    ld a, a                                       ; $4368: $7f
    add [hl]                                      ; $4369: $86
    add a                                         ; $436a: $87
    add d                                         ; $436b: $82
    add e                                         ; $436c: $83
    di                                            ; $436d: $f3
    add l                                         ; $436e: $85
    ld bc, $0302                                  ; $436f: $01 $02 $03
    inc b                                         ; $4372: $04
    dec b                                         ; $4373: $05
    ld b, $07                                     ; $4374: $06 $07
    ld [$0626], sp                                ; $4376: $08 $26 $06
    dec c                                         ; $4379: $0d
    ld c, $0d                                     ; $437a: $0e $0d
    dec c                                         ; $437c: $0d
    ld b, $0e                                     ; $437d: $06 $0e
    ld b, $05                                     ; $437f: $06 $05
    dec b                                         ; $4381: $05
    ld b, $05                                     ; $4382: $06 $05
    ld b, $06                                     ; $4384: $06 $06
    rlca                                          ; $4386: $07
    ld a, [hl+]                                   ; $4387: $2a
    dec hl                                        ; $4388: $2b
    jp nc, $887e                                  ; $4389: $d2 $7e $88

    ld l, l                                       ; $438c: $6d
    adc c                                         ; $438d: $89
    ld a, [hl]                                    ; $438e: $7e
    jp nc, $d1d1                                  ; $438f: $d2 $d1 $d1

    pop de                                        ; $4392: $d1
    jp nc, $d1d1                                  ; $4393: $d2 $d1 $d1

    pop de                                        ; $4396: $d1
    ld b, $07                                     ; $4397: $06 $07
    add b                                         ; $4399: $80
    add b                                         ; $439a: $80
    adc b                                         ; $439b: $88
    add b                                         ; $439c: $80
    adc b                                         ; $439d: $88
    add b                                         ; $439e: $80
    add b                                         ; $439f: $80
    add b                                         ; $43a0: $80
    add b                                         ; $43a1: $80
    add b                                         ; $43a2: $80
    add b                                         ; $43a3: $80
    add b                                         ; $43a4: $80
    add b                                         ; $43a5: $80
    add b                                         ; $43a6: $80
    dec c                                         ; $43a7: $0d
    ld c, $0f                                     ; $43a8: $0e $0f
    db $10                                        ; $43aa: $10
    adc d                                         ; $43ab: $8a
    adc e                                         ; $43ac: $8b
    adc h                                         ; $43ad: $8c
    inc de                                        ; $43ae: $13
    adc l                                         ; $43af: $8d
    adc [hl]                                      ; $43b0: $8e
    adc a                                         ; $43b1: $8f
    rla                                           ; $43b2: $17
    sub b                                         ; $43b3: $90
    sub c                                         ; $43b4: $91
    sub d                                         ; $43b5: $92
    add hl, hl                                    ; $43b6: $29
    rlca                                          ; $43b7: $07
    ld b, $07                                     ; $43b8: $06 $07
    rlca                                          ; $43ba: $07
    adc e                                         ; $43bb: $8b
    adc e                                         ; $43bc: $8b
    adc e                                         ; $43bd: $8b
    dec b                                         ; $43be: $05
    adc e                                         ; $43bf: $8b
    adc e                                         ; $43c0: $8b
    adc e                                         ; $43c1: $8b
    ld b, $0b                                     ; $43c2: $06 $0b
    dec bc                                        ; $43c4: $0b
    dec bc                                        ; $43c5: $0b
    ld b, $1c                                     ; $43c6: $06 $1c
    dec e                                         ; $43c8: $1d
    ld e, $1f                                     ; $43c9: $1e $1f
    jr nz, jr_084_443d                            ; $43cb: $20 $70

    ld [hl], c                                    ; $43cd: $71
    ld [hl+], a                                   ; $43ce: $22
    ld b, $72                                     ; $43cf: $06 $72
    ld a, e                                       ; $43d1: $7b
    inc h                                         ; $43d2: $24
    ld [hl], l                                    ; $43d3: $75
    halt                                          ; $43d4: $76
    ld a, h                                       ; $43d5: $7c
    ld a, l                                       ; $43d6: $7d
    rlca                                          ; $43d7: $07
    rlca                                          ; $43d8: $07
    rlca                                          ; $43d9: $07
    rlca                                          ; $43da: $07
    ld b, $06                                     ; $43db: $06 $06
    ld b, $05                                     ; $43dd: $06 $05
    ld b, $06                                     ; $43df: $06 $06
    dec b                                         ; $43e1: $05
    dec b                                         ; $43e2: $05
    ld b, $05                                     ; $43e3: $06 $05
    ld b, $06                                     ; $43e5: $06 $06
    dec c                                         ; $43e7: $0d
    ld c, $0f                                     ; $43e8: $0e $0f
    db $10                                        ; $43ea: $10
    ld b, $11                                     ; $43eb: $06 $11
    ld [de], a                                    ; $43ed: $12
    inc de                                        ; $43ee: $13
    inc d                                         ; $43ef: $14
    dec d                                         ; $43f0: $15
    ld d, $17                                     ; $43f1: $16 $17
    jr jr_084_4440                                ; $43f3: $18 $4b

    ld c, h                                       ; $43f5: $4c
    ld c, h                                       ; $43f6: $4c
    rlca                                          ; $43f7: $07
    rlca                                          ; $43f8: $07
    ld b, $06                                     ; $43f9: $06 $06
    ld h, $06                                     ; $43fb: $26 $06
    ld b, $06                                     ; $43fd: $06 $06
    dec b                                         ; $43ff: $05
    dec b                                         ; $4400: $05
    ld b, $05                                     ; $4401: $06 $05
    ld b, $81                                     ; $4403: $06 $81
    add c                                         ; $4405: $81
    add c                                         ; $4406: $81
    sub e                                         ; $4407: $93
    sub h                                         ; $4408: $94
    sub l                                         ; $4409: $95
    ld b, e                                       ; $440a: $43
    sub [hl]                                      ; $440b: $96
    sub a                                         ; $440c: $97
    sbc b                                         ; $440d: $98
    sbc c                                         ; $440e: $99
    sbc d                                         ; $440f: $9a
    sbc e                                         ; $4410: $9b
    sbc h                                         ; $4411: $9c
    sbc l                                         ; $4412: $9d
    sbc [hl]                                      ; $4413: $9e
    sbc a                                         ; $4414: $9f
    and b                                         ; $4415: $a0
    and c                                         ; $4416: $a1
    dec bc                                        ; $4417: $0b
    dec bc                                        ; $4418: $0b
    dec bc                                        ; $4419: $0b
    ld b, $09                                     ; $441a: $06 $09
    add hl, bc                                    ; $441c: $09
    add hl, bc                                    ; $441d: $09
    add hl, bc                                    ; $441e: $09
    add hl, bc                                    ; $441f: $09
    add hl, bc                                    ; $4420: $09
    add hl, bc                                    ; $4421: $09
    add hl, bc                                    ; $4422: $09
    ld a, [bc]                                    ; $4423: $0a
    ld a, [bc]                                    ; $4424: $0a
    ld a, [bc]                                    ; $4425: $0a
    ld a, [bc]                                    ; $4426: $0a
    and d                                         ; $4427: $a2
    ld a, a                                       ; $4428: $7f
    add [hl]                                      ; $4429: $86
    add a                                         ; $442a: $87
    and e                                         ; $442b: $a3
    add e                                         ; $442c: $83
    di                                            ; $442d: $f3
    add l                                         ; $442e: $85
    and h                                         ; $442f: $a4
    ld [bc], a                                    ; $4430: $02
    inc bc                                        ; $4431: $03
    inc b                                         ; $4432: $04
    and l                                         ; $4433: $a5
    ld b, $07                                     ; $4434: $06 $07
    ld [$0609], sp                                ; $4436: $08 $09 $06
    ld c, $0e                                     ; $4439: $0e $0e
    add hl, bc                                    ; $443b: $09
    dec c                                         ; $443c: $0d

jr_084_443d:
    ld b, $0d                                     ; $443d: $06 $0d
    add hl, bc                                    ; $443f: $09

jr_084_4440:
    ld b, $05                                     ; $4440: $06 $05
    ld b, $0a                                     ; $4442: $06 $0a
    rlca                                          ; $4444: $07
    ld b, $06                                     ; $4445: $06 $06
    ld a, [hl+]                                   ; $4447: $2a
    ld c, e                                       ; $4448: $4b
    ld c, h                                       ; $4449: $4c
    ld c, h                                       ; $444a: $4c
    ld l, $4f                                     ; $444b: $2e $4f
    ld d, b                                       ; $444d: $50
    ld d, b                                       ; $444e: $50
    ld a, [c]                                     ; $444f: $f2
    ld d, [hl]                                    ; $4450: $56
    ld d, a                                       ; $4451: $57
    ld e, l                                       ; $4452: $5d
    or $58                                        ; $4453: $f6 $58
    ld e, c                                       ; $4455: $59
    ld h, c                                       ; $4456: $61
    dec b                                         ; $4457: $05
    add c                                         ; $4458: $81
    add c                                         ; $4459: $81
    add c                                         ; $445a: $81
    ld b, $81                                     ; $445b: $06 $81
    add c                                         ; $445d: $81
    add c                                         ; $445e: $81
    ld b, $01                                     ; $445f: $06 $01
    ld bc, $0701                                  ; $4461: $01 $01 $07
    ld bc, $0101                                  ; $4464: $01 $01 $01
    and [hl]                                      ; $4467: $a6
    ld c, $0f                                     ; $4468: $0e $0f
    db $10                                        ; $446a: $10
    and a                                         ; $446b: $a7
    xor b                                         ; $446c: $a8
    ld [de], a                                    ; $446d: $12
    inc de                                        ; $446e: $13
    xor c                                         ; $446f: $a9
    xor d                                         ; $4470: $aa
    ld d, $17                                     ; $4471: $16 $17
    xor e                                         ; $4473: $ab
    xor h                                         ; $4474: $ac
    ld a, [de]                                    ; $4475: $1a
    add hl, hl                                    ; $4476: $29
    ld a, [bc]                                    ; $4477: $0a
    rlca                                          ; $4478: $07
    rlca                                          ; $4479: $07
    rlca                                          ; $447a: $07
    add hl, bc                                    ; $447b: $09
    add hl, bc                                    ; $447c: $09
    rlca                                          ; $447d: $07
    rlca                                          ; $447e: $07
    add hl, bc                                    ; $447f: $09
    add hl, bc                                    ; $4480: $09
    rlca                                          ; $4481: $07
    dec b                                         ; $4482: $05
    ld a, [bc]                                    ; $4483: $0a
    ld a, [bc]                                    ; $4484: $0a
    rlca                                          ; $4485: $07
    ld b, $ad                                     ; $4486: $06 $ad
    dec e                                         ; $4488: $1d
    ld e, $1f                                     ; $4489: $1e $1f
    jr nz, jr_084_44fd                            ; $448b: $20 $70

    ld [hl], c                                    ; $448d: $71
    ld [hl+], a                                   ; $448e: $22
    ld b, $72                                     ; $448f: $06 $72
    ld a, e                                       ; $4491: $7b
    inc h                                         ; $4492: $24
    ld [hl], l                                    ; $4493: $75
    halt                                          ; $4494: $76
    ld a, h                                       ; $4495: $7c
    ld a, l                                       ; $4496: $7d
    ld a, [bc]                                    ; $4497: $0a
    rlca                                          ; $4498: $07
    dec b                                         ; $4499: $05
    ld b, $07                                     ; $449a: $06 $07
    rlca                                          ; $449c: $07
    ld b, $06                                     ; $449d: $06 $06
    ld b, $06                                     ; $449f: $06 $06
    dec b                                         ; $44a1: $05
    ld b, $05                                     ; $44a2: $06 $05
    ld b, $06                                     ; $44a4: $06 $06
    ld b, $0d                                     ; $44a6: $06 $0d
    ld e, b                                       ; $44a8: $58
    ld e, d                                       ; $44a9: $5a
    ld h, l                                       ; $44aa: $65
    ld b, $5b                                     ; $44ab: $06 $5b
    ld e, h                                       ; $44ad: $5c
    ld l, b                                       ; $44ae: $68
    inc d                                         ; $44af: $14
    dec d                                         ; $44b0: $15
    ld d, $17                                     ; $44b1: $16 $17
    jr jr_084_44ce                                ; $44b3: $18 $19

    ld a, [de]                                    ; $44b5: $1a
    add hl, hl                                    ; $44b6: $29
    rlca                                          ; $44b7: $07
    ld bc, $0101                                  ; $44b8: $01 $01 $01
    daa                                           ; $44bb: $27
    ld bc, $0101                                  ; $44bc: $01 $01 $01
    rlca                                          ; $44bf: $07
    rlca                                          ; $44c0: $07
    rlca                                          ; $44c1: $07
    rlca                                          ; $44c2: $07
    ld b, $05                                     ; $44c3: $06 $05
    ld b, $06                                     ; $44c5: $06 $06
    ld a, [hl+]                                   ; $44c7: $2a
    dec hl                                        ; $44c8: $2b
    inc l                                         ; $44c9: $2c
    ld b, e                                       ; $44ca: $43
    adc d                                         ; $44cb: $8a
    adc e                                         ; $44cc: $8b
    adc h                                         ; $44cd: $8c

jr_084_44ce:
    ld b, l                                       ; $44ce: $45
    adc l                                         ; $44cf: $8d
    adc [hl]                                      ; $44d0: $8e
    adc a                                         ; $44d1: $8f
    push af                                       ; $44d2: $f5
    sub b                                         ; $44d3: $90
    sub c                                         ; $44d4: $91
    sub d                                         ; $44d5: $92
    ld sp, hl                                     ; $44d6: $f9
    rlca                                          ; $44d7: $07
    rlca                                          ; $44d8: $07
    rlca                                          ; $44d9: $07
    ld b, $8b                                     ; $44da: $06 $8b
    adc e                                         ; $44dc: $8b
    adc e                                         ; $44dd: $8b
    ld b, $8b                                     ; $44de: $06 $8b
    adc e                                         ; $44e0: $8b
    adc e                                         ; $44e1: $8b
    dec b                                         ; $44e2: $05
    dec bc                                        ; $44e3: $0b
    dec bc                                        ; $44e4: $0b
    dec bc                                        ; $44e5: $0b
    ld b, $f3                                     ; $44e6: $06 $f3
    ld a, a                                       ; $44e8: $7f
    add [hl]                                      ; $44e9: $86
    add a                                         ; $44ea: $87
    add d                                         ; $44eb: $82
    add e                                         ; $44ec: $83
    di                                            ; $44ed: $f3
    add l                                         ; $44ee: $85
    ld bc, $0302                                  ; $44ef: $01 $02 $03
    inc b                                         ; $44f2: $04
    dec b                                         ; $44f3: $05
    ld b, $07                                     ; $44f4: $06 $07
    ld [$0526], sp                                ; $44f6: $08 $26 $05

jr_084_44f9:
    ld c, $0d                                     ; $44f9: $0e $0d
    ld c, $0e                                     ; $44fb: $0e $0e

jr_084_44fd:
    dec b                                         ; $44fd: $05
    ld c, $06                                     ; $44fe: $0e $06
    ld b, $06                                     ; $4500: $06 $06
    ld b, $05                                     ; $4502: $06 $05
    ld b, $05                                     ; $4504: $06 $05
    ld b, $2a                                     ; $4506: $06 $2a
    dec hl                                        ; $4508: $2b
    inc l                                         ; $4509: $2c
    ld b, e                                       ; $450a: $43
    ld l, $2f                                     ; $450b: $2e $2f
    jr nc, @-$50                                  ; $450d: $30 $ae

    ld a, [c]                                     ; $450f: $f2
    di                                            ; $4510: $f3
    db $f4                                        ; $4511: $f4
    xor a                                         ; $4512: $af
    or $f7                                        ; $4513: $f6 $f7
    ld hl, sp-$50                                 ; $4515: $f8 $b0
    dec b                                         ; $4517: $05
    ld b, $06                                     ; $4518: $06 $06
    ld b, $06                                     ; $451a: $06 $06
    dec b                                         ; $451c: $05
    ld b, $09                                     ; $451d: $06 $09
    ld b, $06                                     ; $451f: $06 $06
    ld b, $09                                     ; $4521: $06 $09
    dec b                                         ; $4523: $05
    ld b, $07                                     ; $4524: $06 $07
    add hl, bc                                    ; $4526: $09
    inc e                                         ; $4527: $1c
    dec e                                         ; $4528: $1d
    ld e, $1f                                     ; $4529: $1e $1f
    jr nz, jr_084_459d                            ; $452b: $20 $70

    ld [hl], c                                    ; $452d: $71
    ld [hl+], a                                   ; $452e: $22
    ld b, $72                                     ; $452f: $06 $72
    ld a, e                                       ; $4531: $7b
    inc h                                         ; $4532: $24
    ld c, h                                       ; $4533: $4c
    ld c, h                                       ; $4534: $4c
    ld d, c                                       ; $4535: $51
    ld a, l                                       ; $4536: $7d
    dec b                                         ; $4537: $05
    dec b                                         ; $4538: $05
    ld b, $06                                     ; $4539: $06 $06
    ld b, $05                                     ; $453b: $06 $05
    ld b, $06                                     ; $453d: $06 $06
    dec b                                         ; $453f: $05
    ld b, $06                                     ; $4540: $06 $06
    dec b                                         ; $4542: $05
    add c                                         ; $4543: $81
    add c                                         ; $4544: $81
    add c                                         ; $4545: $81
    dec b                                         ; $4546: $05
    dec c                                         ; $4547: $0d
    ld c, $0f                                     ; $4548: $0e $0f
    db $10                                        ; $454a: $10
    ld b, $11                                     ; $454b: $06 $11
    ld [de], a                                    ; $454d: $12
    inc de                                        ; $454e: $13
    inc d                                         ; $454f: $14
    dec d                                         ; $4550: $15
    ld d, $17                                     ; $4551: $16 $17
    jr jr_084_456e                                ; $4553: $18 $19

    ld a, [de]                                    ; $4555: $1a
    add hl, hl                                    ; $4556: $29
    ld b, $05                                     ; $4557: $06 $05
    dec b                                         ; $4559: $05
    dec b                                         ; $455a: $05
    ld h, $05                                     ; $455b: $26 $05
    ld b, $06                                     ; $455d: $06 $06
    ld b, $06                                     ; $455f: $06 $06
    ld b, $05                                     ; $4561: $06 $05
    ld b, $05                                     ; $4563: $06 $05
    ld b, $06                                     ; $4565: $06 $06
    inc e                                         ; $4567: $1c
    dec e                                         ; $4568: $1d
    ld e, $1f                                     ; $4569: $1e $1f

Jump_084_456b:
    jr nz, jr_084_44f9                            ; $456b: $20 $8c

    adc e                                         ; $456d: $8b

jr_084_456e:
    adc d                                         ; $456e: $8a
    ld b, $8f                                     ; $456f: $06 $8f
    adc [hl]                                      ; $4571: $8e
    adc l                                         ; $4572: $8d
    ld [hl], l                                    ; $4573: $75
    sub d                                         ; $4574: $92
    sub c                                         ; $4575: $91
    sub b                                         ; $4576: $90
    ld b, $06                                     ; $4577: $06 $06
    ld b, $07                                     ; $4579: $06 $07
    ld b, $ab                                     ; $457b: $06 $ab
    xor e                                         ; $457d: $ab
    xor e                                         ; $457e: $ab
    ld b, $ab                                     ; $457f: $06 $ab
    xor e                                         ; $4581: $ab
    xor e                                         ; $4582: $ab
    ld b, $2b                                     ; $4583: $06 $2b
    dec hl                                        ; $4585: $2b
    dec hl                                        ; $4586: $2b
    ld c, h                                       ; $4587: $4c
    ld c, h                                       ; $4588: $4c
    ld d, c                                       ; $4589: $51
    add a                                         ; $458a: $87
    ld d, b                                       ; $458b: $50
    ld d, b                                       ; $458c: $50
    ld d, d                                       ; $458d: $52
    add l                                         ; $458e: $85
    ld e, [hl]                                    ; $458f: $5e
    ld e, a                                       ; $4590: $5f
    ld h, b                                       ; $4591: $60
    inc b                                         ; $4592: $04
    ld h, d                                       ; $4593: $62
    ld h, e                                       ; $4594: $63
    ld h, h                                       ; $4595: $64
    ld [$8181], sp                                ; $4596: $08 $81 $81
    add c                                         ; $4599: $81
    dec c                                         ; $459a: $0d
    add c                                         ; $459b: $81
    add c                                         ; $459c: $81

jr_084_459d:
    add c                                         ; $459d: $81
    ld c, $01                                     ; $459e: $0e $01
    ld bc, $0601                                  ; $45a0: $01 $01 $06
    ld bc, $0101                                  ; $45a3: $01 $01 $01
    rlca                                          ; $45a6: $07
    ld a, [hl+]                                   ; $45a7: $2a
    dec hl                                        ; $45a8: $2b
    inc l                                         ; $45a9: $2c
    and d                                         ; $45aa: $a2
    ld l, $2f                                     ; $45ab: $2e $2f
    jr nc, @-$5b                                  ; $45ad: $30 $a3

    ld a, [c]                                     ; $45af: $f2
    di                                            ; $45b0: $f3
    db $f4                                        ; $45b1: $f4
    and h                                         ; $45b2: $a4
    or $f7                                        ; $45b3: $f6 $f7
    ld hl, sp-$5b                                 ; $45b5: $f8 $a5
    ld b, $05                                     ; $45b7: $06 $05
    ld b, $29                                     ; $45b9: $06 $29
    dec b                                         ; $45bb: $05
    ld b, $06                                     ; $45bc: $06 $06
    add hl, hl                                    ; $45be: $29
    ld b, $05                                     ; $45bf: $06 $05
    ld b, $29                                     ; $45c1: $06 $29
    dec b                                         ; $45c3: $05
    ld b, $07                                     ; $45c4: $06 $07
    ld a, [hl+]                                   ; $45c6: $2a
    di                                            ; $45c7: $f3
    sub l                                         ; $45c8: $95
    sub h                                         ; $45c9: $94
    sub e                                         ; $45ca: $93
    sbc c                                         ; $45cb: $99
    sbc b                                         ; $45cc: $98
    sub a                                         ; $45cd: $97
    sub [hl]                                      ; $45ce: $96
    sbc l                                         ; $45cf: $9d
    sbc h                                         ; $45d0: $9c
    sbc e                                         ; $45d1: $9b
    sbc d                                         ; $45d2: $9a
    and c                                         ; $45d3: $a1
    and b                                         ; $45d4: $a0
    sbc a                                         ; $45d5: $9f
    sbc [hl]                                      ; $45d6: $9e
    ld h, $2b                                     ; $45d7: $26 $2b
    dec hl                                        ; $45d9: $2b
    dec hl                                        ; $45da: $2b
    add hl, hl                                    ; $45db: $29
    add hl, hl                                    ; $45dc: $29
    add hl, hl                                    ; $45dd: $29
    add hl, hl                                    ; $45de: $29
    add hl, hl                                    ; $45df: $29
    add hl, hl                                    ; $45e0: $29
    add hl, hl                                    ; $45e1: $29
    add hl, hl                                    ; $45e2: $29
    ld a, [hl+]                                   ; $45e3: $2a
    ld a, [hl+]                                   ; $45e4: $2a
    ld a, [hl+]                                   ; $45e5: $2a
    ld a, [hl+]                                   ; $45e6: $2a
    ld h, [hl]                                    ; $45e7: $66
    ld h, a                                       ; $45e8: $67
    ld h, h                                       ; $45e9: $64
    rra                                           ; $45ea: $1f
    ld l, c                                       ; $45eb: $69
    ld l, d                                       ; $45ec: $6a
    ld l, e                                       ; $45ed: $6b
    ld [hl+], a                                   ; $45ee: $22
    ld b, $72                                     ; $45ef: $06 $72
    ld a, e                                       ; $45f1: $7b
    inc h                                         ; $45f2: $24
    ld [hl], l                                    ; $45f3: $75
    halt                                          ; $45f4: $76
    ld a, h                                       ; $45f5: $7c
    ld a, l                                       ; $45f6: $7d
    ld bc, $0101                                  ; $45f7: $01 $01 $01
    rlca                                          ; $45fa: $07
    ld bc, $0101                                  ; $45fb: $01 $01 $01
    rlca                                          ; $45fe: $07
    rlca                                          ; $45ff: $07
    rlca                                          ; $4600: $07
    rlca                                          ; $4601: $07
    rlca                                          ; $4602: $07
    dec b                                         ; $4603: $05
    ld b, $06                                     ; $4604: $06 $06
    ld b, $0d                                     ; $4606: $06 $0d
    ld c, $0f                                     ; $4608: $0e $0f
    xor l                                         ; $460a: $ad
    ld b, $11                                     ; $460b: $06 $11
    ld [de], a                                    ; $460d: $12
    inc de                                        ; $460e: $13
    inc d                                         ; $460f: $14
    dec d                                         ; $4610: $15
    ld d, $17                                     ; $4611: $16 $17
    jr jr_084_462e                                ; $4613: $18 $19

    ld a, [de]                                    ; $4615: $1a
    add hl, hl                                    ; $4616: $29
    ld b, $06                                     ; $4617: $06 $06
    rlca                                          ; $4619: $07
    ld a, [hl+]                                   ; $461a: $2a
    ld h, $06                                     ; $461b: $26 $06
    rlca                                          ; $461d: $07
    rlca                                          ; $461e: $07
    ld b, $06                                     ; $461f: $06 $06
    ld b, $05                                     ; $4621: $06 $05
    dec b                                         ; $4623: $05
    ld b, $06                                     ; $4624: $06 $06
    ld b, $1c                                     ; $4626: $06 $1c
    dec e                                         ; $4628: $1d
    ld e, $a6                                     ; $4629: $1e $a6
    jr nz, jr_084_469d                            ; $462b: $20 $70

    xor b                                         ; $462d: $a8

jr_084_462e:
    and a                                         ; $462e: $a7
    ld b, $72                                     ; $462f: $06 $72
    xor d                                         ; $4631: $aa
    xor c                                         ; $4632: $a9
    ld [hl], l                                    ; $4633: $75
    halt                                          ; $4634: $76
    xor h                                         ; $4635: $ac
    xor e                                         ; $4636: $ab
    rlca                                          ; $4637: $07
    rlca                                          ; $4638: $07
    rlca                                          ; $4639: $07
    ld a, [hl+]                                   ; $463a: $2a
    rlca                                          ; $463b: $07
    rlca                                          ; $463c: $07
    add hl, hl                                    ; $463d: $29
    add hl, hl                                    ; $463e: $29
    ld b, $07                                     ; $463f: $06 $07
    add hl, hl                                    ; $4641: $29
    add hl, hl                                    ; $4642: $29
    ld b, $07                                     ; $4643: $06 $07
    ld a, [hl+]                                   ; $4645: $2a
    ld a, [hl+]                                   ; $4646: $2a
    di                                            ; $4647: $f3
    ld a, a                                       ; $4648: $7f
    add [hl]                                      ; $4649: $86
    add a                                         ; $464a: $87
    or c                                          ; $464b: $b1
    add e                                         ; $464c: $83
    di                                            ; $464d: $f3
    add l                                         ; $464e: $85
    or d                                          ; $464f: $b2
    ld [bc], a                                    ; $4650: $02
    inc bc                                        ; $4651: $03
    inc b                                         ; $4652: $04
    or e                                          ; $4653: $b3
    ld b, $07                                     ; $4654: $06 $07
    ld [$0626], sp                                ; $4656: $08 $26 $06
    dec c                                         ; $4659: $0d
    ld c, $09                                     ; $465a: $0e $09
    ld c, $06                                     ; $465c: $0e $06
    ld c, $09                                     ; $465e: $0e $09
    ld b, $06                                     ; $4660: $06 $06
    dec b                                         ; $4662: $05
    add hl, bc                                    ; $4663: $09
    ld b, $06                                     ; $4664: $06 $06
    ld b, $2a                                     ; $4666: $06 $2a
    dec hl                                        ; $4668: $2b
    inc l                                         ; $4669: $2c
    ld b, e                                       ; $466a: $43
    ld l, $2f                                     ; $466b: $2e $2f
    jr nc, jr_084_46b4                            ; $466d: $30 $45

    ld a, [c]                                     ; $466f: $f2
    di                                            ; $4670: $f3
    db $f4                                        ; $4671: $f4
    push af                                       ; $4672: $f5
    or $f7                                        ; $4673: $f6 $f7
    ld hl, sp-$07                                 ; $4675: $f8 $f9
    ld b, $06                                     ; $4677: $06 $06
    dec b                                         ; $4679: $05
    dec b                                         ; $467a: $05
    ld b, $06                                     ; $467b: $06 $06
    dec b                                         ; $467d: $05
    dec b                                         ; $467e: $05
    dec b                                         ; $467f: $05
    ld b, $06                                     ; $4680: $06 $06
    ld b, $06                                     ; $4682: $06 $06
    ld b, $06                                     ; $4684: $06 $06
    ld b, $f3                                     ; $4686: $06 $f3
    ld a, a                                       ; $4688: $7f
    add [hl]                                      ; $4689: $86
    add a                                         ; $468a: $87
    add d                                         ; $468b: $82
    adc h                                         ; $468c: $8c
    adc e                                         ; $468d: $8b
    adc d                                         ; $468e: $8a
    ld bc, $8e8f                                  ; $468f: $01 $8f $8e
    adc l                                         ; $4692: $8d
    dec b                                         ; $4693: $05
    sub d                                         ; $4694: $92
    sub c                                         ; $4695: $91
    sub b                                         ; $4696: $90
    dec h                                         ; $4697: $25
    rlca                                          ; $4698: $07
    rrca                                          ; $4699: $0f
    rrca                                          ; $469a: $0f
    ld c, $ab                                     ; $469b: $0e $ab

jr_084_469d:
    xor e                                         ; $469d: $ab
    xor e                                         ; $469e: $ab
    ld b, $ab                                     ; $469f: $06 $ab
    xor e                                         ; $46a1: $ab
    xor e                                         ; $46a2: $ab
    ld b, $2b                                     ; $46a3: $06 $2b
    dec hl                                        ; $46a5: $2b
    dec hl                                        ; $46a6: $2b
    sub e                                         ; $46a7: $93
    sub h                                         ; $46a8: $94
    sub l                                         ; $46a9: $95
    db $10                                        ; $46aa: $10
    sub [hl]                                      ; $46ab: $96
    sub a                                         ; $46ac: $97
    sbc b                                         ; $46ad: $98
    sbc c                                         ; $46ae: $99
    sbc d                                         ; $46af: $9a
    sbc e                                         ; $46b0: $9b
    sbc h                                         ; $46b1: $9c
    sbc l                                         ; $46b2: $9d
    sbc [hl]                                      ; $46b3: $9e

jr_084_46b4:
    sbc a                                         ; $46b4: $9f
    and b                                         ; $46b5: $a0
    and c                                         ; $46b6: $a1
    dec bc                                        ; $46b7: $0b
    dec bc                                        ; $46b8: $0b
    dec bc                                        ; $46b9: $0b
    ld b, $09                                     ; $46ba: $06 $09
    add hl, bc                                    ; $46bc: $09
    add hl, bc                                    ; $46bd: $09
    add hl, bc                                    ; $46be: $09
    add hl, bc                                    ; $46bf: $09
    add hl, bc                                    ; $46c0: $09
    add hl, bc                                    ; $46c1: $09
    add hl, bc                                    ; $46c2: $09
    ld a, [bc]                                    ; $46c3: $0a
    ld a, [bc]                                    ; $46c4: $0a
    ld a, [bc]                                    ; $46c5: $0a
    ld a, [bc]                                    ; $46c6: $0a
    and d                                         ; $46c7: $a2
    dec e                                         ; $46c8: $1d
    ld e, $1f                                     ; $46c9: $1e $1f
    and e                                         ; $46cb: $a3
    ld [hl], b                                    ; $46cc: $70
    ld [hl], c                                    ; $46cd: $71
    ld [hl+], a                                   ; $46ce: $22
    and h                                         ; $46cf: $a4
    ld [hl], d                                    ; $46d0: $72
    ld a, e                                       ; $46d1: $7b
    inc h                                         ; $46d2: $24
    and l                                         ; $46d3: $a5
    halt                                          ; $46d4: $76
    ld a, h                                       ; $46d5: $7c
    ld a, l                                       ; $46d6: $7d
    add hl, bc                                    ; $46d7: $09
    dec b                                         ; $46d8: $05
    dec b                                         ; $46d9: $05
    ld b, $09                                     ; $46da: $06 $09
    dec b                                         ; $46dc: $05
    dec b                                         ; $46dd: $05
    ld b, $09                                     ; $46de: $06 $09
    ld b, $05                                     ; $46e0: $06 $05
    ld b, $0a                                     ; $46e2: $06 $0a
    rlca                                          ; $46e4: $07
    ld b, $05                                     ; $46e5: $06 $05
    dec c                                         ; $46e7: $0d
    ld c, $0f                                     ; $46e8: $0e $0f
    db $10                                        ; $46ea: $10
    ld b, $11                                     ; $46eb: $06 $11
    ld [de], a                                    ; $46ed: $12
    inc de                                        ; $46ee: $13
    inc d                                         ; $46ef: $14
    dec d                                         ; $46f0: $15
    ld d, $17                                     ; $46f1: $16 $17
    jr @+$1b                                      ; $46f3: $18 $19

    ld a, [de]                                    ; $46f5: $1a
    add hl, hl                                    ; $46f6: $29
    ld b, $05                                     ; $46f7: $06 $05
    rlca                                          ; $46f9: $07
    rlca                                          ; $46fa: $07
    ld h, $06                                     ; $46fb: $26 $06
    dec b                                         ; $46fd: $05
    dec b                                         ; $46fe: $05
    dec b                                         ; $46ff: $05
    ld b, $05                                     ; $4700: $06 $05
    dec b                                         ; $4702: $05
    ld b, $06                                     ; $4703: $06 $06
    ld b, $05                                     ; $4705: $06 $05
    and [hl]                                      ; $4707: $a6
    dec hl                                        ; $4708: $2b
    inc l                                         ; $4709: $2c
    ld b, e                                       ; $470a: $43
    and a                                         ; $470b: $a7
    xor b                                         ; $470c: $a8
    jr nc, @+$47                                  ; $470d: $30 $45

    xor c                                         ; $470f: $a9
    xor d                                         ; $4710: $aa
    db $f4                                        ; $4711: $f4
    push af                                       ; $4712: $f5
    xor e                                         ; $4713: $ab
    xor h                                         ; $4714: $ac
    ld hl, sp-$07                                 ; $4715: $f8 $f9
    ld a, [bc]                                    ; $4717: $0a
    rlca                                          ; $4718: $07
    rlca                                          ; $4719: $07
    rlca                                          ; $471a: $07
    add hl, bc                                    ; $471b: $09
    add hl, bc                                    ; $471c: $09
    rlca                                          ; $471d: $07
    rlca                                          ; $471e: $07
    add hl, bc                                    ; $471f: $09
    add hl, bc                                    ; $4720: $09
    rlca                                          ; $4721: $07
    ld b, $0a                                     ; $4722: $06 $0a
    ld a, [bc]                                    ; $4724: $0a
    rlca                                          ; $4725: $07
    dec b                                         ; $4726: $05
    xor l                                         ; $4727: $ad
    ld a, a                                       ; $4728: $7f
    add [hl]                                      ; $4729: $86
    add a                                         ; $472a: $87
    add d                                         ; $472b: $82
    add e                                         ; $472c: $83
    di                                            ; $472d: $f3
    add l                                         ; $472e: $85
    ld bc, $0302                                  ; $472f: $01 $02 $03
    inc b                                         ; $4732: $04
    dec b                                         ; $4733: $05
    ld b, $07                                     ; $4734: $06 $07
    ld [$070a], sp                                ; $4736: $08 $0a $07
    ld c, $0e                                     ; $4739: $0e $0e
    rrca                                          ; $473b: $0f
    rrca                                          ; $473c: $0f
    dec b                                         ; $473d: $05
    ld c, $06                                     ; $473e: $0e $06
    ld b, $05                                     ; $4740: $06 $05
    ld b, $06                                     ; $4742: $06 $06
    dec b                                         ; $4744: $05
    dec b                                         ; $4745: $05
    ld b, $2a                                     ; $4746: $06 $2a
    ld c, e                                       ; $4748: $4b
    ld c, h                                       ; $4749: $4c
    ld c, h                                       ; $474a: $4c
    ld l, $4b                                     ; $474b: $2e $4b
    ld c, h                                       ; $474d: $4c
    ld c, h                                       ; $474e: $4c
    ld a, [c]                                     ; $474f: $f2
    ld c, a                                       ; $4750: $4f
    ld d, b                                       ; $4751: $50
    ld d, b                                       ; $4752: $50
    or $56                                        ; $4753: $f6 $56
    ld d, a                                       ; $4755: $57
    ld e, l                                       ; $4756: $5d
    ld b, $81                                     ; $4757: $06 $81
    add c                                         ; $4759: $81
    add c                                         ; $475a: $81
    ld b, $81                                     ; $475b: $06 $81
    add c                                         ; $475d: $81
    add c                                         ; $475e: $81
    ld b, $81                                     ; $475f: $06 $81
    add c                                         ; $4761: $81
    add c                                         ; $4762: $81
    ld b, $01                                     ; $4763: $06 $01
    ld bc, $0d01                                  ; $4765: $01 $01 $0d
    ld c, $0f                                     ; $4768: $0e $0f
    db $10                                        ; $476a: $10
    adc d                                         ; $476b: $8a
    adc e                                         ; $476c: $8b
    adc h                                         ; $476d: $8c
    inc de                                        ; $476e: $13
    adc l                                         ; $476f: $8d
    adc [hl]                                      ; $4770: $8e
    adc a                                         ; $4771: $8f
    rla                                           ; $4772: $17
    sub b                                         ; $4773: $90
    sub c                                         ; $4774: $91
    sub d                                         ; $4775: $92
    add hl, hl                                    ; $4776: $29
    rlca                                          ; $4777: $07
    rlca                                          ; $4778: $07
    rlca                                          ; $4779: $07
    ld b, $8b                                     ; $477a: $06 $8b
    adc e                                         ; $477c: $8b
    adc e                                         ; $477d: $8b
    dec b                                         ; $477e: $05
    adc e                                         ; $477f: $8b
    adc e                                         ; $4780: $8b
    adc e                                         ; $4781: $8b
    ld b, $0b                                     ; $4782: $06 $0b
    dec bc                                        ; $4784: $0b
    dec bc                                        ; $4785: $0b
    ld b, $1c                                     ; $4786: $06 $1c
    dec e                                         ; $4788: $1d
    ld e, $1f                                     ; $4789: $1e $1f
    jr nz, jr_084_47fd                            ; $478b: $20 $70

    ld [hl], c                                    ; $478d: $71
    ld [hl+], a                                   ; $478e: $22
    ld b, $72                                     ; $478f: $06 $72
    ld a, e                                       ; $4791: $7b
    inc h                                         ; $4792: $24
    ld [hl], l                                    ; $4793: $75
    halt                                          ; $4794: $76
    ld a, h                                       ; $4795: $7c
    ld a, l                                       ; $4796: $7d
    dec b                                         ; $4797: $05
    dec b                                         ; $4798: $05
    ld b, $06                                     ; $4799: $06 $06
    dec b                                         ; $479b: $05
    ld b, $05                                     ; $479c: $06 $05
    dec b                                         ; $479e: $05
    ld b, $05                                     ; $479f: $06 $05
    ld b, $06                                     ; $47a1: $06 $06
    dec b                                         ; $47a3: $05
    ld b, $06                                     ; $47a4: $06 $06
    dec b                                         ; $47a6: $05
    dec c                                         ; $47a7: $0d
    ld e, b                                       ; $47a8: $58
    ld e, c                                       ; $47a9: $59
    ld h, c                                       ; $47aa: $61
    ld b, $58                                     ; $47ab: $06 $58
    ld e, d                                       ; $47ad: $5a
    ld h, l                                       ; $47ae: $65
    inc d                                         ; $47af: $14
    ld e, e                                       ; $47b0: $5b
    ld e, h                                       ; $47b1: $5c
    ld l, b                                       ; $47b2: $68
    jr jr_084_47ce                                ; $47b3: $18 $19

    ld a, [de]                                    ; $47b5: $1a
    add hl, hl                                    ; $47b6: $29
    rlca                                          ; $47b7: $07
    ld bc, $0101                                  ; $47b8: $01 $01 $01
    daa                                           ; $47bb: $27
    ld bc, $0101                                  ; $47bc: $01 $01 $01
    rlca                                          ; $47bf: $07
    ld bc, $0101                                  ; $47c0: $01 $01 $01
    rlca                                          ; $47c3: $07
    rlca                                          ; $47c4: $07
    rlca                                          ; $47c5: $07
    rlca                                          ; $47c6: $07
    or h                                          ; $47c7: $b4
    or l                                          ; $47c8: $b5
    sub l                                         ; $47c9: $95
    ld b, e                                       ; $47ca: $43
    or [hl]                                       ; $47cb: $b6
    or a                                          ; $47cc: $b7
    cp b                                          ; $47cd: $b8

jr_084_47ce:
    ld b, l                                       ; $47ce: $45
    cp c                                          ; $47cf: $b9
    cp d                                          ; $47d0: $ba
    cp e                                          ; $47d1: $bb
    push af                                       ; $47d2: $f5
    or $f7                                        ; $47d3: $f6 $f7
    ld hl, sp-$07                                 ; $47d5: $f8 $f9
    dec bc                                        ; $47d7: $0b
    dec bc                                        ; $47d8: $0b
    dec bc                                        ; $47d9: $0b
    ld b, $0b                                     ; $47da: $06 $0b
    dec bc                                        ; $47dc: $0b
    dec bc                                        ; $47dd: $0b
    ld b, $0b                                     ; $47de: $06 $0b
    dec bc                                        ; $47e0: $0b
    dec bc                                        ; $47e1: $0b
    ld b, $07                                     ; $47e2: $06 $07
    ld b, $06                                     ; $47e4: $06 $06
    dec b                                         ; $47e6: $05
    di                                            ; $47e7: $f3
    ld a, a                                       ; $47e8: $7f
    add [hl]                                      ; $47e9: $86
    add a                                         ; $47ea: $87
    add d                                         ; $47eb: $82
    add e                                         ; $47ec: $83
    di                                            ; $47ed: $f3
    add l                                         ; $47ee: $85
    ld bc, $0302                                  ; $47ef: $01 $02 $03
    inc b                                         ; $47f2: $04
    dec b                                         ; $47f3: $05
    ld b, $07                                     ; $47f4: $06 $07
    ld [$0626], sp                                ; $47f6: $08 $26 $06
    dec c                                         ; $47f9: $0d
    ld c, $0e                                     ; $47fa: $0e $0e
    dec c                                         ; $47fc: $0d

jr_084_47fd:
    ld b, $0e                                     ; $47fd: $06 $0e
    dec b                                         ; $47ff: $05
    ld b, $06                                     ; $4800: $06 $06
    dec b                                         ; $4802: $05
    ld b, $05                                     ; $4803: $06 $05
    ld b, $06                                     ; $4805: $06 $06
    ld a, [hl+]                                   ; $4807: $2a
    dec hl                                        ; $4808: $2b
    inc l                                         ; $4809: $2c
    ld b, e                                       ; $480a: $43
    ld l, $2f                                     ; $480b: $2e $2f
    jr nc, @+$47                                  ; $480d: $30 $45

    ld a, [c]                                     ; $480f: $f2
    di                                            ; $4810: $f3
    db $f4                                        ; $4811: $f4
    push af                                       ; $4812: $f5
    or $f7                                        ; $4813: $f6 $f7
    ld hl, sp-$07                                 ; $4815: $f8 $f9
    dec b                                         ; $4817: $05
    dec b                                         ; $4818: $05
    ld b, $06                                     ; $4819: $06 $06
    dec b                                         ; $481b: $05
    ld b, $05                                     ; $481c: $06 $05
    dec b                                         ; $481e: $05
    dec b                                         ; $481f: $05
    dec b                                         ; $4820: $05
    dec b                                         ; $4821: $05
    ld b, $06                                     ; $4822: $06 $06
    ld b, $06                                     ; $4824: $06 $06
    dec b                                         ; $4826: $05
    inc e                                         ; $4827: $1c
    dec e                                         ; $4828: $1d
    ld e, $1f                                     ; $4829: $1e $1f
    jr nz, jr_084_489d                            ; $482b: $20 $70

    ld [hl], c                                    ; $482d: $71
    ld [hl+], a                                   ; $482e: $22
    ld b, $72                                     ; $482f: $06 $72
    ld a, e                                       ; $4831: $7b
    inc h                                         ; $4832: $24
    ld [hl], l                                    ; $4833: $75
    halt                                          ; $4834: $76
    ld a, h                                       ; $4835: $7c
    ld a, l                                       ; $4836: $7d
    rlca                                          ; $4837: $07
    ld b, $06                                     ; $4838: $06 $06
    dec b                                         ; $483a: $05
    ld b, $06                                     ; $483b: $06 $06
    ld b, $06                                     ; $483d: $06 $06
    dec b                                         ; $483f: $05
    ld b, $06                                     ; $4840: $06 $06
    dec b                                         ; $4842: $05
    dec b                                         ; $4843: $05
    ld b, $06                                     ; $4844: $06 $06
    dec b                                         ; $4846: $05
    dec c                                         ; $4847: $0d
    ld c, $0f                                     ; $4848: $0e $0f
    and d                                         ; $484a: $a2
    ld b, $11                                     ; $484b: $06 $11
    ld [de], a                                    ; $484d: $12
    and e                                         ; $484e: $a3
    inc d                                         ; $484f: $14
    dec d                                         ; $4850: $15
    ld d, $a4                                     ; $4851: $16 $a4
    jr jr_084_486e                                ; $4853: $18 $19

    ld a, [de]                                    ; $4855: $1a
    and l                                         ; $4856: $a5
    ld b, $06                                     ; $4857: $06 $06
    ld b, $29                                     ; $4859: $06 $29
    ld h, $06                                     ; $485b: $26 $06
    ld b, $29                                     ; $485d: $06 $29
    ld b, $06                                     ; $485f: $06 $06
    ld b, $29                                     ; $4861: $06 $29
    ld b, $06                                     ; $4863: $06 $06
    rlca                                          ; $4865: $07
    ld a, [hl+]                                   ; $4866: $2a
    inc e                                         ; $4867: $1c
    sub l                                         ; $4868: $95
    sub h                                         ; $4869: $94
    sub e                                         ; $486a: $93
    sbc c                                         ; $486b: $99
    sbc b                                         ; $486c: $98
    sub a                                         ; $486d: $97

jr_084_486e:
    sub [hl]                                      ; $486e: $96
    sbc l                                         ; $486f: $9d
    sbc h                                         ; $4870: $9c
    sbc e                                         ; $4871: $9b
    sbc d                                         ; $4872: $9a
    and c                                         ; $4873: $a1
    and b                                         ; $4874: $a0
    sbc a                                         ; $4875: $9f
    sbc [hl]                                      ; $4876: $9e
    ld b, $2b                                     ; $4877: $06 $2b
    dec hl                                        ; $4879: $2b
    dec hl                                        ; $487a: $2b
    add hl, hl                                    ; $487b: $29
    add hl, hl                                    ; $487c: $29
    add hl, hl                                    ; $487d: $29
    add hl, hl                                    ; $487e: $29
    add hl, hl                                    ; $487f: $29
    add hl, hl                                    ; $4880: $29
    add hl, hl                                    ; $4881: $29
    add hl, hl                                    ; $4882: $29
    ld a, [hl+]                                   ; $4883: $2a
    ld a, [hl+]                                   ; $4884: $2a
    ld a, [hl+]                                   ; $4885: $2a
    ld a, [hl+]                                   ; $4886: $2a
    ld c, h                                       ; $4887: $4c
    ld c, h                                       ; $4888: $4c
    ld d, c                                       ; $4889: $51
    add a                                         ; $488a: $87
    ld c, h                                       ; $488b: $4c
    ld c, h                                       ; $488c: $4c
    ld d, c                                       ; $488d: $51
    add l                                         ; $488e: $85
    ld d, b                                       ; $488f: $50
    ld d, b                                       ; $4890: $50
    ld d, d                                       ; $4891: $52
    inc b                                         ; $4892: $04
    ld e, [hl]                                    ; $4893: $5e
    ld e, a                                       ; $4894: $5f
    ld h, b                                       ; $4895: $60
    ld [$8181], sp                                ; $4896: $08 $81 $81
    add c                                         ; $4899: $81
    ld c, $81                                     ; $489a: $0e $81
    add c                                         ; $489c: $81

jr_084_489d:
    add c                                         ; $489d: $81
    ld c, $81                                     ; $489e: $0e $81
    add c                                         ; $48a0: $81
    add c                                         ; $48a1: $81
    ld b, $01                                     ; $48a2: $06 $01
    ld bc, $0601                                  ; $48a4: $01 $01 $06
    ld a, [hl+]                                   ; $48a7: $2a
    dec hl                                        ; $48a8: $2b
    inc l                                         ; $48a9: $2c
    xor l                                         ; $48aa: $ad
    ld l, $2f                                     ; $48ab: $2e $2f
    jr nc, jr_084_48f4                            ; $48ad: $30 $45

    ld a, [c]                                     ; $48af: $f2
    di                                            ; $48b0: $f3
    db $f4                                        ; $48b1: $f4
    push af                                       ; $48b2: $f5
    or $f7                                        ; $48b3: $f6 $f7
    ld hl, sp-$07                                 ; $48b5: $f8 $f9
    dec b                                         ; $48b7: $05
    ld b, $07                                     ; $48b8: $06 $07
    ld a, [hl+]                                   ; $48ba: $2a
    dec b                                         ; $48bb: $05
    ld b, $07                                     ; $48bc: $06 $07
    rlca                                          ; $48be: $07
    dec b                                         ; $48bf: $05
    dec b                                         ; $48c0: $05
    ld b, $06                                     ; $48c1: $06 $06
    ld b, $06                                     ; $48c3: $06 $06
    dec b                                         ; $48c5: $05
    ld b, $f3                                     ; $48c6: $06 $f3
    ld a, a                                       ; $48c8: $7f
    add [hl]                                      ; $48c9: $86
    and [hl]                                      ; $48ca: $a6
    add d                                         ; $48cb: $82
    add e                                         ; $48cc: $83
    xor b                                         ; $48cd: $a8
    and a                                         ; $48ce: $a7
    ld bc, $aa02                                  ; $48cf: $01 $02 $aa
    xor c                                         ; $48d2: $a9
    dec b                                         ; $48d3: $05
    ld b, $ac                                     ; $48d4: $06 $ac
    xor e                                         ; $48d6: $ab
    daa                                           ; $48d7: $27
    rlca                                          ; $48d8: $07
    rrca                                          ; $48d9: $0f
    ld a, [hl+]                                   ; $48da: $2a
    rrca                                          ; $48db: $0f
    rrca                                          ; $48dc: $0f
    add hl, hl                                    ; $48dd: $29
    add hl, hl                                    ; $48de: $29
    ld b, $07                                     ; $48df: $06 $07
    add hl, hl                                    ; $48e1: $29
    add hl, hl                                    ; $48e2: $29
    dec b                                         ; $48e3: $05
    rlca                                          ; $48e4: $07
    ld a, [hl+]                                   ; $48e5: $2a
    ld a, [hl+]                                   ; $48e6: $2a
    ld h, d                                       ; $48e7: $62
    ld h, e                                       ; $48e8: $63
    ld h, h                                       ; $48e9: $64
    rra                                           ; $48ea: $1f
    ld h, [hl]                                    ; $48eb: $66
    ld h, a                                       ; $48ec: $67
    ld h, h                                       ; $48ed: $64
    ld [hl+], a                                   ; $48ee: $22
    ld l, c                                       ; $48ef: $69
    ld l, d                                       ; $48f0: $6a
    ld l, e                                       ; $48f1: $6b
    inc h                                         ; $48f2: $24
    ld [hl], l                                    ; $48f3: $75

jr_084_48f4:
    halt                                          ; $48f4: $76
    ld a, h                                       ; $48f5: $7c
    ld a, l                                       ; $48f6: $7d
    ld bc, $0101                                  ; $48f7: $01 $01 $01
    rlca                                          ; $48fa: $07
    ld bc, $0101                                  ; $48fb: $01 $01 $01
    rlca                                          ; $48fe: $07
    ld bc, $0101                                  ; $48ff: $01 $01 $01
    rlca                                          ; $4902: $07
    rlca                                          ; $4903: $07
    rlca                                          ; $4904: $07
    rlca                                          ; $4905: $07
    rlca                                          ; $4906: $07
    dec c                                         ; $4907: $0d
    ld c, $0f                                     ; $4908: $0e $0f
    db $10                                        ; $490a: $10
    ld b, $11                                     ; $490b: $06 $11
    ld [de], a                                    ; $490d: $12
    inc de                                        ; $490e: $13
    inc d                                         ; $490f: $14
    dec d                                         ; $4910: $15
    ld d, $17                                     ; $4911: $16 $17
    jr jr_084_492e                                ; $4913: $18 $19

    ld a, [de]                                    ; $4915: $1a
    add hl, hl                                    ; $4916: $29
    ld b, $05                                     ; $4917: $06 $05
    ld b, $05                                     ; $4919: $06 $05
    ld h, $05                                     ; $491b: $26 $05
    dec b                                         ; $491d: $05
    ld b, $06                                     ; $491e: $06 $06
    dec b                                         ; $4920: $05
    ld b, $06                                     ; $4921: $06 $06
    ld b, $06                                     ; $4923: $06 $06
    dec b                                         ; $4925: $05
    dec b                                         ; $4926: $05
    inc e                                         ; $4927: $1c
    dec e                                         ; $4928: $1d
    ld e, $1f                                     ; $4929: $1e $1f
    jr nz, @-$72                                  ; $492b: $20 $8c

    adc e                                         ; $492d: $8b

jr_084_492e:
    adc d                                         ; $492e: $8a
    ld b, $8f                                     ; $492f: $06 $8f
    adc [hl]                                      ; $4931: $8e
    adc l                                         ; $4932: $8d
    ld [hl], l                                    ; $4933: $75
    sub d                                         ; $4934: $92
    sub c                                         ; $4935: $91
    sub b                                         ; $4936: $90
    ld b, $07                                     ; $4937: $06 $07
    rlca                                          ; $4939: $07
    rlca                                          ; $493a: $07
    ld b, $ab                                     ; $493b: $06 $ab
    xor e                                         ; $493d: $ab
    xor e                                         ; $493e: $ab
    dec b                                         ; $493f: $05
    xor e                                         ; $4940: $ab
    xor e                                         ; $4941: $ab
    xor e                                         ; $4942: $ab
    ld b, $2b                                     ; $4943: $06 $2b
    dec hl                                        ; $4945: $2b
    dec hl                                        ; $4946: $2b
    di                                            ; $4947: $f3
    ld a, a                                       ; $4948: $7f
    add [hl]                                      ; $4949: $86
    add a                                         ; $494a: $87
    add d                                         ; $494b: $82
    add e                                         ; $494c: $83
    di                                            ; $494d: $f3
    add l                                         ; $494e: $85
    ld bc, $0302                                  ; $494f: $01 $02 $03
    inc b                                         ; $4952: $04
    dec b                                         ; $4953: $05
    ld b, $07                                     ; $4954: $06 $07
    ld [$0526], sp                                ; $4956: $08 $26 $05
    ld c, $0e                                     ; $4959: $0e $0e
    dec c                                         ; $495b: $0d
    ld c, $06                                     ; $495c: $0e $06
    dec c                                         ; $495e: $0d
    dec b                                         ; $495f: $05
    ld b, $05                                     ; $4960: $06 $05
    dec b                                         ; $4962: $05
    ld b, $06                                     ; $4963: $06 $06
    ld b, $06                                     ; $4965: $06 $06
    ld a, [hl+]                                   ; $4967: $2a
    dec hl                                        ; $4968: $2b
    inc l                                         ; $4969: $2c
    ld b, e                                       ; $496a: $43
    ld l, $2f                                     ; $496b: $2e $2f
    jr nc, jr_084_49b4                            ; $496d: $30 $45

    ld a, [c]                                     ; $496f: $f2
    di                                            ; $4970: $f3
    db $f4                                        ; $4971: $f4
    push af                                       ; $4972: $f5
    or $f7                                        ; $4973: $f6 $f7
    ld hl, sp-$07                                 ; $4975: $f8 $f9
    dec b                                         ; $4977: $05
    ld b, $06                                     ; $4978: $06 $06
    ld b, $06                                     ; $497a: $06 $06
    dec b                                         ; $497c: $05
    dec b                                         ; $497d: $05
    ld b, $06                                     ; $497e: $06 $06
    ld b, $05                                     ; $4980: $06 $05
    ld b, $06                                     ; $4982: $06 $06
    dec b                                         ; $4984: $05
    ld b, $06                                     ; $4985: $06 $06
    di                                            ; $4987: $f3
    sub l                                         ; $4988: $95
    or l                                          ; $4989: $b5
    or h                                          ; $498a: $b4
    add d                                         ; $498b: $82
    cp b                                          ; $498c: $b8
    or a                                          ; $498d: $b7
    or [hl]                                       ; $498e: $b6
    ld bc, $babb                                  ; $498f: $01 $bb $ba
    cp c                                          ; $4992: $b9
    dec b                                         ; $4993: $05
    ld b, $07                                     ; $4994: $06 $07
    ld [$2b26], sp                                ; $4996: $08 $26 $2b
    dec hl                                        ; $4999: $2b
    dec hl                                        ; $499a: $2b
    dec c                                         ; $499b: $0d
    dec hl                                        ; $499c: $2b
    dec hl                                        ; $499d: $2b
    dec hl                                        ; $499e: $2b
    ld b, $2b                                     ; $499f: $06 $2b
    dec hl                                        ; $49a1: $2b
    dec hl                                        ; $49a2: $2b
    dec b                                         ; $49a3: $05
    ld b, $06                                     ; $49a4: $06 $06
    rlca                                          ; $49a6: $07
    pop de                                        ; $49a7: $d1
    pop de                                        ; $49a8: $d1
    pop de                                        ; $49a9: $d1
    ld l, h                                       ; $49aa: $6c
    pop de                                        ; $49ab: $d1
    pop de                                        ; $49ac: $d1
    pop de                                        ; $49ad: $d1
    pop de                                        ; $49ae: $d1
    pop de                                        ; $49af: $d1
    pop de                                        ; $49b0: $d1
    pop de                                        ; $49b1: $d1
    pop de                                        ; $49b2: $d1
    pop de                                        ; $49b3: $d1

jr_084_49b4:
    pop de                                        ; $49b4: $d1
    pop de                                        ; $49b5: $d1
    pop de                                        ; $49b6: $d1
    add b                                         ; $49b7: $80
    add b                                         ; $49b8: $80
    add b                                         ; $49b9: $80
    add b                                         ; $49ba: $80
    add b                                         ; $49bb: $80
    add b                                         ; $49bc: $80
    add b                                         ; $49bd: $80
    add b                                         ; $49be: $80
    add b                                         ; $49bf: $80
    add b                                         ; $49c0: $80
    add b                                         ; $49c1: $80
    add b                                         ; $49c2: $80
    add b                                         ; $49c3: $80
    add b                                         ; $49c4: $80
    add b                                         ; $49c5: $80
    add b                                         ; $49c6: $80
    ld l, l                                       ; $49c7: $6d
    ld l, l                                       ; $49c8: $6d
    ld l, l                                       ; $49c9: $6d
    ld l, l                                       ; $49ca: $6d
    pop de                                        ; $49cb: $d1
    pop de                                        ; $49cc: $d1
    pop de                                        ; $49cd: $d1
    pop de                                        ; $49ce: $d1
    pop de                                        ; $49cf: $d1
    pop de                                        ; $49d0: $d1
    pop de                                        ; $49d1: $d1
    pop de                                        ; $49d2: $d1
    pop de                                        ; $49d3: $d1
    pop de                                        ; $49d4: $d1
    pop de                                        ; $49d5: $d1
    pop de                                        ; $49d6: $d1
    add b                                         ; $49d7: $80
    add b                                         ; $49d8: $80
    add b                                         ; $49d9: $80
    add b                                         ; $49da: $80
    add b                                         ; $49db: $80
    add b                                         ; $49dc: $80
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
    ld l, [hl]                                    ; $49e7: $6e
    ld c, $0f                                     ; $49e8: $0e $0f
    db $10                                        ; $49ea: $10
    jp nc, Jump_000_1211                          ; $49eb: $d2 $11 $12

    inc de                                        ; $49ee: $13
    ld l, h                                       ; $49ef: $6c
    ld l, l                                       ; $49f0: $6d
    cp h                                          ; $49f1: $bc
    cp h                                          ; $49f2: $bc
    pop de                                        ; $49f3: $d1
    pop de                                        ; $49f4: $d1
    cp l                                          ; $49f5: $bd
    cp l                                          ; $49f6: $bd
    add b                                         ; $49f7: $80
    ld b, $06                                     ; $49f8: $06 $06
    dec b                                         ; $49fa: $05
    add b                                         ; $49fb: $80
    ld b, $05                                     ; $49fc: $06 $05
    ld b, $80                                     ; $49fe: $06 $80
    add b                                         ; $4a00: $80
    adc b                                         ; $4a01: $88
    adc b                                         ; $4a02: $88
    add b                                         ; $4a03: $80
    add b                                         ; $4a04: $80
    adc b                                         ; $4a05: $88
    adc b                                         ; $4a06: $88
    inc e                                         ; $4a07: $1c
    dec e                                         ; $4a08: $1d
    ld e, $88                                     ; $4a09: $1e $88
    jr nz, jr_084_4a7d                            ; $4a0b: $20 $70

    ld [hl], c                                    ; $4a0d: $71
    jp nc, $bcbc                                  ; $4a0e: $d2 $bc $bc

    ld l, l                                       ; $4a11: $6d
    adc c                                         ; $4a12: $89
    cp l                                          ; $4a13: $bd
    cp l                                          ; $4a14: $bd
    pop de                                        ; $4a15: $d1
    pop de                                        ; $4a16: $d1
    ld b, $06                                     ; $4a17: $06 $06
    ld b, $88                                     ; $4a19: $06 $88
    ld b, $05                                     ; $4a1b: $06 $05
    ld b, $80                                     ; $4a1d: $06 $80
    adc b                                         ; $4a1f: $88
    adc b                                         ; $4a20: $88
    add b                                         ; $4a21: $80
    adc b                                         ; $4a22: $88
    adc b                                         ; $4a23: $88
    adc b                                         ; $4a24: $88
    add b                                         ; $4a25: $80
    add b                                         ; $4a26: $80
    adc c                                         ; $4a27: $89
    pop de                                        ; $4a28: $d1
    pop de                                        ; $4a29: $d1
    pop de                                        ; $4a2a: $d1
    pop de                                        ; $4a2b: $d1
    pop de                                        ; $4a2c: $d1
    pop de                                        ; $4a2d: $d1
    pop de                                        ; $4a2e: $d1
    pop de                                        ; $4a2f: $d1
    pop de                                        ; $4a30: $d1
    pop de                                        ; $4a31: $d1
    pop de                                        ; $4a32: $d1
    pop de                                        ; $4a33: $d1
    pop de                                        ; $4a34: $d1
    pop de                                        ; $4a35: $d1
    pop de                                        ; $4a36: $d1
    adc b                                         ; $4a37: $88
    add b                                         ; $4a38: $80
    add b                                         ; $4a39: $80
    add b                                         ; $4a3a: $80
    add b                                         ; $4a3b: $80
    add b                                         ; $4a3c: $80
    add b                                         ; $4a3d: $80
    add b                                         ; $4a3e: $80
    add b                                         ; $4a3f: $80
    add b                                         ; $4a40: $80
    add b                                         ; $4a41: $80
    add b                                         ; $4a42: $80
    add b                                         ; $4a43: $80
    add b                                         ; $4a44: $80
    add b                                         ; $4a45: $80
    add b                                         ; $4a46: $80
    rrca                                          ; $4a47: $0f
    nop                                           ; $4a48: $00
    dec de                                        ; $4a49: $1b
    nop                                           ; $4a4a: $00
    nop                                           ; $4a4b: $00
    inc l                                         ; $4a4c: $2c
    pop de                                        ; $4a4d: $d1
    pop de                                        ; $4a4e: $d1
    pop de                                        ; $4a4f: $d1
    jp nc, $d1d1                                  ; $4a50: $d2 $d1 $d1

    pop de                                        ; $4a53: $d1
    jp nc, $d1d1                                  ; $4a54: $d2 $d1 $d1

    pop de                                        ; $4a57: $d1
    jp nc, $d1d1                                  ; $4a58: $d2 $d1 $d1

    pop de                                        ; $4a5b: $d1
    jp nc, $8080                                  ; $4a5c: $d2 $80 $80

    add b                                         ; $4a5f: $80
    add b                                         ; $4a60: $80
    add b                                         ; $4a61: $80
    add b                                         ; $4a62: $80
    add b                                         ; $4a63: $80
    add b                                         ; $4a64: $80
    add b                                         ; $4a65: $80
    add b                                         ; $4a66: $80
    add b                                         ; $4a67: $80
    add b                                         ; $4a68: $80
    add b                                         ; $4a69: $80
    add b                                         ; $4a6a: $80
    add b                                         ; $4a6b: $80
    add b                                         ; $4a6c: $80
    db $d3                                        ; $4a6d: $d3
    call nc, $d6d5                                ; $4a6e: $d4 $d5 $d6
    rst $10                                       ; $4a71: $d7
    ret c                                         ; $4a72: $d8

    push de                                       ; $4a73: $d5
    reti                                          ; $4a74: $d9


    jp c, $dcdb                                   ; $4a75: $da $db $dc

    db $dd                                        ; $4a78: $dd
    sbc $df                                       ; $4a79: $de $df
    ldh [$e1], a                                  ; $4a7b: $e0 $e1

jr_084_4a7d:
    ld bc, $0101                                  ; $4a7d: $01 $01 $01
    ld bc, $0101                                  ; $4a80: $01 $01 $01
    ld bc, $0101                                  ; $4a83: $01 $01 $01
    ld bc, $0101                                  ; $4a86: $01 $01 $01
    ld bc, $0101                                  ; $4a89: $01 $01 $01
    ld bc, $e3e2                                  ; $4a8c: $01 $e2 $e3
    db $d3                                        ; $4a8f: $d3
    call nc, $e5e4                                ; $4a90: $d4 $e4 $e5
    rst $10                                       ; $4a93: $d7
    ret c                                         ; $4a94: $d8

    and $e7                                       ; $4a95: $e6 $e7
    jp c, $dedb                                   ; $4a97: $da $db $de

    rst $18                                       ; $4a9a: $df
    sbc $df                                       ; $4a9b: $de $df
    ld bc, $0101                                  ; $4a9d: $01 $01 $01
    ld bc, $0101                                  ; $4aa0: $01 $01 $01
    ld bc, $0101                                  ; $4aa3: $01 $01 $01
    ld bc, $0101                                  ; $4aa6: $01 $01 $01
    ld bc, $0101                                  ; $4aa9: $01 $01 $01
    ld bc, $d6d5                                  ; $4aac: $01 $d5 $d6
    ld [c], a                                     ; $4aaf: $e2
    db $e3                                        ; $4ab0: $e3
    push de                                       ; $4ab1: $d5
    reti                                          ; $4ab2: $d9


    db $e4                                        ; $4ab3: $e4
    push hl                                       ; $4ab4: $e5
    call c, $e6dd                                 ; $4ab5: $dc $dd $e6
    rst $20                                       ; $4ab8: $e7
    ldh [$e1], a                                  ; $4ab9: $e0 $e1
    sbc $df                                       ; $4abb: $de $df
    ld bc, $0101                                  ; $4abd: $01 $01 $01
    ld bc, $0101                                  ; $4ac0: $01 $01 $01
    ld bc, $0101                                  ; $4ac3: $01 $01 $01
    ld bc, $0101                                  ; $4ac6: $01 $01 $01
    ld bc, $0101                                  ; $4ac9: $01 $01 $01
    ld bc, $e9e8                                  ; $4acc: $01 $e8 $e9
    add sp, -$17                                  ; $4acf: $e8 $e9
    ld [$eceb], a                                 ; $4ad1: $ea $eb $ec

Call_084_4ad4:
    db $ed                                        ; $4ad4: $ed
    xor $ef                                       ; $4ad5: $ee $ef
    ldh a, [$f1]                                  ; $4ad7: $f0 $f1
    ld a, [c]                                     ; $4ad9: $f2
    di                                            ; $4ada: $f3
    db $f4                                        ; $4adb: $f4
    push af                                       ; $4adc: $f5
    ld bc, $0101                                  ; $4add: $01 $01 $01
    ld bc, $0707                                  ; $4ae0: $01 $07 $07
    rlca                                          ; $4ae3: $07
    rlca                                          ; $4ae4: $07
    rlca                                          ; $4ae5: $07
    ld b, $06                                     ; $4ae6: $06 $06
    ld b, $07                                     ; $4ae8: $06 $07
    ld b, $06                                     ; $4aea: $06 $06
    ld b, $e8                                     ; $4aec: $06 $e8
    jp hl                                         ; $4aee: $e9


    or $e9                                        ; $4aef: $f6 $e9
    ld [$f7eb], a                                 ; $4af1: $ea $eb $f7
    db $ed                                        ; $4af4: $ed
    ld hl, sp-$11                                 ; $4af5: $f8 $ef
    ld sp, hl                                     ; $4af7: $f9
    ld a, [$fcfb]                                 ; $4af8: $fa $fb $fc
    db $fd                                        ; $4afb: $fd
    cp $01                                        ; $4afc: $fe $01
    ld bc, $0101                                  ; $4afe: $01 $01 $01
    rlca                                          ; $4b01: $07
    rlca                                          ; $4b02: $07
    rlca                                          ; $4b03: $07
    rlca                                          ; $4b04: $07
    ld b, $06                                     ; $4b05: $06 $06
    ld [bc], a                                    ; $4b07: $02
    dec b                                         ; $4b08: $05
    ld b, $06                                     ; $4b09: $06 $06
    ld [bc], a                                    ; $4b0b: $02
    ld b, $e8                                     ; $4b0c: $06 $e8
    jp hl                                         ; $4b0e: $e9


    rst $38                                       ; $4b0f: $ff
    nop                                           ; $4b10: $00
    ld [$01eb], a                                 ; $4b11: $ea $eb $01
    ld [bc], a                                    ; $4b14: $02
    xor $ef                                       ; $4b15: $ee $ef
    inc bc                                        ; $4b17: $03
    inc b                                         ; $4b18: $04
    ld a, [c]                                     ; $4b19: $f2
    db $fc                                        ; $4b1a: $fc
    dec b                                         ; $4b1b: $05
    ld b, $01                                     ; $4b1c: $06 $01
    ld bc, $8282                                  ; $4b1e: $01 $82 $82
    rlca                                          ; $4b21: $07
    rlca                                          ; $4b22: $07
    add d                                         ; $4b23: $82
    add d                                         ; $4b24: $82
    ld b, $06                                     ; $4b25: $06 $06
    add h                                         ; $4b27: $84
    add h                                         ; $4b28: $84
    dec b                                         ; $4b29: $05
    ld b, $04                                     ; $4b2a: $06 $04
    inc b                                         ; $4b2c: $04
    pop de                                        ; $4b2d: $d1
    pop de                                        ; $4b2e: $d1
    pop de                                        ; $4b2f: $d1
    jp nc, $d1d1                                  ; $4b30: $d2 $d1 $d1

    pop de                                        ; $4b33: $d1
    jp nc, Jump_000_07d1                          ; $4b34: $d2 $d1 $07

    ld [$d109], sp                                ; $4b37: $08 $09 $d1
    jp nc, Jump_000_0b0a                          ; $4b3a: $d2 $0a $0b

    add b                                         ; $4b3d: $80
    add b                                         ; $4b3e: $80
    add b                                         ; $4b3f: $80
    add b                                         ; $4b40: $80
    add b                                         ; $4b41: $80
    add b                                         ; $4b42: $80
    add b                                         ; $4b43: $80
    add b                                         ; $4b44: $80
    add b                                         ; $4b45: $80
    add b                                         ; $4b46: $80
    add b                                         ; $4b47: $80
    add b                                         ; $4b48: $80
    add b                                         ; $4b49: $80
    add b                                         ; $4b4a: $80
    ld bc, $0c01                                  ; $4b4b: $01 $01 $0c
    dec c                                         ; $4b4e: $0d
    ld c, $0f                                     ; $4b4f: $0e $0f
    db $10                                        ; $4b51: $10
    ld de, $1312                                  ; $4b52: $11 $12 $13
    inc d                                         ; $4b55: $14
    dec d                                         ; $4b56: $15
    ld d, $17                                     ; $4b57: $16 $17
    jr jr_084_4b74                                ; $4b59: $18 $19

    ld a, [de]                                    ; $4b5b: $1a
    dec de                                        ; $4b5c: $1b
    rlca                                          ; $4b5d: $07
    ld b, $06                                     ; $4b5e: $06 $06
    ld b, $07                                     ; $4b60: $06 $07
    ld b, $06                                     ; $4b62: $06 $06
    ld b, $07                                     ; $4b64: $06 $07
    ld b, $06                                     ; $4b66: $06 $06
    ld b, $07                                     ; $4b68: $06 $07
    ld b, $06                                     ; $4b6a: $06 $06
    ld b, $1c                                     ; $4b6c: $06 $1c
    dec e                                         ; $4b6e: $1d
    ld e, $1f                                     ; $4b6f: $1e $1f
    jr nz, jr_084_4b84                            ; $4b71: $20 $11

    ld sp, hl                                     ; $4b73: $f9

jr_084_4b74:
    ld hl, $2322                                  ; $4b74: $21 $22 $23
    db $fd                                        ; $4b77: $fd
    inc h                                         ; $4b78: $24
    dec h                                         ; $4b79: $25
    ld h, $27                                     ; $4b7a: $26 $27
    jr z, jr_084_4b84                             ; $4b7c: $28 $06

    ld b, $06                                     ; $4b7e: $06 $06
    ld b, $06                                     ; $4b80: $06 $06
    ld b, $02                                     ; $4b82: $06 $02

jr_084_4b84:
    ld b, $06                                     ; $4b84: $06 $06
    ld b, $02                                     ; $4b86: $06 $02
    dec b                                         ; $4b88: $05
    ld b, $06                                     ; $4b89: $06 $06
    ld b, $06                                     ; $4b8b: $06 $06
    inc c                                         ; $4b8d: $0c
    dec e                                         ; $4b8e: $1d
    add hl, hl                                    ; $4b8f: $29
    ld a, [hl+]                                   ; $4b90: $2a
    db $10                                        ; $4b91: $10
    ld de, $2c2b                                  ; $4b92: $11 $2b $2c
    inc d                                         ; $4b95: $14
    inc hl                                        ; $4b96: $23
    dec l                                         ; $4b97: $2d
    ld l, $18                                     ; $4b98: $2e $18
    ld h, $2f                                     ; $4b9a: $26 $2f
    jr z, jr_084_4ba4                             ; $4b9c: $28 $06

    dec b                                         ; $4b9e: $05
    inc b                                         ; $4b9f: $04
    inc b                                         ; $4ba0: $04
    dec b                                         ; $4ba1: $05
    dec b                                         ; $4ba2: $05
    inc b                                         ; $4ba3: $04

jr_084_4ba4:
    inc bc                                        ; $4ba4: $03
    dec b                                         ; $4ba5: $05
    ld b, $04                                     ; $4ba6: $06 $04
    inc b                                         ; $4ba8: $04
    ld b, $05                                     ; $4ba9: $06 $05
    rlca                                          ; $4bab: $07
    rlca                                          ; $4bac: $07
    pop de                                        ; $4bad: $d1
    jr nc, @+$33                                  ; $4bae: $30 $31

    dec bc                                        ; $4bb0: $0b
    pop de                                        ; $4bb1: $d1
    jr nc, jr_084_4be6                            ; $4bb2: $30 $32

    inc sp                                        ; $4bb4: $33
    pop de                                        ; $4bb5: $d1
    jr nc, @+$36                                  ; $4bb6: $30 $34

    dec [hl]                                      ; $4bb8: $35
    pop de                                        ; $4bb9: $d1
    jr nc, jr_084_4bf2                            ; $4bba: $30 $36

    scf                                           ; $4bbc: $37
    add b                                         ; $4bbd: $80
    add b                                         ; $4bbe: $80
    ld bc, $8001                                  ; $4bbf: $01 $01 $80
    add b                                         ; $4bc2: $80
    ld bc, $8001                                  ; $4bc3: $01 $01 $80
    add b                                         ; $4bc6: $80
    ld bc, $8001                                  ; $4bc7: $01 $01 $80
    add b                                         ; $4bca: $80
    ld bc, $3801                                  ; $4bcb: $01 $01 $38
    add hl, sp                                    ; $4bce: $39
    ld a, [hl-]                                   ; $4bcf: $3a
    dec sp                                        ; $4bd0: $3b
    inc a                                         ; $4bd1: $3c
    dec a                                         ; $4bd2: $3d
    ld a, $3f                                     ; $4bd3: $3e $3f
    ld b, b                                       ; $4bd5: $40
    ld b, c                                       ; $4bd6: $41
    ld b, d                                       ; $4bd7: $42
    ld b, e                                       ; $4bd8: $43
    ld [$eceb], a                                 ; $4bd9: $ea $eb $ec
    db $ed                                        ; $4bdc: $ed
    rlca                                          ; $4bdd: $07
    ld b, $06                                     ; $4bde: $06 $06
    ld b, $07                                     ; $4be0: $06 $07
    ld b, $06                                     ; $4be2: $06 $06
    ld b, $07                                     ; $4be4: $06 $07

jr_084_4be6:
    dec b                                         ; $4be6: $05
    ld b, $06                                     ; $4be7: $06 $06
    rlca                                          ; $4be9: $07
    dec b                                         ; $4bea: $05
    ld b, $05                                     ; $4beb: $06 $05
    ld b, h                                       ; $4bed: $44
    add hl, sp                                    ; $4bee: $39
    ld sp, hl                                     ; $4bef: $f9
    ld b, l                                       ; $4bf0: $45
    inc a                                         ; $4bf1: $3c

jr_084_4bf2:
    dec a                                         ; $4bf2: $3d
    db $fd                                        ; $4bf3: $fd
    ccf                                           ; $4bf4: $3f
    ld b, b                                       ; $4bf5: $40
    ld b, c                                       ; $4bf6: $41
    ld b, [hl]                                    ; $4bf7: $46
    ld b, e                                       ; $4bf8: $43
    ld [$f9eb], a                                 ; $4bf9: $ea $eb $f9
    db $ed                                        ; $4bfc: $ed
    ld b, $06                                     ; $4bfd: $06 $06
    ld [bc], a                                    ; $4bff: $02
    ld b, $06                                     ; $4c00: $06 $06
    ld b, $02                                     ; $4c02: $06 $02
    dec b                                         ; $4c04: $05
    dec b                                         ; $4c05: $05
    dec b                                         ; $4c06: $05
    ld b, $05                                     ; $4c07: $06 $05
    dec b                                         ; $4c09: $05
    ld b, $02                                     ; $4c0a: $06 $02
    ld b, $38                                     ; $4c0c: $06 $38
    add hl, sp                                    ; $4c0e: $39
    rst $38                                       ; $4c0f: $ff
    nop                                           ; $4c10: $00
    inc a                                         ; $4c11: $3c
    dec a                                         ; $4c12: $3d
    ld bc, $4002                                  ; $4c13: $01 $02 $40
    ld b, c                                       ; $4c16: $41
    inc bc                                        ; $4c17: $03
    inc b                                         ; $4c18: $04
    ld [$05eb], a                                 ; $4c19: $ea $eb $05
    ld b, $05                                     ; $4c1c: $06 $05
    dec b                                         ; $4c1e: $05
    add d                                         ; $4c1f: $82
    add d                                         ; $4c20: $82
    ld b, $06                                     ; $4c21: $06 $06
    add d                                         ; $4c23: $82
    add d                                         ; $4c24: $82
    ld b, $06                                     ; $4c25: $06 $06
    add h                                         ; $4c27: $84
    add e                                         ; $4c28: $83
    ld b, $05                                     ; $4c29: $06 $05
    inc b                                         ; $4c2b: $04
    inc bc                                        ; $4c2c: $03
    nop                                           ; $4c2d: $00
    nop                                           ; $4c2e: $00
    nop                                           ; $4c2f: $00
    nop                                           ; $4c30: $00
    ld [bc], a                                    ; $4c31: $02
    ld [bc], a                                    ; $4c32: $02
    ld [bc], a                                    ; $4c33: $02
    ld [bc], a                                    ; $4c34: $02
    ld b, a                                       ; $4c35: $47
    ld c, b                                       ; $4c36: $48
    ld c, c                                       ; $4c37: $49
    ld c, d                                       ; $4c38: $4a
    ld c, e                                       ; $4c39: $4b
    ld c, h                                       ; $4c3a: $4c
    ld c, l                                       ; $4c3b: $4d
    ld c, [hl]                                    ; $4c3c: $4e
    add d                                         ; $4c3d: $82
    add d                                         ; $4c3e: $82
    add d                                         ; $4c3f: $82
    add d                                         ; $4c40: $82
    add d                                         ; $4c41: $82
    add d                                         ; $4c42: $82
    add d                                         ; $4c43: $82
    add d                                         ; $4c44: $82
    add e                                         ; $4c45: $83
    add e                                         ; $4c46: $83
    add h                                         ; $4c47: $84
    add e                                         ; $4c48: $83
    inc bc                                        ; $4c49: $03
    inc bc                                        ; $4c4a: $03
    inc b                                         ; $4c4b: $04
    inc b                                         ; $4c4c: $04
    nop                                           ; $4c4d: $00
    nop                                           ; $4c4e: $00
    nop                                           ; $4c4f: $00
    nop                                           ; $4c50: $00
    ld [bc], a                                    ; $4c51: $02
    ld [bc], a                                    ; $4c52: $02
    ld [bc], a                                    ; $4c53: $02
    ld [bc], a                                    ; $4c54: $02
    ld c, a                                       ; $4c55: $4f
    inc b                                         ; $4c56: $04
    ld b, a                                       ; $4c57: $47
    ld c, b                                       ; $4c58: $48
    ld d, b                                       ; $4c59: $50
    ld b, $4b                                     ; $4c5a: $06 $4b
    ld c, h                                       ; $4c5c: $4c
    add d                                         ; $4c5d: $82
    add d                                         ; $4c5e: $82
    add d                                         ; $4c5f: $82
    add d                                         ; $4c60: $82
    add d                                         ; $4c61: $82
    add d                                         ; $4c62: $82
    add d                                         ; $4c63: $82
    add d                                         ; $4c64: $82
    add e                                         ; $4c65: $83
    add e                                         ; $4c66: $83
    add h                                         ; $4c67: $84
    add e                                         ; $4c68: $83
    inc bc                                        ; $4c69: $03
    inc bc                                        ; $4c6a: $03
    inc b                                         ; $4c6b: $04
    inc b                                         ; $4c6c: $04
    nop                                           ; $4c6d: $00
    rst $38                                       ; $4c6e: $ff
    add sp, -$17                                  ; $4c6f: $e8 $e9
    ld [bc], a                                    ; $4c71: $02
    ld bc, $edec                                  ; $4c72: $01 $ec $ed
    ld c, c                                       ; $4c75: $49
    ld d, c                                       ; $4c76: $51
    ld d, d                                       ; $4c77: $52
    ld a, [$534d]                                 ; $4c78: $fa $4d $53
    ld d, h                                       ; $4c7b: $54
    cp $82                                        ; $4c7c: $fe $82
    and d                                         ; $4c7e: $a2
    ld bc, $8201                                  ; $4c7f: $01 $01 $82
    and d                                         ; $4c82: $a2
    rlca                                          ; $4c83: $07
    rlca                                          ; $4c84: $07
    add h                                         ; $4c85: $84
    add e                                         ; $4c86: $83
    ld b, $05                                     ; $4c87: $06 $05
    inc b                                         ; $4c89: $04
    inc bc                                        ; $4c8a: $03
    rlca                                          ; $4c8b: $07
    ld b, $e8                                     ; $4c8c: $06 $e8
    rst $38                                       ; $4c8e: $ff
    rst $38                                       ; $4c8f: $ff
    jp hl                                         ; $4c90: $e9


    ld [$5555], a                                 ; $4c91: $ea $55 $55
    db $ed                                        ; $4c94: $ed
    xor $55                                       ; $4c95: $ee $55
    ld d, l                                       ; $4c97: $55
    ld a, [$55f2]                                 ; $4c98: $fa $f2 $55
    ld d, l                                       ; $4c9b: $55
    cp $01                                        ; $4c9c: $fe $01
    add d                                         ; $4c9e: $82
    and d                                         ; $4c9f: $a2
    ld bc, $8207                                  ; $4ca0: $01 $07 $82
    and d                                         ; $4ca3: $a2
    rlca                                          ; $4ca4: $07
    ld b, $82                                     ; $4ca5: $06 $82
    and d                                         ; $4ca7: $a2
    rlca                                          ; $4ca8: $07
    dec b                                         ; $4ca9: $05
    add d                                         ; $4caa: $82
    and d                                         ; $4cab: $a2
    rlca                                          ; $4cac: $07
    ld d, [hl]                                    ; $4cad: $56
    ld d, a                                       ; $4cae: $57
    ld e, b                                       ; $4caf: $58
    ld e, c                                       ; $4cb0: $59
    ld e, d                                       ; $4cb1: $5a
    ld e, e                                       ; $4cb2: $5b
    ld e, h                                       ; $4cb3: $5c
    ld e, l                                       ; $4cb4: $5d
    ld e, [hl]                                    ; $4cb5: $5e
    ld e, a                                       ; $4cb6: $5f
    ld h, b                                       ; $4cb7: $60
    ld h, c                                       ; $4cb8: $61
    jr jr_084_4ce1                                ; $4cb9: $18 $26

    cpl                                           ; $4cbb: $2f
    jr z, jr_084_4cc1                             ; $4cbc: $28 $03

    inc bc                                        ; $4cbe: $03
    inc b                                         ; $4cbf: $04
    inc b                                         ; $4cc0: $04

jr_084_4cc1:
    inc bc                                        ; $4cc1: $03
    inc bc                                        ; $4cc2: $03
    inc b                                         ; $4cc3: $04
    inc b                                         ; $4cc4: $04
    inc bc                                        ; $4cc5: $03
    inc bc                                        ; $4cc6: $03
    inc bc                                        ; $4cc7: $03
    inc bc                                        ; $4cc8: $03
    rlca                                          ; $4cc9: $07
    rlca                                          ; $4cca: $07
    rlca                                          ; $4ccb: $07
    rlca                                          ; $4ccc: $07
    ld h, d                                       ; $4ccd: $62
    ld a, [hl+]                                   ; $4cce: $2a
    ld d, [hl]                                    ; $4ccf: $56
    ld d, a                                       ; $4cd0: $57
    ld h, e                                       ; $4cd1: $63
    inc l                                         ; $4cd2: $2c
    ld e, d                                       ; $4cd3: $5a
    ld e, e                                       ; $4cd4: $5b

Call_084_4cd5:
    ld h, h                                       ; $4cd5: $64
    ld l, $5e                                     ; $4cd6: $2e $5e
    ld e, a                                       ; $4cd8: $5f
    jr jr_084_4d01                                ; $4cd9: $18 $26

    cpl                                           ; $4cdb: $2f
    jr z, jr_084_4ce1                             ; $4cdc: $28 $03

    inc bc                                        ; $4cde: $03
    inc bc                                        ; $4cdf: $03
    inc bc                                        ; $4ce0: $03

jr_084_4ce1:
    inc b                                         ; $4ce1: $04
    inc bc                                        ; $4ce2: $03
    inc bc                                        ; $4ce3: $03
    inc bc                                        ; $4ce4: $03
    inc b                                         ; $4ce5: $04
    inc b                                         ; $4ce6: $04
    inc bc                                        ; $4ce7: $03
    inc b                                         ; $4ce8: $04
    rlca                                          ; $4ce9: $07
    rlca                                          ; $4cea: $07
    rlca                                          ; $4ceb: $07
    rlca                                          ; $4cec: $07
    ld e, b                                       ; $4ced: $58
    ld h, l                                       ; $4cee: $65
    ld h, [hl]                                    ; $4cef: $66
    rra                                           ; $4cf0: $1f
    ld e, h                                       ; $4cf1: $5c
    ld h, a                                       ; $4cf2: $67
    ld l, b                                       ; $4cf3: $68
    ld hl, $6960                                  ; $4cf4: $21 $60 $69
    ld l, d                                       ; $4cf7: $6a
    inc h                                         ; $4cf8: $24
    jr jr_084_4d21                                ; $4cf9: $18 $26

    cpl                                           ; $4cfb: $2f
    jr z, jr_084_4d02                             ; $4cfc: $28 $04

    inc bc                                        ; $4cfe: $03
    rlca                                          ; $4cff: $07
    dec b                                         ; $4d00: $05

jr_084_4d01:
    inc b                                         ; $4d01: $04

jr_084_4d02:
    inc bc                                        ; $4d02: $03
    rlca                                          ; $4d03: $07
    ld b, $04                                     ; $4d04: $06 $04
    inc bc                                        ; $4d06: $03
    rlca                                          ; $4d07: $07
    ld b, $07                                     ; $4d08: $06 $07
    rlca                                          ; $4d0a: $07
    rlca                                          ; $4d0b: $07
    ld b, $0c                                     ; $4d0c: $06 $0c
    ld d, l                                       ; $4d0e: $55
    ld d, l                                       ; $4d0f: $55
    rra                                           ; $4d10: $1f
    db $10                                        ; $4d11: $10
    ld d, l                                       ; $4d12: $55
    ld d, l                                       ; $4d13: $55
    ld hl, $5514                                  ; $4d14: $21 $14 $55
    ld d, l                                       ; $4d17: $55
    inc h                                         ; $4d18: $24
    jr jr_084_4d70                                ; $4d19: $18 $55

    ld d, l                                       ; $4d1b: $55
    jr z, jr_084_4d23                             ; $4d1c: $28 $05

    add d                                         ; $4d1e: $82
    and d                                         ; $4d1f: $a2
    rlca                                          ; $4d20: $07

jr_084_4d21:
    dec b                                         ; $4d21: $05
    add d                                         ; $4d22: $82

jr_084_4d23:
    and d                                         ; $4d23: $a2
    rlca                                          ; $4d24: $07
    dec b                                         ; $4d25: $05
    add d                                         ; $4d26: $82
    and d                                         ; $4d27: $a2
    rlca                                          ; $4d28: $07
    ld b, $82                                     ; $4d29: $06 $82
    and d                                         ; $4d2b: $a2
    rlca                                          ; $4d2c: $07
    nop                                           ; $4d2d: $00
    nop                                           ; $4d2e: $00
    nop                                           ; $4d2f: $00
    nop                                           ; $4d30: $00
    ld [bc], a                                    ; $4d31: $02
    ld [bc], a                                    ; $4d32: $02
    ld [bc], a                                    ; $4d33: $02
    ld [bc], a                                    ; $4d34: $02
    ld b, a                                       ; $4d35: $47
    ld c, b                                       ; $4d36: $48
    ld c, c                                       ; $4d37: $49
    ld c, d                                       ; $4d38: $4a
    ld c, e                                       ; $4d39: $4b
    ld c, h                                       ; $4d3a: $4c
    ld c, l                                       ; $4d3b: $4d
    ld c, [hl]                                    ; $4d3c: $4e
    add d                                         ; $4d3d: $82
    add d                                         ; $4d3e: $82
    add d                                         ; $4d3f: $82
    add d                                         ; $4d40: $82
    add d                                         ; $4d41: $82
    add d                                         ; $4d42: $82
    add d                                         ; $4d43: $82
    add d                                         ; $4d44: $82
    add e                                         ; $4d45: $83
    add e                                         ; $4d46: $83
    add h                                         ; $4d47: $84
    add e                                         ; $4d48: $83
    inc b                                         ; $4d49: $04
    inc bc                                        ; $4d4a: $03
    inc b                                         ; $4d4b: $04
    inc bc                                        ; $4d4c: $03
    nop                                           ; $4d4d: $00
    nop                                           ; $4d4e: $00
    nop                                           ; $4d4f: $00
    nop                                           ; $4d50: $00
    ld [bc], a                                    ; $4d51: $02
    ld [bc], a                                    ; $4d52: $02
    ld [bc], a                                    ; $4d53: $02
    ld [bc], a                                    ; $4d54: $02
    ld c, a                                       ; $4d55: $4f
    inc b                                         ; $4d56: $04
    ld b, a                                       ; $4d57: $47
    ld c, b                                       ; $4d58: $48
    ld d, b                                       ; $4d59: $50
    ld b, $4b                                     ; $4d5a: $06 $4b
    ld c, h                                       ; $4d5c: $4c
    add d                                         ; $4d5d: $82
    add d                                         ; $4d5e: $82
    add d                                         ; $4d5f: $82
    add d                                         ; $4d60: $82
    add d                                         ; $4d61: $82
    add d                                         ; $4d62: $82
    add d                                         ; $4d63: $82
    add d                                         ; $4d64: $82
    add e                                         ; $4d65: $83
    add h                                         ; $4d66: $84
    add h                                         ; $4d67: $84
    add e                                         ; $4d68: $83
    inc bc                                        ; $4d69: $03
    inc b                                         ; $4d6a: $04
    inc b                                         ; $4d6b: $04
    inc bc                                        ; $4d6c: $03
    nop                                           ; $4d6d: $00
    rst $38                                       ; $4d6e: $ff
    ld l, e                                       ; $4d6f: $6b

jr_084_4d70:
    ld b, l                                       ; $4d70: $45
    ld [bc], a                                    ; $4d71: $02
    ld bc, $3f3e                                  ; $4d72: $01 $3e $3f
    ld c, c                                       ; $4d75: $49
    ld d, c                                       ; $4d76: $51
    ld b, d                                       ; $4d77: $42
    ld b, e                                       ; $4d78: $43
    ld c, l                                       ; $4d79: $4d
    ld d, e                                       ; $4d7a: $53
    db $ec                                        ; $4d7b: $ec
    db $ed                                        ; $4d7c: $ed
    add d                                         ; $4d7d: $82
    and d                                         ; $4d7e: $a2
    dec b                                         ; $4d7f: $05
    ld b, $82                                     ; $4d80: $06 $82
    and d                                         ; $4d82: $a2
    ld b, $05                                     ; $4d83: $06 $05
    add e                                         ; $4d85: $83
    add h                                         ; $4d86: $84
    ld b, $06                                     ; $4d87: $06 $06
    inc bc                                        ; $4d89: $03
    inc b                                         ; $4d8a: $04
    rlca                                          ; $4d8b: $07
    ld b, $38                                     ; $4d8c: $06 $38
    ld d, l                                       ; $4d8e: $55
    ld d, l                                       ; $4d8f: $55
    ld b, l                                       ; $4d90: $45
    inc a                                         ; $4d91: $3c
    ld bc, $3f01                                  ; $4d92: $01 $01 $3f
    ld b, b                                       ; $4d95: $40
    ld l, h                                       ; $4d96: $6c
    ld d, c                                       ; $4d97: $51
    ld b, e                                       ; $4d98: $43
    ld [$536d], a                                 ; $4d99: $ea $6d $53
    db $ed                                        ; $4d9c: $ed
    dec b                                         ; $4d9d: $05
    add d                                         ; $4d9e: $82
    and d                                         ; $4d9f: $a2
    rlca                                          ; $4da0: $07
    ld b, $82                                     ; $4da1: $06 $82
    and d                                         ; $4da3: $a2
    rlca                                          ; $4da4: $07
    ld b, $04                                     ; $4da5: $06 $04
    inc b                                         ; $4da7: $04
    rlca                                          ; $4da8: $07
    dec b                                         ; $4da9: $05
    inc b                                         ; $4daa: $04
    inc b                                         ; $4dab: $04
    rlca                                          ; $4dac: $07
    ld [c], a                                     ; $4dad: $e2
    db $e3                                        ; $4dae: $e3
    ld d, l                                       ; $4daf: $55
    ld l, [hl]                                    ; $4db0: $6e
    db $e4                                        ; $4db1: $e4
    push hl                                       ; $4db2: $e5
    ld d, l                                       ; $4db3: $55
    ld d, l                                       ; $4db4: $55
    and $e7                                       ; $4db5: $e6 $e7
    ld d, l                                       ; $4db7: $55
    ld d, l                                       ; $4db8: $55
    sbc $df                                       ; $4db9: $de $df
    ld d, l                                       ; $4dbb: $55
    ld d, l                                       ; $4dbc: $55
    ld bc, $8201                                  ; $4dbd: $01 $01 $82
    add d                                         ; $4dc0: $82
    ld bc, $8201                                  ; $4dc1: $01 $01 $82
    and d                                         ; $4dc4: $a2
    ld bc, $8201                                  ; $4dc5: $01 $01 $82
    and d                                         ; $4dc8: $a2
    ld bc, $8201                                  ; $4dc9: $01 $01 $82
    and d                                         ; $4dcc: $a2
    ld [bc], a                                    ; $4dcd: $02
    ld [bc], a                                    ; $4dce: $02
    ld [bc], a                                    ; $4dcf: $02
    ld [bc], a                                    ; $4dd0: $02
    ld c, a                                       ; $4dd1: $4f
    inc b                                         ; $4dd2: $04
    ld b, a                                       ; $4dd3: $47
    ld c, b                                       ; $4dd4: $48
    ld d, b                                       ; $4dd5: $50
    ld b, $4b                                     ; $4dd6: $06 $4b
    ld c, h                                       ; $4dd8: $4c
    ld h, d                                       ; $4dd9: $62
    ld a, [hl+]                                   ; $4dda: $2a

Call_084_4ddb:
    ld d, [hl]                                    ; $4ddb: $56
    ld d, a                                       ; $4ddc: $57
    ld [bc], a                                    ; $4ddd: $02
    ld [bc], a                                    ; $4dde: $02
    ld [bc], a                                    ; $4ddf: $02
    ld [bc], a                                    ; $4de0: $02
    inc b                                         ; $4de1: $04
    inc bc                                        ; $4de2: $03
    inc b                                         ; $4de3: $04
    inc bc                                        ; $4de4: $03
    inc b                                         ; $4de5: $04
    inc bc                                        ; $4de6: $03
    inc b                                         ; $4de7: $04
    inc bc                                        ; $4de8: $03
    inc bc                                        ; $4de9: $03
    inc bc                                        ; $4dea: $03
    inc b                                         ; $4deb: $04
    inc bc                                        ; $4dec: $03
    ld [bc], a                                    ; $4ded: $02
    ld [bc], a                                    ; $4dee: $02
    ld [bc], a                                    ; $4def: $02
    ld [bc], a                                    ; $4df0: $02
    ld c, c                                       ; $4df1: $49
    ld c, d                                       ; $4df2: $4a
    ld c, a                                       ; $4df3: $4f
    inc b                                         ; $4df4: $04
    ld c, l                                       ; $4df5: $4d
    ld c, [hl]                                    ; $4df6: $4e
    ld d, b                                       ; $4df7: $50
    ld b, $58                                     ; $4df8: $06 $58
    ld e, c                                       ; $4dfa: $59
    ld h, d                                       ; $4dfb: $62
    ld a, [hl+]                                   ; $4dfc: $2a
    ld [bc], a                                    ; $4dfd: $02
    ld [bc], a                                    ; $4dfe: $02
    ld [bc], a                                    ; $4dff: $02
    ld [bc], a                                    ; $4e00: $02
    inc bc                                        ; $4e01: $03
    inc b                                         ; $4e02: $04
    inc bc                                        ; $4e03: $03
    inc b                                         ; $4e04: $04
    inc bc                                        ; $4e05: $03
    inc b                                         ; $4e06: $04
    inc bc                                        ; $4e07: $03
    inc b                                         ; $4e08: $04
    inc bc                                        ; $4e09: $03
    inc b                                         ; $4e0a: $04
    inc bc                                        ; $4e0b: $03
    inc bc                                        ; $4e0c: $03
    ld l, [hl]                                    ; $4e0d: $6e
    ld d, l                                       ; $4e0e: $55
    push de                                       ; $4e0f: $d5
    sub $55                                       ; $4e10: $d6 $55
    ld d, l                                       ; $4e12: $55
    push de                                       ; $4e13: $d5
    reti                                          ; $4e14: $d9


    ld d, l                                       ; $4e15: $55
    ld d, l                                       ; $4e16: $55
    call c, Call_084_55dd                         ; $4e17: $dc $dd $55
    ld d, l                                       ; $4e1a: $55
    ldh [$e1], a                                  ; $4e1b: $e0 $e1
    and d                                         ; $4e1d: $a2
    and d                                         ; $4e1e: $a2
    ld bc, $8201                                  ; $4e1f: $01 $01 $82
    and d                                         ; $4e22: $a2
    ld bc, $8201                                  ; $4e23: $01 $01 $82
    and d                                         ; $4e26: $a2
    ld bc, $8201                                  ; $4e27: $01 $01 $82
    and d                                         ; $4e2a: $a2
    ld bc, $e801                                  ; $4e2b: $01 $01 $e8
    jp hl                                         ; $4e2e: $e9


    ld d, l                                       ; $4e2f: $55
    ld d, l                                       ; $4e30: $55
    ld [$55eb], a                                 ; $4e31: $ea $eb $55
    ld d, l                                       ; $4e34: $55
    xor $ef                                       ; $4e35: $ee $ef
    ld d, l                                       ; $4e37: $55
    ld d, l                                       ; $4e38: $55
    ld a, [c]                                     ; $4e39: $f2
    db $fc                                        ; $4e3a: $fc
    ld d, l                                       ; $4e3b: $55
    ld d, l                                       ; $4e3c: $55
    ld bc, $8201                                  ; $4e3d: $01 $01 $82
    and d                                         ; $4e40: $a2
    rlca                                          ; $4e41: $07
    rlca                                          ; $4e42: $07
    add d                                         ; $4e43: $82
    and d                                         ; $4e44: $a2
    ld b, $05                                     ; $4e45: $06 $05
    add d                                         ; $4e47: $82
    and d                                         ; $4e48: $a2
    ld b, $05                                     ; $4e49: $06 $05
    add d                                         ; $4e4b: $82
    and d                                         ; $4e4c: $a2
    ld h, e                                       ; $4e4d: $63
    inc l                                         ; $4e4e: $2c
    ld e, d                                       ; $4e4f: $5a
    ld e, e                                       ; $4e50: $5b
    ld h, h                                       ; $4e51: $64
    ld l, $5e                                     ; $4e52: $2e $5e
    ld e, a                                       ; $4e54: $5f
    xor $ef                                       ; $4e55: $ee $ef
    ld d, d                                       ; $4e57: $52
    ld a, [$fcf2]                                 ; $4e58: $fa $f2 $fc
    ld d, h                                       ; $4e5b: $54
    cp $04                                        ; $4e5c: $fe $04
    inc bc                                        ; $4e5e: $03
    inc bc                                        ; $4e5f: $03
    inc bc                                        ; $4e60: $03
    inc bc                                        ; $4e61: $03
    inc b                                         ; $4e62: $04
    inc bc                                        ; $4e63: $03
    inc b                                         ; $4e64: $04
    rlca                                          ; $4e65: $07
    rlca                                          ; $4e66: $07
    rlca                                          ; $4e67: $07
    rlca                                          ; $4e68: $07
    rlca                                          ; $4e69: $07
    dec b                                         ; $4e6a: $05
    ld b, $06                                     ; $4e6b: $06 $06
    ld e, h                                       ; $4e6d: $5c
    ld e, l                                       ; $4e6e: $5d
    ld h, e                                       ; $4e6f: $63
    inc l                                         ; $4e70: $2c
    ld h, b                                       ; $4e71: $60
    ld h, c                                       ; $4e72: $61
    ld h, h                                       ; $4e73: $64
    ld l, $ee                                     ; $4e74: $2e $ee
    rst $28                                       ; $4e76: $ef
    ld d, d                                       ; $4e77: $52
    ld a, [$fcf2]                                 ; $4e78: $fa $f2 $fc
    ld d, h                                       ; $4e7b: $54
    cp $03                                        ; $4e7c: $fe $03
    inc b                                         ; $4e7e: $04
    inc b                                         ; $4e7f: $04
    inc bc                                        ; $4e80: $03
    inc bc                                        ; $4e81: $03
    inc b                                         ; $4e82: $04
    inc b                                         ; $4e83: $04
    inc bc                                        ; $4e84: $03
    rlca                                          ; $4e85: $07
    rlca                                          ; $4e86: $07
    rlca                                          ; $4e87: $07
    rlca                                          ; $4e88: $07
    ld b, $06                                     ; $4e89: $06 $06
    dec b                                         ; $4e8b: $05
    ld b, $55                                     ; $4e8c: $06 $55
    ld d, l                                       ; $4e8e: $55
    add sp, -$17                                  ; $4e8f: $e8 $e9
    ld d, l                                       ; $4e91: $55
    ld d, l                                       ; $4e92: $55
    db $ec                                        ; $4e93: $ec
    db $ed                                        ; $4e94: $ed
    ld d, l                                       ; $4e95: $55
    ld d, l                                       ; $4e96: $55
    ld d, d                                       ; $4e97: $52
    ld a, [$5555]                                 ; $4e98: $fa $55 $55
    ld d, h                                       ; $4e9b: $54
    cp $82                                        ; $4e9c: $fe $82
    and d                                         ; $4e9e: $a2
    ld bc, $8201                                  ; $4e9f: $01 $01 $82
    and d                                         ; $4ea2: $a2
    rlca                                          ; $4ea3: $07
    rlca                                          ; $4ea4: $07
    add d                                         ; $4ea5: $82
    and d                                         ; $4ea6: $a2
    rlca                                          ; $4ea7: $07
    ld b, $82                                     ; $4ea8: $06 $82
    and d                                         ; $4eaa: $a2
    rlca                                          ; $4eab: $07
    dec b                                         ; $4eac: $05
    inc c                                         ; $4ead: $0c
    dec e                                         ; $4eae: $1d
    ld d, l                                       ; $4eaf: $55
    ld d, l                                       ; $4eb0: $55
    db $10                                        ; $4eb1: $10
    ld de, $5555                                  ; $4eb2: $11 $55 $55
    inc d                                         ; $4eb5: $14
    inc hl                                        ; $4eb6: $23
    ld d, l                                       ; $4eb7: $55
    ld d, l                                       ; $4eb8: $55
    jr jr_084_4ee1                                ; $4eb9: $18 $26

    ld d, l                                       ; $4ebb: $55
    ld d, l                                       ; $4ebc: $55
    dec b                                         ; $4ebd: $05
    dec b                                         ; $4ebe: $05
    add d                                         ; $4ebf: $82
    and d                                         ; $4ec0: $a2
    ld b, $06                                     ; $4ec1: $06 $06
    add d                                         ; $4ec3: $82
    and d                                         ; $4ec4: $a2
    ld b, $05                                     ; $4ec5: $06 $05
    add d                                         ; $4ec7: $82
    and d                                         ; $4ec8: $a2
    ld b, $06                                     ; $4ec9: $06 $06
    add d                                         ; $4ecb: $82
    and d                                         ; $4ecc: $a2
    inc c                                         ; $4ecd: $0c
    dec e                                         ; $4ece: $1d
    ld h, [hl]                                    ; $4ecf: $66
    rra                                           ; $4ed0: $1f
    db $10                                        ; $4ed1: $10
    ld de, $2168                                  ; $4ed2: $11 $68 $21
    inc d                                         ; $4ed5: $14
    inc hl                                        ; $4ed6: $23
    ld l, d                                       ; $4ed7: $6a
    inc h                                         ; $4ed8: $24
    jr jr_084_4f01                                ; $4ed9: $18 $26

    cpl                                           ; $4edb: $2f
    jr z, jr_084_4ee5                             ; $4edc: $28 $07

    ld b, $06                                     ; $4ede: $06 $06
    dec b                                         ; $4ee0: $05

jr_084_4ee1:
    rlca                                          ; $4ee1: $07
    ld b, $06                                     ; $4ee2: $06 $06
    dec b                                         ; $4ee4: $05

jr_084_4ee5:
    rlca                                          ; $4ee5: $07
    ld b, $05                                     ; $4ee6: $06 $05
    ld b, $07                                     ; $4ee8: $06 $07
    dec b                                         ; $4eea: $05
    dec b                                         ; $4eeb: $05
    dec b                                         ; $4eec: $05
    inc c                                         ; $4eed: $0c
    dec e                                         ; $4eee: $1d
    ld h, [hl]                                    ; $4eef: $66
    rra                                           ; $4ef0: $1f
    db $10                                        ; $4ef1: $10
    ld de, $2168                                  ; $4ef2: $11 $68 $21
    inc d                                         ; $4ef5: $14
    inc hl                                        ; $4ef6: $23
    ld l, d                                       ; $4ef7: $6a
    inc h                                         ; $4ef8: $24
    jr @+$28                                      ; $4ef9: $18 $26

    cpl                                           ; $4efb: $2f
    jr z, jr_084_4f04                             ; $4efc: $28 $06

    dec b                                         ; $4efe: $05
    ld b, $06                                     ; $4eff: $06 $06

jr_084_4f01:
    dec b                                         ; $4f01: $05
    ld b, $06                                     ; $4f02: $06 $06

jr_084_4f04:
    ld b, $05                                     ; $4f04: $06 $05
    dec b                                         ; $4f06: $05
    dec b                                         ; $4f07: $05
    dec b                                         ; $4f08: $05
    dec b                                         ; $4f09: $05
    ld b, $05                                     ; $4f0a: $06 $05
    ld b, $55                                     ; $4f0c: $06 $55
    ld d, l                                       ; $4f0e: $55
    ld h, [hl]                                    ; $4f0f: $66
    rra                                           ; $4f10: $1f
    ld d, l                                       ; $4f11: $55
    ld d, l                                       ; $4f12: $55
    ld l, b                                       ; $4f13: $68
    ld hl, $5555                                  ; $4f14: $21 $55 $55
    ld l, d                                       ; $4f17: $6a
    inc h                                         ; $4f18: $24
    ld d, l                                       ; $4f19: $55
    ld d, l                                       ; $4f1a: $55
    cpl                                           ; $4f1b: $2f
    jr z, @-$7c                                   ; $4f1c: $28 $82

    and d                                         ; $4f1e: $a2
    rlca                                          ; $4f1f: $07
    ld b, $82                                     ; $4f20: $06 $82
    and d                                         ; $4f22: $a2
    rlca                                          ; $4f23: $07
    dec b                                         ; $4f24: $05
    add d                                         ; $4f25: $82
    and d                                         ; $4f26: $a2
    rlca                                          ; $4f27: $07
    ld b, $82                                     ; $4f28: $06 $82
    and d                                         ; $4f2a: $a2
    rlca                                          ; $4f2b: $07
    ld b, $38                                     ; $4f2c: $06 $38
    add hl, sp                                    ; $4f2e: $39
    ld d, l                                       ; $4f2f: $55
    ld d, l                                       ; $4f30: $55
    inc a                                         ; $4f31: $3c
    dec a                                         ; $4f32: $3d
    ld bc, $4001                                  ; $4f33: $01 $01 $40
    ld b, c                                       ; $4f36: $41
    inc bc                                        ; $4f37: $03
    ld l, a                                       ; $4f38: $6f
    ld [$05eb], a                                 ; $4f39: $ea $eb $05
    ld [hl], b                                    ; $4f3c: $70
    ld b, $05                                     ; $4f3d: $06 $05
    add d                                         ; $4f3f: $82
    and d                                         ; $4f40: $a2
    ld b, $05                                     ; $4f41: $06 $05
    add d                                         ; $4f43: $82
    and d                                         ; $4f44: $a2
    ld b, $06                                     ; $4f45: $06 $06
    inc bc                                        ; $4f47: $03
    inc bc                                        ; $4f48: $03
    dec b                                         ; $4f49: $05
    ld b, $03                                     ; $4f4a: $06 $03
    inc bc                                        ; $4f4c: $03
    jr c, jr_084_4f88                             ; $4f4d: $38 $39

    ld l, e                                       ; $4f4f: $6b
    ld b, l                                       ; $4f50: $45
    inc a                                         ; $4f51: $3c
    dec a                                         ; $4f52: $3d
    ld a, $3f                                     ; $4f53: $3e $3f
    ld b, b                                       ; $4f55: $40
    ld b, c                                       ; $4f56: $41
    ld b, d                                       ; $4f57: $42
    ld b, e                                       ; $4f58: $43
    ld [$eceb], a                                 ; $4f59: $ea $eb $ec
    db $ed                                        ; $4f5c: $ed
    rlca                                          ; $4f5d: $07
    ld b, $06                                     ; $4f5e: $06 $06
    dec b                                         ; $4f60: $05
    rlca                                          ; $4f61: $07
    ld b, $06                                     ; $4f62: $06 $06
    dec b                                         ; $4f64: $05
    rlca                                          ; $4f65: $07
    dec b                                         ; $4f66: $05
    ld b, $06                                     ; $4f67: $06 $06
    rlca                                          ; $4f69: $07
    ld b, $05                                     ; $4f6a: $06 $05
    ld b, $38                                     ; $4f6c: $06 $38
    add hl, sp                                    ; $4f6e: $39
    ld l, e                                       ; $4f6f: $6b
    ld b, l                                       ; $4f70: $45
    inc a                                         ; $4f71: $3c
    dec a                                         ; $4f72: $3d
    ld a, $3f                                     ; $4f73: $3e $3f
    ld b, b                                       ; $4f75: $40
    ld b, c                                       ; $4f76: $41
    ld b, d                                       ; $4f77: $42
    ld b, e                                       ; $4f78: $43
    ld [$eceb], a                                 ; $4f79: $ea $eb $ec
    db $ed                                        ; $4f7c: $ed
    ld b, $06                                     ; $4f7d: $06 $06
    ld b, $05                                     ; $4f7f: $06 $05
    ld b, $05                                     ; $4f81: $06 $05
    ld b, $06                                     ; $4f83: $06 $06
    ld b, $05                                     ; $4f85: $06 $05
    dec b                                         ; $4f87: $05

jr_084_4f88:
    ld b, $05                                     ; $4f88: $06 $05
    ld b, $06                                     ; $4f8a: $06 $06
    ld b, $55                                     ; $4f8c: $06 $55
    ld d, l                                       ; $4f8e: $55
    ld l, e                                       ; $4f8f: $6b
    ld b, l                                       ; $4f90: $45
    ld bc, $3e01                                  ; $4f91: $01 $01 $3e
    ccf                                           ; $4f94: $3f
    ld l, h                                       ; $4f95: $6c
    ld d, c                                       ; $4f96: $51
    ld b, d                                       ; $4f97: $42
    ld b, e                                       ; $4f98: $43
    ld l, l                                       ; $4f99: $6d
    ld d, e                                       ; $4f9a: $53
    db $ec                                        ; $4f9b: $ec
    db $ed                                        ; $4f9c: $ed
    add d                                         ; $4f9d: $82
    and d                                         ; $4f9e: $a2
    rlca                                          ; $4f9f: $07
    ld b, $82                                     ; $4fa0: $06 $82
    and d                                         ; $4fa2: $a2
    rlca                                          ; $4fa3: $07
    dec b                                         ; $4fa4: $05
    inc b                                         ; $4fa5: $04
    inc bc                                        ; $4fa6: $03
    rlca                                          ; $4fa7: $07
    dec b                                         ; $4fa8: $05
    inc bc                                        ; $4fa9: $03
    inc b                                         ; $4faa: $04
    rlca                                          ; $4fab: $07
    ld b, $d2                                     ; $4fac: $06 $d2
    pop de                                        ; $4fae: $d1
    pop de                                        ; $4faf: $d1
    pop de                                        ; $4fb0: $d1
    jp nc, $d1d1                                  ; $4fb1: $d2 $d1 $d1

    pop de                                        ; $4fb4: $d1
    jp nc, $d1d1                                  ; $4fb5: $d2 $d1 $d1

    pop de                                        ; $4fb8: $d1
    jp nc, $d1d1                                  ; $4fb9: $d2 $d1 $d1

    pop de                                        ; $4fbc: $d1
    add b                                         ; $4fbd: $80
    add b                                         ; $4fbe: $80
    add b                                         ; $4fbf: $80
    add b                                         ; $4fc0: $80
    add b                                         ; $4fc1: $80
    add b                                         ; $4fc2: $80
    add b                                         ; $4fc3: $80
    add b                                         ; $4fc4: $80
    add b                                         ; $4fc5: $80
    add b                                         ; $4fc6: $80
    add b                                         ; $4fc7: $80
    add b                                         ; $4fc8: $80
    add b                                         ; $4fc9: $80
    add b                                         ; $4fca: $80
    add b                                         ; $4fcb: $80
    add b                                         ; $4fcc: $80
    add sp, -$0a                                  ; $4fcd: $e8 $f6
    add sp, -$17                                  ; $4fcf: $e8 $e9
    ld [$ec71], a                                 ; $4fd1: $ea $71 $ec
    db $ed                                        ; $4fd4: $ed
    xor $f9                                       ; $4fd5: $ee $f9
    ld d, d                                       ; $4fd7: $52
    ld a, [$fdf2]                                 ; $4fd8: $fa $f2 $fd
    ld d, h                                       ; $4fdb: $54
    ld [hl], d                                    ; $4fdc: $72
    ld bc, $0101                                  ; $4fdd: $01 $01 $01
    ld bc, $0707                                  ; $4fe0: $01 $07 $07
    rlca                                          ; $4fe3: $07
    rlca                                          ; $4fe4: $07
    dec b                                         ; $4fe5: $05
    ld [bc], a                                    ; $4fe6: $02
    dec b                                         ; $4fe7: $05
    ld b, $06                                     ; $4fe8: $06 $06
    ld [bc], a                                    ; $4fea: $02
    ld b, $06                                     ; $4feb: $06 $06
    add sp, -$17                                  ; $4fed: $e8 $e9
    add sp, -$17                                  ; $4fef: $e8 $e9
    ld [$eceb], a                                 ; $4ff1: $ea $eb $ec
    db $ed                                        ; $4ff4: $ed
    ld [hl], e                                    ; $4ff5: $73
    ld [hl], h                                    ; $4ff6: $74
    ld [hl], l                                    ; $4ff7: $75
    ld a, [$7776]                                 ; $4ff8: $fa $76 $77
    ld a, b                                       ; $4ffb: $78
    cp $01                                        ; $4ffc: $fe $01
    ld bc, $0101                                  ; $4ffe: $01 $01 $01
    rlca                                          ; $5001: $07
    rlca                                          ; $5002: $07
    rlca                                          ; $5003: $07
    rlca                                          ; $5004: $07
    ld b, $06                                     ; $5005: $06 $06
    ld b, $07                                     ; $5007: $06 $07
    ld b, $06                                     ; $5009: $06 $06
    ld b, $07                                     ; $500b: $06 $07
    inc c                                         ; $500d: $0c
    ld a, c                                       ; $500e: $79
    ld h, [hl]                                    ; $500f: $66
    ld a, d                                       ; $5010: $7a
    db $10                                        ; $5011: $10
    ld sp, hl                                     ; $5012: $f9
    ld l, b                                       ; $5013: $68
    ld hl, $fd14                                  ; $5014: $21 $14 $fd
    ld l, d                                       ; $5017: $6a
    ld a, e                                       ; $5018: $7b
    jr jr_084_5097                                ; $5019: $18 $7c

    cpl                                           ; $501b: $2f
    ld a, l                                       ; $501c: $7d
    dec b                                         ; $501d: $05
    ld b, $06                                     ; $501e: $06 $06
    ld b, $06                                     ; $5020: $06 $06
    ld [bc], a                                    ; $5022: $02
    ld b, $06                                     ; $5023: $06 $06
    dec b                                         ; $5025: $05
    ld [bc], a                                    ; $5026: $02
    ld b, $06                                     ; $5027: $06 $06
    dec b                                         ; $5029: $05
    ld b, $06                                     ; $502a: $06 $06
    ld b, $0e                                     ; $502c: $06 $0e
    rrca                                          ; $502e: $0f
    ld a, [hl]                                    ; $502f: $7e
    rra                                           ; $5030: $1f
    ld a, a                                       ; $5031: $7f
    inc de                                        ; $5032: $13
    add b                                         ; $5033: $80
    ld hl, $8281                                  ; $5034: $21 $81 $82
    add e                                         ; $5037: $83
    inc h                                         ; $5038: $24
    add h                                         ; $5039: $84
    dec de                                        ; $503a: $1b
    add l                                         ; $503b: $85
    jr z, @+$08                                   ; $503c: $28 $06

    ld b, $06                                     ; $503e: $06 $06
    rlca                                          ; $5040: $07
    ld b, $06                                     ; $5041: $06 $06
    ld c, $07                                     ; $5043: $0e $07
    ld c, $0e                                     ; $5045: $0e $0e
    ld c, $07                                     ; $5047: $0e $07
    ld c, $06                                     ; $5049: $0e $06
    ld c, $07                                     ; $504b: $0e $07
    jr c, @-$05                                   ; $504d: $38 $f9

    ld l, e                                       ; $504f: $6b
    ld b, l                                       ; $5050: $45
    inc a                                         ; $5051: $3c
    db $fd                                        ; $5052: $fd
    ld a, $3f                                     ; $5053: $3e $3f
    ld b, b                                       ; $5055: $40
    add [hl]                                      ; $5056: $86
    ld b, d                                       ; $5057: $42
    ld b, e                                       ; $5058: $43
    ld [$ecf9], a                                 ; $5059: $ea $f9 $ec
    db $ed                                        ; $505c: $ed
    ld b, $02                                     ; $505d: $06 $02
    ld b, $06                                     ; $505f: $06 $06
    ld b, $02                                     ; $5061: $06 $02
    dec b                                         ; $5063: $05
    ld b, $06                                     ; $5064: $06 $06
    ld c, $06                                     ; $5066: $0e $06
    ld b, $06                                     ; $5068: $06 $06
    ld [bc], a                                    ; $506a: $02
    dec b                                         ; $506b: $05
    dec b                                         ; $506c: $05
    add a                                         ; $506d: $87
    adc b                                         ; $506e: $88
    adc c                                         ; $506f: $89
    ld b, l                                       ; $5070: $45
    inc a                                         ; $5071: $3c
    dec a                                         ; $5072: $3d
    ld a, $3f                                     ; $5073: $3e $3f
    ld b, b                                       ; $5075: $40
    ld b, c                                       ; $5076: $41
    ld b, d                                       ; $5077: $42
    ld b, e                                       ; $5078: $43
    ld [$eceb], a                                 ; $5079: $ea $eb $ec
    db $ed                                        ; $507c: $ed
    ld c, $0e                                     ; $507d: $0e $0e
    ld c, $07                                     ; $507f: $0e $07
    ld b, $06                                     ; $5081: $06 $06
    dec b                                         ; $5083: $05
    rlca                                          ; $5084: $07
    ld b, $05                                     ; $5085: $06 $05
    ld b, $07                                     ; $5087: $06 $07
    ld b, $06                                     ; $5089: $06 $06
    ld b, $07                                     ; $508b: $06 $07
    adc d                                         ; $508d: $8a
    jr nc, jr_084_50e2                            ; $508e: $30 $52

    ld a, [$d28a]                                 ; $5090: $fa $8a $d2
    ld d, h                                       ; $5093: $54
    cp $8a                                        ; $5094: $fe $8a
    adc e                                         ; $5096: $8b

jr_084_5097:
    ld [$d18c], sp                                ; $5097: $08 $8c $d1
    pop de                                        ; $509a: $d1
    pop de                                        ; $509b: $d1
    jp nc, $8088                                  ; $509c: $d2 $88 $80

    rlca                                          ; $509f: $07
    rlca                                          ; $50a0: $07
    adc b                                         ; $50a1: $88
    add b                                         ; $50a2: $80
    rlca                                          ; $50a3: $07
    ld b, $88                                     ; $50a4: $06 $88
    adc b                                         ; $50a6: $88
    add b                                         ; $50a7: $80
    adc b                                         ; $50a8: $88
    add b                                         ; $50a9: $80
    add b                                         ; $50aa: $80
    add b                                         ; $50ab: $80
    add b                                         ; $50ac: $80
    xor $ef                                       ; $50ad: $ee $ef
    ld d, d                                       ; $50af: $52
    ld a, [$fcf2]                                 ; $50b0: $fa $f2 $fc
    ld d, h                                       ; $50b3: $54
    cp $0c                                        ; $50b4: $fe $0c
    dec e                                         ; $50b6: $1d
    ld h, [hl]                                    ; $50b7: $66
    rra                                           ; $50b8: $1f
    db $10                                        ; $50b9: $10
    ld de, $2168                                  ; $50ba: $11 $68 $21
    rlca                                          ; $50bd: $07
    ld b, $05                                     ; $50be: $06 $05
    dec b                                         ; $50c0: $05
    dec b                                         ; $50c1: $05
    ld b, $06                                     ; $50c2: $06 $06
    ld b, $05                                     ; $50c4: $06 $05
    ld b, $05                                     ; $50c6: $06 $05
    ld b, $06                                     ; $50c8: $06 $06
    ld b, $05                                     ; $50ca: $06 $05
    ld b, $ee                                     ; $50cc: $06 $ee
    rst $28                                       ; $50ce: $ef
    db $fd                                        ; $50cf: $fd
    ld a, [$fcf2]                                 ; $50d0: $fa $f2 $fc
    adc l                                         ; $50d3: $8d
    cp $0c                                        ; $50d4: $fe $0c
    dec e                                         ; $50d6: $1d
    ld sp, hl                                     ; $50d7: $f9
    rra                                           ; $50d8: $1f
    db $10                                        ; $50d9: $10
    ld de, $21fd                                  ; $50da: $11 $fd $21
    ld b, $06                                     ; $50dd: $06 $06
    ld [bc], a                                    ; $50df: $02
    dec b                                         ; $50e0: $05
    dec b                                         ; $50e1: $05

jr_084_50e2:
    ld b, $0e                                     ; $50e2: $06 $0e
    dec b                                         ; $50e4: $05
    ld b, $06                                     ; $50e5: $06 $06
    ld [bc], a                                    ; $50e7: $02
    ld b, $05                                     ; $50e8: $06 $05
    ld b, $02                                     ; $50ea: $06 $02
    dec b                                         ; $50ec: $05
    xor $ef                                       ; $50ed: $ee $ef
    add hl, hl                                    ; $50ef: $29
    ld a, [hl+]                                   ; $50f0: $2a
    ld a, [c]                                     ; $50f1: $f2
    db $fc                                        ; $50f2: $fc
    dec hl                                        ; $50f3: $2b
    inc l                                         ; $50f4: $2c
    inc c                                         ; $50f5: $0c
    dec e                                         ; $50f6: $1d
    dec l                                         ; $50f7: $2d
    ld l, $10                                     ; $50f8: $2e $10
    ld de, $2168                                  ; $50fa: $11 $68 $21
    ld b, $05                                     ; $50fd: $06 $05
    inc bc                                        ; $50ff: $03
    inc bc                                        ; $5100: $03
    dec b                                         ; $5101: $05
    ld b, $03                                     ; $5102: $06 $03
    inc bc                                        ; $5104: $03
    ld b, $06                                     ; $5105: $06 $06
    inc bc                                        ; $5107: $03
    inc bc                                        ; $5108: $03
    dec b                                         ; $5109: $05
    dec b                                         ; $510a: $05
    rlca                                          ; $510b: $07
    rlca                                          ; $510c: $07
    inc d                                         ; $510d: $14
    inc hl                                        ; $510e: $23
    ld l, d                                       ; $510f: $6a
    inc h                                         ; $5110: $24
    jr jr_084_5139                                ; $5111: $18 $26

    cpl                                           ; $5113: $2f
    jr z, jr_084_514e                             ; $5114: $28 $38

    add hl, sp                                    ; $5116: $39
    ld l, e                                       ; $5117: $6b
    ld b, l                                       ; $5118: $45
    inc a                                         ; $5119: $3c
    dec a                                         ; $511a: $3d
    ld a, $3f                                     ; $511b: $3e $3f
    rlca                                          ; $511d: $07
    dec b                                         ; $511e: $05
    dec b                                         ; $511f: $05
    dec b                                         ; $5120: $05
    rlca                                          ; $5121: $07
    ld b, $06                                     ; $5122: $06 $06
    ld b, $07                                     ; $5124: $06 $07
    ld b, $05                                     ; $5126: $06 $05
    ld b, $07                                     ; $5128: $06 $07
    ld b, $05                                     ; $512a: $06 $05
    dec b                                         ; $512c: $05
    inc d                                         ; $512d: $14
    inc hl                                        ; $512e: $23
    adc [hl]                                      ; $512f: $8e
    inc h                                         ; $5130: $24
    jr jr_084_5159                                ; $5131: $18 $26

    adc a                                         ; $5133: $8f
    sub b                                         ; $5134: $90
    jr c, jr_084_5170                             ; $5135: $38 $39

    sub c                                         ; $5137: $91
    ld b, l                                       ; $5138: $45

jr_084_5139:
    inc a                                         ; $5139: $3c
    dec a                                         ; $513a: $3d
    ld a, $3f                                     ; $513b: $3e $3f
    ld b, $06                                     ; $513d: $06 $06
    ld c, $06                                     ; $513f: $0e $06
    ld b, $05                                     ; $5141: $06 $05
    ld a, [bc]                                    ; $5143: $0a
    ld c, $06                                     ; $5144: $0e $06
    ld b, $0a                                     ; $5146: $06 $0a
    ld b, $06                                     ; $5148: $06 $06
    ld b, $05                                     ; $514a: $06 $05
    dec b                                         ; $514c: $05
    inc d                                         ; $514d: $14

jr_084_514e:
    inc hl                                        ; $514e: $23
    ld l, d                                       ; $514f: $6a
    inc h                                         ; $5150: $24
    sub d                                         ; $5151: $92
    sub e                                         ; $5152: $93
    sub h                                         ; $5153: $94
    sub l                                         ; $5154: $95
    sub c                                         ; $5155: $91
    sub [hl]                                      ; $5156: $96
    sub a                                         ; $5157: $97
    sbc b                                         ; $5158: $98

jr_084_5159:
    inc a                                         ; $5159: $3c
    dec a                                         ; $515a: $3d
    ld a, $3f                                     ; $515b: $3e $3f
    ld b, $05                                     ; $515d: $06 $05
    ld b, $06                                     ; $515f: $06 $06
    ld a, [bc]                                    ; $5161: $0a
    ld c, $0d                                     ; $5162: $0e $0d
    ld c, $0a                                     ; $5164: $0e $0a
    dec c                                         ; $5166: $0d
    ld c, $0e                                     ; $5167: $0e $0e
    ld b, $06                                     ; $5169: $06 $06
    dec b                                         ; $516b: $05
    ld b, $40                                     ; $516c: $06 $40
    ld b, c                                       ; $516e: $41
    ld b, d                                       ; $516f: $42

jr_084_5170:
    ld b, e                                       ; $5170: $43
    nop                                           ; $5171: $00
    nop                                           ; $5172: $00
    nop                                           ; $5173: $00
    nop                                           ; $5174: $00
    ld [bc], a                                    ; $5175: $02
    ld [bc], a                                    ; $5176: $02
    ld [bc], a                                    ; $5177: $02
    ld [bc], a                                    ; $5178: $02
    ld b, a                                       ; $5179: $47
    ld c, b                                       ; $517a: $48
    ld b, a                                       ; $517b: $47
    ld c, b                                       ; $517c: $48
    rlca                                          ; $517d: $07
    dec b                                         ; $517e: $05
    ld b, $06                                     ; $517f: $06 $06
    add d                                         ; $5181: $82
    add d                                         ; $5182: $82
    add d                                         ; $5183: $82
    add d                                         ; $5184: $82
    add d                                         ; $5185: $82
    add d                                         ; $5186: $82
    add d                                         ; $5187: $82
    add d                                         ; $5188: $82
    add e                                         ; $5189: $83
    add e                                         ; $518a: $83
    add h                                         ; $518b: $84
    add e                                         ; $518c: $83
    ld b, b                                       ; $518d: $40
    ld b, c                                       ; $518e: $41
    ld b, d                                       ; $518f: $42
    ld b, e                                       ; $5190: $43
    nop                                           ; $5191: $00
    nop                                           ; $5192: $00
    nop                                           ; $5193: $00
    nop                                           ; $5194: $00
    ld [bc], a                                    ; $5195: $02
    ld [bc], a                                    ; $5196: $02
    ld [bc], a                                    ; $5197: $02
    ld [bc], a                                    ; $5198: $02
    ld c, c                                       ; $5199: $49
    ld c, d                                       ; $519a: $4a
    ld c, a                                       ; $519b: $4f
    inc b                                         ; $519c: $04
    dec b                                         ; $519d: $05
    dec b                                         ; $519e: $05
    dec b                                         ; $519f: $05
    ld b, $82                                     ; $51a0: $06 $82
    add d                                         ; $51a2: $82
    add d                                         ; $51a3: $82
    add d                                         ; $51a4: $82
    add d                                         ; $51a5: $82
    add d                                         ; $51a6: $82
    add d                                         ; $51a7: $82
    add d                                         ; $51a8: $82
    add e                                         ; $51a9: $83
    add h                                         ; $51aa: $84
    add e                                         ; $51ab: $83
    add e                                         ; $51ac: $83
    ld b, b                                       ; $51ad: $40
    ld b, c                                       ; $51ae: $41
    ld b, d                                       ; $51af: $42
    ld b, e                                       ; $51b0: $43
    nop                                           ; $51b1: $00
    nop                                           ; $51b2: $00
    nop                                           ; $51b3: $00
    rst $38                                       ; $51b4: $ff
    ld [bc], a                                    ; $51b5: $02
    ld [bc], a                                    ; $51b6: $02
    ld l, [hl]                                    ; $51b7: $6e
    ld d, l                                       ; $51b8: $55
    ld b, a                                       ; $51b9: $47
    ld c, b                                       ; $51ba: $48
    ld d, l                                       ; $51bb: $55
    ld d, l                                       ; $51bc: $55
    dec b                                         ; $51bd: $05
    dec b                                         ; $51be: $05
    ld b, $06                                     ; $51bf: $06 $06
    add d                                         ; $51c1: $82
    add d                                         ; $51c2: $82
    add d                                         ; $51c3: $82
    and d                                         ; $51c4: $a2
    add d                                         ; $51c5: $82
    add d                                         ; $51c6: $82
    and d                                         ; $51c7: $a2
    and d                                         ; $51c8: $a2
    add h                                         ; $51c9: $84
    add e                                         ; $51ca: $83
    add d                                         ; $51cb: $82
    and d                                         ; $51cc: $a2
    ld c, e                                       ; $51cd: $4b
    ld c, h                                       ; $51ce: $4c
    ld c, e                                       ; $51cf: $4b
    ld c, h                                       ; $51d0: $4c
    ld d, [hl]                                    ; $51d1: $56
    ld d, a                                       ; $51d2: $57
    ld d, [hl]                                    ; $51d3: $56
    ld d, a                                       ; $51d4: $57
    ld e, d                                       ; $51d5: $5a
    ld e, e                                       ; $51d6: $5b
    ld e, d                                       ; $51d7: $5a
    ld e, e                                       ; $51d8: $5b
    ld e, [hl]                                    ; $51d9: $5e
    ld e, a                                       ; $51da: $5f
    ld e, [hl]                                    ; $51db: $5e
    ld e, a                                       ; $51dc: $5f
    inc b                                         ; $51dd: $04
    inc b                                         ; $51de: $04
    inc bc                                        ; $51df: $03
    inc bc                                        ; $51e0: $03
    inc bc                                        ; $51e1: $03
    inc bc                                        ; $51e2: $03
    inc b                                         ; $51e3: $04
    inc b                                         ; $51e4: $04
    inc bc                                        ; $51e5: $03
    inc bc                                        ; $51e6: $03
    inc bc                                        ; $51e7: $03
    inc bc                                        ; $51e8: $03
    inc b                                         ; $51e9: $04
    inc bc                                        ; $51ea: $03
    inc bc                                        ; $51eb: $03
    inc b                                         ; $51ec: $04
    ld c, l                                       ; $51ed: $4d
    ld c, [hl]                                    ; $51ee: $4e
    ld d, b                                       ; $51ef: $50
    ld b, $58                                     ; $51f0: $06 $58
    ld e, c                                       ; $51f2: $59
    ld h, d                                       ; $51f3: $62
    ld a, [hl+]                                   ; $51f4: $2a
    ld e, h                                       ; $51f5: $5c
    ld e, l                                       ; $51f6: $5d
    ld h, e                                       ; $51f7: $63
    inc l                                         ; $51f8: $2c
    ld h, b                                       ; $51f9: $60
    ld h, c                                       ; $51fa: $61
    ld h, h                                       ; $51fb: $64
    ld l, $03                                     ; $51fc: $2e $03
    inc bc                                        ; $51fe: $03
    inc b                                         ; $51ff: $04
    inc b                                         ; $5200: $04
    inc b                                         ; $5201: $04
    inc bc                                        ; $5202: $03
    inc bc                                        ; $5203: $03
    inc b                                         ; $5204: $04
    inc bc                                        ; $5205: $03
    inc bc                                        ; $5206: $03
    inc b                                         ; $5207: $04
    inc bc                                        ; $5208: $03
    inc bc                                        ; $5209: $03
    inc b                                         ; $520a: $04
    inc bc                                        ; $520b: $03
    inc bc                                        ; $520c: $03
    ld c, e                                       ; $520d: $4b
    ld c, h                                       ; $520e: $4c
    ld d, l                                       ; $520f: $55
    ld d, l                                       ; $5210: $55
    ld d, [hl]                                    ; $5211: $56
    ld d, a                                       ; $5212: $57
    ld d, l                                       ; $5213: $55
    ld d, l                                       ; $5214: $55
    ld e, d                                       ; $5215: $5a
    ld e, e                                       ; $5216: $5b
    ld bc, $5e01                                  ; $5217: $01 $01 $5e
    ld e, a                                       ; $521a: $5f
    inc bc                                        ; $521b: $03
    ld l, a                                       ; $521c: $6f
    inc bc                                        ; $521d: $03
    inc bc                                        ; $521e: $03
    add d                                         ; $521f: $82
    and d                                         ; $5220: $a2
    inc bc                                        ; $5221: $03
    inc b                                         ; $5222: $04
    add d                                         ; $5223: $82
    and d                                         ; $5224: $a2
    inc b                                         ; $5225: $04
    inc bc                                        ; $5226: $03
    add d                                         ; $5227: $82
    and d                                         ; $5228: $a2
    inc bc                                        ; $5229: $03
    inc b                                         ; $522a: $04
    inc b                                         ; $522b: $04
    inc bc                                        ; $522c: $03
    ld d, [hl]                                    ; $522d: $56
    ld d, a                                       ; $522e: $57
    ld e, b                                       ; $522f: $58
    ld e, c                                       ; $5230: $59
    ld e, d                                       ; $5231: $5a
    ld e, e                                       ; $5232: $5b
    ld e, h                                       ; $5233: $5c
    ld e, l                                       ; $5234: $5d
    ld e, [hl]                                    ; $5235: $5e
    ld e, a                                       ; $5236: $5f
    ld h, b                                       ; $5237: $60
    ld h, c                                       ; $5238: $61
    db $10                                        ; $5239: $10
    ld de, $2168                                  ; $523a: $11 $68 $21
    inc b                                         ; $523d: $04
    inc b                                         ; $523e: $04
    inc b                                         ; $523f: $04
    inc bc                                        ; $5240: $03
    inc b                                         ; $5241: $04
    inc b                                         ; $5242: $04
    inc bc                                        ; $5243: $03
    inc bc                                        ; $5244: $03
    inc b                                         ; $5245: $04
    inc b                                         ; $5246: $04
    inc bc                                        ; $5247: $03
    inc bc                                        ; $5248: $03
    rlca                                          ; $5249: $07
    rlca                                          ; $524a: $07
    rlca                                          ; $524b: $07
    rlca                                          ; $524c: $07
    ld h, d                                       ; $524d: $62
    ld a, [hl+]                                   ; $524e: $2a
    ld d, [hl]                                    ; $524f: $56
    ld d, a                                       ; $5250: $57
    ld h, e                                       ; $5251: $63
    inc l                                         ; $5252: $2c
    ld e, d                                       ; $5253: $5a
    ld e, e                                       ; $5254: $5b
    ld h, h                                       ; $5255: $64
    ld l, $5e                                     ; $5256: $2e $5e
    ld e, a                                       ; $5258: $5f
    db $10                                        ; $5259: $10
    ld de, $2168                                  ; $525a: $11 $68 $21
    inc b                                         ; $525d: $04
    inc b                                         ; $525e: $04
    inc b                                         ; $525f: $04
    inc bc                                        ; $5260: $03
    inc b                                         ; $5261: $04
    inc b                                         ; $5262: $04
    inc b                                         ; $5263: $04
    inc bc                                        ; $5264: $03
    inc b                                         ; $5265: $04
    inc b                                         ; $5266: $04
    inc b                                         ; $5267: $04
    inc bc                                        ; $5268: $03
    rlca                                          ; $5269: $07
    rlca                                          ; $526a: $07
    rlca                                          ; $526b: $07
    rlca                                          ; $526c: $07
    ld e, b                                       ; $526d: $58
    ld h, l                                       ; $526e: $65
    ld d, d                                       ; $526f: $52
    ld a, [$675c]                                 ; $5270: $fa $5c $67
    ld d, h                                       ; $5273: $54
    cp $60                                        ; $5274: $fe $60
    ld l, c                                       ; $5276: $69
    ld h, [hl]                                    ; $5277: $66
    rra                                           ; $5278: $1f
    db $10                                        ; $5279: $10
    ld de, $2168                                  ; $527a: $11 $68 $21
    inc bc                                        ; $527d: $03
    inc b                                         ; $527e: $04
    rlca                                          ; $527f: $07
    ld b, $03                                     ; $5280: $06 $03
    inc bc                                        ; $5282: $03
    rlca                                          ; $5283: $07
    dec b                                         ; $5284: $05
    inc bc                                        ; $5285: $03
    inc bc                                        ; $5286: $03
    rlca                                          ; $5287: $07
    ld b, $07                                     ; $5288: $06 $07
    rlca                                          ; $528a: $07
    rlca                                          ; $528b: $07
    ld b, $ee                                     ; $528c: $06 $ee
    sbc c                                         ; $528e: $99
    ld h, l                                       ; $528f: $65
    ld a, [$9af2]                                 ; $5290: $fa $f2 $9a
    ld h, a                                       ; $5293: $67
    cp $0c                                        ; $5294: $fe $0c
    sbc e                                         ; $5296: $9b
    ld l, c                                       ; $5297: $69
    rra                                           ; $5298: $1f
    db $10                                        ; $5299: $10
    ld de, $2168                                  ; $529a: $11 $68 $21
    ld b, $0c                                     ; $529d: $06 $0c
    inc b                                         ; $529f: $04
    rlca                                          ; $52a0: $07
    ld b, $0c                                     ; $52a1: $06 $0c
    inc b                                         ; $52a3: $04
    rlca                                          ; $52a4: $07
    dec b                                         ; $52a5: $05
    inc c                                         ; $52a6: $0c

jr_084_52a7:
    inc b                                         ; $52a7: $04
    rlca                                          ; $52a8: $07
    dec b                                         ; $52a9: $05
    rlca                                          ; $52aa: $07
    rlca                                          ; $52ab: $07
    rlca                                          ; $52ac: $07
    inc d                                         ; $52ad: $14
    inc hl                                        ; $52ae: $23
    ld l, d                                       ; $52af: $6a
    inc h                                         ; $52b0: $24
    sub d                                         ; $52b1: $92
    sub e                                         ; $52b2: $93
    sub h                                         ; $52b3: $94
    sub l                                         ; $52b4: $95
    sub c                                         ; $52b5: $91
    sub [hl]                                      ; $52b6: $96
    sub a                                         ; $52b7: $97
    sbc b                                         ; $52b8: $98
    inc a                                         ; $52b9: $3c
    dec a                                         ; $52ba: $3d
    ld a, $3f                                     ; $52bb: $3e $3f
    dec b                                         ; $52bd: $05
    dec b                                         ; $52be: $05
    dec b                                         ; $52bf: $05
    dec b                                         ; $52c0: $05
    ld a, [bc]                                    ; $52c1: $0a
    ld c, $0d                                     ; $52c2: $0e $0d
    ld c, $0a                                     ; $52c4: $0e $0a
    ld c, $0d                                     ; $52c6: $0e $0d
    ld c, $06                                     ; $52c8: $0e $06
    ld b, $06                                     ; $52ca: $06 $06
    dec b                                         ; $52cc: $05
    inc d                                         ; $52cd: $14
    inc hl                                        ; $52ce: $23
    ld l, d                                       ; $52cf: $6a
    inc h                                         ; $52d0: $24
    sub d                                         ; $52d1: $92
    sub e                                         ; $52d2: $93
    sub h                                         ; $52d3: $94
    sub l                                         ; $52d4: $95
    sub c                                         ; $52d5: $91
    sub [hl]                                      ; $52d6: $96
    sub a                                         ; $52d7: $97
    sbc b                                         ; $52d8: $98
    inc a                                         ; $52d9: $3c
    dec a                                         ; $52da: $3d
    ld a, $3f                                     ; $52db: $3e $3f
    ld b, $06                                     ; $52dd: $06 $06
    dec b                                         ; $52df: $05
    ld b, $0a                                     ; $52e0: $06 $0a
    ld c, $0e                                     ; $52e2: $0e $0e
    dec c                                         ; $52e4: $0d
    ld a, [bc]                                    ; $52e5: $0a
    ld c, $0d                                     ; $52e6: $0e $0d
    ld c, $06                                     ; $52e8: $0e $06
    ld b, $06                                     ; $52ea: $06 $06
    dec b                                         ; $52ec: $05
    inc d                                         ; $52ed: $14
    inc hl                                        ; $52ee: $23
    ld l, d                                       ; $52ef: $6a
    inc h                                         ; $52f0: $24
    sub d                                         ; $52f1: $92
    sub e                                         ; $52f2: $93
    sub h                                         ; $52f3: $94
    sub l                                         ; $52f4: $95
    sub c                                         ; $52f5: $91
    sub [hl]                                      ; $52f6: $96
    sub a                                         ; $52f7: $97
    sbc b                                         ; $52f8: $98
    inc a                                         ; $52f9: $3c
    dec a                                         ; $52fa: $3d
    ld a, $3f                                     ; $52fb: $3e $3f
    dec b                                         ; $52fd: $05
    dec b                                         ; $52fe: $05
    dec b                                         ; $52ff: $05
    ld b, $0a                                     ; $5300: $06 $0a
    ld c, $0d                                     ; $5302: $0e $0d
    dec c                                         ; $5304: $0d
    ld a, [bc]                                    ; $5305: $0a
    ld c, $0d                                     ; $5306: $0e $0d
    ld c, $05                                     ; $5308: $0e $05
    dec b                                         ; $530a: $05
    dec b                                         ; $530b: $05
    ld b, $14                                     ; $530c: $06 $14
    inc hl                                        ; $530e: $23
    ld l, d                                       ; $530f: $6a
    inc h                                         ; $5310: $24
    sbc h                                         ; $5311: $9c
    ld h, $2f                                     ; $5312: $26 $2f
    jr z, jr_084_52a7                             ; $5314: $28 $91

    add hl, sp                                    ; $5316: $39
    ld l, e                                       ; $5317: $6b
    ld b, l                                       ; $5318: $45
    inc a                                         ; $5319: $3c
    dec a                                         ; $531a: $3d
    ld a, $3f                                     ; $531b: $3e $3f
    ld b, $05                                     ; $531d: $06 $05
    ld b, $05                                     ; $531f: $06 $05
    ld a, [bc]                                    ; $5321: $0a
    ld b, $05                                     ; $5322: $06 $05
    dec b                                         ; $5324: $05
    ld a, [bc]                                    ; $5325: $0a
    ld b, $05                                     ; $5326: $06 $05
    ld b, $06                                     ; $5328: $06 $06
    dec b                                         ; $532a: $05
    ld b, $06                                     ; $532b: $06 $06
    ld b, b                                       ; $532d: $40
    ld b, c                                       ; $532e: $41
    ld b, d                                       ; $532f: $42
    ld b, e                                       ; $5330: $43
    ld [$eceb], a                                 ; $5331: $ea $eb $ec
    rst $38                                       ; $5334: $ff
    xor $ef                                       ; $5335: $ee $ef
    ld d, d                                       ; $5337: $52
    ld d, l                                       ; $5338: $55
    ld a, [c]                                     ; $5339: $f2
    db $fc                                        ; $533a: $fc
    ld d, h                                       ; $533b: $54
    ld d, l                                       ; $533c: $55
    ld b, $05                                     ; $533d: $06 $05
    ld b, $06                                     ; $533f: $06 $06
    dec b                                         ; $5341: $05
    dec b                                         ; $5342: $05
    dec b                                         ; $5343: $05
    add d                                         ; $5344: $82
    ld b, $06                                     ; $5345: $06 $06
    ld b, $82                                     ; $5347: $06 $82
    ld b, $05                                     ; $5349: $06 $05
    ld b, $82                                     ; $534b: $06 $82
    ld b, b                                       ; $534d: $40
    ld b, c                                       ; $534e: $41
    ld b, d                                       ; $534f: $42
    ld b, e                                       ; $5350: $43
    nop                                           ; $5351: $00
    nop                                           ; $5352: $00
    nop                                           ; $5353: $00
    nop                                           ; $5354: $00
    ld l, [hl]                                    ; $5355: $6e
    ld [bc], a                                    ; $5356: $02
    ld [bc], a                                    ; $5357: $02
    ld [bc], a                                    ; $5358: $02
    ld d, l                                       ; $5359: $55
    inc b                                         ; $535a: $04
    ld b, a                                       ; $535b: $47
    ld c, b                                       ; $535c: $48
    ld b, $06                                     ; $535d: $06 $06
    dec b                                         ; $535f: $05
    dec b                                         ; $5360: $05
    add d                                         ; $5361: $82
    add d                                         ; $5362: $82
    add d                                         ; $5363: $82
    add d                                         ; $5364: $82
    add d                                         ; $5365: $82
    add d                                         ; $5366: $82
    add d                                         ; $5367: $82
    add d                                         ; $5368: $82
    and d                                         ; $5369: $a2
    add e                                         ; $536a: $83
    add h                                         ; $536b: $84
    add e                                         ; $536c: $83
    ld b, b                                       ; $536d: $40
    ld b, c                                       ; $536e: $41
    ld b, d                                       ; $536f: $42
    ld b, e                                       ; $5370: $43
    nop                                           ; $5371: $00
    nop                                           ; $5372: $00
    nop                                           ; $5373: $00
    rst $38                                       ; $5374: $ff
    ld [bc], a                                    ; $5375: $02
    ld [bc], a                                    ; $5376: $02
    ld l, [hl]                                    ; $5377: $6e
    ld d, l                                       ; $5378: $55
    ld c, c                                       ; $5379: $49
    ld c, d                                       ; $537a: $4a
    ld d, l                                       ; $537b: $55
    ld d, l                                       ; $537c: $55
    dec b                                         ; $537d: $05
    ld b, $06                                     ; $537e: $06 $06
    ld b, $82                                     ; $5380: $06 $82
    add d                                         ; $5382: $82
    add d                                         ; $5383: $82
    and d                                         ; $5384: $a2
    add d                                         ; $5385: $82
    add d                                         ; $5386: $82
    and d                                         ; $5387: $a2
    and d                                         ; $5388: $a2
    add e                                         ; $5389: $83
    add h                                         ; $538a: $84
    add d                                         ; $538b: $82
    and d                                         ; $538c: $a2
    ld b, b                                       ; $538d: $40
    ld b, c                                       ; $538e: $41
    ld b, d                                       ; $538f: $42
    ld b, e                                       ; $5390: $43
    ld [$eceb], a                                 ; $5391: $ea $eb $ec
    db $ed                                        ; $5394: $ed
    xor $ef                                       ; $5395: $ee $ef
    ld d, d                                       ; $5397: $52
    ld a, [$fcf2]                                 ; $5398: $fa $f2 $fc
    ld d, h                                       ; $539b: $54
    sbc l                                         ; $539c: $9d
    dec b                                         ; $539d: $05
    ld b, $06                                     ; $539e: $06 $06
    dec b                                         ; $53a0: $05
    ld b, $06                                     ; $53a1: $06 $06
    dec b                                         ; $53a3: $05
    dec b                                         ; $53a4: $05
    ld b, $05                                     ; $53a5: $06 $05
    ld b, $06                                     ; $53a7: $06 $06
    ld b, $06                                     ; $53a9: $06 $06
    ld b, $09                                     ; $53ab: $06 $09
    inc c                                         ; $53ad: $0c
    dec e                                         ; $53ae: $1d
    ld h, [hl]                                    ; $53af: $66
    ld d, l                                       ; $53b0: $55
    db $10                                        ; $53b1: $10
    ld de, $5568                                  ; $53b2: $11 $68 $55
    inc d                                         ; $53b5: $14
    inc hl                                        ; $53b6: $23
    ld l, d                                       ; $53b7: $6a
    ld d, l                                       ; $53b8: $55
    jr jr_084_53e1                                ; $53b9: $18 $26

    cpl                                           ; $53bb: $2f
    ld d, l                                       ; $53bc: $55
    rlca                                          ; $53bd: $07
    ld b, $05                                     ; $53be: $06 $05
    add d                                         ; $53c0: $82
    rlca                                          ; $53c1: $07
    dec b                                         ; $53c2: $05
    dec b                                         ; $53c3: $05
    add d                                         ; $53c4: $82
    rlca                                          ; $53c5: $07
    ld b, $05                                     ; $53c6: $06 $05
    add d                                         ; $53c8: $82
    rlca                                          ; $53c9: $07
    dec b                                         ; $53ca: $05
    ld b, $82                                     ; $53cb: $06 $82
    ld d, l                                       ; $53cd: $55
    ld b, $4b                                     ; $53ce: $06 $4b
    ld c, h                                       ; $53d0: $4c
    ld d, l                                       ; $53d1: $55
    ld a, [hl+]                                   ; $53d2: $2a
    ld d, [hl]                                    ; $53d3: $56
    ld d, a                                       ; $53d4: $57
    ld d, l                                       ; $53d5: $55
    inc l                                         ; $53d6: $2c
    ld e, d                                       ; $53d7: $5a
    ld e, e                                       ; $53d8: $5b
    ld d, l                                       ; $53d9: $55
    ld l, $5e                                     ; $53da: $2e $5e
    ld e, a                                       ; $53dc: $5f
    and d                                         ; $53dd: $a2
    inc b                                         ; $53de: $04
    inc bc                                        ; $53df: $03
    inc bc                                        ; $53e0: $03

jr_084_53e1:
    and d                                         ; $53e1: $a2
    inc bc                                        ; $53e2: $03
    inc b                                         ; $53e3: $04
    inc bc                                        ; $53e4: $03
    and d                                         ; $53e5: $a2
    inc b                                         ; $53e6: $04
    inc bc                                        ; $53e7: $03
    inc bc                                        ; $53e8: $03
    and d                                         ; $53e9: $a2
    inc b                                         ; $53ea: $04
    inc b                                         ; $53eb: $04
    inc bc                                        ; $53ec: $03
    ld c, l                                       ; $53ed: $4d
    ld c, [hl]                                    ; $53ee: $4e
    ld d, l                                       ; $53ef: $55
    ld d, l                                       ; $53f0: $55
    ld e, b                                       ; $53f1: $58
    ld e, c                                       ; $53f2: $59
    ld d, l                                       ; $53f3: $55
    ld d, l                                       ; $53f4: $55
    ld e, h                                       ; $53f5: $5c
    ld e, l                                       ; $53f6: $5d
    ld d, l                                       ; $53f7: $55
    ld d, l                                       ; $53f8: $55
    ld h, b                                       ; $53f9: $60
    ld h, c                                       ; $53fa: $61
    ld d, l                                       ; $53fb: $55
    ld d, l                                       ; $53fc: $55
    inc b                                         ; $53fd: $04
    inc bc                                        ; $53fe: $03
    add d                                         ; $53ff: $82
    and d                                         ; $5400: $a2
    inc bc                                        ; $5401: $03
    inc bc                                        ; $5402: $03
    add d                                         ; $5403: $82
    and d                                         ; $5404: $a2
    inc bc                                        ; $5405: $03
    inc b                                         ; $5406: $04
    add d                                         ; $5407: $82
    and d                                         ; $5408: $a2
    inc b                                         ; $5409: $04
    inc bc                                        ; $540a: $03
    add d                                         ; $540b: $82
    and d                                         ; $540c: $a2
    inc c                                         ; $540d: $0c
    dec e                                         ; $540e: $1d
    ld h, [hl]                                    ; $540f: $66
    sbc [hl]                                      ; $5410: $9e
    db $10                                        ; $5411: $10
    ld de, $9f68                                  ; $5412: $11 $68 $9f
    inc d                                         ; $5415: $14
    inc hl                                        ; $5416: $23
    ld l, d                                       ; $5417: $6a
    and b                                         ; $5418: $a0
    jr jr_084_5441                                ; $5419: $18 $26

    cpl                                           ; $541b: $2f
    and c                                         ; $541c: $a1
    rlca                                          ; $541d: $07
    ld b, $05                                     ; $541e: $06 $05
    add hl, bc                                    ; $5420: $09
    rlca                                          ; $5421: $07
    ld b, $06                                     ; $5422: $06 $06
    add hl, bc                                    ; $5424: $09
    rlca                                          ; $5425: $07
    dec b                                         ; $5426: $05
    dec b                                         ; $5427: $05
    add hl, bc                                    ; $5428: $09
    rlca                                          ; $5429: $07
    dec b                                         ; $542a: $05
    ld b, $09                                     ; $542b: $06 $09
    xor $ef                                       ; $542d: $ee $ef
    add hl, hl                                    ; $542f: $29
    and d                                         ; $5430: $a2
    ld a, [c]                                     ; $5431: $f2
    db $fc                                        ; $5432: $fc
    dec hl                                        ; $5433: $2b
    and e                                         ; $5434: $a3
    inc c                                         ; $5435: $0c
    dec e                                         ; $5436: $1d
    dec l                                         ; $5437: $2d
    and h                                         ; $5438: $a4
    db $10                                        ; $5439: $10
    ld de, $2168                                  ; $543a: $11 $68 $21
    ld b, $06                                     ; $543d: $06 $06
    inc bc                                        ; $543f: $03
    dec bc                                        ; $5440: $0b

jr_084_5441:
    dec b                                         ; $5441: $05
    dec b                                         ; $5442: $05
    inc bc                                        ; $5443: $03
    dec bc                                        ; $5444: $0b
    ld b, $05                                     ; $5445: $06 $05
    inc bc                                        ; $5447: $03
    dec bc                                        ; $5448: $0b
    ld b, $06                                     ; $5449: $06 $06
    rlca                                          ; $544b: $07
    rlca                                          ; $544c: $07
    xor $ef                                       ; $544d: $ee $ef
    ld d, d                                       ; $544f: $52
    ld a, [$fcf2]                                 ; $5450: $fa $f2 $fc
    ld d, h                                       ; $5453: $54
    cp $0c                                        ; $5454: $fe $0c
    dec e                                         ; $5456: $1d
    ld h, [hl]                                    ; $5457: $66
    rra                                           ; $5458: $1f
    db $10                                        ; $5459: $10
    ld de, $2168                                  ; $545a: $11 $68 $21
    rlca                                          ; $545d: $07
    ld b, $06                                     ; $545e: $06 $06
    dec b                                         ; $5460: $05
    rlca                                          ; $5461: $07
    ld b, $05                                     ; $5462: $06 $05
    ld b, $07                                     ; $5464: $06 $07
    ld b, $06                                     ; $5466: $06 $06
    dec b                                         ; $5468: $05
    rlca                                          ; $5469: $07
    dec b                                         ; $546a: $05
    ld b, $05                                     ; $546b: $06 $05
    xor $ef                                       ; $546d: $ee $ef
    ld d, d                                       ; $546f: $52
    ld a, [$fcf2]                                 ; $5470: $fa $f2 $fc
    ld d, h                                       ; $5473: $54
    cp $0c                                        ; $5474: $fe $0c
    dec e                                         ; $5476: $1d
    ld h, [hl]                                    ; $5477: $66
    rra                                           ; $5478: $1f
    db $10                                        ; $5479: $10
    ld de, $2168                                  ; $547a: $11 $68 $21
    ld b, $05                                     ; $547d: $06 $05
    ld b, $06                                     ; $547f: $06 $06
    dec b                                         ; $5481: $05
    dec b                                         ; $5482: $05
    dec b                                         ; $5483: $05
    ld b, $06                                     ; $5484: $06 $06
    ld b, $06                                     ; $5486: $06 $06
    dec b                                         ; $5488: $05
    dec b                                         ; $5489: $05
    ld b, $05                                     ; $548a: $06 $05
    dec b                                         ; $548c: $05
    sbc c                                         ; $548d: $99
    ld h, l                                       ; $548e: $65
    ld d, d                                       ; $548f: $52
    ld a, [$679a]                                 ; $5490: $fa $9a $67
    ld d, h                                       ; $5493: $54
    cp $9b                                        ; $5494: $fe $9b
    ld l, c                                       ; $5496: $69
    ld h, [hl]                                    ; $5497: $66
    rra                                           ; $5498: $1f
    db $10                                        ; $5499: $10
    ld de, $2168                                  ; $549a: $11 $68 $21
    inc c                                         ; $549d: $0c
    inc b                                         ; $549e: $04
    rlca                                          ; $549f: $07
    dec b                                         ; $54a0: $05
    inc c                                         ; $54a1: $0c
    inc bc                                        ; $54a2: $03
    rlca                                          ; $54a3: $07
    ld b, $0c                                     ; $54a4: $06 $0c
    inc bc                                        ; $54a6: $03
    rlca                                          ; $54a7: $07
    ld b, $07                                     ; $54a8: $06 $07
    rlca                                          ; $54aa: $07
    rlca                                          ; $54ab: $07
    ld b, $14                                     ; $54ac: $06 $14
    inc hl                                        ; $54ae: $23
    ld l, d                                       ; $54af: $6a
    inc h                                         ; $54b0: $24
    and l                                         ; $54b1: $a5
    sub e                                         ; $54b2: $93
    and [hl]                                      ; $54b3: $a6
    and a                                         ; $54b4: $a7
    sub c                                         ; $54b5: $91
    sub [hl]                                      ; $54b6: $96
    sub a                                         ; $54b7: $97
    sbc b                                         ; $54b8: $98
    inc a                                         ; $54b9: $3c
    dec a                                         ; $54ba: $3d
    ld a, $3f                                     ; $54bb: $3e $3f
    dec b                                         ; $54bd: $05
    ld b, $06                                     ; $54be: $06 $06
    dec b                                         ; $54c0: $05
    ld a, [bc]                                    ; $54c1: $0a
    ld c, $0d                                     ; $54c2: $0e $0d
    ld c, $0a                                     ; $54c4: $0e $0a
    dec c                                         ; $54c6: $0d
    ld c, $0e                                     ; $54c7: $0e $0e
    ld b, $06                                     ; $54c9: $06 $06
    dec b                                         ; $54cb: $05
    ld b, $14                                     ; $54cc: $06 $14
    inc hl                                        ; $54ce: $23
    ld l, d                                       ; $54cf: $6a
    inc h                                         ; $54d0: $24
    sub d                                         ; $54d1: $92
    sub e                                         ; $54d2: $93
    and [hl]                                      ; $54d3: $a6
    and a                                         ; $54d4: $a7
    sub c                                         ; $54d5: $91
    sub [hl]                                      ; $54d6: $96
    sub a                                         ; $54d7: $97
    sbc b                                         ; $54d8: $98
    inc a                                         ; $54d9: $3c
    dec a                                         ; $54da: $3d
    ld a, $3f                                     ; $54db: $3e $3f
    ld b, $06                                     ; $54dd: $06 $06
    dec b                                         ; $54df: $05
    ld b, $0a                                     ; $54e0: $06 $0a
    dec c                                         ; $54e2: $0d
    ld c, $0e                                     ; $54e3: $0e $0e
    ld a, [bc]                                    ; $54e5: $0a
    ld c, $0d                                     ; $54e6: $0e $0d
    ld c, $05                                     ; $54e8: $0e $05
    ld b, $06                                     ; $54ea: $06 $06
    ld b, $14                                     ; $54ec: $06 $14
    inc hl                                        ; $54ee: $23
    ld l, d                                       ; $54ef: $6a
    inc h                                         ; $54f0: $24
    sub d                                         ; $54f1: $92
    sub e                                         ; $54f2: $93
    and [hl]                                      ; $54f3: $a6
    and a                                         ; $54f4: $a7
    sub c                                         ; $54f5: $91
    sub [hl]                                      ; $54f6: $96
    sub a                                         ; $54f7: $97
    sbc b                                         ; $54f8: $98
    inc a                                         ; $54f9: $3c
    dec a                                         ; $54fa: $3d
    ld a, $3f                                     ; $54fb: $3e $3f
    ld b, $05                                     ; $54fd: $06 $05
    dec b                                         ; $54ff: $05
    ld b, $0a                                     ; $5500: $06 $0a
    ld c, $0d                                     ; $5502: $0e $0d
    dec c                                         ; $5504: $0d
    ld a, [bc]                                    ; $5505: $0a
    ld c, $0d                                     ; $5506: $0e $0d
    ld c, $05                                     ; $5508: $0e $05
    ld b, $05                                     ; $550a: $06 $05
    dec b                                         ; $550c: $05
    inc d                                         ; $550d: $14
    inc hl                                        ; $550e: $23
    ld l, d                                       ; $550f: $6a
    inc h                                         ; $5510: $24
    sub d                                         ; $5511: $92
    sub e                                         ; $5512: $93
    and [hl]                                      ; $5513: $a6
    and a                                         ; $5514: $a7
    sub c                                         ; $5515: $91
    sub [hl]                                      ; $5516: $96
    sub a                                         ; $5517: $97
    sbc b                                         ; $5518: $98
    inc a                                         ; $5519: $3c
    dec a                                         ; $551a: $3d
    ld a, $3f                                     ; $551b: $3e $3f
    ld b, $06                                     ; $551d: $06 $06
    dec b                                         ; $551f: $05
    ld b, $0a                                     ; $5520: $06 $0a
    ld c, $0e                                     ; $5522: $0e $0e
    ld c, $0a                                     ; $5524: $0e $0a
    ld c, $0d                                     ; $5526: $0e $0d
    ld c, $05                                     ; $5528: $0e $05
    ld b, $06                                     ; $552a: $06 $06
    dec b                                         ; $552c: $05
    ld b, b                                       ; $552d: $40
    ld b, c                                       ; $552e: $41
    ld b, d                                       ; $552f: $42
    ld b, e                                       ; $5530: $43
    ld [$eceb], a                                 ; $5531: $ea $eb $ec
    db $ed                                        ; $5534: $ed
    xor $ef                                       ; $5535: $ee $ef
    ld d, d                                       ; $5537: $52
    ld a, [$a9a8]                                 ; $5538: $fa $a8 $a9
    xor d                                         ; $553b: $aa
    cp $06                                        ; $553c: $fe $06
    ld b, $05                                     ; $553e: $06 $05
    ld b, $05                                     ; $5540: $06 $05
    ld b, $05                                     ; $5542: $06 $05
    dec b                                         ; $5544: $05
    ld b, $05                                     ; $5545: $06 $05
    ld b, $05                                     ; $5547: $06 $05
    add hl, bc                                    ; $5549: $09
    add hl, bc                                    ; $554a: $09
    add hl, bc                                    ; $554b: $09
    ld b, $40                                     ; $554c: $06 $40
    ld b, c                                       ; $554e: $41
    ld b, d                                       ; $554f: $42
    ld b, e                                       ; $5550: $43
    ld [$ffeb], a                                 ; $5551: $ea $eb $ff
    nop                                           ; $5554: $00
    xor $ef                                       ; $5555: $ee $ef
    ld d, l                                       ; $5557: $55
    ld l, [hl]                                    ; $5558: $6e
    ld a, [c]                                     ; $5559: $f2
    db $fc                                        ; $555a: $fc
    ld d, l                                       ; $555b: $55
    ld d, l                                       ; $555c: $55
    ld b, $06                                     ; $555d: $06 $06
    dec b                                         ; $555f: $05
    dec b                                         ; $5560: $05
    ld b, $05                                     ; $5561: $06 $05
    add d                                         ; $5563: $82
    add d                                         ; $5564: $82
    ld b, $06                                     ; $5565: $06 $06
    add d                                         ; $5567: $82
    add d                                         ; $5568: $82
    dec b                                         ; $5569: $05
    ld b, $82                                     ; $556a: $06 $82
    and d                                         ; $556c: $a2
    ld b, b                                       ; $556d: $40
    ld b, c                                       ; $556e: $41
    ld b, d                                       ; $556f: $42
    ld b, e                                       ; $5570: $43
    nop                                           ; $5571: $00
    nop                                           ; $5572: $00
    nop                                           ; $5573: $00
    nop                                           ; $5574: $00
    ld [bc], a                                    ; $5575: $02
    ld [bc], a                                    ; $5576: $02
    ld [bc], a                                    ; $5577: $02
    ld [bc], a                                    ; $5578: $02
    ld c, c                                       ; $5579: $49
    ld c, d                                       ; $557a: $4a
    ld c, a                                       ; $557b: $4f
    inc b                                         ; $557c: $04
    ld b, $06                                     ; $557d: $06 $06
    ld b, $06                                     ; $557f: $06 $06
    add d                                         ; $5581: $82
    add d                                         ; $5582: $82
    add d                                         ; $5583: $82
    add d                                         ; $5584: $82
    add d                                         ; $5585: $82
    add d                                         ; $5586: $82
    add d                                         ; $5587: $82
    add d                                         ; $5588: $82
    add e                                         ; $5589: $83
    add h                                         ; $558a: $84
    add e                                         ; $558b: $83
    add h                                         ; $558c: $84
    ld b, b                                       ; $558d: $40
    ld b, c                                       ; $558e: $41
    ld b, d                                       ; $558f: $42
    ld b, e                                       ; $5590: $43
    nop                                           ; $5591: $00
    nop                                           ; $5592: $00
    nop                                           ; $5593: $00
    rst $38                                       ; $5594: $ff
    ld [bc], a                                    ; $5595: $02
    ld [bc], a                                    ; $5596: $02
    ld [bc], a                                    ; $5597: $02
    ld bc, $4847                                  ; $5598: $01 $47 $48
    ld c, c                                       ; $559b: $49
    ld d, c                                       ; $559c: $51
    ld b, $06                                     ; $559d: $06 $06
    dec b                                         ; $559f: $05
    ld b, $82                                     ; $55a0: $06 $82
    add d                                         ; $55a2: $82
    add d                                         ; $55a3: $82
    and d                                         ; $55a4: $a2
    add d                                         ; $55a5: $82
    add d                                         ; $55a6: $82
    add d                                         ; $55a7: $82
    and d                                         ; $55a8: $a2
    add e                                         ; $55a9: $83
    add h                                         ; $55aa: $84
    add e                                         ; $55ab: $83
    add h                                         ; $55ac: $84
    xor e                                         ; $55ad: $ab
    xor h                                         ; $55ae: $ac
    xor l                                         ; $55af: $ad
    rra                                           ; $55b0: $1f
    xor [hl]                                      ; $55b1: $ae
    xor a                                         ; $55b2: $af
    or b                                          ; $55b3: $b0
    ld hl, $b2b1                                  ; $55b4: $21 $b1 $b2
    or e                                          ; $55b7: $b3
    inc h                                         ; $55b8: $24
    or h                                          ; $55b9: $b4
    or l                                          ; $55ba: $b5
    or [hl]                                       ; $55bb: $b6
    jr z, jr_084_55c7                             ; $55bc: $28 $09

    add hl, bc                                    ; $55be: $09
    add hl, bc                                    ; $55bf: $09
    rlca                                          ; $55c0: $07
    add hl, bc                                    ; $55c1: $09
    add hl, bc                                    ; $55c2: $09
    add hl, bc                                    ; $55c3: $09
    rlca                                          ; $55c4: $07
    add hl, bc                                    ; $55c5: $09
    add hl, bc                                    ; $55c6: $09

jr_084_55c7:
    add hl, bc                                    ; $55c7: $09
    rlca                                          ; $55c8: $07
    add hl, bc                                    ; $55c9: $09
    add hl, bc                                    ; $55ca: $09
    add hl, bc                                    ; $55cb: $09
    rlca                                          ; $55cc: $07
    inc c                                         ; $55cd: $0c
    dec e                                         ; $55ce: $1d
    ld d, l                                       ; $55cf: $55
    ld d, l                                       ; $55d0: $55
    db $10                                        ; $55d1: $10
    ld de, $5555                                  ; $55d2: $11 $55 $55
    inc d                                         ; $55d5: $14
    inc hl                                        ; $55d6: $23
    ld d, l                                       ; $55d7: $55
    ld d, l                                       ; $55d8: $55
    jr jr_084_5601                                ; $55d9: $18 $26

    ld d, l                                       ; $55db: $55
    ld d, l                                       ; $55dc: $55

Call_084_55dd:
    dec b                                         ; $55dd: $05
    ld b, $82                                     ; $55de: $06 $82
    and d                                         ; $55e0: $a2
    ld b, $05                                     ; $55e1: $06 $05
    add d                                         ; $55e3: $82
    and d                                         ; $55e4: $a2
    dec b                                         ; $55e5: $05
    ld b, $82                                     ; $55e6: $06 $82
    and d                                         ; $55e8: $a2
    ld b, $05                                     ; $55e9: $06 $05
    add d                                         ; $55eb: $82
    and d                                         ; $55ec: $a2
    ld c, l                                       ; $55ed: $4d
    ld c, [hl]                                    ; $55ee: $4e
    ld d, b                                       ; $55ef: $50
    ld b, $58                                     ; $55f0: $06 $58
    ld e, c                                       ; $55f2: $59
    ld h, d                                       ; $55f3: $62
    ld a, [hl+]                                   ; $55f4: $2a
    ld e, h                                       ; $55f5: $5c
    ld e, l                                       ; $55f6: $5d
    ld h, e                                       ; $55f7: $63
    inc l                                         ; $55f8: $2c
    ld h, b                                       ; $55f9: $60
    ld h, c                                       ; $55fa: $61
    ld h, h                                       ; $55fb: $64
    ld l, $04                                     ; $55fc: $2e $04
    inc b                                         ; $55fe: $04
    inc bc                                        ; $55ff: $03
    inc bc                                        ; $5600: $03

jr_084_5601:
    inc b                                         ; $5601: $04
    inc bc                                        ; $5602: $03
    inc bc                                        ; $5603: $03
    inc b                                         ; $5604: $04
    inc bc                                        ; $5605: $03
    inc b                                         ; $5606: $04

jr_084_5607:
    inc bc                                        ; $5607: $03
    inc b                                         ; $5608: $04
    inc bc                                        ; $5609: $03
    inc bc                                        ; $560a: $03
    inc b                                         ; $560b: $04
    inc bc                                        ; $560c: $03
    ld c, e                                       ; $560d: $4b
    ld c, h                                       ; $560e: $4c
    ld c, l                                       ; $560f: $4d
    ld d, e                                       ; $5610: $53
    ld d, [hl]                                    ; $5611: $56
    ld d, a                                       ; $5612: $57
    ld e, b                                       ; $5613: $58
    ld h, l                                       ; $5614: $65
    ld e, d                                       ; $5615: $5a
    ld e, e                                       ; $5616: $5b
    ld e, h                                       ; $5617: $5c
    ld h, a                                       ; $5618: $67
    ld e, [hl]                                    ; $5619: $5e
    ld e, a                                       ; $561a: $5f
    ld h, b                                       ; $561b: $60
    ld l, c                                       ; $561c: $69
    inc bc                                        ; $561d: $03
    inc b                                         ; $561e: $04
    inc b                                         ; $561f: $04
    inc bc                                        ; $5620: $03
    inc b                                         ; $5621: $04
    inc bc                                        ; $5622: $03
    inc bc                                        ; $5623: $03
    inc b                                         ; $5624: $04
    inc b                                         ; $5625: $04
    inc b                                         ; $5626: $04
    inc bc                                        ; $5627: $03
    inc bc                                        ; $5628: $03
    inc bc                                        ; $5629: $03
    inc b                                         ; $562a: $04
    inc b                                         ; $562b: $04
    inc bc                                        ; $562c: $03
    xor $fd                                       ; $562d: $ee $fd
    ld d, d                                       ; $562f: $52
    ld a, [$b7f2]                                 ; $5630: $fa $f2 $b7
    ld d, h                                       ; $5633: $54
    cp $0c                                        ; $5634: $fe $0c
    ld sp, hl                                     ; $5636: $f9
    ld h, [hl]                                    ; $5637: $66
    rra                                           ; $5638: $1f
    db $10                                        ; $5639: $10
    db $fd                                        ; $563a: $fd
    ld l, b                                       ; $563b: $68
    ld hl, $0206                                  ; $563c: $21 $06 $02
    ld b, $05                                     ; $563f: $06 $05
    dec b                                         ; $5641: $05
    ld c, $06                                     ; $5642: $0e $06
    ld b, $05                                     ; $5644: $06 $05
    ld [bc], a                                    ; $5646: $02
    ld b, $05                                     ; $5647: $06 $05
    ld b, $02                                     ; $5649: $06 $02
    dec b                                         ; $564b: $05
    dec b                                         ; $564c: $05
    xor $ef                                       ; $564d: $ee $ef
    ld d, d                                       ; $564f: $52
    ld a, [$fcf2]                                 ; $5650: $fa $f2 $fc
    ld d, h                                       ; $5653: $54
    cp $0c                                        ; $5654: $fe $0c
    dec e                                         ; $5656: $1d
    ld h, [hl]                                    ; $5657: $66
    rra                                           ; $5658: $1f
    db $10                                        ; $5659: $10
    ld de, $2168                                  ; $565a: $11 $68 $21
    ld b, $05                                     ; $565d: $06 $05
    dec b                                         ; $565f: $05
    rlca                                          ; $5660: $07
    dec b                                         ; $5661: $05
    ld b, $06                                     ; $5662: $06 $06
    rlca                                          ; $5664: $07
    ld b, $06                                     ; $5665: $06 $06
    dec b                                         ; $5667: $05
    rlca                                          ; $5668: $07
    ld b, $05                                     ; $5669: $06 $05
    ld b, $07                                     ; $566b: $06 $07
    inc d                                         ; $566d: $14
    cp b                                          ; $566e: $b8
    ld l, d                                       ; $566f: $6a
    inc h                                         ; $5670: $24
    sub d                                         ; $5671: $92
    sbc h                                         ; $5672: $9c
    cpl                                           ; $5673: $2f
    jr z, jr_084_5607                             ; $5674: $28 $91

    sub c                                         ; $5676: $91
    ld l, e                                       ; $5677: $6b
    ld b, l                                       ; $5678: $45
    inc a                                         ; $5679: $3c
    dec a                                         ; $567a: $3d
    ld a, $3f                                     ; $567b: $3e $3f
    ld b, $0e                                     ; $567d: $06 $0e
    ld b, $05                                     ; $567f: $06 $05
    ld a, [bc]                                    ; $5681: $0a
    ld a, [bc]                                    ; $5682: $0a
    ld b, $06                                     ; $5683: $06 $06
    ld a, [bc]                                    ; $5685: $0a
    ld a, [bc]                                    ; $5686: $0a
    dec b                                         ; $5687: $05
    ld b, $06                                     ; $5688: $06 $06
    ld b, $06                                     ; $568a: $06 $06
    dec b                                         ; $568c: $05
    inc d                                         ; $568d: $14
    inc hl                                        ; $568e: $23
    ld l, d                                       ; $568f: $6a
    inc h                                         ; $5690: $24
    jr @+$28                                      ; $5691: $18 $26

    cpl                                           ; $5693: $2f
    jr z, jr_084_56ce                             ; $5694: $28 $38

    add hl, sp                                    ; $5696: $39
    ld l, e                                       ; $5697: $6b
    ld b, l                                       ; $5698: $45
    inc a                                         ; $5699: $3c
    dec a                                         ; $569a: $3d
    ld a, $3f                                     ; $569b: $3e $3f
    ld b, $06                                     ; $569d: $06 $06
    dec b                                         ; $569f: $05
    rlca                                          ; $56a0: $07
    dec b                                         ; $56a1: $05
    ld b, $06                                     ; $56a2: $06 $06
    rlca                                          ; $56a4: $07
    ld b, $05                                     ; $56a5: $06 $05
    dec b                                         ; $56a7: $05
    rlca                                          ; $56a8: $07
    dec b                                         ; $56a9: $05
    ld b, $06                                     ; $56aa: $06 $06
    rlca                                          ; $56ac: $07
    ld b, b                                       ; $56ad: $40
    ld b, c                                       ; $56ae: $41
    ld b, d                                       ; $56af: $42
    ld b, e                                       ; $56b0: $43
    ld [$eceb], a                                 ; $56b1: $ea $eb $ec
    db $ed                                        ; $56b4: $ed
    xor $ef                                       ; $56b5: $ee $ef
    ld d, d                                       ; $56b7: $52
    ld a, [$fcf2]                                 ; $56b8: $fa $f2 $fc
    ld d, h                                       ; $56bb: $54
    cp $06                                        ; $56bc: $fe $06
    dec b                                         ; $56be: $05
    ld b, $06                                     ; $56bf: $06 $06
    ld b, $05                                     ; $56c1: $06 $05
    dec b                                         ; $56c3: $05
    ld b, $05                                     ; $56c4: $06 $05
    ld b, $06                                     ; $56c6: $06 $06
    ld b, $06                                     ; $56c8: $06 $06
    dec b                                         ; $56ca: $05
    dec b                                         ; $56cb: $05
    ld b, $40                                     ; $56cc: $06 $40

jr_084_56ce:
    ld b, c                                       ; $56ce: $41
    ld b, d                                       ; $56cf: $42
    ld b, e                                       ; $56d0: $43
    ld [$eceb], a                                 ; $56d1: $ea $eb $ec
    db $ed                                        ; $56d4: $ed
    xor $ef                                       ; $56d5: $ee $ef
    ld d, d                                       ; $56d7: $52
    ld a, [$fcf2]                                 ; $56d8: $fa $f2 $fc
    ld d, h                                       ; $56db: $54
    cp $05                                        ; $56dc: $fe $05
    ld b, $05                                     ; $56de: $06 $05
    rlca                                          ; $56e0: $07
    ld b, $05                                     ; $56e1: $06 $05
    dec b                                         ; $56e3: $05
    rlca                                          ; $56e4: $07
    dec b                                         ; $56e5: $05
    ld b, $06                                     ; $56e6: $06 $06
    rlca                                          ; $56e8: $07
    ld b, $05                                     ; $56e9: $06 $05
    dec b                                         ; $56eb: $05
    rlca                                          ; $56ec: $07
    inc c                                         ; $56ed: $0c
    dec e                                         ; $56ee: $1d
    ld h, [hl]                                    ; $56ef: $66
    rra                                           ; $56f0: $1f
    db $10                                        ; $56f1: $10
    ld de, $2168                                  ; $56f2: $11 $68 $21
    inc d                                         ; $56f5: $14
    inc hl                                        ; $56f6: $23
    ld l, d                                       ; $56f7: $6a
    rst $38                                       ; $56f8: $ff
    jr jr_084_5721                                ; $56f9: $18 $26

    cpl                                           ; $56fb: $2f
    ld d, l                                       ; $56fc: $55
    rlca                                          ; $56fd: $07
    dec b                                         ; $56fe: $05
    ld b, $06                                     ; $56ff: $06 $06
    rlca                                          ; $5701: $07
    ld b, $06                                     ; $5702: $06 $06
    dec b                                         ; $5704: $05
    rlca                                          ; $5705: $07
    ld b, $06                                     ; $5706: $06 $06
    add d                                         ; $5708: $82
    rlca                                          ; $5709: $07
    ld b, $05                                     ; $570a: $06 $05
    add d                                         ; $570c: $82
    inc c                                         ; $570d: $0c
    dec e                                         ; $570e: $1d
    ld h, [hl]                                    ; $570f: $66
    rra                                           ; $5710: $1f
    db $10                                        ; $5711: $10
    ld de, $2168                                  ; $5712: $11 $68 $21
    rst $38                                       ; $5715: $ff
    inc hl                                        ; $5716: $23
    ld l, d                                       ; $5717: $6a
    inc h                                         ; $5718: $24
    ld d, l                                       ; $5719: $55
    ld h, $2f                                     ; $571a: $26 $2f
    jr z, jr_084_5723                             ; $571c: $28 $05

    ld b, $06                                     ; $571e: $06 $06
    rlca                                          ; $5720: $07

jr_084_5721:
    dec b                                         ; $5721: $05
    dec b                                         ; $5722: $05

jr_084_5723:
    ld b, $07                                     ; $5723: $06 $07
    and d                                         ; $5725: $a2
    ld b, $05                                     ; $5726: $06 $05
    rlca                                          ; $5728: $07
    and d                                         ; $5729: $a2
    dec b                                         ; $572a: $05
    ld b, $07                                     ; $572b: $06 $07
    jr c, jr_084_5768                             ; $572d: $38 $39

    ld l, e                                       ; $572f: $6b
    ld b, l                                       ; $5730: $45
    sbc l                                         ; $5731: $9d
    xor b                                         ; $5732: $a8
    xor c                                         ; $5733: $a9
    xor d                                         ; $5734: $aa
    sbc [hl]                                      ; $5735: $9e
    xor e                                         ; $5736: $ab
    xor h                                         ; $5737: $ac
    xor l                                         ; $5738: $ad
    sbc a                                         ; $5739: $9f
    xor [hl]                                      ; $573a: $ae
    xor a                                         ; $573b: $af
    or b                                          ; $573c: $b0
    rlca                                          ; $573d: $07
    rlca                                          ; $573e: $07
    rlca                                          ; $573f: $07
    rlca                                          ; $5740: $07
    add hl, bc                                    ; $5741: $09
    add hl, bc                                    ; $5742: $09
    add hl, bc                                    ; $5743: $09
    add hl, bc                                    ; $5744: $09
    add hl, bc                                    ; $5745: $09
    add hl, bc                                    ; $5746: $09
    add hl, bc                                    ; $5747: $09
    add hl, bc                                    ; $5748: $09
    add hl, bc                                    ; $5749: $09
    add hl, bc                                    ; $574a: $09
    add hl, bc                                    ; $574b: $09
    add hl, bc                                    ; $574c: $09
    jr c, jr_084_5788                             ; $574d: $38 $39

    ld l, e                                       ; $574f: $6b
    ld b, l                                       ; $5750: $45
    inc a                                         ; $5751: $3c
    dec a                                         ; $5752: $3d
    ld a, $3f                                     ; $5753: $3e $3f
    ld b, b                                       ; $5755: $40
    ld b, c                                       ; $5756: $41
    ld b, d                                       ; $5757: $42
    ld b, e                                       ; $5758: $43
    ld [$eceb], a                                 ; $5759: $ea $eb $ec
    db $ed                                        ; $575c: $ed
    rlca                                          ; $575d: $07
    rlca                                          ; $575e: $07
    rlca                                          ; $575f: $07
    rlca                                          ; $5760: $07
    ld b, $05                                     ; $5761: $06 $05
    ld b, $05                                     ; $5763: $06 $05
    rlca                                          ; $5765: $07
    ld b, $05                                     ; $5766: $06 $05

jr_084_5768:
    ld b, $07                                     ; $5768: $06 $07
    ld b, $06                                     ; $576a: $06 $06
    dec b                                         ; $576c: $05
    jr c, jr_084_57a8                             ; $576d: $38 $39

    dec b                                         ; $576f: $05
    ld [hl], b                                    ; $5770: $70
    inc a                                         ; $5771: $3c
    dec a                                         ; $5772: $3d
    add hl, hl                                    ; $5773: $29
    and d                                         ; $5774: $a2
    ld b, b                                       ; $5775: $40
    ld b, c                                       ; $5776: $41
    dec hl                                        ; $5777: $2b
    and e                                         ; $5778: $a3
    ld [$2deb], a                                 ; $5779: $ea $eb $2d
    and h                                         ; $577c: $a4
    rlca                                          ; $577d: $07
    rlca                                          ; $577e: $07
    inc bc                                        ; $577f: $03
    inc b                                         ; $5780: $04
    ld b, $05                                     ; $5781: $06 $05
    inc b                                         ; $5783: $04
    dec bc                                        ; $5784: $0b
    dec b                                         ; $5785: $05
    ld b, $03                                     ; $5786: $06 $03

jr_084_5788:
    dec bc                                        ; $5788: $0b
    ld b, $05                                     ; $5789: $06 $05
    inc b                                         ; $578b: $04
    dec bc                                        ; $578c: $0b
    and b                                         ; $578d: $a0
    or c                                          ; $578e: $b1
    or d                                          ; $578f: $b2
    or e                                          ; $5790: $b3
    and c                                         ; $5791: $a1
    or h                                          ; $5792: $b4
    or l                                          ; $5793: $b5
    or [hl]                                       ; $5794: $b6
    inc c                                         ; $5795: $0c
    dec e                                         ; $5796: $1d
    ld h, [hl]                                    ; $5797: $66
    rra                                           ; $5798: $1f
    db $10                                        ; $5799: $10
    ld de, $2168                                  ; $579a: $11 $68 $21
    add hl, bc                                    ; $579d: $09
    add hl, bc                                    ; $579e: $09
    add hl, bc                                    ; $579f: $09
    add hl, bc                                    ; $57a0: $09
    add hl, bc                                    ; $57a1: $09
    add hl, bc                                    ; $57a2: $09
    add hl, bc                                    ; $57a3: $09
    add hl, bc                                    ; $57a4: $09
    rlca                                          ; $57a5: $07
    rlca                                          ; $57a6: $07
    rlca                                          ; $57a7: $07

jr_084_57a8:
    rlca                                          ; $57a8: $07
    rlca                                          ; $57a9: $07
    ld b, $05                                     ; $57aa: $06 $05
    ld b, $ee                                     ; $57ac: $06 $ee
    rst $28                                       ; $57ae: $ef
    ld d, d                                       ; $57af: $52
    ld a, [$fcf2]                                 ; $57b0: $fa $f2 $fc
    ld d, h                                       ; $57b3: $54
    cp $0c                                        ; $57b4: $fe $0c
    dec e                                         ; $57b6: $1d
    ld h, [hl]                                    ; $57b7: $66
    rra                                           ; $57b8: $1f
    db $10                                        ; $57b9: $10
    ld de, $2168                                  ; $57ba: $11 $68 $21
    rlca                                          ; $57bd: $07
    ld b, $06                                     ; $57be: $06 $06
    dec b                                         ; $57c0: $05
    rlca                                          ; $57c1: $07
    dec b                                         ; $57c2: $05
    ld b, $06                                     ; $57c3: $06 $06
    rlca                                          ; $57c5: $07
    dec b                                         ; $57c6: $05
    dec b                                         ; $57c7: $05
    ld b, $06                                     ; $57c8: $06 $06
    ld b, $05                                     ; $57ca: $06 $05
    dec b                                         ; $57cc: $05
    xor $ef                                       ; $57cd: $ee $ef
    ld d, d                                       ; $57cf: $52
    ld a, [$fcf2]                                 ; $57d0: $fa $f2 $fc
    ld d, h                                       ; $57d3: $54
    cp $0c                                        ; $57d4: $fe $0c
    dec e                                         ; $57d6: $1d
    rst $38                                       ; $57d7: $ff
    rst $38                                       ; $57d8: $ff
    db $10                                        ; $57d9: $10
    ld de, $5555                                  ; $57da: $11 $55 $55
    ld b, $06                                     ; $57dd: $06 $06
    rlca                                          ; $57df: $07
    rlca                                          ; $57e0: $07
    ld b, $05                                     ; $57e1: $06 $05
    ld b, $05                                     ; $57e3: $06 $05
    dec b                                         ; $57e5: $05
    ld b, $82                                     ; $57e6: $06 $82
    and d                                         ; $57e8: $a2
    dec b                                         ; $57e9: $05
    ld b, $82                                     ; $57ea: $06 $82
    and d                                         ; $57ec: $a2
    sbc l                                         ; $57ed: $9d
    xor b                                         ; $57ee: $a8
    xor c                                         ; $57ef: $a9
    xor d                                         ; $57f0: $aa
    sbc [hl]                                      ; $57f1: $9e
    xor e                                         ; $57f2: $ab
    xor h                                         ; $57f3: $ac
    xor l                                         ; $57f4: $ad
    sbc a                                         ; $57f5: $9f
    xor [hl]                                      ; $57f6: $ae
    xor a                                         ; $57f7: $af
    or b                                          ; $57f8: $b0
    nop                                           ; $57f9: $00
    nop                                           ; $57fa: $00
    nop                                           ; $57fb: $00
    nop                                           ; $57fc: $00
    add hl, bc                                    ; $57fd: $09
    add hl, bc                                    ; $57fe: $09
    add hl, bc                                    ; $57ff: $09
    add hl, bc                                    ; $5800: $09
    add hl, bc                                    ; $5801: $09
    add hl, bc                                    ; $5802: $09
    add hl, bc                                    ; $5803: $09
    add hl, bc                                    ; $5804: $09
    add hl, bc                                    ; $5805: $09
    add hl, bc                                    ; $5806: $09
    add hl, bc                                    ; $5807: $09
    add hl, bc                                    ; $5808: $09
    add d                                         ; $5809: $82
    add d                                         ; $580a: $82
    add d                                         ; $580b: $82
    add d                                         ; $580c: $82
    inc d                                         ; $580d: $14
    inc hl                                        ; $580e: $23
    ld l, d                                       ; $580f: $6a
    inc h                                         ; $5810: $24
    jr jr_084_5839                                ; $5811: $18 $26

    cpl                                           ; $5813: $2f
    jr z, jr_084_584e                             ; $5814: $28 $38

    add hl, sp                                    ; $5816: $39
    ld l, e                                       ; $5817: $6b
    ld b, l                                       ; $5818: $45
    nop                                           ; $5819: $00
    nop                                           ; $581a: $00
    nop                                           ; $581b: $00
    nop                                           ; $581c: $00
    ld b, $05                                     ; $581d: $06 $05
    dec b                                         ; $581f: $05
    ld b, $07                                     ; $5820: $06 $07
    ld b, $05                                     ; $5822: $06 $05
    dec b                                         ; $5824: $05
    rlca                                          ; $5825: $07
    dec b                                         ; $5826: $05
    ld b, $06                                     ; $5827: $06 $06
    add d                                         ; $5829: $82
    add d                                         ; $582a: $82
    add d                                         ; $582b: $82
    add d                                         ; $582c: $82
    inc d                                         ; $582d: $14
    inc hl                                        ; $582e: $23
    ld d, l                                       ; $582f: $55
    ld d, l                                       ; $5830: $55
    jr jr_084_5859                                ; $5831: $18 $26

    ld d, l                                       ; $5833: $55
    ld d, l                                       ; $5834: $55
    jr c, jr_084_5870                             ; $5835: $38 $39

    ld d, l                                       ; $5837: $55
    ld d, l                                       ; $5838: $55

jr_084_5839:
    nop                                           ; $5839: $00
    nop                                           ; $583a: $00
    cp c                                          ; $583b: $b9
    ld d, l                                       ; $583c: $55
    ld b, $06                                     ; $583d: $06 $06
    add d                                         ; $583f: $82
    and d                                         ; $5840: $a2
    ld b, $05                                     ; $5841: $06 $05
    add d                                         ; $5843: $82
    and d                                         ; $5844: $a2
    dec b                                         ; $5845: $05
    ld b, $82                                     ; $5846: $06 $82
    and d                                         ; $5848: $a2
    add d                                         ; $5849: $82
    add d                                         ; $584a: $82
    xor d                                         ; $584b: $aa
    and d                                         ; $584c: $a2
    pop de                                        ; $584d: $d1

jr_084_584e:
    pop de                                        ; $584e: $d1
    pop de                                        ; $584f: $d1
    jp nc, Jump_000_07d1                          ; $5850: $d2 $d1 $07

    ld [$d109], sp                                ; $5853: $08 $09 $d1
    jp nc, Jump_000_0b0a                          ; $5856: $d2 $0a $0b

jr_084_5859:
    pop de                                        ; $5859: $d1
    jr nc, jr_084_588d                            ; $585a: $30 $31

    dec bc                                        ; $585c: $0b
    add b                                         ; $585d: $80
    add b                                         ; $585e: $80
    add b                                         ; $585f: $80
    add b                                         ; $5860: $80
    add b                                         ; $5861: $80
    add b                                         ; $5862: $80
    add b                                         ; $5863: $80
    add b                                         ; $5864: $80
    add b                                         ; $5865: $80
    add b                                         ; $5866: $80
    ld bc, $8001                                  ; $5867: $01 $01 $80
    add b                                         ; $586a: $80
    ld bc, $0201                                  ; $586b: $01 $01 $02
    ld [bc], a                                    ; $586e: $02
    ld [bc], a                                    ; $586f: $02

jr_084_5870:
    ld [bc], a                                    ; $5870: $02
    ld c, a                                       ; $5871: $4f
    inc b                                         ; $5872: $04
    ld b, a                                       ; $5873: $47
    ld c, b                                       ; $5874: $48
    ld d, b                                       ; $5875: $50
    ld b, $4b                                     ; $5876: $06 $4b
    ld c, h                                       ; $5878: $4c
    ld h, d                                       ; $5879: $62
    ld a, [hl+]                                   ; $587a: $2a
    ld d, [hl]                                    ; $587b: $56
    ld d, a                                       ; $587c: $57
    add d                                         ; $587d: $82
    add d                                         ; $587e: $82
    add d                                         ; $587f: $82
    add d                                         ; $5880: $82
    add h                                         ; $5881: $84
    add e                                         ; $5882: $83
    add e                                         ; $5883: $83
    add e                                         ; $5884: $83
    inc bc                                        ; $5885: $03
    inc b                                         ; $5886: $04
    inc bc                                        ; $5887: $03
    inc bc                                        ; $5888: $03
    inc bc                                        ; $5889: $03
    inc bc                                        ; $588a: $03
    inc b                                         ; $588b: $04
    inc b                                         ; $588c: $04

jr_084_588d:
    ld [bc], a                                    ; $588d: $02
    ld [bc], a                                    ; $588e: $02
    ld [bc], a                                    ; $588f: $02
    ld [bc], a                                    ; $5890: $02
    ld c, c                                       ; $5891: $49
    ld c, d                                       ; $5892: $4a
    ld c, a                                       ; $5893: $4f
    inc b                                         ; $5894: $04
    ld c, l                                       ; $5895: $4d
    ld c, [hl]                                    ; $5896: $4e
    ld d, b                                       ; $5897: $50
    ld b, $58                                     ; $5898: $06 $58
    ld e, c                                       ; $589a: $59
    ld h, d                                       ; $589b: $62
    ld a, [hl+]                                   ; $589c: $2a
    add d                                         ; $589d: $82
    add d                                         ; $589e: $82
    add d                                         ; $589f: $82
    add d                                         ; $58a0: $82
    add e                                         ; $58a1: $83
    add h                                         ; $58a2: $84
    add h                                         ; $58a3: $84
    add h                                         ; $58a4: $84
    inc b                                         ; $58a5: $04
    inc bc                                        ; $58a6: $03
    inc bc                                        ; $58a7: $03
    inc bc                                        ; $58a8: $03
    inc b                                         ; $58a9: $04
    inc bc                                        ; $58aa: $03
    inc b                                         ; $58ab: $04
    inc bc                                        ; $58ac: $03
    ld [bc], a                                    ; $58ad: $02
    ld [bc], a                                    ; $58ae: $02
    ld [bc], a                                    ; $58af: $02
    ld bc, $4847                                  ; $58b0: $01 $47 $48
    ld c, c                                       ; $58b3: $49
    ld d, c                                       ; $58b4: $51
    ld c, e                                       ; $58b5: $4b
    ld c, h                                       ; $58b6: $4c
    ld c, l                                       ; $58b7: $4d
    ld d, e                                       ; $58b8: $53
    ld d, [hl]                                    ; $58b9: $56
    ld d, a                                       ; $58ba: $57
    ld e, b                                       ; $58bb: $58
    ld h, l                                       ; $58bc: $65
    add d                                         ; $58bd: $82
    add d                                         ; $58be: $82
    add d                                         ; $58bf: $82
    and d                                         ; $58c0: $a2
    add e                                         ; $58c1: $83
    add e                                         ; $58c2: $83
    add h                                         ; $58c3: $84
    add e                                         ; $58c4: $83
    inc bc                                        ; $58c5: $03
    inc b                                         ; $58c6: $04
    inc bc                                        ; $58c7: $03
    inc b                                         ; $58c8: $04
    inc b                                         ; $58c9: $04
    inc bc                                        ; $58ca: $03
    inc b                                         ; $58cb: $04
    inc bc                                        ; $58cc: $03
    jr c, @+$3b                                   ; $58cd: $38 $39

    ld l, e                                       ; $58cf: $6b
    ld d, l                                       ; $58d0: $55
    inc a                                         ; $58d1: $3c
    dec a                                         ; $58d2: $3d
    ld a, $55                                     ; $58d3: $3e $55
    ld b, b                                       ; $58d5: $40
    ld b, c                                       ; $58d6: $41
    ld b, d                                       ; $58d7: $42
    ld bc, $ebea                                  ; $58d8: $01 $ea $eb
    db $ec                                        ; $58db: $ec
    ld l, h                                       ; $58dc: $6c
    rlca                                          ; $58dd: $07
    ld b, $05                                     ; $58de: $06 $05
    add d                                         ; $58e0: $82
    rlca                                          ; $58e1: $07
    ld b, $05                                     ; $58e2: $06 $05
    add d                                         ; $58e4: $82
    rlca                                          ; $58e5: $07
    ld b, $05                                     ; $58e6: $06 $05
    add d                                         ; $58e8: $82
    rlca                                          ; $58e9: $07
    dec b                                         ; $58ea: $05
    ld b, $04                                     ; $58eb: $06 $04
    ld d, l                                       ; $58ed: $55
    add hl, sp                                    ; $58ee: $39
    ld l, e                                       ; $58ef: $6b
    ld b, l                                       ; $58f0: $45
    ld d, l                                       ; $58f1: $55
    dec a                                         ; $58f2: $3d
    ld a, $3f                                     ; $58f3: $3e $3f
    ld bc, $4241                                  ; $58f5: $01 $41 $42
    ld b, e                                       ; $58f8: $43
    ld d, c                                       ; $58f9: $51
    db $eb                                        ; $58fa: $eb
    db $ec                                        ; $58fb: $ec
    db $ed                                        ; $58fc: $ed
    and d                                         ; $58fd: $a2
    rlca                                          ; $58fe: $07
    rlca                                          ; $58ff: $07
    rlca                                          ; $5900: $07
    and d                                         ; $5901: $a2
    rlca                                          ; $5902: $07
    ld b, $05                                     ; $5903: $06 $05
    and d                                         ; $5905: $a2
    rlca                                          ; $5906: $07
    ld b, $05                                     ; $5907: $06 $05
    inc bc                                        ; $5909: $03
    rlca                                          ; $590a: $07
    dec b                                         ; $590b: $05
    ld b, $38                                     ; $590c: $06 $38
    add hl, sp                                    ; $590e: $39
    ld d, l                                       ; $590f: $55
    ld d, l                                       ; $5910: $55
    inc a                                         ; $5911: $3c
    dec a                                         ; $5912: $3d
    ld d, l                                       ; $5913: $55
    ld d, l                                       ; $5914: $55
    ld b, b                                       ; $5915: $40
    ld b, c                                       ; $5916: $41
    ld bc, $ea01                                  ; $5917: $01 $01 $ea
    db $eb                                        ; $591a: $eb
    inc bc                                        ; $591b: $03
    ld l, a                                       ; $591c: $6f
    rlca                                          ; $591d: $07
    rlca                                          ; $591e: $07
    add d                                         ; $591f: $82
    and d                                         ; $5920: $a2
    dec b                                         ; $5921: $05
    ld b, $82                                     ; $5922: $06 $82
    and d                                         ; $5924: $a2
    ld b, $06                                     ; $5925: $06 $06
    add d                                         ; $5927: $82
    and d                                         ; $5928: $a2
    dec b                                         ; $5929: $05
    dec b                                         ; $592a: $05
    inc bc                                        ; $592b: $03
    inc b                                         ; $592c: $04
    jr c, @+$3b                                   ; $592d: $38 $39

    ld l, e                                       ; $592f: $6b
    ld b, l                                       ; $5930: $45
    inc a                                         ; $5931: $3c
    dec a                                         ; $5932: $3d
    ld a, $3f                                     ; $5933: $3e $3f
    ld b, b                                       ; $5935: $40
    ld b, c                                       ; $5936: $41
    ld b, d                                       ; $5937: $42
    ld b, e                                       ; $5938: $43
    ld [$eceb], a                                 ; $5939: $ea $eb $ec
    db $ed                                        ; $593c: $ed
    rlca                                          ; $593d: $07
    ld b, $06                                     ; $593e: $06 $06
    rlca                                          ; $5940: $07
    rlca                                          ; $5941: $07
    ld b, $06                                     ; $5942: $06 $06
    dec b                                         ; $5944: $05
    rlca                                          ; $5945: $07
    dec b                                         ; $5946: $05
    dec b                                         ; $5947: $05
    ld b, $07                                     ; $5948: $06 $07
    dec b                                         ; $594a: $05
    ld b, $06                                     ; $594b: $06 $06
    xor $ef                                       ; $594d: $ee $ef
    ld d, d                                       ; $594f: $52
    ld l, l                                       ; $5950: $6d
    ld a, [c]                                     ; $5951: $f2
    db $fc                                        ; $5952: $fc
    ld d, h                                       ; $5953: $54
    sbc c                                         ; $5954: $99
    inc c                                         ; $5955: $0c
    dec e                                         ; $5956: $1d
    ld h, [hl]                                    ; $5957: $66
    sbc d                                         ; $5958: $9a
    db $10                                        ; $5959: $10
    ld de, $9b68                                  ; $595a: $11 $68 $9b
    rlca                                          ; $595d: $07
    dec b                                         ; $595e: $05
    ld b, $03                                     ; $595f: $06 $03
    ld b, $06                                     ; $5961: $06 $06
    dec b                                         ; $5963: $05
    dec bc                                        ; $5964: $0b
    ld b, $06                                     ; $5965: $06 $06
    ld b, $0b                                     ; $5967: $06 $0b
    ld b, $05                                     ; $5969: $06 $05
    ld b, $0b                                     ; $596b: $06 $0b
    ld d, e                                       ; $596d: $53
    rst $28                                       ; $596e: $ef
    ld d, d                                       ; $596f: $52
    ld a, [$fc65]                                 ; $5970: $fa $65 $fc
    ld d, h                                       ; $5973: $54
    cp $67                                        ; $5974: $fe $67
    dec e                                         ; $5976: $1d
    ld h, [hl]                                    ; $5977: $66
    rra                                           ; $5978: $1f
    ld l, c                                       ; $5979: $69
    ld de, $2168                                  ; $597a: $11 $68 $21
    inc b                                         ; $597d: $04
    rlca                                          ; $597e: $07
    ld b, $05                                     ; $597f: $06 $05
    inc b                                         ; $5981: $04
    rlca                                          ; $5982: $07
    dec b                                         ; $5983: $05
    ld b, $04                                     ; $5984: $06 $04
    rlca                                          ; $5986: $07
    dec b                                         ; $5987: $05
    dec b                                         ; $5988: $05
    inc b                                         ; $5989: $04
    rlca                                          ; $598a: $07
    ld b, $05                                     ; $598b: $06 $05
    xor $ef                                       ; $598d: $ee $ef
    dec b                                         ; $598f: $05
    ld [hl], b                                    ; $5990: $70
    ld a, [c]                                     ; $5991: $f2
    db $fc                                        ; $5992: $fc
    add hl, hl                                    ; $5993: $29
    and d                                         ; $5994: $a2
    inc c                                         ; $5995: $0c
    dec e                                         ; $5996: $1d
    dec hl                                        ; $5997: $2b
    and e                                         ; $5998: $a3
    db $10                                        ; $5999: $10
    ld de, $a42d                                  ; $599a: $11 $2d $a4
    ld b, $06                                     ; $599d: $06 $06
    inc b                                         ; $599f: $04
    inc bc                                        ; $59a0: $03
    ld b, $05                                     ; $59a1: $06 $05
    inc bc                                        ; $59a3: $03
    inc c                                         ; $59a4: $0c
    dec b                                         ; $59a5: $05
    ld b, $04                                     ; $59a6: $06 $04
    dec bc                                        ; $59a8: $0b
    ld b, $06                                     ; $59a9: $06 $06
    inc bc                                        ; $59ab: $03
    dec bc                                        ; $59ac: $0b
    xor $ef                                       ; $59ad: $ee $ef
    ld d, d                                       ; $59af: $52
    ld a, [$fcf2]                                 ; $59b0: $fa $f2 $fc
    ld d, h                                       ; $59b3: $54
    cp $0c                                        ; $59b4: $fe $0c
    dec e                                         ; $59b6: $1d
    ld h, [hl]                                    ; $59b7: $66
    rra                                           ; $59b8: $1f
    db $10                                        ; $59b9: $10
    ld de, $2168                                  ; $59ba: $11 $68 $21
    rlca                                          ; $59bd: $07
    ld b, $05                                     ; $59be: $06 $05
    ld b, $07                                     ; $59c0: $06 $07
    ld b, $06                                     ; $59c2: $06 $06
    ld b, $07                                     ; $59c4: $06 $07
    dec b                                         ; $59c6: $05
    ld b, $05                                     ; $59c7: $06 $05
    rlca                                          ; $59c9: $07
    ld b, $05                                     ; $59ca: $06 $05
    ld b, $14                                     ; $59cc: $06 $14
    inc hl                                        ; $59ce: $23
    ld l, d                                       ; $59cf: $6a
    inc h                                         ; $59d0: $24
    jr jr_084_59f9                                ; $59d1: $18 $26

    cpl                                           ; $59d3: $2f
    jr z, jr_084_5a0e                             ; $59d4: $28 $38

    add hl, sp                                    ; $59d6: $39
    ld l, e                                       ; $59d7: $6b
    rst $38                                       ; $59d8: $ff
    inc a                                         ; $59d9: $3c
    dec a                                         ; $59da: $3d
    ld a, $55                                     ; $59db: $3e $55
    ld b, $06                                     ; $59dd: $06 $06
    ld b, $07                                     ; $59df: $06 $07
    rlca                                          ; $59e1: $07
    dec b                                         ; $59e2: $05
    ld b, $06                                     ; $59e3: $06 $06
    rlca                                          ; $59e5: $07
    dec b                                         ; $59e6: $05
    ld b, $82                                     ; $59e7: $06 $82
    rlca                                          ; $59e9: $07
    ld b, $05                                     ; $59ea: $06 $05
    add d                                         ; $59ec: $82
    inc d                                         ; $59ed: $14
    inc hl                                        ; $59ee: $23
    ld l, d                                       ; $59ef: $6a
    inc h                                         ; $59f0: $24
    jr jr_084_5a19                                ; $59f1: $18 $26

    cpl                                           ; $59f3: $2f
    jr z, jr_084_59f6                             ; $59f4: $28 $00

jr_084_59f6:
    nop                                           ; $59f6: $00
    nop                                           ; $59f7: $00
    nop                                           ; $59f8: $00

jr_084_59f9:
    ld l, [hl]                                    ; $59f9: $6e
    ld [bc], a                                    ; $59fa: $02
    ld [bc], a                                    ; $59fb: $02
    ld [bc], a                                    ; $59fc: $02
    rlca                                          ; $59fd: $07
    rlca                                          ; $59fe: $07
    ld b, $06                                     ; $59ff: $06 $06
    ld b, $05                                     ; $5a01: $06 $05
    dec b                                         ; $5a03: $05
    dec b                                         ; $5a04: $05
    add d                                         ; $5a05: $82
    add d                                         ; $5a06: $82
    add d                                         ; $5a07: $82
    add d                                         ; $5a08: $82
    add d                                         ; $5a09: $82
    add d                                         ; $5a0a: $82
    add d                                         ; $5a0b: $82
    add d                                         ; $5a0c: $82
    inc d                                         ; $5a0d: $14

jr_084_5a0e:
    inc hl                                        ; $5a0e: $23
    ld l, d                                       ; $5a0f: $6a
    inc h                                         ; $5a10: $24
    jr jr_084_5a39                                ; $5a11: $18 $26

    cpl                                           ; $5a13: $2f
    jr z, jr_084_5a16                             ; $5a14: $28 $00

jr_084_5a16:
    nop                                           ; $5a16: $00
    nop                                           ; $5a17: $00
    nop                                           ; $5a18: $00

jr_084_5a19:
    ld [bc], a                                    ; $5a19: $02
    ld [bc], a                                    ; $5a1a: $02
    ld [bc], a                                    ; $5a1b: $02
    ld [bc], a                                    ; $5a1c: $02
    dec b                                         ; $5a1d: $05
    ld b, $07                                     ; $5a1e: $06 $07
    rlca                                          ; $5a20: $07
    dec b                                         ; $5a21: $05
    ld b, $05                                     ; $5a22: $06 $05
    ld b, $82                                     ; $5a24: $06 $82
    add d                                         ; $5a26: $82
    add d                                         ; $5a27: $82
    add d                                         ; $5a28: $82
    add d                                         ; $5a29: $82
    add d                                         ; $5a2a: $82
    add d                                         ; $5a2b: $82
    add d                                         ; $5a2c: $82
    inc d                                         ; $5a2d: $14
    inc hl                                        ; $5a2e: $23
    ld l, d                                       ; $5a2f: $6a
    inc h                                         ; $5a30: $24
    jr jr_084_5a59                                ; $5a31: $18 $26

    cpl                                           ; $5a33: $2f
    jr z, jr_084_5a36                             ; $5a34: $28 $00

jr_084_5a36:
    nop                                           ; $5a36: $00
    rst $38                                       ; $5a37: $ff
    ld b, l                                       ; $5a38: $45

jr_084_5a39:
    ld [bc], a                                    ; $5a39: $02
    ld l, [hl]                                    ; $5a3a: $6e
    ld d, l                                       ; $5a3b: $55
    ccf                                           ; $5a3c: $3f
    rlca                                          ; $5a3d: $07
    dec b                                         ; $5a3e: $05
    ld b, $05                                     ; $5a3f: $06 $05
    dec b                                         ; $5a41: $05
    ld b, $06                                     ; $5a42: $06 $06
    dec b                                         ; $5a44: $05
    add d                                         ; $5a45: $82
    add d                                         ; $5a46: $82
    and d                                         ; $5a47: $a2
    dec b                                         ; $5a48: $05
    add d                                         ; $5a49: $82
    and d                                         ; $5a4a: $a2
    and d                                         ; $5a4b: $a2
    dec b                                         ; $5a4c: $05
    ld b, b                                       ; $5a4d: $40
    ld b, c                                       ; $5a4e: $41
    ld b, d                                       ; $5a4f: $42
    ld d, l                                       ; $5a50: $55
    ld [$eceb], a                                 ; $5a51: $ea $eb $ec
    ld d, l                                       ; $5a54: $55
    xor $ef                                       ; $5a55: $ee $ef
    ld d, d                                       ; $5a57: $52
    ld d, l                                       ; $5a58: $55

jr_084_5a59:
    ld a, [c]                                     ; $5a59: $f2
    db $fc                                        ; $5a5a: $fc
    ld d, h                                       ; $5a5b: $54
    ld d, l                                       ; $5a5c: $55
    rlca                                          ; $5a5d: $07
    ld b, $06                                     ; $5a5e: $06 $06
    add d                                         ; $5a60: $82
    rlca                                          ; $5a61: $07
    dec b                                         ; $5a62: $05
    ld b, $82                                     ; $5a63: $06 $82
    rlca                                          ; $5a65: $07
    dec b                                         ; $5a66: $05
    dec b                                         ; $5a67: $05
    add d                                         ; $5a68: $82
    rlca                                          ; $5a69: $07
    ld b, $06                                     ; $5a6a: $06 $06
    add d                                         ; $5a6c: $82
    ld d, l                                       ; $5a6d: $55
    ld c, a                                       ; $5a6e: $4f
    inc b                                         ; $5a6f: $04
    ld b, a                                       ; $5a70: $47
    ld d, l                                       ; $5a71: $55
    ld d, b                                       ; $5a72: $50
    ld b, $4b                                     ; $5a73: $06 $4b
    ld d, l                                       ; $5a75: $55
    ld h, d                                       ; $5a76: $62
    ld a, [hl+]                                   ; $5a77: $2a
    ld d, [hl]                                    ; $5a78: $56
    ld d, l                                       ; $5a79: $55
    ld h, e                                       ; $5a7a: $63
    inc l                                         ; $5a7b: $2c
    ld e, d                                       ; $5a7c: $5a
    and d                                         ; $5a7d: $a2
    add h                                         ; $5a7e: $84
    add e                                         ; $5a7f: $83
    add e                                         ; $5a80: $83
    and d                                         ; $5a81: $a2
    inc b                                         ; $5a82: $04
    inc bc                                        ; $5a83: $03
    inc b                                         ; $5a84: $04
    and d                                         ; $5a85: $a2
    inc bc                                        ; $5a86: $03
    inc b                                         ; $5a87: $04
    inc b                                         ; $5a88: $04
    and d                                         ; $5a89: $a2
    inc b                                         ; $5a8a: $04
    inc bc                                        ; $5a8b: $03
    inc b                                         ; $5a8c: $04
    ld c, b                                       ; $5a8d: $48
    ld c, c                                       ; $5a8e: $49
    ld c, d                                       ; $5a8f: $4a
    ld c, a                                       ; $5a90: $4f
    ld c, h                                       ; $5a91: $4c
    ld c, l                                       ; $5a92: $4d
    ld c, [hl]                                    ; $5a93: $4e
    ld d, b                                       ; $5a94: $50
    ld d, a                                       ; $5a95: $57
    ld e, b                                       ; $5a96: $58
    ld e, c                                       ; $5a97: $59
    ld h, d                                       ; $5a98: $62
    ld e, e                                       ; $5a99: $5b
    ld e, h                                       ; $5a9a: $5c
    ld e, l                                       ; $5a9b: $5d
    ld h, e                                       ; $5a9c: $63
    add h                                         ; $5a9d: $84
    add e                                         ; $5a9e: $83
    add h                                         ; $5a9f: $84
    add e                                         ; $5aa0: $83
    inc b                                         ; $5aa1: $04
    inc bc                                        ; $5aa2: $03
    inc bc                                        ; $5aa3: $03
    inc bc                                        ; $5aa4: $03
    inc b                                         ; $5aa5: $04
    inc b                                         ; $5aa6: $04
    inc bc                                        ; $5aa7: $03
    inc bc                                        ; $5aa8: $03
    inc b                                         ; $5aa9: $04
    inc bc                                        ; $5aaa: $03
    inc b                                         ; $5aab: $04
    inc bc                                        ; $5aac: $03
    inc b                                         ; $5aad: $04
    ld d, l                                       ; $5aae: $55
    ld d, l                                       ; $5aaf: $55
    ld b, e                                       ; $5ab0: $43
    ld b, $55                                     ; $5ab1: $06 $55
    ld d, l                                       ; $5ab3: $55
    db $ed                                        ; $5ab4: $ed
    ld a, [hl+]                                   ; $5ab5: $2a
    ld d, l                                       ; $5ab6: $55
    ld d, l                                       ; $5ab7: $55
    ld a, [$552c]                                 ; $5ab8: $fa $2c $55
    ld d, l                                       ; $5abb: $55
    cp $84                                        ; $5abc: $fe $84
    add d                                         ; $5abe: $82
    and d                                         ; $5abf: $a2
    ld b, $03                                     ; $5ac0: $06 $03
    add d                                         ; $5ac2: $82
    and d                                         ; $5ac3: $a2
    rlca                                          ; $5ac4: $07
    inc b                                         ; $5ac5: $04
    add d                                         ; $5ac6: $82
    and d                                         ; $5ac7: $a2
    rlca                                          ; $5ac8: $07
    inc bc                                        ; $5ac9: $03
    add d                                         ; $5aca: $82
    and d                                         ; $5acb: $a2
    rlca                                          ; $5acc: $07
    jr c, jr_084_5b08                             ; $5acd: $38 $39

    ld l, e                                       ; $5acf: $6b
    ld b, l                                       ; $5ad0: $45
    inc a                                         ; $5ad1: $3c
    dec a                                         ; $5ad2: $3d
    ld a, $3f                                     ; $5ad3: $3e $3f
    ld b, b                                       ; $5ad5: $40
    ld b, c                                       ; $5ad6: $41
    ld b, d                                       ; $5ad7: $42
    ld b, e                                       ; $5ad8: $43
    ld [$eceb], a                                 ; $5ad9: $ea $eb $ec
    db $ed                                        ; $5adc: $ed
    rlca                                          ; $5add: $07
    rlca                                          ; $5ade: $07
    rlca                                          ; $5adf: $07
    rlca                                          ; $5ae0: $07
    ld b, $06                                     ; $5ae1: $06 $06
    ld b, $06                                     ; $5ae3: $06 $06
    ld b, $06                                     ; $5ae5: $06 $06
    dec b                                         ; $5ae7: $05
    dec b                                         ; $5ae8: $05
    dec b                                         ; $5ae9: $05
    dec b                                         ; $5aea: $05
    ld b, $06                                     ; $5aeb: $06 $06
    jr c, jr_084_5b28                             ; $5aed: $38 $39

    ld d, l                                       ; $5aef: $55
    ld d, l                                       ; $5af0: $55
    inc a                                         ; $5af1: $3c
    dec a                                         ; $5af2: $3d
    ld d, l                                       ; $5af3: $55
    ld d, l                                       ; $5af4: $55
    ld b, b                                       ; $5af5: $40
    ld b, c                                       ; $5af6: $41
    ld d, l                                       ; $5af7: $55
    cp c                                          ; $5af8: $b9
    ld [$01eb], a                                 ; $5af9: $ea $eb $01
    ld [bc], a                                    ; $5afc: $02
    dec b                                         ; $5afd: $05
    ld b, $82                                     ; $5afe: $06 $82
    and d                                         ; $5b00: $a2
    ld b, $06                                     ; $5b01: $06 $06
    add d                                         ; $5b03: $82
    and d                                         ; $5b04: $a2
    ld b, $05                                     ; $5b05: $06 $05
    add d                                         ; $5b07: $82

jr_084_5b08:
    adc d                                         ; $5b08: $8a
    dec b                                         ; $5b09: $05
    dec b                                         ; $5b0a: $05
    add d                                         ; $5b0b: $82
    add d                                         ; $5b0c: $82
    jr c, jr_084_5b48                             ; $5b0d: $38 $39

    ld l, e                                       ; $5b0f: $6b
    ld b, l                                       ; $5b10: $45
    inc a                                         ; $5b11: $3c
    dec a                                         ; $5b12: $3d
    ld a, $3f                                     ; $5b13: $3e $3f
    nop                                           ; $5b15: $00
    nop                                           ; $5b16: $00
    nop                                           ; $5b17: $00
    nop                                           ; $5b18: $00
    ld [bc], a                                    ; $5b19: $02
    ld [bc], a                                    ; $5b1a: $02
    ld [bc], a                                    ; $5b1b: $02
    ld [bc], a                                    ; $5b1c: $02
    rlca                                          ; $5b1d: $07
    rlca                                          ; $5b1e: $07
    rlca                                          ; $5b1f: $07
    rlca                                          ; $5b20: $07
    rlca                                          ; $5b21: $07
    ld b, $05                                     ; $5b22: $06 $05
    ld b, $82                                     ; $5b24: $06 $82
    add d                                         ; $5b26: $82
    add d                                         ; $5b27: $82

jr_084_5b28:
    add d                                         ; $5b28: $82
    add d                                         ; $5b29: $82
    add d                                         ; $5b2a: $82
    add d                                         ; $5b2b: $82
    add d                                         ; $5b2c: $82
    jr c, @+$3b                                   ; $5b2d: $38 $39

    ld l, e                                       ; $5b2f: $6b
    ld b, l                                       ; $5b30: $45
    inc a                                         ; $5b31: $3c
    dec a                                         ; $5b32: $3d
    ld a, $3f                                     ; $5b33: $3e $3f
    nop                                           ; $5b35: $00
    nop                                           ; $5b36: $00
    nop                                           ; $5b37: $00
    nop                                           ; $5b38: $00
    ld [bc], a                                    ; $5b39: $02
    ld [bc], a                                    ; $5b3a: $02
    ld [bc], a                                    ; $5b3b: $02
    ld [bc], a                                    ; $5b3c: $02
    rlca                                          ; $5b3d: $07
    rlca                                          ; $5b3e: $07
    rlca                                          ; $5b3f: $07
    rlca                                          ; $5b40: $07
    dec b                                         ; $5b41: $05
    ld b, $05                                     ; $5b42: $06 $05
    ld b, $82                                     ; $5b44: $06 $82
    add d                                         ; $5b46: $82
    add d                                         ; $5b47: $82

jr_084_5b48:
    add d                                         ; $5b48: $82
    add d                                         ; $5b49: $82
    add d                                         ; $5b4a: $82
    add d                                         ; $5b4b: $82
    add d                                         ; $5b4c: $82
    xor $ef                                       ; $5b4d: $ee $ef
    ld d, d                                       ; $5b4f: $52
    ld a, [$fcf2]                                 ; $5b50: $fa $f2 $fc
    ld d, h                                       ; $5b53: $54
    cp $0c                                        ; $5b54: $fe $0c
    dec e                                         ; $5b56: $1d
    ld h, [hl]                                    ; $5b57: $66
    rra                                           ; $5b58: $1f
    db $10                                        ; $5b59: $10
    ld de, $2168                                  ; $5b5a: $11 $68 $21
    ld b, $06                                     ; $5b5d: $06 $06
    dec b                                         ; $5b5f: $05
    ld b, $06                                     ; $5b60: $06 $06
    ld b, $05                                     ; $5b62: $06 $05
    dec b                                         ; $5b64: $05
    dec b                                         ; $5b65: $05
    dec b                                         ; $5b66: $05
    ld b, $06                                     ; $5b67: $06 $06
    ld b, $06                                     ; $5b69: $06 $06
    dec b                                         ; $5b6b: $05
    dec b                                         ; $5b6c: $05
    xor $ef                                       ; $5b6d: $ee $ef
    inc bc                                        ; $5b6f: $03
    ld c, c                                       ; $5b70: $49
    ld a, [c]                                     ; $5b71: $f2
    db $fc                                        ; $5b72: $fc
    dec b                                         ; $5b73: $05
    ld c, l                                       ; $5b74: $4d
    inc c                                         ; $5b75: $0c
    dec e                                         ; $5b76: $1d
    add hl, hl                                    ; $5b77: $29
    ld e, b                                       ; $5b78: $58
    db $10                                        ; $5b79: $10
    ld de, $5c2b                                  ; $5b7a: $11 $2b $5c
    ld b, $05                                     ; $5b7d: $06 $05
    add e                                         ; $5b7f: $83
    add e                                         ; $5b80: $83
    dec b                                         ; $5b81: $05
    ld b, $03                                     ; $5b82: $06 $03
    inc b                                         ; $5b84: $04
    ld b, $06                                     ; $5b85: $06 $06
    inc b                                         ; $5b87: $04
    inc bc                                        ; $5b88: $03
    dec b                                         ; $5b89: $05
    ld b, $04                                     ; $5b8a: $06 $04
    inc b                                         ; $5b8c: $04
    ld c, d                                       ; $5b8d: $4a
    ld c, a                                       ; $5b8e: $4f
    inc b                                         ; $5b8f: $04
    ld b, a                                       ; $5b90: $47
    ld c, [hl]                                    ; $5b91: $4e
    ld d, b                                       ; $5b92: $50
    ld b, $4b                                     ; $5b93: $06 $4b
    ld e, c                                       ; $5b95: $59
    ld h, d                                       ; $5b96: $62
    ld a, [hl+]                                   ; $5b97: $2a
    ld d, [hl]                                    ; $5b98: $56
    ld e, l                                       ; $5b99: $5d
    ld h, e                                       ; $5b9a: $63
    inc l                                         ; $5b9b: $2c
    ld e, d                                       ; $5b9c: $5a
    add h                                         ; $5b9d: $84
    add e                                         ; $5b9e: $83
    add e                                         ; $5b9f: $83
    add h                                         ; $5ba0: $84
    inc bc                                        ; $5ba1: $03
    inc bc                                        ; $5ba2: $03
    inc b                                         ; $5ba3: $04
    inc b                                         ; $5ba4: $04
    inc b                                         ; $5ba5: $04
    inc b                                         ; $5ba6: $04
    inc bc                                        ; $5ba7: $03
    inc bc                                        ; $5ba8: $03
    inc bc                                        ; $5ba9: $03
    inc b                                         ; $5baa: $04
    inc bc                                        ; $5bab: $03
    inc bc                                        ; $5bac: $03
    ld c, b                                       ; $5bad: $48
    ld c, c                                       ; $5bae: $49
    ld c, d                                       ; $5baf: $4a
    ld c, a                                       ; $5bb0: $4f
    ld c, h                                       ; $5bb1: $4c
    ld c, l                                       ; $5bb2: $4d
    ld c, [hl]                                    ; $5bb3: $4e
    ld d, b                                       ; $5bb4: $50
    ld d, a                                       ; $5bb5: $57
    ld e, b                                       ; $5bb6: $58
    ld e, c                                       ; $5bb7: $59
    ld h, d                                       ; $5bb8: $62
    ld e, e                                       ; $5bb9: $5b
    ld e, h                                       ; $5bba: $5c
    ld e, l                                       ; $5bbb: $5d
    ld h, e                                       ; $5bbc: $63
    add h                                         ; $5bbd: $84
    add e                                         ; $5bbe: $83
    add e                                         ; $5bbf: $83
    add h                                         ; $5bc0: $84
    inc bc                                        ; $5bc1: $03
    inc b                                         ; $5bc2: $04
    inc bc                                        ; $5bc3: $03
    inc bc                                        ; $5bc4: $03
    inc b                                         ; $5bc5: $04
    inc bc                                        ; $5bc6: $03
    inc bc                                        ; $5bc7: $03
    inc bc                                        ; $5bc8: $03
    inc b                                         ; $5bc9: $04
    inc b                                         ; $5bca: $04
    inc b                                         ; $5bcb: $04
    inc bc                                        ; $5bcc: $03
    inc d                                         ; $5bcd: $14
    inc hl                                        ; $5bce: $23
    ld l, d                                       ; $5bcf: $6a
    inc h                                         ; $5bd0: $24
    jr jr_084_5bf9                                ; $5bd1: $18 $26

    cpl                                           ; $5bd3: $2f
    jr z, jr_084_5c0e                             ; $5bd4: $28 $38

    add hl, sp                                    ; $5bd6: $39
    rst $38                                       ; $5bd7: $ff
    nop                                           ; $5bd8: $00
    inc a                                         ; $5bd9: $3c
    dec a                                         ; $5bda: $3d
    ld bc, $0602                                  ; $5bdb: $01 $02 $06
    ld b, $05                                     ; $5bde: $06 $05
    ld b, $06                                     ; $5be0: $06 $06
    ld b, $06                                     ; $5be2: $06 $06
    ld b, $06                                     ; $5be4: $06 $06
    dec b                                         ; $5be6: $05
    add d                                         ; $5be7: $82
    add d                                         ; $5be8: $82
    dec b                                         ; $5be9: $05
    ld b, $82                                     ; $5bea: $06 $82
    add d                                         ; $5bec: $82
    inc d                                         ; $5bed: $14
    inc hl                                        ; $5bee: $23
    dec l                                         ; $5bef: $2d
    ld h, b                                       ; $5bf0: $60
    jr jr_084_5c19                                ; $5bf1: $18 $26

    cpl                                           ; $5bf3: $2f
    jr z, jr_084_5bf6                             ; $5bf4: $28 $00

jr_084_5bf6:
    nop                                           ; $5bf6: $00
    nop                                           ; $5bf7: $00
    nop                                           ; $5bf8: $00

jr_084_5bf9:
    ld [bc], a                                    ; $5bf9: $02
    ld [bc], a                                    ; $5bfa: $02
    ld [bc], a                                    ; $5bfb: $02
    ld [bc], a                                    ; $5bfc: $02
    dec b                                         ; $5bfd: $05
    ld b, $04                                     ; $5bfe: $06 $04
    inc bc                                        ; $5c00: $03
    dec b                                         ; $5c01: $05
    ld b, $07                                     ; $5c02: $06 $07
    rlca                                          ; $5c04: $07
    add d                                         ; $5c05: $82
    add d                                         ; $5c06: $82
    add d                                         ; $5c07: $82
    add d                                         ; $5c08: $82
    add d                                         ; $5c09: $82
    add d                                         ; $5c0a: $82
    add d                                         ; $5c0b: $82
    add d                                         ; $5c0c: $82
    ld h, c                                       ; $5c0d: $61

jr_084_5c0e:
    ld h, h                                       ; $5c0e: $64
    ld l, $5e                                     ; $5c0f: $2e $5e
    jr jr_084_5c39                                ; $5c11: $18 $26

    cpl                                           ; $5c13: $2f
    jr z, jr_084_5c16                             ; $5c14: $28 $00

jr_084_5c16:
    nop                                           ; $5c16: $00
    nop                                           ; $5c17: $00
    rst $38                                       ; $5c18: $ff

jr_084_5c19:
    ld [bc], a                                    ; $5c19: $02
    ld [bc], a                                    ; $5c1a: $02
    ld l, [hl]                                    ; $5c1b: $6e
    ld d, l                                       ; $5c1c: $55
    inc b                                         ; $5c1d: $04
    inc bc                                        ; $5c1e: $03
    inc bc                                        ; $5c1f: $03
    inc b                                         ; $5c20: $04
    rlca                                          ; $5c21: $07
    rlca                                          ; $5c22: $07
    rlca                                          ; $5c23: $07
    rlca                                          ; $5c24: $07
    add d                                         ; $5c25: $82
    add d                                         ; $5c26: $82
    add d                                         ; $5c27: $82
    and d                                         ; $5c28: $a2
    add d                                         ; $5c29: $82
    add d                                         ; $5c2a: $82
    and d                                         ; $5c2b: $a2
    and d                                         ; $5c2c: $a2
    ld e, a                                       ; $5c2d: $5f
    ld h, b                                       ; $5c2e: $60
    ld h, c                                       ; $5c2f: $61
    ld h, h                                       ; $5c30: $64
    jr jr_084_5c59                                ; $5c31: $18 $26

    cpl                                           ; $5c33: $2f
    jr z, jr_084_5c6e                             ; $5c34: $28 $38

    add hl, sp                                    ; $5c36: $39
    ld l, e                                       ; $5c37: $6b
    ld b, l                                       ; $5c38: $45

jr_084_5c39:
    inc a                                         ; $5c39: $3c
    dec a                                         ; $5c3a: $3d
    ld a, $9d                                     ; $5c3b: $3e $9d
    inc bc                                        ; $5c3d: $03
    inc bc                                        ; $5c3e: $03
    inc b                                         ; $5c3f: $04
    inc bc                                        ; $5c40: $03
    rlca                                          ; $5c41: $07
    rlca                                          ; $5c42: $07
    rlca                                          ; $5c43: $07
    rlca                                          ; $5c44: $07
    dec b                                         ; $5c45: $05
    ld b, $05                                     ; $5c46: $06 $05
    ld b, $06                                     ; $5c48: $06 $06
    ld b, $06                                     ; $5c4a: $06 $06
    add hl, bc                                    ; $5c4c: $09
    ld b, b                                       ; $5c4d: $40
    ld b, c                                       ; $5c4e: $41
    inc bc                                        ; $5c4f: $03
    ld c, c                                       ; $5c50: $49
    ld [$05eb], a                                 ; $5c51: $ea $eb $05
    ld c, l                                       ; $5c54: $4d
    xor $ef                                       ; $5c55: $ee $ef
    add hl, hl                                    ; $5c57: $29
    ld e, b                                       ; $5c58: $58

jr_084_5c59:
    ld a, [c]                                     ; $5c59: $f2
    db $fc                                        ; $5c5a: $fc
    dec hl                                        ; $5c5b: $2b
    ld e, h                                       ; $5c5c: $5c
    ld b, $05                                     ; $5c5d: $06 $05
    add h                                         ; $5c5f: $84
    add e                                         ; $5c60: $83
    ld b, $05                                     ; $5c61: $06 $05
    inc bc                                        ; $5c63: $03
    inc b                                         ; $5c64: $04
    dec b                                         ; $5c65: $05
    dec b                                         ; $5c66: $05
    inc bc                                        ; $5c67: $03
    inc bc                                        ; $5c68: $03
    dec b                                         ; $5c69: $05
    ld b, $04                                     ; $5c6a: $06 $04
    inc bc                                        ; $5c6c: $03
    ld c, d                                       ; $5c6d: $4a

jr_084_5c6e:
    ld c, a                                       ; $5c6e: $4f
    inc b                                         ; $5c6f: $04
    ld b, a                                       ; $5c70: $47
    ld c, [hl]                                    ; $5c71: $4e
    ld d, b                                       ; $5c72: $50
    ld b, $4b                                     ; $5c73: $06 $4b
    ld e, c                                       ; $5c75: $59
    ld h, d                                       ; $5c76: $62
    ld a, [hl+]                                   ; $5c77: $2a
    ld d, [hl]                                    ; $5c78: $56
    ld e, l                                       ; $5c79: $5d
    ld h, e                                       ; $5c7a: $63
    inc l                                         ; $5c7b: $2c
    ld e, d                                       ; $5c7c: $5a
    add h                                         ; $5c7d: $84
    add h                                         ; $5c7e: $84
    add h                                         ; $5c7f: $84
    add e                                         ; $5c80: $83
    inc bc                                        ; $5c81: $03
    inc b                                         ; $5c82: $04
    inc bc                                        ; $5c83: $03
    inc bc                                        ; $5c84: $03
    inc b                                         ; $5c85: $04
    inc bc                                        ; $5c86: $03
    inc bc                                        ; $5c87: $03
    inc b                                         ; $5c88: $04
    inc bc                                        ; $5c89: $03
    inc bc                                        ; $5c8a: $03
    inc bc                                        ; $5c8b: $03
    inc b                                         ; $5c8c: $04
    ld c, b                                       ; $5c8d: $48
    ld c, c                                       ; $5c8e: $49
    ld d, l                                       ; $5c8f: $55
    ld d, l                                       ; $5c90: $55
    ld c, h                                       ; $5c91: $4c
    ld c, l                                       ; $5c92: $4d
    ld d, l                                       ; $5c93: $55
    ld d, l                                       ; $5c94: $55
    ld d, a                                       ; $5c95: $57
    ld e, b                                       ; $5c96: $58
    ld d, l                                       ; $5c97: $55
    ld d, l                                       ; $5c98: $55
    ld e, e                                       ; $5c99: $5b
    ld e, h                                       ; $5c9a: $5c
    ld d, l                                       ; $5c9b: $55
    ld d, l                                       ; $5c9c: $55
    add h                                         ; $5c9d: $84
    add e                                         ; $5c9e: $83
    add d                                         ; $5c9f: $82
    and d                                         ; $5ca0: $a2
    inc bc                                        ; $5ca1: $03
    inc b                                         ; $5ca2: $04
    add d                                         ; $5ca3: $82
    and d                                         ; $5ca4: $a2
    inc bc                                        ; $5ca5: $03
    inc bc                                        ; $5ca6: $03
    add d                                         ; $5ca7: $82
    and d                                         ; $5ca8: $a2
    inc bc                                        ; $5ca9: $03
    inc bc                                        ; $5caa: $03
    add d                                         ; $5cab: $82
    and d                                         ; $5cac: $a2
    ld b, b                                       ; $5cad: $40
    ld b, c                                       ; $5cae: $41
    ld b, d                                       ; $5caf: $42
    sbc [hl]                                      ; $5cb0: $9e
    ld [$eceb], a                                 ; $5cb1: $ea $eb $ec
    sbc a                                         ; $5cb4: $9f
    xor $ef                                       ; $5cb5: $ee $ef
    ld d, d                                       ; $5cb7: $52
    and b                                         ; $5cb8: $a0
    ld a, [c]                                     ; $5cb9: $f2
    db $fc                                        ; $5cba: $fc
    ld d, h                                       ; $5cbb: $54
    and c                                         ; $5cbc: $a1
    ld b, $05                                     ; $5cbd: $06 $05
    ld b, $09                                     ; $5cbf: $06 $09
    rlca                                          ; $5cc1: $07
    ld b, $06                                     ; $5cc2: $06 $06
    add hl, bc                                    ; $5cc4: $09
    rlca                                          ; $5cc5: $07
    ld b, $06                                     ; $5cc6: $06 $06
    add hl, bc                                    ; $5cc8: $09
    rlca                                          ; $5cc9: $07
    ld b, $05                                     ; $5cca: $06 $05
    add hl, bc                                    ; $5ccc: $09
    jr c, jr_084_5d08                             ; $5ccd: $38 $39

    ld l, e                                       ; $5ccf: $6b
    ld d, l                                       ; $5cd0: $55
    inc a                                         ; $5cd1: $3c
    dec a                                         ; $5cd2: $3d
    ld a, $55                                     ; $5cd3: $3e $55
    nop                                           ; $5cd5: $00
    nop                                           ; $5cd6: $00
    nop                                           ; $5cd7: $00
    cp c                                          ; $5cd8: $b9
    ld [bc], a                                    ; $5cd9: $02
    ld [bc], a                                    ; $5cda: $02
    ld [bc], a                                    ; $5cdb: $02
    ld [bc], a                                    ; $5cdc: $02
    rlca                                          ; $5cdd: $07
    dec b                                         ; $5cde: $05
    ld b, $82                                     ; $5cdf: $06 $82
    ld b, $06                                     ; $5ce1: $06 $06
    ld b, $82                                     ; $5ce3: $06 $82
    add d                                         ; $5ce5: $82
    add d                                         ; $5ce6: $82
    add d                                         ; $5ce7: $82
    xor d                                         ; $5ce8: $aa
    add d                                         ; $5ce9: $82
    add d                                         ; $5cea: $82
    add d                                         ; $5ceb: $82
    add d                                         ; $5cec: $82
    ld d, l                                       ; $5ced: $55
    add hl, sp                                    ; $5cee: $39
    ld l, e                                       ; $5cef: $6b
    ld b, l                                       ; $5cf0: $45
    ld d, l                                       ; $5cf1: $55
    dec a                                         ; $5cf2: $3d
    ld a, $3f                                     ; $5cf3: $3e $3f
    ld d, l                                       ; $5cf5: $55
    ld b, c                                       ; $5cf6: $41
    ld b, d                                       ; $5cf7: $42
    ld b, e                                       ; $5cf8: $43
    ld bc, $eceb                                  ; $5cf9: $01 $eb $ec
    db $ed                                        ; $5cfc: $ed
    and d                                         ; $5cfd: $a2
    ld b, $05                                     ; $5cfe: $06 $05
    rlca                                          ; $5d00: $07
    and d                                         ; $5d01: $a2
    rlca                                          ; $5d02: $07
    ld b, $07                                     ; $5d03: $06 $07
    and d                                         ; $5d05: $a2
    rlca                                          ; $5d06: $07
    dec b                                         ; $5d07: $05

jr_084_5d08:
    rlca                                          ; $5d08: $07
    and d                                         ; $5d09: $a2
    rlca                                          ; $5d0a: $07
    dec b                                         ; $5d0b: $05
    rlca                                          ; $5d0c: $07
    inc b                                         ; $5d0d: $04
    ld b, a                                       ; $5d0e: $47
    ld c, b                                       ; $5d0f: $48
    ld c, c                                       ; $5d10: $49
    ld b, $4b                                     ; $5d11: $06 $4b
    ld c, h                                       ; $5d13: $4c
    ld c, l                                       ; $5d14: $4d
    ld a, [hl+]                                   ; $5d15: $2a
    ld d, [hl]                                    ; $5d16: $56
    ld d, a                                       ; $5d17: $57
    ld e, b                                       ; $5d18: $58
    inc l                                         ; $5d19: $2c
    ld e, d                                       ; $5d1a: $5a
    ld e, e                                       ; $5d1b: $5b
    ld e, h                                       ; $5d1c: $5c
    add e                                         ; $5d1d: $83
    add h                                         ; $5d1e: $84
    add e                                         ; $5d1f: $83
    add e                                         ; $5d20: $83
    inc b                                         ; $5d21: $04
    inc b                                         ; $5d22: $04
    inc b                                         ; $5d23: $04
    inc bc                                        ; $5d24: $03
    inc b                                         ; $5d25: $04
    inc bc                                        ; $5d26: $03
    inc bc                                        ; $5d27: $03
    inc b                                         ; $5d28: $04
    inc bc                                        ; $5d29: $03
    inc b                                         ; $5d2a: $04
    inc bc                                        ; $5d2b: $03
    inc bc                                        ; $5d2c: $03
    ld d, c                                       ; $5d2d: $51
    rst $28                                       ; $5d2e: $ef
    ld d, d                                       ; $5d2f: $52
    ld a, [$fc53]                                 ; $5d30: $fa $53 $fc
    ld d, h                                       ; $5d33: $54
    cp $65                                        ; $5d34: $fe $65
    dec e                                         ; $5d36: $1d
    ld h, [hl]                                    ; $5d37: $66
    rra                                           ; $5d38: $1f
    ld h, a                                       ; $5d39: $67
    ld de, $2168                                  ; $5d3a: $11 $68 $21
    add h                                         ; $5d3d: $84
    rlca                                          ; $5d3e: $07
    dec b                                         ; $5d3f: $05
    rlca                                          ; $5d40: $07
    inc bc                                        ; $5d41: $03
    rlca                                          ; $5d42: $07
    ld b, $07                                     ; $5d43: $06 $07
    inc bc                                        ; $5d45: $03
    rlca                                          ; $5d46: $07
    dec b                                         ; $5d47: $05
    rlca                                          ; $5d48: $07
    inc bc                                        ; $5d49: $03
    rlca                                          ; $5d4a: $07
    ld b, $07                                     ; $5d4b: $06 $07
    ld l, $5e                                     ; $5d4d: $2e $5e
    ld e, a                                       ; $5d4f: $5f
    ld h, b                                       ; $5d50: $60
    jr jr_084_5d79                                ; $5d51: $18 $26

    cpl                                           ; $5d53: $2f
    jr z, jr_084_5d8e                             ; $5d54: $28 $38

    add hl, sp                                    ; $5d56: $39
    ld l, e                                       ; $5d57: $6b
    ld b, l                                       ; $5d58: $45
    xor b                                         ; $5d59: $a8
    xor c                                         ; $5d5a: $a9
    xor d                                         ; $5d5b: $aa
    ccf                                           ; $5d5c: $3f
    inc b                                         ; $5d5d: $04

jr_084_5d5e:
    inc bc                                        ; $5d5e: $03
    inc bc                                        ; $5d5f: $03
    inc b                                         ; $5d60: $04
    rlca                                          ; $5d61: $07
    rlca                                          ; $5d62: $07
    rlca                                          ; $5d63: $07
    rlca                                          ; $5d64: $07
    ld b, $06                                     ; $5d65: $06 $06
    ld b, $05                                     ; $5d67: $06 $05
    add hl, bc                                    ; $5d69: $09
    add hl, bc                                    ; $5d6a: $09
    add hl, bc                                    ; $5d6b: $09
    ld b, $69                                     ; $5d6c: $06 $69
    inc hl                                        ; $5d6e: $23
    ld l, d                                       ; $5d6f: $6a
    inc h                                         ; $5d70: $24
    jr @+$28                                      ; $5d71: $18 $26

    cpl                                           ; $5d73: $2f
    jr z, jr_084_5dae                             ; $5d74: $28 $38

    add hl, sp                                    ; $5d76: $39
    ld l, e                                       ; $5d77: $6b
    ld b, l                                       ; $5d78: $45

jr_084_5d79:
    inc a                                         ; $5d79: $3c
    dec a                                         ; $5d7a: $3d
    ld a, $3f                                     ; $5d7b: $3e $3f
    inc bc                                        ; $5d7d: $03
    rlca                                          ; $5d7e: $07
    dec b                                         ; $5d7f: $05
    rlca                                          ; $5d80: $07
    rlca                                          ; $5d81: $07
    rlca                                          ; $5d82: $07
    ld b, $07                                     ; $5d83: $06 $07
    dec b                                         ; $5d85: $05
    ld b, $06                                     ; $5d86: $06 $06
    rlca                                          ; $5d88: $07
    ld b, $05                                     ; $5d89: $06 $05
    ld b, $07                                     ; $5d8b: $06 $07
    xor e                                         ; $5d8d: $ab

jr_084_5d8e:
    xor h                                         ; $5d8e: $ac
    xor l                                         ; $5d8f: $ad
    ld b, e                                       ; $5d90: $43
    xor [hl]                                      ; $5d91: $ae
    xor a                                         ; $5d92: $af
    or b                                          ; $5d93: $b0
    db $ed                                        ; $5d94: $ed
    or c                                          ; $5d95: $b1
    or d                                          ; $5d96: $b2
    or e                                          ; $5d97: $b3
    ld a, [$b5b4]                                 ; $5d98: $fa $b4 $b5
    or [hl]                                       ; $5d9b: $b6
    cp $09                                        ; $5d9c: $fe $09
    add hl, bc                                    ; $5d9e: $09
    add hl, bc                                    ; $5d9f: $09
    rlca                                          ; $5da0: $07
    add hl, bc                                    ; $5da1: $09
    add hl, bc                                    ; $5da2: $09
    add hl, bc                                    ; $5da3: $09
    rlca                                          ; $5da4: $07
    add hl, bc                                    ; $5da5: $09
    add hl, bc                                    ; $5da6: $09
    add hl, bc                                    ; $5da7: $09
    rlca                                          ; $5da8: $07
    add hl, bc                                    ; $5da9: $09
    add hl, bc                                    ; $5daa: $09
    add hl, bc                                    ; $5dab: $09
    rlca                                          ; $5dac: $07
    ld b, b                                       ; $5dad: $40

jr_084_5dae:
    ld b, c                                       ; $5dae: $41
    ld b, d                                       ; $5daf: $42
    ld b, e                                       ; $5db0: $43
    ld [$eceb], a                                 ; $5db1: $ea $eb $ec
    db $ed                                        ; $5db4: $ed
    xor $ef                                       ; $5db5: $ee $ef
    ld d, d                                       ; $5db7: $52
    ld a, [$fcf2]                                 ; $5db8: $fa $f2 $fc
    ld d, h                                       ; $5dbb: $54
    cp $06                                        ; $5dbc: $fe $06
    dec b                                         ; $5dbe: $05
    ld b, $07                                     ; $5dbf: $06 $07
    ld b, $05                                     ; $5dc1: $06 $05
    ld b, $07                                     ; $5dc3: $06 $07
    ld b, $06                                     ; $5dc5: $06 $06
    dec b                                         ; $5dc7: $05
    rlca                                          ; $5dc8: $07
    ld b, $05                                     ; $5dc9: $06 $05
    ld b, $07                                     ; $5dcb: $06 $07
    pop de                                        ; $5dcd: $d1
    jr nc, jr_084_5e02                            ; $5dce: $30 $32

    inc sp                                        ; $5dd0: $33
    pop de                                        ; $5dd1: $d1
    jr nc, jr_084_5e08                            ; $5dd2: $30 $34

    dec [hl]                                      ; $5dd4: $35
    pop de                                        ; $5dd5: $d1
    jr nc, jr_084_5e0e                            ; $5dd6: $30 $36

    scf                                           ; $5dd8: $37
    adc d                                         ; $5dd9: $8a
    jr nc, @+$31                                  ; $5dda: $30 $2f

    jr z, jr_084_5d5e                             ; $5ddc: $28 $80

    add b                                         ; $5dde: $80
    ld bc, $8001                                  ; $5ddf: $01 $01 $80
    add b                                         ; $5de2: $80
    ld bc, $8001                                  ; $5de3: $01 $01 $80
    add b                                         ; $5de6: $80
    ld bc, $8801                                  ; $5de7: $01 $01 $88
    add b                                         ; $5dea: $80
    rlca                                          ; $5deb: $07
    rlca                                          ; $5dec: $07
    ld h, e                                       ; $5ded: $63
    inc l                                         ; $5dee: $2c
    ld e, d                                       ; $5def: $5a
    ld e, e                                       ; $5df0: $5b
    ld h, h                                       ; $5df1: $64
    ld l, $5e                                     ; $5df2: $2e $5e
    ld e, a                                       ; $5df4: $5f
    inc d                                         ; $5df5: $14
    inc hl                                        ; $5df6: $23
    ld l, d                                       ; $5df7: $6a
    inc h                                         ; $5df8: $24
    jr jr_084_5e21                                ; $5df9: $18 $26

    cpl                                           ; $5dfb: $2f
    jr z, jr_084_5e02                             ; $5dfc: $28 $04

    inc bc                                        ; $5dfe: $03
    inc b                                         ; $5dff: $04
    inc b                                         ; $5e00: $04
    inc bc                                        ; $5e01: $03

jr_084_5e02:
    inc b                                         ; $5e02: $04
    inc bc                                        ; $5e03: $03
    inc bc                                        ; $5e04: $03
    rlca                                          ; $5e05: $07
    rlca                                          ; $5e06: $07
    rlca                                          ; $5e07: $07

jr_084_5e08:
    rlca                                          ; $5e08: $07
    rlca                                          ; $5e09: $07
    ld b, $05                                     ; $5e0a: $06 $05
    dec b                                         ; $5e0c: $05
    ld e, h                                       ; $5e0d: $5c

jr_084_5e0e:
    ld e, l                                       ; $5e0e: $5d
    ld h, e                                       ; $5e0f: $63
    inc l                                         ; $5e10: $2c
    ld h, b                                       ; $5e11: $60
    ld h, c                                       ; $5e12: $61
    ld h, h                                       ; $5e13: $64
    ld l, $14                                     ; $5e14: $2e $14
    inc hl                                        ; $5e16: $23
    ld l, d                                       ; $5e17: $6a
    inc h                                         ; $5e18: $24
    jr jr_084_5e41                                ; $5e19: $18 $26

    cpl                                           ; $5e1b: $2f
    jr z, jr_084_5e22                             ; $5e1c: $28 $04

    inc bc                                        ; $5e1e: $03
    inc bc                                        ; $5e1f: $03
    inc b                                         ; $5e20: $04

jr_084_5e21:
    inc bc                                        ; $5e21: $03

jr_084_5e22:
    inc b                                         ; $5e22: $04
    inc bc                                        ; $5e23: $03
    inc bc                                        ; $5e24: $03
    rlca                                          ; $5e25: $07
    rlca                                          ; $5e26: $07
    rlca                                          ; $5e27: $07
    rlca                                          ; $5e28: $07
    ld b, $06                                     ; $5e29: $06 $06
    dec b                                         ; $5e2b: $05
    ld b, $5a                                     ; $5e2c: $06 $5a
    ld e, e                                       ; $5e2e: $5b
    ld e, h                                       ; $5e2f: $5c
    ld h, a                                       ; $5e30: $67
    ld e, [hl]                                    ; $5e31: $5e
    ld e, a                                       ; $5e32: $5f
    ld h, b                                       ; $5e33: $60
    ld l, c                                       ; $5e34: $69
    inc d                                         ; $5e35: $14
    inc hl                                        ; $5e36: $23
    ld l, d                                       ; $5e37: $6a
    inc h                                         ; $5e38: $24
    jr @+$28                                      ; $5e39: $18 $26

    cpl                                           ; $5e3b: $2f
    jr z, jr_084_5e41                             ; $5e3c: $28 $03

    inc b                                         ; $5e3e: $04
    inc bc                                        ; $5e3f: $03
    inc bc                                        ; $5e40: $03

jr_084_5e41:
    inc bc                                        ; $5e41: $03
    inc bc                                        ; $5e42: $03
    inc b                                         ; $5e43: $04
    inc bc                                        ; $5e44: $03
    rlca                                          ; $5e45: $07
    rlca                                          ; $5e46: $07
    rlca                                          ; $5e47: $07
    rlca                                          ; $5e48: $07
    ld b, $06                                     ; $5e49: $06 $06
    ld b, $06                                     ; $5e4b: $06 $06
    adc d                                         ; $5e4d: $8a
    jp nc, Jump_084_456b                          ; $5e4e: $d2 $6b $45

    adc d                                         ; $5e51: $8a
    adc e                                         ; $5e52: $8b
    ld [$d18c], sp                                ; $5e53: $08 $8c $d1
    pop de                                        ; $5e56: $d1
    pop de                                        ; $5e57: $d1
    jp nc, $d1d1                                  ; $5e58: $d2 $d1 $d1

    pop de                                        ; $5e5b: $d1
    jp nc, $8088                                  ; $5e5c: $d2 $88 $80

    rlca                                          ; $5e5f: $07
    ld b, $88                                     ; $5e60: $06 $88
    adc b                                         ; $5e62: $88
    add b                                         ; $5e63: $80
    adc b                                         ; $5e64: $88
    add b                                         ; $5e65: $80
    add b                                         ; $5e66: $80
    add b                                         ; $5e67: $80
    add b                                         ; $5e68: $80
    add b                                         ; $5e69: $80
    add b                                         ; $5e6a: $80
    add b                                         ; $5e6b: $80
    add b                                         ; $5e6c: $80
    jr c, jr_084_5ea8                             ; $5e6d: $38 $39

    ld l, e                                       ; $5e6f: $6b
    ld b, l                                       ; $5e70: $45
    inc a                                         ; $5e71: $3c
    dec a                                         ; $5e72: $3d
    ld a, $3f                                     ; $5e73: $3e $3f
    ld b, b                                       ; $5e75: $40
    ld b, c                                       ; $5e76: $41
    ld b, d                                       ; $5e77: $42
    ld b, e                                       ; $5e78: $43
    ld [$eceb], a                                 ; $5e79: $ea $eb $ec
    db $ed                                        ; $5e7c: $ed
    ld b, $05                                     ; $5e7d: $06 $05
    ld b, $06                                     ; $5e7f: $06 $06
    ld b, $05                                     ; $5e81: $06 $05
    ld b, $06                                     ; $5e83: $06 $06
    ld b, $06                                     ; $5e85: $06 $06
    dec b                                         ; $5e87: $05
    dec b                                         ; $5e88: $05
    rlca                                          ; $5e89: $07
    ld b, $05                                     ; $5e8a: $06 $05
    ld b, $38                                     ; $5e8c: $06 $38
    add hl, sp                                    ; $5e8e: $39
    ld l, e                                       ; $5e8f: $6b
    ld b, l                                       ; $5e90: $45
    inc a                                         ; $5e91: $3c
    dec a                                         ; $5e92: $3d
    ld a, $3f                                     ; $5e93: $3e $3f
    ld b, b                                       ; $5e95: $40
    ld b, c                                       ; $5e96: $41
    ld b, d                                       ; $5e97: $42
    ld b, e                                       ; $5e98: $43
    ld [$eceb], a                                 ; $5e99: $ea $eb $ec
    db $ed                                        ; $5e9c: $ed
    dec b                                         ; $5e9d: $05
    dec b                                         ; $5e9e: $05
    ld b, $06                                     ; $5e9f: $06 $06
    dec b                                         ; $5ea1: $05
    ld b, $05                                     ; $5ea2: $06 $05
    ld b, $06                                     ; $5ea4: $06 $06
    ld b, $05                                     ; $5ea6: $06 $05

jr_084_5ea8:
    dec b                                         ; $5ea8: $05
    dec b                                         ; $5ea9: $05
    ld b, $05                                     ; $5eaa: $06 $05
    ld b, $38                                     ; $5eac: $06 $38
    add hl, sp                                    ; $5eae: $39
    ld l, e                                       ; $5eaf: $6b
    ld b, l                                       ; $5eb0: $45
    inc a                                         ; $5eb1: $3c
    dec a                                         ; $5eb2: $3d
    ld a, $3f                                     ; $5eb3: $3e $3f
    ld b, b                                       ; $5eb5: $40
    ld b, c                                       ; $5eb6: $41
    ld b, d                                       ; $5eb7: $42
    ld b, e                                       ; $5eb8: $43
    ld [$eceb], a                                 ; $5eb9: $ea $eb $ec
    db $ed                                        ; $5ebc: $ed
    ld b, $05                                     ; $5ebd: $06 $05
    ld b, $05                                     ; $5ebf: $06 $05
    ld b, $06                                     ; $5ec1: $06 $06
    dec b                                         ; $5ec3: $05
    dec b                                         ; $5ec4: $05
    ld b, $05                                     ; $5ec5: $06 $05
    dec b                                         ; $5ec7: $05
    dec b                                         ; $5ec8: $05
    dec b                                         ; $5ec9: $05
    ld b, $06                                     ; $5eca: $06 $06
    dec b                                         ; $5ecc: $05
    xor $ef                                       ; $5ecd: $ee $ef
    ld d, d                                       ; $5ecf: $52
    ld a, [$fcf2]                                 ; $5ed0: $fa $f2 $fc
    ld d, h                                       ; $5ed3: $54
    cp $0c                                        ; $5ed4: $fe $0c
    dec e                                         ; $5ed6: $1d
    ld h, [hl]                                    ; $5ed7: $66
    rra                                           ; $5ed8: $1f
    db $10                                        ; $5ed9: $10
    ld de, $2168                                  ; $5eda: $11 $68 $21
    rlca                                          ; $5edd: $07
    dec b                                         ; $5ede: $05
    ld b, $06                                     ; $5edf: $06 $06
    rlca                                          ; $5ee1: $07
    dec b                                         ; $5ee2: $05
    dec b                                         ; $5ee3: $05
    ld b, $07                                     ; $5ee4: $06 $07
    ld b, $06                                     ; $5ee6: $06 $06
    dec b                                         ; $5ee8: $05
    rlca                                          ; $5ee9: $07
    ld b, $06                                     ; $5eea: $06 $06
    ld b, $ee                                     ; $5eec: $06 $ee
    rst $28                                       ; $5eee: $ef
    ld d, d                                       ; $5eef: $52
    ld a, [$fcf2]                                 ; $5ef0: $fa $f2 $fc
    ld d, h                                       ; $5ef3: $54
    cp $0c                                        ; $5ef4: $fe $0c
    dec e                                         ; $5ef6: $1d
    ld h, [hl]                                    ; $5ef7: $66
    rra                                           ; $5ef8: $1f
    db $10                                        ; $5ef9: $10
    ld de, $2168                                  ; $5efa: $11 $68 $21
    dec b                                         ; $5efd: $05
    ld b, $05                                     ; $5efe: $06 $05
    ld b, $06                                     ; $5f00: $06 $06
    ld b, $06                                     ; $5f02: $06 $06
    ld b, $06                                     ; $5f04: $06 $06
    dec b                                         ; $5f06: $05
    dec b                                         ; $5f07: $05
    dec b                                         ; $5f08: $05
    dec b                                         ; $5f09: $05
    ld b, $06                                     ; $5f0a: $06 $06
    dec b                                         ; $5f0c: $05
    xor $ef                                       ; $5f0d: $ee $ef
    ld d, d                                       ; $5f0f: $52
    ld a, [$fcf2]                                 ; $5f10: $fa $f2 $fc
    ld d, h                                       ; $5f13: $54
    cp $0c                                        ; $5f14: $fe $0c
    dec e                                         ; $5f16: $1d
    ld h, [hl]                                    ; $5f17: $66
    rra                                           ; $5f18: $1f
    db $10                                        ; $5f19: $10
    ld de, $2168                                  ; $5f1a: $11 $68 $21
    ld b, $05                                     ; $5f1d: $06 $05
    ld b, $05                                     ; $5f1f: $06 $05
    ld b, $05                                     ; $5f21: $06 $05
    ld b, $05                                     ; $5f23: $06 $05
    dec b                                         ; $5f25: $05
    ld b, $06                                     ; $5f26: $06 $06
    dec b                                         ; $5f28: $05
    dec b                                         ; $5f29: $05
    ld b, $05                                     ; $5f2a: $06 $05
    ld b, $14                                     ; $5f2c: $06 $14
    inc hl                                        ; $5f2e: $23
    ld l, d                                       ; $5f2f: $6a
    inc h                                         ; $5f30: $24
    jr jr_084_5f59                                ; $5f31: $18 $26

    cpl                                           ; $5f33: $2f
    jr z, jr_084_5f6e                             ; $5f34: $28 $38

    add hl, sp                                    ; $5f36: $39
    ld l, e                                       ; $5f37: $6b
    ld b, l                                       ; $5f38: $45
    inc a                                         ; $5f39: $3c
    dec a                                         ; $5f3a: $3d
    ld a, $3f                                     ; $5f3b: $3e $3f
    rlca                                          ; $5f3d: $07
    dec b                                         ; $5f3e: $05
    ld b, $06                                     ; $5f3f: $06 $06
    rlca                                          ; $5f41: $07
    ld b, $05                                     ; $5f42: $06 $05
    dec b                                         ; $5f44: $05
    rlca                                          ; $5f45: $07
    ld b, $06                                     ; $5f46: $06 $06
    ld b, $07                                     ; $5f48: $06 $07
    dec b                                         ; $5f4a: $05
    ld b, $05                                     ; $5f4b: $06 $05
    inc d                                         ; $5f4d: $14
    inc hl                                        ; $5f4e: $23
    ld l, d                                       ; $5f4f: $6a
    inc h                                         ; $5f50: $24
    jr jr_084_5f79                                ; $5f51: $18 $26

    cpl                                           ; $5f53: $2f
    jr z, jr_084_5f8e                             ; $5f54: $28 $38

    add hl, sp                                    ; $5f56: $39
    ld l, e                                       ; $5f57: $6b
    ld b, l                                       ; $5f58: $45

jr_084_5f59:
    inc a                                         ; $5f59: $3c
    dec a                                         ; $5f5a: $3d
    ld a, $3f                                     ; $5f5b: $3e $3f
    dec b                                         ; $5f5d: $05
    ld b, $06                                     ; $5f5e: $06 $06
    ld b, $06                                     ; $5f60: $06 $06
    dec b                                         ; $5f62: $05
    ld b, $06                                     ; $5f63: $06 $06
    ld b, $05                                     ; $5f65: $06 $05
    ld b, $06                                     ; $5f67: $06 $06
    ld b, $06                                     ; $5f69: $06 $06
    dec b                                         ; $5f6b: $05
    dec b                                         ; $5f6c: $05
    inc d                                         ; $5f6d: $14

jr_084_5f6e:
    inc hl                                        ; $5f6e: $23
    ld l, d                                       ; $5f6f: $6a
    inc h                                         ; $5f70: $24
    jr jr_084_5f99                                ; $5f71: $18 $26

    cpl                                           ; $5f73: $2f
    jr z, jr_084_5fae                             ; $5f74: $28 $38

    add hl, sp                                    ; $5f76: $39
    ld l, e                                       ; $5f77: $6b
    ld b, l                                       ; $5f78: $45

jr_084_5f79:
    inc a                                         ; $5f79: $3c
    dec a                                         ; $5f7a: $3d
    ld a, $3f                                     ; $5f7b: $3e $3f
    ld b, $06                                     ; $5f7d: $06 $06
    ld b, $05                                     ; $5f7f: $06 $05
    ld b, $06                                     ; $5f81: $06 $06
    ld b, $06                                     ; $5f83: $06 $06
    ld b, $05                                     ; $5f85: $06 $05
    dec b                                         ; $5f87: $05
    ld b, $05                                     ; $5f88: $06 $05
    ld b, $06                                     ; $5f8a: $06 $06
    ld b, $0c                                     ; $5f8c: $06 $0c

jr_084_5f8e:
    dec e                                         ; $5f8e: $1d
    ld h, [hl]                                    ; $5f8f: $66
    ld d, l                                       ; $5f90: $55
    db $10                                        ; $5f91: $10
    ld de, $5568                                  ; $5f92: $11 $68 $55
    inc d                                         ; $5f95: $14
    inc hl                                        ; $5f96: $23
    ld l, d                                       ; $5f97: $6a
    ld d, l                                       ; $5f98: $55

jr_084_5f99:
    jr jr_084_5fc1                                ; $5f99: $18 $26

    cpl                                           ; $5f9b: $2f
    ld d, l                                       ; $5f9c: $55
    rlca                                          ; $5f9d: $07
    dec b                                         ; $5f9e: $05
    dec b                                         ; $5f9f: $05
    add d                                         ; $5fa0: $82
    rlca                                          ; $5fa1: $07
    ld b, $05                                     ; $5fa2: $06 $05
    add d                                         ; $5fa4: $82
    rlca                                          ; $5fa5: $07
    ld b, $05                                     ; $5fa6: $06 $05
    add d                                         ; $5fa8: $82
    ld b, $06                                     ; $5fa9: $06 $06
    dec b                                         ; $5fab: $05
    add d                                         ; $5fac: $82
    ld d, l                                       ; $5fad: $55

jr_084_5fae:
    ld h, h                                       ; $5fae: $64
    ld l, $5e                                     ; $5faf: $2e $5e
    ld d, l                                       ; $5fb1: $55
    ld de, $2168                                  ; $5fb2: $11 $68 $21
    ld d, l                                       ; $5fb5: $55
    inc hl                                        ; $5fb6: $23
    ld l, d                                       ; $5fb7: $6a
    inc h                                         ; $5fb8: $24
    cp c                                          ; $5fb9: $b9
    nop                                           ; $5fba: $00
    nop                                           ; $5fbb: $00
    nop                                           ; $5fbc: $00
    and d                                         ; $5fbd: $a2
    inc bc                                        ; $5fbe: $03
    inc b                                         ; $5fbf: $04
    inc bc                                        ; $5fc0: $03

jr_084_5fc1:
    and d                                         ; $5fc1: $a2
    rlca                                          ; $5fc2: $07
    rlca                                          ; $5fc3: $07
    rlca                                          ; $5fc4: $07
    and d                                         ; $5fc5: $a2
    rlca                                          ; $5fc6: $07
    ld b, $05                                     ; $5fc7: $06 $05
    adc d                                         ; $5fc9: $8a
    add d                                         ; $5fca: $82
    add d                                         ; $5fcb: $82
    add d                                         ; $5fcc: $82
    ld e, a                                       ; $5fcd: $5f
    ld h, b                                       ; $5fce: $60
    ld h, c                                       ; $5fcf: $61
    ld h, h                                       ; $5fd0: $64
    db $10                                        ; $5fd1: $10
    ld de, $2168                                  ; $5fd2: $11 $68 $21
    inc d                                         ; $5fd5: $14
    inc hl                                        ; $5fd6: $23
    ld l, d                                       ; $5fd7: $6a
    inc h                                         ; $5fd8: $24
    nop                                           ; $5fd9: $00
    rst $38                                       ; $5fda: $ff
    cpl                                           ; $5fdb: $2f
    jr z, jr_084_5fe2                             ; $5fdc: $28 $04

    inc b                                         ; $5fde: $04
    inc bc                                        ; $5fdf: $03
    inc b                                         ; $5fe0: $04
    rlca                                          ; $5fe1: $07

jr_084_5fe2:
    rlca                                          ; $5fe2: $07
    rlca                                          ; $5fe3: $07
    rlca                                          ; $5fe4: $07
    ld b, $06                                     ; $5fe5: $06 $06
    dec b                                         ; $5fe7: $05
    ld b, $82                                     ; $5fe8: $06 $82
    and d                                         ; $5fea: $a2
    ld b, $05                                     ; $5feb: $06 $05
    ld l, $55                                     ; $5fed: $2e $55
    ld d, l                                       ; $5fef: $55
    rra                                           ; $5ff0: $1f
    db $10                                        ; $5ff1: $10
    ld bc, $2101                                  ; $5ff2: $01 $01 $21
    inc d                                         ; $5ff5: $14
    inc bc                                        ; $5ff6: $03
    ld l, a                                       ; $5ff7: $6f
    inc h                                         ; $5ff8: $24
    jr jr_084_6000                                ; $5ff9: $18 $05

    ld [hl], b                                    ; $5ffb: $70
    jr z, jr_084_6001                             ; $5ffc: $28 $03

    add d                                         ; $5ffe: $82
    and d                                         ; $5fff: $a2

jr_084_6000:
    rlca                                          ; $6000: $07

jr_084_6001:
    rlca                                          ; $6001: $07
    add d                                         ; $6002: $82
    and d                                         ; $6003: $a2
    rlca                                          ; $6004: $07
    dec b                                         ; $6005: $05
    inc b                                         ; $6006: $04
    inc bc                                        ; $6007: $03
    rlca                                          ; $6008: $07
    dec b                                         ; $6009: $05
    inc bc                                        ; $600a: $03
    inc bc                                        ; $600b: $03
    rlca                                          ; $600c: $07
    jr c, jr_084_6048                             ; $600d: $38 $39

    ld l, e                                       ; $600f: $6b
    ld d, l                                       ; $6010: $55
    inc a                                         ; $6011: $3c
    dec a                                         ; $6012: $3d
    ld a, $55                                     ; $6013: $3e $55
    ld b, b                                       ; $6015: $40
    ld b, c                                       ; $6016: $41
    ld b, d                                       ; $6017: $42
    ld d, l                                       ; $6018: $55
    ld [$eceb], a                                 ; $6019: $ea $eb $ec
    ld d, l                                       ; $601c: $55
    dec b                                         ; $601d: $05
    dec b                                         ; $601e: $05
    dec b                                         ; $601f: $05
    add d                                         ; $6020: $82
    ld b, $06                                     ; $6021: $06 $06
    ld b, $82                                     ; $6023: $06 $82
    ld b, $06                                     ; $6025: $06 $06
    dec b                                         ; $6027: $05
    add d                                         ; $6028: $82
    ld b, $06                                     ; $6029: $06 $06
    dec b                                         ; $602b: $05
    add d                                         ; $602c: $82
    ld l, [hl]                                    ; $602d: $6e
    ld [bc], a                                    ; $602e: $02
    ld [bc], a                                    ; $602f: $02
    ld [bc], a                                    ; $6030: $02
    ld d, l                                       ; $6031: $55
    inc b                                         ; $6032: $04
    ld b, a                                       ; $6033: $47
    ld c, b                                       ; $6034: $48
    ld d, l                                       ; $6035: $55
    ld b, $4b                                     ; $6036: $06 $4b
    ld c, h                                       ; $6038: $4c
    ld d, l                                       ; $6039: $55
    ld a, [hl+]                                   ; $603a: $2a
    ld d, [hl]                                    ; $603b: $56
    ld d, a                                       ; $603c: $57
    add d                                         ; $603d: $82
    add d                                         ; $603e: $82
    add d                                         ; $603f: $82
    add d                                         ; $6040: $82
    and d                                         ; $6041: $a2
    add e                                         ; $6042: $83
    add h                                         ; $6043: $84
    add e                                         ; $6044: $83
    and d                                         ; $6045: $a2
    inc bc                                        ; $6046: $03
    inc b                                         ; $6047: $04

jr_084_6048:
    inc bc                                        ; $6048: $03
    and d                                         ; $6049: $a2
    inc b                                         ; $604a: $04
    inc bc                                        ; $604b: $03
    inc b                                         ; $604c: $04
    ld [bc], a                                    ; $604d: $02
    ld bc, $456b                                  ; $604e: $01 $6b $45
    ld c, c                                       ; $6051: $49
    ld d, c                                       ; $6052: $51
    ld a, $3f                                     ; $6053: $3e $3f
    ld c, l                                       ; $6055: $4d
    ld d, e                                       ; $6056: $53
    ld b, d                                       ; $6057: $42
    ld b, e                                       ; $6058: $43
    ld e, b                                       ; $6059: $58
    ld h, l                                       ; $605a: $65
    db $ec                                        ; $605b: $ec
    db $ed                                        ; $605c: $ed
    add d                                         ; $605d: $82
    and d                                         ; $605e: $a2
    ld b, $05                                     ; $605f: $06 $05
    add e                                         ; $6061: $83
    add h                                         ; $6062: $84
    ld b, $06                                     ; $6063: $06 $06
    inc b                                         ; $6065: $04
    inc bc                                        ; $6066: $03
    rlca                                          ; $6067: $07
    ld b, $03                                     ; $6068: $06 $03
    inc bc                                        ; $606a: $03
    rlca                                          ; $606b: $07
    ld b, $38                                     ; $606c: $06 $38
    add hl, hl                                    ; $606e: $29
    and d                                         ; $606f: $a2
    ld b, l                                       ; $6070: $45
    inc a                                         ; $6071: $3c
    dec hl                                        ; $6072: $2b
    and e                                         ; $6073: $a3
    ccf                                           ; $6074: $3f
    ld b, b                                       ; $6075: $40
    dec l                                         ; $6076: $2d
    and h                                         ; $6077: $a4
    ld b, e                                       ; $6078: $43
    ld [$eceb], a                                 ; $6079: $ea $eb $ec
    db $ed                                        ; $607c: $ed
    ld b, $03                                     ; $607d: $06 $03
    inc c                                         ; $607f: $0c
    rlca                                          ; $6080: $07
    ld b, $03                                     ; $6081: $06 $03
    inc c                                         ; $6083: $0c
    rlca                                          ; $6084: $07
    dec b                                         ; $6085: $05
    inc b                                         ; $6086: $04
    dec bc                                        ; $6087: $0b
    rlca                                          ; $6088: $07
    ld b, $07                                     ; $6089: $06 $07
    rlca                                          ; $608b: $07
    rlca                                          ; $608c: $07
    xor $ef                                       ; $608d: $ee $ef
    ld d, d                                       ; $608f: $52
    ld d, l                                       ; $6090: $55
    ld a, [c]                                     ; $6091: $f2
    db $fc                                        ; $6092: $fc
    ld d, h                                       ; $6093: $54
    ld d, l                                       ; $6094: $55
    inc c                                         ; $6095: $0c
    dec e                                         ; $6096: $1d
    ld h, [hl]                                    ; $6097: $66
    ld d, l                                       ; $6098: $55
    db $10                                        ; $6099: $10
    ld de, $5568                                  ; $609a: $11 $68 $55
    ld b, $05                                     ; $609d: $06 $05
    ld b, $82                                     ; $609f: $06 $82
    dec b                                         ; $60a1: $05
    ld b, $06                                     ; $60a2: $06 $06
    add d                                         ; $60a4: $82
    ld b, $06                                     ; $60a5: $06 $06
    ld b, $82                                     ; $60a7: $06 $82
    ld b, $05                                     ; $60a9: $06 $05
    dec b                                         ; $60ab: $05
    add d                                         ; $60ac: $82
    ld d, l                                       ; $60ad: $55
    inc l                                         ; $60ae: $2c
    ld e, d                                       ; $60af: $5a
    ld e, e                                       ; $60b0: $5b
    ld d, l                                       ; $60b1: $55
    ld l, $5e                                     ; $60b2: $2e $5e
    ld e, a                                       ; $60b4: $5f
    ld d, l                                       ; $60b5: $55
    dec e                                         ; $60b6: $1d
    ld h, [hl]                                    ; $60b7: $66
    rra                                           ; $60b8: $1f
    ld d, l                                       ; $60b9: $55
    ld de, $2168                                  ; $60ba: $11 $68 $21
    and d                                         ; $60bd: $a2
    inc bc                                        ; $60be: $03
    inc b                                         ; $60bf: $04
    inc bc                                        ; $60c0: $03
    and d                                         ; $60c1: $a2
    inc b                                         ; $60c2: $04
    inc bc                                        ; $60c3: $03
    inc b                                         ; $60c4: $04
    and d                                         ; $60c5: $a2
    rlca                                          ; $60c6: $07
    rlca                                          ; $60c7: $07
    rlca                                          ; $60c8: $07
    and d                                         ; $60c9: $a2
    rlca                                          ; $60ca: $07
    ld b, $06                                     ; $60cb: $06 $06
    ld e, h                                       ; $60cd: $5c
    ld h, a                                       ; $60ce: $67
    ld d, d                                       ; $60cf: $52
    ld a, [$6960]                                 ; $60d0: $fa $60 $69
    ld d, h                                       ; $60d3: $54
    cp $0c                                        ; $60d4: $fe $0c
    dec e                                         ; $60d6: $1d
    ld h, [hl]                                    ; $60d7: $66
    rra                                           ; $60d8: $1f
    db $10                                        ; $60d9: $10
    ld de, $2168                                  ; $60da: $11 $68 $21
    inc b                                         ; $60dd: $04
    inc bc                                        ; $60de: $03
    rlca                                          ; $60df: $07
    dec b                                         ; $60e0: $05
    inc b                                         ; $60e1: $04
    inc b                                         ; $60e2: $04
    rlca                                          ; $60e3: $07
    ld b, $07                                     ; $60e4: $06 $07
    rlca                                          ; $60e6: $07
    rlca                                          ; $60e7: $07
    ld b, $05                                     ; $60e8: $06 $05
    dec b                                         ; $60ea: $05
    dec b                                         ; $60eb: $05
    ld b, $ee                                     ; $60ec: $06 $ee
    rst $28                                       ; $60ee: $ef
    ld d, d                                       ; $60ef: $52
    ld a, [$fcf2]                                 ; $60f0: $fa $f2 $fc
    ld d, h                                       ; $60f3: $54
    cp $0c                                        ; $60f4: $fe $0c
    dec e                                         ; $60f6: $1d
    ld h, [hl]                                    ; $60f7: $66
    rra                                           ; $60f8: $1f
    db $10                                        ; $60f9: $10
    ld de, $2168                                  ; $60fa: $11 $68 $21
    ld b, $06                                     ; $60fd: $06 $06
    dec b                                         ; $60ff: $05
    dec b                                         ; $6100: $05
    ld b, $05                                     ; $6101: $06 $05
    dec b                                         ; $6103: $05
    ld b, $06                                     ; $6104: $06 $06
    dec b                                         ; $6106: $05
    ld b, $06                                     ; $6107: $06 $06
    dec b                                         ; $6109: $05
    ld b, $06                                     ; $610a: $06 $06
    ld b, $14                                     ; $610c: $06 $14
    inc hl                                        ; $610e: $23
    ld l, d                                       ; $610f: $6a
    ld d, l                                       ; $6110: $55
    jr jr_084_6139                                ; $6111: $18 $26

    cpl                                           ; $6113: $2f
    ld bc, $3938                                  ; $6114: $01 $38 $39
    ld l, e                                       ; $6117: $6b
    inc bc                                        ; $6118: $03
    inc a                                         ; $6119: $3c
    dec a                                         ; $611a: $3d
    ld a, $05                                     ; $611b: $3e $05
    ld b, $05                                     ; $611d: $06 $05
    ld b, $82                                     ; $611f: $06 $82
    ld b, $06                                     ; $6121: $06 $06
    ld b, $82                                     ; $6123: $06 $82
    ld b, $06                                     ; $6125: $06 $06
    dec b                                         ; $6127: $05
    add h                                         ; $6128: $84
    dec b                                         ; $6129: $05
    dec b                                         ; $612a: $05
    ld b, $04                                     ; $612b: $06 $04
    cp c                                          ; $612d: $b9
    nop                                           ; $612e: $00
    nop                                           ; $612f: $00
    nop                                           ; $6130: $00
    ld [bc], a                                    ; $6131: $02
    ld [bc], a                                    ; $6132: $02
    ld [bc], a                                    ; $6133: $02
    ld [bc], a                                    ; $6134: $02
    inc b                                         ; $6135: $04
    ld b, a                                       ; $6136: $47
    ld c, b                                       ; $6137: $48
    ld c, c                                       ; $6138: $49

jr_084_6139:
    ld b, $4b                                     ; $6139: $06 $4b
    ld c, h                                       ; $613b: $4c
    ld c, l                                       ; $613c: $4d
    adc d                                         ; $613d: $8a
    add d                                         ; $613e: $82
    add d                                         ; $613f: $82
    add d                                         ; $6140: $82
    add d                                         ; $6141: $82
    add d                                         ; $6142: $82
    add d                                         ; $6143: $82
    add d                                         ; $6144: $82
    add h                                         ; $6145: $84
    add e                                         ; $6146: $83
    add h                                         ; $6147: $84
    add e                                         ; $6148: $83
    inc bc                                        ; $6149: $03
    inc b                                         ; $614a: $04
    inc bc                                        ; $614b: $03
    inc bc                                        ; $614c: $03
    nop                                           ; $614d: $00
    nop                                           ; $614e: $00
    nop                                           ; $614f: $00
    nop                                           ; $6150: $00
    ld [bc], a                                    ; $6151: $02
    ld [bc], a                                    ; $6152: $02
    ld [bc], a                                    ; $6153: $02
    ld [bc], a                                    ; $6154: $02
    ld c, d                                       ; $6155: $4a
    ld c, a                                       ; $6156: $4f
    inc b                                         ; $6157: $04
    ld b, a                                       ; $6158: $47
    ld c, [hl]                                    ; $6159: $4e
    ld d, b                                       ; $615a: $50
    ld b, $4b                                     ; $615b: $06 $4b
    add d                                         ; $615d: $82
    add d                                         ; $615e: $82
    add d                                         ; $615f: $82
    add d                                         ; $6160: $82
    add d                                         ; $6161: $82
    add d                                         ; $6162: $82
    add d                                         ; $6163: $82
    add d                                         ; $6164: $82
    add e                                         ; $6165: $83
    add h                                         ; $6166: $84
    add e                                         ; $6167: $83
    add e                                         ; $6168: $83
    inc bc                                        ; $6169: $03
    inc b                                         ; $616a: $04
    inc b                                         ; $616b: $04
    inc bc                                        ; $616c: $03
    nop                                           ; $616d: $00
    nop                                           ; $616e: $00
    rst $38                                       ; $616f: $ff
    inc h                                         ; $6170: $24
    ld [bc], a                                    ; $6171: $02
    ld [bc], a                                    ; $6172: $02
    ld bc, $4828                                  ; $6173: $01 $28 $48
    ld c, c                                       ; $6176: $49
    ld d, c                                       ; $6177: $51
    ld b, l                                       ; $6178: $45
    ld c, h                                       ; $6179: $4c
    ld c, l                                       ; $617a: $4d
    ld d, e                                       ; $617b: $53
    ccf                                           ; $617c: $3f
    add d                                         ; $617d: $82
    add d                                         ; $617e: $82
    and d                                         ; $617f: $a2
    ld b, $82                                     ; $6180: $06 $82
    add d                                         ; $6182: $82
    and d                                         ; $6183: $a2
    dec b                                         ; $6184: $05
    add e                                         ; $6185: $83
    add h                                         ; $6186: $84
    add e                                         ; $6187: $83
    ld b, $03                                     ; $6188: $06 $03
    inc bc                                        ; $618a: $03
    inc b                                         ; $618b: $04
    rlca                                          ; $618c: $07
    inc c                                         ; $618d: $0c
    dec e                                         ; $618e: $1d
    dec l                                         ; $618f: $2d
    ld h, b                                       ; $6190: $60
    db $10                                        ; $6191: $10
    ld de, $2168                                  ; $6192: $11 $68 $21
    inc d                                         ; $6195: $14
    inc hl                                        ; $6196: $23
    ld l, d                                       ; $6197: $6a
    inc h                                         ; $6198: $24
    jr jr_084_61c1                                ; $6199: $18 $26

    cpl                                           ; $619b: $2f
    jr z, jr_084_61a4                             ; $619c: $28 $06

    ld b, $03                                     ; $619e: $06 $03
    inc b                                         ; $61a0: $04
    dec b                                         ; $61a1: $05
    ld b, $07                                     ; $61a2: $06 $07

jr_084_61a4:
    rlca                                          ; $61a4: $07
    ld b, $05                                     ; $61a5: $06 $05
    ld b, $06                                     ; $61a7: $06 $06
    ld b, $06                                     ; $61a9: $06 $06
    dec b                                         ; $61ab: $05
    ld b, $61                                     ; $61ac: $06 $61
    ld h, h                                       ; $61ae: $64
    ld l, $5e                                     ; $61af: $2e $5e
    db $10                                        ; $61b1: $10
    ld de, $2168                                  ; $61b2: $11 $68 $21
    inc d                                         ; $61b5: $14
    inc hl                                        ; $61b6: $23
    ld l, d                                       ; $61b7: $6a
    inc h                                         ; $61b8: $24
    jr @+$01                                      ; $61b9: $18 $ff

    nop                                           ; $61bb: $00
    nop                                           ; $61bc: $00
    inc bc                                        ; $61bd: $03
    inc b                                         ; $61be: $04
    inc bc                                        ; $61bf: $03
    inc bc                                        ; $61c0: $03

jr_084_61c1:
    rlca                                          ; $61c1: $07
    rlca                                          ; $61c2: $07
    rlca                                          ; $61c3: $07
    rlca                                          ; $61c4: $07
    ld b, $05                                     ; $61c5: $06 $05
    ld b, $05                                     ; $61c7: $06 $05
    ld b, $82                                     ; $61c9: $06 $82
    add d                                         ; $61cb: $82
    add d                                         ; $61cc: $82
    ld e, a                                       ; $61cd: $5f
    ld h, b                                       ; $61ce: $60
    ld d, l                                       ; $61cf: $55
    ld d, l                                       ; $61d0: $55
    db $10                                        ; $61d1: $10
    ld de, $5555                                  ; $61d2: $11 $55 $55
    inc d                                         ; $61d5: $14
    inc hl                                        ; $61d6: $23
    ld d, l                                       ; $61d7: $55
    ld d, l                                       ; $61d8: $55
    nop                                           ; $61d9: $00
    nop                                           ; $61da: $00
    cp c                                          ; $61db: $b9
    ld d, l                                       ; $61dc: $55
    inc b                                         ; $61dd: $04
    inc bc                                        ; $61de: $03
    add d                                         ; $61df: $82
    and d                                         ; $61e0: $a2
    rlca                                          ; $61e1: $07
    rlca                                          ; $61e2: $07
    add d                                         ; $61e3: $82
    and d                                         ; $61e4: $a2
    dec b                                         ; $61e5: $05
    ld b, $82                                     ; $61e6: $06 $82
    and d                                         ; $61e8: $a2
    add d                                         ; $61e9: $82
    add d                                         ; $61ea: $82
    xor d                                         ; $61eb: $aa
    and d                                         ; $61ec: $a2
    inc c                                         ; $61ed: $0c
    dec e                                         ; $61ee: $1d
    ld h, [hl]                                    ; $61ef: $66
    rra                                           ; $61f0: $1f
    db $10                                        ; $61f1: $10
    ld de, $2168                                  ; $61f2: $11 $68 $21
    inc d                                         ; $61f5: $14
    inc hl                                        ; $61f6: $23
    ld l, d                                       ; $61f7: $6a
    inc h                                         ; $61f8: $24
    jr jr_084_6221                                ; $61f9: $18 $26

    cpl                                           ; $61fb: $2f
    sbc l                                         ; $61fc: $9d
    rlca                                          ; $61fd: $07
    dec b                                         ; $61fe: $05
    ld b, $07                                     ; $61ff: $06 $07
    rlca                                          ; $6201: $07
    ld b, $06                                     ; $6202: $06 $06
    ld b, $07                                     ; $6204: $06 $07
    ld b, $06                                     ; $6206: $06 $06
    dec b                                         ; $6208: $05
    rlca                                          ; $6209: $07
    ld b, $05                                     ; $620a: $06 $05
    add hl, bc                                    ; $620c: $09
    jr c, jr_084_6248                             ; $620d: $38 $39

    ld l, e                                       ; $620f: $6b
    ld b, l                                       ; $6210: $45
    inc a                                         ; $6211: $3c
    dec a                                         ; $6212: $3d
    ld a, $3f                                     ; $6213: $3e $3f
    ld b, b                                       ; $6215: $40
    ld b, c                                       ; $6216: $41
    ld b, d                                       ; $6217: $42
    ld b, e                                       ; $6218: $43
    ld [$eceb], a                                 ; $6219: $ea $eb $ec
    db $ed                                        ; $621c: $ed
    ld b, $05                                     ; $621d: $06 $05
    ld b, $05                                     ; $621f: $06 $05

jr_084_6221:
    ld b, $05                                     ; $6221: $06 $05
    ld b, $06                                     ; $6223: $06 $06
    dec b                                         ; $6225: $05
    ld b, $05                                     ; $6226: $06 $05
    ld b, $05                                     ; $6228: $06 $05
    ld b, $06                                     ; $622a: $06 $06
    ld b, $38                                     ; $622c: $06 $38
    ld bc, $0202                                  ; $622e: $01 $02 $02
    inc a                                         ; $6231: $3c
    inc bc                                        ; $6232: $03
    inc b                                         ; $6233: $04
    ld b, a                                       ; $6234: $47
    ld b, b                                       ; $6235: $40
    dec b                                         ; $6236: $05
    ld b, $4b                                     ; $6237: $06 $4b
    ld [$2a29], a                                 ; $6239: $ea $29 $2a
    ld d, [hl]                                    ; $623c: $56
    ld b, $82                                     ; $623d: $06 $82
    add d                                         ; $623f: $82
    add d                                         ; $6240: $82
    dec b                                         ; $6241: $05
    add e                                         ; $6242: $83
    add e                                         ; $6243: $83
    add h                                         ; $6244: $84
    dec b                                         ; $6245: $05
    inc b                                         ; $6246: $04
    inc bc                                        ; $6247: $03

jr_084_6248:
    inc bc                                        ; $6248: $03
    dec b                                         ; $6249: $05
    inc bc                                        ; $624a: $03
    inc b                                         ; $624b: $04
    inc b                                         ; $624c: $04
    ld [bc], a                                    ; $624d: $02
    ld [bc], a                                    ; $624e: $02
    ld l, [hl]                                    ; $624f: $6e
    ld d, l                                       ; $6250: $55
    ld c, b                                       ; $6251: $48
    ld c, c                                       ; $6252: $49
    ld d, l                                       ; $6253: $55
    ld d, l                                       ; $6254: $55
    ld c, h                                       ; $6255: $4c
    ld c, l                                       ; $6256: $4d
    ld d, l                                       ; $6257: $55
    ld d, l                                       ; $6258: $55
    ld d, a                                       ; $6259: $57
    ld e, b                                       ; $625a: $58
    ld d, l                                       ; $625b: $55
    ld d, l                                       ; $625c: $55
    add d                                         ; $625d: $82
    add d                                         ; $625e: $82
    and d                                         ; $625f: $a2
    and d                                         ; $6260: $a2
    add e                                         ; $6261: $83
    add h                                         ; $6262: $84
    add d                                         ; $6263: $82
    and d                                         ; $6264: $a2
    inc b                                         ; $6265: $04
    inc bc                                        ; $6266: $03
    add d                                         ; $6267: $82
    and d                                         ; $6268: $a2
    inc b                                         ; $6269: $04
    inc b                                         ; $626a: $04
    add d                                         ; $626b: $82
    and d                                         ; $626c: $a2
    jr c, @+$3b                                   ; $626d: $38 $39

    ld l, e                                       ; $626f: $6b
    sbc [hl]                                      ; $6270: $9e
    inc a                                         ; $6271: $3c
    dec a                                         ; $6272: $3d
    ld a, $9f                                     ; $6273: $3e $9f
    ld b, b                                       ; $6275: $40
    ld b, c                                       ; $6276: $41
    ld b, d                                       ; $6277: $42
    and b                                         ; $6278: $a0
    ld [$eceb], a                                 ; $6279: $ea $eb $ec
    and c                                         ; $627c: $a1
    rlca                                          ; $627d: $07
    dec b                                         ; $627e: $05
    ld b, $09                                     ; $627f: $06 $09
    rlca                                          ; $6281: $07
    dec b                                         ; $6282: $05
    ld b, $09                                     ; $6283: $06 $09
    rlca                                          ; $6285: $07
    ld b, $05                                     ; $6286: $06 $05
    add hl, bc                                    ; $6288: $09
    rlca                                          ; $6289: $07
    ld b, $06                                     ; $628a: $06 $06
    add hl, bc                                    ; $628c: $09
    xor $ef                                       ; $628d: $ee $ef
    ld d, d                                       ; $628f: $52
    ld a, [$fcf2]                                 ; $6290: $fa $f2 $fc
    ld d, h                                       ; $6293: $54
    cp $0c                                        ; $6294: $fe $0c
    dec e                                         ; $6296: $1d
    ld h, [hl]                                    ; $6297: $66
    rra                                           ; $6298: $1f
    db $10                                        ; $6299: $10
    ld de, $2168                                  ; $629a: $11 $68 $21
    dec b                                         ; $629d: $05
    dec b                                         ; $629e: $05
    ld b, $06                                     ; $629f: $06 $06
    dec b                                         ; $62a1: $05
    ld b, $06                                     ; $62a2: $06 $06
    dec b                                         ; $62a4: $05
    ld b, $05                                     ; $62a5: $06 $05
    ld b, $06                                     ; $62a7: $06 $06
    ld b, $05                                     ; $62a9: $06 $05
    ld b, $05                                     ; $62ab: $06 $05
    xor $2b                                       ; $62ad: $ee $2b
    inc l                                         ; $62af: $2c
    ld e, d                                       ; $62b0: $5a
    ld a, [c]                                     ; $62b1: $f2
    dec l                                         ; $62b2: $2d
    ld l, $5e                                     ; $62b3: $2e $5e
    inc c                                         ; $62b5: $0c
    dec e                                         ; $62b6: $1d
    ld h, [hl]                                    ; $62b7: $66
    rra                                           ; $62b8: $1f
    db $10                                        ; $62b9: $10
    ld de, $2168                                  ; $62ba: $11 $68 $21
    ld b, $04                                     ; $62bd: $06 $04
    inc bc                                        ; $62bf: $03
    inc b                                         ; $62c0: $04
    ld b, $03                                     ; $62c1: $06 $03
    inc b                                         ; $62c3: $04
    inc bc                                        ; $62c4: $03
    ld b, $07                                     ; $62c5: $06 $07
    rlca                                          ; $62c7: $07
    rlca                                          ; $62c8: $07
    ld b, $06                                     ; $62c9: $06 $06
    dec b                                         ; $62cb: $05
    dec b                                         ; $62cc: $05
    ld e, e                                       ; $62cd: $5b
    ld e, h                                       ; $62ce: $5c
    ld d, l                                       ; $62cf: $55
    ld d, l                                       ; $62d0: $55
    ld e, a                                       ; $62d1: $5f
    ld h, b                                       ; $62d2: $60
    ld d, l                                       ; $62d3: $55
    ld d, l                                       ; $62d4: $55
    inc c                                         ; $62d5: $0c
    dec e                                         ; $62d6: $1d
    ld d, l                                       ; $62d7: $55
    ld d, l                                       ; $62d8: $55
    db $10                                        ; $62d9: $10
    ld de, $5555                                  ; $62da: $11 $55 $55
    inc bc                                        ; $62dd: $03
    inc bc                                        ; $62de: $03
    add d                                         ; $62df: $82
    and d                                         ; $62e0: $a2
    inc b                                         ; $62e1: $04
    inc bc                                        ; $62e2: $03
    add d                                         ; $62e3: $82
    and d                                         ; $62e4: $a2
    rlca                                          ; $62e5: $07
    rlca                                          ; $62e6: $07
    add d                                         ; $62e7: $82
    and d                                         ; $62e8: $a2
    ld b, $06                                     ; $62e9: $06 $06
    add d                                         ; $62eb: $82
    and d                                         ; $62ec: $a2
    xor $ef                                       ; $62ed: $ee $ef
    ld d, d                                       ; $62ef: $52
    ld a, [$fcf2]                                 ; $62f0: $fa $f2 $fc
    ld d, h                                       ; $62f3: $54
    cp $0c                                        ; $62f4: $fe $0c
    dec e                                         ; $62f6: $1d
    ld h, [hl]                                    ; $62f7: $66
    rra                                           ; $62f8: $1f
    db $10                                        ; $62f9: $10
    ld de, $2168                                  ; $62fa: $11 $68 $21
    rlca                                          ; $62fd: $07
    dec b                                         ; $62fe: $05
    ld b, $07                                     ; $62ff: $06 $07
    rlca                                          ; $6301: $07
    ld b, $05                                     ; $6302: $06 $05
    ld b, $07                                     ; $6304: $06 $07
    dec b                                         ; $6306: $05
    ld b, $05                                     ; $6307: $06 $05
    rlca                                          ; $6309: $07
    ld b, $05                                     ; $630a: $06 $05
    dec b                                         ; $630c: $05
    inc d                                         ; $630d: $14
    inc hl                                        ; $630e: $23
    rst $38                                       ; $630f: $ff
    nop                                           ; $6310: $00
    jr jr_084_6339                                ; $6311: $18 $26

    ld bc, $3802                                  ; $6313: $01 $02 $38
    add hl, sp                                    ; $6316: $39
    inc bc                                        ; $6317: $03
    inc b                                         ; $6318: $04
    inc a                                         ; $6319: $3c
    dec a                                         ; $631a: $3d
    dec b                                         ; $631b: $05
    ld b, $05                                     ; $631c: $06 $05
    dec b                                         ; $631e: $05
    add d                                         ; $631f: $82
    add d                                         ; $6320: $82
    dec b                                         ; $6321: $05
    ld b, $82                                     ; $6322: $06 $82
    add d                                         ; $6324: $82
    ld b, $06                                     ; $6325: $06 $06
    add h                                         ; $6327: $84
    add e                                         ; $6328: $83
    dec b                                         ; $6329: $05
    dec b                                         ; $632a: $05
    inc bc                                        ; $632b: $03
    inc b                                         ; $632c: $04
    nop                                           ; $632d: $00
    nop                                           ; $632e: $00
    nop                                           ; $632f: $00
    nop                                           ; $6330: $00
    ld [bc], a                                    ; $6331: $02
    ld [bc], a                                    ; $6332: $02
    ld [bc], a                                    ; $6333: $02
    ld [bc], a                                    ; $6334: $02
    ld b, a                                       ; $6335: $47
    ld c, b                                       ; $6336: $48
    ld c, c                                       ; $6337: $49
    ld c, d                                       ; $6338: $4a

jr_084_6339:
    ld c, e                                       ; $6339: $4b
    ld c, h                                       ; $633a: $4c
    ld c, l                                       ; $633b: $4d
    ld c, [hl]                                    ; $633c: $4e
    add d                                         ; $633d: $82
    add d                                         ; $633e: $82
    add d                                         ; $633f: $82
    add d                                         ; $6340: $82
    add d                                         ; $6341: $82
    add d                                         ; $6342: $82
    add d                                         ; $6343: $82
    add d                                         ; $6344: $82
    add e                                         ; $6345: $83
    add e                                         ; $6346: $83
    add h                                         ; $6347: $84
    add e                                         ; $6348: $83
    inc b                                         ; $6349: $04
    inc bc                                        ; $634a: $03
    inc bc                                        ; $634b: $03
    inc b                                         ; $634c: $04
    nop                                           ; $634d: $00
    nop                                           ; $634e: $00
    cp c                                          ; $634f: $b9
    ld d, l                                       ; $6350: $55
    ld [bc], a                                    ; $6351: $02
    ld [bc], a                                    ; $6352: $02
    ld [bc], a                                    ; $6353: $02
    ld bc, $044f                                  ; $6354: $01 $4f $04
    ld b, a                                       ; $6357: $47
    ld d, c                                       ; $6358: $51
    ld d, b                                       ; $6359: $50
    ld b, $4b                                     ; $635a: $06 $4b
    ld d, e                                       ; $635c: $53
    add d                                         ; $635d: $82
    add d                                         ; $635e: $82
    xor d                                         ; $635f: $aa
    and d                                         ; $6360: $a2
    add d                                         ; $6361: $82
    add d                                         ; $6362: $82
    add d                                         ; $6363: $82
    and d                                         ; $6364: $a2
    add h                                         ; $6365: $84
    add e                                         ; $6366: $83
    add e                                         ; $6367: $83
    add h                                         ; $6368: $84
    inc bc                                        ; $6369: $03
    inc bc                                        ; $636a: $03
    inc b                                         ; $636b: $04
    inc bc                                        ; $636c: $03
    inc d                                         ; $636d: $14
    inc hl                                        ; $636e: $23
    ld l, d                                       ; $636f: $6a
    inc h                                         ; $6370: $24
    jr jr_084_6399                                ; $6371: $18 $26

    cpl                                           ; $6373: $2f
    jr z, jr_084_63ae                             ; $6374: $28 $38

    add hl, sp                                    ; $6376: $39
    ld l, e                                       ; $6377: $6b
    ld b, l                                       ; $6378: $45
    inc a                                         ; $6379: $3c
    dec a                                         ; $637a: $3d
    ld a, $3f                                     ; $637b: $3e $3f
    rlca                                          ; $637d: $07
    ld b, $06                                     ; $637e: $06 $06
    ld b, $07                                     ; $6380: $06 $07
    dec b                                         ; $6382: $05
    ld b, $06                                     ; $6383: $06 $06
    rlca                                          ; $6385: $07
    ld b, $05                                     ; $6386: $06 $05
    ld b, $07                                     ; $6388: $06 $07
    ld b, $06                                     ; $638a: $06 $06
    dec b                                         ; $638c: $05
    inc c                                         ; $638d: $0c
    dec e                                         ; $638e: $1d
    ld h, [hl]                                    ; $638f: $66
    rra                                           ; $6390: $1f
    db $10                                        ; $6391: $10
    ld de, $2168                                  ; $6392: $11 $68 $21
    inc d                                         ; $6395: $14
    inc hl                                        ; $6396: $23
    ld l, d                                       ; $6397: $6a
    inc h                                         ; $6398: $24

jr_084_6399:
    xor b                                         ; $6399: $a8
    xor c                                         ; $639a: $a9
    xor d                                         ; $639b: $aa
    jr z, jr_084_63a5                             ; $639c: $28 $07

    rlca                                          ; $639e: $07
    rlca                                          ; $639f: $07
    rlca                                          ; $63a0: $07
    dec b                                         ; $63a1: $05
    dec b                                         ; $63a2: $05
    ld b, $06                                     ; $63a3: $06 $06

jr_084_63a5:
    ld b, $06                                     ; $63a5: $06 $06
    ld b, $06                                     ; $63a7: $06 $06
    add hl, bc                                    ; $63a9: $09
    add hl, bc                                    ; $63aa: $09
    add hl, bc                                    ; $63ab: $09
    ld b, $0c                                     ; $63ac: $06 $0c

jr_084_63ae:
    dec e                                         ; $63ae: $1d
    ld h, [hl]                                    ; $63af: $66
    rra                                           ; $63b0: $1f
    db $10                                        ; $63b1: $10
    ld de, $2168                                  ; $63b2: $11 $68 $21
    inc d                                         ; $63b5: $14
    inc hl                                        ; $63b6: $23
    ld l, d                                       ; $63b7: $6a
    inc h                                         ; $63b8: $24
    jr jr_084_63e1                                ; $63b9: $18 $26

    cpl                                           ; $63bb: $2f
    jr z, jr_084_63c3                             ; $63bc: $28 $05

    ld b, $06                                     ; $63be: $06 $06
    rlca                                          ; $63c0: $07
    ld b, $05                                     ; $63c1: $06 $05

jr_084_63c3:
    dec b                                         ; $63c3: $05
    rlca                                          ; $63c4: $07
    dec b                                         ; $63c5: $05
    ld b, $06                                     ; $63c6: $06 $06
    rlca                                          ; $63c8: $07
    ld b, $06                                     ; $63c9: $06 $06
    ld b, $07                                     ; $63cb: $06 $07
    xor e                                         ; $63cd: $ab
    xor h                                         ; $63ce: $ac
    xor l                                         ; $63cf: $ad
    ld b, l                                       ; $63d0: $45
    xor [hl]                                      ; $63d1: $ae
    xor a                                         ; $63d2: $af
    or b                                          ; $63d3: $b0
    ccf                                           ; $63d4: $3f
    or c                                          ; $63d5: $b1
    or d                                          ; $63d6: $b2
    or e                                          ; $63d7: $b3
    ld b, e                                       ; $63d8: $43
    or h                                          ; $63d9: $b4
    or l                                          ; $63da: $b5
    or [hl]                                       ; $63db: $b6
    db $ed                                        ; $63dc: $ed
    add hl, bc                                    ; $63dd: $09
    add hl, bc                                    ; $63de: $09
    add hl, bc                                    ; $63df: $09
    rlca                                          ; $63e0: $07

jr_084_63e1:
    add hl, bc                                    ; $63e1: $09
    add hl, bc                                    ; $63e2: $09
    add hl, bc                                    ; $63e3: $09
    rlca                                          ; $63e4: $07
    add hl, bc                                    ; $63e5: $09
    add hl, bc                                    ; $63e6: $09
    add hl, bc                                    ; $63e7: $09
    rlca                                          ; $63e8: $07
    add hl, bc                                    ; $63e9: $09
    add hl, bc                                    ; $63ea: $09
    add hl, bc                                    ; $63eb: $09
    rlca                                          ; $63ec: $07
    jr c, jr_084_6428                             ; $63ed: $38 $39

    ld l, e                                       ; $63ef: $6b
    ld b, l                                       ; $63f0: $45
    inc a                                         ; $63f1: $3c
    dec a                                         ; $63f2: $3d
    ld a, $3f                                     ; $63f3: $3e $3f
    ld b, b                                       ; $63f5: $40
    ld b, c                                       ; $63f6: $41
    ld b, d                                       ; $63f7: $42
    ld b, e                                       ; $63f8: $43
    ld [$eceb], a                                 ; $63f9: $ea $eb $ec
    db $ed                                        ; $63fc: $ed
    dec b                                         ; $63fd: $05
    dec b                                         ; $63fe: $05
    ld b, $07                                     ; $63ff: $06 $07
    ld b, $06                                     ; $6401: $06 $06
    dec b                                         ; $6403: $05
    rlca                                          ; $6404: $07
    dec b                                         ; $6405: $05
    ld b, $06                                     ; $6406: $06 $06
    rlca                                          ; $6408: $07
    ld b, $06                                     ; $6409: $06 $06
    dec b                                         ; $640b: $05
    rlca                                          ; $640c: $07
    xor $ef                                       ; $640d: $ee $ef
    ld d, d                                       ; $640f: $52
    ld a, [$fcf2]                                 ; $6410: $fa $f2 $fc
    ld d, h                                       ; $6413: $54
    cp $0c                                        ; $6414: $fe $0c
    dec e                                         ; $6416: $1d
    ld h, [hl]                                    ; $6417: $66
    rra                                           ; $6418: $1f
    db $10                                        ; $6419: $10
    ld de, $2168                                  ; $641a: $11 $68 $21
    rlca                                          ; $641d: $07
    rlca                                          ; $641e: $07
    rlca                                          ; $641f: $07
    rlca                                          ; $6420: $07
    dec b                                         ; $6421: $05
    dec b                                         ; $6422: $05
    ld b, $05                                     ; $6423: $06 $05
    ld b, $06                                     ; $6425: $06 $06
    dec b                                         ; $6427: $05

jr_084_6428:
    ld b, $06                                     ; $6428: $06 $06
    dec b                                         ; $642a: $05
    ld b, $06                                     ; $642b: $06 $06
    xor $ef                                       ; $642d: $ee $ef
    ld d, d                                       ; $642f: $52
    ld a, [$fcf2]                                 ; $6430: $fa $f2 $fc
    ld d, h                                       ; $6433: $54
    cp $0c                                        ; $6434: $fe $0c
    dec e                                         ; $6436: $1d
    ld h, [hl]                                    ; $6437: $66
    rra                                           ; $6438: $1f
    db $10                                        ; $6439: $10
    ld de, $2168                                  ; $643a: $11 $68 $21
    ld b, $05                                     ; $643d: $06 $05
    ld b, $07                                     ; $643f: $06 $07
    ld b, $05                                     ; $6441: $06 $05
    ld b, $07                                     ; $6443: $06 $07
    ld b, $06                                     ; $6445: $06 $06
    ld b, $07                                     ; $6447: $06 $07
    dec b                                         ; $6449: $05
    dec b                                         ; $644a: $05
    dec b                                         ; $644b: $05
    rlca                                          ; $644c: $07
    inc d                                         ; $644d: $14
    rst $38                                       ; $644e: $ff
    rst $38                                       ; $644f: $ff
    inc h                                         ; $6450: $24
    jr jr_084_64a8                                ; $6451: $18 $55

    ld d, l                                       ; $6453: $55
    jr z, jr_084_648e                             ; $6454: $28 $38

    ld d, l                                       ; $6456: $55
    ld d, l                                       ; $6457: $55
    ld b, l                                       ; $6458: $45
    inc a                                         ; $6459: $3c
    ld d, l                                       ; $645a: $55
    ld d, l                                       ; $645b: $55
    ccf                                           ; $645c: $3f
    ld b, $82                                     ; $645d: $06 $82
    and d                                         ; $645f: $a2
    dec b                                         ; $6460: $05
    dec b                                         ; $6461: $05
    add d                                         ; $6462: $82
    and d                                         ; $6463: $a2
    ld b, $06                                     ; $6464: $06 $06
    add d                                         ; $6466: $82
    and d                                         ; $6467: $a2
    ld b, $05                                     ; $6468: $06 $05
    add d                                         ; $646a: $82
    and d                                         ; $646b: $a2
    rlca                                          ; $646c: $07
    inc d                                         ; $646d: $14
    inc hl                                        ; $646e: $23
    ld l, d                                       ; $646f: $6a
    inc h                                         ; $6470: $24
    jr @+$28                                      ; $6471: $18 $26

    cpl                                           ; $6473: $2f
    jr z, jr_084_64ae                             ; $6474: $28 $38

    add hl, sp                                    ; $6476: $39
    ld l, e                                       ; $6477: $6b
    ld b, l                                       ; $6478: $45
    inc a                                         ; $6479: $3c
    dec a                                         ; $647a: $3d
    ld a, $3f                                     ; $647b: $3e $3f
    ld b, $06                                     ; $647d: $06 $06
    dec b                                         ; $647f: $05
    rlca                                          ; $6480: $07
    dec b                                         ; $6481: $05
    ld b, $06                                     ; $6482: $06 $06
    rlca                                          ; $6484: $07
    ld b, $05                                     ; $6485: $06 $05
    ld b, $07                                     ; $6487: $06 $07
    dec b                                         ; $6489: $05
    ld b, $05                                     ; $648a: $06 $05
    rlca                                          ; $648c: $07
    ld b, b                                       ; $648d: $40

jr_084_648e:
    ld b, c                                       ; $648e: $41
    ld b, d                                       ; $648f: $42
    ld b, e                                       ; $6490: $43
    ld [$eceb], a                                 ; $6491: $ea $eb $ec
    db $ed                                        ; $6494: $ed
    xor $ef                                       ; $6495: $ee $ef
    ld d, d                                       ; $6497: $52
    ld a, [$fcf2]                                 ; $6498: $fa $f2 $fc
    ld d, h                                       ; $649b: $54
    cp $07                                        ; $649c: $fe $07
    ld b, $05                                     ; $649e: $06 $05
    ld b, $07                                     ; $64a0: $06 $07
    ld b, $05                                     ; $64a2: $06 $05
    dec b                                         ; $64a4: $05
    rlca                                          ; $64a5: $07
    ld b, $06                                     ; $64a6: $06 $06

jr_084_64a8:
    dec b                                         ; $64a8: $05
    rlca                                          ; $64a9: $07
    ld b, $05                                     ; $64aa: $06 $05
    ld b, $40                                     ; $64ac: $06 $40

jr_084_64ae:
    ld b, c                                       ; $64ae: $41
    ld b, d                                       ; $64af: $42
    ld b, e                                       ; $64b0: $43
    ld [$eceb], a                                 ; $64b1: $ea $eb $ec
    db $ed                                        ; $64b4: $ed
    xor $ef                                       ; $64b5: $ee $ef
    ld d, d                                       ; $64b7: $52
    ld a, [$fcf2]                                 ; $64b8: $fa $f2 $fc
    ld d, h                                       ; $64bb: $54
    cp $05                                        ; $64bc: $fe $05
    dec b                                         ; $64be: $05
    dec b                                         ; $64bf: $05
    dec b                                         ; $64c0: $05
    ld b, $06                                     ; $64c1: $06 $06
    ld b, $06                                     ; $64c3: $06 $06
    ld b, $05                                     ; $64c5: $06 $05
    dec b                                         ; $64c7: $05
    dec b                                         ; $64c8: $05
    ld b, $06                                     ; $64c9: $06 $06
    dec b                                         ; $64cb: $05
    ld b, $40                                     ; $64cc: $06 $40
    ld b, c                                       ; $64ce: $41
    ld b, d                                       ; $64cf: $42
    ld b, e                                       ; $64d0: $43
    ld [$eceb], a                                 ; $64d1: $ea $eb $ec
    db $ed                                        ; $64d4: $ed
    xor $ef                                       ; $64d5: $ee $ef
    ld d, d                                       ; $64d7: $52
    ld a, [$fcf2]                                 ; $64d8: $fa $f2 $fc
    ld d, h                                       ; $64db: $54
    cp $06                                        ; $64dc: $fe $06
    dec b                                         ; $64de: $05
    dec b                                         ; $64df: $05
    ld b, $06                                     ; $64e0: $06 $06
    ld b, $05                                     ; $64e2: $06 $05
    ld b, $06                                     ; $64e4: $06 $06
    ld b, $06                                     ; $64e6: $06 $06
    dec b                                         ; $64e8: $05
    ld b, $06                                     ; $64e9: $06 $06
    dec b                                         ; $64eb: $05
    ld b, $0c                                     ; $64ec: $06 $0c
    dec e                                         ; $64ee: $1d
    ld h, [hl]                                    ; $64ef: $66
    rra                                           ; $64f0: $1f
    db $10                                        ; $64f1: $10
    ld de, $2168                                  ; $64f2: $11 $68 $21
    inc d                                         ; $64f5: $14
    inc hl                                        ; $64f6: $23
    ld l, d                                       ; $64f7: $6a
    inc h                                         ; $64f8: $24
    jr jr_084_6521                                ; $64f9: $18 $26

    cpl                                           ; $64fb: $2f
    jr z, jr_084_6505                             ; $64fc: $28 $07

    ld b, $06                                     ; $64fe: $06 $06
    ld b, $07                                     ; $6500: $06 $07
    dec b                                         ; $6502: $05
    ld b, $05                                     ; $6503: $06 $05

jr_084_6505:
    rlca                                          ; $6505: $07
    ld b, $06                                     ; $6506: $06 $06
    ld b, $07                                     ; $6508: $06 $07
    dec b                                         ; $650a: $05
    ld b, $05                                     ; $650b: $06 $05
    inc c                                         ; $650d: $0c
    dec e                                         ; $650e: $1d
    ld h, [hl]                                    ; $650f: $66
    rra                                           ; $6510: $1f
    db $10                                        ; $6511: $10
    ld de, $2168                                  ; $6512: $11 $68 $21
    inc d                                         ; $6515: $14
    inc hl                                        ; $6516: $23
    ld l, d                                       ; $6517: $6a
    inc h                                         ; $6518: $24
    jr jr_084_6541                                ; $6519: $18 $26

    cpl                                           ; $651b: $2f
    jr z, @+$07                                   ; $651c: $28 $05

    ld b, $06                                     ; $651e: $06 $06
    dec b                                         ; $6520: $05

jr_084_6521:
    dec b                                         ; $6521: $05
    ld b, $05                                     ; $6522: $06 $05
    ld b, $06                                     ; $6524: $06 $06
    dec b                                         ; $6526: $05
    dec b                                         ; $6527: $05
    ld b, $06                                     ; $6528: $06 $06
    ld b, $06                                     ; $652a: $06 $06
    dec b                                         ; $652c: $05
    inc c                                         ; $652d: $0c
    dec e                                         ; $652e: $1d
    ld h, [hl]                                    ; $652f: $66
    rra                                           ; $6530: $1f
    rst $38                                       ; $6531: $ff
    nop                                           ; $6532: $00
    nop                                           ; $6533: $00
    nop                                           ; $6534: $00
    ld bc, $0202                                  ; $6535: $01 $02 $02
    ld [bc], a                                    ; $6538: $02
    inc bc                                        ; $6539: $03
    inc b                                         ; $653a: $04
    ld b, a                                       ; $653b: $47
    ld c, b                                       ; $653c: $48
    ld b, $06                                     ; $653d: $06 $06
    ld b, $06                                     ; $653f: $06 $06

jr_084_6541:
    add d                                         ; $6541: $82
    add d                                         ; $6542: $82
    add d                                         ; $6543: $82
    add d                                         ; $6544: $82
    add d                                         ; $6545: $82
    add d                                         ; $6546: $82
    add d                                         ; $6547: $82
    add d                                         ; $6548: $82
    add h                                         ; $6549: $84
    add e                                         ; $654a: $83
    add h                                         ; $654b: $84
    add e                                         ; $654c: $83
    jr c, jr_084_6588                             ; $654d: $38 $39

    ld l, e                                       ; $654f: $6b
    ld b, l                                       ; $6550: $45
    inc a                                         ; $6551: $3c
    dec a                                         ; $6552: $3d
    ld a, $3f                                     ; $6553: $3e $3f
    ld b, b                                       ; $6555: $40
    ld b, c                                       ; $6556: $41
    ld b, d                                       ; $6557: $42
    ld b, e                                       ; $6558: $43
    ld [$eceb], a                                 ; $6559: $ea $eb $ec
    db $ed                                        ; $655c: $ed
    rlca                                          ; $655d: $07
    ld b, $05                                     ; $655e: $06 $05
    dec b                                         ; $6560: $05
    rlca                                          ; $6561: $07
    dec b                                         ; $6562: $05
    ld b, $06                                     ; $6563: $06 $06
    rlca                                          ; $6565: $07
    dec b                                         ; $6566: $05
    ld b, $05                                     ; $6567: $06 $05
    rlca                                          ; $6569: $07
    ld b, $05                                     ; $656a: $06 $05
    dec b                                         ; $656c: $05
    jr c, jr_084_65a8                             ; $656d: $38 $39

    ld l, e                                       ; $656f: $6b
    ld b, l                                       ; $6570: $45
    inc a                                         ; $6571: $3c
    dec a                                         ; $6572: $3d
    ld a, $3f                                     ; $6573: $3e $3f
    ld b, b                                       ; $6575: $40
    ld b, c                                       ; $6576: $41
    ld b, d                                       ; $6577: $42
    ld b, e                                       ; $6578: $43
    ld [$eceb], a                                 ; $6579: $ea $eb $ec
    db $ed                                        ; $657c: $ed
    dec b                                         ; $657d: $05
    ld b, $06                                     ; $657e: $06 $06
    ld b, $06                                     ; $6580: $06 $06
    dec b                                         ; $6582: $05
    ld b, $06                                     ; $6583: $06 $06
    dec b                                         ; $6585: $05
    ld b, $06                                     ; $6586: $06 $06

jr_084_6588:
    ld b, $06                                     ; $6588: $06 $06
    ld b, $05                                     ; $658a: $06 $05
    ld b, $05                                     ; $658c: $06 $05
    ld b, $4b                                     ; $658e: $06 $4b
    ld c, h                                       ; $6590: $4c
    add hl, hl                                    ; $6591: $29
    ld a, [hl+]                                   ; $6592: $2a
    ld d, [hl]                                    ; $6593: $56
    ld d, a                                       ; $6594: $57
    dec hl                                        ; $6595: $2b
    inc l                                         ; $6596: $2c
    ld e, d                                       ; $6597: $5a
    ld e, e                                       ; $6598: $5b
    dec l                                         ; $6599: $2d
    ld l, $5e                                     ; $659a: $2e $5e
    ld e, a                                       ; $659c: $5f
    inc bc                                        ; $659d: $03
    inc b                                         ; $659e: $04
    inc bc                                        ; $659f: $03
    inc b                                         ; $65a0: $04
    inc bc                                        ; $65a1: $03
    inc bc                                        ; $65a2: $03
    inc bc                                        ; $65a3: $03
    inc bc                                        ; $65a4: $03
    inc bc                                        ; $65a5: $03
    inc bc                                        ; $65a6: $03
    inc b                                         ; $65a7: $04

jr_084_65a8:
    inc b                                         ; $65a8: $04
    inc b                                         ; $65a9: $04
    inc bc                                        ; $65aa: $03
    inc bc                                        ; $65ab: $03
    inc b                                         ; $65ac: $04
    xor $ef                                       ; $65ad: $ee $ef
    ld d, d                                       ; $65af: $52
    ld a, [$fcf2]                                 ; $65b0: $fa $f2 $fc
    ld d, h                                       ; $65b3: $54
    cp $00                                        ; $65b4: $fe $00
    nop                                           ; $65b6: $00
    nop                                           ; $65b7: $00
    nop                                           ; $65b8: $00
    ld [bc], a                                    ; $65b9: $02
    ld [bc], a                                    ; $65ba: $02
    ld [bc], a                                    ; $65bb: $02
    ld [bc], a                                    ; $65bc: $02
    rlca                                          ; $65bd: $07
    ld b, $06                                     ; $65be: $06 $06
    ld b, $07                                     ; $65c0: $06 $07
    ld b, $05                                     ; $65c2: $06 $05
    ld b, $82                                     ; $65c4: $06 $82
    add d                                         ; $65c6: $82
    add d                                         ; $65c7: $82
    add d                                         ; $65c8: $82
    add d                                         ; $65c9: $82
    add d                                         ; $65ca: $82
    add d                                         ; $65cb: $82
    add d                                         ; $65cc: $82
    xor $ef                                       ; $65cd: $ee $ef
    ld d, d                                       ; $65cf: $52
    ld a, [$fcf2]                                 ; $65d0: $fa $f2 $fc
    ld d, h                                       ; $65d3: $54
    cp $00                                        ; $65d4: $fe $00
    nop                                           ; $65d6: $00
    nop                                           ; $65d7: $00
    nop                                           ; $65d8: $00
    ld [bc], a                                    ; $65d9: $02
    ld [bc], a                                    ; $65da: $02
    ld [bc], a                                    ; $65db: $02
    ld [bc], a                                    ; $65dc: $02
    dec b                                         ; $65dd: $05
    ld b, $05                                     ; $65de: $06 $05
    dec b                                         ; $65e0: $05
    dec b                                         ; $65e1: $05
    ld b, $06                                     ; $65e2: $06 $06
    dec b                                         ; $65e4: $05
    add d                                         ; $65e5: $82
    add d                                         ; $65e6: $82
    add d                                         ; $65e7: $82
    add d                                         ; $65e8: $82
    add d                                         ; $65e9: $82
    add d                                         ; $65ea: $82
    add d                                         ; $65eb: $82
    add d                                         ; $65ec: $82
    xor $ef                                       ; $65ed: $ee $ef
    ld d, d                                       ; $65ef: $52
    ld a, [$fcf2]                                 ; $65f0: $fa $f2 $fc
    ld d, h                                       ; $65f3: $54
    cp $00                                        ; $65f4: $fe $00
    nop                                           ; $65f6: $00
    nop                                           ; $65f7: $00
    rst $38                                       ; $65f8: $ff
    ld [bc], a                                    ; $65f9: $02
    ld [bc], a                                    ; $65fa: $02
    ld l, [hl]                                    ; $65fb: $6e
    ld d, l                                       ; $65fc: $55
    rlca                                          ; $65fd: $07
    rlca                                          ; $65fe: $07
    rlca                                          ; $65ff: $07
    rlca                                          ; $6600: $07
    dec b                                         ; $6601: $05
    ld b, $06                                     ; $6602: $06 $06
    ld b, $82                                     ; $6604: $06 $82
    add d                                         ; $6606: $82
    add d                                         ; $6607: $82
    and d                                         ; $6608: $a2
    add d                                         ; $6609: $82
    add d                                         ; $660a: $82
    and d                                         ; $660b: $a2
    and d                                         ; $660c: $a2
    ld b, b                                       ; $660d: $40
    ld b, c                                       ; $660e: $41
    ld b, d                                       ; $660f: $42
    add hl, hl                                    ; $6610: $29
    ld [$eceb], a                                 ; $6611: $ea $eb $ec
    dec hl                                        ; $6614: $2b
    xor $ef                                       ; $6615: $ee $ef
    ld d, d                                       ; $6617: $52
    dec l                                         ; $6618: $2d
    ld a, [c]                                     ; $6619: $f2
    db $fc                                        ; $661a: $fc
    ld d, h                                       ; $661b: $54
    cp $06                                        ; $661c: $fe $06
    dec b                                         ; $661e: $05
    ld b, $03                                     ; $661f: $06 $03
    ld b, $06                                     ; $6621: $06 $06
    dec b                                         ; $6623: $05
    inc bc                                        ; $6624: $03
    dec b                                         ; $6625: $05
    ld b, $06                                     ; $6626: $06 $06
    inc b                                         ; $6628: $04
    ld b, $05                                     ; $6629: $06 $05
    ld b, $07                                     ; $662b: $06 $07
    ld a, [hl+]                                   ; $662d: $2a
    ld d, [hl]                                    ; $662e: $56
    ld d, a                                       ; $662f: $57
    ld e, b                                       ; $6630: $58
    inc l                                         ; $6631: $2c
    ld e, d                                       ; $6632: $5a
    ld e, e                                       ; $6633: $5b
    ld e, h                                       ; $6634: $5c
    ld l, $5e                                     ; $6635: $2e $5e
    ld e, a                                       ; $6637: $5f
    ld h, b                                       ; $6638: $60
    ld a, [c]                                     ; $6639: $f2
    db $fc                                        ; $663a: $fc
    ld d, h                                       ; $663b: $54
    cp $04                                        ; $663c: $fe $04
    inc bc                                        ; $663e: $03
    inc b                                         ; $663f: $04
    inc b                                         ; $6640: $04
    inc bc                                        ; $6641: $03
    inc b                                         ; $6642: $04
    inc b                                         ; $6643: $04
    inc bc                                        ; $6644: $03
    inc bc                                        ; $6645: $03
    inc bc                                        ; $6646: $03
    inc b                                         ; $6647: $04
    inc bc                                        ; $6648: $03
    rlca                                          ; $6649: $07
    rlca                                          ; $664a: $07
    rlca                                          ; $664b: $07
    rlca                                          ; $664c: $07
    ld e, c                                       ; $664d: $59
    ld h, d                                       ; $664e: $62
    ld a, [hl+]                                   ; $664f: $2a
    ld d, [hl]                                    ; $6650: $56
    ld e, l                                       ; $6651: $5d
    ld h, e                                       ; $6652: $63
    inc l                                         ; $6653: $2c
    ld e, d                                       ; $6654: $5a
    ld h, c                                       ; $6655: $61
    ld h, h                                       ; $6656: $64
    ld l, $5e                                     ; $6657: $2e $5e
    ld a, [c]                                     ; $6659: $f2
    db $fc                                        ; $665a: $fc
    ld d, h                                       ; $665b: $54
    cp $03                                        ; $665c: $fe $03
    inc b                                         ; $665e: $04
    inc b                                         ; $665f: $04
    inc bc                                        ; $6660: $03
    inc bc                                        ; $6661: $03
    inc b                                         ; $6662: $04
    inc bc                                        ; $6663: $03
    inc b                                         ; $6664: $04
    inc bc                                        ; $6665: $03
    inc b                                         ; $6666: $04
    inc bc                                        ; $6667: $03
    inc bc                                        ; $6668: $03
    rlca                                          ; $6669: $07
    rlca                                          ; $666a: $07
    rlca                                          ; $666b: $07
    rlca                                          ; $666c: $07
    ld d, a                                       ; $666d: $57
    ld e, b                                       ; $666e: $58
    ld h, l                                       ; $666f: $65
    ld b, e                                       ; $6670: $43
    ld e, e                                       ; $6671: $5b
    ld e, h                                       ; $6672: $5c
    ld h, a                                       ; $6673: $67
    db $ed                                        ; $6674: $ed
    ld e, a                                       ; $6675: $5f
    ld h, b                                       ; $6676: $60
    ld l, c                                       ; $6677: $69
    ld a, [$fcf2]                                 ; $6678: $fa $f2 $fc
    ld d, h                                       ; $667b: $54
    cp $04                                        ; $667c: $fe $04
    inc bc                                        ; $667e: $03
    inc bc                                        ; $667f: $03
    rlca                                          ; $6680: $07
    inc bc                                        ; $6681: $03
    inc bc                                        ; $6682: $03
    inc b                                         ; $6683: $04
    rlca                                          ; $6684: $07
    inc b                                         ; $6685: $04
    inc bc                                        ; $6686: $03
    inc bc                                        ; $6687: $03
    rlca                                          ; $6688: $07
    rlca                                          ; $6689: $07
    rlca                                          ; $668a: $07
    rlca                                          ; $668b: $07
    rlca                                          ; $668c: $07
    inc c                                         ; $668d: $0c
    dec e                                         ; $668e: $1d
    ld h, [hl]                                    ; $668f: $66
    rra                                           ; $6690: $1f
    nop                                           ; $6691: $00
    nop                                           ; $6692: $00
    nop                                           ; $6693: $00
    nop                                           ; $6694: $00
    ld [bc], a                                    ; $6695: $02
    ld [bc], a                                    ; $6696: $02
    ld [bc], a                                    ; $6697: $02
    ld [bc], a                                    ; $6698: $02
    ld c, c                                       ; $6699: $49
    ld c, d                                       ; $669a: $4a
    ld c, a                                       ; $669b: $4f
    inc b                                         ; $669c: $04
    dec b                                         ; $669d: $05
    ld b, $06                                     ; $669e: $06 $06
    dec b                                         ; $66a0: $05
    add d                                         ; $66a1: $82
    add d                                         ; $66a2: $82
    add d                                         ; $66a3: $82
    add d                                         ; $66a4: $82
    add d                                         ; $66a5: $82
    add d                                         ; $66a6: $82
    add d                                         ; $66a7: $82
    add d                                         ; $66a8: $82
    add e                                         ; $66a9: $83
    add h                                         ; $66aa: $84
    add e                                         ; $66ab: $83
    add e                                         ; $66ac: $83
    inc c                                         ; $66ad: $0c
    dec e                                         ; $66ae: $1d
    ld h, [hl]                                    ; $66af: $66
    rra                                           ; $66b0: $1f
    nop                                           ; $66b1: $00
    nop                                           ; $66b2: $00
    rst $38                                       ; $66b3: $ff
    ld hl, $6e02                                  ; $66b4: $21 $02 $6e
    ld d, l                                       ; $66b7: $55
    inc h                                         ; $66b8: $24
    ld b, a                                       ; $66b9: $47
    ld d, l                                       ; $66ba: $55
    ld d, l                                       ; $66bb: $55
    jr z, jr_084_66c4                             ; $66bc: $28 $06

    ld b, $06                                     ; $66be: $06 $06
    ld b, $82                                     ; $66c0: $06 $82
    add d                                         ; $66c2: $82
    and d                                         ; $66c3: $a2

jr_084_66c4:
    ld b, $82                                     ; $66c4: $06 $82
    and d                                         ; $66c6: $a2
    and d                                         ; $66c7: $a2
    ld b, $84                                     ; $66c8: $06 $84
    add d                                         ; $66ca: $82
    and d                                         ; $66cb: $a2
    ld b, $0c                                     ; $66cc: $06 $0c
    dec e                                         ; $66ce: $1d
    ld h, [hl]                                    ; $66cf: $66
    rra                                           ; $66d0: $1f
    db $10                                        ; $66d1: $10
    ld de, $2168                                  ; $66d2: $11 $68 $21
    inc d                                         ; $66d5: $14
    inc hl                                        ; $66d6: $23
    sbc l                                         ; $66d7: $9d
    xor b                                         ; $66d8: $a8
    jr @+$28                                      ; $66d9: $18 $26

    sbc [hl]                                      ; $66db: $9e
    xor e                                         ; $66dc: $ab
    ld b, $06                                     ; $66dd: $06 $06
    ld b, $05                                     ; $66df: $06 $05
    dec b                                         ; $66e1: $05
    dec b                                         ; $66e2: $05
    ld b, $06                                     ; $66e3: $06 $06
    dec b                                         ; $66e5: $05
    ld b, $09                                     ; $66e6: $06 $09
    add hl, bc                                    ; $66e8: $09
    ld b, $05                                     ; $66e9: $06 $05
    add hl, bc                                    ; $66eb: $09
    add hl, bc                                    ; $66ec: $09
    inc c                                         ; $66ed: $0c
    dec e                                         ; $66ee: $1d
    ld h, [hl]                                    ; $66ef: $66
    rra                                           ; $66f0: $1f
    db $10                                        ; $66f1: $10
    ld de, $2168                                  ; $66f2: $11 $68 $21
    xor c                                         ; $66f5: $a9
    xor b                                         ; $66f6: $a8
    xor c                                         ; $66f7: $a9
    xor b                                         ; $66f8: $a8
    xor h                                         ; $66f9: $ac
    xor e                                         ; $66fa: $ab
    xor h                                         ; $66fb: $ac
    xor e                                         ; $66fc: $ab
    ld b, $06                                     ; $66fd: $06 $06
    dec b                                         ; $66ff: $05
    ld b, $06                                     ; $6700: $06 $06
    dec b                                         ; $6702: $05
    ld b, $05                                     ; $6703: $06 $05
    add hl, bc                                    ; $6705: $09
    add hl, bc                                    ; $6706: $09
    add hl, bc                                    ; $6707: $09
    add hl, bc                                    ; $6708: $09
    add hl, bc                                    ; $6709: $09
    add hl, bc                                    ; $670a: $09
    add hl, bc                                    ; $670b: $09
    add hl, bc                                    ; $670c: $09
    ld c, l                                       ; $670d: $4d
    ld c, [hl]                                    ; $670e: $4e
    ld d, b                                       ; $670f: $50
    ld b, $58                                     ; $6710: $06 $58
    ld e, c                                       ; $6712: $59
    ld h, d                                       ; $6713: $62
    ld a, [hl+]                                   ; $6714: $2a
    ld e, h                                       ; $6715: $5c
    ld e, l                                       ; $6716: $5d
    ld h, e                                       ; $6717: $63
    inc l                                         ; $6718: $2c
    ld h, b                                       ; $6719: $60
    ld h, c                                       ; $671a: $61
    ld h, h                                       ; $671b: $64
    ld l, $03                                     ; $671c: $2e $03
    inc bc                                        ; $671e: $03
    inc bc                                        ; $671f: $03
    inc b                                         ; $6720: $04
    inc b                                         ; $6721: $04
    inc bc                                        ; $6722: $03
    inc b                                         ; $6723: $04
    inc b                                         ; $6724: $04
    inc bc                                        ; $6725: $03
    inc bc                                        ; $6726: $03
    inc b                                         ; $6727: $04
    inc bc                                        ; $6728: $03
    inc bc                                        ; $6729: $03
    inc bc                                        ; $672a: $03
    inc bc                                        ; $672b: $03
    inc b                                         ; $672c: $04
    ld c, e                                       ; $672d: $4b
    ld d, l                                       ; $672e: $55
    ld d, l                                       ; $672f: $55
    ld b, l                                       ; $6730: $45
    ld d, [hl]                                    ; $6731: $56
    ld d, l                                       ; $6732: $55
    ld d, l                                       ; $6733: $55
    ccf                                           ; $6734: $3f
    ld e, d                                       ; $6735: $5a
    ld d, l                                       ; $6736: $55
    ld d, l                                       ; $6737: $55
    ld b, e                                       ; $6738: $43
    ld e, [hl]                                    ; $6739: $5e
    ld d, l                                       ; $673a: $55
    ld d, l                                       ; $673b: $55
    db $ed                                        ; $673c: $ed
    inc bc                                        ; $673d: $03
    add d                                         ; $673e: $82
    and d                                         ; $673f: $a2
    rlca                                          ; $6740: $07
    inc bc                                        ; $6741: $03
    add d                                         ; $6742: $82
    and d                                         ; $6743: $a2
    rlca                                          ; $6744: $07
    inc b                                         ; $6745: $04
    add d                                         ; $6746: $82
    and d                                         ; $6747: $a2
    rlca                                          ; $6748: $07
    inc bc                                        ; $6749: $03
    add d                                         ; $674a: $82
    and d                                         ; $674b: $a2
    rlca                                          ; $674c: $07
    jr c, jr_084_6788                             ; $674d: $38 $39

    sbc a                                         ; $674f: $9f
    xor [hl]                                      ; $6750: $ae
    inc a                                         ; $6751: $3c
    dec a                                         ; $6752: $3d
    and b                                         ; $6753: $a0
    or c                                          ; $6754: $b1
    ld b, b                                       ; $6755: $40
    ld b, c                                       ; $6756: $41
    and c                                         ; $6757: $a1
    or h                                          ; $6758: $b4
    ld [$eceb], a                                 ; $6759: $ea $eb $ec
    db $ed                                        ; $675c: $ed
    ld b, $06                                     ; $675d: $06 $06
    add hl, bc                                    ; $675f: $09
    add hl, bc                                    ; $6760: $09
    ld b, $05                                     ; $6761: $06 $05
    add hl, bc                                    ; $6763: $09
    add hl, bc                                    ; $6764: $09
    ld b, $05                                     ; $6765: $06 $05
    add hl, bc                                    ; $6767: $09
    add hl, bc                                    ; $6768: $09
    dec b                                         ; $6769: $05
    ld b, $07                                     ; $676a: $06 $07
    rlca                                          ; $676c: $07
    xor a                                         ; $676d: $af
    xor [hl]                                      ; $676e: $ae
    xor a                                         ; $676f: $af
    xor [hl]                                      ; $6770: $ae
    or d                                          ; $6771: $b2
    or c                                          ; $6772: $b1
    or d                                          ; $6773: $b2
    or c                                          ; $6774: $b1
    or l                                          ; $6775: $b5
    or h                                          ; $6776: $b4
    or l                                          ; $6777: $b5
    or h                                          ; $6778: $b4
    ld [$eceb], a                                 ; $6779: $ea $eb $ec
    db $ed                                        ; $677c: $ed
    add hl, bc                                    ; $677d: $09
    add hl, bc                                    ; $677e: $09
    add hl, bc                                    ; $677f: $09
    add hl, bc                                    ; $6780: $09
    add hl, bc                                    ; $6781: $09
    add hl, bc                                    ; $6782: $09
    add hl, bc                                    ; $6783: $09
    add hl, bc                                    ; $6784: $09
    add hl, bc                                    ; $6785: $09
    add hl, bc                                    ; $6786: $09
    add hl, bc                                    ; $6787: $09

jr_084_6788:
    add hl, bc                                    ; $6788: $09
    rlca                                          ; $6789: $07
    rlca                                          ; $678a: $07
    rlca                                          ; $678b: $07
    rlca                                          ; $678c: $07
    xor $ef                                       ; $678d: $ee $ef
    ld d, d                                       ; $678f: $52
    ld a, [$fcf2]                                 ; $6790: $fa $f2 $fc
    ld d, h                                       ; $6793: $54
    cp $0c                                        ; $6794: $fe $0c
    dec e                                         ; $6796: $1d
    ld h, [hl]                                    ; $6797: $66
    rra                                           ; $6798: $1f
    db $10                                        ; $6799: $10
    ld de, $2168                                  ; $679a: $11 $68 $21
    rlca                                          ; $679d: $07
    rlca                                          ; $679e: $07
    rlca                                          ; $679f: $07
    rlca                                          ; $67a0: $07
    dec b                                         ; $67a1: $05
    ld b, $05                                     ; $67a2: $06 $05
    ld b, $06                                     ; $67a4: $06 $06
    ld b, $05                                     ; $67a6: $06 $05
    ld b, $05                                     ; $67a8: $06 $05
    dec b                                         ; $67aa: $05
    ld b, $06                                     ; $67ab: $06 $06
    xor $55                                       ; $67ad: $ee $55
    ld d, l                                       ; $67af: $55
    ld a, [$55f2]                                 ; $67b0: $fa $f2 $55
    ld d, l                                       ; $67b3: $55
    cp $0c                                        ; $67b4: $fe $0c
    ld d, l                                       ; $67b6: $55
    ld d, l                                       ; $67b7: $55
    rra                                           ; $67b8: $1f
    db $10                                        ; $67b9: $10
    ld d, l                                       ; $67ba: $55
    ld d, l                                       ; $67bb: $55
    ld hl, $8207                                  ; $67bc: $21 $07 $82
    and d                                         ; $67bf: $a2
    rlca                                          ; $67c0: $07
    dec b                                         ; $67c1: $05
    add d                                         ; $67c2: $82
    and d                                         ; $67c3: $a2
    rlca                                          ; $67c4: $07
    ld b, $82                                     ; $67c5: $06 $82
    and d                                         ; $67c7: $a2
    rlca                                          ; $67c8: $07
    dec b                                         ; $67c9: $05
    add d                                         ; $67ca: $82
    and d                                         ; $67cb: $a2
    rlca                                          ; $67cc: $07
    xor $ef                                       ; $67cd: $ee $ef
    ld d, d                                       ; $67cf: $52
    ld a, [$fcf2]                                 ; $67d0: $fa $f2 $fc
    ld d, h                                       ; $67d3: $54
    cp $0c                                        ; $67d4: $fe $0c
    dec e                                         ; $67d6: $1d
    ld h, [hl]                                    ; $67d7: $66
    rra                                           ; $67d8: $1f
    db $10                                        ; $67d9: $10
    ld de, $2168                                  ; $67da: $11 $68 $21
    ld b, $06                                     ; $67dd: $06 $06
    ld b, $05                                     ; $67df: $06 $05
    ld b, $05                                     ; $67e1: $06 $05
    ld b, $06                                     ; $67e3: $06 $06
    ld b, $06                                     ; $67e5: $06 $06
    ld b, $06                                     ; $67e7: $06 $06
    dec b                                         ; $67e9: $05
    ld b, $05                                     ; $67ea: $06 $05
    ld b, $ee                                     ; $67ec: $06 $ee
    rst $28                                       ; $67ee: $ef
    ld d, d                                       ; $67ef: $52
    ld a, [$fcf2]                                 ; $67f0: $fa $f2 $fc
    ld d, h                                       ; $67f3: $54
    cp $0c                                        ; $67f4: $fe $0c
    dec e                                         ; $67f6: $1d
    ld h, [hl]                                    ; $67f7: $66
    rra                                           ; $67f8: $1f
    db $10                                        ; $67f9: $10
    ld de, $2168                                  ; $67fa: $11 $68 $21
    ld b, $06                                     ; $67fd: $06 $06
    ld b, $06                                     ; $67ff: $06 $06
    ld b, $05                                     ; $6801: $06 $05
    dec b                                         ; $6803: $05
    ld b, $05                                     ; $6804: $06 $05
    dec b                                         ; $6806: $05
    ld b, $06                                     ; $6807: $06 $06
    dec b                                         ; $6809: $05
    ld b, $06                                     ; $680a: $06 $06
    dec b                                         ; $680c: $05
    ld b, b                                       ; $680d: $40
    ld b, c                                       ; $680e: $41
    add hl, hl                                    ; $680f: $29
    ld a, [hl+]                                   ; $6810: $2a
    ld [$2beb], a                                 ; $6811: $ea $eb $2b
    inc l                                         ; $6814: $2c
    xor $ef                                       ; $6815: $ee $ef
    dec l                                         ; $6817: $2d
    ld l, $f2                                     ; $6818: $2e $f2
    db $fc                                        ; $681a: $fc
    ld d, h                                       ; $681b: $54
    cp $06                                        ; $681c: $fe $06
    ld b, $03                                     ; $681e: $06 $03
    inc b                                         ; $6820: $04
    ld b, $06                                     ; $6821: $06 $06
    inc b                                         ; $6823: $04
    inc bc                                        ; $6824: $03
    ld b, $05                                     ; $6825: $06 $05
    inc bc                                        ; $6827: $03
    inc bc                                        ; $6828: $03
    ld b, $05                                     ; $6829: $06 $05
    rlca                                          ; $682b: $07
    rlca                                          ; $682c: $07
    ld d, [hl]                                    ; $682d: $56
    ld d, a                                       ; $682e: $57
    ld e, b                                       ; $682f: $58
    ld e, c                                       ; $6830: $59
    ld e, d                                       ; $6831: $5a
    ld e, e                                       ; $6832: $5b
    ld e, h                                       ; $6833: $5c
    ld e, l                                       ; $6834: $5d
    ld e, [hl]                                    ; $6835: $5e
    ld e, a                                       ; $6836: $5f
    ld h, b                                       ; $6837: $60
    ld h, c                                       ; $6838: $61
    ld a, [c]                                     ; $6839: $f2
    db $fc                                        ; $683a: $fc
    ld d, h                                       ; $683b: $54
    cp $03                                        ; $683c: $fe $03
    inc b                                         ; $683e: $04
    inc b                                         ; $683f: $04
    inc b                                         ; $6840: $04
    inc bc                                        ; $6841: $03
    inc b                                         ; $6842: $04
    inc bc                                        ; $6843: $03
    inc bc                                        ; $6844: $03
    inc b                                         ; $6845: $04
    inc bc                                        ; $6846: $03
    inc bc                                        ; $6847: $03
    inc b                                         ; $6848: $04
    rlca                                          ; $6849: $07
    rlca                                          ; $684a: $07
    rlca                                          ; $684b: $07
    rlca                                          ; $684c: $07
    ld h, d                                       ; $684d: $62
    ld a, [hl+]                                   ; $684e: $2a
    ld d, [hl]                                    ; $684f: $56
    ld h, l                                       ; $6850: $65
    ld h, e                                       ; $6851: $63
    inc l                                         ; $6852: $2c
    ld e, d                                       ; $6853: $5a
    ld h, a                                       ; $6854: $67
    ld h, h                                       ; $6855: $64
    ld l, $5e                                     ; $6856: $2e $5e
    ld l, c                                       ; $6858: $69
    ld a, [c]                                     ; $6859: $f2
    db $fc                                        ; $685a: $fc
    ld d, h                                       ; $685b: $54
    cp $03                                        ; $685c: $fe $03
    inc b                                         ; $685e: $04
    inc bc                                        ; $685f: $03
    inc bc                                        ; $6860: $03
    inc b                                         ; $6861: $04
    inc bc                                        ; $6862: $03
    inc b                                         ; $6863: $04
    inc bc                                        ; $6864: $03
    inc b                                         ; $6865: $04
    inc bc                                        ; $6866: $03
    inc bc                                        ; $6867: $03
    inc bc                                        ; $6868: $03
    rlca                                          ; $6869: $07
    rlca                                          ; $686a: $07
    rlca                                          ; $686b: $07
    rlca                                          ; $686c: $07
    ld b, b                                       ; $686d: $40
    ld b, c                                       ; $686e: $41
    ld b, d                                       ; $686f: $42
    ld b, e                                       ; $6870: $43
    ld [$eceb], a                                 ; $6871: $ea $eb $ec
    db $ed                                        ; $6874: $ed
    xor $ef                                       ; $6875: $ee $ef
    ld d, d                                       ; $6877: $52
    ld a, [$fcf2]                                 ; $6878: $fa $f2 $fc
    ld d, h                                       ; $687b: $54
    cp $07                                        ; $687c: $fe $07
    dec b                                         ; $687e: $05
    dec b                                         ; $687f: $05
    ld b, $07                                     ; $6880: $06 $07
    ld b, $05                                     ; $6882: $06 $05
    ld b, $07                                     ; $6884: $06 $07
    ld b, $06                                     ; $6886: $06 $06
    dec b                                         ; $6888: $05
    rlca                                          ; $6889: $07
    dec b                                         ; $688a: $05
    ld b, $06                                     ; $688b: $06 $06
    inc c                                         ; $688d: $0c
    dec e                                         ; $688e: $1d
    ld h, [hl]                                    ; $688f: $66
    rra                                           ; $6890: $1f
    db $10                                        ; $6891: $10
    ld de, $2168                                  ; $6892: $11 $68 $21
    xor c                                         ; $6895: $a9
    xor d                                         ; $6896: $aa
    ld l, d                                       ; $6897: $6a
    inc h                                         ; $6898: $24
    xor h                                         ; $6899: $ac
    xor l                                         ; $689a: $ad
    cpl                                           ; $689b: $2f
    jr z, jr_084_68a4                             ; $689c: $28 $06

    dec b                                         ; $689e: $05
    ld b, $05                                     ; $689f: $06 $05
    ld b, $05                                     ; $68a1: $06 $05
    dec b                                         ; $68a3: $05

jr_084_68a4:
    ld b, $09                                     ; $68a4: $06 $09
    add hl, bc                                    ; $68a6: $09
    ld b, $06                                     ; $68a7: $06 $06
    add hl, bc                                    ; $68a9: $09
    add hl, bc                                    ; $68aa: $09
    rlca                                          ; $68ab: $07
    ld b, $0c                                     ; $68ac: $06 $0c
    dec e                                         ; $68ae: $1d
    ld h, [hl]                                    ; $68af: $66
    rra                                           ; $68b0: $1f
    db $10                                        ; $68b1: $10
    ld de, $2168                                  ; $68b2: $11 $68 $21
    inc d                                         ; $68b5: $14
    inc hl                                        ; $68b6: $23
    ld l, d                                       ; $68b7: $6a
    inc h                                         ; $68b8: $24
    jr jr_084_68e1                                ; $68b9: $18 $26

    cpl                                           ; $68bb: $2f
    jr z, @+$08                                   ; $68bc: $28 $06

    ld b, $05                                     ; $68be: $06 $05
    dec b                                         ; $68c0: $05
    dec b                                         ; $68c1: $05
    dec b                                         ; $68c2: $05
    ld b, $05                                     ; $68c3: $06 $05
    dec b                                         ; $68c5: $05
    ld b, $05                                     ; $68c6: $06 $05
    ld b, $05                                     ; $68c8: $06 $05
    ld b, $06                                     ; $68ca: $06 $06
    dec b                                         ; $68cc: $05
    inc c                                         ; $68cd: $0c
    dec e                                         ; $68ce: $1d
    ld h, [hl]                                    ; $68cf: $66
    rra                                           ; $68d0: $1f

Jump_084_68d1:
    db $10                                        ; $68d1: $10
    ld de, $00ff                                  ; $68d2: $11 $ff $00
    inc d                                         ; $68d5: $14
    inc hl                                        ; $68d6: $23
    ld bc, $1802                                  ; $68d7: $01 $02 $18
    ld h, $03                                     ; $68da: $26 $03
    inc b                                         ; $68dc: $04
    ld b, $06                                     ; $68dd: $06 $06
    ld b, $05                                     ; $68df: $06 $05

jr_084_68e1:
    dec b                                         ; $68e1: $05
    dec b                                         ; $68e2: $05
    add d                                         ; $68e3: $82
    add d                                         ; $68e4: $82
    ld b, $06                                     ; $68e5: $06 $06
    add d                                         ; $68e7: $82
    add d                                         ; $68e8: $82
    dec b                                         ; $68e9: $05
    dec b                                         ; $68ea: $05
    add h                                         ; $68eb: $84
    add e                                         ; $68ec: $83
    inc c                                         ; $68ed: $0c
    dec e                                         ; $68ee: $1d
    ld h, [hl]                                    ; $68ef: $66
    rra                                           ; $68f0: $1f
    nop                                           ; $68f1: $00
    nop                                           ; $68f2: $00
    nop                                           ; $68f3: $00
    nop                                           ; $68f4: $00
    ld [bc], a                                    ; $68f5: $02
    ld [bc], a                                    ; $68f6: $02
    ld [bc], a                                    ; $68f7: $02
    ld [bc], a                                    ; $68f8: $02
    ld b, a                                       ; $68f9: $47
    ld c, b                                       ; $68fa: $48
    ld c, c                                       ; $68fb: $49
    ld c, d                                       ; $68fc: $4a
    ld b, $06                                     ; $68fd: $06 $06
    dec b                                         ; $68ff: $05
    ld b, $82                                     ; $6900: $06 $82
    add d                                         ; $6902: $82
    add d                                         ; $6903: $82
    add d                                         ; $6904: $82
    add d                                         ; $6905: $82
    add d                                         ; $6906: $82
    add d                                         ; $6907: $82
    add d                                         ; $6908: $82
    add h                                         ; $6909: $84
    add e                                         ; $690a: $83
    add h                                         ; $690b: $84
    add e                                         ; $690c: $83
    xor a                                         ; $690d: $af
    or b                                          ; $690e: $b0
    ld l, e                                       ; $690f: $6b
    ld b, l                                       ; $6910: $45
    or d                                          ; $6911: $b2
    or e                                          ; $6912: $b3
    ld a, $3f                                     ; $6913: $3e $3f
    or l                                          ; $6915: $b5
    or [hl]                                       ; $6916: $b6
    ld b, d                                       ; $6917: $42
    ld b, e                                       ; $6918: $43
    ld [$eceb], a                                 ; $6919: $ea $eb $ec
    db $ed                                        ; $691c: $ed
    add hl, bc                                    ; $691d: $09
    add hl, bc                                    ; $691e: $09
    rlca                                          ; $691f: $07
    ld b, $09                                     ; $6920: $06 $09
    add hl, bc                                    ; $6922: $09
    rlca                                          ; $6923: $07
    dec b                                         ; $6924: $05
    add hl, bc                                    ; $6925: $09
    add hl, bc                                    ; $6926: $09
    rlca                                          ; $6927: $07
    ld b, $07                                     ; $6928: $06 $07
    rlca                                          ; $692a: $07
    rlca                                          ; $692b: $07
    dec b                                         ; $692c: $05
    jr c, jr_084_6968                             ; $692d: $38 $39

    ld l, e                                       ; $692f: $6b
    ld b, l                                       ; $6930: $45
    inc a                                         ; $6931: $3c
    dec a                                         ; $6932: $3d
    ld a, $3f                                     ; $6933: $3e $3f
    ld b, b                                       ; $6935: $40
    ld b, c                                       ; $6936: $41
    ld b, d                                       ; $6937: $42
    ld b, e                                       ; $6938: $43
    ld [$eceb], a                                 ; $6939: $ea $eb $ec
    db $ed                                        ; $693c: $ed
    ld b, $05                                     ; $693d: $06 $05
    dec b                                         ; $693f: $05
    ld b, $05                                     ; $6940: $06 $05
    ld b, $05                                     ; $6942: $06 $05
    dec b                                         ; $6944: $05
    ld b, $06                                     ; $6945: $06 $06
    ld b, $05                                     ; $6947: $06 $05
    ld b, $05                                     ; $6949: $06 $05
    ld b, $06                                     ; $694b: $06 $06
    jr c, jr_084_6988                             ; $694d: $38 $39

    dec b                                         ; $694f: $05
    ld b, $3c                                     ; $6950: $06 $3c
    dec a                                         ; $6952: $3d
    add hl, hl                                    ; $6953: $29
    ld a, [hl+]                                   ; $6954: $2a
    ld b, b                                       ; $6955: $40
    ld b, c                                       ; $6956: $41
    dec hl                                        ; $6957: $2b
    inc l                                         ; $6958: $2c
    ld [$2deb], a                                 ; $6959: $ea $eb $2d
    ld l, $05                                     ; $695c: $2e $05
    ld b, $04                                     ; $695e: $06 $04
    inc b                                         ; $6960: $04
    ld b, $06                                     ; $6961: $06 $06
    inc bc                                        ; $6963: $03
    inc bc                                        ; $6964: $03
    ld b, $06                                     ; $6965: $06 $06
    inc b                                         ; $6967: $04

jr_084_6968:
    inc bc                                        ; $6968: $03
    dec b                                         ; $6969: $05
    ld b, $03                                     ; $696a: $06 $03
    inc bc                                        ; $696c: $03
    ld c, e                                       ; $696d: $4b
    ld c, h                                       ; $696e: $4c
    ld c, l                                       ; $696f: $4d
    ld c, [hl]                                    ; $6970: $4e
    ld d, [hl]                                    ; $6971: $56
    ld d, a                                       ; $6972: $57
    ld e, b                                       ; $6973: $58
    ld e, c                                       ; $6974: $59
    ld e, d                                       ; $6975: $5a
    ld e, e                                       ; $6976: $5b
    ld e, h                                       ; $6977: $5c
    ld e, l                                       ; $6978: $5d
    ld e, [hl]                                    ; $6979: $5e
    ld e, a                                       ; $697a: $5f
    ld h, b                                       ; $697b: $60
    ld h, c                                       ; $697c: $61
    inc bc                                        ; $697d: $03
    inc bc                                        ; $697e: $03
    inc b                                         ; $697f: $04
    inc b                                         ; $6980: $04
    inc b                                         ; $6981: $04
    inc bc                                        ; $6982: $03
    inc bc                                        ; $6983: $03
    inc b                                         ; $6984: $04
    inc bc                                        ; $6985: $03
    inc b                                         ; $6986: $04
    inc b                                         ; $6987: $04

jr_084_6988:
    inc bc                                        ; $6988: $03
    inc b                                         ; $6989: $04
    inc b                                         ; $698a: $04
    inc bc                                        ; $698b: $03
    inc bc                                        ; $698c: $03
    xor $ef                                       ; $698d: $ee $ef
    ld d, d                                       ; $698f: $52
    ld a, [$fcf2]                                 ; $6990: $fa $f2 $fc
    ld d, h                                       ; $6993: $54
    cp $0c                                        ; $6994: $fe $0c
    dec e                                         ; $6996: $1d
    ld h, [hl]                                    ; $6997: $66
    rra                                           ; $6998: $1f
    db $10                                        ; $6999: $10
    ld de, $2168                                  ; $699a: $11 $68 $21
    dec b                                         ; $699d: $05
    ld b, $06                                     ; $699e: $06 $06
    ld b, $06                                     ; $69a0: $06 $06
    ld b, $06                                     ; $69a2: $06 $06
    dec b                                         ; $69a4: $05
    ld b, $05                                     ; $69a5: $06 $05
    ld b, $06                                     ; $69a7: $06 $06
    ld b, $06                                     ; $69a9: $06 $06
    ld b, $05                                     ; $69ab: $06 $05
    xor $ef                                       ; $69ad: $ee $ef
    ld d, d                                       ; $69af: $52
    ld a, [$fcf2]                                 ; $69b0: $fa $f2 $fc
    ld d, h                                       ; $69b3: $54
    cp $0c                                        ; $69b4: $fe $0c
    rst $38                                       ; $69b6: $ff
    nop                                           ; $69b7: $00
    nop                                           ; $69b8: $00
    db $10                                        ; $69b9: $10
    ld bc, $0202                                  ; $69ba: $01 $02 $02
    ld b, $06                                     ; $69bd: $06 $06
    dec b                                         ; $69bf: $05
    ld b, $06                                     ; $69c0: $06 $06
    ld b, $06                                     ; $69c2: $06 $06
    ld b, $06                                     ; $69c4: $06 $06
    add d                                         ; $69c6: $82
    add d                                         ; $69c7: $82
    add d                                         ; $69c8: $82
    ld b, $82                                     ; $69c9: $06 $82
    add d                                         ; $69cb: $82
    add d                                         ; $69cc: $82
    xor $ef                                       ; $69cd: $ee $ef
    ld d, d                                       ; $69cf: $52
    ld a, [$fcf2]                                 ; $69d0: $fa $f2 $fc
    ld d, h                                       ; $69d3: $54
    cp $00                                        ; $69d4: $fe $00
    rst $38                                       ; $69d6: $ff
    ld h, [hl]                                    ; $69d7: $66
    rra                                           ; $69d8: $1f
    ld l, [hl]                                    ; $69d9: $6e
    ld d, l                                       ; $69da: $55
    ld l, b                                       ; $69db: $68
    ld hl, $0606                                  ; $69dc: $21 $06 $06
    rlca                                          ; $69df: $07
    rlca                                          ; $69e0: $07
    dec b                                         ; $69e1: $05
    ld b, $05                                     ; $69e2: $06 $05
    dec b                                         ; $69e4: $05
    add d                                         ; $69e5: $82
    and d                                         ; $69e6: $a2
    ld b, $06                                     ; $69e7: $06 $06
    and d                                         ; $69e9: $a2
    and d                                         ; $69ea: $a2
    ld b, $06                                     ; $69eb: $06 $06
    xor $ef                                       ; $69ed: $ee $ef
    ld d, d                                       ; $69ef: $52
    ld a, [$fcf2]                                 ; $69f0: $fa $f2 $fc
    ld d, h                                       ; $69f3: $54
    cp $0c                                        ; $69f4: $fe $0c
    dec e                                         ; $69f6: $1d
    ld h, [hl]                                    ; $69f7: $66
    rra                                           ; $69f8: $1f
    db $10                                        ; $69f9: $10
    ld de, $2168                                  ; $69fa: $11 $68 $21
    rlca                                          ; $69fd: $07
    rlca                                          ; $69fe: $07
    rlca                                          ; $69ff: $07
    rlca                                          ; $6a00: $07
    ld b, $05                                     ; $6a01: $06 $05
    ld b, $05                                     ; $6a03: $06 $05
    dec b                                         ; $6a05: $05
    dec b                                         ; $6a06: $05
    ld b, $06                                     ; $6a07: $06 $06
    ld b, $06                                     ; $6a09: $06 $06
    dec b                                         ; $6a0b: $05
    ld b, $40                                     ; $6a0c: $06 $40
    ld d, l                                       ; $6a0e: $55
    ld d, l                                       ; $6a0f: $55
    ld b, e                                       ; $6a10: $43
    ld [$5555], a                                 ; $6a11: $ea $55 $55
    db $ed                                        ; $6a14: $ed
    xor $55                                       ; $6a15: $ee $55
    ld d, l                                       ; $6a17: $55
    ld a, [$55f2]                                 ; $6a18: $fa $f2 $55
    ld d, l                                       ; $6a1b: $55
    cp $05                                        ; $6a1c: $fe $05
    add d                                         ; $6a1e: $82
    and d                                         ; $6a1f: $a2
    rlca                                          ; $6a20: $07
    ld b, $82                                     ; $6a21: $06 $82
    and d                                         ; $6a23: $a2
    rlca                                          ; $6a24: $07
    ld b, $82                                     ; $6a25: $06 $82
    and d                                         ; $6a27: $a2
    rlca                                          ; $6a28: $07
    dec b                                         ; $6a29: $05
    add d                                         ; $6a2a: $82
    and d                                         ; $6a2b: $a2
    rlca                                          ; $6a2c: $07
    ld b, b                                       ; $6a2d: $40
    ld b, c                                       ; $6a2e: $41
    ld b, d                                       ; $6a2f: $42
    ld b, e                                       ; $6a30: $43
    ld [$eceb], a                                 ; $6a31: $ea $eb $ec
    db $ed                                        ; $6a34: $ed
    xor $ef                                       ; $6a35: $ee $ef
    ld d, d                                       ; $6a37: $52
    ld a, [$fcf2]                                 ; $6a38: $fa $f2 $fc
    ld d, h                                       ; $6a3b: $54
    cp $05                                        ; $6a3c: $fe $05
    ld b, $06                                     ; $6a3e: $06 $06
    rlca                                          ; $6a40: $07
    ld b, $05                                     ; $6a41: $06 $05
    ld b, $07                                     ; $6a43: $06 $07
    ld b, $06                                     ; $6a45: $06 $06
    dec b                                         ; $6a47: $05
    rlca                                          ; $6a48: $07
    dec b                                         ; $6a49: $05
    ld b, $05                                     ; $6a4a: $06 $05
    rlca                                          ; $6a4c: $07
    inc c                                         ; $6a4d: $0c
    ld d, l                                       ; $6a4e: $55
    ld d, l                                       ; $6a4f: $55
    rra                                           ; $6a50: $1f
    nop                                           ; $6a51: $00
    cp c                                          ; $6a52: $b9
    ld d, l                                       ; $6a53: $55
    ld hl, $6e02                                  ; $6a54: $21 $02 $6e
    ld d, l                                       ; $6a57: $55
    inc h                                         ; $6a58: $24
    ld c, a                                       ; $6a59: $4f
    ld d, l                                       ; $6a5a: $55
    ld d, l                                       ; $6a5b: $55
    jr z, jr_084_6a64                             ; $6a5c: $28 $06

    add d                                         ; $6a5e: $82
    and d                                         ; $6a5f: $a2
    rlca                                          ; $6a60: $07
    add d                                         ; $6a61: $82
    xor d                                         ; $6a62: $aa
    and d                                         ; $6a63: $a2

jr_084_6a64:
    rlca                                          ; $6a64: $07
    add d                                         ; $6a65: $82
    and d                                         ; $6a66: $a2
    and d                                         ; $6a67: $a2
    rlca                                          ; $6a68: $07
    add h                                         ; $6a69: $84
    add d                                         ; $6a6a: $82
    and d                                         ; $6a6b: $a2
    rlca                                          ; $6a6c: $07
    inc c                                         ; $6a6d: $0c
    dec e                                         ; $6a6e: $1d
    ld h, [hl]                                    ; $6a6f: $66
    rra                                           ; $6a70: $1f
    db $10                                        ; $6a71: $10
    ld de, $2168                                  ; $6a72: $11 $68 $21
    inc d                                         ; $6a75: $14
    inc hl                                        ; $6a76: $23
    ld l, d                                       ; $6a77: $6a
    inc h                                         ; $6a78: $24
    jr jr_084_6aa1                                ; $6a79: $18 $26

    cpl                                           ; $6a7b: $2f
    jr z, @+$08                                   ; $6a7c: $28 $06

    dec b                                         ; $6a7e: $05
    ld b, $07                                     ; $6a7f: $06 $07
    dec b                                         ; $6a81: $05
    dec b                                         ; $6a82: $05
    ld b, $07                                     ; $6a83: $06 $07
    ld b, $06                                     ; $6a85: $06 $06
    dec b                                         ; $6a87: $05
    rlca                                          ; $6a88: $07
    ld b, $06                                     ; $6a89: $06 $06
    ld b, $07                                     ; $6a8b: $06 $07
    ld d, b                                       ; $6a8d: $50
    ld d, l                                       ; $6a8e: $55
    ld d, l                                       ; $6a8f: $55
    ld b, l                                       ; $6a90: $45
    ld h, d                                       ; $6a91: $62
    ld d, l                                       ; $6a92: $55
    ld d, l                                       ; $6a93: $55
    ccf                                           ; $6a94: $3f
    ld h, e                                       ; $6a95: $63
    ld d, l                                       ; $6a96: $55
    ld d, l                                       ; $6a97: $55
    ld b, e                                       ; $6a98: $43
    ld h, h                                       ; $6a99: $64
    ld d, l                                       ; $6a9a: $55
    ld d, l                                       ; $6a9b: $55
    db $ed                                        ; $6a9c: $ed
    inc bc                                        ; $6a9d: $03
    add d                                         ; $6a9e: $82
    and d                                         ; $6a9f: $a2
    rlca                                          ; $6aa0: $07

jr_084_6aa1:
    inc bc                                        ; $6aa1: $03
    add d                                         ; $6aa2: $82
    and d                                         ; $6aa3: $a2
    rlca                                          ; $6aa4: $07
    inc b                                         ; $6aa5: $04
    add d                                         ; $6aa6: $82
    and d                                         ; $6aa7: $a2
    rlca                                          ; $6aa8: $07
    inc bc                                        ; $6aa9: $03
    add d                                         ; $6aaa: $82
    and d                                         ; $6aab: $a2
    rlca                                          ; $6aac: $07
    jr c, jr_084_6ae8                             ; $6aad: $38 $39

    ld l, e                                       ; $6aaf: $6b
    ld b, l                                       ; $6ab0: $45
    inc a                                         ; $6ab1: $3c
    dec a                                         ; $6ab2: $3d
    ld a, $3f                                     ; $6ab3: $3e $3f
    ld b, b                                       ; $6ab5: $40
    ld b, c                                       ; $6ab6: $41
    ld b, d                                       ; $6ab7: $42
    ld b, e                                       ; $6ab8: $43
    ld [$eceb], a                                 ; $6ab9: $ea $eb $ec
    db $ed                                        ; $6abc: $ed
    ld b, $06                                     ; $6abd: $06 $06
    ld b, $07                                     ; $6abf: $06 $07
    ld b, $06                                     ; $6ac1: $06 $06
    ld b, $07                                     ; $6ac3: $06 $07
    ld b, $06                                     ; $6ac5: $06 $06
    ld b, $07                                     ; $6ac7: $06 $07
    ld b, $06                                     ; $6ac9: $06 $06
    ld b, $07                                     ; $6acb: $06 $07
    xor $01                                       ; $6acd: $ee $01
    ld bc, $f2fa                                  ; $6acf: $01 $fa $f2

Call_084_6ad2:
    inc bc                                        ; $6ad2: $03
    ld l, a                                       ; $6ad3: $6f
    cp $0c                                        ; $6ad4: $fe $0c
    dec b                                         ; $6ad6: $05
    ld [hl], b                                    ; $6ad7: $70
    rra                                           ; $6ad8: $1f
    db $10                                        ; $6ad9: $10
    add hl, hl                                    ; $6ada: $29
    and d                                         ; $6adb: $a2
    ld hl, $8207                                  ; $6adc: $21 $07 $82
    and d                                         ; $6adf: $a2
    rlca                                          ; $6ae0: $07
    ld b, $04                                     ; $6ae1: $06 $04
    inc bc                                        ; $6ae3: $03
    rlca                                          ; $6ae4: $07
    dec b                                         ; $6ae5: $05
    inc bc                                        ; $6ae6: $03
    inc bc                                        ; $6ae7: $03

jr_084_6ae8:
    rlca                                          ; $6ae8: $07
    ld b, $04                                     ; $6ae9: $06 $04
    dec bc                                        ; $6aeb: $0b
    rlca                                          ; $6aec: $07
    xor $ef                                       ; $6aed: $ee $ef
    ld d, d                                       ; $6aef: $52
    ld a, [$fcf2]                                 ; $6af0: $fa $f2 $fc
    ld d, h                                       ; $6af3: $54
    cp $0c                                        ; $6af4: $fe $0c
    dec e                                         ; $6af6: $1d
    ld h, [hl]                                    ; $6af7: $66
    rra                                           ; $6af8: $1f
    db $10                                        ; $6af9: $10
    ld de, $2168                                  ; $6afa: $11 $68 $21
    ld b, $06                                     ; $6afd: $06 $06
    ld b, $07                                     ; $6aff: $06 $07
    ld b, $06                                     ; $6b01: $06 $06
    ld b, $07                                     ; $6b03: $06 $07
    dec b                                         ; $6b05: $05
    ld b, $05                                     ; $6b06: $06 $05
    rlca                                          ; $6b08: $07
    ld b, $05                                     ; $6b09: $06 $05
    dec b                                         ; $6b0b: $05
    rlca                                          ; $6b0c: $07
    ld c, a                                       ; $6b0d: $4f
    inc b                                         ; $6b0e: $04
    ld b, a                                       ; $6b0f: $47
    ld c, b                                       ; $6b10: $48
    ld d, b                                       ; $6b11: $50
    ld b, $4b                                     ; $6b12: $06 $4b
    ld c, h                                       ; $6b14: $4c
    ld h, d                                       ; $6b15: $62
    ld a, [hl+]                                   ; $6b16: $2a
    ld d, [hl]                                    ; $6b17: $56
    ld d, a                                       ; $6b18: $57
    ld h, e                                       ; $6b19: $63
    inc l                                         ; $6b1a: $2c
    ld e, d                                       ; $6b1b: $5a
    ld e, e                                       ; $6b1c: $5b
    add e                                         ; $6b1d: $83
    add h                                         ; $6b1e: $84
    add e                                         ; $6b1f: $83
    add e                                         ; $6b20: $83
    inc bc                                        ; $6b21: $03
    inc b                                         ; $6b22: $04
    inc bc                                        ; $6b23: $03
    inc bc                                        ; $6b24: $03
    inc b                                         ; $6b25: $04
    inc b                                         ; $6b26: $04
    inc bc                                        ; $6b27: $03
    inc b                                         ; $6b28: $04
    inc b                                         ; $6b29: $04
    inc b                                         ; $6b2a: $04
    inc bc                                        ; $6b2b: $03
    inc bc                                        ; $6b2c: $03
    ld c, c                                       ; $6b2d: $49
    ld c, d                                       ; $6b2e: $4a
    ld c, a                                       ; $6b2f: $4f
    inc b                                         ; $6b30: $04
    ld c, l                                       ; $6b31: $4d
    ld c, [hl]                                    ; $6b32: $4e
    ld d, b                                       ; $6b33: $50
    ld b, $58                                     ; $6b34: $06 $58
    ld e, c                                       ; $6b36: $59
    ld h, d                                       ; $6b37: $62
    ld a, [hl+]                                   ; $6b38: $2a
    ld e, h                                       ; $6b39: $5c
    ld e, l                                       ; $6b3a: $5d
    ld h, e                                       ; $6b3b: $63
    inc l                                         ; $6b3c: $2c
    add e                                         ; $6b3d: $83
    add h                                         ; $6b3e: $84
    add h                                         ; $6b3f: $84
    add e                                         ; $6b40: $83
    inc bc                                        ; $6b41: $03
    inc b                                         ; $6b42: $04
    inc b                                         ; $6b43: $04
    inc bc                                        ; $6b44: $03
    inc b                                         ; $6b45: $04
    inc bc                                        ; $6b46: $03
    inc b                                         ; $6b47: $04
    inc b                                         ; $6b48: $04
    inc bc                                        ; $6b49: $03
    inc bc                                        ; $6b4a: $03
    inc b                                         ; $6b4b: $04
    inc b                                         ; $6b4c: $04
    ld b, a                                       ; $6b4d: $47
    ld c, b                                       ; $6b4e: $48
    ld d, l                                       ; $6b4f: $55
    ld d, l                                       ; $6b50: $55
    ld c, e                                       ; $6b51: $4b
    ld c, h                                       ; $6b52: $4c
    ld d, l                                       ; $6b53: $55
    ld d, l                                       ; $6b54: $55
    ld d, [hl]                                    ; $6b55: $56
    ld d, a                                       ; $6b56: $57
    ld d, l                                       ; $6b57: $55
    ld d, l                                       ; $6b58: $55
    ld e, d                                       ; $6b59: $5a
    ld e, e                                       ; $6b5a: $5b
    ld bc, $8301                                  ; $6b5b: $01 $01 $83
    add h                                         ; $6b5e: $84
    add d                                         ; $6b5f: $82
    and d                                         ; $6b60: $a2
    inc bc                                        ; $6b61: $03
    inc b                                         ; $6b62: $04
    add d                                         ; $6b63: $82
    and d                                         ; $6b64: $a2
    inc bc                                        ; $6b65: $03
    inc bc                                        ; $6b66: $03
    add d                                         ; $6b67: $82
    and d                                         ; $6b68: $a2
    inc b                                         ; $6b69: $04
    inc bc                                        ; $6b6a: $03
    add d                                         ; $6b6b: $82
    and d                                         ; $6b6c: $a2
    ld h, h                                       ; $6b6d: $64
    ld l, $5e                                     ; $6b6e: $2e $5e
    ld e, a                                       ; $6b70: $5f
    ld [$eceb], a                                 ; $6b71: $ea $eb $ec
    db $ed                                        ; $6b74: $ed
    xor $ef                                       ; $6b75: $ee $ef
    ld d, d                                       ; $6b77: $52
    ld a, [$a89d]                                 ; $6b78: $fa $9d $a8
    xor c                                         ; $6b7b: $a9
    xor d                                         ; $6b7c: $aa
    inc b                                         ; $6b7d: $04
    inc b                                         ; $6b7e: $04
    inc bc                                        ; $6b7f: $03
    inc b                                         ; $6b80: $04
    rlca                                          ; $6b81: $07
    rlca                                          ; $6b82: $07
    rlca                                          ; $6b83: $07
    rlca                                          ; $6b84: $07
    rlca                                          ; $6b85: $07
    ld b, $05                                     ; $6b86: $06 $05
    ld b, $09                                     ; $6b88: $06 $09
    add hl, bc                                    ; $6b8a: $09
    add hl, bc                                    ; $6b8b: $09
    add hl, bc                                    ; $6b8c: $09
    ld h, b                                       ; $6b8d: $60
    ld h, c                                       ; $6b8e: $61
    ld h, h                                       ; $6b8f: $64
    ld l, $ea                                     ; $6b90: $2e $ea
    db $eb                                        ; $6b92: $eb
    db $ec                                        ; $6b93: $ec
    db $ed                                        ; $6b94: $ed
    xor $ef                                       ; $6b95: $ee $ef
    ld d, d                                       ; $6b97: $52
    ld a, [$fcf2]                                 ; $6b98: $fa $f2 $fc
    ld d, h                                       ; $6b9b: $54
    cp $03                                        ; $6b9c: $fe $03
    inc bc                                        ; $6b9e: $03
    inc b                                         ; $6b9f: $04
    inc b                                         ; $6ba0: $04
    rlca                                          ; $6ba1: $07
    rlca                                          ; $6ba2: $07
    rlca                                          ; $6ba3: $07
    rlca                                          ; $6ba4: $07
    dec b                                         ; $6ba5: $05
    dec b                                         ; $6ba6: $05
    ld b, $06                                     ; $6ba7: $06 $06
    ld b, $06                                     ; $6ba9: $06 $06
    ld b, $05                                     ; $6bab: $06 $05
    ld e, [hl]                                    ; $6bad: $5e
    ld e, a                                       ; $6bae: $5f
    inc bc                                        ; $6baf: $03
    ld l, a                                       ; $6bb0: $6f
    ld [$05eb], a                                 ; $6bb1: $ea $eb $05
    ld [hl], b                                    ; $6bb4: $70
    xor $ef                                       ; $6bb5: $ee $ef
    add hl, hl                                    ; $6bb7: $29
    and d                                         ; $6bb8: $a2
    ld a, [c]                                     ; $6bb9: $f2
    db $fc                                        ; $6bba: $fc
    dec hl                                        ; $6bbb: $2b
    and e                                         ; $6bbc: $a3
    inc bc                                        ; $6bbd: $03
    inc b                                         ; $6bbe: $04
    inc b                                         ; $6bbf: $04
    inc bc                                        ; $6bc0: $03
    rlca                                          ; $6bc1: $07
    rlca                                          ; $6bc2: $07
    inc b                                         ; $6bc3: $04
    inc bc                                        ; $6bc4: $03
    dec b                                         ; $6bc5: $05
    ld b, $04                                     ; $6bc6: $06 $04
    dec bc                                        ; $6bc8: $0b
    dec b                                         ; $6bc9: $05
    ld b, $04                                     ; $6bca: $06 $04
    dec bc                                        ; $6bcc: $0b
    sbc [hl]                                      ; $6bcd: $9e
    xor e                                         ; $6bce: $ab
    xor h                                         ; $6bcf: $ac
    xor l                                         ; $6bd0: $ad
    sbc a                                         ; $6bd1: $9f
    xor [hl]                                      ; $6bd2: $ae
    xor a                                         ; $6bd3: $af
    or b                                          ; $6bd4: $b0
    and b                                         ; $6bd5: $a0
    or c                                          ; $6bd6: $b1
    or d                                          ; $6bd7: $b2
    or e                                          ; $6bd8: $b3
    and c                                         ; $6bd9: $a1
    or h                                          ; $6bda: $b4
    or l                                          ; $6bdb: $b5
    or [hl]                                       ; $6bdc: $b6
    add hl, bc                                    ; $6bdd: $09
    add hl, bc                                    ; $6bde: $09
    add hl, bc                                    ; $6bdf: $09
    add hl, bc                                    ; $6be0: $09
    add hl, bc                                    ; $6be1: $09
    add hl, bc                                    ; $6be2: $09
    add hl, bc                                    ; $6be3: $09
    add hl, bc                                    ; $6be4: $09
    add hl, bc                                    ; $6be5: $09
    add hl, bc                                    ; $6be6: $09
    add hl, bc                                    ; $6be7: $09
    add hl, bc                                    ; $6be8: $09
    add hl, bc                                    ; $6be9: $09
    add hl, bc                                    ; $6bea: $09
    add hl, bc                                    ; $6beb: $09
    add hl, bc                                    ; $6bec: $09
    inc c                                         ; $6bed: $0c
    dec e                                         ; $6bee: $1d
    ld h, [hl]                                    ; $6bef: $66
    rra                                           ; $6bf0: $1f
    db $10                                        ; $6bf1: $10
    ld de, $2168                                  ; $6bf2: $11 $68 $21
    inc d                                         ; $6bf5: $14
    inc hl                                        ; $6bf6: $23
    ld l, d                                       ; $6bf7: $6a
    inc h                                         ; $6bf8: $24
    jr jr_084_6c21                                ; $6bf9: $18 $26

    cpl                                           ; $6bfb: $2f
    jr z, jr_084_6c05                             ; $6bfc: $28 $07

    ld b, $05                                     ; $6bfe: $06 $05
    ld b, $07                                     ; $6c00: $06 $07
    ld b, $06                                     ; $6c02: $06 $06
    dec b                                         ; $6c04: $05

jr_084_6c05:
    rlca                                          ; $6c05: $07
    ld b, $05                                     ; $6c06: $06 $05
    ld b, $07                                     ; $6c08: $06 $07
    ld b, $06                                     ; $6c0a: $06 $06
    dec b                                         ; $6c0c: $05
    inc c                                         ; $6c0d: $0c
    dec e                                         ; $6c0e: $1d
    dec l                                         ; $6c0f: $2d
    and h                                         ; $6c10: $a4
    db $10                                        ; $6c11: $10
    ld de, $2168                                  ; $6c12: $11 $68 $21
    inc d                                         ; $6c15: $14
    inc hl                                        ; $6c16: $23
    ld l, d                                       ; $6c17: $6a
    inc h                                         ; $6c18: $24
    jr jr_084_6c41                                ; $6c19: $18 $26

    rst $38                                       ; $6c1b: $ff
    rst $38                                       ; $6c1c: $ff
    ld b, $06                                     ; $6c1d: $06 $06
    inc b                                         ; $6c1f: $04
    dec bc                                        ; $6c20: $0b

jr_084_6c21:
    ld b, $06                                     ; $6c21: $06 $06
    rlca                                          ; $6c23: $07
    rlca                                          ; $6c24: $07
    ld b, $05                                     ; $6c25: $06 $05
    ld b, $05                                     ; $6c27: $06 $05
    dec b                                         ; $6c29: $05
    ld b, $82                                     ; $6c2a: $06 $82
    and d                                         ; $6c2c: $a2
    jr c, jr_084_6c68                             ; $6c2d: $38 $39

    ld l, e                                       ; $6c2f: $6b
    ld b, l                                       ; $6c30: $45
    inc a                                         ; $6c31: $3c
    dec a                                         ; $6c32: $3d
    ld a, $3f                                     ; $6c33: $3e $3f
    ld b, b                                       ; $6c35: $40
    ld b, c                                       ; $6c36: $41
    ld b, d                                       ; $6c37: $42
    ld b, e                                       ; $6c38: $43
    ld [$eceb], a                                 ; $6c39: $ea $eb $ec
    db $ed                                        ; $6c3c: $ed
    rlca                                          ; $6c3d: $07
    rlca                                          ; $6c3e: $07
    rlca                                          ; $6c3f: $07
    rlca                                          ; $6c40: $07

jr_084_6c41:
    rlca                                          ; $6c41: $07
    ld b, $05                                     ; $6c42: $06 $05
    ld b, $07                                     ; $6c44: $06 $07
    ld b, $06                                     ; $6c46: $06 $06
    dec b                                         ; $6c48: $05
    rlca                                          ; $6c49: $07
    dec b                                         ; $6c4a: $05
    ld b, $06                                     ; $6c4b: $06 $06
    jr c, jr_084_6c88                             ; $6c4d: $38 $39

    ld l, e                                       ; $6c4f: $6b
    ld b, l                                       ; $6c50: $45
    inc a                                         ; $6c51: $3c
    dec a                                         ; $6c52: $3d
    sbc l                                         ; $6c53: $9d
    xor b                                         ; $6c54: $a8
    ld b, b                                       ; $6c55: $40
    ld b, c                                       ; $6c56: $41
    sbc [hl]                                      ; $6c57: $9e
    xor e                                         ; $6c58: $ab
    ld [$9feb], a                                 ; $6c59: $ea $eb $9f
    xor [hl]                                      ; $6c5c: $ae
    rlca                                          ; $6c5d: $07
    ld b, $06                                     ; $6c5e: $06 $06
    ld b, $05                                     ; $6c60: $06 $05
    dec b                                         ; $6c62: $05
    add hl, bc                                    ; $6c63: $09
    add hl, bc                                    ; $6c64: $09
    ld b, $06                                     ; $6c65: $06 $06
    add hl, bc                                    ; $6c67: $09

jr_084_6c68:
    add hl, bc                                    ; $6c68: $09
    dec b                                         ; $6c69: $05
    ld b, $09                                     ; $6c6a: $06 $09
    add hl, bc                                    ; $6c6c: $09
    jr c, @+$3b                                   ; $6c6d: $38 $39

    ld d, l                                       ; $6c6f: $55
    ld d, l                                       ; $6c70: $55
    xor c                                         ; $6c71: $a9
    xor d                                         ; $6c72: $aa
    ld d, l                                       ; $6c73: $55
    ld d, l                                       ; $6c74: $55
    xor h                                         ; $6c75: $ac
    xor l                                         ; $6c76: $ad
    ld d, l                                       ; $6c77: $55
    ld d, l                                       ; $6c78: $55
    xor a                                         ; $6c79: $af
    or b                                          ; $6c7a: $b0
    ld d, l                                       ; $6c7b: $55
    ld d, l                                       ; $6c7c: $55
    ld b, $06                                     ; $6c7d: $06 $06
    add d                                         ; $6c7f: $82
    and d                                         ; $6c80: $a2
    add hl, bc                                    ; $6c81: $09
    add hl, bc                                    ; $6c82: $09
    add d                                         ; $6c83: $82
    and d                                         ; $6c84: $a2
    add hl, bc                                    ; $6c85: $09
    add hl, bc                                    ; $6c86: $09
    add d                                         ; $6c87: $82

jr_084_6c88:
    and d                                         ; $6c88: $a2
    add hl, bc                                    ; $6c89: $09
    add hl, bc                                    ; $6c8a: $09
    add d                                         ; $6c8b: $82
    and d                                         ; $6c8c: $a2
    inc d                                         ; $6c8d: $14
    inc hl                                        ; $6c8e: $23
    ld l, d                                       ; $6c8f: $6a
    inc h                                         ; $6c90: $24
    jr jr_084_6cb9                                ; $6c91: $18 $26

    cpl                                           ; $6c93: $2f
    jr z, jr_084_6cce                             ; $6c94: $28 $38

    add hl, sp                                    ; $6c96: $39
    ld l, e                                       ; $6c97: $6b
    ld b, l                                       ; $6c98: $45
    inc a                                         ; $6c99: $3c
    dec a                                         ; $6c9a: $3d
    ld a, $3f                                     ; $6c9b: $3e $3f
    ld b, $06                                     ; $6c9d: $06 $06
    dec b                                         ; $6c9f: $05
    dec b                                         ; $6ca0: $05
    rlca                                          ; $6ca1: $07
    ld b, $05                                     ; $6ca2: $06 $05
    dec b                                         ; $6ca4: $05
    rlca                                          ; $6ca5: $07
    dec b                                         ; $6ca6: $05
    ld b, $06                                     ; $6ca7: $06 $06
    rlca                                          ; $6ca9: $07
    ld b, $06                                     ; $6caa: $06 $06
    dec b                                         ; $6cac: $05
    inc d                                         ; $6cad: $14
    ld d, l                                       ; $6cae: $55
    ld d, l                                       ; $6caf: $55
    inc h                                         ; $6cb0: $24
    jr jr_084_6d08                                ; $6cb1: $18 $55

    ld d, l                                       ; $6cb3: $55
    jr z, jr_084_6cee                             ; $6cb4: $28 $38

    ld d, l                                       ; $6cb6: $55
    ld d, l                                       ; $6cb7: $55
    ld b, l                                       ; $6cb8: $45

jr_084_6cb9:
    inc a                                         ; $6cb9: $3c
    ld d, l                                       ; $6cba: $55
    ld d, l                                       ; $6cbb: $55
    ccf                                           ; $6cbc: $3f
    dec b                                         ; $6cbd: $05
    add d                                         ; $6cbe: $82
    and d                                         ; $6cbf: $a2
    rlca                                          ; $6cc0: $07
    ld b, $82                                     ; $6cc1: $06 $82
    and d                                         ; $6cc3: $a2
    rlca                                          ; $6cc4: $07
    dec b                                         ; $6cc5: $05
    add d                                         ; $6cc6: $82
    and d                                         ; $6cc7: $a2
    rlca                                          ; $6cc8: $07
    ld b, $82                                     ; $6cc9: $06 $82
    and d                                         ; $6ccb: $a2
    rlca                                          ; $6ccc: $07
    inc d                                         ; $6ccd: $14

jr_084_6cce:
    inc hl                                        ; $6cce: $23
    ld l, d                                       ; $6ccf: $6a
    inc h                                         ; $6cd0: $24
    jr jr_084_6cf9                                ; $6cd1: $18 $26

    sbc l                                         ; $6cd3: $9d
    xor b                                         ; $6cd4: $a8
    jr c, jr_084_6d10                             ; $6cd5: $38 $39

    sbc [hl]                                      ; $6cd7: $9e
    xor e                                         ; $6cd8: $ab
    inc a                                         ; $6cd9: $3c
    dec a                                         ; $6cda: $3d
    sbc a                                         ; $6cdb: $9f
    xor [hl]                                      ; $6cdc: $ae
    ld b, $05                                     ; $6cdd: $06 $05
    ld b, $06                                     ; $6cdf: $06 $06
    ld b, $05                                     ; $6ce1: $06 $05
    add hl, bc                                    ; $6ce3: $09
    add hl, bc                                    ; $6ce4: $09
    dec b                                         ; $6ce5: $05
    ld b, $09                                     ; $6ce6: $06 $09
    add hl, bc                                    ; $6ce8: $09
    ld b, $06                                     ; $6ce9: $06 $06
    add hl, bc                                    ; $6ceb: $09
    add hl, bc                                    ; $6cec: $09
    inc d                                         ; $6ced: $14

jr_084_6cee:
    inc hl                                        ; $6cee: $23
    ld l, d                                       ; $6cef: $6a
    inc h                                         ; $6cf0: $24
    xor c                                         ; $6cf1: $a9
    xor b                                         ; $6cf2: $a8
    xor c                                         ; $6cf3: $a9
    xor b                                         ; $6cf4: $a8
    xor h                                         ; $6cf5: $ac
    xor e                                         ; $6cf6: $ab
    xor h                                         ; $6cf7: $ac
    xor e                                         ; $6cf8: $ab

jr_084_6cf9:
    xor a                                         ; $6cf9: $af
    xor [hl]                                      ; $6cfa: $ae
    xor a                                         ; $6cfb: $af
    xor [hl]                                      ; $6cfc: $ae
    dec b                                         ; $6cfd: $05
    ld b, $05                                     ; $6cfe: $06 $05
    ld b, $09                                     ; $6d00: $06 $09
    add hl, bc                                    ; $6d02: $09
    add hl, bc                                    ; $6d03: $09
    add hl, bc                                    ; $6d04: $09
    add hl, bc                                    ; $6d05: $09
    add hl, bc                                    ; $6d06: $09
    add hl, bc                                    ; $6d07: $09

jr_084_6d08:
    add hl, bc                                    ; $6d08: $09
    add hl, bc                                    ; $6d09: $09
    add hl, bc                                    ; $6d0a: $09
    add hl, bc                                    ; $6d0b: $09
    add hl, bc                                    ; $6d0c: $09
    ld b, b                                       ; $6d0d: $40
    ld b, c                                       ; $6d0e: $41
    ld b, d                                       ; $6d0f: $42

jr_084_6d10:
    ld b, e                                       ; $6d10: $43
    ld [$ffeb], a                                 ; $6d11: $ea $eb $ff
    nop                                           ; $6d14: $00
    xor $ef                                       ; $6d15: $ee $ef
    ld bc, $f202                                  ; $6d17: $01 $02 $f2
    db $fc                                        ; $6d1a: $fc
    inc bc                                        ; $6d1b: $03
    ld c, b                                       ; $6d1c: $48
    rlca                                          ; $6d1d: $07
    ld b, $05                                     ; $6d1e: $06 $05
    ld b, $07                                     ; $6d20: $06 $07
    dec b                                         ; $6d22: $05
    add d                                         ; $6d23: $82
    add d                                         ; $6d24: $82
    rlca                                          ; $6d25: $07
    ld b, $82                                     ; $6d26: $06 $82
    add d                                         ; $6d28: $82
    rlca                                          ; $6d29: $07
    dec b                                         ; $6d2a: $05
    add h                                         ; $6d2b: $84
    add e                                         ; $6d2c: $83
    ld b, b                                       ; $6d2d: $40
    ld d, l                                       ; $6d2e: $55
    ld d, l                                       ; $6d2f: $55
    ld b, e                                       ; $6d30: $43
    nop                                           ; $6d31: $00
    cp c                                          ; $6d32: $b9
    ld d, l                                       ; $6d33: $55
    db $ed                                        ; $6d34: $ed
    ld [bc], a                                    ; $6d35: $02
    ld l, [hl]                                    ; $6d36: $6e
    ld d, l                                       ; $6d37: $55
    ld a, [$5549]                                 ; $6d38: $fa $49 $55
    ld d, l                                       ; $6d3b: $55
    cp $06                                        ; $6d3c: $fe $06
    add d                                         ; $6d3e: $82
    and d                                         ; $6d3f: $a2
    rlca                                          ; $6d40: $07
    add d                                         ; $6d41: $82
    xor d                                         ; $6d42: $aa
    and d                                         ; $6d43: $a2
    rlca                                          ; $6d44: $07
    add d                                         ; $6d45: $82
    and d                                         ; $6d46: $a2
    and d                                         ; $6d47: $a2
    rlca                                          ; $6d48: $07
    add h                                         ; $6d49: $84
    add d                                         ; $6d4a: $82
    and d                                         ; $6d4b: $a2
    rlca                                          ; $6d4c: $07
    ld b, b                                       ; $6d4d: $40
    ld b, c                                       ; $6d4e: $41
    and b                                         ; $6d4f: $a0
    or c                                          ; $6d50: $b1
    ld [$a1eb], a                                 ; $6d51: $ea $eb $a1
    or h                                          ; $6d54: $b4
    xor $ef                                       ; $6d55: $ee $ef
    ld d, d                                       ; $6d57: $52
    ld a, [$fcf2]                                 ; $6d58: $fa $f2 $fc
    ld d, h                                       ; $6d5b: $54
    cp $06                                        ; $6d5c: $fe $06
    dec b                                         ; $6d5e: $05
    add hl, bc                                    ; $6d5f: $09
    add hl, bc                                    ; $6d60: $09
    dec b                                         ; $6d61: $05
    ld b, $09                                     ; $6d62: $06 $09
    add hl, bc                                    ; $6d64: $09
    ld b, $06                                     ; $6d65: $06 $06
    rlca                                          ; $6d67: $07
    rlca                                          ; $6d68: $07
    dec b                                         ; $6d69: $05
    ld b, $05                                     ; $6d6a: $06 $05
    dec b                                         ; $6d6c: $05
    or d                                          ; $6d6d: $b2
    or c                                          ; $6d6e: $b1
    or d                                          ; $6d6f: $b2
    or c                                          ; $6d70: $b1
    or l                                          ; $6d71: $b5
    or h                                          ; $6d72: $b4
    or l                                          ; $6d73: $b5
    or h                                          ; $6d74: $b4
    xor $ef                                       ; $6d75: $ee $ef
    ld d, d                                       ; $6d77: $52
    ld a, [$fcf2]                                 ; $6d78: $fa $f2 $fc
    ld d, h                                       ; $6d7b: $54
    cp $09                                        ; $6d7c: $fe $09
    add hl, bc                                    ; $6d7e: $09
    add hl, bc                                    ; $6d7f: $09
    add hl, bc                                    ; $6d80: $09
    add hl, bc                                    ; $6d81: $09
    add hl, bc                                    ; $6d82: $09
    add hl, bc                                    ; $6d83: $09
    add hl, bc                                    ; $6d84: $09
    rlca                                          ; $6d85: $07
    rlca                                          ; $6d86: $07
    rlca                                          ; $6d87: $07
    rlca                                          ; $6d88: $07
    ld b, $06                                     ; $6d89: $06 $06
    dec b                                         ; $6d8b: $05
    ld b, $0c                                     ; $6d8c: $06 $0c
    dec e                                         ; $6d8e: $1d
    dec b                                         ; $6d8f: $05
    ld c, h                                       ; $6d90: $4c
    db $10                                        ; $6d91: $10
    ld de, $5729                                  ; $6d92: $11 $29 $57
    inc d                                         ; $6d95: $14
    inc hl                                        ; $6d96: $23
    dec hl                                        ; $6d97: $2b
    ld e, e                                       ; $6d98: $5b
    jr jr_084_6dc1                                ; $6d99: $18 $26

    dec l                                         ; $6d9b: $2d
    ld e, a                                       ; $6d9c: $5f
    rlca                                          ; $6d9d: $07
    dec b                                         ; $6d9e: $05
    inc bc                                        ; $6d9f: $03
    inc b                                         ; $6da0: $04
    rlca                                          ; $6da1: $07
    dec b                                         ; $6da2: $05
    inc bc                                        ; $6da3: $03
    inc bc                                        ; $6da4: $03
    ld b, $05                                     ; $6da5: $06 $05
    inc bc                                        ; $6da7: $03
    inc b                                         ; $6da8: $04
    ld b, $06                                     ; $6da9: $06 $06
    inc b                                         ; $6dab: $04
    inc bc                                        ; $6dac: $03
    ld c, l                                       ; $6dad: $4d
    ld d, l                                       ; $6dae: $55
    ld d, l                                       ; $6daf: $55
    rra                                           ; $6db0: $1f
    ld e, b                                       ; $6db1: $58
    ld d, l                                       ; $6db2: $55
    ld d, l                                       ; $6db3: $55
    ld hl, $555c                                  ; $6db4: $21 $5c $55
    ld d, l                                       ; $6db7: $55
    inc h                                         ; $6db8: $24
    ld h, b                                       ; $6db9: $60
    ld d, l                                       ; $6dba: $55
    ld d, l                                       ; $6dbb: $55
    jr z, jr_084_6dc2                             ; $6dbc: $28 $04

    add d                                         ; $6dbe: $82
    and d                                         ; $6dbf: $a2
    rlca                                          ; $6dc0: $07

jr_084_6dc1:
    inc b                                         ; $6dc1: $04

jr_084_6dc2:
    add d                                         ; $6dc2: $82
    and d                                         ; $6dc3: $a2
    rlca                                          ; $6dc4: $07
    inc bc                                        ; $6dc5: $03
    add d                                         ; $6dc6: $82
    and d                                         ; $6dc7: $a2
    rlca                                          ; $6dc8: $07
    inc bc                                        ; $6dc9: $03
    add d                                         ; $6dca: $82
    and d                                         ; $6dcb: $a2
    rlca                                          ; $6dcc: $07
    inc c                                         ; $6dcd: $0c
    dec e                                         ; $6dce: $1d
    ld h, [hl]                                    ; $6dcf: $66
    rra                                           ; $6dd0: $1f
    db $10                                        ; $6dd1: $10
    ld de, $2168                                  ; $6dd2: $11 $68 $21
    inc d                                         ; $6dd5: $14
    inc hl                                        ; $6dd6: $23
    ld l, d                                       ; $6dd7: $6a
    inc h                                         ; $6dd8: $24
    jr @+$28                                      ; $6dd9: $18 $26

    cpl                                           ; $6ddb: $2f
    jr z, jr_084_6de4                             ; $6ddc: $28 $06

    dec b                                         ; $6dde: $05
    dec b                                         ; $6ddf: $05
    ld b, $05                                     ; $6de0: $06 $05
    ld b, $06                                     ; $6de2: $06 $06

jr_084_6de4:
    ld b, $06                                     ; $6de4: $06 $06
    ld b, $05                                     ; $6de6: $06 $05
    dec b                                         ; $6de8: $05
    ld b, $05                                     ; $6de9: $06 $05
    ld b, $06                                     ; $6deb: $06 $06
    inc c                                         ; $6ded: $0c
    dec e                                         ; $6dee: $1d
    ld h, [hl]                                    ; $6def: $66
    rra                                           ; $6df0: $1f
    db $10                                        ; $6df1: $10
    ld de, $2168                                  ; $6df2: $11 $68 $21
    inc d                                         ; $6df5: $14
    inc hl                                        ; $6df6: $23
    ld l, d                                       ; $6df7: $6a
    inc h                                         ; $6df8: $24
    jr jr_084_6e21                                ; $6df9: $18 $26

    cpl                                           ; $6dfb: $2f
    jr z, jr_084_6e04                             ; $6dfc: $28 $06

    ld b, $06                                     ; $6dfe: $06 $06
    ld b, $05                                     ; $6e00: $06 $05
    ld b, $05                                     ; $6e02: $06 $05

jr_084_6e04:
    dec b                                         ; $6e04: $05
    dec b                                         ; $6e05: $05
    dec b                                         ; $6e06: $05
    dec b                                         ; $6e07: $05
    dec b                                         ; $6e08: $05
    dec b                                         ; $6e09: $05
    dec b                                         ; $6e0a: $05
    dec b                                         ; $6e0b: $05
    dec b                                         ; $6e0c: $05
    jr c, jr_084_6e48                             ; $6e0d: $38 $39

    ld l, e                                       ; $6e0f: $6b
    ld b, l                                       ; $6e10: $45
    inc a                                         ; $6e11: $3c
    dec a                                         ; $6e12: $3d
    ld a, $3f                                     ; $6e13: $3e $3f
    ld b, b                                       ; $6e15: $40
    ld b, c                                       ; $6e16: $41
    ld b, d                                       ; $6e17: $42
    ld b, e                                       ; $6e18: $43
    ld [$eceb], a                                 ; $6e19: $ea $eb $ec
    db $ed                                        ; $6e1c: $ed
    ld b, $05                                     ; $6e1d: $06 $05
    rlca                                          ; $6e1f: $07
    rlca                                          ; $6e20: $07

jr_084_6e21:
    ld b, $05                                     ; $6e21: $06 $05
    ld b, $06                                     ; $6e23: $06 $06
    rlca                                          ; $6e25: $07
    dec b                                         ; $6e26: $05
    dec b                                         ; $6e27: $05
    dec b                                         ; $6e28: $05
    rlca                                          ; $6e29: $07
    ld b, $05                                     ; $6e2a: $06 $05
    ld b, $38                                     ; $6e2c: $06 $38
    ld d, l                                       ; $6e2e: $55
    ld d, l                                       ; $6e2f: $55
    ld b, l                                       ; $6e30: $45
    inc a                                         ; $6e31: $3c
    ld bc, $3f01                                  ; $6e32: $01 $01 $3f
    ld b, b                                       ; $6e35: $40
    ld l, h                                       ; $6e36: $6c
    ld d, c                                       ; $6e37: $51
    ld b, e                                       ; $6e38: $43
    ld [$536d], a                                 ; $6e39: $ea $6d $53
    db $ed                                        ; $6e3c: $ed
    rlca                                          ; $6e3d: $07
    add d                                         ; $6e3e: $82
    and d                                         ; $6e3f: $a2
    rlca                                          ; $6e40: $07
    dec b                                         ; $6e41: $05

jr_084_6e42:
    add d                                         ; $6e42: $82
    and d                                         ; $6e43: $a2
    rlca                                          ; $6e44: $07
    ld b, $04                                     ; $6e45: $06 $04
    inc bc                                        ; $6e47: $03

jr_084_6e48:
    rlca                                          ; $6e48: $07
    ld b, $03                                     ; $6e49: $06 $03
    inc b                                         ; $6e4b: $04
    rlca                                          ; $6e4c: $07
    jr c, @+$3b                                   ; $6e4d: $38 $39

    ld l, e                                       ; $6e4f: $6b
    ld b, l                                       ; $6e50: $45
    inc a                                         ; $6e51: $3c
    cp d                                          ; $6e52: $ba
    cp e                                          ; $6e53: $bb
    ccf                                           ; $6e54: $3f
    ld b, b                                       ; $6e55: $40
    ld b, c                                       ; $6e56: $41
    ld b, d                                       ; $6e57: $42
    ld b, e                                       ; $6e58: $43
    ld [$eceb], a                                 ; $6e59: $ea $eb $ec
    db $ed                                        ; $6e5c: $ed
    ld b, $06                                     ; $6e5d: $06 $06
    ld b, $05                                     ; $6e5f: $06 $05
    ld b, $0d                                     ; $6e61: $06 $0d
    ld c, $06                                     ; $6e63: $0e $06
    dec b                                         ; $6e65: $05
    ld b, $06                                     ; $6e66: $06 $06
    dec b                                         ; $6e68: $05
    ld b, $06                                     ; $6e69: $06 $06
    dec b                                         ; $6e6b: $05
    ld b, $38                                     ; $6e6c: $06 $38
    add hl, sp                                    ; $6e6e: $39
    ld l, e                                       ; $6e6f: $6b
    ld b, l                                       ; $6e70: $45
    inc a                                         ; $6e71: $3c
    dec a                                         ; $6e72: $3d
    ld a, $3f                                     ; $6e73: $3e $3f
    ld b, b                                       ; $6e75: $40
    ld b, c                                       ; $6e76: $41
    ld b, d                                       ; $6e77: $42
    ld b, e                                       ; $6e78: $43
    ld [$eceb], a                                 ; $6e79: $ea $eb $ec
    db $ed                                        ; $6e7c: $ed
    dec b                                         ; $6e7d: $05
    ld b, $05                                     ; $6e7e: $06 $05
    ld b, $05                                     ; $6e80: $06 $05
    ld b, $06                                     ; $6e82: $06 $06
    dec b                                         ; $6e84: $05
    ld b, $06                                     ; $6e85: $06 $06
    ld b, $06                                     ; $6e87: $06 $06
    dec b                                         ; $6e89: $05
    ld b, $05                                     ; $6e8a: $06 $05
    ld b, $14                                     ; $6e8c: $06 $14
    inc hl                                        ; $6e8e: $23
    ld l, d                                       ; $6e8f: $6a
    inc h                                         ; $6e90: $24
    xor c                                         ; $6e91: $a9
    xor d                                         ; $6e92: $aa
    cpl                                           ; $6e93: $2f
    jr z, jr_084_6e42                             ; $6e94: $28 $ac

    xor l                                         ; $6e96: $ad
    ld l, e                                       ; $6e97: $6b
    ld b, l                                       ; $6e98: $45
    xor a                                         ; $6e99: $af
    or b                                          ; $6e9a: $b0
    ld a, $3f                                     ; $6e9b: $3e $3f
    ld b, $06                                     ; $6e9d: $06 $06
    dec b                                         ; $6e9f: $05
    ld b, $09                                     ; $6ea0: $06 $09
    add hl, bc                                    ; $6ea2: $09
    ld b, $05                                     ; $6ea3: $06 $05
    add hl, bc                                    ; $6ea5: $09
    add hl, bc                                    ; $6ea6: $09
    rlca                                          ; $6ea7: $07
    ld b, $09                                     ; $6ea8: $06 $09
    add hl, bc                                    ; $6eaa: $09
    rlca                                          ; $6eab: $07
    ld b, $14                                     ; $6eac: $06 $14
    inc bc                                        ; $6eae: $03
    inc b                                         ; $6eaf: $04
    ld b, a                                       ; $6eb0: $47
    jr jr_084_6eb8                                ; $6eb1: $18 $05

    ld b, $4b                                     ; $6eb3: $06 $4b
    jr c, @+$2b                                   ; $6eb5: $38 $29

    ld a, [hl+]                                   ; $6eb7: $2a

jr_084_6eb8:
    ld d, [hl]                                    ; $6eb8: $56
    inc a                                         ; $6eb9: $3c
    dec hl                                        ; $6eba: $2b
    inc l                                         ; $6ebb: $2c
    ld e, d                                       ; $6ebc: $5a
    ld b, $83                                     ; $6ebd: $06 $83
    add h                                         ; $6ebf: $84
    add h                                         ; $6ec0: $84
    ld b, $03                                     ; $6ec1: $06 $03
    inc bc                                        ; $6ec3: $03
    inc b                                         ; $6ec4: $04
    ld b, $03                                     ; $6ec5: $06 $03
    inc b                                         ; $6ec7: $04
    inc bc                                        ; $6ec8: $03
    dec b                                         ; $6ec9: $05
    inc b                                         ; $6eca: $04
    inc bc                                        ; $6ecb: $03
    inc b                                         ; $6ecc: $04
    ld d, l                                       ; $6ecd: $55
    ld d, l                                       ; $6ece: $55
    ld l, d                                       ; $6ecf: $6a
    inc h                                         ; $6ed0: $24
    ld d, l                                       ; $6ed1: $55
    ld d, l                                       ; $6ed2: $55
    cpl                                           ; $6ed3: $2f
    jr z, @+$57                                   ; $6ed4: $28 $55

    ld d, l                                       ; $6ed6: $55
    ld l, e                                       ; $6ed7: $6b
    ld b, l                                       ; $6ed8: $45
    ld d, l                                       ; $6ed9: $55
    ld d, l                                       ; $6eda: $55
    ld a, $3f                                     ; $6edb: $3e $3f
    add d                                         ; $6edd: $82
    and d                                         ; $6ede: $a2
    ld b, $06                                     ; $6edf: $06 $06
    add d                                         ; $6ee1: $82
    and d                                         ; $6ee2: $a2
    rlca                                          ; $6ee3: $07
    ld b, $82                                     ; $6ee4: $06 $82
    and d                                         ; $6ee6: $a2
    rlca                                          ; $6ee7: $07
    ld b, $82                                     ; $6ee8: $06 $82
    and d                                         ; $6eea: $a2
    rlca                                          ; $6eeb: $07
    ld b, $14                                     ; $6eec: $06 $14
    inc hl                                        ; $6eee: $23
    ld l, d                                       ; $6eef: $6a
    inc h                                         ; $6ef0: $24
    jr @+$28                                      ; $6ef1: $18 $26

    cpl                                           ; $6ef3: $2f
    jr z, jr_084_6f2e                             ; $6ef4: $28 $38

    add hl, sp                                    ; $6ef6: $39
    ld l, e                                       ; $6ef7: $6b
    ld b, l                                       ; $6ef8: $45
    inc a                                         ; $6ef9: $3c
    dec a                                         ; $6efa: $3d
    ld a, $3f                                     ; $6efb: $3e $3f
    ld b, $05                                     ; $6efd: $06 $05
    ld b, $06                                     ; $6eff: $06 $06
    dec b                                         ; $6f01: $05
    ld b, $06                                     ; $6f02: $06 $06
    ld b, $06                                     ; $6f04: $06 $06
    dec b                                         ; $6f06: $05
    dec b                                         ; $6f07: $05
    ld b, $06                                     ; $6f08: $06 $06
    ld b, $05                                     ; $6f0a: $06 $05
    dec b                                         ; $6f0c: $05
    or d                                          ; $6f0d: $b2
    or e                                          ; $6f0e: $b3
    ld b, d                                       ; $6f0f: $42
    ld b, e                                       ; $6f10: $43
    or l                                          ; $6f11: $b5
    or [hl]                                       ; $6f12: $b6
    db $ec                                        ; $6f13: $ec
    db $ed                                        ; $6f14: $ed
    xor $ef                                       ; $6f15: $ee $ef
    ld d, d                                       ; $6f17: $52
    ld a, [$fcf2]                                 ; $6f18: $fa $f2 $fc
    ld d, h                                       ; $6f1b: $54
    cp $09                                        ; $6f1c: $fe $09
    add hl, bc                                    ; $6f1e: $09
    rlca                                          ; $6f1f: $07
    ld b, $09                                     ; $6f20: $06 $09
    add hl, bc                                    ; $6f22: $09
    rlca                                          ; $6f23: $07
    ld b, $07                                     ; $6f24: $06 $07
    rlca                                          ; $6f26: $07
    rlca                                          ; $6f27: $07
    ld b, $06                                     ; $6f28: $06 $06
    ld b, $06                                     ; $6f2a: $06 $06
    dec b                                         ; $6f2c: $05
    ld b, b                                       ; $6f2d: $40

jr_084_6f2e:
    dec l                                         ; $6f2e: $2d
    ld l, $5e                                     ; $6f2f: $2e $5e
    ld [$eceb], a                                 ; $6f31: $ea $eb $ec
    db $ed                                        ; $6f34: $ed
    xor $ef                                       ; $6f35: $ee $ef
    ld d, d                                       ; $6f37: $52
    ld a, [$fcf2]                                 ; $6f38: $fa $f2 $fc
    ld d, h                                       ; $6f3b: $54
    cp $06                                        ; $6f3c: $fe $06
    inc b                                         ; $6f3e: $04
    inc bc                                        ; $6f3f: $03
    inc bc                                        ; $6f40: $03
    dec b                                         ; $6f41: $05
    rlca                                          ; $6f42: $07
    rlca                                          ; $6f43: $07
    rlca                                          ; $6f44: $07
    ld b, $06                                     ; $6f45: $06 $06
    ld b, $06                                     ; $6f47: $06 $06
    dec b                                         ; $6f49: $05
    dec b                                         ; $6f4a: $05
    ld b, $06                                     ; $6f4b: $06 $06
    ld d, l                                       ; $6f4d: $55
    ld d, l                                       ; $6f4e: $55
    ld b, d                                       ; $6f4f: $42
    ld b, e                                       ; $6f50: $43
    ld d, l                                       ; $6f51: $55
    ld d, l                                       ; $6f52: $55
    db $ec                                        ; $6f53: $ec
    db $ed                                        ; $6f54: $ed
    ld d, l                                       ; $6f55: $55
    ld d, l                                       ; $6f56: $55
    ld d, d                                       ; $6f57: $52
    ld a, [$5555]                                 ; $6f58: $fa $55 $55
    ld d, h                                       ; $6f5b: $54
    cp $82                                        ; $6f5c: $fe $82
    and d                                         ; $6f5e: $a2
    rlca                                          ; $6f5f: $07
    ld b, $82                                     ; $6f60: $06 $82
    and d                                         ; $6f62: $a2
    rlca                                          ; $6f63: $07
    ld b, $82                                     ; $6f64: $06 $82
    and d                                         ; $6f66: $a2
    rlca                                          ; $6f67: $07
    dec b                                         ; $6f68: $05
    add d                                         ; $6f69: $82
    and d                                         ; $6f6a: $a2
    rlca                                          ; $6f6b: $07
    dec b                                         ; $6f6c: $05
    ld b, b                                       ; $6f6d: $40
    ld b, c                                       ; $6f6e: $41
    ld b, d                                       ; $6f6f: $42
    ld b, e                                       ; $6f70: $43
    ld [$eceb], a                                 ; $6f71: $ea $eb $ec
    db $ed                                        ; $6f74: $ed
    xor $ef                                       ; $6f75: $ee $ef
    ld d, d                                       ; $6f77: $52
    ld a, [$9df2]                                 ; $6f78: $fa $f2 $9d
    xor b                                         ; $6f7b: $a8
    xor c                                         ; $6f7c: $a9
    dec b                                         ; $6f7d: $05
    ld b, $06                                     ; $6f7e: $06 $06
    ld b, $05                                     ; $6f80: $06 $05
    dec b                                         ; $6f82: $05
    ld b, $06                                     ; $6f83: $06 $06
    ld b, $06                                     ; $6f85: $06 $06
    dec b                                         ; $6f87: $05

jr_084_6f88:
    ld b, $06                                     ; $6f88: $06 $06
    add hl, bc                                    ; $6f8a: $09
    add hl, bc                                    ; $6f8b: $09
    add hl, bc                                    ; $6f8c: $09
    inc c                                         ; $6f8d: $0c
    dec e                                         ; $6f8e: $1d
    ld h, [hl]                                    ; $6f8f: $66
    rra                                           ; $6f90: $1f
    db $10                                        ; $6f91: $10
    ld de, $2168                                  ; $6f92: $11 $68 $21
    inc d                                         ; $6f95: $14
    inc hl                                        ; $6f96: $23
    ld l, d                                       ; $6f97: $6a
    inc h                                         ; $6f98: $24
    jr jr_084_6fc1                                ; $6f99: $18 $26

    cpl                                           ; $6f9b: $2f

jr_084_6f9c:
    jr z, jr_084_6fa3                             ; $6f9c: $28 $05

    ld b, $06                                     ; $6f9e: $06 $06
    dec b                                         ; $6fa0: $05
    dec b                                         ; $6fa1: $05
    dec b                                         ; $6fa2: $05

jr_084_6fa3:
    dec b                                         ; $6fa3: $05
    ld b, $05                                     ; $6fa4: $06 $05
    dec b                                         ; $6fa6: $05
    ld b, $06                                     ; $6fa7: $06 $06
    ld b, $06                                     ; $6fa9: $06 $06
    ld b, $05                                     ; $6fab: $06 $05
    inc c                                         ; $6fad: $0c
    rst $38                                       ; $6fae: $ff
    nop                                           ; $6faf: $00
    nop                                           ; $6fb0: $00
    db $10                                        ; $6fb1: $10
    ld bc, $0202                                  ; $6fb2: $01 $02 $02
    inc d                                         ; $6fb5: $14
    inc bc                                        ; $6fb6: $03
    ld c, b                                       ; $6fb7: $48
    ld c, c                                       ; $6fb8: $49
    jr jr_084_6fc0                                ; $6fb9: $18 $05

    ld c, h                                       ; $6fbb: $4c
    ld c, l                                       ; $6fbc: $4d
    ld b, $82                                     ; $6fbd: $06 $82
    add d                                         ; $6fbf: $82

jr_084_6fc0:
    add d                                         ; $6fc0: $82

jr_084_6fc1:
    ld b, $82                                     ; $6fc1: $06 $82
    add d                                         ; $6fc3: $82
    add d                                         ; $6fc4: $82
    ld b, $84                                     ; $6fc5: $06 $84
    add e                                         ; $6fc7: $83
    add e                                         ; $6fc8: $83
    ld b, $03                                     ; $6fc9: $06 $03
    inc b                                         ; $6fcb: $04
    inc bc                                        ; $6fcc: $03
    cp c                                          ; $6fcd: $b9
    ld d, l                                       ; $6fce: $55
    ld h, [hl]                                    ; $6fcf: $66
    rra                                           ; $6fd0: $1f
    ld [bc], a                                    ; $6fd1: $02
    ld bc, $2168                                  ; $6fd2: $01 $68 $21
    ld b, a                                       ; $6fd5: $47
    ld d, c                                       ; $6fd6: $51
    ld l, d                                       ; $6fd7: $6a
    inc h                                         ; $6fd8: $24
    ld c, e                                       ; $6fd9: $4b
    ld d, e                                       ; $6fda: $53
    cpl                                           ; $6fdb: $2f

Call_084_6fdc:
    jr z, jr_084_6f88                             ; $6fdc: $28 $aa

    and d                                         ; $6fde: $a2

Call_084_6fdf:
    rlca                                          ; $6fdf: $07
    dec b                                         ; $6fe0: $05
    add d                                         ; $6fe1: $82
    and d                                         ; $6fe2: $a2
    rlca                                          ; $6fe3: $07
    ld b, $83                                     ; $6fe4: $06 $83
    add h                                         ; $6fe6: $84
    rlca                                          ; $6fe7: $07
    ld b, $04                                     ; $6fe8: $06 $04
    inc bc                                        ; $6fea: $03
    rlca                                          ; $6feb: $07
    dec b                                         ; $6fec: $05
    inc c                                         ; $6fed: $0c
    sbc [hl]                                      ; $6fee: $9e
    xor e                                         ; $6fef: $ab
    xor h                                         ; $6ff0: $ac
    db $10                                        ; $6ff1: $10
    sbc a                                         ; $6ff2: $9f
    xor [hl]                                      ; $6ff3: $ae
    xor a                                         ; $6ff4: $af
    inc d                                         ; $6ff5: $14
    and b                                         ; $6ff6: $a0
    or c                                          ; $6ff7: $b1
    or d                                          ; $6ff8: $b2
    jr jr_084_6f9c                                ; $6ff9: $18 $a1

    or h                                          ; $6ffb: $b4
    or l                                          ; $6ffc: $b5
    dec b                                         ; $6ffd: $05
    add hl, bc                                    ; $6ffe: $09
    add hl, bc                                    ; $6fff: $09
    add hl, bc                                    ; $7000: $09
    dec b                                         ; $7001: $05
    add hl, bc                                    ; $7002: $09
    add hl, bc                                    ; $7003: $09
    add hl, bc                                    ; $7004: $09
    ld b, $09                                     ; $7005: $06 $09
    add hl, bc                                    ; $7007: $09
    add hl, bc                                    ; $7008: $09
    ld b, $09                                     ; $7009: $06 $09
    add hl, bc                                    ; $700b: $09
    add hl, bc                                    ; $700c: $09
    jr c, jr_084_7048                             ; $700d: $38 $39

    ld l, e                                       ; $700f: $6b
    ld b, l                                       ; $7010: $45
    inc a                                         ; $7011: $3c
    dec a                                         ; $7012: $3d
    ld a, $3f                                     ; $7013: $3e $3f
    ld b, b                                       ; $7015: $40
    ld b, c                                       ; $7016: $41
    ld b, d                                       ; $7017: $42
    ld b, e                                       ; $7018: $43
    ld [$eceb], a                                 ; $7019: $ea $eb $ec
    db $ed                                        ; $701c: $ed
    ld b, $06                                     ; $701d: $06 $06
    ld b, $06                                     ; $701f: $06 $06
    dec b                                         ; $7021: $05
    dec b                                         ; $7022: $05
    ld b, $05                                     ; $7023: $06 $05
    ld b, $05                                     ; $7025: $06 $05
    ld b, $06                                     ; $7027: $06 $06
    ld b, $05                                     ; $7029: $06 $05
    dec b                                         ; $702b: $05
    dec b                                         ; $702c: $05
    jr c, jr_084_7058                             ; $702d: $38 $29

    ld d, a                                       ; $702f: $57
    ld e, b                                       ; $7030: $58
    inc a                                         ; $7031: $3c
    dec hl                                        ; $7032: $2b
    ld e, e                                       ; $7033: $5b
    ld e, h                                       ; $7034: $5c
    ld b, b                                       ; $7035: $40
    dec l                                         ; $7036: $2d
    ld e, a                                       ; $7037: $5f
    ld h, b                                       ; $7038: $60
    ld [$eceb], a                                 ; $7039: $ea $eb $ec
    db $ed                                        ; $703c: $ed
    ld b, $04                                     ; $703d: $06 $04
    inc bc                                        ; $703f: $03
    inc b                                         ; $7040: $04
    ld b, $04                                     ; $7041: $06 $04
    inc bc                                        ; $7043: $03
    inc bc                                        ; $7044: $03
    ld b, $03                                     ; $7045: $06 $03
    inc bc                                        ; $7047: $03

jr_084_7048:
    inc bc                                        ; $7048: $03
    dec b                                         ; $7049: $05
    rlca                                          ; $704a: $07
    rlca                                          ; $704b: $07
    rlca                                          ; $704c: $07
    ld d, [hl]                                    ; $704d: $56
    ld h, l                                       ; $704e: $65
    ld l, e                                       ; $704f: $6b
    ld b, l                                       ; $7050: $45
    ld e, d                                       ; $7051: $5a
    ld h, a                                       ; $7052: $67
    ld a, $3f                                     ; $7053: $3e $3f
    ld e, [hl]                                    ; $7055: $5e
    ld l, c                                       ; $7056: $69
    ld b, d                                       ; $7057: $42

jr_084_7058:
    ld b, e                                       ; $7058: $43
    ld [$eceb], a                                 ; $7059: $ea $eb $ec
    db $ed                                        ; $705c: $ed
    inc bc                                        ; $705d: $03
    inc bc                                        ; $705e: $03
    rlca                                          ; $705f: $07
    dec b                                         ; $7060: $05
    inc b                                         ; $7061: $04
    inc bc                                        ; $7062: $03
    rlca                                          ; $7063: $07
    ld b, $03                                     ; $7064: $06 $03
    inc b                                         ; $7066: $04
    rlca                                          ; $7067: $07
    dec b                                         ; $7068: $05
    rlca                                          ; $7069: $07
    rlca                                          ; $706a: $07
    rlca                                          ; $706b: $07
    ld b, $38                                     ; $706c: $06 $38
    add hl, sp                                    ; $706e: $39
    ld l, e                                       ; $706f: $6b
    ld b, l                                       ; $7070: $45
    inc a                                         ; $7071: $3c
    dec a                                         ; $7072: $3d
    ld a, $3f                                     ; $7073: $3e $3f
    ld b, b                                       ; $7075: $40
    ld b, c                                       ; $7076: $41
    ld b, d                                       ; $7077: $42
    ld b, e                                       ; $7078: $43
    ld [$eceb], a                                 ; $7079: $ea $eb $ec
    db $ed                                        ; $707c: $ed
    dec b                                         ; $707d: $05
    rlca                                          ; $707e: $07
    rlca                                          ; $707f: $07
    rlca                                          ; $7080: $07
    ld b, $06                                     ; $7081: $06 $06
    dec b                                         ; $7083: $05
    ld b, $06                                     ; $7084: $06 $06
    dec b                                         ; $7086: $05
    dec b                                         ; $7087: $05
    dec b                                         ; $7088: $05
    dec b                                         ; $7089: $05
    ld b, $05                                     ; $708a: $06 $05
    ld b, $14                                     ; $708c: $06 $14
    dec hl                                        ; $708e: $2b
    and e                                         ; $708f: $a3
    inc h                                         ; $7090: $24
    jr @+$2f                                      ; $7091: $18 $2d

    and h                                         ; $7093: $a4
    jr z, jr_084_70ce                             ; $7094: $28 $38

    add hl, sp                                    ; $7096: $39
    ld l, e                                       ; $7097: $6b
    ld b, l                                       ; $7098: $45
    inc a                                         ; $7099: $3c
    dec a                                         ; $709a: $3d
    ld a, $3f                                     ; $709b: $3e $3f
    ld b, $03                                     ; $709d: $06 $03
    dec bc                                        ; $709f: $0b
    rlca                                          ; $70a0: $07
    ld b, $04                                     ; $70a1: $06 $04
    dec bc                                        ; $70a3: $0b
    rlca                                          ; $70a4: $07
    ld b, $07                                     ; $70a5: $06 $07
    rlca                                          ; $70a7: $07
    rlca                                          ; $70a8: $07
    ld b, $06                                     ; $70a9: $06 $06
    ld b, $06                                     ; $70ab: $06 $06
    inc d                                         ; $70ad: $14
    inc hl                                        ; $70ae: $23
    ld l, d                                       ; $70af: $6a
    inc h                                         ; $70b0: $24
    jr @+$28                                      ; $70b1: $18 $26

    cpl                                           ; $70b3: $2f
    jr z, jr_084_70ee                             ; $70b4: $28 $38

    add hl, sp                                    ; $70b6: $39
    ld l, e                                       ; $70b7: $6b
    ld b, l                                       ; $70b8: $45
    inc a                                         ; $70b9: $3c
    dec a                                         ; $70ba: $3d
    ld a, $3f                                     ; $70bb: $3e $3f
    ld b, $05                                     ; $70bd: $06 $05
    ld b, $07                                     ; $70bf: $06 $07
    dec b                                         ; $70c1: $05
    ld b, $06                                     ; $70c2: $06 $06
    rlca                                          ; $70c4: $07
    ld b, $05                                     ; $70c5: $06 $05
    dec b                                         ; $70c7: $05
    rlca                                          ; $70c8: $07
    dec b                                         ; $70c9: $05
    ld b, $06                                     ; $70ca: $06 $06
    rlca                                          ; $70cc: $07
    ld b, b                                       ; $70cd: $40

jr_084_70ce:
    ld b, c                                       ; $70ce: $41
    ld b, d                                       ; $70cf: $42
    ld b, e                                       ; $70d0: $43
    ld [$eceb], a                                 ; $70d1: $ea $eb $ec
    db $ed                                        ; $70d4: $ed
    xor $ef                                       ; $70d5: $ee $ef
    ld d, d                                       ; $70d7: $52
    ld a, [$a9a8]                                 ; $70d8: $fa $a8 $a9
    xor b                                         ; $70db: $a8
    xor c                                         ; $70dc: $a9
    ld b, $06                                     ; $70dd: $06 $06
    ld b, $05                                     ; $70df: $06 $05
    dec b                                         ; $70e1: $05
    dec b                                         ; $70e2: $05
    ld b, $05                                     ; $70e3: $06 $05
    ld b, $06                                     ; $70e5: $06 $06
    dec b                                         ; $70e7: $05
    ld b, $09                                     ; $70e8: $06 $09
    add hl, bc                                    ; $70ea: $09
    add hl, bc                                    ; $70eb: $09
    add hl, bc                                    ; $70ec: $09
    ld b, b                                       ; $70ed: $40

jr_084_70ee:
    ld b, c                                       ; $70ee: $41
    ld b, d                                       ; $70ef: $42
    ld b, e                                       ; $70f0: $43
    ld [$eceb], a                                 ; $70f1: $ea $eb $ec
    db $ed                                        ; $70f4: $ed
    xor $ef                                       ; $70f5: $ee $ef
    ld d, d                                       ; $70f7: $52
    ld a, [$fcaa]                                 ; $70f8: $fa $aa $fc
    ld d, h                                       ; $70fb: $54
    cp $06                                        ; $70fc: $fe $06
    ld b, $05                                     ; $70fe: $06 $05
    rlca                                          ; $7100: $07
    ld b, $05                                     ; $7101: $06 $05
    dec b                                         ; $7103: $05
    rlca                                          ; $7104: $07
    dec b                                         ; $7105: $05
    dec b                                         ; $7106: $05
    ld b, $07                                     ; $7107: $06 $07
    add hl, bc                                    ; $7109: $09
    ld b, $05                                     ; $710a: $06 $05
    rlca                                          ; $710c: $07
    xor e                                         ; $710d: $ab
    xor h                                         ; $710e: $ac
    xor e                                         ; $710f: $ab
    xor h                                         ; $7110: $ac
    xor [hl]                                      ; $7111: $ae
    xor a                                         ; $7112: $af
    xor [hl]                                      ; $7113: $ae
    xor a                                         ; $7114: $af
    or c                                          ; $7115: $b1
    or d                                          ; $7116: $b2
    or c                                          ; $7117: $b1
    or d                                          ; $7118: $b2
    or h                                          ; $7119: $b4
    or l                                          ; $711a: $b5
    or h                                          ; $711b: $b4
    or l                                          ; $711c: $b5
    add hl, bc                                    ; $711d: $09
    add hl, bc                                    ; $711e: $09
    add hl, bc                                    ; $711f: $09
    add hl, bc                                    ; $7120: $09
    add hl, bc                                    ; $7121: $09
    add hl, bc                                    ; $7122: $09
    add hl, bc                                    ; $7123: $09
    add hl, bc                                    ; $7124: $09
    add hl, bc                                    ; $7125: $09
    add hl, bc                                    ; $7126: $09
    add hl, bc                                    ; $7127: $09
    add hl, bc                                    ; $7128: $09
    add hl, bc                                    ; $7129: $09
    add hl, bc                                    ; $712a: $09
    add hl, bc                                    ; $712b: $09
    add hl, bc                                    ; $712c: $09
    xor l                                         ; $712d: $ad
    dec e                                         ; $712e: $1d
    ld h, [hl]                                    ; $712f: $66
    rra                                           ; $7130: $1f
    or b                                          ; $7131: $b0
    ld de, $2168                                  ; $7132: $11 $68 $21
    or e                                          ; $7135: $b3
    inc hl                                        ; $7136: $23
    ld l, d                                       ; $7137: $6a
    inc h                                         ; $7138: $24
    or [hl]                                       ; $7139: $b6
    ld h, $2f                                     ; $713a: $26 $2f
    jr z, jr_084_7147                             ; $713c: $28 $09

    rlca                                          ; $713e: $07
    ld b, $07                                     ; $713f: $06 $07
    add hl, bc                                    ; $7141: $09
    rlca                                          ; $7142: $07
    dec b                                         ; $7143: $05
    rlca                                          ; $7144: $07
    add hl, bc                                    ; $7145: $09
    rlca                                          ; $7146: $07

jr_084_7147:
    dec b                                         ; $7147: $05
    rlca                                          ; $7148: $07
    add hl, bc                                    ; $7149: $09
    rlca                                          ; $714a: $07
    ld b, $07                                     ; $714b: $06 $07
    jr c, jr_084_7188                             ; $714d: $38 $39

    ld l, e                                       ; $714f: $6b
    ld b, l                                       ; $7150: $45
    inc a                                         ; $7151: $3c
    dec a                                         ; $7152: $3d
    ld a, $3f                                     ; $7153: $3e $3f
    ld b, b                                       ; $7155: $40
    ld b, c                                       ; $7156: $41
    ld b, d                                       ; $7157: $42
    ld b, e                                       ; $7158: $43
    ld [$eceb], a                                 ; $7159: $ea $eb $ec
    db $ed                                        ; $715c: $ed
    rlca                                          ; $715d: $07
    rlca                                          ; $715e: $07
    rlca                                          ; $715f: $07
    rlca                                          ; $7160: $07
    dec b                                         ; $7161: $05
    ld b, $05                                     ; $7162: $06 $05
    ld b, $06                                     ; $7164: $06 $06
    ld b, $05                                     ; $7166: $06 $05
    dec b                                         ; $7168: $05
    ld b, $06                                     ; $7169: $06 $06
    ld b, $05                                     ; $716b: $06 $05
    jr c, jr_084_71a8                             ; $716d: $38 $39

    ld l, e                                       ; $716f: $6b
    ld b, l                                       ; $7170: $45
    inc a                                         ; $7171: $3c
    dec a                                         ; $7172: $3d
    ld a, $3f                                     ; $7173: $3e $3f
    ld b, b                                       ; $7175: $40
    ld b, c                                       ; $7176: $41
    ld b, d                                       ; $7177: $42
    ld b, e                                       ; $7178: $43
    ld [$eceb], a                                 ; $7179: $ea $eb $ec
    db $ed                                        ; $717c: $ed
    rlca                                          ; $717d: $07
    rlca                                          ; $717e: $07
    dec b                                         ; $717f: $05
    rlca                                          ; $7180: $07
    ld b, $05                                     ; $7181: $06 $05
    ld b, $07                                     ; $7183: $06 $07
    dec b                                         ; $7185: $05
    ld b, $05                                     ; $7186: $06 $05

jr_084_7188:
    rlca                                          ; $7188: $07
    ld b, $06                                     ; $7189: $06 $06
    ld b, $07                                     ; $718b: $06 $07
    nop                                           ; $718d: $00
    nop                                           ; $718e: $00
    nop                                           ; $718f: $00
    nop                                           ; $7190: $00
    ld [bc], a                                    ; $7191: $02
    ld [bc], a                                    ; $7192: $02
    ld [bc], a                                    ; $7193: $02
    ld [bc], a                                    ; $7194: $02
    ld c, a                                       ; $7195: $4f
    inc b                                         ; $7196: $04
    ld b, a                                       ; $7197: $47
    ld c, b                                       ; $7198: $48
    ld d, b                                       ; $7199: $50
    ld b, $4b                                     ; $719a: $06 $4b
    ld c, h                                       ; $719c: $4c
    add d                                         ; $719d: $82
    add d                                         ; $719e: $82
    add d                                         ; $719f: $82
    add d                                         ; $71a0: $82
    add d                                         ; $71a1: $82
    add d                                         ; $71a2: $82
    add d                                         ; $71a3: $82
    add d                                         ; $71a4: $82
    add h                                         ; $71a5: $84
    add e                                         ; $71a6: $83
    add e                                         ; $71a7: $83

jr_084_71a8:
    add e                                         ; $71a8: $83
    inc b                                         ; $71a9: $04
    inc b                                         ; $71aa: $04
    inc bc                                        ; $71ab: $03
    inc bc                                        ; $71ac: $03
    nop                                           ; $71ad: $00
    nop                                           ; $71ae: $00
    nop                                           ; $71af: $00
    nop                                           ; $71b0: $00
    ld [bc], a                                    ; $71b1: $02
    ld [bc], a                                    ; $71b2: $02
    ld [bc], a                                    ; $71b3: $02
    ld [bc], a                                    ; $71b4: $02
    ld c, c                                       ; $71b5: $49
    ld c, d                                       ; $71b6: $4a
    ld c, a                                       ; $71b7: $4f
    inc b                                         ; $71b8: $04
    ld c, l                                       ; $71b9: $4d
    ld c, [hl]                                    ; $71ba: $4e
    ld d, b                                       ; $71bb: $50
    ld b, $82                                     ; $71bc: $06 $82
    add d                                         ; $71be: $82
    add d                                         ; $71bf: $82
    add d                                         ; $71c0: $82
    add d                                         ; $71c1: $82
    add d                                         ; $71c2: $82
    add d                                         ; $71c3: $82
    add d                                         ; $71c4: $82
    add e                                         ; $71c5: $83
    add e                                         ; $71c6: $83
    add e                                         ; $71c7: $83
    add h                                         ; $71c8: $84
    inc b                                         ; $71c9: $04
    inc bc                                        ; $71ca: $03
    inc bc                                        ; $71cb: $03
    inc b                                         ; $71cc: $04
    nop                                           ; $71cd: $00
    nop                                           ; $71ce: $00
    cp c                                          ; $71cf: $b9
    ld d, l                                       ; $71d0: $55
    ld [bc], a                                    ; $71d1: $02
    ld [bc], a                                    ; $71d2: $02
    ld [bc], a                                    ; $71d3: $02
    ld bc, $4847                                  ; $71d4: $01 $47 $48
    ld c, c                                       ; $71d7: $49
    ld d, c                                       ; $71d8: $51
    ld c, e                                       ; $71d9: $4b
    ld c, h                                       ; $71da: $4c
    ld c, l                                       ; $71db: $4d
    ld d, e                                       ; $71dc: $53
    add d                                         ; $71dd: $82
    add d                                         ; $71de: $82
    xor d                                         ; $71df: $aa
    and d                                         ; $71e0: $a2
    add d                                         ; $71e1: $82
    add d                                         ; $71e2: $82
    add d                                         ; $71e3: $82
    and d                                         ; $71e4: $a2
    add h                                         ; $71e5: $84
    add e                                         ; $71e6: $83
    add h                                         ; $71e7: $84
    add e                                         ; $71e8: $83
    inc b                                         ; $71e9: $04
    inc b                                         ; $71ea: $04
    inc b                                         ; $71eb: $04
    inc b                                         ; $71ec: $04
    ld h, d                                       ; $71ed: $62
    ld a, [hl+]                                   ; $71ee: $2a
    ld d, [hl]                                    ; $71ef: $56
    ld d, a                                       ; $71f0: $57
    ld h, e                                       ; $71f1: $63
    inc l                                         ; $71f2: $2c
    ld e, d                                       ; $71f3: $5a
    ld e, e                                       ; $71f4: $5b
    ld h, h                                       ; $71f5: $64
    ld l, $5e                                     ; $71f6: $2e $5e
    ld e, a                                       ; $71f8: $5f
    inc a                                         ; $71f9: $3c
    dec a                                         ; $71fa: $3d
    ld a, $3f                                     ; $71fb: $3e $3f
    inc bc                                        ; $71fd: $03
    inc b                                         ; $71fe: $04
    inc b                                         ; $71ff: $04
    inc bc                                        ; $7200: $03
    inc bc                                        ; $7201: $03
    inc bc                                        ; $7202: $03
    inc bc                                        ; $7203: $03
    inc b                                         ; $7204: $04
    inc bc                                        ; $7205: $03
    inc b                                         ; $7206: $04
    inc bc                                        ; $7207: $03
    inc bc                                        ; $7208: $03
    rlca                                          ; $7209: $07
    rlca                                          ; $720a: $07
    rlca                                          ; $720b: $07
    rlca                                          ; $720c: $07
    ld e, b                                       ; $720d: $58
    ld e, c                                       ; $720e: $59
    ld h, d                                       ; $720f: $62
    ld a, [hl+]                                   ; $7210: $2a
    ld e, h                                       ; $7211: $5c
    ld e, l                                       ; $7212: $5d
    ld h, e                                       ; $7213: $63
    inc l                                         ; $7214: $2c
    ld h, b                                       ; $7215: $60
    ld h, c                                       ; $7216: $61
    ld h, h                                       ; $7217: $64
    ld l, $3c                                     ; $7218: $2e $3c
    dec a                                         ; $721a: $3d
    ld a, $3f                                     ; $721b: $3e $3f
    inc b                                         ; $721d: $04
    inc b                                         ; $721e: $04
    inc b                                         ; $721f: $04
    inc b                                         ; $7220: $04
    inc bc                                        ; $7221: $03
    inc b                                         ; $7222: $04
    inc b                                         ; $7223: $04
    inc bc                                        ; $7224: $03
    inc bc                                        ; $7225: $03
    inc bc                                        ; $7226: $03
    inc b                                         ; $7227: $04
    inc b                                         ; $7228: $04
    rlca                                          ; $7229: $07
    rlca                                          ; $722a: $07
    rlca                                          ; $722b: $07
    rlca                                          ; $722c: $07
    ld d, [hl]                                    ; $722d: $56
    ld d, a                                       ; $722e: $57
    ld e, b                                       ; $722f: $58
    ld h, l                                       ; $7230: $65
    ld e, d                                       ; $7231: $5a
    ld e, e                                       ; $7232: $5b
    ld e, h                                       ; $7233: $5c
    ld h, a                                       ; $7234: $67
    ld e, [hl]                                    ; $7235: $5e
    ld e, a                                       ; $7236: $5f
    ld h, b                                       ; $7237: $60
    ld l, c                                       ; $7238: $69
    inc a                                         ; $7239: $3c
    dec a                                         ; $723a: $3d
    ld a, $3f                                     ; $723b: $3e $3f
    inc bc                                        ; $723d: $03
    inc b                                         ; $723e: $04
    inc bc                                        ; $723f: $03
    inc b                                         ; $7240: $04
    inc b                                         ; $7241: $04
    inc b                                         ; $7242: $04
    inc bc                                        ; $7243: $03
    inc bc                                        ; $7244: $03
    inc bc                                        ; $7245: $03
    inc bc                                        ; $7246: $03
    inc b                                         ; $7247: $04
    inc bc                                        ; $7248: $03
    rlca                                          ; $7249: $07
    rlca                                          ; $724a: $07
    rlca                                          ; $724b: $07
    rlca                                          ; $724c: $07
    pop de                                        ; $724d: $d1
    pop de                                        ; $724e: $d1
    pop de                                        ; $724f: $d1
    jp nc, $d1d1                                  ; $7250: $d2 $d1 $d1

    pop de                                        ; $7253: $d1
    adc e                                         ; $7254: $8b
    pop de                                        ; $7255: $d1
    pop de                                        ; $7256: $d1
    pop de                                        ; $7257: $d1
    pop de                                        ; $7258: $d1
    pop de                                        ; $7259: $d1
    pop de                                        ; $725a: $d1
    pop de                                        ; $725b: $d1
    pop de                                        ; $725c: $d1
    add b                                         ; $725d: $80
    add b                                         ; $725e: $80
    add b                                         ; $725f: $80
    add b                                         ; $7260: $80
    add b                                         ; $7261: $80
    add b                                         ; $7262: $80
    add b                                         ; $7263: $80
    adc b                                         ; $7264: $88
    add b                                         ; $7265: $80
    add b                                         ; $7266: $80
    add b                                         ; $7267: $80
    add b                                         ; $7268: $80
    add b                                         ; $7269: $80
    add b                                         ; $726a: $80
    add b                                         ; $726b: $80
    add b                                         ; $726c: $80
    ld b, b                                       ; $726d: $40
    ld b, c                                       ; $726e: $41
    ld b, d                                       ; $726f: $42
    ld b, e                                       ; $7270: $43
    ld [$0808], sp                                ; $7271: $08 $08 $08
    ld [$d1d1], sp                                ; $7274: $08 $d1 $d1
    pop de                                        ; $7277: $d1
    pop de                                        ; $7278: $d1
    pop de                                        ; $7279: $d1
    pop de                                        ; $727a: $d1
    pop de                                        ; $727b: $d1
    pop de                                        ; $727c: $d1
    rlca                                          ; $727d: $07
    ld b, $06                                     ; $727e: $06 $06
    dec b                                         ; $7280: $05
    add b                                         ; $7281: $80
    add b                                         ; $7282: $80
    add b                                         ; $7283: $80
    add b                                         ; $7284: $80
    add b                                         ; $7285: $80
    add b                                         ; $7286: $80
    add b                                         ; $7287: $80
    add b                                         ; $7288: $80
    add b                                         ; $7289: $80
    add b                                         ; $728a: $80
    add b                                         ; $728b: $80
    add b                                         ; $728c: $80
    ld b, b                                       ; $728d: $40
    ld b, c                                       ; $728e: $41
    ld b, d                                       ; $728f: $42
    ld b, e                                       ; $7290: $43
    ld [$0808], sp                                ; $7291: $08 $08 $08
    ld [$d1d1], sp                                ; $7294: $08 $d1 $d1
    pop de                                        ; $7297: $d1
    pop de                                        ; $7298: $d1
    pop de                                        ; $7299: $d1
    pop de                                        ; $729a: $d1
    pop de                                        ; $729b: $d1
    pop de                                        ; $729c: $d1
    ld b, $06                                     ; $729d: $06 $06
    dec b                                         ; $729f: $05
    dec b                                         ; $72a0: $05
    add b                                         ; $72a1: $80
    add b                                         ; $72a2: $80
    add b                                         ; $72a3: $80
    add b                                         ; $72a4: $80
    add b                                         ; $72a5: $80
    add b                                         ; $72a6: $80
    add b                                         ; $72a7: $80
    add b                                         ; $72a8: $80
    add b                                         ; $72a9: $80
    add b                                         ; $72aa: $80
    add b                                         ; $72ab: $80
    add b                                         ; $72ac: $80
    ld b, b                                       ; $72ad: $40
    ld b, c                                       ; $72ae: $41
    ld b, d                                       ; $72af: $42
    ld b, e                                       ; $72b0: $43
    ld [$0808], sp                                ; $72b1: $08 $08 $08
    ld [$d1d1], sp                                ; $72b4: $08 $d1 $d1
    pop de                                        ; $72b7: $d1
    pop de                                        ; $72b8: $d1
    pop de                                        ; $72b9: $d1
    pop de                                        ; $72ba: $d1
    pop de                                        ; $72bb: $d1
    pop de                                        ; $72bc: $d1
    dec b                                         ; $72bd: $05
    ld b, $06                                     ; $72be: $06 $06
    dec b                                         ; $72c0: $05
    add b                                         ; $72c1: $80
    add b                                         ; $72c2: $80
    add b                                         ; $72c3: $80
    add b                                         ; $72c4: $80
    add b                                         ; $72c5: $80
    add b                                         ; $72c6: $80
    add b                                         ; $72c7: $80
    add b                                         ; $72c8: $80
    add b                                         ; $72c9: $80
    add b                                         ; $72ca: $80
    add b                                         ; $72cb: $80
    add b                                         ; $72cc: $80
    xor $ef                                       ; $72cd: $ee $ef
    ld d, d                                       ; $72cf: $52
    ld a, [$fcf2]                                 ; $72d0: $fa $f2 $fc
    ld d, h                                       ; $72d3: $54
    cp $0c                                        ; $72d4: $fe $0c
    dec e                                         ; $72d6: $1d
    ld h, [hl]                                    ; $72d7: $66
    rra                                           ; $72d8: $1f
    db $10                                        ; $72d9: $10
    ld de, $2168                                  ; $72da: $11 $68 $21
    rlca                                          ; $72dd: $07
    dec b                                         ; $72de: $05
    ld b, $06                                     ; $72df: $06 $06
    rlca                                          ; $72e1: $07
    ld b, $06                                     ; $72e2: $06 $06
    dec b                                         ; $72e4: $05
    rlca                                          ; $72e5: $07
    ld b, $05                                     ; $72e6: $06 $05
    ld b, $07                                     ; $72e8: $06 $07
    dec b                                         ; $72ea: $05
    ld b, $05                                     ; $72eb: $06 $05
    xor $99                                       ; $72ed: $ee $99
    ld h, l                                       ; $72ef: $65
    ld a, [$9af2]                                 ; $72f0: $fa $f2 $9a
    ld h, a                                       ; $72f3: $67
    cp $0c                                        ; $72f4: $fe $0c
    sbc e                                         ; $72f6: $9b
    ld l, c                                       ; $72f7: $69
    rra                                           ; $72f8: $1f
    db $10                                        ; $72f9: $10
    ld de, $2168                                  ; $72fa: $11 $68 $21
    dec b                                         ; $72fd: $05
    inc c                                         ; $72fe: $0c
    inc bc                                        ; $72ff: $03
    rlca                                          ; $7300: $07
    ld b, $0b                                     ; $7301: $06 $0b
    inc b                                         ; $7303: $04
    rlca                                          ; $7304: $07
    ld b, $0c                                     ; $7305: $06 $0c
    inc bc                                        ; $7307: $03
    rlca                                          ; $7308: $07
    ld b, $07                                     ; $7309: $06 $07
    rlca                                          ; $730b: $07
    rlca                                          ; $730c: $07
    xor $ef                                       ; $730d: $ee $ef
    cp h                                          ; $730f: $bc
    cp l                                          ; $7310: $bd
    ld a, [c]                                     ; $7311: $f2
    db $fc                                        ; $7312: $fc
    cp [hl]                                       ; $7313: $be
    cp a                                          ; $7314: $bf
    inc c                                         ; $7315: $0c
    dec e                                         ; $7316: $1d
    ret nz                                        ; $7317: $c0

    pop bc                                        ; $7318: $c1
    db $10                                        ; $7319: $10
    ld de, $c3c2                                  ; $731a: $11 $c2 $c3
    ld b, $05                                     ; $731d: $06 $05
    add hl, bc                                    ; $731f: $09
    add hl, bc                                    ; $7320: $09
    ld b, $06                                     ; $7321: $06 $06
    add hl, bc                                    ; $7323: $09
    add hl, bc                                    ; $7324: $09
    dec b                                         ; $7325: $05
    dec b                                         ; $7326: $05
    add hl, bc                                    ; $7327: $09
    add hl, bc                                    ; $7328: $09
    ld b, $06                                     ; $7329: $06 $06
    add hl, bc                                    ; $732b: $09
    add hl, bc                                    ; $732c: $09
    call nz, $c4c4                                ; $732d: $c4 $c4 $c4
    call nz, $c6c5                                ; $7330: $c4 $c5 $c6
    add $c7                                       ; $7333: $c6 $c7
    ret z                                         ; $7335: $c8

    ret                                           ; $7336: $c9


    jp z, $c3cb                                   ; $7337: $ca $cb $c3

    jp $c3c3                                      ; $733a: $c3 $c3 $c3


    add hl, bc                                    ; $733d: $09
    add hl, bc                                    ; $733e: $09
    add hl, bc                                    ; $733f: $09
    add hl, bc                                    ; $7340: $09
    add hl, bc                                    ; $7341: $09
    add hl, bc                                    ; $7342: $09
    add hl, bc                                    ; $7343: $09
    add hl, bc                                    ; $7344: $09
    add hl, bc                                    ; $7345: $09
    add hl, bc                                    ; $7346: $09
    add hl, bc                                    ; $7347: $09
    add hl, bc                                    ; $7348: $09
    add hl, bc                                    ; $7349: $09
    add hl, bc                                    ; $734a: $09
    add hl, bc                                    ; $734b: $09
    add hl, bc                                    ; $734c: $09
    inc d                                         ; $734d: $14
    inc hl                                        ; $734e: $23
    ld l, d                                       ; $734f: $6a
    inc h                                         ; $7350: $24
    jr jr_084_7379                                ; $7351: $18 $26

    cpl                                           ; $7353: $2f
    jr z, jr_084_738e                             ; $7354: $28 $38

    add hl, sp                                    ; $7356: $39
    ld l, e                                       ; $7357: $6b
    ld b, l                                       ; $7358: $45
    inc a                                         ; $7359: $3c
    dec a                                         ; $735a: $3d
    ld a, $3f                                     ; $735b: $3e $3f
    rlca                                          ; $735d: $07
    dec b                                         ; $735e: $05
    dec b                                         ; $735f: $05
    ld b, $07                                     ; $7360: $06 $07
    ld b, $05                                     ; $7362: $06 $05
    dec b                                         ; $7364: $05
    rlca                                          ; $7365: $07
    dec b                                         ; $7366: $05
    ld b, $06                                     ; $7367: $06 $06
    rlca                                          ; $7369: $07
    ld b, $06                                     ; $736a: $06 $06
    ld b, $14                                     ; $736c: $06 $14
    inc hl                                        ; $736e: $23
    ld l, d                                       ; $736f: $6a
    inc h                                         ; $7370: $24
    jr jr_084_7399                                ; $7371: $18 $26

    cpl                                           ; $7373: $2f
    jr z, jr_084_73ae                             ; $7374: $28 $38

    add hl, sp                                    ; $7376: $39
    ld l, e                                       ; $7377: $6b
    ld b, l                                       ; $7378: $45

jr_084_7379:
    inc a                                         ; $7379: $3c
    dec a                                         ; $737a: $3d
    ld a, $3f                                     ; $737b: $3e $3f
    dec b                                         ; $737d: $05
    ld b, $06                                     ; $737e: $06 $06
    ld b, $06                                     ; $7380: $06 $06
    dec b                                         ; $7382: $05
    ld b, $05                                     ; $7383: $06 $05
    ld b, $06                                     ; $7385: $06 $06
    dec b                                         ; $7387: $05
    ld b, $05                                     ; $7388: $06 $05
    ld b, $06                                     ; $738a: $06 $06
    dec b                                         ; $738c: $05
    inc d                                         ; $738d: $14

jr_084_738e:
    inc hl                                        ; $738e: $23
    call z, Call_000_18cd                         ; $738f: $cc $cd $18
    ld h, $2f                                     ; $7392: $26 $2f
    jr z, jr_084_73ce                             ; $7394: $28 $38

    add hl, sp                                    ; $7396: $39
    ld l, e                                       ; $7397: $6b
    ld b, l                                       ; $7398: $45

jr_084_7399:
    inc a                                         ; $7399: $3c
    dec a                                         ; $739a: $3d
    ld a, $3f                                     ; $739b: $3e $3f
    dec b                                         ; $739d: $05
    dec b                                         ; $739e: $05
    add hl, bc                                    ; $739f: $09
    add hl, bc                                    ; $73a0: $09
    ld b, $06                                     ; $73a1: $06 $06
    rlca                                          ; $73a3: $07
    rlca                                          ; $73a4: $07
    ld b, $06                                     ; $73a5: $06 $06
    ld b, $06                                     ; $73a7: $06 $06
    ld b, $06                                     ; $73a9: $06 $06
    dec b                                         ; $73ab: $05
    ld b, $cd                                     ; $73ac: $06 $cd

jr_084_73ae:
    call $cdcd                                    ; $73ae: $cd $cd $cd
    jr jr_084_73d9                                ; $73b1: $18 $26

    cpl                                           ; $73b3: $2f
    jr z, jr_084_73ee                             ; $73b4: $28 $38

    add hl, sp                                    ; $73b6: $39
    ld l, e                                       ; $73b7: $6b
    ld b, l                                       ; $73b8: $45
    inc a                                         ; $73b9: $3c
    dec a                                         ; $73ba: $3d
    ld a, $3f                                     ; $73bb: $3e $3f
    add hl, bc                                    ; $73bd: $09
    add hl, bc                                    ; $73be: $09
    add hl, bc                                    ; $73bf: $09
    add hl, bc                                    ; $73c0: $09
    rlca                                          ; $73c1: $07
    rlca                                          ; $73c2: $07
    rlca                                          ; $73c3: $07
    rlca                                          ; $73c4: $07
    dec b                                         ; $73c5: $05
    ld b, $06                                     ; $73c6: $06 $06
    ld b, $06                                     ; $73c8: $06 $06
    ld b, $05                                     ; $73ca: $06 $05
    dec b                                         ; $73cc: $05
    ld b, b                                       ; $73cd: $40

jr_084_73ce:
    ld b, c                                       ; $73ce: $41
    ld b, d                                       ; $73cf: $42
    ld b, e                                       ; $73d0: $43
    ld [$0808], sp                                ; $73d1: $08 $08 $08
    ld [$d1d1], sp                                ; $73d4: $08 $d1 $d1
    pop de                                        ; $73d7: $d1
    pop de                                        ; $73d8: $d1

jr_084_73d9:
    pop de                                        ; $73d9: $d1
    pop de                                        ; $73da: $d1
    pop de                                        ; $73db: $d1
    pop de                                        ; $73dc: $d1
    ld b, $05                                     ; $73dd: $06 $05
    dec b                                         ; $73df: $05
    dec b                                         ; $73e0: $05
    add b                                         ; $73e1: $80
    add b                                         ; $73e2: $80
    add b                                         ; $73e3: $80
    add b                                         ; $73e4: $80
    add b                                         ; $73e5: $80
    add b                                         ; $73e6: $80
    add b                                         ; $73e7: $80
    add b                                         ; $73e8: $80
    add b                                         ; $73e9: $80
    add b                                         ; $73ea: $80
    add b                                         ; $73eb: $80
    add b                                         ; $73ec: $80
    ld b, b                                       ; $73ed: $40

jr_084_73ee:
    ld b, c                                       ; $73ee: $41
    ld b, d                                       ; $73ef: $42
    ld b, e                                       ; $73f0: $43
    ld [$0808], sp                                ; $73f1: $08 $08 $08
    ld [$d1d1], sp                                ; $73f4: $08 $d1 $d1
    pop de                                        ; $73f7: $d1
    pop de                                        ; $73f8: $d1
    pop de                                        ; $73f9: $d1
    pop de                                        ; $73fa: $d1
    pop de                                        ; $73fb: $d1
    pop de                                        ; $73fc: $d1
    ld b, $06                                     ; $73fd: $06 $06
    dec b                                         ; $73ff: $05
    ld b, $80                                     ; $7400: $06 $80
    add b                                         ; $7402: $80
    add b                                         ; $7403: $80
    add b                                         ; $7404: $80
    add b                                         ; $7405: $80
    add b                                         ; $7406: $80
    add b                                         ; $7407: $80
    add b                                         ; $7408: $80
    add b                                         ; $7409: $80
    add b                                         ; $740a: $80
    add b                                         ; $740b: $80
    add b                                         ; $740c: $80
    ld b, b                                       ; $740d: $40
    ld b, c                                       ; $740e: $41
    ld b, d                                       ; $740f: $42
    ld b, e                                       ; $7410: $43
    ld [$0808], sp                                ; $7411: $08 $08 $08
    ld [$d1d1], sp                                ; $7414: $08 $d1 $d1
    pop de                                        ; $7417: $d1
    pop de                                        ; $7418: $d1
    pop de                                        ; $7419: $d1
    pop de                                        ; $741a: $d1
    pop de                                        ; $741b: $d1
    pop de                                        ; $741c: $d1
    dec b                                         ; $741d: $05
    ld b, $06                                     ; $741e: $06 $06
    ld b, $80                                     ; $7420: $06 $80
    add b                                         ; $7422: $80
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
    ld b, b                                       ; $742d: $40
    ld b, c                                       ; $742e: $41
    ld b, d                                       ; $742f: $42
    ld b, e                                       ; $7430: $43
    ld [$0808], sp                                ; $7431: $08 $08 $08
    ld [$d1d1], sp                                ; $7434: $08 $d1 $d1
    pop de                                        ; $7437: $d1
    pop de                                        ; $7438: $d1
    pop de                                        ; $7439: $d1
    pop de                                        ; $743a: $d1
    pop de                                        ; $743b: $d1
    pop de                                        ; $743c: $d1
    dec b                                         ; $743d: $05
    dec b                                         ; $743e: $05
    ld b, $06                                     ; $743f: $06 $06
    add b                                         ; $7441: $80
    add b                                         ; $7442: $80
    add b                                         ; $7443: $80
    add b                                         ; $7444: $80
    add b                                         ; $7445: $80
    add b                                         ; $7446: $80
    add b                                         ; $7447: $80
    add b                                         ; $7448: $80
    add b                                         ; $7449: $80
    add b                                         ; $744a: $80
    add b                                         ; $744b: $80
    add b                                         ; $744c: $80
    adc $bc                                       ; $744d: $ce $bc
    ld d, d                                       ; $744f: $52
    ld a, [$d0cf]                                 ; $7450: $fa $cf $d0
    ld d, h                                       ; $7453: $54
    cp $c1                                        ; $7454: $fe $c1
    ret nz                                        ; $7456: $c0

    ld h, [hl]                                    ; $7457: $66
    rra                                           ; $7458: $1f
    jp Jump_084_68d1                              ; $7459: $c3 $d1 $68


    ld hl, $2909                                  ; $745c: $21 $09 $29
    ld b, $05                                     ; $745f: $06 $05
    add hl, bc                                    ; $7461: $09
    add hl, bc                                    ; $7462: $09
    rlca                                          ; $7463: $07
    ld b, $29                                     ; $7464: $06 $29
    add hl, hl                                    ; $7466: $29
    rlca                                          ; $7467: $07
    ld b, $09                                     ; $7468: $06 $09
    add hl, bc                                    ; $746a: $09
    rlca                                          ; $746b: $07
    dec b                                         ; $746c: $05
    xor $ef                                       ; $746d: $ee $ef
    ld d, d                                       ; $746f: $52
    ld a, [$fcf2]                                 ; $7470: $fa $f2 $fc
    ld d, h                                       ; $7473: $54
    cp $0c                                        ; $7474: $fe $0c
    dec e                                         ; $7476: $1d
    ld h, [hl]                                    ; $7477: $66
    rra                                           ; $7478: $1f
    db $10                                        ; $7479: $10
    ld de, $2168                                  ; $747a: $11 $68 $21
    dec b                                         ; $747d: $05
    ld b, $06                                     ; $747e: $06 $06
    ld b, $05                                     ; $7480: $06 $05
    dec b                                         ; $7482: $05
    dec b                                         ; $7483: $05
    dec b                                         ; $7484: $05
    ld b, $05                                     ; $7485: $06 $05
    ld b, $06                                     ; $7487: $06 $06
    ld b, $06                                     ; $7489: $06 $06
    dec b                                         ; $748b: $05
    dec b                                         ; $748c: $05
    xor $ef                                       ; $748d: $ee $ef
    ld d, d                                       ; $748f: $52
    ld a, [$fcf2]                                 ; $7490: $fa $f2 $fc
    ld d, h                                       ; $7493: $54
    cp $0c                                        ; $7494: $fe $0c
    dec e                                         ; $7496: $1d
    ld h, [hl]                                    ; $7497: $66
    rra                                           ; $7498: $1f
    db $10                                        ; $7499: $10
    ld de, $2168                                  ; $749a: $11 $68 $21
    dec b                                         ; $749d: $05
    ld b, $06                                     ; $749e: $06 $06
    dec b                                         ; $74a0: $05
    ld b, $05                                     ; $74a1: $06 $05
    dec b                                         ; $74a3: $05
    ld b, $06                                     ; $74a4: $06 $06
    ld b, $06                                     ; $74a6: $06 $06
    dec b                                         ; $74a8: $05
    ld b, $05                                     ; $74a9: $06 $05
    ld b, $06                                     ; $74ab: $06 $06
    xor $ef                                       ; $74ad: $ee $ef
    ld d, d                                       ; $74af: $52
    ld a, [$fcf2]                                 ; $74b0: $fa $f2 $fc
    ld d, h                                       ; $74b3: $54
    cp $0c                                        ; $74b4: $fe $0c
    dec e                                         ; $74b6: $1d
    ld h, [hl]                                    ; $74b7: $66
    rra                                           ; $74b8: $1f
    db $10                                        ; $74b9: $10
    ld de, $2168                                  ; $74ba: $11 $68 $21
    dec b                                         ; $74bd: $05
    ld b, $06                                     ; $74be: $06 $06
    ld b, $05                                     ; $74c0: $06 $05
    dec b                                         ; $74c2: $05
    dec b                                         ; $74c3: $05
    dec b                                         ; $74c4: $05
    ld b, $06                                     ; $74c5: $06 $06
    dec b                                         ; $74c7: $05
    ld b, $06                                     ; $74c8: $06 $06
    ld b, $05                                     ; $74ca: $06 $05
    dec b                                         ; $74cc: $05
    call Call_084_6ad2                            ; $74cd: $cd $d2 $6a
    inc h                                         ; $74d0: $24
    jr jr_084_74f9                                ; $74d1: $18 $26

    cpl                                           ; $74d3: $2f
    jr z, jr_084_750e                             ; $74d4: $28 $38

    add hl, sp                                    ; $74d6: $39
    ld l, e                                       ; $74d7: $6b
    ld b, l                                       ; $74d8: $45
    inc a                                         ; $74d9: $3c
    dec a                                         ; $74da: $3d
    ld a, $3f                                     ; $74db: $3e $3f
    add hl, bc                                    ; $74dd: $09
    add hl, bc                                    ; $74de: $09
    rlca                                          ; $74df: $07
    ld b, $07                                     ; $74e0: $06 $07
    rlca                                          ; $74e2: $07
    rlca                                          ; $74e3: $07
    dec b                                         ; $74e4: $05
    ld b, $05                                     ; $74e5: $06 $05
    ld b, $06                                     ; $74e7: $06 $06
    ld b, $06                                     ; $74e9: $06 $06
    dec b                                         ; $74eb: $05
    dec b                                         ; $74ec: $05
    inc d                                         ; $74ed: $14
    inc hl                                        ; $74ee: $23
    ld l, d                                       ; $74ef: $6a
    inc h                                         ; $74f0: $24
    jr jr_084_7519                                ; $74f1: $18 $26

    cpl                                           ; $74f3: $2f
    jr z, jr_084_752e                             ; $74f4: $28 $38

    add hl, sp                                    ; $74f6: $39
    ld l, e                                       ; $74f7: $6b
    ld b, l                                       ; $74f8: $45

jr_084_74f9:
    inc a                                         ; $74f9: $3c
    dec a                                         ; $74fa: $3d
    ld a, $3f                                     ; $74fb: $3e $3f
    ld b, $05                                     ; $74fd: $06 $05
    ld b, $05                                     ; $74ff: $06 $05
    dec b                                         ; $7501: $05
    ld b, $05                                     ; $7502: $06 $05
    ld b, $06                                     ; $7504: $06 $06
    ld b, $05                                     ; $7506: $06 $05
    dec b                                         ; $7508: $05
    ld b, $05                                     ; $7509: $06 $05
    dec b                                         ; $750b: $05
    dec b                                         ; $750c: $05
    inc d                                         ; $750d: $14

jr_084_750e:
    inc hl                                        ; $750e: $23
    ld l, d                                       ; $750f: $6a
    inc h                                         ; $7510: $24
    jr jr_084_7539                                ; $7511: $18 $26

    cpl                                           ; $7513: $2f
    jr z, jr_084_754e                             ; $7514: $28 $38

    add hl, sp                                    ; $7516: $39
    ld l, e                                       ; $7517: $6b
    ld b, l                                       ; $7518: $45

jr_084_7519:
    inc a                                         ; $7519: $3c
    dec a                                         ; $751a: $3d
    ld a, $3f                                     ; $751b: $3e $3f
    ld b, $06                                     ; $751d: $06 $06
    ld b, $05                                     ; $751f: $06 $05
    ld b, $06                                     ; $7521: $06 $06
    dec b                                         ; $7523: $05
    ld b, $06                                     ; $7524: $06 $06
    dec b                                         ; $7526: $05
    dec b                                         ; $7527: $05
    dec b                                         ; $7528: $05
    dec b                                         ; $7529: $05
    dec b                                         ; $752a: $05
    dec b                                         ; $752b: $05
    ld b, $14                                     ; $752c: $06 $14

jr_084_752e:
    inc hl                                        ; $752e: $23
    ld l, d                                       ; $752f: $6a
    inc h                                         ; $7530: $24
    jr jr_084_7559                                ; $7531: $18 $26

    cpl                                           ; $7533: $2f
    jr z, @+$3a                                   ; $7534: $28 $38

    add hl, sp                                    ; $7536: $39
    ld l, e                                       ; $7537: $6b
    ld b, l                                       ; $7538: $45

jr_084_7539:
    inc a                                         ; $7539: $3c
    dec a                                         ; $753a: $3d
    ld a, $3f                                     ; $753b: $3e $3f
    dec b                                         ; $753d: $05
    ld b, $06                                     ; $753e: $06 $06
    dec b                                         ; $7540: $05
    ld b, $05                                     ; $7541: $06 $05
    ld b, $06                                     ; $7543: $06 $06
    dec b                                         ; $7545: $05
    ld b, $06                                     ; $7546: $06 $06
    dec b                                         ; $7548: $05
    ld b, $06                                     ; $7549: $06 $06
    ld b, $05                                     ; $754b: $06 $05
    ld b, b                                       ; $754d: $40

jr_084_754e:
    ld b, c                                       ; $754e: $41
    ld b, d                                       ; $754f: $42
    ld b, e                                       ; $7550: $43
    ld [$0808], sp                                ; $7551: $08 $08 $08
    ld [$d1d1], sp                                ; $7554: $08 $d1 $d1
    pop de                                        ; $7557: $d1
    pop de                                        ; $7558: $d1

jr_084_7559:
    pop de                                        ; $7559: $d1
    pop de                                        ; $755a: $d1
    pop de                                        ; $755b: $d1
    pop de                                        ; $755c: $d1
    ld b, $06                                     ; $755d: $06 $06
    ld b, $06                                     ; $755f: $06 $06
    add b                                         ; $7561: $80
    add b                                         ; $7562: $80
    add b                                         ; $7563: $80
    add b                                         ; $7564: $80
    add b                                         ; $7565: $80
    add b                                         ; $7566: $80
    add b                                         ; $7567: $80
    add b                                         ; $7568: $80
    add b                                         ; $7569: $80
    add b                                         ; $756a: $80
    add b                                         ; $756b: $80
    add b                                         ; $756c: $80
    xor $ef                                       ; $756d: $ee $ef
    ld d, d                                       ; $756f: $52
    ld a, [$fcf2]                                 ; $7570: $fa $f2 $fc
    ld d, h                                       ; $7573: $54
    cp $0c                                        ; $7574: $fe $0c
    dec e                                         ; $7576: $1d
    ld h, [hl]                                    ; $7577: $66
    rra                                           ; $7578: $1f
    db $10                                        ; $7579: $10
    ld de, $2168                                  ; $757a: $11 $68 $21
    ld b, $05                                     ; $757d: $06 $05
    ld b, $06                                     ; $757f: $06 $06
    ld b, $05                                     ; $7581: $06 $05
    dec b                                         ; $7583: $05
    ld b, $06                                     ; $7584: $06 $06
    ld b, $06                                     ; $7586: $06 $06
    ld b, $06                                     ; $7588: $06 $06
    ld b, $05                                     ; $758a: $06 $05
    ld b, $ee                                     ; $758c: $06 $ee
    rst $28                                       ; $758e: $ef
    ld d, d                                       ; $758f: $52
    ld a, [$fcf2]                                 ; $7590: $fa $f2 $fc
    ld d, h                                       ; $7593: $54
    cp $0c                                        ; $7594: $fe $0c
    dec e                                         ; $7596: $1d
    ld h, [hl]                                    ; $7597: $66
    rra                                           ; $7598: $1f
    db $10                                        ; $7599: $10
    ld de, $2168                                  ; $759a: $11 $68 $21
    dec b                                         ; $759d: $05
    ld b, $05                                     ; $759e: $06 $05
    rlca                                          ; $75a0: $07
    ld b, $06                                     ; $75a1: $06 $06
    ld b, $07                                     ; $75a3: $06 $07
    ld b, $05                                     ; $75a5: $06 $05
    ld b, $07                                     ; $75a7: $06 $07
    dec b                                         ; $75a9: $05
    ld b, $06                                     ; $75aa: $06 $06
    rlca                                          ; $75ac: $07
    inc d                                         ; $75ad: $14
    inc hl                                        ; $75ae: $23
    ld l, d                                       ; $75af: $6a
    inc h                                         ; $75b0: $24
    jr jr_084_75d9                                ; $75b1: $18 $26

    cpl                                           ; $75b3: $2f
    jr z, jr_084_75ee                             ; $75b4: $28 $38

    add hl, sp                                    ; $75b6: $39
    ld l, e                                       ; $75b7: $6b
    ld b, l                                       ; $75b8: $45
    inc a                                         ; $75b9: $3c
    dec a                                         ; $75ba: $3d
    ld a, $3f                                     ; $75bb: $3e $3f
    dec b                                         ; $75bd: $05
    ld b, $05                                     ; $75be: $06 $05
    ld b, $06                                     ; $75c0: $06 $06
    ld b, $05                                     ; $75c2: $06 $05
    ld b, $05                                     ; $75c4: $06 $05
    ld b, $06                                     ; $75c6: $06 $06
    dec b                                         ; $75c8: $05
    ld b, $06                                     ; $75c9: $06 $06
    dec b                                         ; $75cb: $05
    ld b, $14                                     ; $75cc: $06 $14
    inc hl                                        ; $75ce: $23
    ld l, d                                       ; $75cf: $6a
    inc h                                         ; $75d0: $24
    jr jr_084_75f9                                ; $75d1: $18 $26

    cpl                                           ; $75d3: $2f
    jr z, jr_084_760e                             ; $75d4: $28 $38

    add hl, sp                                    ; $75d6: $39
    ld l, e                                       ; $75d7: $6b
    ld b, l                                       ; $75d8: $45

jr_084_75d9:
    inc a                                         ; $75d9: $3c
    dec a                                         ; $75da: $3d
    ld a, $3f                                     ; $75db: $3e $3f
    ld b, $05                                     ; $75dd: $06 $05
    ld b, $07                                     ; $75df: $06 $07
    ld b, $06                                     ; $75e1: $06 $06
    ld b, $07                                     ; $75e3: $06 $07
    ld b, $06                                     ; $75e5: $06 $06
    dec b                                         ; $75e7: $05
    rlca                                          ; $75e8: $07
    dec b                                         ; $75e9: $05
    ld b, $06                                     ; $75ea: $06 $06
    rlca                                          ; $75ec: $07
    ld b, b                                       ; $75ed: $40

jr_084_75ee:
    ld b, c                                       ; $75ee: $41
    ld b, d                                       ; $75ef: $42
    ld b, e                                       ; $75f0: $43
    ld [$0808], sp                                ; $75f1: $08 $08 $08
    ld [$d1d1], sp                                ; $75f4: $08 $d1 $d1
    pop de                                        ; $75f7: $d1
    pop de                                        ; $75f8: $d1

jr_084_75f9:
    pop de                                        ; $75f9: $d1
    pop de                                        ; $75fa: $d1
    pop de                                        ; $75fb: $d1
    pop de                                        ; $75fc: $d1
    ld b, $05                                     ; $75fd: $06 $05
    ld b, $06                                     ; $75ff: $06 $06
    add b                                         ; $7601: $80
    add b                                         ; $7602: $80
    add b                                         ; $7603: $80
    add b                                         ; $7604: $80
    add b                                         ; $7605: $80
    add b                                         ; $7606: $80
    add b                                         ; $7607: $80
    add b                                         ; $7608: $80
    add b                                         ; $7609: $80
    add b                                         ; $760a: $80
    add b                                         ; $760b: $80
    add b                                         ; $760c: $80
    ld b, b                                       ; $760d: $40

jr_084_760e:
    ld b, c                                       ; $760e: $41
    ld b, d                                       ; $760f: $42
    ld b, e                                       ; $7610: $43
    ld [$0808], sp                                ; $7611: $08 $08 $08
    ld [$d1d1], sp                                ; $7614: $08 $d1 $d1
    pop de                                        ; $7617: $d1
    pop de                                        ; $7618: $d1
    pop de                                        ; $7619: $d1
    pop de                                        ; $761a: $d1
    pop de                                        ; $761b: $d1
    pop de                                        ; $761c: $d1
    ld b, $05                                     ; $761d: $06 $05
    ld b, $07                                     ; $761f: $06 $07
    add b                                         ; $7621: $80
    add b                                         ; $7622: $80
    add b                                         ; $7623: $80
    add b                                         ; $7624: $80
    add b                                         ; $7625: $80
    add b                                         ; $7626: $80
    add b                                         ; $7627: $80
    add b                                         ; $7628: $80
    add b                                         ; $7629: $80
    add b                                         ; $762a: $80
    add b                                         ; $762b: $80
    add b                                         ; $762c: $80
    jp nc, $d1d1                                  ; $762d: $d2 $d1 $d1

    pop de                                        ; $7630: $d1
    add hl, bc                                    ; $7631: $09
    pop de                                        ; $7632: $d1
    pop de                                        ; $7633: $d1
    pop de                                        ; $7634: $d1
    pop de                                        ; $7635: $d1
    pop de                                        ; $7636: $d1
    pop de                                        ; $7637: $d1
    pop de                                        ; $7638: $d1
    pop de                                        ; $7639: $d1
    pop de                                        ; $763a: $d1
    pop de                                        ; $763b: $d1
    pop de                                        ; $763c: $d1
    add b                                         ; $763d: $80
    add b                                         ; $763e: $80
    add b                                         ; $763f: $80
    add b                                         ; $7640: $80
    add b                                         ; $7641: $80
    add b                                         ; $7642: $80
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
    rlca                                          ; $764d: $07
    nop                                           ; $764e: $00
    ld a, [bc]                                    ; $764f: $0a
    nop                                           ; $7650: $00
    ldh [rTAC], a                                 ; $7651: $e0 $07
    pop de                                        ; $7653: $d1
    pop de                                        ; $7654: $d1
    jp nc, $d1d3                                  ; $7655: $d2 $d3 $d1

    pop de                                        ; $7658: $d1
    jp nc, $d1d4                                  ; $7659: $d2 $d4 $d1

    pop de                                        ; $765c: $d1
    jp nc, $d1d5                                  ; $765d: $d2 $d5 $d1

    pop de                                        ; $7660: $d1
    jp nc, $80d6                                  ; $7661: $d2 $d6 $80

    add b                                         ; $7664: $80
    add b                                         ; $7665: $80
    inc b                                         ; $7666: $04
    add b                                         ; $7667: $80
    add b                                         ; $7668: $80
    add b                                         ; $7669: $80
    inc b                                         ; $766a: $04
    add b                                         ; $766b: $80
    add b                                         ; $766c: $80
    add b                                         ; $766d: $80
    inc b                                         ; $766e: $04
    add b                                         ; $766f: $80
    add b                                         ; $7670: $80
    add b                                         ; $7671: $80
    inc b                                         ; $7672: $04
    rst $10                                       ; $7673: $d7
    ret c                                         ; $7674: $d8

    reti                                          ; $7675: $d9


    jp c, $dcdb                                   ; $7676: $da $db $dc

    db $dd                                        ; $7679: $dd
    sbc $df                                       ; $767a: $de $df
    ldh [$e1], a                                  ; $767c: $e0 $e1
    ld [c], a                                     ; $767e: $e2
    db $e3                                        ; $767f: $e3
    db $e4                                        ; $7680: $e4
    push hl                                       ; $7681: $e5
    and $04                                       ; $7682: $e6 $04
    inc b                                         ; $7684: $04
    inc b                                         ; $7685: $04
    inc b                                         ; $7686: $04
    inc b                                         ; $7687: $04
    inc b                                         ; $7688: $04
    inc b                                         ; $7689: $04
    inc b                                         ; $768a: $04
    inc b                                         ; $768b: $04
    inc b                                         ; $768c: $04
    inc b                                         ; $768d: $04
    inc b                                         ; $768e: $04
    inc b                                         ; $768f: $04
    inc b                                         ; $7690: $04
    inc b                                         ; $7691: $04
    inc b                                         ; $7692: $04
    rst $20                                       ; $7693: $e7
    add sp, -$17                                  ; $7694: $e8 $e9
    ld [$eceb], a                                 ; $7696: $ea $eb $ec
    db $ed                                        ; $7699: $ed
    xor $ef                                       ; $769a: $ee $ef
    ldh a, [$f1]                                  ; $769c: $f0 $f1
    ld a, [c]                                     ; $769e: $f2
    di                                            ; $769f: $f3
    pop de                                        ; $76a0: $d1
    pop de                                        ; $76a1: $d1
    db $f4                                        ; $76a2: $f4
    dec b                                         ; $76a3: $05
    dec b                                         ; $76a4: $05
    dec b                                         ; $76a5: $05
    dec b                                         ; $76a6: $05
    dec b                                         ; $76a7: $05
    dec b                                         ; $76a8: $05
    dec b                                         ; $76a9: $05
    dec b                                         ; $76aa: $05
    dec b                                         ; $76ab: $05
    dec b                                         ; $76ac: $05
    dec b                                         ; $76ad: $05
    dec b                                         ; $76ae: $05
    dec b                                         ; $76af: $05
    ld b, $06                                     ; $76b0: $06 $06
    dec b                                         ; $76b2: $05
    push af                                       ; $76b3: $f5
    or $f7                                        ; $76b4: $f6 $f7
    ld hl, sp-$07                                 ; $76b6: $f8 $f9
    ld a, [$fcfb]                                 ; $76b8: $fa $fb $fc
    db $fd                                        ; $76bb: $fd
    cp $ff                                        ; $76bc: $fe $ff
    nop                                           ; $76be: $00
    ld bc, $02d6                                  ; $76bf: $01 $d6 $02
    inc bc                                        ; $76c2: $03
    inc b                                         ; $76c3: $04
    inc b                                         ; $76c4: $04
    ld [bc], a                                    ; $76c5: $02
    ld [bc], a                                    ; $76c6: $02
    inc b                                         ; $76c7: $04
    inc b                                         ; $76c8: $04
    ld [bc], a                                    ; $76c9: $02
    ld [bc], a                                    ; $76ca: $02
    inc b                                         ; $76cb: $04
    inc b                                         ; $76cc: $04
    ld [bc], a                                    ; $76cd: $02
    ld [bc], a                                    ; $76ce: $02
    inc b                                         ; $76cf: $04
    inc b                                         ; $76d0: $04
    inc b                                         ; $76d1: $04
    inc b                                         ; $76d2: $04
    pop de                                        ; $76d3: $d1
    pop de                                        ; $76d4: $d1
    jp nc, $d104                                  ; $76d5: $d2 $04 $d1

    pop de                                        ; $76d8: $d1
    jp nc, $d105                                  ; $76d9: $d2 $05 $d1

    pop de                                        ; $76dc: $d1
    jp nc, $d106                                  ; $76dd: $d2 $06 $d1

    pop de                                        ; $76e0: $d1
    jp nc, $8007                                  ; $76e1: $d2 $07 $80

    add b                                         ; $76e4: $80
    add b                                         ; $76e5: $80
    ld bc, $8080                                  ; $76e6: $01 $80 $80
    add b                                         ; $76e9: $80
    rlca                                          ; $76ea: $07
    add b                                         ; $76eb: $80
    add b                                         ; $76ec: $80
    add b                                         ; $76ed: $80
    rlca                                          ; $76ee: $07
    add b                                         ; $76ef: $80
    add b                                         ; $76f0: $80
    add b                                         ; $76f1: $80
    rlca                                          ; $76f2: $07
    inc b                                         ; $76f3: $04
    inc b                                         ; $76f4: $04
    inc b                                         ; $76f5: $04
    inc b                                         ; $76f6: $04
    ld [$0a09], sp                                ; $76f7: $08 $09 $0a
    dec bc                                        ; $76fa: $0b
    inc c                                         ; $76fb: $0c
    dec c                                         ; $76fc: $0d
    ld c, $0f                                     ; $76fd: $0e $0f
    db $10                                        ; $76ff: $10
    ld de, $1312                                  ; $7700: $11 $12 $13
    ld bc, $0101                                  ; $7703: $01 $01 $01
    ld bc, $0707                                  ; $7706: $01 $07 $07
    rlca                                          ; $7709: $07
    rlca                                          ; $770a: $07
    ld bc, $0101                                  ; $770b: $01 $01 $01
    ld bc, $0101                                  ; $770e: $01 $01 $01
    ld bc, $1401                                  ; $7711: $01 $01 $14
    pop de                                        ; $7714: $d1
    pop de                                        ; $7715: $d1
    dec d                                         ; $7716: $15
    ld d, $17                                     ; $7717: $16 $17
    jr jr_084_7734                                ; $7719: $18 $19

    ld a, [de]                                    ; $771b: $1a
    dec de                                        ; $771c: $1b
    inc e                                         ; $771d: $1c
    dec e                                         ; $771e: $1d
    ld e, $1f                                     ; $771f: $1e $1f
    jr nz, @+$23                                  ; $7721: $20 $21

    dec b                                         ; $7723: $05
    ld b, $06                                     ; $7724: $06 $06
    dec b                                         ; $7726: $05
    dec b                                         ; $7727: $05
    dec b                                         ; $7728: $05
    dec b                                         ; $7729: $05
    dec b                                         ; $772a: $05
    ld bc, $0101                                  ; $772b: $01 $01 $01
    ld bc, $0101                                  ; $772e: $01 $01 $01
    ld bc, $0401                                  ; $7731: $01 $01 $04

jr_084_7734:
    inc b                                         ; $7734: $04
    inc b                                         ; $7735: $04
    inc b                                         ; $7736: $04
    ld [hl+], a                                   ; $7737: $22
    inc hl                                        ; $7738: $23
    inc h                                         ; $7739: $24
    dec h                                         ; $773a: $25
    ld h, $27                                     ; $773b: $26 $27
    jr z, jr_084_7768                             ; $773d: $28 $29

    ld a, [hl+]                                   ; $773f: $2a
    dec hl                                        ; $7740: $2b
    inc l                                         ; $7741: $2c
    dec l                                         ; $7742: $2d
    ld bc, $0101                                  ; $7743: $01 $01 $01
    ld bc, $0707                                  ; $7746: $01 $07 $07
    rlca                                          ; $7749: $07
    rlca                                          ; $774a: $07
    ld bc, $0101                                  ; $774b: $01 $01 $01
    ld bc, $0101                                  ; $774e: $01 $01 $01
    ld bc, $d101                                  ; $7751: $01 $01 $d1
    pop de                                        ; $7754: $d1
    jp nc, $d12e                                  ; $7755: $d2 $2e $d1

    pop de                                        ; $7758: $d1
    jp nc, $d112                                  ; $7759: $d2 $12 $d1

    pop de                                        ; $775c: $d1
    jp nc, $d12f                                  ; $775d: $d2 $2f $d1

    pop de                                        ; $7760: $d1
    jp nc, $8030                                  ; $7761: $d2 $30 $80

    add b                                         ; $7764: $80
    add b                                         ; $7765: $80
    rlca                                          ; $7766: $07
    add b                                         ; $7767: $80

jr_084_7768:
    add b                                         ; $7768: $80
    add b                                         ; $7769: $80
    rlca                                          ; $776a: $07
    add b                                         ; $776b: $80
    add b                                         ; $776c: $80
    add b                                         ; $776d: $80
    rlca                                          ; $776e: $07
    add b                                         ; $776f: $80
    add b                                         ; $7770: $80
    add b                                         ; $7771: $80
    rlca                                          ; $7772: $07
    ld sp, $3332                                  ; $7773: $31 $32 $33
    inc [hl]                                      ; $7776: $34
    inc de                                        ; $7777: $13
    ld e, $35                                     ; $7778: $1e $35
    ld [hl], $37                                  ; $777a: $36 $37
    jr c, jr_084_77b7                             ; $777c: $38 $39

    ld a, [hl-]                                   ; $777e: $3a
    dec sp                                        ; $777f: $3b
    inc a                                         ; $7780: $3c
    dec e                                         ; $7781: $1d
    dec a                                         ; $7782: $3d
    ld bc, $0101                                  ; $7783: $01 $01 $01
    ld bc, $0101                                  ; $7786: $01 $01 $01
    ld bc, $0101                                  ; $7789: $01 $01 $01
    ld bc, $8601                                  ; $778c: $01 $01 $86
    add [hl]                                      ; $778f: $86
    ld bc, $8601                                  ; $7790: $01 $01 $86
    ld a, $3f                                     ; $7793: $3e $3f
    ld b, b                                       ; $7795: $40
    ld b, c                                       ; $7796: $41
    ld b, d                                       ; $7797: $42
    ld b, e                                       ; $7798: $43
    ld b, h                                       ; $7799: $44
    ld b, l                                       ; $779a: $45
    ld b, [hl]                                    ; $779b: $46
    ld b, [hl]                                    ; $779c: $46
    ld b, a                                       ; $779d: $47
    ld c, b                                       ; $779e: $48
    ld c, c                                       ; $779f: $49
    ld c, d                                       ; $77a0: $4a
    ld c, e                                       ; $77a1: $4b
    ld c, h                                       ; $77a2: $4c
    ld bc, $0101                                  ; $77a3: $01 $01 $01
    ld bc, $0101                                  ; $77a6: $01 $01 $01
    ld bc, $8601                                  ; $77a9: $01 $01 $86
    add [hl]                                      ; $77ac: $86
    add [hl]                                      ; $77ad: $86
    ld bc, $8686                                  ; $77ae: $01 $86 $86
    add [hl]                                      ; $77b1: $86
    ld bc, $4e4d                                  ; $77b2: $01 $4d $4e
    ld c, a                                       ; $77b5: $4f
    ld d, b                                       ; $77b6: $50

jr_084_77b7:
    ld d, c                                       ; $77b7: $51
    ld d, d                                       ; $77b8: $52
    rlca                                          ; $77b9: $07
    db $10                                        ; $77ba: $10
    ld d, e                                       ; $77bb: $53
    ld d, h                                       ; $77bc: $54
    ld d, l                                       ; $77bd: $55
    ld d, [hl]                                    ; $77be: $56
    ld d, a                                       ; $77bf: $57
    ld e, b                                       ; $77c0: $58
    ld e, c                                       ; $77c1: $59
    ld e, d                                       ; $77c2: $5a
    ld bc, $0101                                  ; $77c3: $01 $01 $01
    ld bc, $0101                                  ; $77c6: $01 $01 $01
    ld bc, $0101                                  ; $77c9: $01 $01 $01
    add [hl]                                      ; $77cc: $86
    ld bc, $8601                                  ; $77cd: $01 $01 $86
    add [hl]                                      ; $77d0: $86
    ld bc, $d101                                  ; $77d1: $01 $01 $d1
    pop de                                        ; $77d4: $d1
    jp nc, $d105                                  ; $77d5: $d2 $05 $d1

    pop de                                        ; $77d8: $d1
    jp nc, $d106                                  ; $77d9: $d2 $06 $d1

    pop de                                        ; $77dc: $d1
    jp nc, $d107                                  ; $77dd: $d2 $07 $d1

    pop de                                        ; $77e0: $d1
    jp nc, $802e                                  ; $77e1: $d2 $2e $80

    add b                                         ; $77e4: $80
    add b                                         ; $77e5: $80
    rlca                                          ; $77e6: $07
    add b                                         ; $77e7: $80
    add b                                         ; $77e8: $80
    add b                                         ; $77e9: $80
    rlca                                          ; $77ea: $07
    add b                                         ; $77eb: $80
    add b                                         ; $77ec: $80
    add b                                         ; $77ed: $80
    rlca                                          ; $77ee: $07
    add b                                         ; $77ef: $80
    add b                                         ; $77f0: $80
    add b                                         ; $77f1: $80
    rlca                                          ; $77f2: $07
    ld e, e                                       ; $77f3: $5b
    ld e, h                                       ; $77f4: $5c
    ld a, [bc]                                    ; $77f5: $0a
    ld e, l                                       ; $77f6: $5d
    ld e, [hl]                                    ; $77f7: $5e
    ld e, a                                       ; $77f8: $5f
    ld c, $60                                     ; $77f9: $0e $60
    ld h, c                                       ; $77fb: $61
    ld h, d                                       ; $77fc: $62
    ld [de], a                                    ; $77fd: $12
    ld h, e                                       ; $77fe: $63
    ld h, h                                       ; $77ff: $64
    ld h, l                                       ; $7800: $65
    inc sp                                        ; $7801: $33
    ld h, [hl]                                    ; $7802: $66
    add [hl]                                      ; $7803: $86
    add [hl]                                      ; $7804: $86
    rlca                                          ; $7805: $07
    ld b, $06                                     ; $7806: $06 $06
    ld b, $07                                     ; $7808: $06 $07
    ld b, $06                                     ; $780a: $06 $06
    ld b, $07                                     ; $780c: $06 $07
    ld b, $07                                     ; $780e: $06 $07
    rlca                                          ; $7810: $07
    rlca                                          ; $7811: $07
    ld b, $67                                     ; $7812: $06 $67
    ld l, b                                       ; $7814: $68
    ld l, c                                       ; $7815: $69
    ld l, d                                       ; $7816: $6a
    ld l, e                                       ; $7817: $6b
    ld l, h                                       ; $7818: $6c
    ld l, l                                       ; $7819: $6d
    dec e                                         ; $781a: $1d
    ld l, [hl]                                    ; $781b: $6e
    ld c, c                                       ; $781c: $49
    dec a                                         ; $781d: $3d
    ld hl, $706f                                  ; $781e: $21 $6f $70
    ld [hl], c                                    ; $7821: $71
    ld b, c                                       ; $7822: $41
    ld b, $06                                     ; $7823: $06 $06
    ld b, $07                                     ; $7825: $06 $07
    ld b, $06                                     ; $7827: $06 $06
    ld b, $07                                     ; $7829: $06 $07
    ld b, $06                                     ; $782b: $06 $06
    ld h, $07                                     ; $782d: $26 $07
    ld b, $06                                     ; $782f: $06 $06
    ld b, $01                                     ; $7831: $06 $01
    ld [hl], d                                    ; $7833: $72
    ld [hl], e                                    ; $7834: $73
    inc h                                         ; $7835: $24
    dec h                                         ; $7836: $25
    ld [hl], h                                    ; $7837: $74
    ld [hl], l                                    ; $7838: $75
    jr z, jr_084_7864                             ; $7839: $28 $29

    ld a, [hl+]                                   ; $783b: $2a
    halt                                          ; $783c: $76
    ld d, h                                       ; $783d: $54
    dec l                                         ; $783e: $2d
    ld c, l                                       ; $783f: $4d
    ld d, a                                       ; $7840: $57
    ld e, b                                       ; $7841: $58
    ld d, b                                       ; $7842: $50
    ld b, $06                                     ; $7843: $06 $06
    ld bc, $0701                                  ; $7845: $01 $01 $07
    rlca                                          ; $7848: $07
    ld bc, $0701                                  ; $7849: $01 $01 $07
    rlca                                          ; $784c: $07
    add [hl]                                      ; $784d: $86
    ld bc, $8601                                  ; $784e: $01 $01 $86
    add [hl]                                      ; $7851: $86
    ld bc, $f577                                  ; $7852: $01 $77 $f5
    rst $10                                       ; $7855: $d7
    ret c                                         ; $7856: $d8

    ld a, b                                       ; $7857: $78
    ld a, c                                       ; $7858: $79
    db $db                                        ; $7859: $db
    call c, Call_084_7b7a                         ; $785a: $dc $7a $7b
    push de                                       ; $785d: $d5
    rst $18                                       ; $785e: $df
    ld a, h                                       ; $785f: $7c
    ld a, l                                       ; $7860: $7d
    sub $e3                                       ; $7861: $d6 $e3
    ld [bc], a                                    ; $7863: $02

jr_084_7864:
    inc b                                         ; $7864: $04
    inc b                                         ; $7865: $04
    inc b                                         ; $7866: $04
    ld [bc], a                                    ; $7867: $02
    inc b                                         ; $7868: $04
    inc b                                         ; $7869: $04
    inc b                                         ; $786a: $04
    ld [bc], a                                    ; $786b: $02
    inc b                                         ; $786c: $04
    inc b                                         ; $786d: $04
    inc b                                         ; $786e: $04
    inc b                                         ; $786f: $04
    inc b                                         ; $7870: $04
    inc b                                         ; $7871: $04
    inc b                                         ; $7872: $04
    jp nc, $d1d1                                  ; $7873: $d2 $d1 $d1

    pop de                                        ; $7876: $d1
    jp nc, $d1d1                                  ; $7877: $d2 $d1 $d1

    pop de                                        ; $787a: $d1
    jp nc, $d1d1                                  ; $787b: $d2 $d1 $d1

    pop de                                        ; $787e: $d1
    jp nc, $d1d1                                  ; $787f: $d2 $d1 $d1

    pop de                                        ; $7882: $d1
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
    add b                                         ; $788d: $80
    add b                                         ; $788e: $80
    add b                                         ; $788f: $80
    add b                                         ; $7890: $80
    add b                                         ; $7891: $80
    add b                                         ; $7892: $80
    pop de                                        ; $7893: $d1
    pop de                                        ; $7894: $d1
    pop de                                        ; $7895: $d1
    pop de                                        ; $7896: $d1
    pop de                                        ; $7897: $d1
    pop de                                        ; $7898: $d1
    pop de                                        ; $7899: $d1
    pop de                                        ; $789a: $d1
    pop de                                        ; $789b: $d1
    pop de                                        ; $789c: $d1
    pop de                                        ; $789d: $d1
    pop de                                        ; $789e: $d1
    pop de                                        ; $789f: $d1
    pop de                                        ; $78a0: $d1
    pop de                                        ; $78a1: $d1
    pop de                                        ; $78a2: $d1
    add b                                         ; $78a3: $80
    add b                                         ; $78a4: $80
    add b                                         ; $78a5: $80
    add b                                         ; $78a6: $80

jr_084_78a7:
    add b                                         ; $78a7: $80
    add b                                         ; $78a8: $80
    add b                                         ; $78a9: $80
    add b                                         ; $78aa: $80
    add b                                         ; $78ab: $80
    add b                                         ; $78ac: $80
    add b                                         ; $78ad: $80
    add b                                         ; $78ae: $80
    add b                                         ; $78af: $80
    add b                                         ; $78b0: $80
    add b                                         ; $78b1: $80
    add b                                         ; $78b2: $80
    inc b                                         ; $78b3: $04
    inc b                                         ; $78b4: $04
    inc b                                         ; $78b5: $04
    inc b                                         ; $78b6: $04
    ld a, [hl]                                    ; $78b7: $7e
    dec b                                         ; $78b8: $05
    ld [$7f09], sp                                ; $78b9: $08 $09 $7f
    ld b, $0c                                     ; $78bc: $06 $0c
    dec c                                         ; $78be: $0d
    ld d, d                                       ; $78bf: $52
    rlca                                          ; $78c0: $07
    db $10                                        ; $78c1: $10
    ld de, $0101                                  ; $78c2: $11 $01 $01
    ld bc, $0701                                  ; $78c5: $01 $01 $07
    rlca                                          ; $78c8: $07
    rlca                                          ; $78c9: $07
    rlca                                          ; $78ca: $07
    ld bc, $0101                                  ; $78cb: $01 $01 $01
    rlca                                          ; $78ce: $07
    ld bc, $0101                                  ; $78cf: $01 $01 $01
    rlca                                          ; $78d2: $07
    jp nc, $d1d1                                  ; $78d3: $d2 $d1 $d1

    pop de                                        ; $78d6: $d1
    jp nc, $d1d1                                  ; $78d7: $d2 $d1 $d1

    pop de                                        ; $78da: $d1
    add b                                         ; $78db: $80
    add c                                         ; $78dc: $81
    add c                                         ; $78dd: $81
    add c                                         ; $78de: $81
    add d                                         ; $78df: $82
    rst $10                                       ; $78e0: $d7
    ret c                                         ; $78e1: $d8

    reti                                          ; $78e2: $d9


    add b                                         ; $78e3: $80
    add b                                         ; $78e4: $80
    add b                                         ; $78e5: $80
    add b                                         ; $78e6: $80
    add b                                         ; $78e7: $80
    add b                                         ; $78e8: $80
    add b                                         ; $78e9: $80
    add b                                         ; $78ea: $80
    adc b                                         ; $78eb: $88
    adc b                                         ; $78ec: $88
    adc b                                         ; $78ed: $88
    adc b                                         ; $78ee: $88
    inc c                                         ; $78ef: $0c
    inc b                                         ; $78f0: $04
    inc b                                         ; $78f1: $04
    inc b                                         ; $78f2: $04
    pop de                                        ; $78f3: $d1
    pop de                                        ; $78f4: $d1
    pop de                                        ; $78f5: $d1
    pop de                                        ; $78f6: $d1
    pop de                                        ; $78f7: $d1
    pop de                                        ; $78f8: $d1
    pop de                                        ; $78f9: $d1
    pop de                                        ; $78fa: $d1
    add c                                         ; $78fb: $81
    add e                                         ; $78fc: $83
    pop de                                        ; $78fd: $d1
    pop de                                        ; $78fe: $d1
    add h                                         ; $78ff: $84
    jp nc, $d1d1                                  ; $7900: $d2 $d1 $d1

    add b                                         ; $7903: $80
    add b                                         ; $7904: $80
    add b                                         ; $7905: $80
    add b                                         ; $7906: $80
    add b                                         ; $7907: $80
    add b                                         ; $7908: $80
    add b                                         ; $7909: $80
    add b                                         ; $790a: $80
    adc b                                         ; $790b: $88
    adc b                                         ; $790c: $88
    add b                                         ; $790d: $80
    add b                                         ; $790e: $80
    inc c                                         ; $790f: $0c
    add b                                         ; $7910: $80
    add b                                         ; $7911: $80
    add b                                         ; $7912: $80
    add l                                         ; $7913: $85
    ld l, $31                                     ; $7914: $2e $31
    ld [hl-], a                                   ; $7916: $32
    ld de, $1312                                  ; $7917: $11 $12 $13
    ld e, $86                                     ; $791a: $1e $86
    cpl                                           ; $791c: $2f
    scf                                           ; $791d: $37
    jr c, jr_084_78a7                             ; $791e: $38 $87

    jr nc, jr_084_793d                            ; $7920: $30 $1b

    inc e                                         ; $7922: $1c
    add hl, bc                                    ; $7923: $09
    ld bc, $0701                                  ; $7924: $01 $01 $07
    ld bc, $0101                                  ; $7927: $01 $01 $01
    rlca                                          ; $792a: $07
    add hl, bc                                    ; $792b: $09
    ld bc, $0701                                  ; $792c: $01 $01 $07
    add hl, bc                                    ; $792f: $09
    ld bc, $0701                                  ; $7930: $01 $01 $07
    adc b                                         ; $7933: $88
    db $db                                        ; $7934: $db
    call c, $89dd                                 ; $7935: $dc $dd $89
    rst $18                                       ; $7938: $df
    ldh [$e1], a                                  ; $7939: $e0 $e1
    adc d                                         ; $793b: $8a
    db $e3                                        ; $793c: $e3

jr_084_793d:
    db $e4                                        ; $793d: $e4
    push hl                                       ; $793e: $e5
    adc e                                         ; $793f: $8b
    inc b                                         ; $7940: $04
    inc b                                         ; $7941: $04
    inc b                                         ; $7942: $04
    inc c                                         ; $7943: $0c
    inc b                                         ; $7944: $04
    inc b                                         ; $7945: $04
    inc b                                         ; $7946: $04
    inc c                                         ; $7947: $0c
    inc b                                         ; $7948: $04
    inc b                                         ; $7949: $04
    inc b                                         ; $794a: $04
    inc c                                         ; $794b: $0c
    inc b                                         ; $794c: $04
    inc b                                         ; $794d: $04
    inc b                                         ; $794e: $04
    add hl, bc                                    ; $794f: $09
    ld bc, $0101                                  ; $7950: $01 $01 $01
    adc h                                         ; $7953: $8c
    adc l                                         ; $7954: $8d
    pop de                                        ; $7955: $d1
    pop de                                        ; $7956: $d1
    adc [hl]                                      ; $7957: $8e
    adc l                                         ; $7958: $8d
    pop de                                        ; $7959: $d1
    pop de                                        ; $795a: $d1
    ld a, l                                       ; $795b: $7d
    adc l                                         ; $795c: $8d
    pop de                                        ; $795d: $d1
    pop de                                        ; $795e: $d1
    inc b                                         ; $795f: $04
    adc l                                         ; $7960: $8d
    pop de                                        ; $7961: $d1
    pop de                                        ; $7962: $d1
    inc c                                         ; $7963: $0c
    adc b                                         ; $7964: $88
    add b                                         ; $7965: $80
    add b                                         ; $7966: $80
    inc c                                         ; $7967: $0c
    adc b                                         ; $7968: $88
    add b                                         ; $7969: $80
    add b                                         ; $796a: $80
    inc b                                         ; $796b: $04
    adc b                                         ; $796c: $88
    add b                                         ; $796d: $80
    add b                                         ; $796e: $80
    ld bc, $8088                                  ; $796f: $01 $88 $80
    add b                                         ; $7972: $80
    ld a, [hl]                                    ; $7973: $7e
    dec b                                         ; $7974: $05
    ld [$7f09], sp                                ; $7975: $08 $09 $7f
    ld b, $0c                                     ; $7978: $06 $0c
    dec c                                         ; $797a: $0d
    ld d, d                                       ; $797b: $52
    rlca                                          ; $797c: $07
    db $10                                        ; $797d: $10
    ld de, $2e85                                  ; $797e: $11 $85 $2e
    ld sp, $0132                                  ; $7981: $31 $32 $01
    ld bc, $0701                                  ; $7984: $01 $01 $07
    ld bc, $0101                                  ; $7987: $01 $01 $01
    ld bc, $0101                                  ; $798a: $01 $01 $01
    ld bc, $0901                                  ; $798d: $01 $01 $09
    ld bc, $0101                                  ; $7990: $01 $01 $01
    ld a, [bc]                                    ; $7993: $0a
    dec bc                                        ; $7994: $0b
    adc a                                         ; $7995: $8f
    sub b                                         ; $7996: $90
    ld c, $0f                                     ; $7997: $0e $0f
    ld a, [de]                                    ; $7999: $1a
    dec de                                        ; $799a: $1b
    sub c                                         ; $799b: $91
    add c                                         ; $799c: $81
    add c                                         ; $799d: $81
    add c                                         ; $799e: $81
    jp nc, $d1d1                                  ; $799f: $d2 $d1 $d1

    pop de                                        ; $79a2: $d1
    rlca                                          ; $79a3: $07
    rlca                                          ; $79a4: $07
    rrca                                          ; $79a5: $0f
    rrca                                          ; $79a6: $0f
    ld bc, $0101                                  ; $79a7: $01 $01 $01
    ld bc, $8888                                  ; $79aa: $01 $88 $88
    adc b                                         ; $79ad: $88
    adc b                                         ; $79ae: $88
    add b                                         ; $79af: $80
    add b                                         ; $79b0: $80
    add b                                         ; $79b1: $80
    add b                                         ; $79b2: $80
    sub d                                         ; $79b3: $92
    adc l                                         ; $79b4: $8d
    sub e                                         ; $79b5: $93
    pop de                                        ; $79b6: $d1
    inc e                                         ; $79b7: $1c
    jp nc, $d193                                  ; $79b8: $d2 $93 $d1

    add c                                         ; $79bb: $81
    sub h                                         ; $79bc: $94
    sub e                                         ; $79bd: $93
    pop de                                        ; $79be: $d1
    pop de                                        ; $79bf: $d1
    pop de                                        ; $79c0: $d1
    pop de                                        ; $79c1: $d1
    pop de                                        ; $79c2: $d1
    rrca                                          ; $79c3: $0f
    adc b                                         ; $79c4: $88
    adc b                                         ; $79c5: $88
    add b                                         ; $79c6: $80
    rlca                                          ; $79c7: $07
    add b                                         ; $79c8: $80
    adc b                                         ; $79c9: $88
    add b                                         ; $79ca: $80
    adc b                                         ; $79cb: $88
    adc b                                         ; $79cc: $88
    adc b                                         ; $79cd: $88
    add b                                         ; $79ce: $80
    add b                                         ; $79cf: $80
    add b                                         ; $79d0: $80
    add b                                         ; $79d1: $80
    add b                                         ; $79d2: $80
    pop de                                        ; $79d3: $d1
    pop de                                        ; $79d4: $d1
    jp nc, $d112                                  ; $79d5: $d2 $12 $d1

    pop de                                        ; $79d8: $d1
    jp nc, $d12f                                  ; $79d9: $d2 $2f $d1

    pop de                                        ; $79dc: $d1
    jp nc, $d130                                  ; $79dd: $d2 $30 $d1

    pop de                                        ; $79e0: $d1
    jp nc, $8005                                  ; $79e1: $d2 $05 $80

    add b                                         ; $79e4: $80
    add b                                         ; $79e5: $80
    rlca                                          ; $79e6: $07
    add b                                         ; $79e7: $80
    add b                                         ; $79e8: $80
    add b                                         ; $79e9: $80
    rlca                                          ; $79ea: $07
    add b                                         ; $79eb: $80
    add b                                         ; $79ec: $80
    add b                                         ; $79ed: $80
    rlca                                          ; $79ee: $07
    add b                                         ; $79ef: $80
    add b                                         ; $79f0: $80
    add b                                         ; $79f1: $80
    rlca                                          ; $79f2: $07
    inc de                                        ; $79f3: $13
    ld e, $35                                     ; $79f4: $1e $35
    sub l                                         ; $79f6: $95
    scf                                           ; $79f7: $37
    jr c, @+$3b                                   ; $79f8: $38 $39

    sub [hl]                                      ; $79fa: $96
    dec de                                        ; $79fb: $1b
    inc e                                         ; $79fc: $1c
    dec e                                         ; $79fd: $1d
    sub a                                         ; $79fe: $97
    ld [$0a09], sp                                ; $79ff: $08 $09 $0a
    dec bc                                        ; $7a02: $0b
    rlca                                          ; $7a03: $07
    rlca                                          ; $7a04: $07
    rlca                                          ; $7a05: $07
    add hl, bc                                    ; $7a06: $09
    ld bc, $0701                                  ; $7a07: $01 $01 $07
    add hl, bc                                    ; $7a0a: $09
    ld bc, $0701                                  ; $7a0b: $01 $01 $07
    rrca                                          ; $7a0e: $0f
    ld bc, $0101                                  ; $7a0f: $01 $01 $01
    ld bc, $9898                                  ; $7a12: $01 $98 $98
    sbc c                                         ; $7a15: $99
    ld b, l                                       ; $7a16: $45
    sbc d                                         ; $7a17: $9a
    sbc d                                         ; $7a18: $9a
    sbc e                                         ; $7a19: $9b
    ld c, b                                       ; $7a1a: $48
    sbc h                                         ; $7a1b: $9c
    sbc l                                         ; $7a1c: $9d
    sbc [hl]                                      ; $7a1d: $9e
    ld c, h                                       ; $7a1e: $4c
    adc a                                         ; $7a1f: $8f
    sub b                                         ; $7a20: $90
    sub d                                         ; $7a21: $92
    ld l, d                                       ; $7a22: $6a
    add hl, bc                                    ; $7a23: $09
    add hl, bc                                    ; $7a24: $09
    add hl, bc                                    ; $7a25: $09
    ld bc, $0909                                  ; $7a26: $01 $09 $09
    add hl, bc                                    ; $7a29: $09
    ld bc, $0f0f                                  ; $7a2a: $01 $0f $0f
    rrca                                          ; $7a2d: $0f
    ld bc, $0909                                  ; $7a2e: $01 $09 $09
    add hl, bc                                    ; $7a31: $09
    ld bc, $7251                                  ; $7a32: $01 $51 $72
    ld [hl], e                                    ; $7a35: $73
    db $10                                        ; $7a36: $10
    sbc a                                         ; $7a37: $9f
    ld [hl], h                                    ; $7a38: $74
    ld [hl], l                                    ; $7a39: $75
    ld d, [hl]                                    ; $7a3a: $56
    and b                                         ; $7a3b: $a0
    and c                                         ; $7a3c: $a1
    ld e, c                                       ; $7a3d: $59
    ld e, d                                       ; $7a3e: $5a
    ld [hl+], a                                   ; $7a3f: $22
    inc hl                                        ; $7a40: $23
    inc h                                         ; $7a41: $24
    dec h                                         ; $7a42: $25
    rlca                                          ; $7a43: $07
    ld b, $06                                     ; $7a44: $06 $06
    ld bc, $070f                                  ; $7a46: $01 $0f $07
    rlca                                          ; $7a49: $07
    ld bc, $0f0f                                  ; $7a4a: $01 $0f $0f
    rlca                                          ; $7a4d: $07
    ld bc, $0101                                  ; $7a4e: $01 $01 $01
    ld bc, $d101                                  ; $7a51: $01 $01 $d1
    pop de                                        ; $7a54: $d1
    jp nc, $d1a2                                  ; $7a55: $d2 $a2 $d1

    pop de                                        ; $7a58: $d1
    jp nc, $d1a3                                  ; $7a59: $d2 $a3 $d1

    pop de                                        ; $7a5c: $d1
    jp nc, $d1a4                                  ; $7a5d: $d2 $a4 $d1

    pop de                                        ; $7a60: $d1
    jp nc, $80a5                                  ; $7a61: $d2 $a5 $80

    add b                                         ; $7a64: $80
    add b                                         ; $7a65: $80
    adc e                                         ; $7a66: $8b
    add b                                         ; $7a67: $80
    add b                                         ; $7a68: $80
    add b                                         ; $7a69: $80
    adc e                                         ; $7a6a: $8b
    add b                                         ; $7a6b: $80
    add b                                         ; $7a6c: $80
    add b                                         ; $7a6d: $80
    dec bc                                        ; $7a6e: $0b
    add b                                         ; $7a6f: $80
    add b                                         ; $7a70: $80
    add b                                         ; $7a71: $80
    dec bc                                        ; $7a72: $0b
    and [hl]                                      ; $7a73: $a6
    and a                                         ; $7a74: $a7
    xor b                                         ; $7a75: $a8
    xor c                                         ; $7a76: $a9
    xor d                                         ; $7a77: $aa
    xor e                                         ; $7a78: $ab
    xor h                                         ; $7a79: $ac
    xor l                                         ; $7a7a: $ad
    xor [hl]                                      ; $7a7b: $ae
    xor a                                         ; $7a7c: $af
    or b                                          ; $7a7d: $b0
    or c                                          ; $7a7e: $b1
    or d                                          ; $7a7f: $b2
    or e                                          ; $7a80: $b3
    or h                                          ; $7a81: $b4
    or l                                          ; $7a82: $b5
    adc e                                         ; $7a83: $8b
    adc e                                         ; $7a84: $8b
    adc e                                         ; $7a85: $8b
    adc e                                         ; $7a86: $8b
    adc e                                         ; $7a87: $8b
    adc e                                         ; $7a88: $8b
    adc e                                         ; $7a89: $8b
    adc e                                         ; $7a8a: $8b
    dec bc                                        ; $7a8b: $0b
    dec bc                                        ; $7a8c: $0b
    dec bc                                        ; $7a8d: $0b
    dec bc                                        ; $7a8e: $0b
    dec bc                                        ; $7a8f: $0b
    dec bc                                        ; $7a90: $0b
    dec bc                                        ; $7a91: $0b
    dec bc                                        ; $7a92: $0b
    and d                                         ; $7a93: $a2
    and [hl]                                      ; $7a94: $a6
    and a                                         ; $7a95: $a7
    xor b                                         ; $7a96: $a8
    and e                                         ; $7a97: $a3
    xor d                                         ; $7a98: $aa
    xor e                                         ; $7a99: $ab
    xor h                                         ; $7a9a: $ac
    and h                                         ; $7a9b: $a4
    xor [hl]                                      ; $7a9c: $ae
    xor a                                         ; $7a9d: $af
    or b                                          ; $7a9e: $b0
    and l                                         ; $7a9f: $a5
    or d                                          ; $7aa0: $b2
    or e                                          ; $7aa1: $b3
    or h                                          ; $7aa2: $b4
    adc e                                         ; $7aa3: $8b
    adc e                                         ; $7aa4: $8b
    adc e                                         ; $7aa5: $8b
    adc e                                         ; $7aa6: $8b
    adc e                                         ; $7aa7: $8b
    adc e                                         ; $7aa8: $8b
    adc e                                         ; $7aa9: $8b
    adc e                                         ; $7aaa: $8b
    dec bc                                        ; $7aab: $0b
    dec bc                                        ; $7aac: $0b
    dec bc                                        ; $7aad: $0b
    dec bc                                        ; $7aae: $0b
    dec bc                                        ; $7aaf: $0b
    dec bc                                        ; $7ab0: $0b
    dec bc                                        ; $7ab1: $0b
    dec bc                                        ; $7ab2: $0b
    xor c                                         ; $7ab3: $a9
    and d                                         ; $7ab4: $a2
    and [hl]                                      ; $7ab5: $a6
    and a                                         ; $7ab6: $a7
    xor l                                         ; $7ab7: $ad
    and e                                         ; $7ab8: $a3
    xor d                                         ; $7ab9: $aa
    xor e                                         ; $7aba: $ab
    or c                                          ; $7abb: $b1
    and h                                         ; $7abc: $a4
    xor [hl]                                      ; $7abd: $ae
    xor a                                         ; $7abe: $af
    or l                                          ; $7abf: $b5
    and l                                         ; $7ac0: $a5
    or d                                          ; $7ac1: $b2
    or e                                          ; $7ac2: $b3
    adc e                                         ; $7ac3: $8b
    adc e                                         ; $7ac4: $8b
    adc e                                         ; $7ac5: $8b
    adc e                                         ; $7ac6: $8b
    adc e                                         ; $7ac7: $8b
    adc e                                         ; $7ac8: $8b
    adc e                                         ; $7ac9: $8b
    adc e                                         ; $7aca: $8b
    dec bc                                        ; $7acb: $0b
    dec bc                                        ; $7acc: $0b
    dec bc                                        ; $7acd: $0b
    dec bc                                        ; $7ace: $0b
    dec bc                                        ; $7acf: $0b
    dec bc                                        ; $7ad0: $0b
    dec bc                                        ; $7ad1: $0b
    dec bc                                        ; $7ad2: $0b
    pop de                                        ; $7ad3: $d1
    pop de                                        ; $7ad4: $d1
    jp nc, $d1b6                                  ; $7ad5: $d2 $b6 $d1

    pop de                                        ; $7ad8: $d1
    jp nc, $d130                                  ; $7ad9: $d2 $30 $d1

    pop de                                        ; $7adc: $d1
    jp nc, $d1b7                                  ; $7add: $d2 $b7 $d1

    pop de                                        ; $7ae0: $d1
    jp nc, $80b8                                  ; $7ae1: $d2 $b8 $80

    add b                                         ; $7ae4: $80
    add b                                         ; $7ae5: $80
    dec bc                                        ; $7ae6: $0b
    add b                                         ; $7ae7: $80
    add b                                         ; $7ae8: $80
    add b                                         ; $7ae9: $80
    rlca                                          ; $7aea: $07
    add b                                         ; $7aeb: $80
    add b                                         ; $7aec: $80
    add b                                         ; $7aed: $80
    adc c                                         ; $7aee: $89
    add b                                         ; $7aef: $80
    add b                                         ; $7af0: $80
    add b                                         ; $7af1: $80
    adc c                                         ; $7af2: $89
    cp c                                          ; $7af3: $b9
    cp d                                          ; $7af4: $ba
    cp e                                          ; $7af5: $bb
    cp h                                          ; $7af6: $bc
    dec de                                        ; $7af7: $1b
    inc e                                         ; $7af8: $1c
    dec e                                         ; $7af9: $1d
    sub a                                         ; $7afa: $97
    or a                                          ; $7afb: $b7
    cp l                                          ; $7afc: $bd
    ld a, [bc]                                    ; $7afd: $0a
    dec bc                                        ; $7afe: $0b
    cp [hl]                                       ; $7aff: $be
    cp a                                          ; $7b00: $bf
    ld c, $0f                                     ; $7b01: $0e $0f
    dec bc                                        ; $7b03: $0b
    dec bc                                        ; $7b04: $0b
    dec bc                                        ; $7b05: $0b
    dec bc                                        ; $7b06: $0b
    rlca                                          ; $7b07: $07
    rlca                                          ; $7b08: $07
    rlca                                          ; $7b09: $07
    rrca                                          ; $7b0a: $0f
    adc c                                         ; $7b0b: $89
    adc c                                         ; $7b0c: $89
    ld bc, $8901                                  ; $7b0d: $01 $01 $89
    adc c                                         ; $7b10: $89
    rlca                                          ; $7b11: $07
    ld bc, $b9b6                                  ; $7b12: $01 $b6 $b9
    cp d                                          ; $7b15: $ba
    cp e                                          ; $7b16: $bb
    sbc h                                         ; $7b17: $9c
    sbc l                                         ; $7b18: $9d
    sbc [hl]                                      ; $7b19: $9e
    ld c, h                                       ; $7b1a: $4c
    adc a                                         ; $7b1b: $8f
    sub b                                         ; $7b1c: $90
    sub d                                         ; $7b1d: $92
    ld l, d                                       ; $7b1e: $6a
    ld a, [de]                                    ; $7b1f: $1a
    dec de                                        ; $7b20: $1b
    inc e                                         ; $7b21: $1c
    dec e                                         ; $7b22: $1d
    dec bc                                        ; $7b23: $0b
    dec bc                                        ; $7b24: $0b
    dec bc                                        ; $7b25: $0b
    dec bc                                        ; $7b26: $0b
    rrca                                          ; $7b27: $0f
    rrca                                          ; $7b28: $0f
    rrca                                          ; $7b29: $0f
    rlca                                          ; $7b2a: $07
    add hl, bc                                    ; $7b2b: $09
    add hl, bc                                    ; $7b2c: $09
    add hl, bc                                    ; $7b2d: $09
    ld bc, $0101                                  ; $7b2e: $01 $01 $01
    ld bc, $bc01                                  ; $7b31: $01 $01 $bc
    or [hl]                                       ; $7b34: $b6
    cp c                                          ; $7b35: $b9
    cp d                                          ; $7b36: $ba
    and b                                         ; $7b37: $a0
    and c                                         ; $7b38: $a1
    ld e, c                                       ; $7b39: $59
    ld e, d                                       ; $7b3a: $5a
    ld [hl+], a                                   ; $7b3b: $22
    inc hl                                        ; $7b3c: $23
    inc h                                         ; $7b3d: $24
    dec h                                         ; $7b3e: $25
    ld h, $27                                     ; $7b3f: $26 $27
    jr z, jr_084_7b6c                             ; $7b41: $28 $29

    dec bc                                        ; $7b43: $0b
    dec bc                                        ; $7b44: $0b
    dec bc                                        ; $7b45: $0b
    dec bc                                        ; $7b46: $0b
    rrca                                          ; $7b47: $0f
    rrca                                          ; $7b48: $0f
    rlca                                          ; $7b49: $07
    rlca                                          ; $7b4a: $07
    ld bc, $0101                                  ; $7b4b: $01 $01 $01
    ld bc, $0101                                  ; $7b4e: $01 $01 $01
    ld bc, $d101                                  ; $7b51: $01 $01 $d1
    pop de                                        ; $7b54: $d1
    jp nc, $d1c0                                  ; $7b55: $d2 $c0 $d1

    pop de                                        ; $7b58: $d1
    jp nc, $d1c1                                  ; $7b59: $d2 $c1 $d1

    pop de                                        ; $7b5c: $d1
    jp nc, $d1c2                                  ; $7b5d: $d2 $c2 $d1

    pop de                                        ; $7b60: $d1
    jp nc, $80c3                                  ; $7b61: $d2 $c3 $80

    add b                                         ; $7b64: $80
    add b                                         ; $7b65: $80
    adc c                                         ; $7b66: $89
    add b                                         ; $7b67: $80
    add b                                         ; $7b68: $80
    add b                                         ; $7b69: $80
    adc b                                         ; $7b6a: $88
    add b                                         ; $7b6b: $80

jr_084_7b6c:
    add b                                         ; $7b6c: $80
    add b                                         ; $7b6d: $80
    adc b                                         ; $7b6e: $88
    add b                                         ; $7b6f: $80
    add b                                         ; $7b70: $80
    add b                                         ; $7b71: $80
    adc b                                         ; $7b72: $88
    call nz, Call_000_12c5                        ; $7b73: $c4 $c5 $12
    inc de                                        ; $7b76: $13
    add $c7                                       ; $7b77: $c6 $c7
    ret z                                         ; $7b79: $c8

Call_084_7b7a:
    ret                                           ; $7b7a: $c9


    jp z, $cccb                                   ; $7b7b: $ca $cb $cc

    call $cfce                                    ; $7b7e: $cd $ce $cf
    ret nc                                        ; $7b81: $d0

    pop de                                        ; $7b82: $d1
    adc c                                         ; $7b83: $89
    adc c                                         ; $7b84: $89
    rlca                                          ; $7b85: $07
    ld bc, $8b8b                                  ; $7b86: $01 $8b $8b
    adc e                                         ; $7b89: $8b
    adc e                                         ; $7b8a: $8b
    adc e                                         ; $7b8b: $8b
    adc e                                         ; $7b8c: $8b
    adc e                                         ; $7b8d: $8b
    adc e                                         ; $7b8e: $8b
    adc e                                         ; $7b8f: $8b
    adc e                                         ; $7b90: $8b
    adc e                                         ; $7b91: $8b
    adc e                                         ; $7b92: $8b
    ld e, $1f                                     ; $7b93: $1e $1f
    jp nc, $d4d3                                  ; $7b95: $d2 $d3 $d4

    ccf                                           ; $7b98: $3f
    push de                                       ; $7b99: $d5
    sub $d7                                       ; $7b9a: $d6 $d7
    ld b, e                                       ; $7b9c: $43
    ret c                                         ; $7b9d: $d8

    reti                                          ; $7b9e: $d9


    jp c, $dcdb                                   ; $7b9f: $da $db $dc

    db $dd                                        ; $7ba2: $dd
    ld bc, $0a01                                  ; $7ba3: $01 $01 $0a
    ld a, [bc]                                    ; $7ba6: $0a
    adc e                                         ; $7ba7: $8b
    ld bc, $0a0a                                  ; $7ba8: $01 $0a $0a
    adc e                                         ; $7bab: $8b
    rlca                                          ; $7bac: $07
    ld a, [bc]                                    ; $7bad: $0a
    ld a, [bc]                                    ; $7bae: $0a
    adc e                                         ; $7baf: $8b
    rrca                                          ; $7bb0: $0f
    ld a, [bc]                                    ; $7bb1: $0a
    ld a, [bc]                                    ; $7bb2: $0a
    sbc $df                                       ; $7bb3: $de $df
    ldh [$e1], a                                  ; $7bb5: $e0 $e1
    ld [c], a                                     ; $7bb7: $e2
    db $e3                                        ; $7bb8: $e3
    db $e4                                        ; $7bb9: $e4
    push hl                                       ; $7bba: $e5
    and $e7                                       ; $7bbb: $e6 $e7
    add sp, -$17                                  ; $7bbd: $e8 $e9
    ld [$eceb], a                                 ; $7bbf: $ea $eb $ec
    db $ed                                        ; $7bc2: $ed
    ld a, [bc]                                    ; $7bc3: $0a
    ld a, [bc]                                    ; $7bc4: $0a
    ld a, [bc]                                    ; $7bc5: $0a
    ld a, [bc]                                    ; $7bc6: $0a
    ld a, [bc]                                    ; $7bc7: $0a
    ld a, [bc]                                    ; $7bc8: $0a
    ld a, [bc]                                    ; $7bc9: $0a
    ld a, [bc]                                    ; $7bca: $0a
    ld a, [bc]                                    ; $7bcb: $0a
    ld a, [bc]                                    ; $7bcc: $0a
    ld a, [bc]                                    ; $7bcd: $0a
    ld a, [bc]                                    ; $7bce: $0a
    ld a, [bc]                                    ; $7bcf: $0a
    ld a, [bc]                                    ; $7bd0: $0a
    ld a, [bc]                                    ; $7bd1: $0a
    ld a, [bc]                                    ; $7bd2: $0a
    ld de, $1312                                  ; $7bd3: $11 $12 $13
    ld e, $86                                     ; $7bd6: $1e $86
    cpl                                           ; $7bd8: $2f
    scf                                           ; $7bd9: $37
    jr c, @-$77                                   ; $7bda: $38 $87

    jr nc, jr_084_7bf9                            ; $7bdc: $30 $1b

    inc e                                         ; $7bde: $1c
    ld a, [hl]                                    ; $7bdf: $7e
    dec b                                         ; $7be0: $05
    ld [$0109], sp                                ; $7be1: $08 $09 $01
    ld bc, $0701                                  ; $7be4: $01 $01 $07
    add hl, bc                                    ; $7be7: $09
    ld bc, $0701                                  ; $7be8: $01 $01 $07
    add hl, bc                                    ; $7beb: $09
    ld bc, $0701                                  ; $7bec: $01 $01 $07
    ld bc, $0101                                  ; $7bef: $01 $01 $01
    rlca                                          ; $7bf2: $07
    jp nc, $d1d1                                  ; $7bf3: $d2 $d1 $d1

    pop de                                        ; $7bf6: $d1
    add b                                         ; $7bf7: $80
    add c                                         ; $7bf8: $81

jr_084_7bf9:
    add c                                         ; $7bf9: $81
    add c                                         ; $7bfa: $81
    add d                                         ; $7bfb: $82
    xor $ef                                       ; $7bfc: $ee $ef
    ldh a, [$88]                                  ; $7bfe: $f0 $88
    pop af                                        ; $7c00: $f1
    ld a, [c]                                     ; $7c01: $f2
    di                                            ; $7c02: $f3
    add b                                         ; $7c03: $80
    add b                                         ; $7c04: $80
    add b                                         ; $7c05: $80
    add b                                         ; $7c06: $80
    adc b                                         ; $7c07: $88
    adc b                                         ; $7c08: $88
    adc b                                         ; $7c09: $88
    adc b                                         ; $7c0a: $88
    inc c                                         ; $7c0b: $0c
    add hl, bc                                    ; $7c0c: $09
    add hl, bc                                    ; $7c0d: $09
    add hl, bc                                    ; $7c0e: $09
    inc c                                         ; $7c0f: $0c
    add hl, bc                                    ; $7c10: $09
    add hl, bc                                    ; $7c11: $09
    add hl, bc                                    ; $7c12: $09
    pop de                                        ; $7c13: $d1
    pop de                                        ; $7c14: $d1
    pop de                                        ; $7c15: $d1
    pop de                                        ; $7c16: $d1
    add c                                         ; $7c17: $81
    add e                                         ; $7c18: $83
    pop de                                        ; $7c19: $d1
    pop de                                        ; $7c1a: $d1
    db $f4                                        ; $7c1b: $f4
    jp nc, $d1d1                                  ; $7c1c: $d2 $d1 $d1

jr_084_7c1f:
    push af                                       ; $7c1f: $f5
    jp nc, $d1d1                                  ; $7c20: $d2 $d1 $d1

    add b                                         ; $7c23: $80
    add b                                         ; $7c24: $80
    add b                                         ; $7c25: $80
    add b                                         ; $7c26: $80
    adc b                                         ; $7c27: $88
    adc b                                         ; $7c28: $88
    add b                                         ; $7c29: $80
    add b                                         ; $7c2a: $80
    add hl, bc                                    ; $7c2b: $09
    add b                                         ; $7c2c: $80
    add b                                         ; $7c2d: $80
    add b                                         ; $7c2e: $80
    add hl, bc                                    ; $7c2f: $09
    add b                                         ; $7c30: $80
    add b                                         ; $7c31: $80
    add b                                         ; $7c32: $80
    ld a, a                                       ; $7c33: $7f
    ld b, $0c                                     ; $7c34: $06 $0c
    dec c                                         ; $7c36: $0d
    ld d, d                                       ; $7c37: $52
    rlca                                          ; $7c38: $07
    db $10                                        ; $7c39: $10
    ld de, $2e85                                  ; $7c3a: $11 $85 $2e
    ld sp, $1132                                  ; $7c3d: $31 $32 $11
    ld [de], a                                    ; $7c40: $12
    inc de                                        ; $7c41: $13
    ld e, $01                                     ; $7c42: $1e $01
    ld bc, $0701                                  ; $7c44: $01 $01 $07
    ld bc, $0101                                  ; $7c47: $01 $01 $01
    rlca                                          ; $7c4a: $07
    add hl, bc                                    ; $7c4b: $09
    ld bc, $0701                                  ; $7c4c: $01 $01 $07
    rlca                                          ; $7c4f: $07
    ld bc, $0701                                  ; $7c50: $01 $01 $07
    adc c                                         ; $7c53: $89
    or $f7                                        ; $7c54: $f6 $f7
    ld hl, sp-$76                                 ; $7c56: $f8 $8a
    ld sp, hl                                     ; $7c58: $f9
    ld a, [$8bfb]                                 ; $7c59: $fa $fb $8b
    db $fc                                        ; $7c5c: $fc
    db $fd                                        ; $7c5d: $fd
    cp $35                                        ; $7c5e: $fe $35
    rst $38                                       ; $7c60: $ff
    nop                                           ; $7c61: $00
    ld bc, $0d0c                                  ; $7c62: $01 $0c $0d
    dec c                                         ; $7c65: $0d
    dec c                                         ; $7c66: $0d
    inc c                                         ; $7c67: $0c
    dec c                                         ; $7c68: $0d
    dec c                                         ; $7c69: $0d
    dec c                                         ; $7c6a: $0d
    add hl, bc                                    ; $7c6b: $09
    dec c                                         ; $7c6c: $0d
    dec c                                         ; $7c6d: $0d
    dec c                                         ; $7c6e: $0d
    rlca                                          ; $7c6f: $07
    dec c                                         ; $7c70: $0d
    dec c                                         ; $7c71: $0d
    dec c                                         ; $7c72: $0d
    ld [bc], a                                    ; $7c73: $02
    jp nc, $d1d1                                  ; $7c74: $d2 $d1 $d1

    inc bc                                        ; $7c77: $03
    jp nc, $d1d1                                  ; $7c78: $d2 $d1 $d1

    inc b                                         ; $7c7b: $04
    jp nc, $d1d1                                  ; $7c7c: $d2 $d1 $d1

    dec b                                         ; $7c7f: $05
    jp nc, $d1d1                                  ; $7c80: $d2 $d1 $d1

    dec c                                         ; $7c83: $0d
    add b                                         ; $7c84: $80
    add b                                         ; $7c85: $80
    add b                                         ; $7c86: $80
    dec c                                         ; $7c87: $0d
    add b                                         ; $7c88: $80
    add b                                         ; $7c89: $80
    add b                                         ; $7c8a: $80
    dec c                                         ; $7c8b: $0d
    add b                                         ; $7c8c: $80
    add b                                         ; $7c8d: $80
    add b                                         ; $7c8e: $80
    dec c                                         ; $7c8f: $0d
    add b                                         ; $7c90: $80
    add b                                         ; $7c91: $80
    add b                                         ; $7c92: $80
    add [hl]                                      ; $7c93: $86
    cpl                                           ; $7c94: $2f
    scf                                           ; $7c95: $37
    jr c, jr_084_7c1f                             ; $7c96: $38 $87

    jr nc, @+$1d                                  ; $7c98: $30 $1b

    inc e                                         ; $7c9a: $1c
    ld a, [hl]                                    ; $7c9b: $7e
    dec b                                         ; $7c9c: $05
    ld [$7f09], sp                                ; $7c9d: $08 $09 $7f
    ld b, $0c                                     ; $7ca0: $06 $0c
    dec c                                         ; $7ca2: $0d
    rrca                                          ; $7ca3: $0f
    ld bc, $0101                                  ; $7ca4: $01 $01 $01
    rrca                                          ; $7ca7: $0f
    ld bc, $0101                                  ; $7ca8: $01 $01 $01
    ld bc, $0101                                  ; $7cab: $01 $01 $01
    ld bc, $0101                                  ; $7cae: $01 $01 $01
    ld bc, $3901                                  ; $7cb1: $01 $01 $39
    ld b, $07                                     ; $7cb4: $06 $07
    ld [$971d], sp                                ; $7cb6: $08 $1d $97
    sbc h                                         ; $7cb9: $9c
    sbc l                                         ; $7cba: $9d
    ld a, [bc]                                    ; $7cbb: $0a
    dec bc                                        ; $7cbc: $0b
    adc a                                         ; $7cbd: $8f
    sub b                                         ; $7cbe: $90
    ld c, $09                                     ; $7cbf: $0e $09
    rst $28                                       ; $7cc1: $ef
    ldh a, [rTAC]                                 ; $7cc2: $f0 $07
    dec c                                         ; $7cc4: $0d
    dec c                                         ; $7cc5: $0d
    dec c                                         ; $7cc6: $0d
    rlca                                          ; $7cc7: $07
    rrca                                          ; $7cc8: $0f
    rrca                                          ; $7cc9: $0f
    rrca                                          ; $7cca: $0f
    ld bc, $0901                                  ; $7ccb: $01 $01 $09
    add hl, bc                                    ; $7cce: $09
    ld bc, $8989                                  ; $7ccf: $01 $89 $89
    adc c                                         ; $7cd2: $89
    ld a, [bc]                                    ; $7cd3: $0a
    jp nc, $d1d1                                  ; $7cd4: $d2 $d1 $d1

    sbc [hl]                                      ; $7cd7: $9e
    jp nc, $d1d1                                  ; $7cd8: $d2 $d1 $d1

    sub d                                         ; $7cdb: $92
    jp nc, $d1d1                                  ; $7cdc: $d2 $d1 $d1

    db $f4                                        ; $7cdf: $f4
    jp nc, $d1d1                                  ; $7ce0: $d2 $d1 $d1

    dec c                                         ; $7ce3: $0d
    add b                                         ; $7ce4: $80
    add b                                         ; $7ce5: $80
    add b                                         ; $7ce6: $80
    rrca                                          ; $7ce7: $0f
    add b                                         ; $7ce8: $80
    add b                                         ; $7ce9: $80
    add b                                         ; $7cea: $80
    rrca                                          ; $7ceb: $0f
    add b                                         ; $7cec: $80
    add b                                         ; $7ced: $80
    add b                                         ; $7cee: $80
    adc c                                         ; $7cef: $89
    add b                                         ; $7cf0: $80
    add b                                         ; $7cf1: $80
    add b                                         ; $7cf2: $80
    dec bc                                        ; $7cf3: $0b
    inc c                                         ; $7cf4: $0c
    dec c                                         ; $7cf5: $0d
    ld de, $0f0e                                  ; $7cf6: $11 $0e $0f
    db $10                                        ; $7cf9: $10
    ld [hl-], a                                   ; $7cfa: $32
    ld de, $1312                                  ; $7cfb: $11 $12 $13
    ld e, $14                                     ; $7cfe: $1e $14
    dec d                                         ; $7d00: $15
    ld d, $38                                     ; $7d01: $16 $38
    ld a, [bc]                                    ; $7d03: $0a
    ld a, [bc]                                    ; $7d04: $0a
    ld a, [bc]                                    ; $7d05: $0a
    ld bc, $0a0a                                  ; $7d06: $01 $0a $0a
    ld a, [bc]                                    ; $7d09: $0a
    ld bc, $0a0a                                  ; $7d0a: $01 $0a $0a
    ld a, [bc]                                    ; $7d0d: $0a
    ld bc, $0a0a                                  ; $7d0e: $01 $0a $0a
    ld a, [bc]                                    ; $7d11: $0a
    ld bc, $1712                                  ; $7d12: $01 $12 $17
    ld a, [c]                                     ; $7d15: $f2
    di                                            ; $7d16: $f3
    inc sp                                        ; $7d17: $33
    add hl, bc                                    ; $7d18: $09
    jr jr_084_7d34                                ; $7d19: $18 $19

    dec [hl]                                      ; $7d1b: $35
    rla                                           ; $7d1c: $17
    ld a, [de]                                    ; $7d1d: $1a
    dec de                                        ; $7d1e: $1b
    add hl, sp                                    ; $7d1f: $39
    inc e                                         ; $7d20: $1c
    dec e                                         ; $7d21: $1d
    ld e, $07                                     ; $7d22: $1e $07
    adc c                                         ; $7d24: $89
    adc c                                         ; $7d25: $89
    adc c                                         ; $7d26: $89
    rlca                                          ; $7d27: $07
    add hl, bc                                    ; $7d28: $09
    add hl, bc                                    ; $7d29: $09
    add hl, bc                                    ; $7d2a: $09
    rlca                                          ; $7d2b: $07
    add hl, bc                                    ; $7d2c: $09
    add hl, bc                                    ; $7d2d: $09
    add hl, bc                                    ; $7d2e: $09
    rlca                                          ; $7d2f: $07
    rrca                                          ; $7d30: $0f
    rrca                                          ; $7d31: $0f
    rrca                                          ; $7d32: $0f
    push af                                       ; $7d33: $f5

jr_084_7d34:
    jp nc, $d1d1                                  ; $7d34: $d2 $d1 $d1

    db $f4                                        ; $7d37: $f4
    jp nc, $d1d1                                  ; $7d38: $d2 $d1 $d1

    push af                                       ; $7d3b: $f5
    jp nc, $d1d1                                  ; $7d3c: $d2 $d1 $d1

    rra                                           ; $7d3f: $1f
    jp nc, $d1d1                                  ; $7d40: $d2 $d1 $d1

    adc c                                         ; $7d43: $89
    add b                                         ; $7d44: $80
    add b                                         ; $7d45: $80
    add b                                         ; $7d46: $80
    add hl, bc                                    ; $7d47: $09
    add b                                         ; $7d48: $80
    add b                                         ; $7d49: $80
    add b                                         ; $7d4a: $80
    add hl, bc                                    ; $7d4b: $09
    add b                                         ; $7d4c: $80
    add b                                         ; $7d4d: $80
    add b                                         ; $7d4e: $80
    rrca                                          ; $7d4f: $0f
    add b                                         ; $7d50: $80
    add b                                         ; $7d51: $80
    add b                                         ; $7d52: $80
    pop de                                        ; $7d53: $d1
    pop de                                        ; $7d54: $d1
    jp nc, $d120                                  ; $7d55: $d2 $20 $d1

    pop de                                        ; $7d58: $d1
    jp nc, $d1d1                                  ; $7d59: $d2 $d1 $d1

    pop de                                        ; $7d5c: $d1
    add b                                         ; $7d5d: $80
    add c                                         ; $7d5e: $81
    pop de                                        ; $7d5f: $d1
    pop de                                        ; $7d60: $d1
    pop de                                        ; $7d61: $d1
    pop de                                        ; $7d62: $d1
    add b                                         ; $7d63: $80
    add b                                         ; $7d64: $80
    add b                                         ; $7d65: $80
    adc b                                         ; $7d66: $88
    add b                                         ; $7d67: $80
    add b                                         ; $7d68: $80
    add b                                         ; $7d69: $80
    add e                                         ; $7d6a: $83
    add b                                         ; $7d6b: $80
    add b                                         ; $7d6c: $80
    adc b                                         ; $7d6d: $88
    adc b                                         ; $7d6e: $88
    add b                                         ; $7d6f: $80
    add b                                         ; $7d70: $80
    add b                                         ; $7d71: $80
    add b                                         ; $7d72: $80
    ld hl, $2322                                  ; $7d73: $21 $22 $23
    inc h                                         ; $7d76: $24
    dec h                                         ; $7d77: $25
    ld h, $27                                     ; $7d78: $26 $27
    jr z, @-$7d                                   ; $7d7a: $28 $81

    add c                                         ; $7d7c: $81
    add c                                         ; $7d7d: $81
    add c                                         ; $7d7e: $81
    pop de                                        ; $7d7f: $d1
    pop de                                        ; $7d80: $d1
    pop de                                        ; $7d81: $d1
    pop de                                        ; $7d82: $d1
    adc e                                         ; $7d83: $8b
    adc e                                         ; $7d84: $8b
    adc e                                         ; $7d85: $8b
    adc e                                         ; $7d86: $8b
    adc e                                         ; $7d87: $8b
    adc e                                         ; $7d88: $8b
    adc e                                         ; $7d89: $8b
    adc e                                         ; $7d8a: $8b
    adc b                                         ; $7d8b: $88
    adc b                                         ; $7d8c: $88
    adc b                                         ; $7d8d: $88
    adc b                                         ; $7d8e: $88
    add b                                         ; $7d8f: $80
    add b                                         ; $7d90: $80
    add b                                         ; $7d91: $80
    add b                                         ; $7d92: $80
    add hl, hl                                    ; $7d93: $29
    sbc l                                         ; $7d94: $9d
    ld a, [hl+]                                   ; $7d95: $2a
    dec hl                                        ; $7d96: $2b
    inc l                                         ; $7d97: $2c
    sub b                                         ; $7d98: $90
    dec l                                         ; $7d99: $2d
    ld l, $81                                     ; $7d9a: $2e $81
    add c                                         ; $7d9c: $81
    add c                                         ; $7d9d: $81
    add c                                         ; $7d9e: $81
    pop de                                        ; $7d9f: $d1
    pop de                                        ; $7da0: $d1
    pop de                                        ; $7da1: $d1
    pop de                                        ; $7da2: $d1
    adc e                                         ; $7da3: $8b
    rrca                                          ; $7da4: $0f
    ld a, [bc]                                    ; $7da5: $0a
    ld a, [bc]                                    ; $7da6: $0a
    adc e                                         ; $7da7: $8b
    rrca                                          ; $7da8: $0f
    ld a, [bc]                                    ; $7da9: $0a
    ld a, [bc]                                    ; $7daa: $0a
    adc b                                         ; $7dab: $88
    adc b                                         ; $7dac: $88
    adc b                                         ; $7dad: $88
    adc b                                         ; $7dae: $88
    add b                                         ; $7daf: $80
    add b                                         ; $7db0: $80
    add b                                         ; $7db1: $80
    add b                                         ; $7db2: $80
    cpl                                           ; $7db3: $2f
    jr nc, @+$33                                  ; $7db4: $30 $31

    ld [hl-], a                                   ; $7db6: $32
    inc sp                                        ; $7db7: $33
    inc [hl]                                      ; $7db8: $34
    dec [hl]                                      ; $7db9: $35
    ld [hl], $81                                  ; $7dba: $36 $81
    add c                                         ; $7dbc: $81
    add c                                         ; $7dbd: $81
    add c                                         ; $7dbe: $81
    pop de                                        ; $7dbf: $d1
    pop de                                        ; $7dc0: $d1
    pop de                                        ; $7dc1: $d1
    pop de                                        ; $7dc2: $d1
    ld a, [bc]                                    ; $7dc3: $0a
    ld a, [bc]                                    ; $7dc4: $0a
    ld a, [bc]                                    ; $7dc5: $0a
    ld a, [bc]                                    ; $7dc6: $0a
    ld a, [bc]                                    ; $7dc7: $0a
    ld a, [bc]                                    ; $7dc8: $0a
    ld a, [bc]                                    ; $7dc9: $0a
    ld a, [bc]                                    ; $7dca: $0a
    adc b                                         ; $7dcb: $88
    adc b                                         ; $7dcc: $88
    adc b                                         ; $7dcd: $88
    adc b                                         ; $7dce: $88
    add b                                         ; $7dcf: $80
    add b                                         ; $7dd0: $80
    add b                                         ; $7dd1: $80
    add b                                         ; $7dd2: $80
    scf                                           ; $7dd3: $37
    jr c, jr_084_7e0f                             ; $7dd4: $38 $39

    inc e                                         ; $7dd6: $1c
    ld a, [hl-]                                   ; $7dd7: $3a
    dec sp                                        ; $7dd8: $3b
    inc a                                         ; $7dd9: $3c
    ld [$8181], sp                                ; $7dda: $08 $81 $81
    add c                                         ; $7ddd: $81
    add c                                         ; $7dde: $81
    pop de                                        ; $7ddf: $d1
    pop de                                        ; $7de0: $d1
    pop de                                        ; $7de1: $d1
    pop de                                        ; $7de2: $d1
    ld a, [bc]                                    ; $7de3: $0a
    ld a, [bc]                                    ; $7de4: $0a
    ld a, [bc]                                    ; $7de5: $0a
    ld bc, $0a0a                                  ; $7de6: $01 $0a $0a
    ld a, [bc]                                    ; $7de9: $0a
    ld bc, $8888                                  ; $7dea: $01 $88 $88
    adc b                                         ; $7ded: $88
    adc b                                         ; $7dee: $88
    add b                                         ; $7def: $80
    add b                                         ; $7df0: $80
    add b                                         ; $7df1: $80
    add b                                         ; $7df2: $80
    dec e                                         ; $7df3: $1d
    dec a                                         ; $7df4: $3d
    sbc h                                         ; $7df5: $9c
    ld a, $09                                     ; $7df6: $3e $09
    ld a, [bc]                                    ; $7df8: $0a
    dec bc                                        ; $7df9: $0b
    ccf                                           ; $7dfa: $3f
    add c                                         ; $7dfb: $81
    add c                                         ; $7dfc: $81
    add c                                         ; $7dfd: $81
    add c                                         ; $7dfe: $81
    pop de                                        ; $7dff: $d1
    pop de                                        ; $7e00: $d1
    pop de                                        ; $7e01: $d1
    pop de                                        ; $7e02: $d1
    rlca                                          ; $7e03: $07
    rrca                                          ; $7e04: $0f
    rrca                                          ; $7e05: $0f
    ld [$0707], sp                                ; $7e06: $08 $07 $07
    rlca                                          ; $7e09: $07
    ld [$8888], sp                                ; $7e0a: $08 $88 $88
    adc b                                         ; $7e0d: $88
    adc b                                         ; $7e0e: $88

jr_084_7e0f:
    add b                                         ; $7e0f: $80
    add b                                         ; $7e10: $80
    add b                                         ; $7e11: $80
    add b                                         ; $7e12: $80
    ld b, b                                       ; $7e13: $40
    jp nc, $d1d1                                  ; $7e14: $d2 $d1 $d1

    ld b, c                                       ; $7e17: $41
    jp nc, $d1d1                                  ; $7e18: $d2 $d1 $d1

    add c                                         ; $7e1b: $81
    sub h                                         ; $7e1c: $94
    pop de                                        ; $7e1d: $d1
    pop de                                        ; $7e1e: $d1
    pop de                                        ; $7e1f: $d1
    pop de                                        ; $7e20: $d1
    pop de                                        ; $7e21: $d1
    pop de                                        ; $7e22: $d1
    ld [$8080], sp                                ; $7e23: $08 $80 $80
    add b                                         ; $7e26: $80
    ld [$8080], sp                                ; $7e27: $08 $80 $80
    add b                                         ; $7e2a: $80
    adc b                                         ; $7e2b: $88
    adc b                                         ; $7e2c: $88
    add b                                         ; $7e2d: $80
    add b                                         ; $7e2e: $80
    add b                                         ; $7e2f: $80
    add b                                         ; $7e30: $80
    add b                                         ; $7e31: $80
    add b                                         ; $7e32: $80
    ld a, [hl-]                                   ; $7e33: $3a
    ld bc, $0000                                  ; $7e34: $01 $00 $00
    nop                                           ; $7e37: $00
    ld bc, $0200                                  ; $7e38: $01 $00 $02
    nop                                           ; $7e3b: $00
    inc bc                                        ; $7e3c: $03
    nop                                           ; $7e3d: $00
    ld b, b                                       ; $7e3e: $40
    db $10                                        ; $7e3f: $10
    ld [bc], a                                    ; $7e40: $02
    nop                                           ; $7e41: $00
    ld de, $1200                                  ; $7e42: $11 $00 $12
    nop                                           ; $7e45: $00
    add hl, de                                    ; $7e46: $19
    nop                                           ; $7e47: $00
    nop                                           ; $7e48: $00
    ld a, [de]                                    ; $7e49: $1a
    nop                                           ; $7e4a: $00
    dec de                                        ; $7e4b: $1b
    nop                                           ; $7e4c: $00
    inc e                                         ; $7e4d: $1c
    nop                                           ; $7e4e: $00
    add hl, hl                                    ; $7e4f: $29
    nop                                           ; $7e50: $00
    ld bc, $002a                                  ; $7e51: $01 $2a $00
    dec hl                                        ; $7e54: $2b
    nop                                           ; $7e55: $00
    inc l                                         ; $7e56: $2c
    nop                                           ; $7e57: $00
    add hl, sp                                    ; $7e58: $39
    ld a, [de]                                    ; $7e59: $1a
    db $10                                        ; $7e5a: $10
    ld bc, $0004                                  ; $7e5b: $01 $04 $00
    dec b                                         ; $7e5e: $05
    nop                                           ; $7e5f: $00
    ld b, $00                                     ; $7e60: $06 $00
    rlca                                          ; $7e62: $07
    ld h, $10                                     ; $7e63: $26 $10
    nop                                           ; $7e65: $00
    inc de                                        ; $7e66: $13
    nop                                           ; $7e67: $00
    inc d                                         ; $7e68: $14
    nop                                           ; $7e69: $00
    dec e                                         ; $7e6a: $1d
    nop                                           ; $7e6b: $00
    ld e, $00                                     ; $7e6c: $1e $00
    nop                                           ; $7e6e: $00
    rra                                           ; $7e6f: $1f
    nop                                           ; $7e70: $00
    jr nz, jr_084_7e73                            ; $7e71: $20 $00

jr_084_7e73:
    dec l                                         ; $7e73: $2d
    nop                                           ; $7e74: $00
    ld l, $00                                     ; $7e75: $2e $00
    inc b                                         ; $7e77: $04
    cpl                                           ; $7e78: $2f
    nop                                           ; $7e79: $00
    jr nc, jr_084_7e7c                            ; $7e7a: $30 $00

jr_084_7e7c:
    ld a, [hl-]                                   ; $7e7c: $3a
    ld b, b                                       ; $7e7d: $40
    db $10                                        ; $7e7e: $10
    ld [$0400], sp                                ; $7e7f: $08 $00 $04
    add hl, bc                                    ; $7e82: $09
    nop                                           ; $7e83: $00
    ld a, [bc]                                    ; $7e84: $0a
    nop                                           ; $7e85: $00
    dec bc                                        ; $7e86: $0b
    ld c, h                                       ; $7e87: $4c
    db $10                                        ; $7e88: $10
    dec d                                         ; $7e89: $15
    nop                                           ; $7e8a: $00
    nop                                           ; $7e8b: $00
    ld d, $00                                     ; $7e8c: $16 $00
    ld hl, $2200                                  ; $7e8e: $21 $00 $22
    nop                                           ; $7e91: $00
    inc hl                                        ; $7e92: $23
    nop                                           ; $7e93: $00
    nop                                           ; $7e94: $00
    inc h                                         ; $7e95: $24
    nop                                           ; $7e96: $00
    ld sp, $3200                                  ; $7e97: $31 $00 $32
    nop                                           ; $7e9a: $00
    inc sp                                        ; $7e9b: $33
    nop                                           ; $7e9c: $00
    db $10                                        ; $7e9d: $10
    inc [hl]                                      ; $7e9e: $34
    nop                                           ; $7e9f: $00
    dec sp                                        ; $7ea0: $3b
    ld h, [hl]                                    ; $7ea1: $66
    db $10                                        ; $7ea2: $10
    inc c                                         ; $7ea3: $0c
    nop                                           ; $7ea4: $00
    dec c                                         ; $7ea5: $0d
    nop                                           ; $7ea6: $00
    db $10                                        ; $7ea7: $10
    ld c, $00                                     ; $7ea8: $0e $00
    rrca                                          ; $7eaa: $0f
    ld [hl], d                                    ; $7eab: $72
    db $10                                        ; $7eac: $10
    rla                                           ; $7ead: $17
    nop                                           ; $7eae: $00
    jr jr_084_7eb1                                ; $7eaf: $18 $00

jr_084_7eb1:
    nop                                           ; $7eb1: $00
    dec h                                         ; $7eb2: $25
    nop                                           ; $7eb3: $00
    ld h, $00                                     ; $7eb4: $26 $00
    daa                                           ; $7eb6: $27
    nop                                           ; $7eb7: $00
    jr z, jr_084_7eba                             ; $7eb8: $28 $00

jr_084_7eba:
    nop                                           ; $7eba: $00
    dec [hl]                                      ; $7ebb: $35
    nop                                           ; $7ebc: $00
    ld [hl], $00                                  ; $7ebd: $36 $00
    scf                                           ; $7ebf: $37
    nop                                           ; $7ec0: $00
    jr c, jr_084_7ec3                             ; $7ec1: $38 $00

jr_084_7ec3:
    db $10                                        ; $7ec3: $10
    inc a                                         ; $7ec4: $3c
    nop                                           ; $7ec5: $00
    dec a                                         ; $7ec6: $3d
    adc [hl]                                      ; $7ec7: $8e
    nop                                           ; $7ec8: $00
    ld a, $00                                     ; $7ec9: $3e $00
    ccf                                           ; $7ecb: $3f
    nop                                           ; $7ecc: $00
    db $10                                        ; $7ecd: $10
    ld b, b                                       ; $7ece: $40
    nop                                           ; $7ecf: $00
    ld b, c                                       ; $7ed0: $41
    sbc b                                         ; $7ed1: $98
    nop                                           ; $7ed2: $00
    ld c, l                                       ; $7ed3: $4d
    nop                                           ; $7ed4: $00
    ld c, [hl]                                    ; $7ed5: $4e
    nop                                           ; $7ed6: $00
    ld b, b                                       ; $7ed7: $40
    ld c, a                                       ; $7ed8: $4f
    and b                                         ; $7ed9: $a0
    nop                                           ; $7eda: $00
    ld e, h                                       ; $7edb: $5c
    nop                                           ; $7edc: $00
    ld e, l                                       ; $7edd: $5d
    nop                                           ; $7ede: $00
    ld e, [hl]                                    ; $7edf: $5e
    nop                                           ; $7ee0: $00
    nop                                           ; $7ee1: $00
    ld l, e                                       ; $7ee2: $6b
    nop                                           ; $7ee3: $00
    ld l, h                                       ; $7ee4: $6c
    nop                                           ; $7ee5: $00
    ld l, l                                       ; $7ee6: $6d
    nop                                           ; $7ee7: $00
    ld l, [hl]                                    ; $7ee8: $6e
    nop                                           ; $7ee9: $00
    db $10                                        ; $7eea: $10
    ld a, e                                       ; $7eeb: $7b
    nop                                           ; $7eec: $00
    ld a, h                                       ; $7eed: $7c
    or h                                          ; $7eee: $b4
    nop                                           ; $7eef: $00
    ld b, d                                       ; $7ef0: $42
    nop                                           ; $7ef1: $00
    ld b, e                                       ; $7ef2: $43
    nop                                           ; $7ef3: $00
    nop                                           ; $7ef4: $00
    ld b, h                                       ; $7ef5: $44
    nop                                           ; $7ef6: $00
    ld b, l                                       ; $7ef7: $45
    nop                                           ; $7ef8: $00
    ld d, b                                       ; $7ef9: $50

jr_084_7efa:
    nop                                           ; $7efa: $00
    ld d, c                                       ; $7efb: $51
    nop                                           ; $7efc: $00
    nop                                           ; $7efd: $00
    ld d, d                                       ; $7efe: $52
    nop                                           ; $7eff: $00
    ld d, e                                       ; $7f00: $53
    nop                                           ; $7f01: $00
    ld e, a                                       ; $7f02: $5f
    nop                                           ; $7f03: $00
    ld h, b                                       ; $7f04: $60
    nop                                           ; $7f05: $00
    nop                                           ; $7f06: $00
    ld h, c                                       ; $7f07: $61
    nop                                           ; $7f08: $00
    ld h, d                                       ; $7f09: $62
    nop                                           ; $7f0a: $00
    ld l, a                                       ; $7f0b: $6f
    nop                                           ; $7f0c: $00
    ld [hl], b                                    ; $7f0d: $70
    nop                                           ; $7f0e: $00
    ld bc, $0071                                  ; $7f0f: $01 $71 $00
    ld [hl], d                                    ; $7f12: $72
    nop                                           ; $7f13: $00
    ld a, l                                       ; $7f14: $7d
    nop                                           ; $7f15: $00
    ld a, [hl]                                    ; $7f16: $7e
    jp c, RST_00                                  ; $7f17: $da $00 $00

    nop                                           ; $7f1a: $00
    nop                                           ; $7f1b: $00
    ld b, [hl]                                    ; $7f1c: $46
    nop                                           ; $7f1d: $00
    ld b, a                                       ; $7f1e: $47
    nop                                           ; $7f1f: $00
    ld c, b                                       ; $7f20: $48
    nop                                           ; $7f21: $00
    nop                                           ; $7f22: $00
    ld d, h                                       ; $7f23: $54
    nop                                           ; $7f24: $00
    ld d, l                                       ; $7f25: $55
    nop                                           ; $7f26: $00
    ld d, [hl]                                    ; $7f27: $56
    nop                                           ; $7f28: $00
    ld d, a                                       ; $7f29: $57
    nop                                           ; $7f2a: $00
    nop                                           ; $7f2b: $00
    ld h, e                                       ; $7f2c: $63
    nop                                           ; $7f2d: $00
    ld h, h                                       ; $7f2e: $64
    nop                                           ; $7f2f: $00
    ld h, l                                       ; $7f30: $65
    nop                                           ; $7f31: $00
    ld h, [hl]                                    ; $7f32: $66
    nop                                           ; $7f33: $00
    nop                                           ; $7f34: $00
    ld [hl], e                                    ; $7f35: $73
    nop                                           ; $7f36: $00
    ld [hl], h                                    ; $7f37: $74
    nop                                           ; $7f38: $00
    ld [hl], l                                    ; $7f39: $75
    nop                                           ; $7f3a: $00
    halt                                          ; $7f3b: $76
    nop                                           ; $7f3c: $00
    db $10                                        ; $7f3d: $10
    ld a, a                                       ; $7f3e: $7f
    nop                                           ; $7f3f: $00
    add b                                         ; $7f40: $80
    nop                                           ; $7f41: $00
    ld bc, $0049                                  ; $7f42: $01 $49 $00
    ld c, d                                       ; $7f45: $4a
    nop                                           ; $7f46: $00
    nop                                           ; $7f47: $00
    ld c, e                                       ; $7f48: $4b
    nop                                           ; $7f49: $00
    ld c, h                                       ; $7f4a: $4c
    nop                                           ; $7f4b: $00
    ld e, b                                       ; $7f4c: $58
    nop                                           ; $7f4d: $00
    ld e, c                                       ; $7f4e: $59
    nop                                           ; $7f4f: $00
    nop                                           ; $7f50: $00
    ld e, d                                       ; $7f51: $5a
    nop                                           ; $7f52: $00
    ld e, e                                       ; $7f53: $5b
    nop                                           ; $7f54: $00
    ld h, a                                       ; $7f55: $67
    nop                                           ; $7f56: $00
    ld l, b                                       ; $7f57: $68
    nop                                           ; $7f58: $00
    nop                                           ; $7f59: $00
    ld l, c                                       ; $7f5a: $69
    nop                                           ; $7f5b: $00
    ld l, d                                       ; $7f5c: $6a
    nop                                           ; $7f5d: $00
    ld [hl], a                                    ; $7f5e: $77
    nop                                           ; $7f5f: $00
    ld a, b                                       ; $7f60: $78
    nop                                           ; $7f61: $00
    db $10                                        ; $7f62: $10
    ld a, c                                       ; $7f63: $79
    nop                                           ; $7f64: $00
    ld a, d                                       ; $7f65: $7a
    ld [hl+], a                                   ; $7f66: $22
    ld de, $0010                                  ; $7f67: $11 $10 $00
    add c                                         ; $7f6a: $81
    nop                                           ; $7f6b: $00
    db $10                                        ; $7f6c: $10
    add d                                         ; $7f6d: $82
    nop                                           ; $7f6e: $00
    add e                                         ; $7f6f: $83
    inc c                                         ; $7f70: $0c
    jr nz, jr_084_7efa                            ; $7f71: $20 $87

    nop                                           ; $7f73: $00
    adc b                                         ; $7f74: $88
    nop                                           ; $7f75: $00
    nop                                           ; $7f76: $00
    adc d                                         ; $7f77: $8a
    nop                                           ; $7f78: $00
    adc e                                         ; $7f79: $8b
    nop                                           ; $7f7a: $00
    adc h                                         ; $7f7b: $8c
    nop                                           ; $7f7c: $00
    adc l                                         ; $7f7d: $8d
    nop                                           ; $7f7e: $00
    ld bc, $0092                                  ; $7f7f: $01 $92 $00
    sub e                                         ; $7f82: $93
    nop                                           ; $7f83: $00
    sub h                                         ; $7f84: $94
    nop                                           ; $7f85: $00
    sub l                                         ; $7f86: $95
    ld h, $20                                     ; $7f87: $26 $20
    inc b                                         ; $7f89: $04
    add h                                         ; $7f8a: $84
    nop                                           ; $7f8b: $00
    add l                                         ; $7f8c: $85
    nop                                           ; $7f8d: $00
    add [hl]                                      ; $7f8e: $86
    ld [hl-], a                                   ; $7f8f: $32
    jr nz, jr_084_7fa2                            ; $7f90: $20 $10

    nop                                           ; $7f92: $00
    nop                                           ; $7f93: $00
    adc c                                         ; $7f94: $89
    nop                                           ; $7f95: $00
    adc [hl]                                      ; $7f96: $8e
    nop                                           ; $7f97: $00
    adc a                                         ; $7f98: $8f
    nop                                           ; $7f99: $00
    sub b                                         ; $7f9a: $90
    nop                                           ; $7f9b: $00
    nop                                           ; $7f9c: $00
    sub c                                         ; $7f9d: $91
    nop                                           ; $7f9e: $00
    sub [hl]                                      ; $7f9f: $96
    nop                                           ; $7fa0: $00
    sub a                                         ; $7fa1: $97

jr_084_7fa2:
    nop                                           ; $7fa2: $00
    sbc b                                         ; $7fa3: $98
    nop                                           ; $7fa4: $00
    ld b, b                                       ; $7fa5: $40
    sbc c                                         ; $7fa6: $99
    ld c, h                                       ; $7fa7: $4c
    jr nz, jr_084_7fed                            ; $7fa8: $20 $43

    nop                                           ; $7faa: $00
    nop                                           ; $7fab: $00
    nop                                           ; $7fac: $00
    nop                                           ; $7fad: $00
    ld bc, $0200                                  ; $7fae: $01 $00 $02
    nop                                           ; $7fb1: $00
    inc bc                                        ; $7fb2: $03
    nop                                           ; $7fb3: $00
    nop                                           ; $7fb4: $00
    stop                                          ; $7fb5: $10 $00
    ld de, $1200                                  ; $7fb7: $11 $00 $12
    nop                                           ; $7fba: $00
    inc de                                        ; $7fbb: $13
    nop                                           ; $7fbc: $00
    nop                                           ; $7fbd: $00
    jr nz, jr_084_7fc0                            ; $7fbe: $20 $00

jr_084_7fc0:
    inc b                                         ; $7fc0: $04
    nop                                           ; $7fc1: $00
    dec b                                         ; $7fc2: $05
    nop                                           ; $7fc3: $00
    ld b, $00                                     ; $7fc4: $06 $00
    nop                                           ; $7fc6: $00
    rlca                                          ; $7fc7: $07
    nop                                           ; $7fc8: $00
    inc d                                         ; $7fc9: $14
    nop                                           ; $7fca: $00
    dec d                                         ; $7fcb: $15
    nop                                           ; $7fcc: $00
    ld d, $00                                     ; $7fcd: $16 $00
    ld b, b                                       ; $7fcf: $40
    rla                                           ; $7fd0: $17
    ld [de], a                                    ; $7fd1: $12
    nop                                           ; $7fd2: $00
    ld [$0900], sp                                ; $7fd3: $08 $00 $09
    nop                                           ; $7fd6: $00
    ld a, [bc]                                    ; $7fd7: $0a
    nop                                           ; $7fd8: $00
    nop                                           ; $7fd9: $00
    dec bc                                        ; $7fda: $0b
    nop                                           ; $7fdb: $00
    jr jr_084_7fde                                ; $7fdc: $18 $00

jr_084_7fde:
    add hl, de                                    ; $7fde: $19
    nop                                           ; $7fdf: $00
    ld a, [de]                                    ; $7fe0: $1a
    nop                                           ; $7fe1: $00
    ld b, b                                       ; $7fe2: $40
    dec de                                        ; $7fe3: $1b
    inc h                                         ; $7fe4: $24
    nop                                           ; $7fe5: $00
    inc c                                         ; $7fe6: $0c
    nop                                           ; $7fe7: $00
    dec c                                         ; $7fe8: $0d
    nop                                           ; $7fe9: $00
    ld c, $00                                     ; $7fea: $0e $00
    nop                                           ; $7fec: $00

jr_084_7fed:
    rrca                                          ; $7fed: $0f
    nop                                           ; $7fee: $00
    inc e                                         ; $7fef: $1c
    nop                                           ; $7ff0: $00
    dec e                                         ; $7ff1: $1d
    nop                                           ; $7ff2: $00
    ld e, $00                                     ; $7ff3: $1e $00
    ld h, b                                       ; $7ff5: $60
    rra                                           ; $7ff6: $1f
    ld [hl], $00                                  ; $7ff7: $36 $00
    ld [bc], a                                    ; $7ff9: $02
    ld a, b                                       ; $7ffa: $78
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
