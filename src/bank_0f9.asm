; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0f9", ROMX[$4000], BANK[$f9]

    ld sp, hl                                     ; $4000: $f9
    dec de                                        ; $4001: $1b
    dec bc                                        ; $4002: $0b
    ei                                            ; $4003: $fb
    dec b                                         ; $4004: $05
    ld a, [$f106]                                 ; $4005: $fa $06 $f1
    ldh a, [$ee]                                  ; $4008: $f0 $ee
    ld hl, sp-$14                                 ; $400a: $f8 $ec
    nop                                           ; $400c: $00
    pop af                                        ; $400d: $f1
    ld [$09f9], sp                                ; $400e: $08 $f9 $09
    ld bc, $fef0                                  ; $4011: $01 $f0 $fe
    ld hl, sp-$04                                 ; $4014: $f8 $fc
    nop                                           ; $4016: $00
    ld bc, $0c07                                  ; $4017: $01 $07 $0c
    ld hl, sp+$0c                                 ; $401a: $f8 $0c
    rst $38                                       ; $401c: $ff
    pop bc                                        ; $401d: $c1
    ld [bc], a                                    ; $401e: $02
    nop                                           ; $401f: $00
    ld bc, $0400                                  ; $4020: $01 $00 $04
    nop                                           ; $4023: $00
    inc bc                                        ; $4024: $03
    nop                                           ; $4025: $00
    dec b                                         ; $4026: $05
    nop                                           ; $4027: $00
    inc de                                        ; $4028: $13
    nop                                           ; $4029: $00
    ld c, $01                                     ; $402a: $0e $01
    ld [hl+], a                                   ; $402c: $22
    ld bc, $019e                                  ; $402d: $01 $9e $01
    jr c, jr_0f9_4039                             ; $4030: $38 $07

    inc l                                         ; $4032: $2c
    inc bc                                        ; $4033: $03
    inc d                                         ; $4034: $14
    dec bc                                        ; $4035: $0b
    ld c, b                                       ; $4036: $48
    rlca                                          ; $4037: $07
    inc e                                         ; $4038: $1c

jr_0f9_4039:
    inc bc                                        ; $4039: $03
    ld c, l                                       ; $403a: $4d
    inc bc                                        ; $403b: $03
    jr z, jr_0f9_4045                             ; $403c: $28 $07

    inc h                                         ; $403e: $24
    nop                                           ; $403f: $00
    dec d                                         ; $4040: $15
    nop                                           ; $4041: $00
    ld sp, $af00                                  ; $4042: $31 $00 $af

jr_0f9_4045:
    db $10                                        ; $4045: $10
    ld a, [hl-]                                   ; $4046: $3a
    ld b, l                                       ; $4047: $45
    xor b                                         ; $4048: $a8
    rla                                           ; $4049: $17
    ldh [$1f], a                                  ; $404a: $e0 $1f
    ld bc, $147f                                  ; $404c: $01 $7f $14
    rst $38                                       ; $404f: $ff
    adc a                                         ; $4050: $8f
    ld a, c                                       ; $4051: $79
    ccf                                           ; $4052: $3f
    ldh a, [rKEY1]                                ; $4053: $f0 $4d
    ld a, [$e778]                                 ; $4055: $fa $78 $e7
    inc [hl]                                      ; $4058: $34
    set 6, c                                      ; $4059: $cb $f1
    rst $08                                       ; $405b: $cf
    ld h, l                                       ; $405c: $65
    sbc a                                         ; $405d: $9f
    add b                                         ; $405e: $80
    inc bc                                        ; $405f: $03
    nop                                           ; $4060: $00
    cp l                                          ; $4061: $bd
    sub d                                         ; $4062: $92
    nop                                           ; $4063: $00
    call nc, $c600                                ; $4064: $d4 $00 $c6
    nop                                           ; $4067: $00

jr_0f9_4068:
    ld a, d                                       ; $4068: $7a
    add h                                         ; $4069: $84
    ld l, $d1                                     ; $406a: $2e $d1
    ld a, [bc]                                    ; $406c: $0a
    db $f4                                        ; $406d: $f4
    add e                                         ; $406e: $83
    db $fc                                        ; $406f: $fc
    ld b, b                                       ; $4070: $40
    rst $38                                       ; $4071: $ff
    ld d, h                                       ; $4072: $54
    rst $38                                       ; $4073: $ff
    cp b                                          ; $4074: $b8
    ld c, a                                       ; $4075: $4f
    ld a, [hl]                                    ; $4076: $7e
    add a                                         ; $4077: $87
    ld e, c                                       ; $4078: $59
    xor a                                         ; $4079: $af
    rrca                                          ; $407a: $0f
    di                                            ; $407b: $f3
    sub [hl]                                      ; $407c: $96
    jp hl                                         ; $407d: $e9


    and b                                         ; $407e: $a0
    nop                                           ; $407f: $00
    ld b, b                                       ; $4080: $40
    nop                                           ; $4081: $00
    sub b                                         ; $4082: $90
    nop                                           ; $4083: $00
    ldh [rP1], a                                  ; $4084: $e0 $00
    ld d, b                                       ; $4086: $50
    nop                                           ; $4087: $00
    ld h, h                                       ; $4088: $64
    add b                                         ; $4089: $80
    cp b                                          ; $408a: $b8
    ld b, b                                       ; $408b: $40
    ld [hl+], a                                   ; $408c: $22
    ret nz                                        ; $408d: $c0

    inc a                                         ; $408e: $3c
    ret nz                                        ; $408f: $c0

    ld c, $f0                                     ; $4090: $0e $f0
    ld e, d                                       ; $4092: $5a
    ldh [$94], a                                  ; $4093: $e0 $94
    add sp, $09                                   ; $4095: $e8 $09
    ldh a, [$9c]                                  ; $4097: $f0 $9c
    ldh [$59], a                                  ; $4099: $e0 $59
    ldh [$8a], a                                  ; $409b: $e0 $8a
    ldh a, [rSB]                                  ; $409d: $f0 $01
    rrca                                          ; $409f: $0f
    nop                                           ; $40a0: $00
    db $f4                                        ; $40a1: $f4
    inc d                                         ; $40a2: $14
    ldh [$b2], a                                  ; $40a3: $e0 $b2
    ret nz                                        ; $40a5: $c0

    jr c, jr_0f9_4068                             ; $40a6: $38 $c0

    ld [de], a                                    ; $40a8: $12
    ldh [$28], a                                  ; $40a9: $e0 $28

jr_0f9_40ab:
    ret nc                                        ; $40ab: $d0

    inc [hl]                                      ; $40ac: $34
    ret nz                                        ; $40ad: $c0

    inc e                                         ; $40ae: $1c
    ldh [$79], a                                  ; $40af: $e0 $79

jr_0f9_40b1:
    add b                                         ; $40b1: $80
    jr z, jr_0f9_40bb                             ; $40b2: $28 $07

    ld c, l                                       ; $40b4: $4d
    inc bc                                        ; $40b5: $03
    inc e                                         ; $40b6: $1c
    inc bc                                        ; $40b7: $03
    ld c, b                                       ; $40b8: $48
    rlca                                          ; $40b9: $07
    inc d                                         ; $40ba: $14

jr_0f9_40bb:
    dec bc                                        ; $40bb: $0b
    inc l                                         ; $40bc: $2c
    inc bc                                        ; $40bd: $03
    jr c, jr_0f9_40c7                             ; $40be: $38 $07

    sbc [hl]                                      ; $40c0: $9e
    ld bc, $0122                                  ; $40c1: $01 $22 $01
    ld c, $01                                     ; $40c4: $0e $01
    inc de                                        ; $40c6: $13

jr_0f9_40c7:
    nop                                           ; $40c7: $00
    dec b                                         ; $40c8: $05
    nop                                           ; $40c9: $00
    inc bc                                        ; $40ca: $03
    nop                                           ; $40cb: $00
    inc b                                         ; $40cc: $04
    nop                                           ; $40cd: $00
    ld bc, $0200                                  ; $40ce: $01 $00 $02
    nop                                           ; $40d1: $00
    or d                                          ; $40d2: $b2
    rst $08                                       ; $40d3: $cf
    rst $00                                       ; $40d4: $c7
    ccf                                           ; $40d5: $3f
    push hl                                       ; $40d6: $e5
    sbc a                                         ; $40d7: $9f
    db $eb                                        ; $40d8: $eb
    sbc a                                         ; $40d9: $9f
    rst $20                                       ; $40da: $e7
    ld a, a                                       ; $40db: $7f
    or d                                          ; $40dc: $b2
    rst $08                                       ; $40dd: $cf
    ld h, l                                       ; $40de: $65
    sbc a                                         ; $40df: $9f
    pop af                                        ; $40e0: $f1
    rst $08                                       ; $40e1: $cf
    inc [hl]                                      ; $40e2: $34
    bit 7, b                                      ; $40e3: $cb $78
    rst $20                                       ; $40e5: $e7
    ld c, l                                       ; $40e6: $4d
    ld a, [$f03f]                                 ; $40e7: $fa $3f $f0
    adc [hl]                                      ; $40ea: $8e
    ld a, c                                       ; $40eb: $79
    dec d                                         ; $40ec: $15
    rst $38                                       ; $40ed: $ff
    dec b                                         ; $40ee: $05
    ld a, a                                       ; $40ef: $7f
    ldh [$1f], a                                  ; $40f0: $e0 $1f
    rst $00                                       ; $40f2: $c7
    ld sp, hl                                     ; $40f3: $f9
    db $d3                                        ; $40f4: $d3
    db $fc                                        ; $40f5: $fc
    and [hl]                                      ; $40f6: $a6
    ld sp, hl                                     ; $40f7: $f9
    pop af                                        ; $40f8: $f1
    cp $e3                                        ; $40f9: $fe $e3
    db $fc                                        ; $40fb: $fc
    jp $d1fc                                      ; $40fc: $c3 $fc $d1


Call_0f9_40ff:
    rst $38                                       ; $40ff: $ff
    and [hl]                                      ; $4100: $a6
    ld sp, hl                                     ; $4101: $f9
    db $d3                                        ; $4102: $d3
    db $fc                                        ; $4103: $fc
    ld b, a                                       ; $4104: $47
    ld sp, hl                                     ; $4105: $f9
    sub [hl]                                      ; $4106: $96
    jp hl                                         ; $4107: $e9


    rrca                                          ; $4108: $0f
    di                                            ; $4109: $f3
    ld e, c                                       ; $410a: $59
    xor a                                         ; $410b: $af
    ld a, [hl]                                    ; $410c: $7e
    add a                                         ; $410d: $87
    ld hl, sp+$4f                                 ; $410e: $f8 $4f
    call nc, Call_0f9_40ff                        ; $4110: $d4 $ff $40
    nop                                           ; $4113: $00
    ld b, b                                       ; $4114: $40
    nop                                           ; $4115: $00
    ld [bc], a                                    ; $4116: $02
    ld b, b                                       ; $4117: $40
    add c                                         ; $4118: $81
    nop                                           ; $4119: $00
    inc bc                                        ; $411a: $03
    ld b, b                                       ; $411b: $40
    sub l                                         ; $411c: $95
    nop                                           ; $411d: $00
    ld b, b                                       ; $411e: $40
    nop                                           ; $411f: $00
    ld b, b                                       ; $4120: $40
    nop                                           ; $4121: $00
    ld b, b                                       ; $4122: $40
    ld de, $5c60                                  ; $4123: $11 $60 $5c
    jr nz, jr_0f9_415a                            ; $4126: $20 $32

    ld b, b                                       ; $4128: $40
    jr z, jr_0f9_40ab                             ; $4129: $28 $80

    ldh a, [rP1]                                  ; $412b: $f0 $00
    ld c, b                                       ; $412d: $48
    nop                                           ; $412e: $00
    jr nz, jr_0f9_40b1                            ; $412f: $20 $80

    ld d, b                                       ; $4131: $50
    dec b                                         ; $4132: $05
    nop                                           ; $4133: $00
    adc e                                         ; $4134: $8b
    xor b                                         ; $4135: $a8
    rla                                           ; $4136: $17
    ld a, [hl-]                                   ; $4137: $3a
    ld b, l                                       ; $4138: $45
    xor a                                         ; $4139: $af
    db $10                                        ; $413a: $10
    jr nc, jr_0f9_413e                            ; $413b: $30 $01

    dec d                                         ; $413d: $15

jr_0f9_413e:
    nop                                           ; $413e: $00
    inc h                                         ; $413f: $24
    ld [de], a                                    ; $4140: $12
    nop                                           ; $4141: $00
    sub b                                         ; $4142: $90
    ld a, a                                       ; $4143: $7f
    ld hl, $057e                                  ; $4144: $21 $7e $05
    ld a, d                                       ; $4147: $7a
    rla                                           ; $4148: $17
    ld l, b                                       ; $4149: $68
    dec a                                         ; $414a: $3d
    ld b, d                                       ; $414b: $42

jr_0f9_414c:
    ld h, e                                       ; $414c: $63
    nop                                           ; $414d: $00
    ld a, [hl+]                                   ; $414e: $2a
    ld b, b                                       ; $414f: $40
    ld c, c                                       ; $4150: $49
    nop                                           ; $4151: $00
    ld b, b                                       ; $4152: $40
    rrca                                          ; $4153: $0f
    nop                                           ; $4154: $00
    rst $38                                       ; $4155: $ff
    ld hl, $fb0e                                  ; $4156: $21 $0e $fb
    dec b                                         ; $4159: $05

jr_0f9_415a:
    ld a, [$f106]                                 ; $415a: $fa $06 $f1
    db $ed                                        ; $415d: $ed
    db $eb                                        ; $415e: $eb
    push af                                       ; $415f: $f5
    add sp, -$03                                  ; $4160: $e8 $fd
    db $eb                                        ; $4162: $eb
    dec b                                         ; $4163: $05
    pop af                                        ; $4164: $f1
    inc c                                         ; $4165: $0c
    ld bc, $fbed                                  ; $4166: $01 $ed $fb
    push af                                       ; $4169: $f5
    ld hl, sp-$03                                 ; $416a: $f8 $fd
    ei                                            ; $416c: $fb
    dec b                                         ; $416d: $05
    ld bc, $080c                                  ; $416e: $01 $0c $08
    pop af                                        ; $4171: $f1
    ld [$08f9], sp                                ; $4172: $08 $f9 $08
    ld bc, $0808                                  ; $4175: $01 $08 $08
    pop bc                                        ; $4178: $c1
    ld [bc], a                                    ; $4179: $02
    nop                                           ; $417a: $00
    ld bc, $0600                                  ; $417b: $01 $00 $06
    nop                                           ; $417e: $00
    ld bc, $0c00                                  ; $417f: $01 $00 $0c
    nop                                           ; $4182: $00
    dec b                                         ; $4183: $05
    ld [bc], a                                    ; $4184: $02
    add d                                         ; $4185: $82
    nop                                           ; $4186: $00
    inc a                                         ; $4187: $3c
    ld bc, $0007                                  ; $4188: $01 $07 $00
    ld [hl], l                                    ; $418b: $75
    ld [bc], a                                    ; $418c: $02
    ld [$5e07], sp                                ; $418d: $08 $07 $5e
    ld bc, $0304                                  ; $4190: $01 $04 $03
    ld e, $01                                     ; $4193: $1e $01
    cp h                                          ; $4195: $bc
    inc bc                                        ; $4196: $03
    ld l, [hl]                                    ; $4197: $6e
    ld bc, $0004                                  ; $4198: $01 $04 $00
    dec b                                         ; $419b: $05
    nop                                           ; $419c: $00
    sbc h                                         ; $419d: $9c
    nop                                           ; $419e: $00
    ld d, e                                       ; $419f: $53
    inc b                                         ; $41a0: $04
    ld l, a                                       ; $41a1: $6f
    nop                                           ; $41a2: $00
    or [hl]                                       ; $41a3: $b6
    ld bc, $057a                                  ; $41a4: $01 $7a $05
    or b                                          ; $41a7: $b0
    rrca                                          ; $41a8: $0f
    and b                                         ; $41a9: $a0
    rra                                           ; $41aa: $1f
    push bc                                       ; $41ab: $c5
    ccf                                           ; $41ac: $3f
    add l                                         ; $41ad: $85
    ld a, a                                       ; $41ae: $7f
    ld b, e                                       ; $41af: $43
    cp [hl]                                       ; $41b0: $be
    rla                                           ; $41b1: $17
    db $fc                                        ; $41b2: $fc
    daa                                           ; $41b3: $27
    cp $57                                        ; $41b4: $fe $57
    ld hl, sp+$2f                                 ; $41b6: $f8 $2f
    ldh a, [rNR10]                                ; $41b8: $f0 $10
    inc bc                                        ; $41ba: $03
    nop                                           ; $41bb: $00
    pop bc                                        ; $41bc: $c1
    jr z, jr_0f9_41bf                             ; $41bd: $28 $00

jr_0f9_41bf:
    ld b, d                                       ; $41bf: $42
    nop                                           ; $41c0: $00
    ld l, c                                       ; $41c1: $69
    nop                                           ; $41c2: $00
    xor $00                                       ; $41c3: $ee $00
    ld a, l                                       ; $41c5: $7d
    nop                                           ; $41c6: $00
    rst $10                                       ; $41c7: $d7
    jr z, jr_0f9_414c                             ; $41c8: $28 $82

    ld a, l                                       ; $41ca: $7d
    nop                                           ; $41cb: $00
    rst $38                                       ; $41cc: $ff
    ld b, h                                       ; $41cd: $44
    rst $38                                       ; $41ce: $ff
    ld l, h                                       ; $41cf: $6c
    rst $38                                       ; $41d0: $ff
    rst $10                                       ; $41d1: $d7
    rst $38                                       ; $41d2: $ff

jr_0f9_41d3:
    ld a, l                                       ; $41d3: $7d
    cp e                                          ; $41d4: $bb
    rst $38                                       ; $41d5: $ff
    add d                                         ; $41d6: $82
    rst $38                                       ; $41d7: $ff
    nop                                           ; $41d8: $00
    ld b, b                                       ; $41d9: $40
    nop                                           ; $41da: $00
    ld b, b                                       ; $41db: $40
    nop                                           ; $41dc: $00
    ld [hl], b                                    ; $41dd: $70
    nop                                           ; $41de: $00
    sub l                                         ; $41df: $95
    ld b, b                                       ; $41e0: $40
    db $ec                                        ; $41e1: $ec
    nop                                           ; $41e2: $00
    jp c, $bc00                                   ; $41e3: $da $00 $bc

    ld b, b                                       ; $41e6: $40
    dec de                                        ; $41e7: $1b
    ldh [$8a], a                                  ; $41e8: $e0 $8a
    ldh a, [rBGP]                                 ; $41ea: $f0 $47
    ld hl, sp+$42                                 ; $41ec: $f8 $42
    db $fc                                        ; $41ee: $fc
    add l                                         ; $41ef: $85
    ld a, [$7ed0]                                 ; $41f0: $fa $d0 $7e
    ret z                                         ; $41f3: $c8

    ld a, a                                       ; $41f4: $7f
    pop af                                        ; $41f5: $f1
    ld a, $f9                                     ; $41f6: $3e $f9
    ld c, $40                                     ; $41f8: $0e $40
    nop                                           ; $41fa: $00
    ld b, b                                       ; $41fb: $40
    nop                                           ; $41fc: $00
    ld h, b                                       ; $41fd: $60

Jump_0f9_41fe:
    inc bc                                        ; $41fe: $03
    nop                                           ; $41ff: $00
    db $e3                                        ; $4200: $e3
    jr nc, jr_0f9_4203                            ; $4201: $30 $00

jr_0f9_4203:
    jr nz, jr_0f9_4245                            ; $4203: $20 $40

    ld b, c                                       ; $4205: $41
    nop                                           ; $4206: $00
    inc a                                         ; $4207: $3c
    nop                                           ; $4208: $00
    ld h, b                                       ; $4209: $60
    nop                                           ; $420a: $00
    ld l, $40                                     ; $420b: $2e $40
    db $10                                        ; $420d: $10
    ldh [$7a], a                                  ; $420e: $e0 $7a
    add b                                         ; $4210: $80
    jr nz, jr_0f9_41d3                            ; $4211: $20 $c0

    ld a, b                                       ; $4213: $78
    add b                                         ; $4214: $80
    dec a                                         ; $4215: $3d
    ret nz                                        ; $4216: $c0

    halt                                          ; $4217: $76
    add b                                         ; $4218: $80
    inc b                                         ; $4219: $04
    inc bc                                        ; $421a: $03
    cp h                                          ; $421b: $bc
    inc bc                                        ; $421c: $03
    ld e, $01                                     ; $421d: $1e $01
    inc b                                         ; $421f: $04
    inc bc                                        ; $4220: $03
    ld e, [hl]                                    ; $4221: $5e
    ld bc, $0708                                  ; $4222: $01 $08 $07
    ld [hl], l                                    ; $4225: $75
    ld [bc], a                                    ; $4226: $02
    rlca                                          ; $4227: $07
    nop                                           ; $4228: $00
    inc a                                         ; $4229: $3c
    ld bc, $0002                                  ; $422a: $01 $02 $00
    ld b, l                                       ; $422d: $45
    ld [bc], a                                    ; $422e: $02
    inc c                                         ; $422f: $0c
    nop                                           ; $4230: $00
    ld bc, $0600                                  ; $4231: $01 $00 $06
    nop                                           ; $4234: $00
    inc bc                                        ; $4235: $03

jr_0f9_4236:
    nop                                           ; $4236: $00
    ld [bc], a                                    ; $4237: $02
    nop                                           ; $4238: $00
    inc c                                         ; $4239: $0c
    ei                                            ; $423a: $fb
    ld a, [hl]                                    ; $423b: $7e
    pop af                                        ; $423c: $f1
    jr jr_0f9_4236                                ; $423d: $18 $f7

    cp b                                          ; $423f: $b8
    rst $20                                       ; $4240: $e7
    ld e, l                                       ; $4241: $5d
    db $e3                                        ; $4242: $e3
    ld d, b                                       ; $4243: $50

jr_0f9_4244:
    rst $28                                       ; $4244: $ef

jr_0f9_4245:
    cp l                                          ; $4245: $bd
    db $d3                                        ; $4246: $d3
    ld e, b                                       ; $4247: $58
    rst $20                                       ; $4248: $e7
    db $fc                                        ; $4249: $fc
    db $e3                                        ; $424a: $e3
    jr jr_0f9_4244                                ; $424b: $18 $f7

    ld a, [hl]                                    ; $424d: $7e
    pop hl                                        ; $424e: $e1
    inc l                                         ; $424f: $2c
    db $d3                                        ; $4250: $d3
    ld a, $e1                                     ; $4251: $3e $e1
    ld d, a                                       ; $4253: $57
    ld hl, sp+$27                                 ; $4254: $f8 $27
    cp $1f                                        ; $4256: $fe $1f
    db $fc                                        ; $4258: $fc
    xor d                                         ; $4259: $aa
    ld d, l                                       ; $425a: $55
    ld bc, $28fe                                  ; $425b: $01 $fe $28
    rst $38                                       ; $425e: $ff
    ld d, h                                       ; $425f: $54
    rst $38                                       ; $4260: $ff
    ld l, h                                       ; $4261: $6c
    rst $38                                       ; $4262: $ff
    cp d                                          ; $4263: $ba
    inc bc                                        ; $4264: $03
    rst $38                                       ; $4265: $ff
    pop de                                        ; $4266: $d1
    ld a, h                                       ; $4267: $7c
    rst $38                                       ; $4268: $ff
    cp $ff                                        ; $4269: $fe $ff
    ld a, l                                       ; $426b: $7d

jr_0f9_426c:
    rst $38                                       ; $426c: $ff
    cp $ff                                        ; $426d: $fe $ff
    ld a, [hl]                                    ; $426f: $7e
    rst $38                                       ; $4270: $ff
    cp d                                          ; $4271: $ba
    rst $38                                       ; $4272: $ff
    ld l, h                                       ; $4273: $6c
    rst $38                                       ; $4274: $ff
    ld d, b                                       ; $4275: $50
    rst $38                                       ; $4276: $ff
    ld [bc], a                                    ; $4277: $02
    db $fd                                        ; $4278: $fd
    ld l, b                                       ; $4279: $68
    sub [hl]                                      ; $427a: $96
    ld a, h                                       ; $427b: $7c
    adc [hl]                                      ; $427c: $8e
    jr nc, @-$20                                  ; $427d: $30 $de

    ld a, d                                       ; $427f: $7a
    adc [hl]                                      ; $4280: $8e
    inc [hl]                                      ; $4281: $34
    adc $14                                       ; $4282: $ce $14
    xor $3a                                       ; $4284: $ee $3a
    rst $10                                       ; $4286: $d7
    inc [hl]                                      ; $4287: $34
    rst $08                                       ; $4288: $cf
    ld a, [hl]                                    ; $4289: $7e
    adc a                                         ; $428a: $8f
    jr nc, jr_0f9_426c                            ; $428b: $30 $df

    db $f4                                        ; $428d: $f4
    rrca                                          ; $428e: $0f
    ld l, b                                       ; $428f: $68
    or a                                          ; $4290: $b7
    ld sp, hl                                     ; $4291: $f9
    ld c, $f5                                     ; $4292: $0e $f5
    ld a, $88                                     ; $4294: $3e $88
    rst $38                                       ; $4296: $ff
    ret nc                                        ; $4297: $d0

    ld a, [hl]                                    ; $4298: $7e
    jr nz, jr_0f9_42db                            ; $4299: $20 $40

    dec a                                         ; $429b: $3d
    ld b, b                                       ; $429c: $40
    ld a, b                                       ; $429d: $78
    nop                                           ; $429e: $00
    jr nz, jr_0f9_42e1                            ; $429f: $20 $40

    ld a, d                                       ; $42a1: $7a
    nop                                           ; $42a2: $00
    db $10                                        ; $42a3: $10
    ld h, b                                       ; $42a4: $60
    ld l, $40                                     ; $42a5: $2e $40
    ld h, b                                       ; $42a7: $60
    nop                                           ; $42a8: $00
    inc a                                         ; $42a9: $3c
    nop                                           ; $42aa: $00
    ld b, c                                       ; $42ab: $41
    nop                                           ; $42ac: $00
    and b                                         ; $42ad: $a0
    ld b, b                                       ; $42ae: $40
    jr nc, jr_0f9_42b1                            ; $42af: $30 $00

jr_0f9_42b1:
    add b                                         ; $42b1: $80
    nop                                           ; $42b2: $00

jr_0f9_42b3:
    ld h, b                                       ; $42b3: $60
    nop                                           ; $42b4: $00
    ret nz                                        ; $42b5: $c0

    nop                                           ; $42b6: $00
    ld b, b                                       ; $42b7: $40
    rlca                                          ; $42b8: $07
    nop                                           ; $42b9: $00
    sub e                                         ; $42ba: $93
    inc b                                         ; $42bb: $04
    dec bc                                        ; $42bc: $0b
    ld [$0c07], sp                                ; $42bd: $08 $07 $0c
    inc bc                                        ; $42c0: $03
    ld a, [bc]                                    ; $42c1: $0a
    ld bc, $000b                                  ; $42c2: $01 $0b $00
    rlca                                          ; $42c5: $07
    nop                                           ; $42c6: $00
    dec bc                                        ; $42c7: $0b
    nop                                           ; $42c8: $00
    add [hl]                                      ; $42c9: $86
    nop                                           ; $42ca: $00
    dec b                                         ; $42cb: $05
    nop                                           ; $42cc: $00
    add hl, bc                                    ; $42cd: $09
    rlca                                          ; $42ce: $07
    nop                                           ; $42cf: $00
    cp a                                          ; $42d0: $bf
    inc b                                         ; $42d1: $04
    dec bc                                        ; $42d2: $0b
    dec c                                         ; $42d3: $0d
    ld [bc], a                                    ; $42d4: $02
    rrca                                          ; $42d5: $0f
    nop                                           ; $42d6: $00
    cpl                                           ; $42d7: $2f
    ld hl, sp+$57                                 ; $42d8: $f8 $57
    ei                                            ; $42da: $fb

jr_0f9_42db:
    ld e, l                                       ; $42db: $5d
    rst $38                                       ; $42dc: $ff
    ld [bc], a                                    ; $42dd: $02
    rst $38                                       ; $42de: $ff
    inc b                                         ; $42df: $04
    rst $38                                       ; $42e0: $ff

jr_0f9_42e1:
    and b                                         ; $42e1: $a0
    ld e, a                                       ; $42e2: $5f
    ld l, b                                       ; $42e3: $68
    rla                                           ; $42e4: $17
    db $fd                                        ; $42e5: $fd
    ld [bc], a                                    ; $42e6: $02
    scf                                           ; $42e7: $37
    ld b, b                                       ; $42e8: $40
    adc $00                                       ; $42e9: $ce $00
    ld d, [hl]                                    ; $42eb: $56
    nop                                           ; $42ec: $00
    ld b, b                                       ; $42ed: $40
    nop                                           ; $42ee: $00
    add d                                         ; $42ef: $82
    nop                                           ; $42f0: $00
    jr nc, jr_0f9_42b3                            ; $42f1: $30 $c0

    ld [hl], b                                    ; $42f3: $70
    add b                                         ; $42f4: $80
    ldh a, [rP1]                                  ; $42f5: $f0 $00
    ld hl, sp+$2f                                 ; $42f7: $f8 $2f
    sub $bf                                       ; $42f9: $d6 $bf
    ld [hl], b                                    ; $42fb: $70
    rst $38                                       ; $42fc: $ff
    ret z                                         ; $42fd: $c8

    rst $38                                       ; $42fe: $ff
    add c                                         ; $42ff: $81
    cp $0b                                        ; $4300: $fe $0b
    db $f4                                        ; $4302: $f4
    dec l                                         ; $4303: $2d
    ret nc                                        ; $4304: $d0

    ld a, [hl]                                    ; $4305: $7e
    add b                                         ; $4306: $80
    reti                                          ; $4307: $d9


    inc b                                         ; $4308: $04
    rst $20                                       ; $4309: $e7
    nop                                           ; $430a: $00
    call nz, Call_0f9_6400                        ; $430b: $c4 $00 $64
    nop                                           ; $430e: $00
    add d                                         ; $430f: $82
    rlca                                          ; $4310: $07
    nop                                           ; $4311: $00
    sub e                                         ; $4312: $93
    jr nz, @+$52                                  ; $4313: $20 $50

    db $10                                        ; $4315: $10
    ld h, b                                       ; $4316: $60
    jr nc, jr_0f9_4359                            ; $4317: $30 $40

    ld d, b                                       ; $4319: $50
    nop                                           ; $431a: $00
    ld d, b                                       ; $431b: $50
    nop                                           ; $431c: $00
    ld h, b                                       ; $431d: $60
    nop                                           ; $431e: $00
    ld d, b                                       ; $431f: $50
    nop                                           ; $4320: $00
    ld h, c                                       ; $4321: $61
    nop                                           ; $4322: $00
    jr nz, jr_0f9_4325                            ; $4323: $20 $00

jr_0f9_4325:
    db $10                                        ; $4325: $10
    rlca                                          ; $4326: $07
    nop                                           ; $4327: $00
    rst $38                                       ; $4328: $ff
    dec hl                                        ; $4329: $2b
    inc de                                        ; $432a: $13
    ei                                            ; $432b: $fb
    dec b                                         ; $432c: $05
    ld a, [$f406]                                 ; $432d: $fa $06 $f4
    rst $20                                       ; $4330: $e7
    inc b                                         ; $4331: $04
    rst $20                                       ; $4332: $e7
    ld [$faef], a                                 ; $4333: $ea $ef $fa
    rst $28                                       ; $4336: $ef
    ld a, [bc]                                    ; $4337: $0a
    rst $28                                       ; $4338: $ef
    jp hl                                         ; $4339: $e9


    rst $30                                       ; $433a: $f7
    ld sp, hl                                     ; $433b: $f9
    rst $30                                       ; $433c: $f7
    add hl, bc                                    ; $433d: $09
    rst $30                                       ; $433e: $f7

Jump_0f9_433f:
    add hl, de                                    ; $433f: $19
    ld sp, hl                                     ; $4340: $f9
    and $ff                                       ; $4341: $e6 $ff
    or $ff                                        ; $4343: $f6 $ff
    ld b, $ff                                     ; $4345: $06 $ff
    ld d, $ff                                     ; $4347: $16 $ff
    ld [$fa07], a                                 ; $4349: $ea $07 $fa
    rlca                                          ; $434c: $07
    ld a, [bc]                                    ; $434d: $0a
    rlca                                          ; $434e: $07
    rst $28                                       ; $434f: $ef
    rrca                                          ; $4350: $0f
    rst $38                                       ; $4351: $ff
    rrca                                          ; $4352: $0f
    db $10                                        ; $4353: $10
    rrca                                          ; $4354: $0f
    add c                                         ; $4355: $81
    ld bc, $0003                                  ; $4356: $01 $03 $00

jr_0f9_4359:
    add e                                         ; $4359: $83
    inc d                                         ; $435a: $14
    nop                                           ; $435b: $00
    ld [bc], a                                    ; $435c: $02
    inc bc                                        ; $435d: $03
    nop                                           ; $435e: $00
    add a                                         ; $435f: $87
    dec b                                         ; $4360: $05
    nop                                           ; $4361: $00
    ld c, $00                                     ; $4362: $0e $00
    ld bc, $0b00                                  ; $4364: $01 $00 $0b
    inc bc                                        ; $4367: $03
    nop                                           ; $4368: $00
    add a                                         ; $4369: $87
    ld [bc], a                                    ; $436a: $02
    nop                                           ; $436b: $00
    rla                                           ; $436c: $17
    nop                                           ; $436d: $00
    ld bc, $0500                                  ; $436e: $01 $00 $05
    inc bc                                        ; $4371: $03
    nop                                           ; $4372: $00
    add e                                         ; $4373: $83
    rla                                           ; $4374: $17
    nop                                           ; $4375: $00
    ld bc, $0003                                  ; $4376: $01 $03 $00
    add a                                         ; $4379: $87
    dec bc                                        ; $437a: $0b
    nop                                           ; $437b: $00
    ld bc, $0600                                  ; $437c: $01 $00 $06
    nop                                           ; $437f: $00
    inc bc                                        ; $4380: $03
    inc bc                                        ; $4381: $03
    nop                                           ; $4382: $00
    add c                                         ; $4383: $81
    inc bc                                        ; $4384: $03
    dec b                                         ; $4385: $05
    nop                                           ; $4386: $00
    add c                                         ; $4387: $81
    add hl, bc                                    ; $4388: $09
    dec bc                                        ; $4389: $0b
    nop                                           ; $438a: $00
    add c                                         ; $438b: $81
    ld bc, $0003                                  ; $438c: $01 $03 $00
    reti                                          ; $438f: $d9


    inc b                                         ; $4390: $04
    nop                                           ; $4391: $00
    rlca                                          ; $4392: $07
    nop                                           ; $4393: $00
    adc d                                         ; $4394: $8a
    ld bc, $0006                                  ; $4395: $01 $06 $00
    dec hl                                        ; $4398: $2b
    nop                                           ; $4399: $00
    dec e                                         ; $439a: $1d
    nop                                           ; $439b: $00
    ld [$1d01], a                                 ; $439c: $ea $01 $1d
    ld [bc], a                                    ; $439f: $02
    ld c, b                                       ; $43a0: $48
    rlca                                          ; $43a1: $07
    call nc, $202b                                ; $43a2: $d4 $2b $20
    rrca                                          ; $43a5: $0f
    ld b, c                                       ; $43a6: $41
    rra                                           ; $43a7: $1f
    db $f4                                        ; $43a8: $f4
    rrca                                          ; $43a9: $0f
    and e                                         ; $43aa: $a3
    ld e, a                                       ; $43ab: $5f
    jp nz, Jump_0f9_433f                          ; $43ac: $c2 $3f $43

    cp l                                          ; $43af: $bd
    rst $30                                       ; $43b0: $f7
    rra                                           ; $43b1: $1f
    add c                                         ; $43b2: $81
    ld a, [hl]                                    ; $43b3: $7e
    add $3f                                       ; $43b4: $c6 $3f
    dec h                                         ; $43b6: $25
    rst $18                                       ; $43b7: $df
    rst $08                                       ; $43b8: $cf
    ld a, [hl-]                                   ; $43b9: $3a
    add a                                         ; $43ba: $87
    ld a, h                                       ; $43bb: $7c
    srl a                                         ; $43bc: $cb $3f
    add l                                         ; $43be: $85
    ld a, a                                       ; $43bf: $7f
    rst $00                                       ; $43c0: $c7
    ld a, $81                                     ; $43c1: $3e $81
    ld a, [hl]                                    ; $43c3: $7e
    rst $30                                       ; $43c4: $f7
    dec e                                         ; $43c5: $1d
    ld b, c                                       ; $43c6: $41
    cp a                                          ; $43c7: $bf
    jp nz, Jump_0f9_633f                          ; $43c8: $c2 $3f $63

    rra                                           ; $43cb: $1f
    sub h                                         ; $43cc: $94
    ld l, a                                       ; $43cd: $6f
    jp $201f                                      ; $43ce: $c3 $1f $20


    rrca                                          ; $43d1: $0f
    call nc, $882b                                ; $43d2: $d4 $2b $88
    rlca                                          ; $43d5: $07
    dec e                                         ; $43d6: $1d
    ld [bc], a                                    ; $43d7: $02
    jp z, $1d01                                   ; $43d8: $ca $01 $1d

    nop                                           ; $43db: $00
    inc sp                                        ; $43dc: $33
    nop                                           ; $43dd: $00
    ld b, b                                       ; $43de: $40
    nop                                           ; $43df: $00
    ld a, [bc]                                    ; $43e0: $0a
    ld bc, $0003                                  ; $43e1: $01 $03 $00
    add h                                         ; $43e4: $84
    nop                                           ; $43e5: $00
    ld [$0100], sp                                ; $43e6: $08 $00 $01
    inc bc                                        ; $43e9: $03
    nop                                           ; $43ea: $00
    db $e3                                        ; $43eb: $e3
    dec b                                         ; $43ec: $05
    nop                                           ; $43ed: $00
    jr z, jr_0f9_43f0                             ; $43ee: $28 $00

jr_0f9_43f0:
    and l                                         ; $43f0: $a5
    nop                                           ; $43f1: $00
    sbc e                                         ; $43f2: $9b
    jr nz, jr_0f9_4472                            ; $43f3: $20 $7d

    ld [bc], a                                    ; $43f5: $02
    and [hl]                                      ; $43f6: $a6
    add hl, de                                    ; $43f7: $19
    ld d, b                                       ; $43f8: $50
    xor a                                         ; $43f9: $af
    add c                                         ; $43fa: $81
    ld a, a                                       ; $43fb: $7f
    ld b, [hl]                                    ; $43fc: $46
    cp a                                          ; $43fd: $bf
    inc de                                        ; $43fe: $13
    rst $38                                       ; $43ff: $ff
    dec l                                         ; $4400: $2d
    rst $38                                       ; $4401: $ff
    xor e                                         ; $4402: $ab
    db $fc                                        ; $4403: $fc
    rra                                           ; $4404: $1f
    push af                                       ; $4405: $f5
    cp a                                          ; $4406: $bf
    db $e4                                        ; $4407: $e4
    ld d, l                                       ; $4408: $55
    cp d                                          ; $4409: $ba
    cp h                                          ; $440a: $bc
    jp $8ff0                                      ; $440b: $c3 $f0 $8f


    ld [$6337], a                                 ; $440e: $ea $37 $63
    rst $18                                       ; $4411: $df
    pop hl                                        ; $4412: $e1
    rra                                           ; $4413: $1f
    res 7, a                                      ; $4414: $cb $bf
    rst $00                                       ; $4416: $c7
    ccf                                           ; $4417: $3f
    push bc                                       ; $4418: $c5
    ccf                                           ; $4419: $3f
    srl a                                         ; $441a: $cb $3f
    rst $10                                       ; $441c: $d7
    ccf                                           ; $441d: $3f
    add e                                         ; $441e: $83
    ld a, a                                       ; $441f: $7f
    push hl                                       ; $4420: $e5
    rra                                           ; $4421: $1f
    adc e                                         ; $4422: $8b
    ld a, a                                       ; $4423: $7f
    pop bc                                        ; $4424: $c1
    ccf                                           ; $4425: $3f
    ld a, [c]                                     ; $4426: $f2
    adc a                                         ; $4427: $8f
    ld l, c                                       ; $4428: $69
    rst $10                                       ; $4429: $d7
    ld a, b                                       ; $442a: $78
    add a                                         ; $442b: $87
    cp $a9                                        ; $442c: $fe $a9
    cp [hl]                                       ; $442e: $be
    ld h, c                                       ; $442f: $61
    rra                                           ; $4430: $1f
    ld a, [$ecb7]                                 ; $4431: $fa $b7 $ec
    rla                                           ; $4434: $17
    ei                                            ; $4435: $fb
    xor c                                         ; $4436: $a9
    cp $2d                                        ; $4437: $fe $2d
    rst $38                                       ; $4439: $ff
    ld d, e                                       ; $443a: $53
    rst $38                                       ; $443b: $ff
    ld b, $ff                                     ; $443c: $06 $ff
    ld bc, $50ff                                  ; $443e: $01 $ff $50
    xor a                                         ; $4441: $af
    or h                                          ; $4442: $b4
    dec bc                                        ; $4443: $0b
    ld a, l                                       ; $4444: $7d
    ld [bc], a                                    ; $4445: $02
    sbc d                                         ; $4446: $9a
    ld hl, $00e5                                  ; $4447: $21 $e5 $00
    jr z, jr_0f9_444c                             ; $444a: $28 $00

jr_0f9_444c:
    or h                                          ; $444c: $b4
    nop                                           ; $444d: $00
    ld [hl+], a                                   ; $444e: $22
    dec e                                         ; $444f: $1d
    nop                                           ; $4450: $00
    add c                                         ; $4451: $81
    ld b, b                                       ; $4452: $40
    inc bc                                        ; $4453: $03
    nop                                           ; $4454: $00
    rst $20                                       ; $4455: $e7
    and d                                         ; $4456: $a2
    nop                                           ; $4457: $00
    ld d, $00                                     ; $4458: $16 $00
    and d                                         ; $445a: $a2
    nop                                           ; $445b: $00
    or h                                          ; $445c: $b4
    nop                                           ; $445d: $00
    db $db                                        ; $445e: $db
    jr nz, jr_0f9_44b8                            ; $445f: $20 $57

    xor b                                         ; $4461: $a8
    dec b                                         ; $4462: $05
    ld a, [$fe21]                                 ; $4463: $fa $21 $fe
    jr nc, @+$01                                  ; $4466: $30 $ff

    db $ec                                        ; $4468: $ec
    rst $38                                       ; $4469: $ff
    ld sp, hl                                     ; $446a: $f9
    cp a                                          ; $446b: $bf
    ld d, [hl]                                    ; $446c: $56
    rst $38                                       ; $446d: $ff
    ld a, [c]                                     ; $446e: $f2
    xor l                                         ; $446f: $ad
    db $fd                                        ; $4470: $fd
    rlca                                          ; $4471: $07

jr_0f9_4472:
    push af                                       ; $4472: $f5
    ld a, [bc]                                    ; $4473: $0a
    cpl                                           ; $4474: $2f
    ret nc                                        ; $4475: $d0

    dec c                                         ; $4476: $0d
    ld a, [c]                                     ; $4477: $f2
    ld h, e                                       ; $4478: $63
    db $fc                                        ; $4479: $fc
    pop de                                        ; $447a: $d1
    cp $68                                        ; $447b: $fe $68
    rst $38                                       ; $447d: $ff
    db $fc                                        ; $447e: $fc
    rst $38                                       ; $447f: $ff
    ld [$fcff], a                                 ; $4480: $ea $ff $fc
    rst $38                                       ; $4483: $ff
    ld a, [$fdff]                                 ; $4484: $fa $ff $fd
    rst $38                                       ; $4487: $ff
    db $f4                                        ; $4488: $f4
    rst $38                                       ; $4489: $ff
    ld a, [$f8ff]                                 ; $448a: $fa $ff $f8
    rst $38                                       ; $448d: $ff
    ld [hl], h                                    ; $448e: $74
    rst $38                                       ; $448f: $ff
    ret c                                         ; $4490: $d8

    rst $38                                       ; $4491: $ff
    and c                                         ; $4492: $a1
    cp $55                                        ; $4493: $fe $55
    ld a, [$fc63]                                 ; $4495: $fa $63 $fc

Jump_0f9_4498:
    rlca                                          ; $4498: $07
    ld sp, hl                                     ; $4499: $f9
    rst $18                                       ; $449a: $df
    ld hl, $08f7                                  ; $449b: $21 $f7 $08
    cp l                                          ; $449e: $bd
    ld h, d                                       ; $449f: $62
    sbc l                                         ; $44a0: $9d
    ld l, a                                       ; $44a1: $6f
    ld a, [c]                                     ; $44a2: $f2
    rst $18                                       ; $44a3: $df
    ld d, [hl]                                    ; $44a4: $56
    rst $38                                       ; $44a5: $ff
    cp c                                          ; $44a6: $b9
    rst $38                                       ; $44a7: $ff
    xor h                                         ; $44a8: $ac
    rst $38                                       ; $44a9: $ff
    db $10                                        ; $44aa: $10
    rst $38                                       ; $44ab: $ff
    add c                                         ; $44ac: $81
    cp $25                                        ; $44ad: $fe $25
    jp c, $a856                                   ; $44af: $da $56 $a8

    ei                                            ; $44b2: $fb
    nop                                           ; $44b3: $00
    and h                                         ; $44b4: $a4
    nop                                           ; $44b5: $00
    or d                                          ; $44b6: $b2
    nop                                           ; $44b7: $00

jr_0f9_44b8:
    ld d, $00                                     ; $44b8: $16 $00
    ld [bc], a                                    ; $44ba: $02
    nop                                           ; $44bb: $00
    jr nz, jr_0f9_44d3                            ; $44bc: $20 $15

    nop                                           ; $44be: $00
    db $e3                                        ; $44bf: $e3
    sub b                                         ; $44c0: $90
    nop                                           ; $44c1: $00
    ldh [rP1], a                                  ; $44c2: $e0 $00
    dec h                                         ; $44c4: $25
    add b                                         ; $44c5: $80
    call c, $aa00                                 ; $44c6: $dc $00 $aa
    db $10                                        ; $44c9: $10
    ld l, h                                       ; $44ca: $6c
    add b                                         ; $44cb: $80
    add hl, sp                                    ; $44cc: $39
    ret nz                                        ; $44cd: $c0

    ld d, [hl]                                    ; $44ce: $56
    and b                                         ; $44cf: $a0
    ld a, [bc]                                    ; $44d0: $0a
    ldh a, [$97]                                  ; $44d1: $f0 $97

jr_0f9_44d3:
    add sp, -$5e                                  ; $44d3: $e8 $a2
    db $fc                                        ; $44d5: $fc
    dec b                                         ; $44d6: $05
    ld a, [$fea0]                                 ; $44d7: $fa $a0 $fe
    db $10                                        ; $44da: $10
    rst $38                                       ; $44db: $ff
    and l                                         ; $44dc: $a5
    ld a, [hl]                                    ; $44dd: $7e
    ld hl, sp+$1f                                 ; $44de: $f8 $1f
    ret z                                         ; $44e0: $c8

    cp a                                          ; $44e1: $bf
    ret nc                                        ; $44e2: $d0

    ld a, a                                       ; $44e3: $7f
    db $fd                                        ; $44e4: $fd
    rrca                                          ; $44e5: $0f
    ld h, b                                       ; $44e6: $60
    sbc a                                         ; $44e7: $9f
    cp h                                          ; $44e8: $bc
    ld c, a                                       ; $44e9: $4f
    ld [hl], h                                    ; $44ea: $74
    sbc a                                         ; $44eb: $9f
    ld a, d                                       ; $44ec: $7a
    and a                                         ; $44ed: $a7
    db $e4                                        ; $44ee: $e4
    rra                                           ; $44ef: $1f
    ld a, d                                       ; $44f0: $7a
    adc a                                         ; $44f1: $8f
    or h                                          ; $44f2: $b4
    ld e, a                                       ; $44f3: $5f
    db $ec                                        ; $44f4: $ec
    rla                                           ; $44f5: $17
    ld [hl], b                                    ; $44f6: $70
    sbc a                                         ; $44f7: $9f
    ld a, l                                       ; $44f8: $7d
    xor a                                         ; $44f9: $af
    ret nc                                        ; $44fa: $d0

    ld a, a                                       ; $44fb: $7f
    ret z                                         ; $44fc: $c8

    ccf                                           ; $44fd: $3f
    ld hl, sp+$5f                                 ; $44fe: $f8 $5f
    and l                                         ; $4500: $a5
    ld a, [hl]                                    ; $4501: $7e
    db $10                                        ; $4502: $10
    rst $38                                       ; $4503: $ff
    and b                                         ; $4504: $a0
    cp $05                                        ; $4505: $fe $05
    ld a, [$fca2]                                 ; $4507: $fa $a2 $fc
    rla                                           ; $450a: $17
    add sp, $4a                                   ; $450b: $e8 $4a
    ldh a, [rNR22]                                ; $450d: $f0 $17
    ldh [$bb], a                                  ; $450f: $e0 $bb
    ld b, b                                       ; $4511: $40
    ld l, b                                       ; $4512: $68
    add b                                         ; $4513: $80
    xor d                                         ; $4514: $aa
    db $10                                        ; $4515: $10
    call z, $2200                                 ; $4516: $cc $00 $22
    add b                                         ; $4519: $80
    ld [c], a                                     ; $451a: $e2
    nop                                           ; $451b: $00
    sub b                                         ; $451c: $90
    nop                                           ; $451d: $00
    add b                                         ; $451e: $80
    nop                                           ; $451f: $00
    ld b, b                                       ; $4520: $40
    nop                                           ; $4521: $00
    add b                                         ; $4522: $80
    inc bc                                        ; $4523: $03
    nop                                           ; $4524: $00
    add c                                         ; $4525: $81
    ldh [$03], a                                  ; $4526: $e0 $03
    nop                                           ; $4528: $00
    cp c                                          ; $4529: $b9
    ld [hl], b                                    ; $452a: $70
    nop                                           ; $452b: $00
    ld b, b                                       ; $452c: $40
    add b                                         ; $452d: $80
    sub b                                         ; $452e: $90
    nop                                           ; $452f: $00
    ld [hl], h                                    ; $4530: $74
    nop                                           ; $4531: $00
    ldh [rP1], a                                  ; $4532: $e0 $00
    cp h                                          ; $4534: $bc
    ld b, b                                       ; $4535: $40
    ld l, d                                       ; $4536: $6a
    add b                                         ; $4537: $80
    ld d, b                                       ; $4538: $50
    and b                                         ; $4539: $a0
    ld a, [$2000]                                 ; $453a: $fa $00 $20
    ret nz                                        ; $453d: $c0

    ld a, b                                       ; $453e: $78
    add b                                         ; $453f: $80
    sbc l                                         ; $4540: $9d
    ld h, b                                       ; $4541: $60
    ld [hl], h                                    ; $4542: $74
    add b                                         ; $4543: $80
    inc [hl]                                      ; $4544: $34
    ret nz                                        ; $4545: $c0

    ld h, b                                       ; $4546: $60
    add b                                         ; $4547: $80
    db $dd                                        ; $4548: $dd
    jr nz, jr_0f9_45c3                            ; $4549: $20 $78

    add b                                         ; $454b: $80
    jr nz, @-$3e                                  ; $454c: $20 $c0

    ld a, [$5000]                                 ; $454e: $fa $00 $50
    and b                                         ; $4551: $a0
    ld l, d                                       ; $4552: $6a
    add b                                         ; $4553: $80
    cp h                                          ; $4554: $bc
    ld b, b                                       ; $4555: $40
    ldh [rP1], a                                  ; $4556: $e0 $00
    ld e, b                                       ; $4558: $58
    nop                                           ; $4559: $00
    add [hl]                                      ; $455a: $86
    nop                                           ; $455b: $00
    ld h, b                                       ; $455c: $60
    add b                                         ; $455d: $80
    ld [hl], b                                    ; $455e: $70
    nop                                           ; $455f: $00
    ldh [rP1], a                                  ; $4560: $e0 $00
    ld b, b                                       ; $4562: $40
    inc bc                                        ; $4563: $03
    nop                                           ; $4564: $00
    add c                                         ; $4565: $81
    add b                                         ; $4566: $80
    add hl, de                                    ; $4567: $19
    nop                                           ; $4568: $00
    rst $38                                       ; $4569: $ff
    ld sp, $fb16                                  ; $456a: $31 $16 $fb
    dec b                                         ; $456d: $05
    ld a, [$eb06]                                 ; $456e: $fa $06 $eb
    db $ed                                        ; $4571: $ed
    and $f5                                       ; $4572: $e6 $f5
    and $fd                                       ; $4574: $e6 $fd
    rst $20                                       ; $4576: $e7
    dec b                                         ; $4577: $05
    ld [$f60d], a                                 ; $4578: $ea $0d $f6
    add sp, -$0a                                  ; $457b: $e8 $f6
    ldh a, [$f6]                                  ; $457d: $f0 $f6
    ld hl, sp-$0a                                 ; $457f: $f8 $f6
    nop                                           ; $4581: $00
    rst $30                                       ; $4582: $f7
    ld [$10f6], sp                                ; $4583: $08 $f6 $10
    ld b, $e9                                     ; $4586: $06 $e9
    ld b, $f1                                     ; $4588: $06 $f1
    ld b, $f9                                     ; $458a: $06 $f9
    ld b, $01                                     ; $458c: $06 $01
    ld b, $09                                     ; $458e: $06 $09
    ld b, $10                                     ; $4590: $06 $10
    ld d, $ed                                     ; $4592: $16 $ed
    ld d, $f6                                     ; $4594: $16 $f6
    ld d, $fe                                     ; $4596: $16 $fe
    ld d, $06                                     ; $4598: $16 $06
    ld d, $07                                     ; $459a: $16 $07
    adc e                                         ; $459c: $8b
    ld [bc], a                                    ; $459d: $02
    nop                                           ; $459e: $00
    add c                                         ; $459f: $81
    nop                                           ; $45a0: $00
    dec b                                         ; $45a1: $05
    nop                                           ; $45a2: $00
    ld [bc], a                                    ; $45a3: $02
    nop                                           ; $45a4: $00
    add hl, sp                                    ; $45a5: $39
    nop                                           ; $45a6: $00
    dec bc                                        ; $45a7: $0b
    ld [bc], a                                    ; $45a8: $02
    inc b                                         ; $45a9: $04
    or $03                                        ; $45aa: $f6 $03
    ld a, [hl-]                                   ; $45ac: $3a
    nop                                           ; $45ad: $00
    add l                                         ; $45ae: $85
    ld [bc], a                                    ; $45af: $02
    ld [hl], d                                    ; $45b0: $72
    ld bc, $1a25                                  ; $45b1: $01 $25 $1a
    ret z                                         ; $45b4: $c8

    inc bc                                        ; $45b5: $03
    ret nc                                        ; $45b6: $d0

    daa                                           ; $45b7: $27

jr_0f9_45b8:
    dec a                                         ; $45b8: $3d
    inc bc                                        ; $45b9: $03
    ld c, b                                       ; $45ba: $48
    or a                                          ; $45bb: $b7
    or c                                          ; $45bc: $b1
    rrca                                          ; $45bd: $0f
    ld [bc], a                                    ; $45be: $02
    nop                                           ; $45bf: $00
    stop                                          ; $45c0: $10 $00
    ld [bc], a                                    ; $45c2: $02

jr_0f9_45c3:
    nop                                           ; $45c3: $00
    dec bc                                        ; $45c4: $0b
    nop                                           ; $45c5: $00
    ld c, d                                       ; $45c6: $4a
    nop                                           ; $45c7: $00
    jr c, @+$03                                   ; $45c8: $38 $01

    ld h, $08                                     ; $45ca: $26 $08
    db $db                                        ; $45cc: $db
    inc b                                         ; $45cd: $04
    xor l                                         ; $45ce: $ad
    ld b, d                                       ; $45cf: $42
    inc [hl]                                      ; $45d0: $34
    adc e                                         ; $45d1: $8b
    and b                                         ; $45d2: $a0

jr_0f9_45d3:
    ld e, a                                       ; $45d3: $5f
    ld b, c                                       ; $45d4: $41
    ccf                                           ; $45d5: $3f
    sub l                                         ; $45d6: $95
    ld a, [hl]                                    ; $45d7: $7e
    rrca                                          ; $45d8: $0f
    push af                                       ; $45d9: $f5
    ccf                                           ; $45da: $3f
    db $e4                                        ; $45db: $e4
    dec e                                         ; $45dc: $1d
    ld a, [c]                                     ; $45dd: $f2
    ld [$2800], sp                                ; $45de: $08 $00 $28
    nop                                           ; $45e1: $00
    jr z, jr_0f9_45e4                             ; $45e2: $28 $00

jr_0f9_45e4:
    ld b, l                                       ; $45e4: $45
    nop                                           ; $45e5: $00
    ld c, h                                       ; $45e6: $4c
    jr nz, @+$7b                                  ; $45e7: $20 $79

    inc b                                         ; $45e9: $04
    jp c, $5524                                   ; $45ea: $da $24 $55

    xor d                                         ; $45ed: $aa
    ld bc, $8afe                                  ; $45ee: $01 $fe $8a
    rst $38                                       ; $45f1: $ff
    jr nz, jr_0f9_45d3                            ; $45f2: $20 $df

    cp e                                          ; $45f4: $bb
    rst $28                                       ; $45f5: $ef
    rst $38                                       ; $45f6: $ff
    xor d                                         ; $45f7: $aa
    rst $38                                       ; $45f8: $ff
    dec b                                         ; $45f9: $05
    rst $10                                       ; $45fa: $d7
    jr z, @+$03                                   ; $45fb: $28 $01

    cp $90                                        ; $45fd: $fe $90
    nop                                           ; $45ff: $00
    add b                                         ; $4600: $80
    nop                                           ; $4601: $00
    and d                                         ; $4602: $a2
    nop                                           ; $4603: $00
    and h                                         ; $4604: $a4
    nop                                           ; $4605: $00
    jr c, jr_0f9_4608                             ; $4606: $38 $00

jr_0f9_4608:
    adc c                                         ; $4608: $89
    ld h, b                                       ; $4609: $60
    or a                                          ; $460a: $b7
    ld b, b                                       ; $460b: $40
    ld l, d                                       ; $460c: $6a
    add h                                         ; $460d: $84
    ld e, c                                       ; $460e: $59
    and d                                         ; $460f: $a2
    ld a, [bc]                                    ; $4610: $0a
    db $f4                                        ; $4611: $f4
    ld bc, $52fc                                  ; $4612: $01 $fc $52
    db $fd                                        ; $4615: $fd
    and c                                         ; $4616: $a1
    ld a, [hl]                                    ; $4617: $7e
    ld [$751f], a                                 ; $4618: $ea $1f $75
    cp d                                          ; $461b: $ba
    ld a, b                                       ; $461c: $78
    add a                                         ; $461d: $87
    jr nz, jr_0f9_4620                            ; $461e: $20 $00

jr_0f9_4620:
    add b                                         ; $4620: $80
    inc bc                                        ; $4621: $03
    nop                                           ; $4622: $00
    sbc e                                         ; $4623: $9b
    ld b, h                                       ; $4624: $44
    nop                                           ; $4625: $00
    add b                                         ; $4626: $80
    nop                                           ; $4627: $00
    jr nc, jr_0f9_462a                            ; $4628: $30 $00

jr_0f9_462a:
    ldh [rP1], a                                  ; $462a: $e0 $00
    ld b, h                                       ; $462c: $44
    add b                                         ; $462d: $80
    cp b                                          ; $462e: $b8
    nop                                           ; $462f: $00
    ret nz                                        ; $4630: $c0

    nop                                           ; $4631: $00
    sbc [hl]                                      ; $4632: $9e
    nop                                           ; $4633: $00
    ld c, b                                       ; $4634: $48
    or b                                          ; $4635: $b0
    jr nz, jr_0f9_45b8                            ; $4636: $20 $80

    dec de                                        ; $4638: $1b
    call nz, $b048                                ; $4639: $c4 $48 $b0
    cp a                                          ; $463c: $bf
    ld b, b                                       ; $463d: $40
    ld e, b                                       ; $463e: $58
    dec b                                         ; $463f: $05
    nop                                           ; $4640: $00
    cp $08                                        ; $4641: $fe $08
    nop                                           ; $4643: $00
    jr jr_0f9_4646                                ; $4644: $18 $00

jr_0f9_4646:
    ld a, [bc]                                    ; $4646: $0a
    ld bc, $0037                                  ; $4647: $01 $37 $00
    add c                                         ; $464a: $81
    nop                                           ; $464b: $00
    ld [bc], a                                    ; $464c: $02
    dec b                                         ; $464d: $05
    ld a, a                                       ; $464e: $7f
    nop                                           ; $464f: $00
    inc c                                         ; $4650: $0c
    inc bc                                        ; $4651: $03
    dec bc                                        ; $4652: $0b
    nop                                           ; $4653: $00
    ld bc, $9f00                                  ; $4654: $01 $00 $9f
    nop                                           ; $4657: $00
    ld [bc], a                                    ; $4658: $02
    dec b                                         ; $4659: $05
    add hl, bc                                    ; $465a: $09
    nop                                           ; $465b: $00
    ld bc, $0706                                  ; $465c: $01 $06 $07
    inc b                                         ; $465f: $04
    rlca                                          ; $4660: $07
    ld bc, $0407                                  ; $4661: $01 $07 $04
    rlca                                          ; $4664: $07
    nop                                           ; $4665: $00
    add [hl]                                      ; $4666: $86
    ld a, l                                       ; $4667: $7d
    xor $31                                       ; $4668: $ee $31
    ld c, $f9                                     ; $466a: $0e $f9
    xor [hl]                                      ; $466c: $ae
    ld e, l                                       ; $466d: $5d
    inc c                                         ; $466e: $0c
    di                                            ; $466f: $f3
    sbc [hl]                                      ; $4670: $9e
    ld a, c                                       ; $4671: $79
    ld c, h                                       ; $4672: $4c
    ei                                            ; $4673: $fb
    sbc [hl]                                      ; $4674: $9e
    ld [hl], c                                    ; $4675: $71
    ld e, $e1                                     ; $4676: $1e $e1
    sbc h                                         ; $4678: $9c
    ld a, e                                       ; $4679: $7b
    rrca                                          ; $467a: $0f
    ld hl, sp-$1e                                 ; $467b: $f8 $e2
    rra                                           ; $467d: $1f
    add l                                         ; $467e: $85
    ld a, a                                       ; $467f: $7f
    xor b                                         ; $4680: $a8

jr_0f9_4681:
    ld a, a                                       ; $4681: $7f
    jr jr_0f9_4681                                ; $4682: $18 $fd

    ld [hl], b                                    ; $4684: $70

jr_0f9_4685:
    ld a, [$fc20]                                 ; $4685: $fa $20 $fc
    ld h, b                                       ; $4688: $60
    ld hl, sp-$40                                 ; $4689: $f8 $c0
    ldh a, [rLCDC]                                ; $468b: $f0 $40
    add sp, -$80                                  ; $468d: $e8 $80
    ldh a, [rLCDC]                                ; $468f: $f0 $40
    ldh a, [$80]                                  ; $4691: $f0 $80
    add sp, $40                                   ; $4693: $e8 $40
    ldh a, [$e0]                                  ; $4695: $f0 $e0
    ld hl, sp+$40                                 ; $4697: $f8 $40
    db $f4                                        ; $4699: $f4
    add b                                         ; $469a: $80
    ld hl, sp-$20                                 ; $469b: $f8 $e0
    ld hl, sp+$54                                 ; $469d: $f8 $54
    rst $38                                       ; $469f: $ff
    add hl, bc                                    ; $46a0: $09
    cp $0c                                        ; $46a1: $fe $0c
    ld e, a                                       ; $46a3: $5f
    rlca                                          ; $46a4: $07
    cpl                                           ; $46a5: $2f
    ld [bc], a                                    ; $46a6: $02
    rra                                           ; $46a7: $1f
    inc bc                                        ; $46a8: $03
    rrca                                          ; $46a9: $0f
    ld bc, $0107                                  ; $46aa: $01 $07 $01
    dec bc                                        ; $46ad: $0b
    nop                                           ; $46ae: $00
    rlca                                          ; $46af: $07
    ld bc, $0007                                  ; $46b0: $01 $07 $00
    dec bc                                        ; $46b3: $0b
    ld bc, $0307                                  ; $46b4: $01 $07 $03
    rrca                                          ; $46b7: $0f
    ld bc, $0017                                  ; $46b8: $01 $17 $00
    rrca                                          ; $46bb: $0f
    ldh a, [rNR23]                                ; $46bc: $f0 $18
    ld a, b                                       ; $46be: $78
    ret z                                         ; $46bf: $c8

    sbc l                                         ; $46c0: $9d
    ld [hl], b                                    ; $46c1: $70
    sbc b                                         ; $46c2: $98
    ld [hl], b                                    ; $46c3: $70
    sbc a                                         ; $46c4: $9f
    jr c, @-$37                                   ; $46c5: $38 $c7

    ld a, e                                       ; $46c7: $7b
    adc [hl]                                      ; $46c8: $8e
    or b                                          ; $46c9: $b0
    rst $08                                       ; $46ca: $cf
    ld a, [hl-]                                   ; $46cb: $3a
    call $e799                                    ; $46cc: $cd $99 $e7
    inc a                                         ; $46cf: $3c
    rst $00                                       ; $46d0: $c7
    sbc b                                         ; $46d1: $98
    rst $28                                       ; $46d2: $ef
    ld a, $c7                                     ; $46d3: $3e $c7
    cp h                                          ; $46d5: $bc
    jp $ef1d                                      ; $46d6: $c3 $1d $ef


    ld hl, sp-$71                                 ; $46d9: $f8 $8f
    dec sp                                        ; $46db: $3b
    and $01                                       ; $46dc: $e6 $01
    rlca                                          ; $46de: $07
    nop                                           ; $46df: $00
    add c                                         ; $46e0: $81
    sbc $02                                       ; $46e1: $de $02
    jr nz, jr_0f9_4685                            ; $46e3: $20 $a0

    ret nz                                        ; $46e5: $c0

    db $f4                                        ; $46e6: $f4
    nop                                           ; $46e7: $00
    ld b, b                                       ; $46e8: $40
    add b                                         ; $46e9: $80
    ldh a, [rP1]                                  ; $46ea: $f0 $00
    add hl, de                                    ; $46ec: $19
    ldh [$e8], a                                  ; $46ed: $e0 $e8
    nop                                           ; $46ef: $00
    ld l, h                                       ; $46f0: $6c
    add b                                         ; $46f1: $80
    ret nz                                        ; $46f2: $c0

    nop                                           ; $46f3: $00
    ld a, c                                       ; $46f4: $79
    add b                                         ; $46f5: $80
    sub b                                         ; $46f6: $90
    ld h, b                                       ; $46f7: $60
    ld b, b                                       ; $46f8: $40
    add b                                         ; $46f9: $80
    rst $28                                       ; $46fa: $ef
    nop                                           ; $46fb: $00
    dec b                                         ; $46fc: $05
    ld [bc], a                                    ; $46fd: $02
    dec sp                                        ; $46fe: $3b
    nop                                           ; $46ff: $00
    inc d                                         ; $4700: $14
    dec bc                                        ; $4701: $0b
    ld [bc], a                                    ; $4702: $02
    ld bc, $031f                                  ; $4703: $01 $1f $03
    nop                                           ; $4706: $00
    adc c                                         ; $4707: $89
    inc bc                                        ; $4708: $03
    nop                                           ; $4709: $00
    ld e, $01                                     ; $470a: $1e $01
    ld b, b                                       ; $470c: $40
    nop                                           ; $470d: $00
    inc bc                                        ; $470e: $03
    nop                                           ; $470f: $00
    inc b                                         ; $4710: $04
    inc bc                                        ; $4711: $03
    nop                                           ; $4712: $00
    add c                                         ; $4713: $81
    ld bc, $0005                                  ; $4714: $01 $05 $00
    cp $9c                                        ; $4717: $fe $9c
    ld h, a                                       ; $4719: $67
    ld e, $e1                                     ; $471a: $1e $e1
    cpl                                           ; $471c: $2f
    ret c                                         ; $471d: $d8

    adc [hl]                                      ; $471e: $8e
    ld a, l                                       ; $471f: $7d
    db $d3                                        ; $4720: $d3
    inc a                                         ; $4721: $3c
    rrca                                          ; $4722: $0f
    ld a, d                                       ; $4723: $7a
    add e                                         ; $4724: $83
    ld a, $55                                     ; $4725: $3e $55
    cp [hl]                                       ; $4727: $be
    ld [hl+], a                                   ; $4728: $22
    rra                                           ; $4729: $1f
    ld [hl], h                                    ; $472a: $74
    dec bc                                        ; $472b: $0b
    xor b                                         ; $472c: $a8
    rlca                                          ; $472d: $07
    ld d, b                                       ; $472e: $50
    daa                                           ; $472f: $27
    and $09                                       ; $4730: $e6 $09
    cp c                                          ; $4732: $b9
    ld [bc], a                                    ; $4733: $02
    ld a, [hl+]                                   ; $4734: $2a
    inc b                                         ; $4735: $04
    ld e, l                                       ; $4736: $5d
    nop                                           ; $4737: $00
    ldh [$fa], a                                  ; $4738: $e0 $fa
    ld b, b                                       ; $473a: $40
    db $fd                                        ; $473b: $fd
    jr nc, @+$01                                  ; $473c: $30 $ff

    sbc d                                         ; $473e: $9a
    ld a, a                                       ; $473f: $7f
    sub a                                         ; $4740: $97
    ld a, a                                       ; $4741: $7f
    ld h, c                                       ; $4742: $61
    sbc a                                         ; $4743: $9f
    add sp, $17                                   ; $4744: $e8 $17
    db $db                                        ; $4746: $db
    and h                                         ; $4747: $a4
    rst $38                                       ; $4748: $ff
    ret nz                                        ; $4749: $c0

    rst $38                                       ; $474a: $ff
    xor d                                         ; $474b: $aa
    ld c, [hl]                                    ; $474c: $4e
    db $fd                                        ; $474d: $fd
    dec de                                        ; $474e: $1b
    rst $38                                       ; $474f: $ff
    add d                                         ; $4750: $82
    ld a, a                                       ; $4751: $7f
    ld c, b                                       ; $4752: $48
    cp a                                          ; $4753: $bf
    jp nc, $b52d                                  ; $4754: $d2 $2d $b5

    ld c, d                                       ; $4757: $4a
    ld c, $be                                     ; $4758: $0e $be
    inc b                                         ; $475a: $04
    ld a, a                                       ; $475b: $7f
    dec e                                         ; $475c: $1d
    cp $b2                                        ; $475d: $fe $b2
    db $fd                                        ; $475f: $fd
    ld d, e                                       ; $4760: $53
    db $fc                                        ; $4761: $fc
    dec c                                         ; $4762: $0d
    ld a, [c]                                     ; $4763: $f2
    ld l, a                                       ; $4764: $6f
    sub b                                         ; $4765: $90
    cp $01                                        ; $4766: $fe $01
    ld a, [$7e87]                                 ; $4768: $fa $87 $7e
    db $db                                        ; $476b: $db
    push hl                                       ; $476c: $e5
    cp a                                          ; $476d: $bf
    xor b                                         ; $476e: $a8
    rst $38                                       ; $476f: $ff
    add b                                         ; $4770: $80
    rst $38                                       ; $4771: $ff
    dec h                                         ; $4772: $25
    ld a, [$ec12]                                 ; $4773: $fa $12 $ec
    ld e, l                                       ; $4776: $5d
    and d                                         ; $4777: $a2
    ld bc, $7100                                  ; $4778: $01 $00 $71
    sbc [hl]                                      ; $477b: $9e
    ld sp, hl                                     ; $477c: $f9
    ld l, $e0                                     ; $477d: $2e $e0
    ccf                                           ; $477f: $3f
    sub $79                                       ; $4780: $d6 $79
    pop hl                                        ; $4782: $e1
    inc a                                         ; $4783: $3c
    add d                                         ; $4784: $82
    ld hl, sp+$15                                 ; $4785: $f8 $15
    ld [$f0a9], a                                 ; $4787: $ea $a9 $f0
    ld d, l                                       ; $478a: $55
    xor b                                         ; $478b: $a8
    dec hl                                        ; $478c: $2b
    ret nc                                        ; $478d: $d0

    ld d, h                                       ; $478e: $54
    adc b                                         ; $478f: $88
    adc $20                                       ; $4790: $ce $20
    inc sp                                        ; $4792: $33
    add b                                         ; $4793: $80
    xor b                                         ; $4794: $a8
    ld b, b                                       ; $4795: $40
    adc c                                         ; $4796: $89
    ld [hl], h                                    ; $4797: $74
    nop                                           ; $4798: $00
    ld [hl], d                                    ; $4799: $72
    nop                                           ; $479a: $00
    db $10                                        ; $479b: $10
    ld h, b                                       ; $479c: $60
    ld e, h                                       ; $479d: $5c
    nop                                           ; $479e: $00
    jr c, jr_0f9_47a3                             ; $479f: $38 $02

    ld b, b                                       ; $47a1: $40
    adc [hl]                                      ; $47a2: $8e

jr_0f9_47a3:
    nop                                           ; $47a3: $00
    ld e, b                                       ; $47a4: $58
    jr nz, @+$06                                  ; $47a5: $20 $04

    nop                                           ; $47a7: $00
    ld b, c                                       ; $47a8: $41
    nop                                           ; $47a9: $00
    jr nc, @+$42                                  ; $47aa: $30 $40

    ld [$4000], sp                                ; $47ac: $08 $00 $40
    nop                                           ; $47af: $00
    jr nz, @+$07                                  ; $47b0: $20 $05

    nop                                           ; $47b2: $00
    add a                                         ; $47b3: $87
    ld b, b                                       ; $47b4: $40
    nop                                           ; $47b5: $00
    ld [$0900], sp                                ; $47b6: $08 $00 $09
    nop                                           ; $47b9: $00
    add d                                         ; $47ba: $82
    dec e                                         ; $47bb: $1d
    nop                                           ; $47bc: $00
    adc c                                         ; $47bd: $89
    ld c, l                                       ; $47be: $4d
    db $10                                        ; $47bf: $10
    ld [hl], d                                    ; $47c0: $72
    nop                                           ; $47c1: $00
    sub h                                         ; $47c2: $94
    nop                                           ; $47c3: $00
    sub [hl]                                      ; $47c4: $96
    nop                                           ; $47c5: $00
    inc b                                         ; $47c6: $04
    inc bc                                        ; $47c7: $03
    nop                                           ; $47c8: $00
    add c                                         ; $47c9: $81
    jr nz, jr_0f9_47df                            ; $47ca: $20 $13

    nop                                           ; $47cc: $00
    adc e                                         ; $47cd: $8b
    ld l, l                                       ; $47ce: $6d
    sub b                                         ; $47cf: $90
    jp z, $f910                                   ; $47d0: $ca $10 $f9

    nop                                           ; $47d3: $00
    adc e                                         ; $47d4: $8b
    nop                                           ; $47d5: $00
    sub c                                         ; $47d6: $91
    nop                                           ; $47d7: $00
    ld de, $0015                                  ; $47d8: $11 $15 $00
    add a                                         ; $47db: $87
    sub d                                         ; $47dc: $92
    ld b, b                                       ; $47dd: $40
    ld [hl], e                                    ; $47de: $73

jr_0f9_47df:
    nop                                           ; $47df: $00
    ld e, b                                       ; $47e0: $58
    nop                                           ; $47e1: $00
    ld b, b                                       ; $47e2: $40
    dec b                                         ; $47e3: $05
    nop                                           ; $47e4: $00
    add c                                         ; $47e5: $81
    db $10                                        ; $47e6: $10
    rla                                           ; $47e7: $17
    nop                                           ; $47e8: $00
    add c                                         ; $47e9: $81
    ld bc, $001b                                  ; $47ea: $01 $1b $00
    rst $38                                       ; $47ed: $ff
    cpl                                           ; $47ee: $2f
    dec d                                         ; $47ef: $15
    ei                                            ; $47f0: $fb
    dec b                                         ; $47f1: $05
    ld a, [$eb06]                                 ; $47f2: $fa $06 $eb
    db $eb                                        ; $47f5: $eb
    rst $20                                       ; $47f6: $e7
    di                                            ; $47f7: $f3
    push hl                                       ; $47f8: $e5
    ei                                            ; $47f9: $fb
    push hl                                       ; $47fa: $e5
    inc bc                                        ; $47fb: $03
    ld [$f30b], a                                 ; $47fc: $ea $0b $f3
    db $10                                        ; $47ff: $10
    or $e8                                        ; $4800: $f6 $e8
    rst $30                                       ; $4802: $f7
    ldh a, [$f5]                                  ; $4803: $f0 $f5
    ld hl, sp-$0b                                 ; $4805: $f8 $f5
    nop                                           ; $4807: $00
    push af                                       ; $4808: $f5
    ld [$1003], sp                                ; $4809: $08 $03 $10
    ld b, $e9                                     ; $480c: $06 $e9
    ld b, $f1                                     ; $480e: $06 $f1
    rlca                                          ; $4810: $07
    ld sp, hl                                     ; $4811: $f9
    ld b, $01                                     ; $4812: $06 $01
    dec b                                         ; $4814: $05
    ld [$0a13], sp                                ; $4815: $08 $13 $0a
    dec d                                         ; $4818: $15
    ld a, [c]                                     ; $4819: $f2
    dec d                                         ; $481a: $15
    ld a, [$0215]                                 ; $481b: $fa $15 $02
    add c                                         ; $481e: $81
    ld bc, $0003                                  ; $481f: $01 $03 $00
    db $dd                                        ; $4822: $dd
    ld [bc], a                                    ; $4823: $02
    nop                                           ; $4824: $00
    ld [$0200], sp                                ; $4825: $08 $00 $02
    nop                                           ; $4828: $00
    dec b                                         ; $4829: $05
    nop                                           ; $482a: $00
    ld a, [bc]                                    ; $482b: $0a
    nop                                           ; $482c: $00
    dec h                                         ; $482d: $25
    nop                                           ; $482e: $00
    sub e                                         ; $482f: $93
    nop                                           ; $4830: $00
    ld [hl], $0b                                  ; $4831: $36 $0b
    add hl, bc                                    ; $4833: $09
    ld [bc], a                                    ; $4834: $02
    ld [hl], e                                    ; $4835: $73
    inc b                                         ; $4836: $04
    inc l                                         ; $4837: $2c
    inc de                                        ; $4838: $13
    ld e, e                                       ; $4839: $5b
    inc b                                         ; $483a: $04
    or l                                          ; $483b: $b5
    ld a, [bc]                                    ; $483c: $0a
    dec de                                        ; $483d: $1b
    inc l                                         ; $483e: $2c
    ld [bc], a                                    ; $483f: $02
    nop                                           ; $4840: $00
    ld [bc], a                                    ; $4841: $02
    nop                                           ; $4842: $00
    ld a, [bc]                                    ; $4843: $0a
    nop                                           ; $4844: $00
    ld l, c                                       ; $4845: $69
    ld [bc], a                                    ; $4846: $02
    ld l, $00                                     ; $4847: $2e $00
    ld e, e                                       ; $4849: $5b
    inc b                                         ; $484a: $04
    xor l                                         ; $484b: $ad
    ld [bc], a                                    ; $484c: $02
    or [hl]                                       ; $484d: $b6
    dec bc                                        ; $484e: $0b
    pop hl                                        ; $484f: $e1
    ld e, $5c                                     ; $4850: $1e $5c
    inc sp                                        ; $4852: $33
    xor e                                         ; $4853: $ab
    ld d, h                                       ; $4854: $54
    ld l, h                                       ; $4855: $6c
    sub e                                         ; $4856: $93
    ld d, $eb                                     ; $4857: $16 $eb
    db $f4                                        ; $4859: $f4
    rrca                                          ; $485a: $0f
    jp z, $683e                                   ; $485b: $ca $3e $68

    sbc a                                         ; $485e: $9f
    ld a, [bc]                                    ; $485f: $0a
    nop                                           ; $4860: $00
    ld [$d100], sp                                ; $4861: $08 $00 $d1
    nop                                           ; $4864: $00
    sbc e                                         ; $4865: $9b
    nop                                           ; $4866: $00
    ld c, [hl]                                    ; $4867: $4e
    ld de, $09b6                                  ; $4868: $11 $b6 $09
    ld sp, hl                                     ; $486b: $f9
    ld c, $57                                     ; $486c: $0e $57
    xor b                                         ; $486e: $a8
    ld b, $f9                                     ; $486f: $06 $f9
    jp c, Jump_0f9_6a25                           ; $4871: $da $25 $6a

    sub l                                         ; $4874: $95
    pop hl                                        ; $4875: $e1
    ccf                                           ; $4876: $3f
    inc [hl]                                      ; $4877: $34
    rst $38                                       ; $4878: $ff
    jp z, $80ff                                   ; $4879: $ca $ff $80

    rst $38                                       ; $487c: $ff
    nop                                           ; $487d: $00
    db $eb                                        ; $487e: $eb
    jr nz, jr_0f9_4884                            ; $487f: $20 $03

    nop                                           ; $4881: $00
    cp a                                          ; $4882: $bf
    ld l, b                                       ; $4883: $68

jr_0f9_4884:
    nop                                           ; $4884: $00
    ld hl, $4e00                                  ; $4885: $21 $00 $4e
    nop                                           ; $4888: $00
    di                                            ; $4889: $f3
    ld [$42ac], sp                                ; $488a: $08 $ac $42
    ld e, a                                       ; $488d: $5f
    and b                                         ; $488e: $a0
    ld [hl], $c8                                  ; $488f: $36 $c8
    db $ed                                        ; $4891: $ed
    ld a, [de]                                    ; $4892: $1a
    adc b                                         ; $4893: $88
    ld [hl], a                                    ; $4894: $77

jr_0f9_4895:
    ld d, d                                       ; $4895: $52
    xor l                                         ; $4896: $ad
    dec l                                         ; $4897: $2d
    ld a, [c]                                     ; $4898: $f2
    pop bc                                        ; $4899: $c1
    cp $6a                                        ; $489a: $fe $6a
    ld a, l                                       ; $489c: $7d
    ld de, $80fe                                  ; $489d: $11 $fe $80
    nop                                           ; $48a0: $00
    add b                                         ; $48a1: $80
    nop                                           ; $48a2: $00
    ld d, b                                       ; $48a3: $50
    nop                                           ; $48a4: $00
    xor b                                         ; $48a5: $a8
    ld b, b                                       ; $48a6: $40
    or c                                          ; $48a7: $b1
    nop                                           ; $48a8: $00
    db $ec                                        ; $48a9: $ec
    nop                                           ; $48aa: $00
    ret c                                         ; $48ab: $d8

    add b                                         ; $48ac: $80
    add hl, hl                                    ; $48ad: $29
    ret nz                                        ; $48ae: $c0

    sbc l                                         ; $48af: $9d
    ld h, b                                       ; $48b0: $60
    add hl, hl                                    ; $48b1: $29
    ret c                                         ; $48b2: $d8

    call nc, Call_0f9_622a                        ; $48b3: $d4 $2a $62
    sbc b                                         ; $48b6: $98
    ld sp, $07cc                                  ; $48b7: $31 $cc $07
    ld hl, sp-$4d                                 ; $48ba: $f8 $b3
    call z, $d629                                 ; $48bc: $cc $29 $d6
    jr jr_0f9_48c1                                ; $48bf: $18 $00

jr_0f9_48c1:
    inc d                                         ; $48c1: $14
    inc bc                                        ; $48c2: $03
    nop                                           ; $48c3: $00
    sbc e                                         ; $48c4: $9b
    jr jr_0f9_48c7                                ; $48c5: $18 $00

jr_0f9_48c7:
    inc b                                         ; $48c7: $04
    nop                                           ; $48c8: $00
    jr jr_0f9_48cb                                ; $48c9: $18 $00

jr_0f9_48cb:
    inc d                                         ; $48cb: $14
    nop                                           ; $48cc: $00
    ld l, $d0                                     ; $48cd: $2e $d0
    ld a, b                                       ; $48cf: $78
    add b                                         ; $48d0: $80
    ld d, l                                       ; $48d1: $55
    and b                                         ; $48d2: $a0
    jr c, jr_0f9_4895                             ; $48d3: $38 $c0

    inc l                                         ; $48d5: $2c
    ldh a, [$3c]                                  ; $48d6: $f0 $3c
    ret nz                                        ; $48d8: $c0

    sub d                                         ; $48d9: $92
    ld h, b                                       ; $48da: $60
    inc sp                                        ; $48db: $33
    ret nz                                        ; $48dc: $c0

    cp b                                          ; $48dd: $b8
    ld b, b                                       ; $48de: $40
    jr nz, @+$05                                  ; $48df: $20 $03

    nop                                           ; $48e1: $00
    add e                                         ; $48e2: $83
    jr nz, jr_0f9_48e5                            ; $48e3: $20 $00

jr_0f9_48e5:
    ld h, b                                       ; $48e5: $60
    inc bc                                        ; $48e6: $03
    nop                                           ; $48e7: $00
    ret z                                         ; $48e8: $c8

    ld e, a                                       ; $48e9: $5f

jr_0f9_48ea:
    nop                                           ; $48ea: $00
    inc c                                         ; $48eb: $0c
    inc bc                                        ; $48ec: $03
    ld d, $01                                     ; $48ed: $16 $01
    xor h                                         ; $48ef: $ac
    inc bc                                        ; $48f0: $03
    ld e, $01                                     ; $48f1: $1e $01
    ld h, $03                                     ; $48f3: $26 $03
    ld a, [bc]                                    ; $48f5: $0a
    dec b                                         ; $48f6: $05
    rrca                                          ; $48f7: $0f
    nop                                           ; $48f8: $00
    ld d, h                                       ; $48f9: $54
    inc bc                                        ; $48fa: $03
    rra                                           ; $48fb: $1f
    ld bc, $0106                                  ; $48fc: $01 $06 $01
    inc de                                        ; $48ff: $13
    rrca                                          ; $4900: $0f
    ld [de], a                                    ; $4901: $12
    rrca                                          ; $4902: $0f
    inc c                                         ; $4903: $0c
    rra                                           ; $4904: $1f
    inc d                                         ; $4905: $14
    rrca                                          ; $4906: $0f
    ld h, h                                       ; $4907: $64
    sbc [hl]                                      ; $4908: $9e
    jr z, jr_0f9_48ea                             ; $4909: $28 $df

    call nz, $683e                                ; $490b: $c4 $3e $68
    sbc a                                         ; $490e: $9f
    ret nc                                        ; $490f: $d0

    ld a, $48                                     ; $4910: $3e $48
    cp a                                          ; $4912: $bf
    add sp, $1d                                   ; $4913: $e8 $1d
    ld b, b                                       ; $4915: $40
    cp [hl]                                       ; $4916: $be
    ld e, b                                       ; $4917: $58
    cp a                                          ; $4918: $bf
    ret nz                                        ; $4919: $c0

    ld a, $28                                     ; $491a: $3e $28
    rst $18                                       ; $491c: $df
    ld [hl], h                                    ; $491d: $74
    adc [hl]                                      ; $491e: $8e
    nop                                           ; $491f: $00
    ld a, [de]                                    ; $4920: $1a
    nop                                           ; $4921: $00
    inc d                                         ; $4922: $14
    nop                                           ; $4923: $00
    and c                                         ; $4924: $a1
    nop                                           ; $4925: $00
    ret nc                                        ; $4926: $d0

    nop                                           ; $4927: $00
    add b                                         ; $4928: $80
    nop                                           ; $4929: $00
    ld b, b                                       ; $492a: $40
    nop                                           ; $492b: $00
    add b                                         ; $492c: $80
    nop                                           ; $492d: $00
    jr nz, jr_0f9_4930                            ; $492e: $20 $00

jr_0f9_4930:
    add b                                         ; $4930: $80
    dec b                                         ; $4931: $05
    nop                                           ; $4932: $00
    add c                                         ; $4933: $81
    add b                                         ; $4934: $80
    rlca                                          ; $4935: $07
    nop                                           ; $4936: $00
    adc c                                         ; $4937: $89
    add b                                         ; $4938: $80
    nop                                           ; $4939: $00
    xor a                                         ; $493a: $af
    nop                                           ; $493b: $00
    dec d                                         ; $493c: $15
    nop                                           ; $493d: $00
    ld [bc], a                                    ; $493e: $02
    nop                                           ; $493f: $00
    dec b                                         ; $4940: $05
    inc bc                                        ; $4941: $03
    nop                                           ; $4942: $00
    add c                                         ; $4943: $81
    ld bc, $0009                                  ; $4944: $01 $09 $00
    add c                                         ; $4947: $81
    ld bc, $000a                                  ; $4948: $01 $0a $00
    add c                                         ; $494b: $81
    add b                                         ; $494c: $80
    inc bc                                        ; $494d: $03
    ldh [$d7], a                                  ; $494e: $e0 $d7
    ld b, b                                       ; $4950: $40
    ldh [rNR41], a                                ; $4951: $e0 $20
    ldh [rNR41], a                                ; $4953: $e0 $20
    and b                                         ; $4955: $a0
    ld [de], a                                    ; $4956: $12
    ld a, l                                       ; $4957: $7d
    ld [hl], $fd                                  ; $4958: $36 $fd
    add hl, bc                                    ; $495a: $09
    ld a, [hl]                                    ; $495b: $7e
    dec de                                        ; $495c: $1b
    cp h                                          ; $495d: $bc
    ld a, [bc]                                    ; $495e: $0a
    ld a, l                                       ; $495f: $7d
    inc bc                                        ; $4960: $03
    inc l                                         ; $4961: $2c
    add hl, de                                    ; $4962: $19
    ld a, [hl]                                    ; $4963: $7e
    dec c                                         ; $4964: $0d
    sbc $0a                                       ; $4965: $de $0a
    dec a                                         ; $4967: $3d
    ld a, [bc]                                    ; $4968: $0a
    ld a, l                                       ; $4969: $7d
    dec bc                                        ; $496a: $0b
    cp h                                          ; $496b: $bc
    sub [hl]                                      ; $496c: $96
    ld h, b                                       ; $496d: $60
    inc a                                         ; $496e: $3c
    ret nz                                        ; $496f: $c0

    ld d, b                                       ; $4970: $50
    and b                                         ; $4971: $a0
    cp h                                          ; $4972: $bc
    ld b, b                                       ; $4973: $40
    ld c, b                                       ; $4974: $48
    ldh a, [$35]                                  ; $4975: $f0 $35
    ret nz                                        ; $4977: $c0

    ld e, d                                       ; $4978: $5a
    and b                                         ; $4979: $a0
    ldh a, [rP1]                                  ; $497a: $f0 $00
    ld a, [hl+]                                   ; $497c: $2a
    add b                                         ; $497d: $80
    ld b, b                                       ; $497e: $40
    nop                                           ; $497f: $00
    ret nc                                        ; $4980: $d0

    nop                                           ; $4981: $00
    inc [hl]                                      ; $4982: $34
    nop                                           ; $4983: $00
    add b                                         ; $4984: $80
    nop                                           ; $4985: $00
    ld d, b                                       ; $4986: $50
    nop                                           ; $4987: $00
    jr nz, jr_0f9_498a                            ; $4988: $20 $00

jr_0f9_498a:
    add b                                         ; $498a: $80
    nop                                           ; $498b: $00
    ld l, $00                                     ; $498c: $2e $00
    inc [hl]                                      ; $498e: $34
    dec bc                                        ; $498f: $0b
    call Call_000_2e02                            ; $4990: $cd $02 $2e
    ld bc, $000b                                  ; $4993: $01 $0b $00
    ld l, h                                       ; $4996: $6c
    ld bc, $0012                                  ; $4997: $01 $12 $00
    add hl, bc                                    ; $499a: $09
    ld [bc], a                                    ; $499b: $02
    inc d                                         ; $499c: $14
    nop                                           ; $499d: $00
    ld bc, $0600                                  ; $499e: $01 $00 $06
    nop                                           ; $49a1: $00
    dec b                                         ; $49a2: $05
    nop                                           ; $49a3: $00
    ld [bc], a                                    ; $49a4: $02
    nop                                           ; $49a5: $00
    ld [bc], a                                    ; $49a6: $02
    ld b, $00                                     ; $49a7: $06 $00
    sbc [hl]                                      ; $49a9: $9e
    ld bc, $3ec8                                  ; $49aa: $01 $c8 $3e
    ld e, b                                       ; $49ad: $58
    cp a                                          ; $49ae: $bf
    ld h, h                                       ; $49af: $64
    sbc [hl]                                      ; $49b0: $9e
    inc h                                         ; $49b1: $24
    rst $18                                       ; $49b2: $df
    ret c                                         ; $49b3: $d8

    and a                                         ; $49b4: $a7
    ld [hl], e                                    ; $49b5: $73
    adc a                                         ; $49b6: $8f
    ld a, l                                       ; $49b7: $7d
    add e                                         ; $49b8: $83
    call nz, $db3b                                ; $49b9: $c4 $3b $db
    inc h                                         ; $49bc: $24
    dec hl                                        ; $49bd: $2b
    sub h                                         ; $49be: $94
    jp c, $b90d                                   ; $49bf: $da $0d $b9

    ld b, $6d                                     ; $49c2: $06 $6d
    ld [bc], a                                    ; $49c4: $02
    xor e                                         ; $49c5: $ab
    db $10                                        ; $49c6: $10
    ld d, a                                       ; $49c7: $57
    ld [bc], a                                    ; $49c8: $02
    nop                                           ; $49c9: $00
    ldh [$80], a                                  ; $49ca: $e0 $80
    nop                                           ; $49cc: $00
    ld [$a000], sp                                ; $49cd: $08 $00 $a0
    nop                                           ; $49d0: $00
    jp nc, Jump_0f9_6900                          ; $49d1: $d2 $00 $69

    nop                                           ; $49d4: $00
    db $fd                                        ; $49d5: $fd
    ld h, b                                       ; $49d6: $60
    rst $38                                       ; $49d7: $ff
    ld c, l                                       ; $49d8: $4d
    rst $38                                       ; $49d9: $ff
    inc hl                                        ; $49da: $23
    rst $38                                       ; $49db: $ff
    call nc, $b82f                                ; $49dc: $d4 $2f $b8
    ld b, a                                       ; $49df: $47
    dec e                                         ; $49e0: $1d
    ld [c], a                                     ; $49e1: $e2
    sub d                                         ; $49e2: $92
    ld l, l                                       ; $49e3: $6d
    ld h, h                                       ; $49e4: $64
    cp e                                          ; $49e5: $bb
    push de                                       ; $49e6: $d5
    dec hl                                        ; $49e7: $2b
    cp [hl]                                       ; $49e8: $be
    ld bc, $0100                                  ; $49e9: $01 $00 $01
    nop                                           ; $49ec: $00
    ld [bc], a                                    ; $49ed: $02
    nop                                           ; $49ee: $00
    add hl, bc                                    ; $49ef: $09
    nop                                           ; $49f0: $00
    ld [bc], a                                    ; $49f1: $02
    nop                                           ; $49f2: $00
    ld d, a                                       ; $49f3: $57
    nop                                           ; $49f4: $00
    dec l                                         ; $49f5: $2d
    inc bc                                        ; $49f6: $03
    rst $18                                       ; $49f7: $df
    inc b                                         ; $49f8: $04
    rst $38                                       ; $49f9: $ff
    push de                                       ; $49fa: $d5
    rst $38                                       ; $49fb: $ff
    add hl, hl                                    ; $49fc: $29
    cp $8d                                        ; $49fd: $fe $8d
    ld a, [$48b7]                                 ; $49ff: $fa $b7 $48
    add sp, $17                                   ; $4a02: $e8 $17
    and e                                         ; $4a04: $a3
    ld e, [hl]                                    ; $4a05: $5e
    dec c                                         ; $4a06: $0d
    ld a, [c]                                     ; $4a07: $f2
    ld d, [hl]                                    ; $4a08: $56
    xor c                                         ; $4a09: $a9
    ld de, $0b7e                                  ; $4a0a: $11 $7e $0b
    ld a, h                                       ; $4a0d: $7c
    ld [de], a                                    ; $4a0e: $12
    ld e, l                                       ; $4a0f: $5d
    dec d                                         ; $4a10: $15
    ld a, [hl]                                    ; $4a11: $7e
    dec h                                         ; $4a12: $25
    ld a, d                                       ; $4a13: $7a
    jr z, @+$79                                   ; $4a14: $28 $77

    ld b, [hl]                                    ; $4a16: $46
    ld a, c                                       ; $4a17: $79
    inc a                                         ; $4a18: $3c
    ld h, e                                       ; $4a19: $63
    jr c, jr_0f9_4a63                             ; $4a1a: $38 $47

    ld b, l                                       ; $4a1c: $45
    ld a, [hl-]                                   ; $4a1d: $3a
    inc sp                                        ; $4a1e: $33
    ld c, [hl]                                    ; $4a1f: $4e
    inc h                                         ; $4a20: $24
    ld e, c                                       ; $4a21: $59
    dec bc                                        ; $4a22: $0b
    ld [hl], b                                    ; $4a23: $70
    dec e                                         ; $4a24: $1d
    ld [hl], b                                    ; $4a25: $70
    inc h                                         ; $4a26: $24
    ld d, b                                       ; $4a27: $50
    ld e, l                                       ; $4a28: $5d
    nop                                           ; $4a29: $00
    ld bc, $0003                                  ; $4a2a: $01 $03 $00
    add a                                         ; $4a2d: $87
    xor b                                         ; $4a2e: $a8
    nop                                           ; $4a2f: $00
    ld d, b                                       ; $4a30: $50
    nop                                           ; $4a31: $00
    ret nz                                        ; $4a32: $c0

    nop                                           ; $4a33: $00
    jr nz, @+$19                                  ; $4a34: $20 $17

    nop                                           ; $4a36: $00
    add a                                         ; $4a37: $87
    sub d                                         ; $4a38: $92
    inc b                                         ; $4a39: $04
    inc e                                         ; $4a3a: $1c
    nop                                           ; $4a3b: $00
    dec h                                         ; $4a3c: $25
    nop                                           ; $4a3d: $00
    dec b                                         ; $4a3e: $05
    add hl, de                                    ; $4a3f: $19
    nop                                           ; $4a40: $00
    adc e                                         ; $4a41: $8b
    ld bc, $9300                                  ; $4a42: $01 $00 $93
    inc h                                         ; $4a45: $24
    ld [hl], $00                                  ; $4a46: $36 $00
    dec c                                         ; $4a48: $0d
    nop                                           ; $4a49: $00
    ld c, d                                       ; $4a4a: $4a
    nop                                           ; $4a4b: $00
    ld [$0013], sp                                ; $4a4c: $08 $13 $00
    adc c                                         ; $4a4f: $89
    ld bc, $f700                                  ; $4a50: $01 $00 $f7
    nop                                           ; $4a53: $00
    ld c, c                                       ; $4a54: $49
    jr nz, jr_0f9_4ab8                            ; $4a55: $20 $61

    nop                                           ; $4a57: $00
    and d                                         ; $4a58: $a2
    inc bc                                        ; $4a59: $03
    nop                                           ; $4a5a: $00
    add c                                         ; $4a5b: $81
    add b                                         ; $4a5c: $80
    inc de                                        ; $4a5d: $13
    nop                                           ; $4a5e: $00
    rst $38                                       ; $4a5f: $ff
    add hl, hl                                    ; $4a60: $29
    ld [de], a                                    ; $4a61: $12
    ei                                            ; $4a62: $fb

jr_0f9_4a63:
    dec b                                         ; $4a63: $05
    ld a, [$ea06]                                 ; $4a64: $fa $06 $ea
    ld [$f2e7], a                                 ; $4a67: $ea $e7 $f2
    push hl                                       ; $4a6a: $e5
    ld a, [$02e6]                                 ; $4a6b: $fa $e6 $02
    rst $20                                       ; $4a6e: $e7
    ld a, [bc]                                    ; $4a6f: $0a
    db $ed                                        ; $4a70: $ed
    ld de, $e6f7                                  ; $4a71: $11 $f7 $e6
    rst $30                                       ; $4a74: $f7
    db $ed                                        ; $4a75: $ed
    rst $30                                       ; $4a76: $f7
    dec bc                                        ; $4a77: $0b
    db $fd                                        ; $4a78: $fd
    ld [de], a                                    ; $4a79: $12
    rlca                                          ; $4a7a: $07
    rst $20                                       ; $4a7b: $e7
    rlca                                          ; $4a7c: $07
    rst $28                                       ; $4a7d: $ef
    ld c, $f7                                     ; $4a7e: $0e $f7
    rrca                                          ; $4a80: $0f
    rst $38                                       ; $4a81: $ff
    rlca                                          ; $4a82: $07
    rlca                                          ; $4a83: $07
    ld [$150e], sp                                ; $4a84: $08 $0e $15
    rst $28                                       ; $4a87: $ef
    dec d                                         ; $4a88: $15
    dec b                                         ; $4a89: $05
    add c                                         ; $4a8a: $81
    ld bc, $0003                                  ; $4a8b: $01 $03 $00
    cp b                                          ; $4a8e: $b8
    dec b                                         ; $4a8f: $05
    nop                                           ; $4a90: $00
    inc de                                        ; $4a91: $13
    nop                                           ; $4a92: $00
    dec e                                         ; $4a93: $1d
    nop                                           ; $4a94: $00
    ld a, [bc]                                    ; $4a95: $0a
    nop                                           ; $4a96: $00
    dec [hl]                                      ; $4a97: $35
    nop                                           ; $4a98: $00
    ld b, $09                                     ; $4a99: $06 $09
    call nz, Call_0f9_6903                        ; $4a9b: $c4 $03 $69
    ld d, $13                                     ; $4a9e: $16 $13
    dec b                                         ; $4aa0: $05
    and c                                         ; $4aa1: $a1
    inc c                                         ; $4aa2: $0c
    ld d, d                                       ; $4aa3: $52
    ld [$06e9], sp                                ; $4aa4: $08 $e9 $06
    ld l, d                                       ; $4aa7: $6a
    ld de, $58a4                                  ; $4aa8: $11 $a4 $58
    ld b, $00                                     ; $4aab: $06 $00
    inc d                                         ; $4aad: $14
    nop                                           ; $4aae: $00
    ld [de], a                                    ; $4aaf: $12
    nop                                           ; $4ab0: $00
    ld e, l                                       ; $4ab1: $5d
    nop                                           ; $4ab2: $00
    ld l, $11                                     ; $4ab3: $2e $11
    ld c, d                                       ; $4ab5: $4a
    dec b                                         ; $4ab6: $05
    add hl, hl                                    ; $4ab7: $29

jr_0f9_4ab8:
    ld d, [hl]                                    ; $4ab8: $56
    and $09                                       ; $4ab9: $e6 $09
    ld [$68d5], sp                                ; $4abb: $08 $d5 $68
    add h                                         ; $4abe: $84
    xor d                                         ; $4abf: $aa
    inc sp                                        ; $4ac0: $33
    ld h, c                                       ; $4ac1: $61
    adc b                                         ; $4ac2: $88
    sub b                                         ; $4ac3: $90
    jr nc, jr_0f9_4ae6                            ; $4ac4: $30 $20

    or h                                          ; $4ac6: $b4
    ld [bc], a                                    ; $4ac7: $02
    jr nz, @-$62                                  ; $4ac8: $20 $9c

    ld b, b                                       ; $4aca: $40
    ret nz                                        ; $4acb: $c0

    ld de, $4000                                  ; $4acc: $11 $00 $40
    nop                                           ; $4acf: $00
    sub d                                         ; $4ad0: $92
    nop                                           ; $4ad1: $00
    jp c, $9d00                                   ; $4ad2: $da $00 $9d

    ld b, d                                       ; $4ad5: $42
    db $f4                                        ; $4ad6: $f4
    nop                                           ; $4ad7: $00
    xor c                                         ; $4ad8: $a9
    ld d, h                                       ; $4ad9: $54
    db $10                                        ; $4ada: $10
    db $e3                                        ; $4adb: $e3
    sbc $20                                       ; $4adc: $de $20
    ret nc                                        ; $4ade: $d0

    ld c, c                                       ; $4adf: $49
    inc [hl]                                      ; $4ae0: $34
    ld e, e                                       ; $4ae1: $5b
    add c                                         ; $4ae2: $81
    ret nz                                        ; $4ae3: $c0

    ld b, b                                       ; $4ae4: $40
    ld [hl+], a                                   ; $4ae5: $22

jr_0f9_4ae6:
    ld b, $00                                     ; $4ae6: $06 $00
    sbc d                                         ; $4ae8: $9a
    ld [hl+], a                                   ; $4ae9: $22
    nop                                           ; $4aea: $00
    sub [hl]                                      ; $4aeb: $96
    nop                                           ; $4aec: $00
    or d                                          ; $4aed: $b2
    nop                                           ; $4aee: $00
    or h                                          ; $4aef: $b4
    nop                                           ; $4af0: $00
    ld a, [$5601]                                 ; $4af1: $fa $01 $56
    xor c                                         ; $4af4: $a9
    add l                                         ; $4af5: $85
    ld a, d                                       ; $4af6: $7a
    ld sp, hl                                     ; $4af7: $f9
    ld b, [hl]                                    ; $4af8: $46
    sub [hl]                                      ; $4af9: $96
    add hl, hl                                    ; $4afa: $29
    add $a2                                       ; $4afb: $c6 $a2
    ld de, $2432                                  ; $4afd: $11 $32 $24
    adc h                                         ; $4b00: $8c
    add hl, bc                                    ; $4b01: $09
    inc b                                         ; $4b02: $04
    dec b                                         ; $4b03: $05
    nop                                           ; $4b04: $00
    and h                                         ; $4b05: $a4
    ld bc, $0080                                  ; $4b06: $01 $80 $00
    and b                                         ; $4b09: $a0
    nop                                           ; $4b0a: $00
    add b                                         ; $4b0b: $80
    nop                                           ; $4b0c: $00
    xor b                                         ; $4b0d: $a8
    nop                                           ; $4b0e: $00
    ret nc                                        ; $4b0f: $d0

    nop                                           ; $4b10: $00

jr_0f9_4b11:
    ld a, [hl+]                                   ; $4b11: $2a
    nop                                           ; $4b12: $00

jr_0f9_4b13:
    inc l                                         ; $4b13: $2c
    add b                                         ; $4b14: $80
    inc sp                                        ; $4b15: $33
    ld c, b                                       ; $4b16: $48
    dec d                                         ; $4b17: $15
    ldh [rOCPS], a                                ; $4b18: $e0 $6a
    db $10                                        ; $4b1a: $10
    rra                                           ; $4b1b: $1f
    ret nz                                        ; $4b1c: $c0

    ld h, d                                       ; $4b1d: $62
    inc e                                         ; $4b1e: $1c
    sbc c                                         ; $4b1f: $99
    add $44                                       ; $4b20: $c6 $44
    jp c, $4348                                   ; $4b22: $da $48 $43

    ld h, $30                                     ; $4b25: $26 $30
    ld b, b                                       ; $4b27: $40
    nop                                           ; $4b28: $00
    ld b, b                                       ; $4b29: $40
    inc bc                                        ; $4b2a: $03
    nop                                           ; $4b2b: $00
    add c                                         ; $4b2c: $81
    ld h, b                                       ; $4b2d: $60
    inc bc                                        ; $4b2e: $03
    nop                                           ; $4b2f: $00
    sbc c                                         ; $4b30: $99
    jr jr_0f9_4b33                                ; $4b31: $18 $00

jr_0f9_4b33:
    jr nc, jr_0f9_4b75                            ; $4b33: $30 $40

    ld h, b                                       ; $4b35: $60
    nop                                           ; $4b36: $00
    ld d, b                                       ; $4b37: $50
    nop                                           ; $4b38: $00
    ld d, b                                       ; $4b39: $50
    nop                                           ; $4b3a: $00
    xor [hl]                                      ; $4b3b: $ae
    db $10                                        ; $4b3c: $10
    or h                                          ; $4b3d: $b4
    ld b, b                                       ; $4b3e: $40
    jr z, jr_0f9_4b11                             ; $4b3f: $28 $d0

    ld a, l                                       ; $4b41: $7d
    add b                                         ; $4b42: $80
    db $10                                        ; $4b43: $10
    ld h, b                                       ; $4b44: $60
    sub h                                         ; $4b45: $94
    ld c, b                                       ; $4b46: $48
    jr nc, jr_0f9_4b49                            ; $4b47: $30 $00

jr_0f9_4b49:
    db $10                                        ; $4b49: $10
    inc bc                                        ; $4b4a: $03
    nop                                           ; $4b4b: $00
    sbc h                                         ; $4b4c: $9c
    ld e, a                                       ; $4b4d: $5f
    nop                                           ; $4b4e: $00
    inc b                                         ; $4b4f: $04
    inc bc                                        ; $4b50: $03
    jr jr_0f9_4b58                                ; $4b51: $18 $05

    cp h                                          ; $4b53: $bc
    inc bc                                        ; $4b54: $03
    ld b, $00                                     ; $4b55: $06 $00
    ld e, d                                       ; $4b57: $5a

jr_0f9_4b58:
    inc b                                         ; $4b58: $04
    dec b                                         ; $4b59: $05
    ld [de], a                                    ; $4b5a: $12
    ld d, b                                       ; $4b5b: $50
    rlca                                          ; $4b5c: $07
    dec bc                                        ; $4b5d: $0b
    nop                                           ; $4b5e: $00
    ld e, e                                       ; $4b5f: $5b
    inc b                                         ; $4b60: $04
    ld b, $00                                     ; $4b61: $06 $00
    or h                                          ; $4b63: $b4
    dec bc                                        ; $4b64: $0b
    inc e                                         ; $4b65: $1c
    ld bc, $0304                                  ; $4b66: $01 $04 $03
    inc bc                                        ; $4b69: $03
    nop                                           ; $4b6a: $00
    cp h                                          ; $4b6b: $bc
    ld bc, $7828                                  ; $4b6c: $01 $28 $78
    jr nz, @+$0e                                  ; $4b6f: $20 $0c

    inc l                                         ; $4b71: $2c
    jr jr_0f9_4bb4                                ; $4b72: $18 $40

    nop                                           ; $4b74: $00

jr_0f9_4b75:
    jr nz, jr_0f9_4bcb                            ; $4b75: $20 $54

    ld a, b                                       ; $4b77: $78
    ld [$4020], sp                                ; $4b78: $08 $20 $40
    nop                                           ; $4b7b: $00
    jr jr_0f9_4b9e                                ; $4b7c: $18 $20

jr_0f9_4b7e:
    ld [hl+], a                                   ; $4b7e: $22
    ld e, b                                       ; $4b7f: $58
    nop                                           ; $4b80: $00
    jr nc, jr_0f9_4bd7                            ; $4b81: $30 $54

    ld b, b                                       ; $4b83: $40
    db $10                                        ; $4b84: $10
    ld l, h                                       ; $4b85: $6c
    ld e, b                                       ; $4b86: $58
    inc e                                         ; $4b87: $1c

jr_0f9_4b88:
    ld c, b                                       ; $4b88: $48
    jr nc, jr_0f9_4b13                            ; $4b89: $30 $88

    inc b                                         ; $4b8b: $04
    nop                                           ; $4b8c: $00
    inc d                                         ; $4b8d: $14
    jr jr_0f9_4b94                                ; $4b8e: $18 $04

    ld [hl], b                                    ; $4b90: $70
    jr nc, jr_0f9_4bab                            ; $4b91: $30 $18

    ld [bc], a                                    ; $4b93: $02

jr_0f9_4b94:
    ld bc, $2a06                                  ; $4b94: $01 $06 $2a
    inc e                                         ; $4b97: $1c
    ld a, [bc]                                    ; $4b98: $0a
    inc bc                                        ; $4b99: $03
    inc h                                         ; $4b9a: $24
    jr @+$13                                      ; $4b9b: $18 $11

    ld [bc], a                                    ; $4b9d: $02

jr_0f9_4b9e:
    dec d                                         ; $4b9e: $15
    ld a, [bc]                                    ; $4b9f: $0a
    nop                                           ; $4ba0: $00
    inc e                                         ; $4ba1: $1c
    ld a, [bc]                                    ; $4ba2: $0a
    ld [bc], a                                    ; $4ba3: $02
    ld bc, $1936                                  ; $4ba4: $01 $36 $19
    dec a                                         ; $4ba7: $3d
    ld [bc], a                                    ; $4ba8: $02
    ld b, b                                       ; $4ba9: $40
    cp b                                          ; $4baa: $b8

jr_0f9_4bab:
    jr nz, jr_0f9_4c07                            ; $4bab: $20 $5a

    jr nz, jr_0f9_4bb7                            ; $4bad: $20 $08

    nop                                           ; $4baf: $00
    inc [hl]                                      ; $4bb0: $34
    ld c, b                                       ; $4bb1: $48
    ld d, b                                       ; $4bb2: $50
    nop                                           ; $4bb3: $00

jr_0f9_4bb4:
    ld e, d                                       ; $4bb4: $5a
    jr nz, @+$62                                  ; $4bb5: $20 $60

jr_0f9_4bb7:
    nop                                           ; $4bb7: $00
    dec l                                         ; $4bb8: $2d
    ld d, b                                       ; $4bb9: $50
    jr c, jr_0f9_4bbc                             ; $4bba: $38 $00

jr_0f9_4bbc:
    jr nz, jr_0f9_4b7e                            ; $4bbc: $20 $c0

    ld a, [$5800]                                 ; $4bbe: $fa $00 $58
    and b                                         ; $4bc1: $a0
    ld a, h                                       ; $4bc2: $7c
    nop                                           ; $4bc3: $00
    and b                                         ; $4bc4: $a0
    nop                                           ; $4bc5: $00
    ld d, b                                       ; $4bc6: $50
    nop                                           ; $4bc7: $00
    ld [$b606], sp                                ; $4bc8: $08 $06 $b6

jr_0f9_4bcb:
    add hl, bc                                    ; $4bcb: $09

jr_0f9_4bcc:
    dec l                                         ; $4bcc: $2d
    ld [de], a                                    ; $4bcd: $12
    ld a, c                                       ; $4bce: $79
    ld b, $0a                                     ; $4bcf: $06 $0a
    nop                                           ; $4bd1: $00
    ld [de], a                                    ; $4bd2: $12
    ld bc, $0002                                  ; $4bd3: $01 $02 $00
    dec c                                         ; $4bd6: $0d

jr_0f9_4bd7:
    ld [bc], a                                    ; $4bd7: $02
    jr jr_0f9_4bda                                ; $4bd8: $18 $00

jr_0f9_4bda:
    ld bc, $0600                                  ; $4bda: $01 $00 $06
    nop                                           ; $4bdd: $00
    ld bc, $0300                                  ; $4bde: $01 $00 $03
    nop                                           ; $4be1: $00
    ld [bc], a                                    ; $4be2: $02
    ld b, $00                                     ; $4be3: $06 $00
    cp h                                          ; $4be5: $bc
    jr nc, jr_0f9_4b88                            ; $4be6: $30 $a0

    ld h, h                                       ; $4be8: $64
    ldh a, [rNR41]                                ; $4be9: $f0 $20
    ld b, b                                       ; $4beb: $40
    inc l                                         ; $4bec: $2c
    ret z                                         ; $4bed: $c8

    jr jr_0f9_4c10                                ; $4bee: $18 $20

    add l                                         ; $4bf0: $85
    ld d, h                                       ; $4bf1: $54
    or [hl]                                       ; $4bf2: $b6
    ld [hl-], a                                   ; $4bf3: $32
    add $9c                                       ; $4bf4: $c6 $9c
    ld [hl], b                                    ; $4bf6: $70
    ld d, b                                       ; $4bf7: $50
    and [hl]                                      ; $4bf8: $a6
    xor a                                         ; $4bf9: $af
    db $10                                        ; $4bfa: $10
    ld d, c                                       ; $4bfb: $51
    ld a, [bc]                                    ; $4bfc: $0a
    cp h                                          ; $4bfd: $bc
    ld bc, $1269                                  ; $4bfe: $01 $69 $12
    xor c                                         ; $4c01: $a9
    nop                                           ; $4c02: $00
    ld b, $01                                     ; $4c03: $06 $01
    nop                                           ; $4c05: $00
    add b                                         ; $4c06: $80

jr_0f9_4c07:
    jr nz, jr_0f9_4c19                            ; $4c07: $20 $10

    ld c, b                                       ; $4c09: $48
    pop hl                                        ; $4c0a: $e1
    jp nc, Jump_0f9_4498                          ; $4c0b: $d2 $98 $44

    adc b                                         ; $4c0e: $88
    db $db                                        ; $4c0f: $db

jr_0f9_4c10:
    jr z, jr_0f9_4bcc                             ; $4c10: $28 $ba

    push bc                                       ; $4c12: $c5
    ld b, [hl]                                    ; $4c13: $46
    cp l                                          ; $4c14: $bd
    call nc, $ba2b                                ; $4c15: $d4 $2b $ba
    dec b                                         ; $4c18: $05

jr_0f9_4c19:
    ld c, e                                       ; $4c19: $4b
    db $10                                        ; $4c1a: $10
    sbc d                                         ; $4c1b: $9a
    nop                                           ; $4c1c: $00
    jp nc, $0800                                  ; $4c1d: $d2 $00 $08

    nop                                           ; $4c20: $00
    ld bc, $0003                                  ; $4c21: $01 $03 $00
    sbc e                                         ; $4c24: $9b
    ld bc, $0400                                  ; $4c25: $01 $00 $04
    ld de, $8602                                  ; $4c28: $11 $02 $86
    sub b                                         ; $4c2b: $90
    db $fc                                        ; $4c2c: $fc
    ld [hl], $05                                  ; $4c2d: $36 $05
    sub a                                         ; $4c2f: $97
    ld l, b                                       ; $4c30: $68
    inc d                                         ; $4c31: $14
    rst $08                                       ; $4c32: $cf
    xor d                                         ; $4c33: $aa
    ld d, l                                       ; $4c34: $55
    ld e, l                                       ; $4c35: $5d
    ld [bc], a                                    ; $4c36: $02
    or [hl]                                       ; $4c37: $b6
    ld b, b                                       ; $4c38: $40
    sub [hl]                                      ; $4c39: $96
    nop                                           ; $4c3a: $00
    ld [de], a                                    ; $4c3b: $12
    nop                                           ; $4c3c: $00
    ld b, b                                       ; $4c3d: $40
    nop                                           ; $4c3e: $00
    inc b                                         ; $4c3f: $04
    ld b, $00                                     ; $4c40: $06 $00
    add c                                         ; $4c42: $81
    dec bc                                        ; $4c43: $0b
    ld [bc], a                                    ; $4c44: $02
    ld bc, $03a3                                  ; $4c45: $01 $a3 $03
    ld bc, $0500                                  ; $4c48: $01 $00 $05
    inc b                                         ; $4c4b: $04
    ld d, $01                                     ; $4c4c: $16 $01
    ld [$3b0c], sp                                ; $4c4e: $08 $0c $3b
    inc de                                        ; $4c51: $13
    jr jr_0f9_4c61                                ; $4c52: $18 $0d

    inc hl                                        ; $4c54: $23
    or d                                          ; $4c55: $b2
    sbc c                                         ; $4c56: $99
    dec l                                         ; $4c57: $2d
    ld d, d                                       ; $4c58: $52
    sub d                                         ; $4c59: $92
    ld b, h                                       ; $4c5a: $44
    adc $21                                       ; $4c5b: $ce $21
    dec h                                         ; $4c5d: $25
    ret nc                                        ; $4c5e: $d0

    xor c                                         ; $4c5f: $a9
    ld b, b                                       ; $4c60: $40

jr_0f9_4c61:
    ld hl, sp+$00                                 ; $4c61: $f8 $00
    jr nz, jr_0f9_4cb5                            ; $4c63: $20 $50

    jr nc, @+$62                                  ; $4c65: $30 $60

    ld [hl], b                                    ; $4c67: $70
    nop                                           ; $4c68: $00
    ld b, b                                       ; $4c69: $40
    ld [bc], a                                    ; $4c6a: $02
    nop                                           ; $4c6b: $00
    sub d                                         ; $4c6c: $92
    jr nc, jr_0f9_4cb7                            ; $4c6d: $30 $48

    jr nz, jr_0f9_4c87                            ; $4c6f: $20 $16

    ld l, b                                       ; $4c71: $68
    inc hl                                        ; $4c72: $23
    ld b, b                                       ; $4c73: $40
    ld [hl], b                                    ; $4c74: $70
    nop                                           ; $4c75: $00
    inc l                                         ; $4c76: $2c
    nop                                           ; $4c77: $00
    ld d, b                                       ; $4c78: $50
    nop                                           ; $4c79: $00
    jr c, jr_0f9_4c7c                             ; $4c7a: $38 $00

jr_0f9_4c7c:
    ld c, b                                       ; $4c7c: $48
    nop                                           ; $4c7d: $00
    jr nz, jr_0f9_4c83                            ; $4c7e: $20 $03

    nop                                           ; $4c80: $00
    add c                                         ; $4c81: $81
    ld b, b                                       ; $4c82: $40

jr_0f9_4c83:
    dec b                                         ; $4c83: $05
    nop                                           ; $4c84: $00
    add e                                         ; $4c85: $83
    dec hl                                        ; $4c86: $2b

jr_0f9_4c87:
    nop                                           ; $4c87: $00
    ld [bc], a                                    ; $4c88: $02
    inc bc                                        ; $4c89: $03
    nop                                           ; $4c8a: $00
    add c                                         ; $4c8b: $81
    ld [bc], a                                    ; $4c8c: $02
    add hl, de                                    ; $4c8d: $19
    nop                                           ; $4c8e: $00
    add a                                         ; $4c8f: $87
    dec d                                         ; $4c90: $15
    ld [$0024], sp                                ; $4c91: $08 $24 $00
    stop                                          ; $4c94: $10 $00
    inc h                                         ; $4c96: $24
    dec d                                         ; $4c97: $15
    nop                                           ; $4c98: $00
    rst $38                                       ; $4c99: $ff
    add hl, bc                                    ; $4c9a: $09
    ld [bc], a                                    ; $4c9b: $02
    ld sp, hl                                     ; $4c9c: $f9
    ld a, [bc]                                    ; $4c9d: $0a
    or $05                                        ; $4c9e: $f6 $05
    or $ff                                        ; $4ca0: $f6 $ff
    or $02                                        ; $4ca2: $f6 $02
    inc b                                         ; $4ca4: $04
    nop                                           ; $4ca5: $00
    ld [bc], a                                    ; $4ca6: $02
    ld bc, $0285                                  ; $4ca7: $01 $85 $02
    inc bc                                        ; $4caa: $03
    dec b                                         ; $4cab: $05
    rlca                                          ; $4cac: $07
    dec b                                         ; $4cad: $05
    ld [bc], a                                    ; $4cae: $02
    dec bc                                        ; $4caf: $0b
    adc e                                         ; $4cb0: $8b
    scf                                           ; $4cb1: $37
    ld a, [hl-]                                   ; $4cb2: $3a
    ld b, [hl]                                    ; $4cb3: $46
    inc [hl]                                      ; $4cb4: $34

jr_0f9_4cb5:
    ld c, h                                       ; $4cb5: $4c
    ld [hl], h                                    ; $4cb6: $74

jr_0f9_4cb7:
    adc h                                         ; $4cb7: $8c
    ld l, b                                       ; $4cb8: $68
    sbc b                                         ; $4cb9: $98
    db $10                                        ; $4cba: $10
    ld [hl], b                                    ; $4cbb: $70
    ld [$0200], sp                                ; $4cbc: $08 $00 $02
    ld bc, $0302                                  ; $4cbf: $01 $02 $03
    ld [bc], a                                    ; $4cc2: $02
    ld b, $04                                     ; $4cc3: $06 $04
    inc b                                         ; $4cc5: $04
    ld d, $00                                     ; $4cc6: $16 $00
    rst $38                                       ; $4cc8: $ff
    add hl, bc                                    ; $4cc9: $09
    ld [bc], a                                    ; $4cca: $02
    ld sp, hl                                     ; $4ccb: $f9
    ld a, [bc]                                    ; $4ccc: $0a
    or $05                                        ; $4ccd: $f6 $05
    push af                                       ; $4ccf: $f5
    rst $38                                       ; $4cd0: $ff
    push af                                       ; $4cd1: $f5
    inc bc                                        ; $4cd2: $03
    ld b, $00                                     ; $4cd3: $06 $00
    ld [bc], a                                    ; $4cd5: $02
    ld bc, $0285                                  ; $4cd6: $01 $85 $02
    inc bc                                        ; $4cd9: $03
    nop                                           ; $4cda: $00
    rlca                                          ; $4cdb: $07
    dec b                                         ; $4cdc: $05
    ld [bc], a                                    ; $4cdd: $02
    dec bc                                        ; $4cde: $0b
    adc e                                         ; $4cdf: $8b

jr_0f9_4ce0:
    scf                                           ; $4ce0: $37
    ld a, [hl-]                                   ; $4ce1: $3a
    ld b, [hl]                                    ; $4ce2: $46
    inc [hl]                                      ; $4ce3: $34
    ld c, h                                       ; $4ce4: $4c
    ld [hl], h                                    ; $4ce5: $74
    adc h                                         ; $4ce6: $8c
    ld l, b                                       ; $4ce7: $68
    sbc b                                         ; $4ce8: $98
    db $10                                        ; $4ce9: $10
    ld [hl], b                                    ; $4cea: $70
    ld b, $00                                     ; $4ceb: $06 $00
    ld [bc], a                                    ; $4ced: $02
    ld bc, $0202                                  ; $4cee: $01 $02 $02
    ld [bc], a                                    ; $4cf1: $02
    ld c, $81                                     ; $4cf2: $0e $81
    inc b                                         ; $4cf4: $04
    inc bc                                        ; $4cf5: $03
    inc c                                         ; $4cf6: $0c
    ld [bc], a                                    ; $4cf7: $02
    ld [$0014], sp                                ; $4cf8: $08 $14 $00
    rst $38                                       ; $4cfb: $ff
    add hl, bc                                    ; $4cfc: $09
    ld [bc], a                                    ; $4cfd: $02
    ld sp, hl                                     ; $4cfe: $f9
    ld a, [bc]                                    ; $4cff: $0a
    or $05                                        ; $4d00: $f6 $05
    db $f4                                        ; $4d02: $f4
    rst $38                                       ; $4d03: $ff
    db $f4                                        ; $4d04: $f4
    inc b                                         ; $4d05: $04
    ld [$0300], sp                                ; $4d06: $08 $00 $03
    ld bc, $0202                                  ; $4d09: $01 $02 $02
    adc a                                         ; $4d0c: $8f
    dec b                                         ; $4d0d: $05
    rlca                                          ; $4d0e: $07
    add hl, bc                                    ; $4d0f: $09
    dec c                                         ; $4d10: $0d
    inc sp                                        ; $4d11: $33
    ld a, [hl-]                                   ; $4d12: $3a
    ld b, [hl]                                    ; $4d13: $46
    ld a, [hl-]                                   ; $4d14: $3a
    ld b, [hl]                                    ; $4d15: $46
    ld [hl], h                                    ; $4d16: $74
    adc h                                         ; $4d17: $8c
    ld l, b                                       ; $4d18: $68
    sbc b                                         ; $4d19: $98
    db $10                                        ; $4d1a: $10
    ld [hl], b                                    ; $4d1b: $70
    inc b                                         ; $4d1c: $04
    nop                                           ; $4d1d: $00
    ld [bc], a                                    ; $4d1e: $02
    ld bc, $0202                                  ; $4d1f: $01 $02 $02
    ld [bc], a                                    ; $4d22: $02
    ld c, $86                                     ; $4d23: $0e $86
    inc d                                         ; $4d25: $14
    inc e                                         ; $4d26: $1c
    inc c                                         ; $4d27: $0c
    inc e                                         ; $4d28: $1c
    ld [$0418], sp                                ; $4d29: $08 $18 $04
    db $10                                        ; $4d2c: $10
    stop                                          ; $4d2d: $10 $00
    rst $38                                       ; $4d2f: $ff
    add hl, bc                                    ; $4d30: $09
    ld [bc], a                                    ; $4d31: $02
    ld sp, hl                                     ; $4d32: $f9
    ld a, [bc]                                    ; $4d33: $0a
    or $05                                        ; $4d34: $f6 $05
    ld a, [c]                                     ; $4d36: $f2
    rst $38                                       ; $4d37: $ff
    ld a, [c]                                     ; $4d38: $f2
    ld b, $0c                                     ; $4d39: $06 $0c
    nop                                           ; $4d3b: $00
    inc bc                                        ; $4d3c: $03
    ld bc, $0202                                  ; $4d3d: $01 $02 $02
    adc a                                         ; $4d40: $8f
    dec c                                         ; $4d41: $0d
    ld c, $11                                     ; $4d42: $0e $11
    dec e                                         ; $4d44: $1d
    inc hl                                        ; $4d45: $23
    dec sp                                        ; $4d46: $3b
    ld b, a                                       ; $4d47: $47
    ld [hl-], a                                   ; $4d48: $32
    ld c, [hl]                                    ; $4d49: $4e
    ld [hl], h                                    ; $4d4a: $74
    adc h                                         ; $4d4b: $8c
    ld c, b                                       ; $4d4c: $48
    cp b                                          ; $4d4d: $b8
    db $10                                        ; $4d4e: $10
    ld [hl], b                                    ; $4d4f: $70
    ld [bc], a                                    ; $4d50: $02
    ld bc, $0202                                  ; $4d51: $01 $02 $02
    ld [bc], a                                    ; $4d54: $02
    inc b                                         ; $4d55: $04
    ld [bc], a                                    ; $4d56: $02
    inc c                                         ; $4d57: $0c
    ld [bc], a                                    ; $4d58: $02
    jr jr_0f9_4ce0                                ; $4d59: $18 $85

    ld e, b                                       ; $4d5b: $58
    ld a, b                                       ; $4d5c: $78
    jr nc, jr_0f9_4dcf                            ; $4d5d: $30 $70

    jr nz, jr_0f9_4d64                            ; $4d5f: $20 $03

    ld h, b                                       ; $4d61: $60
    ld [bc], a                                    ; $4d62: $02
    ld b, b                                       ; $4d63: $40

jr_0f9_4d64:
    inc c                                         ; $4d64: $0c
    nop                                           ; $4d65: $00
    rst $38                                       ; $4d66: $ff
    add hl, bc                                    ; $4d67: $09
    ld [bc], a                                    ; $4d68: $02
    ld sp, hl                                     ; $4d69: $f9
    ld a, [bc]                                    ; $4d6a: $0a
    or $05                                        ; $4d6b: $f6 $05
    or $ff                                        ; $4d6d: $f6 $ff
    or $03                                        ; $4d6f: $f6 $03
    ld [$0200], sp                                ; $4d71: $08 $00 $02
    ld bc, $0585                                  ; $4d74: $01 $85 $05
    rlca                                          ; $4d77: $07
    dec bc                                        ; $4d78: $0b
    rrca                                          ; $4d79: $0f
    ld a, [bc]                                    ; $4d7a: $0a
    ld [bc], a                                    ; $4d7b: $02
    ld d, $87                                     ; $4d7c: $16 $87
    ld l, $34                                     ; $4d7e: $2e $34
    ld c, h                                       ; $4d80: $4c
    ld l, b                                       ; $4d81: $68
    sbc b                                         ; $4d82: $98
    nop                                           ; $4d83: $00
    ld h, b                                       ; $4d84: $60
    ld [$0200], sp                                ; $4d85: $08 $00 $02
    ld bc, $0202                                  ; $4d88: $01 $02 $02
    ld [bc], a                                    ; $4d8b: $02
    inc b                                         ; $4d8c: $04
    ld [bc], a                                    ; $4d8d: $02
    inc c                                         ; $4d8e: $0c
    inc b                                         ; $4d8f: $04
    ld [$0014], sp                                ; $4d90: $08 $14 $00
    rst $38                                       ; $4d93: $ff
    add hl, bc                                    ; $4d94: $09
    ld [bc], a                                    ; $4d95: $02
    ld sp, hl                                     ; $4d96: $f9
    ld a, [bc]                                    ; $4d97: $0a
    or $05                                        ; $4d98: $f6 $05
    cp $fc                                        ; $4d9a: $fe $fc
    cp $fe                                        ; $4d9c: $fe $fe
    adc d                                         ; $4d9e: $8a
    inc [hl]                                      ; $4d9f: $34
    dec [hl]                                      ; $4da0: $35
    ld [hl], e                                    ; $4da1: $73
    inc c                                         ; $4da2: $0c
    inc l                                         ; $4da3: $2c
    db $db                                        ; $4da4: $db
    jp z, Jump_000_00ff                           ; $4da5: $ca $ff $00

    dec [hl]                                      ; $4da8: $35
    jr jr_0f9_4dab                                ; $4da9: $18 $00

jr_0f9_4dab:
    ld [bc], a                                    ; $4dab: $02
    ld [bc], a                                    ; $4dac: $02
    add h                                         ; $4dad: $84
    ld bc, $0203                                  ; $4dae: $01 $03 $02
    inc bc                                        ; $4db1: $03
    jr jr_0f9_4db4                                ; $4db2: $18 $00

jr_0f9_4db4:
    rst $38                                       ; $4db4: $ff
    add hl, bc                                    ; $4db5: $09
    ld [bc], a                                    ; $4db6: $02
    ld sp, hl                                     ; $4db7: $f9
    ld a, [bc]                                    ; $4db8: $0a
    or $05                                        ; $4db9: $f6 $05
    db $fd                                        ; $4dbb: $fd
    db $fc                                        ; $4dbc: $fc
    db $fd                                        ; $4dbd: $fd
    rst $38                                       ; $4dbe: $ff
    adc b                                         ; $4dbf: $88
    inc hl                                        ; $4dc0: $23
    ld bc, $847b                                  ; $4dc1: $01 $7b $84
    and b                                         ; $4dc4: $a0
    rst $18                                       ; $4dc5: $df
    ld b, h                                       ; $4dc6: $44
    ld a, a                                       ; $4dc7: $7f
    ld [bc], a                                    ; $4dc8: $02
    ld a, [hl+]                                   ; $4dc9: $2a
    rla                                           ; $4dca: $17
    nop                                           ; $4dcb: $00
    ld [bc], a                                    ; $4dcc: $02
    ld [bc], a                                    ; $4dcd: $02
    add e                                         ; $4dce: $83

jr_0f9_4dcf:
    dec b                                         ; $4dcf: $05
    ld bc, $0207                                  ; $4dd0: $01 $07 $02
    inc b                                         ; $4dd3: $04
    jr jr_0f9_4dd6                                ; $4dd4: $18 $00

jr_0f9_4dd6:
    rst $38                                       ; $4dd6: $ff
    add hl, bc                                    ; $4dd7: $09
    ld [bc], a                                    ; $4dd8: $02
    ld sp, hl                                     ; $4dd9: $f9
    ld a, [bc]                                    ; $4dda: $0a
    or $05                                        ; $4ddb: $f6 $05
    ei                                            ; $4ddd: $fb
    ei                                            ; $4dde: $fb
    ei                                            ; $4ddf: $fb
    nop                                           ; $4de0: $00
    adc b                                         ; $4de1: $88
    nop                                           ; $4de2: $00
    jr nz, jr_0f9_4e15                            ; $4de3: $20 $30

    ld d, b                                       ; $4de5: $50
    ldh [$90], a                                  ; $4de6: $e0 $90
    jr nz, jr_0f9_4e4a                            ; $4de8: $20 $60

    ld [bc], a                                    ; $4dea: $02
    ld [bc], a                                    ; $4deb: $02
    add d                                         ; $4dec: $82
    nop                                           ; $4ded: $00
    ld b, $14                                     ; $4dee: $06 $14
    nop                                           ; $4df0: $00
    ld [bc], a                                    ; $4df1: $02
    inc c                                         ; $4df2: $0c
    add h                                         ; $4df3: $84
    ld c, $12                                     ; $4df4: $0e $12
    jr jr_0f9_4e0c                                ; $4df6: $18 $14

    ld [bc], a                                    ; $4df8: $02
    nop                                           ; $4df9: $00
    add h                                         ; $4dfa: $84
    ld bc, $0003                                  ; $4dfb: $01 $03 $00
    ld [bc], a                                    ; $4dfe: $02
    inc d                                         ; $4dff: $14
    nop                                           ; $4e00: $00
    rst $38                                       ; $4e01: $ff
    add hl, bc                                    ; $4e02: $09
    ld [bc], a                                    ; $4e03: $02
    ld sp, hl                                     ; $4e04: $f9
    ld a, [bc]                                    ; $4e05: $0a
    or $05                                        ; $4e06: $f6 $05
    rst $38                                       ; $4e08: $ff
    ld a, [$01ff]                                 ; $4e09: $fa $ff $01

jr_0f9_4e0c:
    ld [bc], a                                    ; $4e0c: $02
    nop                                           ; $4e0d: $00
    add c                                         ; $4e0e: $81
    ld b, b                                       ; $4e0f: $40
    ld [bc], a                                    ; $4e10: $02
    nop                                           ; $4e11: $00
    add l                                         ; $4e12: $85
    ret nz                                        ; $4e13: $c0

    nop                                           ; $4e14: $00

jr_0f9_4e15:
    inc b                                         ; $4e15: $04
    ld [$160c], sp                                ; $4e16: $08 $0c $16
    nop                                           ; $4e19: $00
    add h                                         ; $4e1a: $84
    ld [$0010], sp                                ; $4e1b: $08 $10 $00
    jr jr_0f9_4e22                                ; $4e1e: $18 $02

    nop                                           ; $4e20: $00
    inc bc                                        ; $4e21: $03

jr_0f9_4e22:
    ld bc, $0381                                  ; $4e22: $01 $81 $03
    ld d, $00                                     ; $4e25: $16 $00
    rst $38                                       ; $4e27: $ff
    dec d                                         ; $4e28: $15
    ld [$10f1], sp                                ; $4e29: $08 $f1 $10
    ldh a, [rIF]                                  ; $4e2c: $f0 $0f
    or $f1                                        ; $4e2e: $f6 $f1
    ldh a, [$f9]                                  ; $4e30: $f0 $f9
    ldh a, [rSB]                                  ; $4e32: $f0 $01

Call_0f9_4e34:
    or $09                                        ; $4e34: $f6 $09
    nop                                           ; $4e36: $00
    db $f4                                        ; $4e37: $f4
    nop                                           ; $4e38: $00
    db $fc                                        ; $4e39: $fc
    nop                                           ; $4e3a: $00
    inc b                                         ; $4e3b: $04
    nop                                           ; $4e3c: $00
    ld b, $02                                     ; $4e3d: $06 $02
    ld bc, $079e                                  ; $4e3f: $01 $9e $07
    ld b, $0f                                     ; $4e42: $06 $0f
    add hl, bc                                    ; $4e44: $09
    rra                                           ; $4e45: $1f
    ld d, $3b                                     ; $4e46: $16 $3b
    inc l                                         ; $4e48: $2c
    ld [hl], d                                    ; $4e49: $72

jr_0f9_4e4a:
    ld e, l                                       ; $4e4a: $5d
    push hl                                       ; $4e4b: $e5
    cp e                                          ; $4e4c: $bb
    di                                            ; $4e4d: $f3
    xor a                                         ; $4e4e: $af
    di                                            ; $4e4f: $f3
    xor a                                         ; $4e50: $af
    rst $20                                       ; $4e51: $e7
    cp c                                          ; $4e52: $b9
    ld [hl], a                                    ; $4e53: $77
    ld e, b                                       ; $4e54: $58
    ld [hl], a                                    ; $4e55: $77
    ld e, b                                       ; $4e56: $58
    ld [hl], a                                    ; $4e57: $77
    ld e, c                                       ; $4e58: $59
    dec sp                                        ; $4e59: $3b
    cpl                                           ; $4e5a: $2f
    dec sp                                        ; $4e5b: $3b
    cpl                                           ; $4e5c: $2f
    dec a                                         ; $4e5d: $3d

jr_0f9_4e5e:
    dec hl                                        ; $4e5e: $2b
    ld [bc], a                                    ; $4e5f: $02
    ld bc, $0397                                  ; $4e60: $01 $97 $03
    ld [bc], a                                    ; $4e63: $02
    rrca                                          ; $4e64: $0f
    dec c                                         ; $4e65: $0d
    ld e, $13                                     ; $4e66: $1e $13
    dec a                                         ; $4e68: $3d
    ld l, $f0                                     ; $4e69: $2e $f0
    rst $18                                       ; $4e6b: $df
    rst $20                                       ; $4e6c: $e7
    jr c, jr_0f9_4e5e                             ; $4e6d: $38 $ef

    call c, Call_000_3edf                         ; $4e6f: $dc $df $3e
    rst $18                                       ; $4e72: $df
    ld a, $ef                                     ; $4e73: $3e $ef
    rra                                           ; $4e75: $1f
    ld a, a                                       ; $4e76: $7f
    sbc a                                         ; $4e77: $9f
    cp a                                          ; $4e78: $bf
    rlca                                          ; $4e79: $07
    rst $38                                       ; $4e7a: $ff
    ld [bc], a                                    ; $4e7b: $02
    add b                                         ; $4e7c: $80
    sub a                                         ; $4e7d: $97
    ret nz                                        ; $4e7e: $c0

    ld b, b                                       ; $4e7f: $40
    ldh a, [$b0]                                  ; $4e80: $f0 $b0
    ld a, b                                       ; $4e82: $78
    ret z                                         ; $4e83: $c8

    cp h                                          ; $4e84: $bc
    ld [hl], h                                    ; $4e85: $74
    rrca                                          ; $4e86: $0f
    ei                                            ; $4e87: $fb
    rst $20                                       ; $4e88: $e7
    inc e                                         ; $4e89: $1c
    rst $30                                       ; $4e8a: $f7
    dec sp                                        ; $4e8b: $3b
    ei                                            ; $4e8c: $fb
    ld a, h                                       ; $4e8d: $7c
    ei                                            ; $4e8e: $fb
    ld a, h                                       ; $4e8f: $7c
    rst $30                                       ; $4e90: $f7
    ld hl, sp-$02                                 ; $4e91: $f8 $fe
    ld sp, hl                                     ; $4e93: $f9
    db $fd                                        ; $4e94: $fd
    rlca                                          ; $4e95: $07
    rst $38                                       ; $4e96: $ff
    ld [bc], a                                    ; $4e97: $02
    add b                                         ; $4e98: $80
    and d                                         ; $4e99: $a2
    ldh [$60], a                                  ; $4e9a: $e0 $60
    ldh a, [$90]                                  ; $4e9c: $f0 $90
    ld hl, sp+$68                                 ; $4e9e: $f8 $68
    call c, Call_0f9_4e34                         ; $4ea0: $dc $34 $4e
    cp d                                          ; $4ea3: $ba
    and a                                         ; $4ea4: $a7
    db $dd                                        ; $4ea5: $dd
    rst $08                                       ; $4ea6: $cf
    push af                                       ; $4ea7: $f5
    rst $08                                       ; $4ea8: $cf
    push af                                       ; $4ea9: $f5
    rst $20                                       ; $4eaa: $e7
    sbc l                                         ; $4eab: $9d
    xor $1a                                       ; $4eac: $ee $1a
    xor $1a                                       ; $4eae: $ee $1a
    xor $9a                                       ; $4eb0: $ee $9a
    call c, $dcf4                                 ; $4eb2: $dc $f4 $dc
    db $f4                                        ; $4eb5: $f4
    cp h                                          ; $4eb6: $bc
    call nc, $0307                                ; $4eb7: $d4 $07 $03
    rlca                                          ; $4eba: $07
    inc bc                                        ; $4ebb: $03
    ld b, $07                                     ; $4ebc: $06 $07
    sub h                                         ; $4ebe: $94
    dec b                                         ; $4ebf: $05
    rlca                                          ; $4ec0: $07
    di                                            ; $4ec1: $f3
    xor h                                         ; $4ec2: $ac
    rst $38                                       ; $4ec3: $ff
    and b                                         ; $4ec4: $a0
    xor $b1                                       ; $4ec5: $ee $b1
    halt                                          ; $4ec7: $76
    ld e, c                                       ; $4ec8: $59
    ld [hl], e                                    ; $4ec9: $73
    ld e, h                                       ; $4eca: $5c
    ld [hl], h                                    ; $4ecb: $74
    ld e, e                                       ; $4ecc: $5b
    ld a, [hl-]                                   ; $4ecd: $3a
    dec l                                         ; $4ece: $2d
    ccf                                           ; $4ecf: $3f
    cpl                                           ; $4ed0: $2f
    ccf                                           ; $4ed1: $3f
    jr nz, @+$04                                  ; $4ed2: $20 $02

    rra                                           ; $4ed4: $1f
    ld c, $ff                                     ; $4ed5: $0e $ff
    add c                                         ; $4ed7: $81
    ld a, a                                       ; $4ed8: $7f
    ld [bc], a                                    ; $4ed9: $02
    rst $38                                       ; $4eda: $ff
    adc c                                         ; $4edb: $89
    di                                            ; $4edc: $f3
    rst $38                                       ; $4edd: $ff
    di                                            ; $4ede: $f3
    ld a, a                                       ; $4edf: $7f
    pop hl                                        ; $4ee0: $e1
    rst $38                                       ; $4ee1: $ff
    nop                                           ; $4ee2: $00
    ccf                                           ; $4ee3: $3f
    ret nz                                        ; $4ee4: $c0

jr_0f9_4ee5:
    inc bc                                        ; $4ee5: $03
    rst $38                                       ; $4ee6: $ff
    add c                                         ; $4ee7: $81
    nop                                           ; $4ee8: $00
    ld [bc], a                                    ; $4ee9: $02
    rst $38                                       ; $4eea: $ff
    add h                                         ; $4eeb: $84
    ld hl, sp-$10                                 ; $4eec: $f8 $f0
    ld hl, sp-$10                                 ; $4eee: $f8 $f0
    ld b, $f8                                     ; $4ef0: $06 $f8
    sub h                                         ; $4ef2: $94
    add sp, -$08                                  ; $4ef3: $e8 $f8
    di                                            ; $4ef5: $f3
    call $c1bf                                    ; $4ef6: $cd $bf $c1
    db $dd                                        ; $4ef9: $dd
    db $e3                                        ; $4efa: $e3
    db $db                                        ; $4efb: $db
    and $b3                                       ; $4efc: $e6 $b3
    adc $cb                                       ; $4efe: $ce $cb
    ld [hl], $17                                  ; $4f00: $36 $17
    db $ed                                        ; $4f02: $ed
    rst $38                                       ; $4f03: $ff
    db $fd                                        ; $4f04: $fd
    rst $38                                       ; $4f05: $ff
    ld bc, $fe02                                  ; $4f06: $01 $02 $fe
    inc c                                         ; $4f09: $0c
    nop                                           ; $4f0a: $00
    add [hl]                                      ; $4f0b: $86
    inc bc                                        ; $4f0c: $03
    ld bc, $0103                                  ; $4f0d: $01 $03 $01
    inc bc                                        ; $4f10: $03
    ld bc, $0206                                  ; $4f11: $01 $06 $02
    ld [$ff00], sp                                ; $4f14: $08 $00 $ff
    add hl, de                                    ; $4f17: $19
    ld a, [bc]                                    ; $4f18: $0a
    pop af                                        ; $4f19: $f1
    db $10                                        ; $4f1a: $10
    ldh a, [rIF]                                  ; $4f1b: $f0 $0f
    di                                            ; $4f1d: $f3
    pop af                                        ; $4f1e: $f1
    ldh a, [$f9]                                  ; $4f1f: $f0 $f9
    ld a, [c]                                     ; $4f21: $f2
    ld bc, $09f4                                  ; $4f22: $01 $f4 $09
    nop                                           ; $4f25: $00
    ldh a, [rP1]                                  ; $4f26: $f0 $00
    ld hl, sp+$00                                 ; $4f28: $f8 $00
    nop                                           ; $4f2a: $00
    ld [bc], a                                    ; $4f2b: $02
    ld [$0904], sp                                ; $4f2c: $08 $04 $09
    db $10                                        ; $4f2f: $10
    ei                                            ; $4f30: $fb
    inc b                                         ; $4f31: $04
    ld bc, $039c                                  ; $4f32: $01 $9c $03
    ld [bc], a                                    ; $4f35: $02
    rlca                                          ; $4f36: $07
    dec b                                         ; $4f37: $05
    rlca                                          ; $4f38: $07
    dec b                                         ; $4f39: $05
    ld c, $0b                                     ; $4f3a: $0e $0b
    ld c, $0b                                     ; $4f3c: $0e $0b
    ld e, $15                                     ; $4f3e: $1e $15
    ld a, $29                                     ; $4f40: $3e $29
    ccf                                           ; $4f42: $3f
    jr z, jr_0f9_4fc4                             ; $4f43: $28 $7f

    ld d, b                                       ; $4f45: $50
    add sp, -$49                                  ; $4f46: $e8 $b7
    rst $28                                       ; $4f48: $ef
    or a                                          ; $4f49: $b7
    rst $08                                       ; $4f4a: $cf
    ld [hl], a                                    ; $4f4b: $77
    rst $00                                       ; $4f4c: $c7
    ld a, a                                       ; $4f4d: $7f
    rst $20                                       ; $4f4e: $e7
    ld e, c                                       ; $4f4f: $59
    ld [bc], a                                    ; $4f50: $02
    jr nc, jr_0f9_4ee5                            ; $4f51: $30 $92

    ld a, a                                       ; $4f53: $7f
    ld c, a                                       ; $4f54: $4f
    rst $38                                       ; $4f55: $ff
    or b                                          ; $4f56: $b0
    rst $08                                       ; $4f57: $cf
    ld a, a                                       ; $4f58: $7f
    ld hl, sp+$47                                 ; $4f59: $f8 $47
    and [hl]                                      ; $4f5b: $a6
    reti                                          ; $4f5c: $d9


    rra                                           ; $4f5d: $1f
    pop hl                                        ; $4f5e: $e1
    ld a, a                                       ; $4f5f: $7f
    add e                                         ; $4f60: $83
    ld a, a                                       ; $4f61: $7f
    jp $f3ff                                      ; $4f62: $c3 $ff $f3


    inc b                                         ; $4f65: $04
    rst $38                                       ; $4f66: $ff
    add c                                         ; $4f67: $81
    ld a, a                                       ; $4f68: $7f
    ld [bc], a                                    ; $4f69: $02
    rst $38                                       ; $4f6a: $ff
    add c                                         ; $4f6b: $81
    ld a, a                                       ; $4f6c: $7f
    inc b                                         ; $4f6d: $04
    rst $38                                       ; $4f6e: $ff
    ld [bc], a                                    ; $4f6f: $02
    ldh a, [$8d]                                  ; $4f70: $f0 $8d
    rst $38                                       ; $4f72: $ff
    rrca                                          ; $4f73: $0f
    rst $38                                       ; $4f74: $ff
    ldh a, [$7f]                                  ; $4f75: $f0 $7f
    adc a                                         ; $4f77: $8f
    sbc $e1                                       ; $4f78: $de $e1
    db $dd                                        ; $4f7a: $dd
    ld [c], a                                     ; $4f7b: $e2
    jp c, $f7e7                                   ; $4f7c: $da $e7 $f7

    ld b, $ff                                     ; $4f7f: $06 $ff
    add l                                         ; $4f81: $85
    cp $ff                                        ; $4f82: $fe $ff
    cp $ff                                        ; $4f84: $fe $ff
    cp $06                                        ; $4f86: $fe $06
    rst $38                                       ; $4f88: $ff
    ld [bc], a                                    ; $4f89: $02
    ldh [$9e], a                                  ; $4f8a: $e0 $9e
    ld hl, sp+$18                                 ; $4f8c: $f8 $18
    db $fc                                        ; $4f8e: $fc
    db $e4                                        ; $4f8f: $e4
    sbc h                                         ; $4f90: $9c
    ld [hl], h                                    ; $4f91: $74
    ld a, $da                                     ; $4f92: $3e $da
    adc [hl]                                      ; $4f94: $8e
    ld a, [$bace]                                 ; $4f95: $fa $ce $ba
    sbc $3a                                       ; $4f98: $de $3a
    xor $1a                                       ; $4f9a: $ee $1a
    xor $1a                                       ; $4f9c: $ee $1a
    cp $0a                                        ; $4f9e: $fe $0a
    xor $fa                                       ; $4fa0: $ee $fa
    xor $fa                                       ; $4fa2: $ee $fa
    xor $fa                                       ; $4fa4: $ee $fa
    ld e, [hl]                                    ; $4fa6: $5e
    ld [$659f], a                                 ; $4fa7: $ea $9f $65
    ld b, $80                                     ; $4faa: $06 $80
    sub b                                         ; $4fac: $90
    ld [hl], e                                    ; $4fad: $73
    ld e, h                                       ; $4fae: $5c
    ld [hl], e                                    ; $4faf: $73
    ld e, h                                       ; $4fb0: $5c
    add hl, sp                                    ; $4fb1: $39
    ld l, $1d                                     ; $4fb2: $2e $1d
    ld d, $1e                                     ; $4fb4: $16 $1e
    rla                                           ; $4fb6: $17
    ld c, $0b                                     ; $4fb7: $0e $0b
    rlca                                          ; $4fb9: $07
    dec b                                         ; $4fba: $05
    inc bc                                        ; $4fbb: $03
    ld [bc], a                                    ; $4fbc: $02
    inc b                                         ; $4fbd: $04
    ld bc, $0006                                  ; $4fbe: $01 $06 $00
    dec b                                         ; $4fc1: $05
    ld a, a                                       ; $4fc2: $7f
    adc b                                         ; $4fc3: $88

jr_0f9_4fc4:
    ccf                                           ; $4fc4: $3f
    rst $38                                       ; $4fc5: $ff
    ccf                                           ; $4fc6: $3f
    rst $38                                       ; $4fc7: $ff
    rra                                           ; $4fc8: $1f
    rst $38                                       ; $4fc9: $ff
    ccf                                           ; $4fca: $3f

jr_0f9_4fcb:
    rst $38                                       ; $4fcb: $ff
    ld [bc], a                                    ; $4fcc: $02
    ld a, a                                       ; $4fcd: $7f
    sub c                                         ; $4fce: $91
    rst $38                                       ; $4fcf: $ff
    ld [hl], a                                    ; $4fd0: $77
    ei                                            ; $4fd1: $fb
    add [hl]                                      ; $4fd2: $86
    ld a, c                                       ; $4fd3: $79
    db $fd                                        ; $4fd4: $fd
    jp Jump_0f9_41fe                              ; $4fd5: $c3 $fe $41


    rst $30                                       ; $4fd8: $f7
    jr c, jr_0f9_4fcb                             ; $4fd9: $38 $f0

    sbc a                                         ; $4fdb: $9f
    ld a, c                                       ; $4fdc: $79
    ld e, [hl]                                    ; $4fdd: $5e
    ccf                                           ; $4fde: $3f
    cpl                                           ; $4fdf: $2f
    inc b                                         ; $4fe0: $04
    add b                                         ; $4fe1: $80
    dec bc                                        ; $4fe2: $0b
    rst $38                                       ; $4fe3: $ff
    sub c                                         ; $4fe4: $91
    di                                            ; $4fe5: $f3
    rst $38                                       ; $4fe6: $ff
    db $e3                                        ; $4fe7: $e3
    rst $38                                       ; $4fe8: $ff
    pop hl                                        ; $4fe9: $e1
    rst $38                                       ; $4fea: $ff
    ret nz                                        ; $4feb: $c0

    ld a, a                                       ; $4fec: $7f
    ldh [rIE], a                                  ; $4fed: $e0 $ff
    inc bc                                        ; $4fef: $03
    rra                                           ; $4ff0: $1f
    db $fc                                        ; $4ff1: $fc
    ld a, a                                       ; $4ff2: $7f
    db $e3                                        ; $4ff3: $e3
    db $fc                                        ; $4ff4: $fc
    sbc h                                         ; $4ff5: $9c
    inc b                                         ; $4ff6: $04
    add b                                         ; $4ff7: $80
    sub d                                         ; $4ff8: $92
    ei                                            ; $4ff9: $fb
    add [hl]                                      ; $4ffa: $86
    scf                                           ; $4ffb: $37
    adc $93                                       ; $4ffc: $ce $93
    xor $fb                                       ; $4ffe: $ee $fb
    add $8b                                       ; $5000: $c6 $8b
    or $cf                                        ; $5002: $f6 $cf
    ld [hl], $bf                                  ; $5004: $36 $bf
    ld a, b                                       ; $5006: $78
    rst $38                                       ; $5007: $ff
    rst $20                                       ; $5008: $e7
    ld hl, sp+$18                                 ; $5009: $f8 $18
    ld [bc], a                                    ; $500b: $02
    ldh [$08], a                                  ; $500c: $e0 $08
    nop                                           ; $500e: $00
    ld c, $01                                     ; $500f: $0e $01
    ld [de], a                                    ; $5011: $12
    nop                                           ; $5012: $00
    add h                                         ; $5013: $84
    rst $38                                       ; $5014: $ff
    and e                                         ; $5015: $a3
    ld a, h                                       ; $5016: $7c
    ld c, h                                       ; $5017: $4c
    ld [bc], a                                    ; $5018: $02
    jr nc, jr_0f9_5035                            ; $5019: $30 $1a

    nop                                           ; $501b: $00
    rst $38                                       ; $501c: $ff
    add hl, de                                    ; $501d: $19
    ld a, [bc]                                    ; $501e: $0a
    pop af                                        ; $501f: $f1
    db $10                                        ; $5020: $10
    ldh a, [rIF]                                  ; $5021: $f0 $0f
    di                                            ; $5023: $f3
    di                                            ; $5024: $f3
    ld a, [c]                                     ; $5025: $f2
    ei                                            ; $5026: $fb
    pop af                                        ; $5027: $f1
    inc bc                                        ; $5028: $03
    db $f4                                        ; $5029: $f4
    dec bc                                        ; $502a: $0b
    ld bc, $02f2                                  ; $502b: $01 $f2 $02
    ld a, [$0201]                                 ; $502e: $fa $01 $02
    ld bc, $040a                                  ; $5031: $01 $0a $04
    dec bc                                        ; $5034: $0b

jr_0f9_5035:
    ld de, $02fe                                  ; $5035: $11 $fe $02
    ld bc, $1f9e                                  ; $5038: $01 $9e $1f
    ld e, $3f                                     ; $503b: $1e $3f
    ld hl, $4f7f                                  ; $503d: $21 $7f $4f
    halt                                          ; $5040: $76
    ld e, c                                       ; $5041: $59
    ld a, l                                       ; $5042: $7d
    ld d, d                                       ; $5043: $52
    ld h, e                                       ; $5044: $63
    ld e, h                                       ; $5045: $5c
    rst $30                                       ; $5046: $f7
    sbc b                                         ; $5047: $98
    rst $28                                       ; $5048: $ef
    or b                                          ; $5049: $b0
    rst $28                                       ; $504a: $ef
    cp a                                          ; $504b: $bf
    rst $28                                       ; $504c: $ef
    cp a                                          ; $504d: $bf
    rst $38                                       ; $504e: $ff
    xor a                                         ; $504f: $af
    rst $30                                       ; $5050: $f7
    xor a                                         ; $5051: $af
    rst $38                                       ; $5052: $ff
    and e                                         ; $5053: $a3
    rst $38                                       ; $5054: $ff
    ld b, e                                       ; $5055: $43
    pop af                                        ; $5056: $f1
    ld c, a                                       ; $5057: $4f
    ld [bc], a                                    ; $5058: $02
    rrca                                          ; $5059: $0f
    sub h                                         ; $505a: $94
    rst $38                                       ; $505b: $ff
    ldh a, [rIE]                                  ; $505c: $f0 $ff
    rlca                                          ; $505e: $07
    ld sp, hl                                     ; $505f: $f9
    cp $07                                        ; $5060: $fe $07
    ld hl, sp-$06                                 ; $5062: $f8 $fa
    ld a, l                                       ; $5064: $7d
    ld a, [$ff7d]                                 ; $5065: $fa $7d $ff
    ld a, a                                       ; $5068: $7f
    rst $38                                       ; $5069: $ff
    ccf                                           ; $506a: $3f
    rst $38                                       ; $506b: $ff
    ccf                                           ; $506c: $3f
    rst $38                                       ; $506d: $ff
    ld a, a                                       ; $506e: $7f
    ld a, [bc]                                    ; $506f: $0a
    rst $38                                       ; $5070: $ff
    ld [bc], a                                    ; $5071: $02
    inc e                                         ; $5072: $1c
    sub [hl]                                      ; $5073: $96
    cp $e2                                        ; $5074: $fe $e2
    rst $38                                       ; $5076: $ff
    dec e                                         ; $5077: $1d
    add a                                         ; $5078: $87
    db $fc                                        ; $5079: $fc
    rst $28                                       ; $507a: $ef
    ld [de], a                                    ; $507b: $12
    rlca                                          ; $507c: $07
    ld a, [$fff1]                                 ; $507d: $fa $f1 $ff
    db $fd                                        ; $5080: $fd
    di                                            ; $5081: $f3
    cp $f1                                        ; $5082: $fe $f1
    rst $38                                       ; $5084: $ff
    ldh [rIE], a                                  ; $5085: $e0 $ff
    ldh [rIE], a                                  ; $5087: $e0 $ff
    rst $30                                       ; $5089: $f7
    rlca                                          ; $508a: $07
    rst $38                                       ; $508b: $ff
    add c                                         ; $508c: $81
    cp $06                                        ; $508d: $fe $06
    add b                                         ; $508f: $80
    sbc d                                         ; $5090: $9a
    ret nz                                        ; $5091: $c0

    ld b, b                                       ; $5092: $40
    ldh [$a0], a                                  ; $5093: $e0 $a0
    ldh [$a0], a                                  ; $5095: $e0 $a0
    ld [hl], b                                    ; $5097: $70
    ret nc                                        ; $5098: $d0

    ld [hl], b                                    ; $5099: $70
    ret nc                                        ; $509a: $d0

    cp b                                          ; $509b: $b8
    add sp, -$48                                  ; $509c: $e8 $b8
    add sp, -$28                                  ; $509e: $e8 $d8
    or b                                          ; $50a0: $b0
    ld a, h                                       ; $50a1: $7c
    sub h                                         ; $50a2: $94
    cp $1a                                        ; $50a3: $fe $1a
    xor $1a                                       ; $50a5: $ee $1a
    ld h, a                                       ; $50a7: $67
    sbc l                                         ; $50a8: $9d
    or a                                          ; $50a9: $b7
    call $8004                                    ; $50aa: $cd $04 $80
    sub h                                         ; $50ad: $94
    rst $30                                       ; $50ae: $f7
    xor a                                         ; $50af: $af
    rst $20                                       ; $50b0: $e7
    cp a                                          ; $50b1: $bf
    rst $28                                       ; $50b2: $ef
    or a                                          ; $50b3: $b7
    db $e3                                        ; $50b4: $e3
    cp a                                          ; $50b5: $bf
    di                                            ; $50b6: $f3
    xor h                                         ; $50b7: $ac
    ld sp, hl                                     ; $50b8: $f9
    or [hl]                                       ; $50b9: $b6
    ld a, h                                       ; $50ba: $7c
    ld e, a                                       ; $50bb: $5f
    ld a, $27                                     ; $50bc: $3e $27
    rra                                           ; $50be: $1f
    add hl, de                                    ; $50bf: $19
    rlca                                          ; $50c0: $07
    ld b, $02                                     ; $50c1: $06 $02
    ld bc, $0006                                  ; $50c3: $01 $06 $00
    ld [bc], a                                    ; $50c6: $02
    ld a, a                                       ; $50c7: $7f
    rlca                                          ; $50c8: $07
    rst $38                                       ; $50c9: $ff
    sub l                                         ; $50ca: $95
    ccf                                           ; $50cb: $3f
    rst $38                                       ; $50cc: $ff
    rra                                           ; $50cd: $1f
    rst $38                                       ; $50ce: $ff
    ccf                                           ; $50cf: $3f
    db $fd                                        ; $50d0: $fd
    ld a, $7f                                     ; $50d1: $3e $7f
    cp h                                          ; $50d3: $bc
    db $db                                        ; $50d4: $db
    db $fc                                        ; $50d5: $fc
    rst $38                                       ; $50d6: $ff
    ld h, b                                       ; $50d7: $60
    ld a, [$7e9d]                                 ; $50d8: $fa $9d $7e
    ld h, a                                       ; $50db: $67
    rra                                           ; $50dc: $1f
    add hl, de                                    ; $50dd: $19
    rlca                                          ; $50de: $07
    ld b, $02                                     ; $50df: $06 $02
    ld bc, $7f02                                  ; $50e1: $01 $02 $7f
    add c                                         ; $50e4: $81
    cp $08                                        ; $50e5: $fe $08
    rst $38                                       ; $50e7: $ff
    sub [hl]                                      ; $50e8: $96
    ld sp, hl                                     ; $50e9: $f9
    rst $38                                       ; $50ea: $ff
    ldh a, [rIE]                                  ; $50eb: $f0 $ff
    ld hl, sp+$7f                                 ; $50ed: $f8 $7f
    ld hl, sp-$01                                 ; $50ef: $f8 $ff
    ld a, b                                       ; $50f1: $78
    cp a                                          ; $50f2: $bf
    ld [hl], c                                    ; $50f3: $71
    di                                            ; $50f4: $f3
    ld c, $c7                                     ; $50f5: $0e $c7
    dec a                                         ; $50f7: $3d
    ld a, [hl]                                    ; $50f8: $7e
    adc d                                         ; $50f9: $8a
    ld e, h                                       ; $50fa: $5c
    db $f4                                        ; $50fb: $f4
    ld hl, sp+$68                                 ; $50fc: $f8 $68
    add b                                         ; $50fe: $80
    ld [bc], a                                    ; $50ff: $02
    nop                                           ; $5100: $00
    inc bc                                        ; $5101: $03
    add b                                         ; $5102: $80
    sub b                                         ; $5103: $90
    set 6, [hl]                                   ; $5104: $cb $f6
    rst $20                                       ; $5106: $e7
    db $dd                                        ; $5107: $dd
    adc $ba                                       ; $5108: $ce $ba
    db $fc                                        ; $510a: $fc
    inc d                                         ; $510b: $14
    ld hl, sp+$28                                 ; $510c: $f8 $28
    ldh a, [$50]                                  ; $510e: $f0 $50
    ldh [$a0], a                                  ; $5110: $e0 $a0
    ret nz                                        ; $5112: $c0

    ld b, b                                       ; $5113: $40
    ld [bc], a                                    ; $5114: $02
    add b                                         ; $5115: $80
    ld [$0200], sp                                ; $5116: $08 $00 $02
    ld bc, $001e                                  ; $5119: $01 $1e $00
    add d                                         ; $511c: $82
    rrca                                          ; $511d: $0f
    add hl, bc                                    ; $511e: $09
    ld [bc], a                                    ; $511f: $02
    ld b, $1c                                     ; $5120: $06 $1c
    nop                                           ; $5122: $00
    rst $38                                       ; $5123: $ff
    add hl, de                                    ; $5124: $19
    ld a, [bc]                                    ; $5125: $0a
    pop af                                        ; $5126: $f1
    db $10                                        ; $5127: $10
    ldh a, [rIF]                                  ; $5128: $f0 $0f
    or $f0                                        ; $512a: $f6 $f0
    pop af                                        ; $512c: $f1
    ld hl, sp-$10                                 ; $512d: $f8 $f0
    nop                                           ; $512f: $00
    push af                                       ; $5130: $f5
    ld [$0bfc], sp                                ; $5131: $08 $fc $0b
    ld bc, $00f3                                  ; $5134: $01 $f3 $00
    ei                                            ; $5137: $fb
    nop                                           ; $5138: $00
    inc bc                                        ; $5139: $03
    inc c                                         ; $513a: $0c
    dec b                                         ; $513b: $05
    db $10                                        ; $513c: $10
    db $fd                                        ; $513d: $fd
    ld [bc], a                                    ; $513e: $02
    ld bc, $079e                                  ; $513f: $01 $9e $07
    ld b, $0f                                     ; $5142: $06 $0f
    add hl, bc                                    ; $5144: $09
    ld a, $27                                     ; $5145: $3e $27
    ld a, c                                       ; $5147: $79
    ld e, [hl]                                    ; $5148: $5e
    push hl                                       ; $5149: $e5
    cp d                                          ; $514a: $ba
    db $eb                                        ; $514b: $eb
    or h                                          ; $514c: $b4
    ld a, e                                       ; $514d: $7b
    ld d, h                                       ; $514e: $54
    ld [hl], e                                    ; $514f: $73
    ld e, h                                       ; $5150: $5c
    ld [hl], a                                    ; $5151: $77
    ld e, c                                       ; $5152: $59
    ld [hl], a                                    ; $5153: $77
    ld e, e                                       ; $5154: $5b
    ld [hl], a                                    ; $5155: $77
    ld e, a                                       ; $5156: $5f
    dec sp                                        ; $5157: $3b
    cpl                                           ; $5158: $2f
    dec a                                         ; $5159: $3d
    dec hl                                        ; $515a: $2b
    ccf                                           ; $515b: $3f
    jr z, jr_0f9_519d                             ; $515c: $28 $3f

    jr z, @+$04                                   ; $515e: $28 $02

    ld bc, $0391                                  ; $5160: $01 $91 $03
    ld [bc], a                                    ; $5163: $02
    rrca                                          ; $5164: $0f
    dec c                                         ; $5165: $0d
    ld a, $33                                     ; $5166: $3e $33
    cp $cd                                        ; $5168: $fe $cd
    db $fc                                        ; $516a: $fc
    inc sp                                        ; $516b: $33
    db $fd                                        ; $516c: $fd
    db $e3                                        ; $516d: $e3
    ld c, a                                       ; $516e: $4f
    or e                                          ; $516f: $b3
    dec a                                         ; $5170: $3d
    di                                            ; $5171: $f3
    rst $20                                       ; $5172: $e7
    ld [bc], a                                    ; $5173: $02
    rst $38                                       ; $5174: $ff
    add c                                         ; $5175: $81
    ld a, a                                       ; $5176: $7f
    inc bc                                        ; $5177: $03
    rst $38                                       ; $5178: $ff
    add l                                         ; $5179: $85
    ccf                                           ; $517a: $3f
    rst $38                                       ; $517b: $ff
    ccf                                           ; $517c: $3f
    rst $38                                       ; $517d: $ff
    ld a, a                                       ; $517e: $7f
    ld [bc], a                                    ; $517f: $02
    rst $38                                       ; $5180: $ff
    ld [bc], a                                    ; $5181: $02
    ld h, b                                       ; $5182: $60
    sub h                                         ; $5183: $94
    ld hl, sp-$68                                 ; $5184: $f8 $98
    db $fc                                        ; $5186: $fc
    ld h, h                                       ; $5187: $64
    cp [hl]                                       ; $5188: $be
    ld a, [$dd27]                                 ; $5189: $fa $27 $dd
    add e                                         ; $518c: $83
    ld a, [hl]                                    ; $518d: $7e
    sub c                                         ; $518e: $91
    rst $28                                       ; $518f: $ef
    cp $c1                                        ; $5190: $fe $c1
    cp $f1                                        ; $5192: $fe $f1
    rst $38                                       ; $5194: $ff
    pop hl                                        ; $5195: $e1
    rst $38                                       ; $5196: $ff
    rst $20                                       ; $5197: $e7
    ld a, [bc]                                    ; $5198: $0a
    rst $38                                       ; $5199: $ff
    ld [bc], a                                    ; $519a: $02
    add b                                         ; $519b: $80
    sbc [hl]                                      ; $519c: $9e

jr_0f9_519d:
    ret nz                                        ; $519d: $c0

    ld b, b                                       ; $519e: $40
    ldh [$a0], a                                  ; $519f: $e0 $a0
    ld a, b                                       ; $51a1: $78
    ret c                                         ; $51a2: $d8

    db $fc                                        ; $51a3: $fc
    and h                                         ; $51a4: $a4
    cp [hl]                                       ; $51a5: $be
    jp c, $dda7                                   ; $51a6: $da $a7 $dd

    or e                                          ; $51a9: $b3
    adc $f9                                       ; $51aa: $ce $f9
    rlca                                          ; $51ac: $07
    db $fd                                        ; $51ad: $fd
    inc bc                                        ; $51ae: $03
    adc e                                         ; $51af: $8b
    push af                                       ; $51b0: $f5
    jp hl                                         ; $51b1: $e9


    rst $30                                       ; $51b2: $f7
    ei                                            ; $51b3: $fb
    or $fb                                        ; $51b4: $f6 $fb
    or $ff                                        ; $51b6: $f6 $ff
    ld b, h                                       ; $51b8: $44
    rst $38                                       ; $51b9: $ff
    dec b                                         ; $51ba: $05
    ld [bc], a                                    ; $51bb: $02
    inc b                                         ; $51bc: $04
    adc b                                         ; $51bd: $88
    ld b, $02                                     ; $51be: $06 $02
    rlca                                          ; $51c0: $07
    dec b                                         ; $51c1: $05
    ld b, $02                                     ; $51c2: $06 $02
    ld b, $02                                     ; $51c4: $06 $02
    ld b, $04                                     ; $51c6: $06 $04
    ld [bc], a                                    ; $51c8: $02
    nop                                           ; $51c9: $00
    adc [hl]                                      ; $51ca: $8e
    ld hl, sp+$28                                 ; $51cb: $f8 $28
    ldh a, [$50]                                  ; $51cd: $f0 $50
    ldh a, [$50]                                  ; $51cf: $f0 $50
    ldh a, [$90]                                  ; $51d1: $f0 $90
    ldh [$a0], a                                  ; $51d3: $e0 $a0
    ldh [$a0], a                                  ; $51d5: $e0 $a0
    ret nz                                        ; $51d7: $c0

    ld b, b                                       ; $51d8: $40
    inc b                                         ; $51d9: $04
    rlca                                          ; $51da: $07
    add c                                         ; $51db: $81
    inc bc                                        ; $51dc: $03
    ld [bc], a                                    ; $51dd: $02
    rlca                                          ; $51de: $07
    sub l                                         ; $51df: $95
    inc bc                                        ; $51e0: $03
    rlca                                          ; $51e1: $07
    inc bc                                        ; $51e2: $03
    ld sp, hl                                     ; $51e3: $f9
    and a                                         ; $51e4: $a7
    rst $30                                       ; $51e5: $f7
    xor a                                         ; $51e6: $af
    ei                                            ; $51e7: $fb
    and a                                         ; $51e8: $a7
    db $eb                                        ; $51e9: $eb
    or a                                          ; $51ea: $b7
    ld [hl], c                                    ; $51eb: $71
    ld e, [hl]                                    ; $51ec: $5e
    ld [hl], b                                    ; $51ed: $70
    ld e, a                                       ; $51ee: $5f
    ld a, h                                       ; $51ef: $7c
    ld e, e                                       ; $51f0: $5b
    ccf                                           ; $51f1: $3f
    daa                                           ; $51f2: $27
    rra                                           ; $51f3: $1f
    db $10                                        ; $51f4: $10
    ld [bc], a                                    ; $51f5: $02
    rrca                                          ; $51f6: $0f
    ld [bc], a                                    ; $51f7: $02
    nop                                           ; $51f8: $00
    ld [bc], a                                    ; $51f9: $02
    rlca                                          ; $51fa: $07
    rrca                                          ; $51fb: $0f
    rst $38                                       ; $51fc: $ff
    adc a                                         ; $51fd: $8f
    rst $18                                       ; $51fe: $df
    cp $cf                                        ; $51ff: $fe $cf
    rst $38                                       ; $5201: $ff
    rrca                                          ; $5202: $0f
    rst $38                                       ; $5203: $ff
    rrca                                          ; $5204: $0f
    inc [hl]                                      ; $5205: $34
    rst $08                                       ; $5206: $cf
    ei                                            ; $5207: $fb
    db $fc                                        ; $5208: $fc
    rst $38                                       ; $5209: $ff
    rrca                                          ; $520a: $0f
    rst $38                                       ; $520b: $ff
    ldh a, [$0a]                                  ; $520c: $f0 $0a
    ld hl, sp-$68                                 ; $520e: $f8 $98
    rst $38                                       ; $5210: $ff
    ldh a, [rIE]                                  ; $5211: $f0 $ff
    db $fc                                        ; $5213: $fc
    rst $38                                       ; $5214: $ff
    db $fc                                        ; $5215: $fc
    rst $18                                       ; $5216: $df
    db $fc                                        ; $5217: $fc
    cp $1d                                        ; $5218: $fe $1d
    call z, Call_0f9_7933                         ; $521a: $cc $33 $79
    add a                                         ; $521d: $87
    db $e3                                        ; $521e: $e3
    dec e                                         ; $521f: $1d
    adc e                                         ; $5220: $8b
    halt                                          ; $5221: $76
    rst $38                                       ; $5222: $ff
    cp $ff                                        ; $5223: $fe $ff
    ld bc, $0103                                  ; $5225: $01 $03 $01
    inc b                                         ; $5228: $04
    ld [bc], a                                    ; $5229: $02
    ld [bc], a                                    ; $522a: $02
    nop                                           ; $522b: $00
    ld [bc], a                                    ; $522c: $02
    ld hl, sp+$16                                 ; $522d: $f8 $16
    nop                                           ; $522f: $00
    ld [bc], a                                    ; $5230: $02
    ccf                                           ; $5231: $3f
    ld e, $00                                     ; $5232: $1e $00
    rst $38                                       ; $5234: $ff
    dec de                                        ; $5235: $1b
    dec bc                                        ; $5236: $0b
    pop af                                        ; $5237: $f1
    db $10                                        ; $5238: $10
    ldh a, [rIF]                                  ; $5239: $f0 $0f
    push af                                       ; $523b: $f5
    ldh a, [$f0]                                  ; $523c: $f0 $f0
    ld hl, sp-$0f                                 ; $523e: $f8 $f1
    nop                                           ; $5240: $00
    di                                            ; $5241: $f3
    ld [$ef01], sp                                ; $5242: $08 $01 $ef
    nop                                           ; $5245: $00
    rst $30                                       ; $5246: $f7
    nop                                           ; $5247: $00
    rst $38                                       ; $5248: $ff
    ld bc, $0307                                  ; $5249: $01 $07 $03
    ld [$fa10], sp                                ; $524c: $08 $10 $fa
    db $10                                        ; $524f: $10
    ei                                            ; $5250: $fb
    inc b                                         ; $5251: $04
    ld bc, $039c                                  ; $5252: $01 $9c $03
    ld [bc], a                                    ; $5255: $02
    rlca                                          ; $5256: $07
    dec b                                         ; $5257: $05
    rlca                                          ; $5258: $07
    dec b                                         ; $5259: $05
    rrca                                          ; $525a: $0f
    ld a, [bc]                                    ; $525b: $0a
    inc e                                         ; $525c: $1c
    rla                                           ; $525d: $17
    add hl, sp                                    ; $525e: $39
    cpl                                           ; $525f: $2f
    dec sp                                        ; $5260: $3b
    dec l                                         ; $5261: $2d
    ld [hl], e                                    ; $5262: $73
    ld e, h                                       ; $5263: $5c
    db $eb                                        ; $5264: $eb
    or h                                          ; $5265: $b4
    db $eb                                        ; $5266: $eb
    or h                                          ; $5267: $b4
    rst $10                                       ; $5268: $d7
    ld l, b                                       ; $5269: $68
    rst $10                                       ; $526a: $d7
    ld l, b                                       ; $526b: $68
    rst $20                                       ; $526c: $e7
    cp c                                          ; $526d: $b9
    ld [hl], a                                    ; $526e: $77
    ld e, e                                       ; $526f: $5b
    ld [bc], a                                    ; $5270: $02
    rrca                                          ; $5271: $0f
    sub l                                         ; $5272: $95
    rra                                           ; $5273: $1f
    db $10                                        ; $5274: $10
    ccf                                           ; $5275: $3f
    cpl                                           ; $5276: $2f
    halt                                          ; $5277: $76
    ld e, c                                       ; $5278: $59
    ldh [$bf], a                                  ; $5279: $e0 $bf
    ret                                           ; $527b: $c9


    halt                                          ; $527c: $76
    rst $30                                       ; $527d: $f7
    ld c, [hl]                                    ; $527e: $4e
    rst $28                                       ; $527f: $ef
    sbc a                                         ; $5280: $9f
    rst $28                                       ; $5281: $ef
    rra                                           ; $5282: $1f
    rst $30                                       ; $5283: $f7
    rrca                                          ; $5284: $0f
    ccf                                           ; $5285: $3f
    rst $08                                       ; $5286: $cf
    rst $18                                       ; $5287: $df
    ld [$81ff], sp                                ; $5288: $08 $ff $81
    ccf                                           ; $528b: $3f
    ld [bc], a                                    ; $528c: $02
    ldh [$93], a                                  ; $528d: $e0 $93
    db $fc                                        ; $528f: $fc
    inc e                                         ; $5290: $1c
    rst $38                                       ; $5291: $ff
    db $e3                                        ; $5292: $e3
    rra                                           ; $5293: $1f
    db $fc                                        ; $5294: $fc
    rst $20                                       ; $5295: $e7
    dec de                                        ; $5296: $1b
    ei                                            ; $5297: $fb
    inc e                                         ; $5298: $1c
    db $fd                                        ; $5299: $fd
    ld a, $fd                                     ; $529a: $3e $fd
    ld a, $fb                                     ; $529c: $3e $fb
    db $fc                                        ; $529e: $fc
    rst $38                                       ; $529f: $ff
    db $fc                                        ; $52a0: $fc
    cp $0b                                        ; $52a1: $fe $0b
    rst $38                                       ; $52a3: $ff
    ld [bc], a                                    ; $52a4: $02
    add b                                         ; $52a5: $80
    sbc [hl]                                      ; $52a6: $9e
    ldh a, [rSVBK]                                ; $52a7: $f0 $70
    cp $8e                                        ; $52a9: $fe $8e
    ld a, a                                       ; $52ab: $7f
    pop af                                        ; $52ac: $f1
    adc a                                         ; $52ad: $8f
    ld a, l                                       ; $52ae: $7d
    rst $10                                       ; $52af: $d7
    dec l                                         ; $52b0: $2d
    rst $28                                       ; $52b1: $ef
    dec d                                         ; $52b2: $15
    daa                                           ; $52b3: $27
    db $dd                                        ; $52b4: $dd
    rst $10                                       ; $52b5: $d7
    db $ed                                        ; $52b6: $ed
    rst $30                                       ; $52b7: $f7
    db $ed                                        ; $52b8: $ed
    rst $38                                       ; $52b9: $ff
    push hl                                       ; $52ba: $e5
    rst $38                                       ; $52bb: $ff
    push bc                                       ; $52bc: $c5
    rst $38                                       ; $52bd: $ff
    dec b                                         ; $52be: $05
    rst $38                                       ; $52bf: $ff
    dec b                                         ; $52c0: $05
    rst $38                                       ; $52c1: $ff
    dec b                                         ; $52c2: $05
    rst $38                                       ; $52c3: $ff
    dec b                                         ; $52c4: $05
    inc b                                         ; $52c5: $04
    add b                                         ; $52c6: $80
    inc b                                         ; $52c7: $04
    nop                                           ; $52c8: $00
    adc h                                         ; $52c9: $8c
    add hl, sp                                    ; $52ca: $39
    cpl                                           ; $52cb: $2f
    inc e                                         ; $52cc: $1c
    rla                                           ; $52cd: $17
    rrca                                          ; $52ce: $0f
    ld a, [bc]                                    ; $52cf: $0a
    rlca                                          ; $52d0: $07
    dec b                                         ; $52d1: $05
    rlca                                          ; $52d2: $07
    dec b                                         ; $52d3: $05
    inc bc                                        ; $52d4: $03
    ld [bc], a                                    ; $52d5: $02
    inc b                                         ; $52d6: $04
    ld bc, $0008                                  ; $52d7: $01 $08 $00
    add [hl]                                      ; $52da: $86
    ld a, a                                       ; $52db: $7f
    rra                                           ; $52dc: $1f
    ld a, a                                       ; $52dd: $7f
    ccf                                           ; $52de: $3f
    ld a, a                                       ; $52df: $7f
    ccf                                           ; $52e0: $3f
    inc b                                         ; $52e1: $04
    ld a, a                                       ; $52e2: $7f
    ld [bc], a                                    ; $52e3: $02
    rst $38                                       ; $52e4: $ff
    sub h                                         ; $52e5: $94
    rst $18                                       ; $52e6: $df
    rst $38                                       ; $52e7: $ff
    ccf                                           ; $52e8: $3f
    rst $08                                       ; $52e9: $cf
    rst $30                                       ; $52ea: $f7
    rrca                                          ; $52eb: $0f
    rst $28                                       ; $52ec: $ef
    rra                                           ; $52ed: $1f
    rst $28                                       ; $52ee: $ef
    sbc a                                         ; $52ef: $9f
    rst $30                                       ; $52f0: $f7
    ld c, [hl]                                    ; $52f1: $4e
    ret                                           ; $52f2: $c9


    halt                                          ; $52f3: $76
    ldh [$bf], a                                  ; $52f4: $e0 $bf
    halt                                          ; $52f6: $76
    ld e, c                                       ; $52f7: $59
    ccf                                           ; $52f8: $3f
    cpl                                           ; $52f9: $2f
    ld [bc], a                                    ; $52fa: $02
    add b                                         ; $52fb: $80
    dec c                                         ; $52fc: $0d
    rst $38                                       ; $52fd: $ff
    add d                                         ; $52fe: $82
    cp $fd                                        ; $52ff: $fe $fd
    ld [bc], a                                    ; $5301: $02
    cp $8d                                        ; $5302: $fe $8d
    sbc a                                         ; $5304: $9f
    cp $9f                                        ; $5305: $fe $9f
    db $fd                                        ; $5307: $fd
    ld c, $f3                                     ; $5308: $0e $f3
    dec c                                         ; $530a: $0d
    rrca                                          ; $530b: $0f
    cp $7f                                        ; $530c: $fe $7f
    pop af                                        ; $530e: $f1
    cp $8e                                        ; $530f: $fe $8e
    inc b                                         ; $5311: $04
    add b                                         ; $5312: $80
    sub [hl]                                      ; $5313: $96
    rst $38                                       ; $5314: $ff
    ld [c], a                                     ; $5315: $e2
    rst $38                                       ; $5316: $ff
    ld a, [c]                                     ; $5317: $f2
    ei                                            ; $5318: $fb
    or $6b                                        ; $5319: $f6 $6b
    or $93                                        ; $531b: $f6 $93
    ld l, [hl]                                    ; $531d: $6e
    rst $30                                       ; $531e: $f7
    ld a, [bc]                                    ; $531f: $0a
    db $eb                                        ; $5320: $eb
    ld d, $c7                                     ; $5321: $16 $c7
    ld a, $bf                                     ; $5323: $3e $bf
    ld a, b                                       ; $5325: $78
    rst $38                                       ; $5326: $ff
    rst $00                                       ; $5327: $c7
    ld hl, sp+$38                                 ; $5328: $f8 $38
    ld [bc], a                                    ; $532a: $02
    ret nz                                        ; $532b: $c0

    inc b                                         ; $532c: $04
    nop                                           ; $532d: $00
    ld [de], a                                    ; $532e: $12
    ld bc, $000e                                  ; $532f: $01 $0e $00
    add d                                         ; $5332: $82
    rst $38                                       ; $5333: $ff
    add e                                         ; $5334: $83
    ld [bc], a                                    ; $5335: $02
    ld a, h                                       ; $5336: $7c
    inc e                                         ; $5337: $1c
    nop                                           ; $5338: $00
    ld [bc], a                                    ; $5339: $02
    ld bc, $001e                                  ; $533a: $01 $1e $00
    rst $38                                       ; $533d: $ff
    add hl, de                                    ; $533e: $19
    ld a, [bc]                                    ; $533f: $0a
    pop af                                        ; $5340: $f1
    db $10                                        ; $5341: $10
    ldh a, [rIF]                                  ; $5342: $f0 $0f
    db $f4                                        ; $5344: $f4
    ld a, [c]                                     ; $5345: $f2
    di                                            ; $5346: $f3
    ld a, [$02f2]                                 ; $5347: $fa $f2 $02
    ld a, [c]                                     ; $534a: $f2
    add hl, bc                                    ; $534b: $09
    ld [bc], a                                    ; $534c: $02
    ldh a, [$03]                                  ; $534d: $f0 $03
    ld hl, sp+$02                                 ; $534f: $f8 $02
    nop                                           ; $5351: $00
    ld [bc], a                                    ; $5352: $02
    ld [$0b02], sp                                ; $5353: $08 $02 $0b
    ld [de], a                                    ; $5356: $12
    ei                                            ; $5357: $fb
    ld [bc], a                                    ; $5358: $02
    rrca                                          ; $5359: $0f
    sbc [hl]                                      ; $535a: $9e
    rra                                           ; $535b: $1f
    db $10                                        ; $535c: $10
    rra                                           ; $535d: $1f
    rla                                           ; $535e: $17
    ld a, [hl-]                                   ; $535f: $3a
    dec l                                         ; $5360: $2d
    jr c, jr_0f9_5392                             ; $5361: $38 $2f

    dec a                                         ; $5363: $3d
    dec hl                                        ; $5364: $2b
    ld [hl], l                                    ; $5365: $75
    ld e, e                                       ; $5366: $5b
    ld a, e                                       ; $5367: $7b
    ld d, a                                       ; $5368: $57
    ld a, l                                       ; $5369: $7d
    ld d, e                                       ; $536a: $53
    ld a, [hl]                                    ; $536b: $7e
    ld d, c                                       ; $536c: $51
    rst $28                                       ; $536d: $ef
    or c                                          ; $536e: $b1
    ld sp, hl                                     ; $536f: $f9
    and a                                         ; $5370: $a7
    rst $38                                       ; $5371: $ff
    xor a                                         ; $5372: $af
    rst $28                                       ; $5373: $ef
    cp a                                          ; $5374: $bf
    rst $08                                       ; $5375: $cf
    ld a, a                                       ; $5376: $7f
    rst $18                                       ; $5377: $df
    ld h, a                                       ; $5378: $67
    ld [bc], a                                    ; $5379: $02
    ld a, a                                       ; $537a: $7f
    adc [hl]                                      ; $537b: $8e
    rst $38                                       ; $537c: $ff
    add b                                         ; $537d: $80
    rst $38                                       ; $537e: $ff
    ld a, a                                       ; $537f: $7f
    adc b                                         ; $5380: $88
    rst $30                                       ; $5381: $f7
    ccf                                           ; $5382: $3f
    rst $00                                       ; $5383: $c7
    rst $38                                       ; $5384: $ff
    rlca                                          ; $5385: $07
    rst $38                                       ; $5386: $ff
    add a                                         ; $5387: $87
    rst $38                                       ; $5388: $ff
    rst $00                                       ; $5389: $c7
    db $10                                        ; $538a: $10
    rst $38                                       ; $538b: $ff
    ld [bc], a                                    ; $538c: $02
    ld a, a                                       ; $538d: $7f
    sub b                                         ; $538e: $90
    rst $38                                       ; $538f: $ff
    add b                                         ; $5390: $80
    rst $38                                       ; $5391: $ff

jr_0f9_5392:
    ld a, a                                       ; $5392: $7f
    pop de                                        ; $5393: $d1
    cp a                                          ; $5394: $bf
    rst $20                                       ; $5395: $e7
    jr jr_0f9_53d4                                ; $5396: $18 $3c

    jp $cbb4                                      ; $5398: $c3 $b4 $cb


    ld h, l                                       ; $539b: $65
    sbc [hl]                                      ; $539c: $9e
    rst $28                                       ; $539d: $ef
    cp $03                                        ; $539e: $fe $03
    rst $38                                       ; $53a0: $ff
    add a                                         ; $53a1: $87
    cp $ff                                        ; $53a2: $fe $ff
    ld hl, sp-$01                                 ; $53a4: $f8 $ff
    db $fc                                        ; $53a6: $fc
    rst $38                                       ; $53a7: $ff
    db $fc                                        ; $53a8: $fc
    inc b                                         ; $53a9: $04
    rst $38                                       ; $53aa: $ff
    ld [bc], a                                    ; $53ab: $02
    ld b, b                                       ; $53ac: $40
    sbc [hl]                                      ; $53ad: $9e
    ld h, b                                       ; $53ae: $60
    jr nz, jr_0f9_5411                            ; $53af: $20 $60

    jr nz, jr_0f9_5413                            ; $53b1: $20 $60

    jr nz, jr_0f9_5425                            ; $53b3: $20 $70

    ld d, b                                       ; $53b5: $50
    ld [hl], b                                    ; $53b6: $70
    ld d, b                                       ; $53b7: $50
    jr c, jr_0f9_5422                             ; $53b8: $38 $68

    jr c, jr_0f9_5424                             ; $53ba: $38 $68

    ld a, b                                       ; $53bc: $78
    jr z, @+$7e                                   ; $53bd: $28 $7c

    inc d                                         ; $53bf: $14
    ld a, h                                       ; $53c0: $7c
    inc d                                         ; $53c1: $14
    ld l, [hl]                                    ; $53c2: $6e
    ld a, [de]                                    ; $53c3: $1a
    ld a, [hl]                                    ; $53c4: $7e
    ld a, [bc]                                    ; $53c5: $0a
    ld a, [hl]                                    ; $53c6: $7e
    ld a, [bc]                                    ; $53c7: $0a
    ld [hl], a                                    ; $53c8: $77
    dec l                                         ; $53c9: $2d
    ld [hl], a                                    ; $53ca: $77
    ld l, l                                       ; $53cb: $6d
    inc b                                         ; $53cc: $04
    ld b, b                                       ; $53cd: $40
    sub b                                         ; $53ce: $90
    ld [hl], a                                    ; $53cf: $77
    ld e, b                                       ; $53d0: $58
    ld a, e                                       ; $53d1: $7b
    ld d, h                                       ; $53d2: $54
    db $eb                                        ; $53d3: $eb

jr_0f9_53d4:
    or h                                          ; $53d4: $b4
    db $ed                                        ; $53d5: $ed
    or d                                          ; $53d6: $b2
    ld [hl], c                                    ; $53d7: $71
    ld e, [hl]                                    ; $53d8: $5e
    inc a                                         ; $53d9: $3c
    cpl                                           ; $53da: $2f
    ld e, $13                                     ; $53db: $1e $13
    rrca                                          ; $53dd: $0f
    inc c                                         ; $53de: $0c
    ld [bc], a                                    ; $53df: $02
    inc bc                                        ; $53e0: $03
    ld a, [bc]                                    ; $53e1: $0a
    nop                                           ; $53e2: $00
    ld [bc], a                                    ; $53e3: $02
    ccf                                           ; $53e4: $3f
    adc b                                         ; $53e5: $88
    rst $38                                       ; $53e6: $ff
    ccf                                           ; $53e7: $3f
    rst $38                                       ; $53e8: $ff
    ccf                                           ; $53e9: $3f
    rst $38                                       ; $53ea: $ff
    ld a, a                                       ; $53eb: $7f
    rst $38                                       ; $53ec: $ff
    ld a, a                                       ; $53ed: $7f
    ld [bc], a                                    ; $53ee: $02
    rst $38                                       ; $53ef: $ff
    sub b                                         ; $53f0: $90
    ld [hl], a                                    ; $53f1: $77
    ei                                            ; $53f2: $fb
    dec c                                         ; $53f3: $0d
    di                                            ; $53f4: $f3
    cp l                                          ; $53f5: $bd
    jp Jump_0f9_73ed                              ; $53f6: $c3 $ed $73


    ei                                            ; $53f9: $fb
    sbc h                                         ; $53fa: $9c
    ld a, [hl]                                    ; $53fb: $7e
    ld h, a                                       ; $53fc: $67
    rra                                           ; $53fd: $1f
    add hl, de                                    ; $53fe: $19
    rlca                                          ; $53ff: $07
    ld b, $02                                     ; $5400: $06 $02
    ld bc, $0002                                  ; $5402: $01 $02 $00
    ld [bc], a                                    ; $5405: $02
    ccf                                           ; $5406: $3f
    dec bc                                        ; $5407: $0b
    rst $38                                       ; $5408: $ff
    xor e                                         ; $5409: $ab
    rst $30                                       ; $540a: $f7
    rst $38                                       ; $540b: $ff
    jp $e1fe                                      ; $540c: $c3 $fe $e1


    cp $c1                                        ; $540f: $fe $c1

jr_0f9_5411:
    ld hl, sp-$39                                 ; $5411: $f8 $c7

jr_0f9_5413:
    add e                                         ; $5413: $83
    ld a, a                                       ; $5414: $7f
    rlca                                          ; $5415: $07
    db $fc                                        ; $5416: $fc

jr_0f9_5417:
    sbc a                                         ; $5417: $9f
    ei                                            ; $5418: $fb
    db $fc                                        ; $5419: $fc
    ld h, h                                       ; $541a: $64
    ld hl, sp-$68                                 ; $541b: $f8 $98
    jp hl                                         ; $541d: $e9


    rst $30                                       ; $541e: $f7
    xor e                                         ; $541f: $ab
    push af                                       ; $5420: $f5
    reti                                          ; $5421: $d9


jr_0f9_5422:
    and a                                         ; $5422: $a7
    ld sp, hl                                     ; $5423: $f9

jr_0f9_5424:
    rlca                                          ; $5424: $07

jr_0f9_5425:
    inc sp                                        ; $5425: $33
    adc $b7                                       ; $5426: $ce $b7
    call $cabe                                    ; $5428: $cd $be $ca
    sbc h                                         ; $542b: $9c
    db $f4                                        ; $542c: $f4
    jr c, jr_0f9_5417                             ; $542d: $38 $e8

    ld [hl], b                                    ; $542f: $70
    ret nc                                        ; $5430: $d0

    ldh [$a0], a                                  ; $5431: $e0 $a0
    ret nz                                        ; $5433: $c0

    ld b, b                                       ; $5434: $40
    ld [bc], a                                    ; $5435: $02
    add b                                         ; $5436: $80
    ld b, $00                                     ; $5437: $06 $00
    adc b                                         ; $5439: $88
    ld b, $02                                     ; $543a: $06 $02
    ld b, $02                                     ; $543c: $06 $02
    inc bc                                        ; $543e: $03
    dec b                                         ; $543f: $05
    ld b, $02                                     ; $5440: $06 $02
    ld [bc], a                                    ; $5442: $02
    inc b                                         ; $5443: $04
    ld d, $00                                     ; $5444: $16 $00
    ld [bc], a                                    ; $5446: $02
    inc bc                                        ; $5447: $03
    ld e, $00                                     ; $5448: $1e $00
    rst $38                                       ; $544a: $ff
    add hl, de                                    ; $544b: $19
    ld a, [bc]                                    ; $544c: $0a
    pop af                                        ; $544d: $f1
    db $10                                        ; $544e: $10
    ldh a, [rIF]                                  ; $544f: $f0 $0f
    push af                                       ; $5451: $f5
    ld a, [c]                                     ; $5452: $f2
    ldh a, [$fa]                                  ; $5453: $f0 $fa
    rst $28                                       ; $5455: $ef
    ld [bc], a                                    ; $5456: $02
    push af                                       ; $5457: $f5
    ld a, [bc]                                    ; $5458: $0a
    db $fd                                        ; $5459: $fd
    dec bc                                        ; $545a: $0b
    nop                                           ; $545b: $00
    di                                            ; $545c: $f3
    rst $38                                       ; $545d: $ff
    ei                                            ; $545e: $fb
    rst $38                                       ; $545f: $ff
    inc bc                                        ; $5460: $03
    rrca                                          ; $5461: $0f
    ei                                            ; $5462: $fb
    rrca                                          ; $5463: $0f
    ld [bc], a                                    ; $5464: $02
    ld [bc], a                                    ; $5465: $02
    inc bc                                        ; $5466: $03
    sbc [hl]                                      ; $5467: $9e
    rrca                                          ; $5468: $0f
    inc c                                         ; $5469: $0c
    ccf                                           ; $546a: $3f
    inc sp                                        ; $546b: $33
    ld a, [hl]                                    ; $546c: $7e
    ld c, a                                       ; $546d: $4f
    pop af                                        ; $546e: $f1
    cp [hl]                                       ; $546f: $be
    ei                                            ; $5470: $fb
    and h                                         ; $5471: $a4
    di                                            ; $5472: $f3
    xor h                                         ; $5473: $ac
    and $bf                                       ; $5474: $e6 $bf
    rst $30                                       ; $5476: $f7
    xor a                                         ; $5477: $af
    rst $30                                       ; $5478: $f7
    xor a                                         ; $5479: $af
    rst $30                                       ; $547a: $f7
    xor a                                         ; $547b: $af
    ld sp, hl                                     ; $547c: $f9
    and a                                         ; $547d: $a7
    ld a, a                                       ; $547e: $7f
    ld d, c                                       ; $547f: $51
    ld a, c                                       ; $5480: $79
    ld d, a                                       ; $5481: $57
    ld [hl], a                                    ; $5482: $77
    ld e, a                                       ; $5483: $5f
    ld [hl], a                                    ; $5484: $77
    ld e, a                                       ; $5485: $5f
    ld [bc], a                                    ; $5486: $02
    ld bc, $0799                                  ; $5487: $01 $99 $07
    ld b, $1f                                     ; $548a: $06 $1f
    add hl, de                                    ; $548c: $19
    ld a, a                                       ; $548d: $7f
    ld h, a                                       ; $548e: $67
    ld hl, sp-$61                                 ; $548f: $f8 $9f
    rst $28                                       ; $5491: $ef
    ld [hl], b                                    ; $5492: $70
    adc a                                         ; $5493: $8f
    ldh a, [rNR31]                                ; $5494: $f0 $1b
    db $fc                                        ; $5496: $fc
    rst $38                                       ; $5497: $ff
    inc a                                         ; $5498: $3c
    rst $38                                       ; $5499: $ff
    ccf                                           ; $549a: $3f
    rst $18                                       ; $549b: $df
    ccf                                           ; $549c: $3f
    rst $38                                       ; $549d: $ff
    rra                                           ; $549e: $1f
    rst $18                                       ; $549f: $df
    ccf                                           ; $54a0: $3f
    cp a                                          ; $54a1: $bf
    dec b                                         ; $54a2: $05
    rst $38                                       ; $54a3: $ff
    ld [bc], a                                    ; $54a4: $02
    ld h, b                                       ; $54a5: $60
    sbc d                                         ; $54a6: $9a
    ldh a, [$90]                                  ; $54a7: $f0 $90
    ld hl, sp+$68                                 ; $54a9: $f8 $68
    sbc h                                         ; $54ab: $9c
    db $f4                                        ; $54ac: $f4
    ld c, $fa                                     ; $54ad: $0e $fa
    ld h, a                                       ; $54af: $67
    sbc l                                         ; $54b0: $9d
    jp $953e                                      ; $54b1: $c3 $3e $95


    ld l, e                                       ; $54b4: $6b
    ld a, [hl]                                    ; $54b5: $7e
    pop af                                        ; $54b6: $f1
    ld a, a                                       ; $54b7: $7f
    ld hl, sp+$7f                                 ; $54b8: $f8 $7f
    ld hl, sp-$09                                 ; $54ba: $f8 $f7
    ld hl, sp-$01                                 ; $54bc: $f8 $ff
    ldh a, [rIE]                                  ; $54be: $f0 $ff
    ei                                            ; $54c0: $fb
    inc b                                         ; $54c1: $04
    rst $38                                       ; $54c2: $ff
    ld [bc], a                                    ; $54c3: $02
    add b                                         ; $54c4: $80
    sbc [hl]                                      ; $54c5: $9e
    ret nz                                        ; $54c6: $c0

    ld b, b                                       ; $54c7: $40
    ldh [$a0], a                                  ; $54c8: $e0 $a0
    ld [hl], b                                    ; $54ca: $70
    ret nc                                        ; $54cb: $d0

    cp b                                          ; $54cc: $b8
    ld l, b                                       ; $54cd: $68
    call c, $de34                                 ; $54ce: $dc $34 $de
    ld a, [hl-]                                   ; $54d1: $3a
    rst $08                                       ; $54d2: $cf
    cp l                                          ; $54d3: $bd
    rst $20                                       ; $54d4: $e7
    sbc $fb                                       ; $54d5: $de $fb
    add $bf                                       ; $54d7: $c6 $bf
    push bc                                       ; $54d9: $c5
    rst $30                                       ; $54da: $f7
    dec c                                         ; $54db: $0d
    xor $1a                                       ; $54dc: $ee $1a
    xor $1a                                       ; $54de: $ee $1a
    cp h                                          ; $54e0: $bc
    call nc, $f4dc                                ; $54e1: $d4 $dc $f4
    inc b                                         ; $54e4: $04
    ld bc, $000c                                  ; $54e5: $01 $0c $00
    adc h                                         ; $54e8: $8c
    ldh a, [$d0]                                  ; $54e9: $f0 $d0
    ld [hl], b                                    ; $54eb: $70
    ret nc                                        ; $54ec: $d0

    ldh [$a0], a                                  ; $54ed: $e0 $a0
    ld h, b                                       ; $54ef: $60
    and b                                         ; $54f0: $a0
    ret nz                                        ; $54f1: $c0

    ld b, b                                       ; $54f2: $40
    ret nz                                        ; $54f3: $c0

    ld b, b                                       ; $54f4: $40
    inc b                                         ; $54f5: $04
    add b                                         ; $54f6: $80
    ld a, [bc]                                    ; $54f7: $0a
    ld bc, $ef94                                  ; $54f8: $01 $94 $ef
    cp a                                          ; $54fb: $bf
    rst $28                                       ; $54fc: $ef
    cp [hl]                                       ; $54fd: $be
    rst $28                                       ; $54fe: $ef
    or b                                          ; $54ff: $b0
    rst $20                                       ; $5500: $e7
    cp b                                          ; $5501: $b8
    ld a, e                                       ; $5502: $7b
    ld d, h                                       ; $5503: $54
    ld a, l                                       ; $5504: $7d
    ld d, d                                       ; $5505: $52
    ld [hl], h                                    ; $5506: $74
    ld e, e                                       ; $5507: $5b
    ld a, a                                       ; $5508: $7f
    ld e, a                                       ; $5509: $5f
    ccf                                           ; $550a: $3f
    ld hl, $1e1f                                  ; $550b: $21 $1f $1e
    inc b                                         ; $550e: $04
    ld bc, $ff0d                                  ; $550f: $01 $0d $ff
    sub c                                         ; $5512: $91
    ld a, a                                       ; $5513: $7f
    rst $38                                       ; $5514: $ff
    ccf                                           ; $5515: $3f
    cp a                                          ; $5516: $bf
    ld a, a                                       ; $5517: $7f
    cp $7f                                        ; $5518: $fe $7f
    cp $79                                        ; $551a: $fe $79
    or $79                                        ; $551c: $f6 $79
    rra                                           ; $551e: $1f
    ldh [rIE], a                                  ; $551f: $e0 $ff
    cp $ff                                        ; $5521: $fe $ff
    ld bc, $fe02                                  ; $5523: $01 $02 $fe
    add c                                         ; $5526: $81
    db $fc                                        ; $5527: $fc
    ld [bc], a                                    ; $5528: $02
    cp $02                                        ; $5529: $fe $02
    db $fc                                        ; $552b: $fc
    dec b                                         ; $552c: $05
    cp $03                                        ; $552d: $fe $03
    rst $38                                       ; $552f: $ff
    sub e                                         ; $5530: $93
    rst $30                                       ; $5531: $f7
    rst $38                                       ; $5532: $ff
    ldh [$fe], a                                  ; $5533: $e0 $fe
    pop hl                                        ; $5535: $e1
    db $fc                                        ; $5536: $fc
    di                                            ; $5537: $f3
    ld sp, hl                                     ; $5538: $f9
    rst $30                                       ; $5539: $f7
    db $e3                                        ; $553a: $e3
    cp $23                                        ; $553b: $fe $23
    sbc $87                                       ; $553d: $de $87
    ld a, l                                       ; $553f: $7d
    rst $08                                       ; $5540: $cf
    db $fd                                        ; $5541: $fd
    rst $38                                       ; $5542: $ff
    cp $02                                        ; $5543: $fe $02
    ld bc, $001c                                  ; $5545: $01 $1c $00
    add d                                         ; $5548: $82
    ld a, a                                       ; $5549: $7f
    ld bc, $7e02                                  ; $554a: $01 $02 $7e
    inc e                                         ; $554d: $1c
    nop                                           ; $554e: $00
    rst $38                                       ; $554f: $ff
    add hl, de                                    ; $5550: $19
    ld a, [bc]                                    ; $5551: $0a
    pop af                                        ; $5552: $f1
    db $10                                        ; $5553: $10
    ldh a, [rIF]                                  ; $5554: $f0 $0f
    push af                                       ; $5556: $f5
    ldh a, [$ef]                                  ; $5557: $f0 $ef
    ld hl, sp-$0f                                 ; $5559: $f8 $f1
    nop                                           ; $555b: $00
    db $f4                                        ; $555c: $f4
    ld [$efff], sp                                ; $555d: $08 $ff $ef
    rst $38                                       ; $5560: $ff
    rst $30                                       ; $5561: $f7
    rst $38                                       ; $5562: $ff
    rst $38                                       ; $5563: $ff
    ld bc, $0f07                                  ; $5564: $01 $07 $0f
    ld hl, sp+$0f                                 ; $5567: $f8 $0f
    db $fd                                        ; $5569: $fd
    ld [bc], a                                    ; $556a: $02
    ld bc, $039e                                  ; $556b: $01 $9e $03
    ld [bc], a                                    ; $556e: $02
    rlca                                          ; $556f: $07
    dec b                                         ; $5570: $05
    rlca                                          ; $5571: $07
    dec b                                         ; $5572: $05
    ld c, $0b                                     ; $5573: $0e $0b
    inc e                                         ; $5575: $1c
    rla                                           ; $5576: $17
    dec sp                                        ; $5577: $3b
    inc l                                         ; $5578: $2c
    ld [hl], e                                    ; $5579: $73
    ld e, h                                       ; $557a: $5c
    db $e3                                        ; $557b: $e3
    cp h                                          ; $557c: $bc
    rst $20                                       ; $557d: $e7
    cp c                                          ; $557e: $b9
    db $d3                                        ; $557f: $d3
    ld l, l                                       ; $5580: $6d
    jp $ef7f                                      ; $5581: $c3 $7f $ef


    or a                                          ; $5584: $b7
    db $e3                                        ; $5585: $e3
    cp a                                          ; $5586: $bf
    jp hl                                         ; $5587: $e9


    or a                                          ; $5588: $b7
    ld [hl], a                                    ; $5589: $77
    ld e, b                                       ; $558a: $58
    ld [bc], a                                    ; $558b: $02
    inc b                                         ; $558c: $04
    sub h                                         ; $558d: $94
    rrca                                          ; $558e: $0f
    dec bc                                        ; $558f: $0b
    rra                                           ; $5590: $1f
    inc d                                         ; $5591: $14
    dec sp                                        ; $5592: $3b
    cpl                                           ; $5593: $2f
    ld [hl], d                                    ; $5594: $72
    ld e, l                                       ; $5595: $5d
    db $e4                                        ; $5596: $e4
    cp e                                          ; $5597: $bb
    rst $18                                       ; $5598: $df
    ld h, b                                       ; $5599: $60
    cp h                                          ; $559a: $bc
    jp $837d                                      ; $559b: $c3 $7d $83


    adc l                                         ; $559e: $8d
    ld [hl], e                                    ; $559f: $73
    rst $38                                       ; $55a0: $ff
    di                                            ; $55a1: $f3
    inc bc                                        ; $55a2: $03
    rst $38                                       ; $55a3: $ff
    add a                                         ; $55a4: $87
    ld a, a                                       ; $55a5: $7f
    rst $38                                       ; $55a6: $ff
    ld a, a                                       ; $55a7: $7f
    rst $38                                       ; $55a8: $ff
    ccf                                           ; $55a9: $3f
    rst $38                                       ; $55aa: $ff
    ccf                                           ; $55ab: $3f
    ld [bc], a                                    ; $55ac: $02
    ldh [$92], a                                  ; $55ad: $e0 $92
    ld hl, sp+$18                                 ; $55af: $f8 $18
    rst $38                                       ; $55b1: $ff
    rst $20                                       ; $55b2: $e7
    rra                                           ; $55b3: $1f
    ld hl, sp-$01                                 ; $55b4: $f8 $ff
    rlca                                          ; $55b6: $07
    cp $c1                                        ; $55b7: $fe $c1
    rst $38                                       ; $55b9: $ff
    ret nz                                        ; $55ba: $c0

    rst $38                                       ; $55bb: $ff
    ldh [rIE], a                                  ; $55bc: $e0 $ff
    rst $00                                       ; $55be: $c7
    rst $38                                       ; $55bf: $ff
    rst $30                                       ; $55c0: $f7
    ld [bc], a                                    ; $55c1: $02
    rst $38                                       ; $55c2: $ff
    add c                                         ; $55c3: $81
    cp $09                                        ; $55c4: $fe $09
    rst $38                                       ; $55c6: $ff
    ld [bc], a                                    ; $55c7: $02
    ret nz                                        ; $55c8: $c0

    sbc [hl]                                      ; $55c9: $9e
    ldh a, [$30]                                  ; $55ca: $f0 $30
    db $fc                                        ; $55cc: $fc
    call z, $f23e                                 ; $55cd: $cc $3e $f2
    sbc a                                         ; $55d0: $9f
    ld l, l                                       ; $55d1: $6d
    rst $00                                       ; $55d2: $c7
    cp l                                          ; $55d3: $bd
    rst $28                                       ; $55d4: $ef
    sub l                                         ; $55d5: $95
    and a                                         ; $55d6: $a7
    db $dd                                        ; $55d7: $dd
    or a                                          ; $55d8: $b7
    ld c, l                                       ; $55d9: $4d
    rst $30                                       ; $55da: $f7
    dec c                                         ; $55db: $0d
    rst $18                                       ; $55dc: $df
    dec h                                         ; $55dd: $25
    ld l, a                                       ; $55de: $6f
    push af                                       ; $55df: $f5
    rst $28                                       ; $55e0: $ef
    push af                                       ; $55e1: $f5
    rst $30                                       ; $55e2: $f7
    db $fd                                        ; $55e3: $fd
    rst $28                                       ; $55e4: $ef
    db $fd                                        ; $55e5: $fd
    cp $0a                                        ; $55e6: $fe $0a
    inc b                                         ; $55e8: $04
    add b                                         ; $55e9: $80
    ld [$8e00], sp                                ; $55ea: $08 $00 $8e
    rra                                           ; $55ed: $1f
    inc d                                         ; $55ee: $14
    dec e                                         ; $55ef: $1d
    ld d, $0e                                     ; $55f0: $16 $0e
    dec bc                                        ; $55f2: $0b
    rlca                                          ; $55f3: $07
    dec b                                         ; $55f4: $05
    rlca                                          ; $55f5: $07
    dec b                                         ; $55f6: $05
    inc bc                                        ; $55f7: $03
    ld [bc], a                                    ; $55f8: $02
    inc bc                                        ; $55f9: $03
    ld [bc], a                                    ; $55fa: $02
    ld [bc], a                                    ; $55fb: $02
    ld bc, $0004                                  ; $55fc: $01 $04 $00
    ld [$817f], sp                                ; $55ff: $08 $7f $81
    ccf                                           ; $5602: $3f
    ld [bc], a                                    ; $5603: $02
    ld a, a                                       ; $5604: $7f
    sub l                                         ; $5605: $95
    ccf                                           ; $5606: $3f
    rst $18                                       ; $5607: $df
    ccf                                           ; $5608: $3f
    ld e, a                                       ; $5609: $5f
    rst $38                                       ; $560a: $ff
    ld a, a                                       ; $560b: $7f
    rst $38                                       ; $560c: $ff
    cp a                                          ; $560d: $bf
    ld a, c                                       ; $560e: $79
    ccf                                           ; $560f: $3f
    add sp, -$41                                  ; $5610: $e8 $bf
    pop bc                                        ; $5612: $c1
    adc a                                         ; $5613: $8f
    ldh a, [$d1]                                  ; $5614: $f0 $d1
    ld l, [hl]                                    ; $5616: $6e
    db $ec                                        ; $5617: $ec
    or e                                          ; $5618: $b3
    rst $20                                       ; $5619: $e7
    cp a                                          ; $561a: $bf
    inc b                                         ; $561b: $04
    add b                                         ; $561c: $80
    ld c, $ff                                     ; $561d: $0e $ff
    adc [hl]                                      ; $561f: $8e
    db $fd                                        ; $5620: $fd
    rst $38                                       ; $5621: $ff
    db $ed                                        ; $5622: $ed
    di                                            ; $5623: $f3
    cp $f1                                        ; $5624: $fe $f1
    rst $28                                       ; $5626: $ef
    ldh a, [$d3]                                  ; $5627: $f0 $d3
    ld l, a                                       ; $5629: $6f
    ccf                                           ; $562a: $3f
    db $fc                                        ; $562b: $fc
    rst $38                                       ; $562c: $ff
    jp $8006                                      ; $562d: $c3 $06 $80


    sub h                                         ; $5630: $94
    rst $38                                       ; $5631: $ff
    dec b                                         ; $5632: $05
    rst $30                                       ; $5633: $f7
    call $cdf7                                    ; $5634: $cd $f7 $cd
    rst $20                                       ; $5637: $e7
    db $dd                                        ; $5638: $dd
    rst $00                                       ; $5639: $c7
    db $fd                                        ; $563a: $fd
    rrca                                          ; $563b: $0f
    push af                                       ; $563c: $f5
    rst $08                                       ; $563d: $cf
    dec a                                         ; $563e: $3d
    cp [hl]                                       ; $563f: $be
    ld a, d                                       ; $5640: $7a
    cp $c6                                        ; $5641: $fe $c6
    ld hl, sp+$38                                 ; $5643: $f8 $38
    ld [bc], a                                    ; $5645: $02
    ret nz                                        ; $5646: $c0

    inc b                                         ; $5647: $04
    nop                                           ; $5648: $00
    add h                                         ; $5649: $84
    rst $38                                       ; $564a: $ff
    or b                                          ; $564b: $b0
    ld a, a                                       ; $564c: $7f
    ld c, a                                       ; $564d: $4f
    ld [bc], a                                    ; $564e: $02
    jr nc, jr_0f9_566b                            ; $564f: $30 $1a

    nop                                           ; $5651: $00
    add d                                         ; $5652: $82
    rra                                           ; $5653: $1f
    rrca                                          ; $5654: $0f
    ld [bc], a                                    ; $5655: $02
    db $10                                        ; $5656: $10
    inc e                                         ; $5657: $1c
    nop                                           ; $5658: $00
    rst $38                                       ; $5659: $ff
    dec d                                         ; $565a: $15
    ld [$10f1], sp                                ; $565b: $08 $f1 $10

jr_0f9_565e:
    ldh a, [rIF]                                  ; $565e: $f0 $0f
    ld a, [c]                                     ; $5660: $f2
    ld a, [c]                                     ; $5661: $f2
    ld a, [c]                                     ; $5662: $f2
    ld a, [$02f2]                                 ; $5663: $fa $f2 $02
    ld a, [c]                                     ; $5666: $f2
    ld [$f102], sp                                ; $5667: $08 $02 $f1
    ld [bc], a                                    ; $566a: $02

jr_0f9_566b:
    ld sp, hl                                     ; $566b: $f9
    ld [bc], a                                    ; $566c: $02
    ld bc, $0902                                  ; $566d: $01 $02 $09
    ld [bc], a                                    ; $5670: $02
    rlca                                          ; $5671: $07
    sbc [hl]                                      ; $5672: $9e
    rrca                                          ; $5673: $0f
    ld [$0b0f], sp                                ; $5674: $08 $0f $0b
    ld c, $0b                                     ; $5677: $0e $0b
    dec e                                         ; $5679: $1d
    ld d, $1c                                     ; $567a: $16 $1c
    rla                                           ; $567c: $17
    dec e                                         ; $567d: $1d
    ld d, $3b                                     ; $567e: $16 $3b
    inc l                                         ; $5680: $2c
    ccf                                           ; $5681: $3f
    jr z, jr_0f9_56c0                             ; $5682: $28 $3c

    dec hl                                        ; $5684: $2b
    ld a, e                                       ; $5685: $7b
    ld d, a                                       ; $5686: $57
    ld [hl], a                                    ; $5687: $77
    ld e, a                                       ; $5688: $5f
    ld [hl], a                                    ; $5689: $77
    ld e, a                                       ; $568a: $5f
    rst $28                                       ; $568b: $ef
    or e                                          ; $568c: $b3
    rst $28                                       ; $568d: $ef
    or b                                          ; $568e: $b0
    rst $28                                       ; $568f: $ef
    or b                                          ; $5690: $b0
    inc bc                                        ; $5691: $03
    rst $38                                       ; $5692: $ff
    add c                                         ; $5693: $81
    nop                                           ; $5694: $00
    ld [bc], a                                    ; $5695: $02
    rst $38                                       ; $5696: $ff
    adc a                                         ; $5697: $8f
    adc a                                         ; $5698: $8f
    ld [hl], b                                    ; $5699: $70
    ccf                                           ; $569a: $3f
    ret nz                                        ; $569b: $c0

    rst $18                                       ; $569c: $df
    jr c, jr_0f9_565e                             ; $569d: $38 $bf

    ld a, h                                       ; $569f: $7c
    cp a                                          ; $56a0: $bf
    ld a, h                                       ; $56a1: $7c
    rst $18                                       ; $56a2: $df
    ccf                                           ; $56a3: $3f
    rst $38                                       ; $56a4: $ff
    ccf                                           ; $56a5: $3f
    ld a, a                                       ; $56a6: $7f
    ld c, $ff                                     ; $56a7: $0e $ff
    add c                                         ; $56a9: $81
    nop                                           ; $56aa: $00
    ld [bc], a                                    ; $56ab: $02
    rst $38                                       ; $56ac: $ff
    adc a                                         ; $56ad: $8f
    push bc                                       ; $56ae: $c5
    dec sp                                        ; $56af: $3b
    ld a, [c]                                     ; $56b0: $f2
    dec c                                         ; $56b1: $0d
    db $ec                                        ; $56b2: $ec
    ld [hl], e                                    ; $56b3: $73
    or $f9                                        ; $56b4: $f6 $f9
    rst $30                                       ; $56b6: $f7
    ld hl, sp-$11                                 ; $56b7: $f8 $ef
    ldh a, [$fc]                                  ; $56b9: $f0 $fc
    di                                            ; $56bb: $f3
    ei                                            ; $56bc: $fb
    ld [$83ff], sp                                ; $56bd: $08 $ff $83

jr_0f9_56c0:
    db $fc                                        ; $56c0: $fc
    rst $38                                       ; $56c1: $ff
    db $fc                                        ; $56c2: $fc
    ld [bc], a                                    ; $56c3: $02
    jr nz, @-$4e                                  ; $56c4: $20 $b0

    jr nc, jr_0f9_56d8                            ; $56c6: $30 $10

    jr nc, jr_0f9_56da                            ; $56c8: $30 $10

    jr nc, jr_0f9_56dc                            ; $56ca: $30 $10

    jr c, @+$2a                                   ; $56cc: $38 $28

    jr c, @+$2a                                   ; $56ce: $38 $28

    jr c, jr_0f9_56fa                             ; $56d0: $38 $28

    inc e                                         ; $56d2: $1c
    inc [hl]                                      ; $56d3: $34
    inc a                                         ; $56d4: $3c
    inc d                                         ; $56d5: $14
    inc a                                         ; $56d6: $3c
    inc d                                         ; $56d7: $14

jr_0f9_56d8:
    ld e, $2a                                     ; $56d8: $1e $2a

jr_0f9_56da:
    ld l, $3a                                     ; $56da: $2e $3a

jr_0f9_56dc:
    ld l, $3a                                     ; $56dc: $2e $3a
    scf                                           ; $56de: $37
    dec c                                         ; $56df: $0d
    scf                                           ; $56e0: $37
    dec c                                         ; $56e1: $0d
    scf                                           ; $56e2: $37
    dec c                                         ; $56e3: $0d
    rst $20                                       ; $56e4: $e7
    cp c                                          ; $56e5: $b9
    di                                            ; $56e6: $f3
    xor a                                         ; $56e7: $af
    di                                            ; $56e8: $f3
    xor a                                         ; $56e9: $af
    push hl                                       ; $56ea: $e5
    cp e                                          ; $56eb: $bb
    ld [hl], d                                    ; $56ec: $72
    ld e, l                                       ; $56ed: $5d
    dec sp                                        ; $56ee: $3b
    inc l                                         ; $56ef: $2c
    rra                                           ; $56f0: $1f
    ld d, $0f                                     ; $56f1: $16 $0f
    add hl, bc                                    ; $56f3: $09
    rlca                                          ; $56f4: $07
    ld b, $02                                     ; $56f5: $06 $02
    ld bc, $000c                                  ; $56f7: $01 $0c $00

jr_0f9_56fa:
    ld b, $ff                                     ; $56fa: $06 $ff
    sbc b                                         ; $56fc: $98
    cp a                                          ; $56fd: $bf
    rst $38                                       ; $56fe: $ff
    ld a, a                                       ; $56ff: $7f
    sbc a                                         ; $5700: $9f
    rst $28                                       ; $5701: $ef
    rra                                           ; $5702: $1f
    rst $18                                       ; $5703: $df
    ld a, $df                                     ; $5704: $3e $df
    ld a, $ef                                     ; $5706: $3e $ef
    call c, Call_000_38e7                         ; $5708: $dc $e7 $38
    ldh a, [$df]                                  ; $570b: $f0 $df
    dec a                                         ; $570d: $3d
    ld l, $1e                                     ; $570e: $2e $1e
    inc de                                        ; $5710: $13
    rrca                                          ; $5711: $0f
    dec c                                         ; $5712: $0d
    inc bc                                        ; $5713: $03
    ld [bc], a                                    ; $5714: $02
    ld [bc], a                                    ; $5715: $02
    ld bc, $ff06                                  ; $5716: $01 $06 $ff
    sbc b                                         ; $5719: $98
    db $fd                                        ; $571a: $fd
    rst $38                                       ; $571b: $ff
    cp $f9                                        ; $571c: $fe $f9
    rst $30                                       ; $571e: $f7
    ld hl, sp-$05                                 ; $571f: $f8 $fb
    ld a, h                                       ; $5721: $7c
    ei                                            ; $5722: $fb
    ld a, h                                       ; $5723: $7c
    rst $30                                       ; $5724: $f7
    dec sp                                        ; $5725: $3b
    rst $20                                       ; $5726: $e7
    inc e                                         ; $5727: $1c
    rrca                                          ; $5728: $0f
    ei                                            ; $5729: $fb
    cp h                                          ; $572a: $bc
    ld [hl], h                                    ; $572b: $74
    ld a, b                                       ; $572c: $78
    ret z                                         ; $572d: $c8

    ldh a, [$b0]                                  ; $572e: $f0 $b0
    ret nz                                        ; $5730: $c0

    ld b, b                                       ; $5731: $40
    ld [bc], a                                    ; $5732: $02
    add b                                         ; $5733: $80
    sub d                                         ; $5734: $92
    rst $20                                       ; $5735: $e7
    sbc l                                         ; $5736: $9d
    rst $08                                       ; $5737: $cf
    push af                                       ; $5738: $f5

jr_0f9_5739:
    rst $08                                       ; $5739: $cf
    push af                                       ; $573a: $f5
    and a                                         ; $573b: $a7
    db $dd                                        ; $573c: $dd
    ld c, [hl]                                    ; $573d: $4e
    cp d                                          ; $573e: $ba
    call c, $f834                                 ; $573f: $dc $34 $f8
    ld l, b                                       ; $5742: $68
    ldh a, [$90]                                  ; $5743: $f0 $90
    ldh [$60], a                                  ; $5745: $e0 $60
    ld [bc], a                                    ; $5747: $02
    add b                                         ; $5748: $80
    inc c                                         ; $5749: $0c
    nop                                           ; $574a: $00
    rst $38                                       ; $574b: $ff
    add hl, de                                    ; $574c: $19
    ld a, [bc]                                    ; $574d: $0a
    pop af                                        ; $574e: $f1
    db $10                                        ; $574f: $10
    ldh a, [rIF]                                  ; $5750: $f0 $0f
    push af                                       ; $5752: $f5
    ld a, [c]                                     ; $5753: $f2
    ld a, [c]                                     ; $5754: $f2
    ld a, [$02f0]                                 ; $5755: $fa $f0 $02
    or $0a                                        ; $5758: $f6 $0a
    ld [bc], a                                    ; $575a: $02
    di                                            ; $575b: $f3
    nop                                           ; $575c: $00
    ei                                            ; $575d: $fb
    nop                                           ; $575e: $00
    inc bc                                        ; $575f: $03
    nop                                           ; $5760: $00
    dec bc                                        ; $5761: $0b
    db $10                                        ; $5762: $10
    db $fd                                        ; $5763: $fd
    db $10                                        ; $5764: $10
    ld [bc], a                                    ; $5765: $02
    ld [bc], a                                    ; $5766: $02
    inc bc                                        ; $5767: $03
    sbc [hl]                                      ; $5768: $9e
    rrca                                          ; $5769: $0f
    inc c                                         ; $576a: $0c
    ccf                                           ; $576b: $3f
    inc sp                                        ; $576c: $33
    ld a, h                                       ; $576d: $7c
    ld c, a                                       ; $576e: $4f
    ld sp, hl                                     ; $576f: $f9
    or [hl]                                       ; $5770: $b6
    db $e3                                        ; $5771: $e3
    cp l                                          ; $5772: $bd
    rst $30                                       ; $5773: $f7
    xor c                                         ; $5774: $a9
    push hl                                       ; $5775: $e5
    cp e                                          ; $5776: $bb
    db $ed                                        ; $5777: $ed
    or d                                          ; $5778: $b2
    rst $28                                       ; $5779: $ef
    or b                                          ; $577a: $b0
    ei                                            ; $577b: $fb
    and h                                         ; $577c: $a4
    or $af                                        ; $577d: $f6 $af
    rst $30                                       ; $577f: $f7
    xor a                                         ; $5780: $af
    rst $28                                       ; $5781: $ef
    cp a                                          ; $5782: $bf
    rst $30                                       ; $5783: $f7
    cp a                                          ; $5784: $bf
    ld a, a                                       ; $5785: $7f
    ld d, b                                       ; $5786: $50
    ld [bc], a                                    ; $5787: $02
    rlca                                          ; $5788: $07
    sub d                                         ; $5789: $92
    rra                                           ; $578a: $1f
    jr @+$01                                      ; $578b: $18 $ff

    rst $20                                       ; $578d: $e7
    ld hl, sp+$1f                                 ; $578e: $f8 $1f
    rst $38                                       ; $5790: $ff
    ldh [$7f], a                                  ; $5791: $e0 $7f
    add e                                         ; $5793: $83
    rst $38                                       ; $5794: $ff
    inc bc                                        ; $5795: $03
    rst $38                                       ; $5796: $ff
    rlca                                          ; $5797: $07
    rst $38                                       ; $5798: $ff
    db $e3                                        ; $5799: $e3
    rst $38                                       ; $579a: $ff
    rst $28                                       ; $579b: $ef
    ld [bc], a                                    ; $579c: $02
    rst $38                                       ; $579d: $ff
    add c                                         ; $579e: $81
    ld a, a                                       ; $579f: $7f
    add hl, bc                                    ; $57a0: $09
    rst $38                                       ; $57a1: $ff
    ld [bc], a                                    ; $57a2: $02
    jr nz, jr_0f9_5739                            ; $57a3: $20 $94

    ldh a, [$d0]                                  ; $57a5: $f0 $d0
    ld hl, sp+$28                                 ; $57a7: $f8 $28
    call c, $4ef4                                 ; $57a9: $dc $f4 $4e
    cp d                                          ; $57ac: $ba
    daa                                           ; $57ad: $27
    db $dd                                        ; $57ae: $dd
    ei                                            ; $57af: $fb
    ld b, $3d                                     ; $57b0: $06 $3d
    jp $c1be                                      ; $57b2: $c3 $be $c1


    or c                                          ; $57b5: $b1
    adc $ff                                       ; $57b6: $ce $ff

jr_0f9_57b8:
    rst $08                                       ; $57b8: $cf
    inc bc                                        ; $57b9: $03
    rst $38                                       ; $57ba: $ff
    add a                                         ; $57bb: $87
    cp $ff                                        ; $57bc: $fe $ff
    cp $ff                                        ; $57be: $fe $ff
    db $fc                                        ; $57c0: $fc
    rst $38                                       ; $57c1: $ff
    db $fc                                        ; $57c2: $fc
    ld [bc], a                                    ; $57c3: $02
    add b                                         ; $57c4: $80
    sbc [hl]                                      ; $57c5: $9e
    ret nz                                        ; $57c6: $c0

    ld b, b                                       ; $57c7: $40
    ldh [$a0], a                                  ; $57c8: $e0 $a0
    ldh [$a0], a                                  ; $57ca: $e0 $a0
    ld [hl], b                                    ; $57cc: $70
    ret nc                                        ; $57cd: $d0

    jr c, jr_0f9_57b8                             ; $57ce: $38 $e8

    call c, $ce34                                 ; $57d0: $dc $34 $ce
    ld a, [hl-]                                   ; $57d3: $3a
    rst $00                                       ; $57d4: $c7
    dec a                                         ; $57d5: $3d
    rst $20                                       ; $57d6: $e7
    sbc l                                         ; $57d7: $9d
    res 6, [hl]                                   ; $57d8: $cb $b6
    jp $f7fe                                      ; $57da: $c3 $fe $f7


    db $ed                                        ; $57dd: $ed
    rst $00                                       ; $57de: $c7
    db $fd                                        ; $57df: $fd
    sub a                                         ; $57e0: $97
    db $ed                                        ; $57e1: $ed
    xor $1a                                       ; $57e2: $ee $1a
    ld b, $01                                     ; $57e4: $06 $01
    sub h                                         ; $57e6: $94
    rst $38                                       ; $57e7: $ff
    and b                                         ; $57e8: $a0
    rst $28                                       ; $57e9: $ef
    or e                                          ; $57ea: $b3
    rst $28                                       ; $57eb: $ef
    or e                                          ; $57ec: $b3
    rst $20                                       ; $57ed: $e7
    cp e                                          ; $57ee: $bb
    db $e3                                        ; $57ef: $e3
    cp a                                          ; $57f0: $bf
    ldh a, [$af]                                  ; $57f1: $f0 $af
    di                                            ; $57f3: $f3
    cp h                                          ; $57f4: $bc
    ld a, l                                       ; $57f5: $7d
    ld e, [hl]                                    ; $57f6: $5e
    ld a, a                                       ; $57f7: $7f
    ld h, e                                       ; $57f8: $63
    rra                                           ; $57f9: $1f
    inc e                                         ; $57fa: $1c
    ld [bc], a                                    ; $57fb: $02
    inc bc                                        ; $57fc: $03
    inc b                                         ; $57fd: $04
    nop                                           ; $57fe: $00
    inc b                                         ; $57ff: $04
    ld bc, $ff0e                                  ; $5800: $01 $0e $ff
    adc [hl]                                      ; $5803: $8e
    cp a                                          ; $5804: $bf
    rst $38                                       ; $5805: $ff
    or a                                          ; $5806: $b7
    rst $08                                       ; $5807: $cf
    ld a, a                                       ; $5808: $7f
    adc a                                         ; $5809: $8f
    rst $30                                       ; $580a: $f7
    rrca                                          ; $580b: $0f
    set 6, [hl]                                   ; $580c: $cb $f6
    db $fc                                        ; $580e: $fc
    ccf                                           ; $580f: $3f
    rst $38                                       ; $5810: $ff
    jp $fe08                                      ; $5811: $c3 $08 $fe


    add c                                         ; $5814: $81
    db $fc                                        ; $5815: $fc
    ld [bc], a                                    ; $5816: $02
    cp $95                                        ; $5817: $fe $95
    db $fc                                        ; $5819: $fc
    ei                                            ; $581a: $fb
    db $fc                                        ; $581b: $fc
    ld a, [$feff]                                 ; $581c: $fa $ff $fe
    rst $38                                       ; $581f: $ff
    db $fd                                        ; $5820: $fd
    sbc [hl]                                      ; $5821: $9e
    db $fc                                        ; $5822: $fc
    rla                                           ; $5823: $17
    db $fd                                        ; $5824: $fd
    add e                                         ; $5825: $83
    pop af                                        ; $5826: $f1
    rrca                                          ; $5827: $0f
    adc e                                         ; $5828: $8b
    halt                                          ; $5829: $76
    scf                                           ; $582a: $37
    call $fde7                                    ; $582b: $cd $e7 $fd
    inc b                                         ; $582e: $04
    ld bc, $0008                                  ; $582f: $01 $08 $00
    adc [hl]                                      ; $5832: $8e
    ld hl, sp+$28                                 ; $5833: $f8 $28
    cp b                                          ; $5835: $b8
    ld l, b                                       ; $5836: $68
    ld [hl], b                                    ; $5837: $70
    ret nc                                        ; $5838: $d0

    ldh [$a0], a                                  ; $5839: $e0 $a0
    ldh [$a0], a                                  ; $583b: $e0 $a0
    ret nz                                        ; $583d: $c0

    ld b, b                                       ; $583e: $40
    ret nz                                        ; $583f: $c0

    ld b, b                                       ; $5840: $40
    ld [bc], a                                    ; $5841: $02
    add b                                         ; $5842: $80
    inc b                                         ; $5843: $04
    nop                                           ; $5844: $00
    add d                                         ; $5845: $82
    rst $38                                       ; $5846: $ff
    ldh a, [rSC]                                  ; $5847: $f0 $02
    rrca                                          ; $5849: $0f
    inc e                                         ; $584a: $1c
    nop                                           ; $584b: $00
    add h                                         ; $584c: $84
    rra                                           ; $584d: $1f
    dec c                                         ; $584e: $0d
    ld e, $12                                     ; $584f: $1e $12
    ld [bc], a                                    ; $5851: $02
    inc c                                         ; $5852: $0c
    ld a, [de]                                    ; $5853: $1a
    nop                                           ; $5854: $00
    rst $38                                       ; $5855: $ff
    add hl, de                                    ; $5856: $19
    ld a, [bc]                                    ; $5857: $0a
    pop af                                        ; $5858: $f1
    db $10                                        ; $5859: $10
    ldh a, [rIF]                                  ; $585a: $f0 $0f
    ei                                            ; $585c: $fb
    db $ec                                        ; $585d: $ec
    di                                            ; $585e: $f3
    db $f4                                        ; $585f: $f4

jr_0f9_5860:
    inc bc                                        ; $5860: $03
    db $f4                                        ; $5861: $f4
    ldh a, [$fc]                                  ; $5862: $f0 $fc
    nop                                           ; $5864: $00
    db $fc                                        ; $5865: $fc
    db $10                                        ; $5866: $10
    db $fc                                        ; $5867: $fc
    di                                            ; $5868: $f3
    inc b                                         ; $5869: $04
    inc bc                                        ; $586a: $03
    inc b                                         ; $586b: $04
    di                                            ; $586c: $f3
    inc c                                         ; $586d: $0c
    inc bc                                        ; $586e: $03
    inc c                                         ; $586f: $0c
    ld [bc], a                                    ; $5870: $02
    ld bc, $0390                                  ; $5871: $01 $90 $03
    ld [bc], a                                    ; $5874: $02
    rlca                                          ; $5875: $07
    dec b                                         ; $5876: $05
    rrca                                          ; $5877: $0f
    dec bc                                        ; $5878: $0b
    ld c, $0b                                     ; $5879: $0e $0b
    rlca                                          ; $587b: $07
    dec b                                         ; $587c: $05
    rlca                                          ; $587d: $07
    dec b                                         ; $587e: $05
    inc bc                                        ; $587f: $03
    ld [bc], a                                    ; $5880: $02
    inc bc                                        ; $5881: $03
    ld [bc], a                                    ; $5882: $02
    inc b                                         ; $5883: $04
    ld bc, $000a                                  ; $5884: $01 $0a $00
    ld [bc], a                                    ; $5887: $02
    ld bc, $03ba                                  ; $5888: $01 $ba $03
    ld [bc], a                                    ; $588b: $02
    rlca                                          ; $588c: $07
    dec b                                         ; $588d: $05
    ld c, $0b                                     ; $588e: $0e $0b
    dec e                                         ; $5890: $1d
    ld d, $3b                                     ; $5891: $16 $3b
    inc l                                         ; $5893: $2c
    ld [hl], a                                    ; $5894: $77
    ld e, b                                       ; $5895: $58
    rst $28                                       ; $5896: $ef
    or b                                          ; $5897: $b0
    rst $18                                       ; $5898: $df
    ld h, b                                       ; $5899: $60
    rst $18                                       ; $589a: $df
    ldh [$9f], a                                  ; $589b: $e0 $9f
    xor $3f                                       ; $589d: $ee $3f
    rst $18                                       ; $589f: $df
    rst $38                                       ; $58a0: $ff
    rra                                           ; $58a1: $1f
    rst $28                                       ; $58a2: $ef
    rra                                           ; $58a3: $1f

jr_0f9_58a4:
    ld a, e                                       ; $58a4: $7b
    add a                                         ; $58a5: $87
    cp a                                          ; $58a6: $bf
    jp $c7bb                                      ; $58a7: $c3 $bb $c7


    rst $28                                       ; $58aa: $ef
    ld e, a                                       ; $58ab: $5f
    rst $18                                       ; $58ac: $df
    ld a, a                                       ; $58ad: $7f
    rst $38                                       ; $58ae: $ff
    cp a                                          ; $58af: $bf
    rst $28                                       ; $58b0: $ef
    cp [hl]                                       ; $58b1: $be
    ld a, a                                       ; $58b2: $7f
    ld d, b                                       ; $58b3: $50
    ld h, a                                       ; $58b4: $67
    ld e, b                                       ; $58b5: $58
    inc sp                                        ; $58b6: $33
    inc l                                         ; $58b7: $2c
    add hl, sp                                    ; $58b8: $39
    ld l, $1c                                     ; $58b9: $2e $1c
    rla                                           ; $58bb: $17
    inc e                                         ; $58bc: $1c
    rla                                           ; $58bd: $17
    ld c, $0b                                     ; $58be: $0e $0b
    rrca                                          ; $58c0: $0f
    dec bc                                        ; $58c1: $0b
    rlca                                          ; $58c2: $07
    inc b                                         ; $58c3: $04
    ld [bc], a                                    ; $58c4: $02
    inc bc                                        ; $58c5: $03
    ld [bc], a                                    ; $58c6: $02
    nop                                           ; $58c7: $00
    ld [bc], a                                    ; $58c8: $02
    jr nc, jr_0f9_5860                            ; $58c9: $30 $95

    ld a, h                                       ; $58cb: $7c
    ld c, h                                       ; $58cc: $4c
    rst $38                                       ; $58cd: $ff
    or e                                          ; $58ce: $b3
    rst $08                                       ; $58cf: $cf
    ld a, h                                       ; $58d0: $7c
    add a                                         ; $58d1: $87
    rst $38                                       ; $58d2: $ff
    jr nc, jr_0f9_58a4                            ; $58d3: $30 $cf

    rra                                           ; $58d5: $1f
    ldh [rVBK], a                                 ; $58d6: $e0 $4f
    or b                                          ; $58d8: $b0
    or $79                                        ; $58d9: $f6 $79
    rst $30                                       ; $58db: $f7
    ld sp, hl                                     ; $58dc: $f9
    rst $30                                       ; $58dd: $f7
    rst $38                                       ; $58de: $ff
    ld a, a                                       ; $58df: $7f
    ld [bc], a                                    ; $58e0: $02
    rst $38                                       ; $58e1: $ff
    add c                                         ; $58e2: $81
    ld a, a                                       ; $58e3: $7f
    rla                                           ; $58e4: $17
    rst $38                                       ; $58e5: $ff
    sub c                                         ; $58e6: $91
    ld a, a                                       ; $58e7: $7f
    rst $38                                       ; $58e8: $ff
    ld a, a                                       ; $58e9: $7f
    rst $30                                       ; $58ea: $f7
    rst $38                                       ; $58eb: $ff
    rst $30                                       ; $58ec: $f7
    ld sp, hl                                     ; $58ed: $f9
    halt                                          ; $58ee: $76
    ld sp, hl                                     ; $58ef: $f9
    ld c, a                                       ; $58f0: $4f
    or b                                          ; $58f1: $b0
    rra                                           ; $58f2: $1f
    rst $20                                       ; $58f3: $e7
    ccf                                           ; $58f4: $3f
    ld hl, sp-$01                                 ; $58f5: $f8 $ff
    rlca                                          ; $58f7: $07
    ld [bc], a                                    ; $58f8: $02
    ld hl, sp+$1c                                 ; $58f9: $f8 $1c
    nop                                           ; $58fb: $00
    ld [bc], a                                    ; $58fc: $02
    ret nz                                        ; $58fd: $c0

    sub l                                         ; $58fe: $95
    ldh a, [$30]                                  ; $58ff: $f0 $30
    ld hl, sp-$38                                 ; $5901: $f8 $c8
    cp [hl]                                       ; $5903: $be
    halt                                          ; $5904: $76
    adc a                                         ; $5905: $8f
    ld a, c                                       ; $5906: $79
    rst $00                                       ; $5907: $c7
    cp $fb                                        ; $5908: $fe $fb
    rst $20                                       ; $590a: $e7
    db $fc                                        ; $590b: $fc
    db $e3                                        ; $590c: $e3
    sbc $e1                                       ; $590d: $de $e1
    cp $c1                                        ; $590f: $fe $c1
    db $db                                        ; $5911: $db
    rst $20                                       ; $5912: $e7
    rst $28                                       ; $5913: $ef
    dec b                                         ; $5914: $05
    rst $38                                       ; $5915: $ff
    add c                                         ; $5916: $81
    db $fc                                        ; $5917: $fc
    ld [bc], a                                    ; $5918: $02
    rst $38                                       ; $5919: $ff
    ld [bc], a                                    ; $591a: $02
    db $fc                                        ; $591b: $fc
    ld [$91ff], sp                                ; $591c: $08 $ff $91
    rst $20                                       ; $591f: $e7
    rst $38                                       ; $5920: $ff
    ret nz                                        ; $5921: $c0

    sbc $e1                                       ; $5922: $de $e1
    db $fd                                        ; $5924: $fd
    ld [c], a                                     ; $5925: $e2
    ei                                            ; $5926: $fb
    db $e4                                        ; $5927: $e4
    ld a, [c]                                     ; $5928: $f2
    db $ed                                        ; $5929: $ed
    adc a                                         ; $592a: $8f

jr_0f9_592b:
    ld a, a                                       ; $592b: $7f
    rst $38                                       ; $592c: $ff
    ld hl, sp-$01                                 ; $592d: $f8 $ff
    rlca                                          ; $592f: $07
    ld [bc], a                                    ; $5930: $02
    ld hl, sp+$0c                                 ; $5931: $f8 $0c
    nop                                           ; $5933: $00
    ld [bc], a                                    ; $5934: $02
    add b                                         ; $5935: $80
    xor [hl]                                      ; $5936: $ae
    ldh [$60], a                                  ; $5937: $e0 $60
    ldh a, [$90]                                  ; $5939: $f0 $90
    ld a, b                                       ; $593b: $78
    add sp, -$08                                  ; $593c: $e8 $f8
    jr z, @+$7a                                   ; $593e: $28 $78

    xor b                                         ; $5940: $a8
    jr c, jr_0f9_592b                             ; $5941: $38 $e8

    ld a, b                                       ; $5943: $78
    xor b                                         ; $5944: $a8
    ld a, b                                       ; $5945: $78
    xor b                                         ; $5946: $a8
    ld a, b                                       ; $5947: $78
    xor b                                         ; $5948: $a8
    ld hl, sp+$28                                 ; $5949: $f8 $28
    ldh a, [$50]                                  ; $594b: $f0 $50
    ldh a, [$50]                                  ; $594d: $f0 $50
    ld [hl], b                                    ; $594f: $70
    ret nc                                        ; $5950: $d0

    ld [hl], b                                    ; $5951: $70
    ret nc                                        ; $5952: $d0

    ld [hl], b                                    ; $5953: $70
    ret nc                                        ; $5954: $d0

    ld [hl], b                                    ; $5955: $70
    ret nc                                        ; $5956: $d0

    ld [hl], b                                    ; $5957: $70
    ret nc                                        ; $5958: $d0

    ld [hl], b                                    ; $5959: $70
    ret nc                                        ; $595a: $d0

    ldh [$a0], a                                  ; $595b: $e0 $a0
    ldh [$a0], a                                  ; $595d: $e0 $a0
    ldh [$a0], a                                  ; $595f: $e0 $a0
    ldh [$a0], a                                  ; $5961: $e0 $a0
    ret nz                                        ; $5963: $c0

    ld b, b                                       ; $5964: $40
    ld [bc], a                                    ; $5965: $02
    add b                                         ; $5966: $80
    ld b, $00                                     ; $5967: $06 $00
    rst $38                                       ; $5969: $ff
    add hl, de                                    ; $596a: $19
    ld a, [bc]                                    ; $596b: $0a
    pop af                                        ; $596c: $f1
    db $10                                        ; $596d: $10
    ldh a, [rIF]                                  ; $596e: $f0 $0f
    ld a, [c]                                     ; $5970: $f2
    pop af                                        ; $5971: $f1
    ld a, [c]                                     ; $5972: $f2
    ld sp, hl                                     ; $5973: $f9
    di                                            ; $5974: $f3
    ld bc, $09f4                                  ; $5975: $01 $f4 $09
    ld [bc], a                                    ; $5978: $02
    rst $28                                       ; $5979: $ef
    ld [bc], a                                    ; $597a: $02
    rst $30                                       ; $597b: $f7
    ld [bc], a                                    ; $597c: $02
    rst $38                                       ; $597d: $ff
    inc bc                                        ; $597e: $03
    rlca                                          ; $597f: $07
    inc b                                         ; $5980: $04
    ld a, [bc]                                    ; $5981: $0a
    ld [de], a                                    ; $5982: $12
    ld sp, hl                                     ; $5983: $f9
    ld [bc], a                                    ; $5984: $02
    inc bc                                        ; $5985: $03
    sbc [hl]                                      ; $5986: $9e
    rlca                                          ; $5987: $07
    inc b                                         ; $5988: $04
    rlca                                          ; $5989: $07
    dec b                                         ; $598a: $05
    rlca                                          ; $598b: $07
    dec b                                         ; $598c: $05
    rrca                                          ; $598d: $0f
    ld a, [bc]                                    ; $598e: $0a
    ld c, $0b                                     ; $598f: $0e $0b
    inc e                                         ; $5991: $1c
    rla                                           ; $5992: $17
    dec e                                         ; $5993: $1d
    ld d, $1f                                     ; $5994: $16 $1f
    inc d                                         ; $5996: $14
    ccf                                           ; $5997: $3f
    add hl, hl                                    ; $5998: $29
    ccf                                           ; $5999: $3f
    jr z, jr_0f9_5a13                             ; $599a: $28 $77

    ld e, b                                       ; $599c: $58
    ld a, a                                       ; $599d: $7f
    ld d, b                                       ; $599e: $50
    ld a, a                                       ; $599f: $7f
    ld d, b                                       ; $59a0: $50
    rst $28                                       ; $59a1: $ef
    or l                                          ; $59a2: $b5
    rst $28                                       ; $59a3: $ef
    or a                                          ; $59a4: $b7
    ld [bc], a                                    ; $59a5: $02
    db $fc                                        ; $59a6: $fc
    adc a                                         ; $59a7: $8f
    rst $38                                       ; $59a8: $ff
    inc bc                                        ; $59a9: $03
    rst $38                                       ; $59aa: $ff
    db $fc                                        ; $59ab: $fc
    rla                                           ; $59ac: $17
    ei                                            ; $59ad: $fb
    adc $31                                       ; $59ae: $ce $31
    ld a, c                                       ; $59b0: $79
    add a                                         ; $59b1: $87
    ld e, e                                       ; $59b2: $5b
    and a                                         ; $59b3: $a7
    ld c, l                                       ; $59b4: $4d
    di                                            ; $59b5: $f3
    rst $28                                       ; $59b6: $ef
    ld b, $ff                                     ; $59b7: $06 $ff
    add l                                         ; $59b9: $85
    ccf                                           ; $59ba: $3f
    rst $38                                       ; $59bb: $ff
    ld a, a                                       ; $59bc: $7f
    rst $38                                       ; $59bd: $ff
    ld a, a                                       ; $59be: $7f
    inc b                                         ; $59bf: $04
    rst $38                                       ; $59c0: $ff
    ld [bc], a                                    ; $59c1: $02
    db $fc                                        ; $59c2: $fc
    adc [hl]                                      ; $59c3: $8e
    rst $38                                       ; $59c4: $ff
    inc bc                                        ; $59c5: $03
    rst $38                                       ; $59c6: $ff
    db $fc                                        ; $59c7: $fc
    inc hl                                        ; $59c8: $23
    rst $18                                       ; $59c9: $df
    ld hl, sp-$39                                 ; $59ca: $f8 $c7
    cp $c1                                        ; $59cc: $fe $c1
    rst $38                                       ; $59ce: $ff
    jp $c7ff                                      ; $59cf: $c3 $ff $c7


    inc b                                         ; $59d2: $04
    rst $38                                       ; $59d3: $ff
    add c                                         ; $59d4: $81
    cp $0b                                        ; $59d5: $fe $0b
    rst $38                                       ; $59d7: $ff
    ld [bc], a                                    ; $59d8: $02
    ldh [$b0], a                                  ; $59d9: $e0 $b0
    ldh a, [rNR10]                                ; $59db: $f0 $10
    ldh a, [$d0]                                  ; $59dd: $f0 $d0
    cp b                                          ; $59df: $b8
    ld l, b                                       ; $59e0: $68
    jr c, @-$16                                   ; $59e1: $38 $e8

    ld a, b                                       ; $59e3: $78
    xor b                                         ; $59e4: $a8
    ld e, h                                       ; $59e5: $5c
    or h                                          ; $59e6: $b4
    cp h                                          ; $59e7: $bc
    call nc, $947c                                ; $59e8: $d4 $7c $94
    db $fc                                        ; $59eb: $fc
    inc d                                         ; $59ec: $14
    xor $1a                                       ; $59ed: $ee $1a
    ld a, $ca                                     ; $59ef: $3e $ca
    cp $ea                                        ; $59f1: $fe $ea
    xor $fa                                       ; $59f3: $ee $fa
    rst $20                                       ; $59f5: $e7
    db $fd                                        ; $59f6: $fd
    rst $30                                       ; $59f7: $f7
    call Call_0f9_5d72                            ; $59f8: $cd $72 $5d
    ld a, d                                       ; $59fb: $7a
    ld d, l                                       ; $59fc: $55
    db $d3                                        ; $59fd: $d3
    cp h                                          ; $59fe: $bc
    ld [hl], e                                    ; $59ff: $73
    ld e, h                                       ; $5a00: $5c
    add hl, sp                                    ; $5a01: $39
    ld l, $1d                                     ; $5a02: $2e $1d
    ld d, $0f                                     ; $5a04: $16 $0f
    ld a, [bc]                                    ; $5a06: $0a
    rlca                                          ; $5a07: $07
    dec b                                         ; $5a08: $05
    inc bc                                        ; $5a09: $03
    ld [bc], a                                    ; $5a0a: $02
    ld [bc], a                                    ; $5a0b: $02
    ld bc, $000c                                  ; $5a0c: $01 $0c $00
    ld [bc], a                                    ; $5a0f: $02
    rst $38                                       ; $5a10: $ff
    sbc h                                         ; $5a11: $9c
    cp a                                          ; $5a12: $bf

jr_0f9_5a13:
    rst $38                                       ; $5a13: $ff
    ld a, a                                       ; $5a14: $7f
    cp a                                          ; $5a15: $bf
    rst $38                                       ; $5a16: $ff
    rra                                           ; $5a17: $1f
    sbc a                                         ; $5a18: $9f
    ld a, a                                       ; $5a19: $7f
    cp a                                          ; $5a1a: $bf
    ld a, a                                       ; $5a1b: $7f
    cp a                                          ; $5a1c: $bf
    ld a, l                                       ; $5a1d: $7d
    ccf                                           ; $5a1e: $3f
    ld hl, sp-$71                                 ; $5a1f: $f8 $8f
    ldh a, [$cf]                                  ; $5a21: $f0 $cf
    ld [hl], b                                    ; $5a23: $70
    db $e3                                        ; $5a24: $e3
    cp h                                          ; $5a25: $bc
    ld a, b                                       ; $5a26: $78
    ld e, a                                       ; $5a27: $5f
    inc a                                         ; $5a28: $3c
    daa                                           ; $5a29: $27
    rra                                           ; $5a2a: $1f
    dec de                                        ; $5a2b: $1b
    rlca                                          ; $5a2c: $07
    inc b                                         ; $5a2d: $04
    ld [bc], a                                    ; $5a2e: $02
    inc bc                                        ; $5a2f: $03
    ld [bc], a                                    ; $5a30: $02
    ret nz                                        ; $5a31: $c0

    inc c                                         ; $5a32: $0c
    rst $38                                       ; $5a33: $ff
    sub d                                         ; $5a34: $92
    db $fd                                        ; $5a35: $fd
    ld a, e                                       ; $5a36: $7b
    or $f9                                        ; $5a37: $f6 $f9
    rst $30                                       ; $5a39: $f7
    ld a, b                                       ; $5a3a: $78
    or $79                                        ; $5a3b: $f6 $79
    dec sp                                        ; $5a3d: $3b
    rst $00                                       ; $5a3e: $c7
    rrca                                          ; $5a3f: $0f
    db $fc                                        ; $5a40: $fc
    ccf                                           ; $5a41: $3f
    di                                            ; $5a42: $f3
    db $fc                                        ; $5a43: $fc
    call z, $30f0                                 ; $5a44: $cc $f0 $30
    ld [bc], a                                    ; $5a47: $02
    ret nz                                        ; $5a48: $c0

    sub h                                         ; $5a49: $94
    db $fd                                        ; $5a4a: $fd
    add e                                         ; $5a4b: $83
    ei                                            ; $5a4c: $fb
    add l                                         ; $5a4d: $85
    ld a, [$f6c5]                                 ; $5a4e: $fa $c5 $f6
    ret                                           ; $5a51: $c9


    pop af                                        ; $5a52: $f1
    rst $28                                       ; $5a53: $ef
    rst $00                                       ; $5a54: $c7
    cp $0f                                        ; $5a55: $fe $0f
    ld sp, hl                                     ; $5a57: $f9
    cp [hl]                                       ; $5a58: $be
    ld h, [hl]                                    ; $5a59: $66
    ld hl, sp-$28                                 ; $5a5a: $f8 $d8
    ldh [rNR41], a                                ; $5a5c: $e0 $20
    ld [bc], a                                    ; $5a5e: $02
    ret nz                                        ; $5a5f: $c0

    ld [$8a00], sp                                ; $5a60: $08 $00 $8a
    ld b, $02                                     ; $5a63: $06 $02
    ld b, $02                                     ; $5a65: $06 $02
    rlca                                          ; $5a67: $07
    dec b                                         ; $5a68: $05
    rlca                                          ; $5a69: $07
    dec b                                         ; $5a6a: $05
    ld b, $02                                     ; $5a6b: $06 $02
    ld [bc], a                                    ; $5a6d: $02
    inc b                                         ; $5a6e: $04
    inc d                                         ; $5a6f: $14
    nop                                           ; $5a70: $00
    ld [bc], a                                    ; $5a71: $02
    inc bc                                        ; $5a72: $03
    ld e, $00                                     ; $5a73: $1e $00
    rst $38                                       ; $5a75: $ff
    rla                                           ; $5a76: $17
    add hl, bc                                    ; $5a77: $09
    pop af                                        ; $5a78: $f1
    db $10                                        ; $5a79: $10
    ldh a, [rIF]                                  ; $5a7a: $f0 $0f

jr_0f9_5a7c:
    di                                            ; $5a7c: $f3
    ld a, [c]                                     ; $5a7d: $f2
    pop af                                        ; $5a7e: $f1
    ld a, [$02f0]                                 ; $5a7f: $fa $f0 $02
    push af                                       ; $5a82: $f5
    ld a, [bc]                                    ; $5a83: $0a
    ld [bc], a                                    ; $5a84: $02
    pop af                                        ; $5a85: $f1
    ld bc, $00f9                                  ; $5a86: $01 $f9 $00
    ld bc, $0800                                  ; $5a89: $01 $00 $08
    db $10                                        ; $5a8c: $10
    rst $38                                       ; $5a8d: $ff
    ld [bc], a                                    ; $5a8e: $02
    ld bc, $0f9e                                  ; $5a8f: $01 $9e $0f
    ld c, $7f                                     ; $5a92: $0e $7f
    ld [hl], c                                    ; $5a94: $71
    cp $8f                                        ; $5a95: $fe $8f
    pop af                                        ; $5a97: $f1
    cp [hl]                                       ; $5a98: $be
    db $eb                                        ; $5a99: $eb
    or h                                          ; $5a9a: $b4
    rst $30                                       ; $5a9b: $f7
    xor b                                         ; $5a9c: $a8
    db $e4                                        ; $5a9d: $e4
    cp e                                          ; $5a9e: $bb
    db $eb                                        ; $5a9f: $eb
    or a                                          ; $5aa0: $b7
    rst $28                                       ; $5aa1: $ef
    or a                                          ; $5aa2: $b7
    rst $38                                       ; $5aa3: $ff
    and a                                         ; $5aa4: $a7
    rst $38                                       ; $5aa5: $ff
    and e                                         ; $5aa6: $a3
    rst $38                                       ; $5aa7: $ff
    and b                                         ; $5aa8: $a0
    rst $38                                       ; $5aa9: $ff
    and b                                         ; $5aaa: $a0
    rst $38                                       ; $5aab: $ff
    and b                                         ; $5aac: $a0
    rst $38                                       ; $5aad: $ff
    ld b, c                                       ; $5aae: $41
    ld [bc], a                                    ; $5aaf: $02
    rlca                                          ; $5ab0: $07
    sub e                                         ; $5ab1: $93
    ccf                                           ; $5ab2: $3f
    jr c, @+$01                                   ; $5ab3: $38 $ff

    rst $00                                       ; $5ab5: $c7
    ld hl, sp+$3f                                 ; $5ab6: $f8 $3f
    rst $20                                       ; $5ab8: $e7
    ret c                                         ; $5ab9: $d8

    rst $18                                       ; $5aba: $df
    jr c, jr_0f9_5a7c                             ; $5abb: $38 $bf

    ld a, h                                       ; $5abd: $7c
    cp a                                          ; $5abe: $bf
    ld a, h                                       ; $5abf: $7c
    rst $18                                       ; $5ac0: $df
    ccf                                           ; $5ac1: $3f
    rst $38                                       ; $5ac2: $ff
    ccf                                           ; $5ac3: $3f
    ld a, a                                       ; $5ac4: $7f
    dec bc                                        ; $5ac5: $0b
    rst $38                                       ; $5ac6: $ff
    ld [bc], a                                    ; $5ac7: $02
    ldh a, [$95]                                  ; $5ac8: $f0 $95
    ld hl, sp+$08                                 ; $5aca: $f8 $08
    db $fc                                        ; $5acc: $fc
    db $f4                                        ; $5acd: $f4
    ld l, [hl]                                    ; $5ace: $6e
    sbc d                                         ; $5acf: $9a
    rlca                                          ; $5ad0: $07
    db $fd                                        ; $5ad1: $fd
    sub e                                         ; $5ad2: $93
    ld l, [hl]                                    ; $5ad3: $6e
    rst $28                                       ; $5ad4: $ef
    ld [hl], d                                    ; $5ad5: $72
    rst $30                                       ; $5ad6: $f7
    ld sp, hl                                     ; $5ad7: $f9

jr_0f9_5ad8:
    rst $30                                       ; $5ad8: $f7
    ld hl, sp-$11                                 ; $5ad9: $f8 $ef
    ldh a, [$fc]                                  ; $5adb: $f0 $fc
    di                                            ; $5add: $f3
    ei                                            ; $5ade: $fb
    ld [$81ff], sp                                ; $5adf: $08 $ff $81
    db $fc                                        ; $5ae2: $fc
    inc b                                         ; $5ae3: $04
    add b                                         ; $5ae4: $80
    sbc h                                         ; $5ae5: $9c
    ret nz                                        ; $5ae6: $c0

    ld b, b                                       ; $5ae7: $40
    ldh [$a0], a                                  ; $5ae8: $e0 $a0
    ldh [$a0], a                                  ; $5aea: $e0 $a0
    ldh a, [$50]                                  ; $5aec: $f0 $50
    jr c, jr_0f9_5ad8                             ; $5aee: $38 $e8

    sbc h                                         ; $5af0: $9c
    db $f4                                        ; $5af1: $f4
    call c, $ceb4                                 ; $5af2: $dc $b4 $ce
    ld a, [hl-]                                   ; $5af5: $3a
    rst $10                                       ; $5af6: $d7
    dec l                                         ; $5af7: $2d
    rst $10                                       ; $5af8: $d7
    dec l                                         ; $5af9: $2d
    rst $10                                       ; $5afa: $d7
    dec l                                         ; $5afb: $2d
    rst $10                                       ; $5afc: $d7
    dec l                                         ; $5afd: $2d
    adc $3a                                       ; $5afe: $ce $3a
    call c, Call_000_02b4                         ; $5b00: $dc $b4 $02
    add b                                         ; $5b03: $80
    sub [hl]                                      ; $5b04: $96
    rst $38                                       ; $5b05: $ff
    and e                                         ; $5b06: $a3
    rst $38                                       ; $5b07: $ff
    and a                                         ; $5b08: $a7
    rst $28                                       ; $5b09: $ef
    or a                                          ; $5b0a: $b7
    db $eb                                        ; $5b0b: $eb
    or a                                          ; $5b0c: $b7
    db $e4                                        ; $5b0d: $e4
    cp e                                          ; $5b0e: $bb
    rst $30                                       ; $5b0f: $f7
    xor b                                         ; $5b10: $a8
    db $eb                                        ; $5b11: $eb
    or h                                          ; $5b12: $b4
    pop af                                        ; $5b13: $f1
    cp [hl]                                       ; $5b14: $be
    ld a, [hl]                                    ; $5b15: $7e
    ld c, a                                       ; $5b16: $4f
    ccf                                           ; $5b17: $3f
    ld sp, $0e0f                                  ; $5b18: $31 $0f $0e
    ld [bc], a                                    ; $5b1b: $02
    ld bc, $0006                                  ; $5b1c: $01 $06 $00
    inc b                                         ; $5b1f: $04
    ld a, a                                       ; $5b20: $7f
    ld b, $ff                                     ; $5b21: $06 $ff
    add c                                         ; $5b23: $81
    ld a, a                                       ; $5b24: $7f
    ld [bc], a                                    ; $5b25: $02
    rst $38                                       ; $5b26: $ff
    sub c                                         ; $5b27: $91
    ccf                                           ; $5b28: $3f
    rst $18                                       ; $5b29: $df
    ccf                                           ; $5b2a: $3f
    cp a                                          ; $5b2b: $bf
    ld a, h                                       ; $5b2c: $7c
    cp a                                          ; $5b2d: $bf
    ld a, h                                       ; $5b2e: $7c
    rst $18                                       ; $5b2f: $df
    jr c, @-$17                                   ; $5b30: $38 $e7

    ret c                                         ; $5b32: $d8

    ld hl, sp+$3f                                 ; $5b33: $f8 $3f
    rst $38                                       ; $5b35: $ff
    rst $00                                       ; $5b36: $c7
    ccf                                           ; $5b37: $3f
    jr c, jr_0f9_5b3c                             ; $5b38: $38 $02

    rlca                                          ; $5b3a: $07
    add [hl]                                      ; $5b3b: $86

jr_0f9_5b3c:
    ld a, a                                       ; $5b3c: $7f
    ld a, [hl]                                    ; $5b3d: $7e
    rst $38                                       ; $5b3e: $ff
    cp $ff                                        ; $5b3f: $fe $ff
    cp $06                                        ; $5b41: $fe $06
    rst $38                                       ; $5b43: $ff
    sbc d                                         ; $5b44: $9a
    db $fd                                        ; $5b45: $fd
    rst $38                                       ; $5b46: $ff
    cp $f9                                        ; $5b47: $fe $f9
    rst $30                                       ; $5b49: $f7
    ld hl, sp-$05                                 ; $5b4a: $f8 $fb
    db $fc                                        ; $5b4c: $fc
    ei                                            ; $5b4d: $fb
    db $fc                                        ; $5b4e: $fc
    rst $30                                       ; $5b4f: $f7
    add hl, sp                                    ; $5b50: $39
    ret                                           ; $5b51: $c9


    scf                                           ; $5b52: $37
    inc bc                                        ; $5b53: $03
    cp $37                                        ; $5b54: $fe $37
    call $fafe                                    ; $5b56: $cd $fe $fa
    ld b, b                                       ; $5b59: $40
    nop                                           ; $5b5a: $00
    ld b, b                                       ; $5b5b: $40
    nop                                           ; $5b5c: $00
    ld b, b                                       ; $5b5d: $40
    nop                                           ; $5b5e: $00
    inc b                                         ; $5b5f: $04
    ld b, b                                       ; $5b60: $40
    sub b                                         ; $5b61: $90
    ld h, a                                       ; $5b62: $67
    ld a, l                                       ; $5b63: $7d
    ld c, [hl]                                    ; $5b64: $4e
    ld a, d                                       ; $5b65: $7a
    inc a                                         ; $5b66: $3c
    ld d, h                                       ; $5b67: $54
    ld a, b                                       ; $5b68: $78
    jr z, jr_0f9_5be3                             ; $5b69: $28 $78

    jr z, @+$72                                   ; $5b6b: $28 $70

    ld d, b                                       ; $5b6d: $50
    ld h, b                                       ; $5b6e: $60
    jr nz, jr_0f9_5bd1                            ; $5b6f: $20 $60

    jr nz, jr_0f9_5b75                            ; $5b71: $20 $02

    ld b, b                                       ; $5b73: $40
    inc b                                         ; $5b74: $04

jr_0f9_5b75:
    nop                                           ; $5b75: $00
    add d                                         ; $5b76: $82
    ccf                                           ; $5b77: $3f
    ld bc, $3e02                                  ; $5b78: $01 $02 $3e
    inc e                                         ; $5b7b: $1c
    nop                                           ; $5b7c: $00
    rst $38                                       ; $5b7d: $ff
    add hl, de                                    ; $5b7e: $19
    ld a, [bc]                                    ; $5b7f: $0a
    pop af                                        ; $5b80: $f1
    db $10                                        ; $5b81: $10
    ldh a, [rIF]                                  ; $5b82: $f0 $0f
    ld hl, sp-$11                                 ; $5b84: $f8 $ef
    pop af                                        ; $5b86: $f1
    rst $30                                       ; $5b87: $f7
    ldh a, [rIE]                                  ; $5b88: $f0 $ff
    db $f4                                        ; $5b8a: $f4
    rlca                                          ; $5b8b: $07
    ld sp, hl                                     ; $5b8c: $f9
    ld a, [bc]                                    ; $5b8d: $0a
    ld bc, $00f3                                  ; $5b8e: $01 $f3 $00
    ei                                            ; $5b91: $fb
    nop                                           ; $5b92: $00
    inc bc                                        ; $5b93: $03
    add hl, bc                                    ; $5b94: $09
    rlca                                          ; $5b95: $07
    db $10                                        ; $5b96: $10
    ei                                            ; $5b97: $fb
    ld [bc], a                                    ; $5b98: $02
    inc bc                                        ; $5b99: $03
    sbc [hl]                                      ; $5b9a: $9e
    rlca                                          ; $5b9b: $07
    inc b                                         ; $5b9c: $04
    rrca                                          ; $5b9d: $0f
    dec bc                                        ; $5b9e: $0b
    inc e                                         ; $5b9f: $1c
    rla                                           ; $5ba0: $17
    add hl, sp                                    ; $5ba1: $39
    ld l, $73                                     ; $5ba2: $2e $73
    ld e, h                                       ; $5ba4: $5c
    rst $30                                       ; $5ba5: $f7
    cp b                                          ; $5ba6: $b8
    ld a, d                                       ; $5ba7: $7a
    ld d, l                                       ; $5ba8: $55
    ld [hl], d                                    ; $5ba9: $72
    ld e, l                                       ; $5baa: $5d
    dec sp                                        ; $5bab: $3b
    dec l                                         ; $5bac: $2d
    dec sp                                        ; $5bad: $3b
    dec l                                         ; $5bae: $2d
    ccf                                           ; $5baf: $3f
    inc h                                         ; $5bb0: $24
    rra                                           ; $5bb1: $1f
    inc d                                         ; $5bb2: $14
    rra                                           ; $5bb3: $1f
    inc d                                         ; $5bb4: $14
    rrca                                          ; $5bb5: $0f
    ld a, [bc]                                    ; $5bb6: $0a
    rrca                                          ; $5bb7: $0f
    ld a, [bc]                                    ; $5bb8: $0a
    ld [bc], a                                    ; $5bb9: $02
    inc bc                                        ; $5bba: $03
    sbc e                                         ; $5bbb: $9b
    rlca                                          ; $5bbc: $07
    inc b                                         ; $5bbd: $04
    rrca                                          ; $5bbe: $0f
    dec bc                                        ; $5bbf: $0b
    inc e                                         ; $5bc0: $1c
    rla                                           ; $5bc1: $17
    jr c, jr_0f9_5bf3                             ; $5bc2: $38 $2f

    ld [hl], c                                    ; $5bc4: $71
    ld e, [hl]                                    ; $5bc5: $5e
    rst $28                                       ; $5bc6: $ef
    or b                                          ; $5bc7: $b0
    rst $08                                       ; $5bc8: $cf
    ld [hl], c                                    ; $5bc9: $71
    rst $38                                       ; $5bca: $ff
    or b                                          ; $5bcb: $b0
    cp a                                          ; $5bcc: $bf
    ld a, h                                       ; $5bcd: $7c
    cp a                                          ; $5bce: $bf
    ld a, a                                       ; $5bcf: $7f
    cp a                                          ; $5bd0: $bf

jr_0f9_5bd1:
    ld a, a                                       ; $5bd1: $7f
    rst $38                                       ; $5bd2: $ff
    rra                                           ; $5bd3: $1f
    rst $38                                       ; $5bd4: $ff
    rra                                           ; $5bd5: $1f
    ccf                                           ; $5bd6: $3f
    inc bc                                        ; $5bd7: $03
    rst $38                                       ; $5bd8: $ff
    ld [bc], a                                    ; $5bd9: $02
    ret nz                                        ; $5bda: $c0

    sub e                                         ; $5bdb: $93
    ldh a, [$30]                                  ; $5bdc: $f0 $30
    ld hl, sp-$38                                 ; $5bde: $f8 $c8
    cp [hl]                                       ; $5be0: $be
    or $8f                                        ; $5be1: $f6 $8f

jr_0f9_5be3:
    ld a, c                                       ; $5be3: $79
    cpl                                           ; $5be4: $2f
    sub $27                                       ; $5be5: $d6 $27
    ld sp, hl                                     ; $5be7: $f9
    rst $30                                       ; $5be8: $f7
    ld a, b                                       ; $5be9: $78
    cp $f9                                        ; $5bea: $fe $f9
    rst $30                                       ; $5bec: $f7
    ld sp, hl                                     ; $5bed: $f9
    db $fc                                        ; $5bee: $fc
    dec bc                                        ; $5bef: $0b
    rst $38                                       ; $5bf0: $ff
    ld [bc], a                                    ; $5bf1: $02
    add b                                         ; $5bf2: $80

jr_0f9_5bf3:
    sbc [hl]                                      ; $5bf3: $9e
    ldh [$60], a                                  ; $5bf4: $e0 $60
    ldh a, [$90]                                  ; $5bf6: $f0 $90
    db $fc                                        ; $5bf8: $fc
    db $ec                                        ; $5bf9: $ec
    ld e, [hl]                                    ; $5bfa: $5e
    or d                                          ; $5bfb: $b2
    adc a                                         ; $5bfc: $8f
    db $fc                                        ; $5bfd: $fc
    di                                            ; $5bfe: $f3
    rst $28                                       ; $5bff: $ef
    db $f4                                        ; $5c00: $f4
    set 7, d                                      ; $5c01: $cb $fa
    push hl                                       ; $5c03: $e5
    ei                                            ; $5c04: $fb
    add l                                         ; $5c05: $85
    ld sp, hl                                     ; $5c06: $f9
    add a                                         ; $5c07: $87
    db $fd                                        ; $5c08: $fd
    db $d3                                        ; $5c09: $d3
    db $fd                                        ; $5c0a: $fd
    ei                                            ; $5c0b: $fb
    db $fd                                        ; $5c0c: $fd
    rst $38                                       ; $5c0d: $ff
    ei                                            ; $5c0e: $fb
    cp $d7                                        ; $5c0f: $fe $d7
    ld a, [$0402]                                 ; $5c11: $fa $02 $04
    sub b                                         ; $5c14: $90
    ld b, $02                                     ; $5c15: $06 $02
    rlca                                          ; $5c17: $07
    dec b                                         ; $5c18: $05
    rlca                                          ; $5c19: $07
    dec b                                         ; $5c1a: $05
    ld b, $02                                     ; $5c1b: $06 $02
    ld b, $02                                     ; $5c1d: $06 $02
    ld b, $02                                     ; $5c1f: $06 $02
    ld b, $02                                     ; $5c21: $06 $02
    ld b, $02                                     ; $5c23: $06 $02
    inc b                                         ; $5c25: $04
    inc b                                         ; $5c26: $04
    adc d                                         ; $5c27: $8a
    db $fc                                        ; $5c28: $fc
    inc d                                         ; $5c29: $14
    db $fc                                        ; $5c2a: $fc
    inc d                                         ; $5c2b: $14
    ld hl, sp+$28                                 ; $5c2c: $f8 $28
    ld a, b                                       ; $5c2e: $78
    xor b                                         ; $5c2f: $a8
    ld hl, sp+$28                                 ; $5c30: $f8 $28
    dec b                                         ; $5c32: $05
    rrca                                          ; $5c33: $0f
    sbc c                                         ; $5c34: $99
    dec b                                         ; $5c35: $05
    rrca                                          ; $5c36: $0f
    ld bc, $000f                                  ; $5c37: $01 $0f $00
    rrca                                          ; $5c3a: $0f
    inc bc                                        ; $5c3b: $03
    rrca                                          ; $5c3c: $0f
    inc bc                                        ; $5c3d: $03
    rst $38                                       ; $5c3e: $ff
    sub e                                         ; $5c3f: $93
    ld [hl], a                                    ; $5c40: $77
    ld e, e                                       ; $5c41: $5b
    ld [hl], e                                    ; $5c42: $73
    ld e, h                                       ; $5c43: $5c
    add hl, sp                                    ; $5c44: $39
    ld l, $3c                                     ; $5c45: $2e $3c
    dec hl                                        ; $5c47: $2b
    dec e                                         ; $5c48: $1d
    ld d, $1f                                     ; $5c49: $16 $1f
    rla                                           ; $5c4b: $17
    rrca                                          ; $5c4c: $0f
    ld [$0702], sp                                ; $5c4d: $08 $02 $07
    ld [bc], a                                    ; $5c50: $02
    rrca                                          ; $5c51: $0f
    ld c, $ff                                     ; $5c52: $0e $ff
    adc h                                         ; $5c54: $8c
    cp a                                          ; $5c55: $bf
    rst $38                                       ; $5c56: $ff
    rst $30                                       ; $5c57: $f7
    adc a                                         ; $5c58: $8f
    ccf                                           ; $5c59: $3f
    rst $08                                       ; $5c5a: $cf
    rst $28                                       ; $5c5b: $ef
    rra                                           ; $5c5c: $1f
    ld [hl], d                                    ; $5c5d: $72
    adc a                                         ; $5c5e: $8f
    dec e                                         ; $5c5f: $1d
    db $e3                                        ; $5c60: $e3
    inc bc                                        ; $5c61: $03
    rst $38                                       ; $5c62: $ff
    add c                                         ; $5c63: $81
    nop                                           ; $5c64: $00
    ld [$85f0], sp                                ; $5c65: $08 $f0 $85
    cp $fc                                        ; $5c68: $fe $fc
    cp $fc                                        ; $5c6a: $fe $fc
    ld hl, sp+$03                                 ; $5c6c: $f8 $03
    cp $8e                                        ; $5c6e: $fe $8e
    db $fc                                        ; $5c70: $fc
    cp [hl]                                       ; $5c71: $be
    db $fd                                        ; $5c72: $fd
    ld a, $f8                                     ; $5c73: $3e $f8
    rlca                                          ; $5c75: $07
    ldh a, [rIF]                                  ; $5c76: $f0 $0f
    jp $ff3d                                      ; $5c78: $c3 $3d $ff


    cp $ff                                        ; $5c7b: $fe $ff
    nop                                           ; $5c7d: $00
    ld [bc], a                                    ; $5c7e: $02
    rst $38                                       ; $5c7f: $ff
    adc d                                         ; $5c80: $8a
    rlca                                          ; $5c81: $07
    dec c                                         ; $5c82: $0d
    ld c, $0a                                     ; $5c83: $0e $0a
    ld c, $0a                                     ; $5c85: $0e $0a
    ld c, $0a                                     ; $5c87: $0e $0a
    inc c                                         ; $5c89: $0c
    inc b                                         ; $5c8a: $04
    ld [bc], a                                    ; $5c8b: $02
    ld [$0014], sp                                ; $5c8c: $08 $14 $00
    ld [bc], a                                    ; $5c8f: $02
    rst $38                                       ; $5c90: $ff
    ld e, $00                                     ; $5c91: $1e $00
    rst $38                                       ; $5c93: $ff
    add hl, de                                    ; $5c94: $19
    ld a, [bc]                                    ; $5c95: $0a
    pop af                                        ; $5c96: $f1
    db $10                                        ; $5c97: $10
    ldh a, [rIF]                                  ; $5c98: $f0 $0f
    di                                            ; $5c9a: $f3
    pop af                                        ; $5c9b: $f1
    pop af                                        ; $5c9c: $f1
    ld sp, hl                                     ; $5c9d: $f9
    ld a, [c]                                     ; $5c9e: $f2
    ld bc, $09f4                                  ; $5c9f: $01 $f4 $09
    ld [bc], a                                    ; $5ca2: $02
    ldh a, [rSB]                                  ; $5ca3: $f0 $01
    ld hl, sp+$01                                 ; $5ca5: $f8 $01
    nop                                           ; $5ca7: $00
    ld [bc], a                                    ; $5ca8: $02
    ld [$0904], sp                                ; $5ca9: $08 $04 $09
    ld de, $02fa                                  ; $5cac: $11 $fa $02
    ld bc, $039e                                  ; $5caf: $01 $9e $03
    ld [bc], a                                    ; $5cb2: $02
    inc bc                                        ; $5cb3: $03
    ld [bc], a                                    ; $5cb4: $02
    inc bc                                        ; $5cb5: $03
    ld [bc], a                                    ; $5cb6: $02
    rlca                                          ; $5cb7: $07
    dec b                                         ; $5cb8: $05
    rrca                                          ; $5cb9: $0f
    dec bc                                        ; $5cba: $0b
    ld c, $0b                                     ; $5cbb: $0e $0b
    dec e                                         ; $5cbd: $1d
    ld d, $1d                                     ; $5cbe: $16 $1d
    ld d, $3b                                     ; $5cc0: $16 $3b
    cpl                                           ; $5cc2: $2f
    dec sp                                        ; $5cc3: $3b
    cpl                                           ; $5cc4: $2f
    ld [hl], a                                    ; $5cc5: $77
    ld e, e                                       ; $5cc6: $5b
    ld a, l                                       ; $5cc7: $7d
    ld d, e                                       ; $5cc8: $53
    rst $38                                       ; $5cc9: $ff
    or b                                          ; $5cca: $b0
    rst $28                                       ; $5ccb: $ef
    or b                                          ; $5ccc: $b0
    call z, $0273                                 ; $5ccd: $cc $73 $02
    ld [hl], b                                    ; $5cd0: $70
    sub [hl]                                      ; $5cd1: $96
    rst $38                                       ; $5cd2: $ff
    adc a                                         ; $5cd3: $8f
    rst $38                                       ; $5cd4: $ff
    ld [hl], b                                    ; $5cd5: $70
    jp $ef7f                                      ; $5cd6: $c3 $7f $ef


    sub b                                         ; $5cd9: $90
    pop bc                                        ; $5cda: $c1
    cp [hl]                                       ; $5cdb: $be
    ld e, $ff                                     ; $5cdc: $1e $ff
    ld a, [hl]                                    ; $5cde: $7e
    sbc a                                         ; $5cdf: $9f
    rst $38                                       ; $5ce0: $ff
    rra                                           ; $5ce1: $1f
    rst $38                                       ; $5ce2: $ff
    rrca                                          ; $5ce3: $0f
    rst $38                                       ; $5ce4: $ff
    rrca                                          ; $5ce5: $0f
    rst $38                                       ; $5ce6: $ff
    rst $18                                       ; $5ce7: $df
    ld [$02ff], sp                                ; $5ce8: $08 $ff $02
    ldh [$94], a                                  ; $5ceb: $e0 $94
    rst $38                                       ; $5ced: $ff
    rra                                           ; $5cee: $1f
    rst $38                                       ; $5cef: $ff
    ret nz                                        ; $5cf0: $c0

    ccf                                           ; $5cf1: $3f
    rst $38                                       ; $5cf2: $ff
    pop bc                                        ; $5cf3: $c1
    ccf                                           ; $5cf4: $3f
    cp [hl]                                       ; $5cf5: $be
    ld a, l                                       ; $5cf6: $7d
    cp a                                          ; $5cf7: $bf
    ld a, h                                       ; $5cf8: $7c
    rst $38                                       ; $5cf9: $ff
    db $fc                                        ; $5cfa: $fc
    rst $38                                       ; $5cfb: $ff
    ld hl, sp-$01                                 ; $5cfc: $f8 $ff
    ld hl, sp-$01                                 ; $5cfe: $f8 $ff
    db $fd                                        ; $5d00: $fd
    ld a, [bc]                                    ; $5d01: $0a
    rst $38                                       ; $5d02: $ff
    ld [bc], a                                    ; $5d03: $02
    ldh a, [$9e]                                  ; $5d04: $f0 $9e
    ld hl, sp+$08                                 ; $5d06: $f8 $08
    db $fc                                        ; $5d08: $fc
    db $e4                                        ; $5d09: $e4
    call c, Call_0f9_7c34                         ; $5d0a: $dc $34 $7c
    sub h                                         ; $5d0d: $94
    adc h                                         ; $5d0e: $8c
    ld [hl], h                                    ; $5d0f: $74
    sbc $32                                       ; $5d10: $de $32
    xor $1a                                       ; $5d12: $ee $1a
    xor $fa                                       ; $5d14: $ee $fa
    xor $fa                                       ; $5d16: $ee $fa
    cp $ea                                        ; $5d18: $fe $ea
    sbc $ea                                       ; $5d1a: $de $ea
    cp $8a                                        ; $5d1c: $fe $8a
    rst $38                                       ; $5d1e: $ff
    add l                                         ; $5d1f: $85
    rra                                           ; $5d20: $1f
    push hl                                       ; $5d21: $e5
    rst $28                                       ; $5d22: $ef
    push af                                       ; $5d23: $f5
    ld [bc], a                                    ; $5d24: $02
    add b                                         ; $5d25: $80
    sub b                                         ; $5d26: $90
    db $ed                                        ; $5d27: $ed
    or e                                          ; $5d28: $b3
    jp hl                                         ; $5d29: $e9


    or a                                          ; $5d2a: $b7
    ld [hl], e                                    ; $5d2b: $73
    ld e, l                                       ; $5d2c: $5d
    add hl, sp                                    ; $5d2d: $39
    ld l, $1f                                     ; $5d2e: $2e $1f
    inc d                                         ; $5d30: $14
    rrca                                          ; $5d31: $0f
    ld a, [bc]                                    ; $5d32: $0a
    rlca                                          ; $5d33: $07
    dec b                                         ; $5d34: $05
    inc bc                                        ; $5d35: $03
    ld [bc], a                                    ; $5d36: $02
    ld [bc], a                                    ; $5d37: $02
    ld bc, $000c                                  ; $5d38: $01 $0c $00
    ld [bc], a                                    ; $5d3b: $02
    ld a, a                                       ; $5d3c: $7f
    add d                                         ; $5d3d: $82
    ccf                                           ; $5d3e: $3f
    ld a, a                                       ; $5d3f: $7f
    rlca                                          ; $5d40: $07
    rst $38                                       ; $5d41: $ff
    sub l                                         ; $5d42: $95
    rst $08                                       ; $5d43: $cf
    rst $38                                       ; $5d44: $ff
    rlca                                          ; $5d45: $07
    rst $38                                       ; $5d46: $ff
    rrca                                          ; $5d47: $0f
    rst $38                                       ; $5d48: $ff
    rrca                                          ; $5d49: $0f
    rst $38                                       ; $5d4a: $ff
    adc a                                         ; $5d4b: $8f
    cp $47                                        ; $5d4c: $fe $47
    rst $20                                       ; $5d4e: $e7
    cp b                                          ; $5d4f: $b8
    ld [hl], c                                    ; $5d50: $71
    ld e, [hl]                                    ; $5d51: $5e
    ccf                                           ; $5d52: $3f
    jr z, jr_0f9_5d72                             ; $5d53: $28 $1d

    rla                                           ; $5d55: $17
    rrca                                          ; $5d56: $0f
    dec bc                                        ; $5d57: $0b
    ld [bc], a                                    ; $5d58: $02
    add b                                         ; $5d59: $80
    add hl, bc                                    ; $5d5a: $09
    rst $38                                       ; $5d5b: $ff
    sub l                                         ; $5d5c: $95
    cp $ff                                        ; $5d5d: $fe $ff
    db $fc                                        ; $5d5f: $fc
    rst $38                                       ; $5d60: $ff
    cp $5f                                        ; $5d61: $fe $5f
    cp [hl]                                       ; $5d63: $be
    rst $38                                       ; $5d64: $ff
    ld e, $ed                                     ; $5d65: $1e $ed
    rra                                           ; $5d67: $1f
    rst $38                                       ; $5d68: $ff
    inc bc                                        ; $5d69: $03
    xor a                                         ; $5d6a: $af
    ld e, h                                       ; $5d6b: $5c
    ccf                                           ; $5d6c: $3f
    di                                            ; $5d6d: $f3
    ld a, h                                       ; $5d6e: $7c
    call z, $30f0                                 ; $5d6f: $cc $f0 $30

Call_0f9_5d72:
jr_0f9_5d72:
    inc b                                         ; $5d72: $04
    add b                                         ; $5d73: $80
    sub d                                         ; $5d74: $92
    di                                            ; $5d75: $f3
    cp $fb                                        ; $5d76: $fe $fb
    or $e3                                        ; $5d78: $f6 $e3
    ld a, [hl]                                    ; $5d7a: $7e
    rst $20                                       ; $5d7b: $e7
    ld a, [de]                                    ; $5d7c: $1a
    rst $08                                       ; $5d7d: $cf
    ld [hl], $9f                                  ; $5d7e: $36 $9f
    ld a, l                                       ; $5d80: $7d
    ld a, $f2                                     ; $5d81: $3e $f2
    db $fc                                        ; $5d83: $fc
    call z, $30f0                                 ; $5d84: $cc $f0 $30
    ld [bc], a                                    ; $5d87: $02
    ret nz                                        ; $5d88: $c0

    ld [$0a00], sp                                ; $5d89: $08 $00 $0a
    ld bc, $0016                                  ; $5d8c: $01 $16 $00
    add d                                         ; $5d8f: $82
    rra                                           ; $5d90: $1f
    inc de                                        ; $5d91: $13
    ld [bc], a                                    ; $5d92: $02
    inc c                                         ; $5d93: $0c
    inc e                                         ; $5d94: $1c
    nop                                           ; $5d95: $00
    rst $38                                       ; $5d96: $ff
    rla                                           ; $5d97: $17
    add hl, bc                                    ; $5d98: $09
    pop af                                        ; $5d99: $f1
    db $10                                        ; $5d9a: $10
    ldh a, [rIF]                                  ; $5d9b: $f0 $0f
    di                                            ; $5d9d: $f3
    ld a, [c]                                     ; $5d9e: $f2
    pop af                                        ; $5d9f: $f1
    ld a, [$02f0]                                 ; $5da0: $fa $f0 $02
    push af                                       ; $5da3: $f5
    ld a, [bc]                                    ; $5da4: $0a
    inc bc                                        ; $5da5: $03
    pop af                                        ; $5da6: $f1
    ld bc, $00f9                                  ; $5da7: $01 $f9 $00
    ld bc, $0800                                  ; $5daa: $01 $00 $08
    db $10                                        ; $5dad: $10
    rst $38                                       ; $5dae: $ff
    ld [bc], a                                    ; $5daf: $02
    ld bc, $0f9e                                  ; $5db0: $01 $9e $0f
    ld c, $3f                                     ; $5db3: $0e $3f
    ld sp, $4f7e                                  ; $5db5: $31 $7e $4f
    ld [hl], e                                    ; $5db8: $73
    ld e, h                                       ; $5db9: $5c
    ld hl, sp-$49                                 ; $5dba: $f8 $b7
    db $e3                                        ; $5dbc: $e3
    cp a                                          ; $5dbd: $bf
    rst $20                                       ; $5dbe: $e7
    cp e                                          ; $5dbf: $bb
    rst $30                                       ; $5dc0: $f7
    cp c                                          ; $5dc1: $b9
    rst $28                                       ; $5dc2: $ef
    or b                                          ; $5dc3: $b0
    rst $28                                       ; $5dc4: $ef
    or b                                          ; $5dc5: $b0
    rst $38                                       ; $5dc6: $ff
    and b                                         ; $5dc7: $a0
    rst $28                                       ; $5dc8: $ef
    cp a                                          ; $5dc9: $bf
    rst $28                                       ; $5dca: $ef
    cp a                                          ; $5dcb: $bf
    rst $28                                       ; $5dcc: $ef
    cp a                                          ; $5dcd: $bf
    push af                                       ; $5dce: $f5
    xor a                                         ; $5dcf: $af
    ld [bc], a                                    ; $5dd0: $02
    ld bc, $1f8f                                  ; $5dd1: $01 $8f $1f
    ld e, $ff                                     ; $5dd4: $1e $ff
    pop hl                                        ; $5dd6: $e1
    cp $1f                                        ; $5dd7: $fe $1f
    db $fc                                        ; $5dd9: $fc
    db $e3                                        ; $5dda: $e3
    rst $30                                       ; $5ddb: $f7
    rrca                                          ; $5ddc: $0f
    ld [hl], a                                    ; $5ddd: $77
    adc a                                         ; $5dde: $8f
    or a                                          ; $5ddf: $b7
    rst $08                                       ; $5de0: $cf
    rst $18                                       ; $5de1: $df
    rrca                                          ; $5de2: $0f
    rst $38                                       ; $5de3: $ff
    ld [bc], a                                    ; $5de4: $02
    jr @-$63                                      ; $5de5: $18 $9b

    db $fc                                        ; $5de7: $fc
    db $e4                                        ; $5de8: $e4
    cp $1a                                        ; $5de9: $fe $1a
    rst $20                                       ; $5deb: $e7
    db $fd                                        ; $5dec: $fd
    ccf                                           ; $5ded: $3f
    push bc                                       ; $5dee: $c5
    swap [hl]                                     ; $5def: $cb $36
    pop af                                        ; $5df1: $f1
    rrca                                          ; $5df2: $0f
    db $fd                                        ; $5df3: $fd
    add e                                         ; $5df4: $83
    db $fc                                        ; $5df5: $fc
    add a                                         ; $5df6: $87
    cp $9f                                        ; $5df7: $fe $9f
    cp $ff                                        ; $5df9: $fe $ff
    cp $ff                                        ; $5dfb: $fe $ff
    db $fd                                        ; $5dfd: $fd
    cp $ff                                        ; $5dfe: $fe $ff
    db $fc                                        ; $5e00: $fc
    cp $03                                        ; $5e01: $fe $03
    rst $38                                       ; $5e03: $ff
    ld [bc], a                                    ; $5e04: $02
    add b                                         ; $5e05: $80
    or d                                          ; $5e06: $b2
    ret nz                                        ; $5e07: $c0

    ld b, b                                       ; $5e08: $40
    ret nz                                        ; $5e09: $c0

    ld b, b                                       ; $5e0a: $40
    ldh [$a0], a                                  ; $5e0b: $e0 $a0
    ldh [$a0], a                                  ; $5e0d: $e0 $a0
    ldh a, [$50]                                  ; $5e0f: $f0 $50
    ld hl, sp+$28                                 ; $5e11: $f8 $28
    ld hl, sp+$28                                 ; $5e13: $f8 $28
    db $fc                                        ; $5e15: $fc
    inc d                                         ; $5e16: $14
    ld l, $da                                     ; $5e17: $2e $da
    xor $da                                       ; $5e19: $ee $da
    rst $20                                       ; $5e1b: $e7
    db $dd                                        ; $5e1c: $dd
    rst $00                                       ; $5e1d: $c7
    db $fd                                        ; $5e1e: $fd
    rst $08                                       ; $5e1f: $cf
    dec [hl]                                      ; $5e20: $35
    adc $3a                                       ; $5e21: $ce $3a
    adc $3a                                       ; $5e23: $ce $3a
    ld sp, hl                                     ; $5e25: $f9
    and [hl]                                      ; $5e26: $a6
    rst $28                                       ; $5e27: $ef
    or b                                          ; $5e28: $b0
    or $b9                                        ; $5e29: $f6 $b9
    db $e4                                        ; $5e2b: $e4
    cp e                                          ; $5e2c: $bb
    rst $28                                       ; $5e2d: $ef
    or c                                          ; $5e2e: $b1
    add sp, -$49                                  ; $5e2f: $e8 $b7
    ld sp, hl                                     ; $5e31: $f9
    or [hl]                                       ; $5e32: $b6
    cp $8f                                        ; $5e33: $fe $8f
    ld a, a                                       ; $5e35: $7f
    ld [hl], e                                    ; $5e36: $73
    rrca                                          ; $5e37: $0f
    inc c                                         ; $5e38: $0c
    ld [bc], a                                    ; $5e39: $02
    inc bc                                        ; $5e3a: $03
    ld a, [bc]                                    ; $5e3b: $0a
    nop                                           ; $5e3c: $00
    inc b                                         ; $5e3d: $04
    ld a, a                                       ; $5e3e: $7f
    inc b                                         ; $5e3f: $04
    rst $38                                       ; $5e40: $ff
    add c                                         ; $5e41: $81
    ld a, a                                       ; $5e42: $7f
    inc b                                         ; $5e43: $04
    rst $38                                       ; $5e44: $ff
    sub c                                         ; $5e45: $91
    rst $20                                       ; $5e46: $e7
    rst $38                                       ; $5e47: $ff
    db $e3                                        ; $5e48: $e3
    rst $38                                       ; $5e49: $ff
    ld b, e                                       ; $5e4a: $43
    rst $38                                       ; $5e4b: $ff
    ld bc, $83ff                                  ; $5e4c: $01 $ff $83
    rst $38                                       ; $5e4f: $ff
    ld h, b                                       ; $5e50: $60
    db $fc                                        ; $5e51: $fc
    sbc a                                         ; $5e52: $9f
    ld a, a                                       ; $5e53: $7f
    ld h, e                                       ; $5e54: $63
    rra                                           ; $5e55: $1f
    inc e                                         ; $5e56: $1c
    ld [bc], a                                    ; $5e57: $02
    inc bc                                        ; $5e58: $03
    ld [bc], a                                    ; $5e59: $02
    ld a, a                                       ; $5e5a: $7f
    inc bc                                        ; $5e5b: $03
    rst $38                                       ; $5e5c: $ff
    add a                                         ; $5e5d: $87
    cp $ff                                        ; $5e5e: $fe $ff
    cp $ff                                        ; $5e60: $fe $ff
    db $fc                                        ; $5e62: $fc
    rst $38                                       ; $5e63: $ff
    cp $04                                        ; $5e64: $fe $04
    rst $38                                       ; $5e66: $ff
    sub b                                         ; $5e67: $90
    rst $30                                       ; $5e68: $f7
    rst $28                                       ; $5e69: $ef
    or b                                          ; $5e6a: $b0
    rst $08                                       ; $5e6b: $cf
    rst $18                                       ; $5e6c: $df
    pop hl                                        ; $5e6d: $e1
    ccf                                           ; $5e6e: $3f
    pop bc                                        ; $5e6f: $c1
    rst $30                                       ; $5e70: $f7
    ld c, $07                                     ; $5e71: $0e $07
    cp $4f                                        ; $5e73: $fe $4f
    cp l                                          ; $5e75: $bd
    cp $fa                                        ; $5e76: $fe $fa
    rlca                                          ; $5e78: $07
    ld b, b                                       ; $5e79: $40
    sub e                                         ; $5e7a: $93
    nop                                           ; $5e7b: $00
    ld b, b                                       ; $5e7c: $40
    nop                                           ; $5e7d: $00
    ld h, a                                       ; $5e7e: $67
    dec e                                         ; $5e7f: $1d
    ld l, [hl]                                    ; $5e80: $6e
    ld a, [de]                                    ; $5e81: $1a
    ld e, $7a                                     ; $5e82: $1e $7a
    inc e                                         ; $5e84: $1c
    ld [hl], h                                    ; $5e85: $74
    ld a, b                                       ; $5e86: $78
    jr z, jr_0f9_5ef9                             ; $5e87: $28 $70

    ld d, b                                       ; $5e89: $50
    ld h, b                                       ; $5e8a: $60
    jr nz, jr_0f9_5eed                            ; $5e8b: $20 $60

    jr nz, jr_0f9_5e91                            ; $5e8d: $20 $02

    ld b, b                                       ; $5e8f: $40
    inc b                                         ; $5e90: $04

jr_0f9_5e91:
    nop                                           ; $5e91: $00
    add h                                         ; $5e92: $84
    ccf                                           ; $5e93: $3f
    dec b                                         ; $5e94: $05
    ld a, $32                                     ; $5e95: $3e $32
    ld [bc], a                                    ; $5e97: $02
    inc c                                         ; $5e98: $0c
    ld a, [de]                                    ; $5e99: $1a
    nop                                           ; $5e9a: $00
    rst $38                                       ; $5e9b: $ff
    rrca                                          ; $5e9c: $0f
    dec b                                         ; $5e9d: $05
    rst $38                                       ; $5e9e: $ff
    dec bc                                        ; $5e9f: $0b
    ei                                            ; $5ea0: $fb
    add hl, bc                                    ; $5ea1: $09
    ld [c], a                                     ; $5ea2: $e2
    rst $30                                       ; $5ea3: $f7
    ld [c], a                                     ; $5ea4: $e2
    rst $38                                       ; $5ea5: $ff
    ld [$ec07], a                                 ; $5ea6: $ea $07 $ec
    dec bc                                        ; $5ea9: $0b
    ld a, [c]                                     ; $5eaa: $f2
    rst $38                                       ; $5eab: $ff
    ld [bc], a                                    ; $5eac: $02
    ld bc, $0f02                                  ; $5ead: $01 $02 $0f
    sub b                                         ; $5eb0: $90
    dec de                                        ; $5eb1: $1b
    rra                                           ; $5eb2: $1f
    inc a                                         ; $5eb3: $3c
    ccf                                           ; $5eb4: $3f
    cpl                                           ; $5eb5: $2f
    ccf                                           ; $5eb6: $3f
    scf                                           ; $5eb7: $37
    ccf                                           ; $5eb8: $3f
    rra                                           ; $5eb9: $1f
    ld e, $0e                                     ; $5eba: $1e $0e
    dec bc                                        ; $5ebc: $0b
    rrca                                          ; $5ebd: $0f
    ld [$0e0f], sp                                ; $5ebe: $08 $0f $0e
    ld [bc], a                                    ; $5ec1: $02
    inc sp                                        ; $5ec2: $33
    add [hl]                                      ; $5ec3: $86
    ld a, l                                       ; $5ec4: $7d
    ld e, l                                       ; $5ec5: $5d
    ei                                            ; $5ec6: $fb
    adc a                                         ; $5ec7: $8f
    ld [hl], b                                    ; $5ec8: $70
    ld e, a                                       ; $5ec9: $5f
    ld [bc], a                                    ; $5eca: $02
    ccf                                           ; $5ecb: $3f
    ld [bc], a                                    ; $5ecc: $02
    ld bc, $6002                                  ; $5ecd: $01 $02 $60
    add h                                         ; $5ed0: $84
    call nc, $dcf4                                ; $5ed1: $d4 $f4 $dc
    db $fc                                        ; $5ed4: $fc
    inc bc                                        ; $5ed5: $03
    ld hl, sp-$70                                 ; $5ed6: $f8 $90
    adc b                                         ; $5ed8: $88
    db $fc                                        ; $5ed9: $fc
    ld l, h                                       ; $5eda: $6c
    db $fc                                        ; $5edb: $fc
    sub h                                         ; $5edc: $94
    db $fc                                        ; $5edd: $fc
    sub h                                         ; $5ede: $94
    db $fc                                        ; $5edf: $fc
    sbc h                                         ; $5ee0: $9c
    db $fd                                        ; $5ee1: $fd
    ld h, l                                       ; $5ee2: $65
    rst $38                                       ; $5ee3: $ff
    rra                                           ; $5ee4: $1f
    cp $8f                                        ; $5ee5: $fe $8f
    db $fc                                        ; $5ee7: $fc
    inc bc                                        ; $5ee8: $03
    rst $38                                       ; $5ee9: $ff
    add h                                         ; $5eea: $84
    xor b                                         ; $5eeb: $a8
    rst $38                                       ; $5eec: $ff

jr_0f9_5eed:
    db $f4                                        ; $5eed: $f4
    rst $38                                       ; $5eee: $ff
    ld [bc], a                                    ; $5eef: $02
    ret nz                                        ; $5ef0: $c0

    adc l                                         ; $5ef1: $8d
    ldh [rNR41], a                                ; $5ef2: $e0 $20
    db $ec                                        ; $5ef4: $ec
    inc l                                         ; $5ef5: $2c
    di                                            ; $5ef6: $f3
    rst $38                                       ; $5ef7: $ff
    pop bc                                        ; $5ef8: $c1

jr_0f9_5ef9:
    rst $38                                       ; $5ef9: $ff
    cp a                                          ; $5efa: $bf
    rst $38                                       ; $5efb: $ff
    ld bc, $98ff                                  ; $5efc: $01 $ff $98
    inc bc                                        ; $5eff: $03
    rst $38                                       ; $5f00: $ff
    ld [bc], a                                    ; $5f01: $02
    rst $28                                       ; $5f02: $ef
    inc c                                         ; $5f03: $0c
    nop                                           ; $5f04: $00
    ld [bc], a                                    ; $5f05: $02
    inc c                                         ; $5f06: $0c
    ld [bc], a                                    ; $5f07: $02
    ld c, $02                                     ; $5f08: $0e $02
    inc c                                         ; $5f0a: $0c
    ld [bc], a                                    ; $5f0b: $02
    ld c, $04                                     ; $5f0c: $0e $04
    rrca                                          ; $5f0e: $0f
    ld [bc], a                                    ; $5f0f: $02
    ld c, $12                                     ; $5f10: $0e $12
    nop                                           ; $5f12: $00
    ld [bc], a                                    ; $5f13: $02
    ccf                                           ; $5f14: $3f
    ld [bc], a                                    ; $5f15: $02
    inc bc                                        ; $5f16: $03
    inc e                                         ; $5f17: $1c
    nop                                           ; $5f18: $00
    rst $38                                       ; $5f19: $ff
    rrca                                          ; $5f1a: $0f
    dec b                                         ; $5f1b: $05
    rst $38                                       ; $5f1c: $ff
    dec bc                                        ; $5f1d: $0b
    ei                                            ; $5f1e: $fb
    add hl, bc                                    ; $5f1f: $09
    ldh [$f7], a                                  ; $5f20: $e0 $f7
    ldh [rIE], a                                  ; $5f22: $e0 $ff
    and $07                                       ; $5f24: $e6 $07
    add sp, $0a                                   ; $5f26: $e8 $0a
    ldh a, [rIE]                                  ; $5f28: $f0 $ff
    ld [bc], a                                    ; $5f2a: $02
    ld bc, $0702                                  ; $5f2b: $01 $02 $07
    add d                                         ; $5f2e: $82
    inc e                                         ; $5f2f: $1c
    rra                                           ; $5f30: $1f
    ld [bc], a                                    ; $5f31: $02
    rrca                                          ; $5f32: $0f
    add c                                         ; $5f33: $81
    inc de                                        ; $5f34: $13
    inc bc                                        ; $5f35: $03
    rra                                           ; $5f36: $1f
    ld [bc], a                                    ; $5f37: $02
    rrca                                          ; $5f38: $0f
    adc [hl]                                      ; $5f39: $8e
    rlca                                          ; $5f3a: $07
    dec b                                         ; $5f3b: $05
    cpl                                           ; $5f3c: $2f
    inc l                                         ; $5f3d: $2c
    ld a, a                                       ; $5f3e: $7f
    ld d, a                                       ; $5f3f: $57
    ld sp, hl                                     ; $5f40: $f9
    adc c                                         ; $5f41: $89
    ld [hl], h                                    ; $5f42: $74
    ld e, h                                       ; $5f43: $5c
    inc hl                                        ; $5f44: $23
    ccf                                           ; $5f45: $3f
    jr jr_0f9_5f67                                ; $5f46: $18 $1f

    ld [bc], a                                    ; $5f48: $02
    rlca                                          ; $5f49: $07
    ld [bc], a                                    ; $5f4a: $02
    ld bc, $b002                                  ; $5f4b: $01 $02 $b0
    add l                                         ; $5f4e: $85
    xor $fe                                       ; $5f4f: $ee $fe
    call c, Call_0f9_7cfc                         ; $5f51: $dc $fc $7c
    ld [bc], a                                    ; $5f54: $02
    db $fc                                        ; $5f55: $fc
    sub a                                         ; $5f56: $97
    call nz, $b6fe                                ; $5f57: $c4 $fe $b6
    cp $4a                                        ; $5f5a: $fe $4a
    ld a, a                                       ; $5f5c: $7f
    set 7, a                                      ; $5f5d: $cb $ff
    ld c, [hl]                                    ; $5f5f: $4e
    rst $38                                       ; $5f60: $ff
    inc sp                                        ; $5f61: $33
    cp $8f                                        ; $5f62: $fe $8f
    cp $c7                                        ; $5f64: $fe $c7
    db $fc                                        ; $5f66: $fc

jr_0f9_5f67:
    rst $38                                       ; $5f67: $ff
    cp $ff                                        ; $5f68: $fe $ff
    xor c                                         ; $5f6a: $a9
    rst $38                                       ; $5f6b: $ff
    db $f4                                        ; $5f6c: $f4
    rst $38                                       ; $5f6d: $ff
    ld [bc], a                                    ; $5f6e: $02
    add b                                         ; $5f6f: $80
    sub c                                         ; $5f70: $91
    ret nz                                        ; $5f71: $c0

    ld b, b                                       ; $5f72: $40
    pop hl                                        ; $5f73: $e1
    and c                                         ; $5f74: $a1
    db $ed                                        ; $5f75: $ed
    dec l                                         ; $5f76: $2d
    di                                            ; $5f77: $f3
    rst $38                                       ; $5f78: $ff
    ld h, c                                       ; $5f79: $61
    rst $38                                       ; $5f7a: $ff
    rst $08                                       ; $5f7b: $cf
    rst $38                                       ; $5f7c: $ff
    ld sp, $40ff                                  ; $5f7d: $31 $ff $40
    rst $38                                       ; $5f80: $ff
    sbc a                                         ; $5f81: $9f
    inc bc                                        ; $5f82: $03
    rst $38                                       ; $5f83: $ff
    ld [bc], a                                    ; $5f84: $02
    ldh [$08], a                                  ; $5f85: $e0 $08
    nop                                           ; $5f87: $00
    ld [bc], a                                    ; $5f88: $02
    inc b                                         ; $5f89: $04
    ld b, $06                                     ; $5f8a: $06 $06
    inc b                                         ; $5f8c: $04
    rlca                                          ; $5f8d: $07
    ld [bc], a                                    ; $5f8e: $02
    ld b, $02                                     ; $5f8f: $06 $02
    inc b                                         ; $5f91: $04
    stop                                          ; $5f92: $10 $00
    ld [bc], a                                    ; $5f94: $02
    ccf                                           ; $5f95: $3f
    ld [bc], a                                    ; $5f96: $02
    inc bc                                        ; $5f97: $03
    inc e                                         ; $5f98: $1c
    nop                                           ; $5f99: $00
    rst $38                                       ; $5f9a: $ff
    rrca                                          ; $5f9b: $0f
    dec b                                         ; $5f9c: $05
    rst $38                                       ; $5f9d: $ff
    dec bc                                        ; $5f9e: $0b
    ei                                            ; $5f9f: $fb
    add hl, bc                                    ; $5fa0: $09
    rst $18                                       ; $5fa1: $df
    rst $30                                       ; $5fa2: $f7
    rst $18                                       ; $5fa3: $df
    rst $38                                       ; $5fa4: $ff
    push hl                                       ; $5fa5: $e5
    rlca                                          ; $5fa6: $07
    rst $20                                       ; $5fa7: $e7
    ld a, [bc]                                    ; $5fa8: $0a
    rst $28                                       ; $5fa9: $ef
    rst $38                                       ; $5faa: $ff
    ld [bc], a                                    ; $5fab: $02
    ld bc, $0702                                  ; $5fac: $01 $02 $07
    add d                                         ; $5faf: $82
    inc e                                         ; $5fb0: $1c
    rra                                           ; $5fb1: $1f
    ld [bc], a                                    ; $5fb2: $02
    rrca                                          ; $5fb3: $0f
    add c                                         ; $5fb4: $81
    inc de                                        ; $5fb5: $13
    inc bc                                        ; $5fb6: $03
    rra                                           ; $5fb7: $1f
    ld [bc], a                                    ; $5fb8: $02
    rrca                                          ; $5fb9: $0f
    adc [hl]                                      ; $5fba: $8e
    rlca                                          ; $5fbb: $07
    dec b                                         ; $5fbc: $05
    cpl                                           ; $5fbd: $2f
    inc l                                         ; $5fbe: $2c
    ld a, a                                       ; $5fbf: $7f
    ld d, a                                       ; $5fc0: $57
    ld sp, hl                                     ; $5fc1: $f9
    adc c                                         ; $5fc2: $89
    ld [hl], h                                    ; $5fc3: $74
    ld e, h                                       ; $5fc4: $5c
    inc hl                                        ; $5fc5: $23
    ccf                                           ; $5fc6: $3f
    jr jr_0f9_5fe8                                ; $5fc7: $18 $1f

    ld [bc], a                                    ; $5fc9: $02
    rlca                                          ; $5fca: $07
    ld [bc], a                                    ; $5fcb: $02
    ld bc, $b002                                  ; $5fcc: $01 $02 $b0
    add l                                         ; $5fcf: $85
    xor $fe                                       ; $5fd0: $ee $fe
    call c, Call_0f9_7cfc                         ; $5fd2: $dc $fc $7c
    ld [bc], a                                    ; $5fd5: $02
    db $fc                                        ; $5fd6: $fc
    sub a                                         ; $5fd7: $97
    call nz, $b6fe                                ; $5fd8: $c4 $fe $b6
    cp $4a                                        ; $5fdb: $fe $4a
    ld a, a                                       ; $5fdd: $7f
    set 7, a                                      ; $5fde: $cb $ff
    ld c, [hl]                                    ; $5fe0: $4e
    rst $38                                       ; $5fe1: $ff
    inc sp                                        ; $5fe2: $33
    cp $8f                                        ; $5fe3: $fe $8f
    cp $c7                                        ; $5fe5: $fe $c7
    db $fc                                        ; $5fe7: $fc

jr_0f9_5fe8:
    rst $38                                       ; $5fe8: $ff
    cp $ff                                        ; $5fe9: $fe $ff
    xor c                                         ; $5feb: $a9
    rst $38                                       ; $5fec: $ff
    db $f4                                        ; $5fed: $f4
    rst $38                                       ; $5fee: $ff
    ld [bc], a                                    ; $5fef: $02
    add b                                         ; $5ff0: $80
    sub c                                         ; $5ff1: $91
    ret nz                                        ; $5ff2: $c0

    ld b, b                                       ; $5ff3: $40
    pop hl                                        ; $5ff4: $e1
    and c                                         ; $5ff5: $a1
    db $ed                                        ; $5ff6: $ed
    dec l                                         ; $5ff7: $2d
    di                                            ; $5ff8: $f3
    rst $38                                       ; $5ff9: $ff
    ld h, c                                       ; $5ffa: $61
    rst $38                                       ; $5ffb: $ff
    rst $08                                       ; $5ffc: $cf
    rst $38                                       ; $5ffd: $ff
    ld sp, $40ff                                  ; $5ffe: $31 $ff $40
    rst $38                                       ; $6001: $ff
    sbc a                                         ; $6002: $9f
    inc bc                                        ; $6003: $03
    rst $38                                       ; $6004: $ff
    ld [bc], a                                    ; $6005: $02
    ldh [$08], a                                  ; $6006: $e0 $08
    nop                                           ; $6008: $00
    ld [bc], a                                    ; $6009: $02
    inc b                                         ; $600a: $04
    ld b, $06                                     ; $600b: $06 $06
    inc b                                         ; $600d: $04
    rlca                                          ; $600e: $07
    ld [bc], a                                    ; $600f: $02
    ld b, $02                                     ; $6010: $06 $02
    inc b                                         ; $6012: $04
    stop                                          ; $6013: $10 $00
    ld [bc], a                                    ; $6015: $02
    ccf                                           ; $6016: $3f
    ld [bc], a                                    ; $6017: $02
    inc bc                                        ; $6018: $03
    inc e                                         ; $6019: $1c
    nop                                           ; $601a: $00
    rst $38                                       ; $601b: $ff
    rrca                                          ; $601c: $0f
    dec b                                         ; $601d: $05
    rst $38                                       ; $601e: $ff
    dec bc                                        ; $601f: $0b
    ei                                            ; $6020: $fb
    add hl, bc                                    ; $6021: $09
    rst $18                                       ; $6022: $df
    rst $30                                       ; $6023: $f7
    rst $18                                       ; $6024: $df
    rst $38                                       ; $6025: $ff
    push hl                                       ; $6026: $e5
    rlca                                          ; $6027: $07
    rst $20                                       ; $6028: $e7
    ld a, [bc]                                    ; $6029: $0a
    rst $28                                       ; $602a: $ef
    rst $38                                       ; $602b: $ff
    ld [bc], a                                    ; $602c: $02
    ld bc, $0702                                  ; $602d: $01 $02 $07
    add d                                         ; $6030: $82
    inc e                                         ; $6031: $1c
    rra                                           ; $6032: $1f
    ld [bc], a                                    ; $6033: $02
    rrca                                          ; $6034: $0f
    add c                                         ; $6035: $81
    inc de                                        ; $6036: $13
    inc bc                                        ; $6037: $03
    rra                                           ; $6038: $1f
    ld [bc], a                                    ; $6039: $02
    rrca                                          ; $603a: $0f
    adc [hl]                                      ; $603b: $8e
    rlca                                          ; $603c: $07
    dec b                                         ; $603d: $05
    cpl                                           ; $603e: $2f
    inc l                                         ; $603f: $2c
    ld a, a                                       ; $6040: $7f
    ld d, a                                       ; $6041: $57
    ld sp, hl                                     ; $6042: $f9
    adc c                                         ; $6043: $89
    ld [hl], h                                    ; $6044: $74
    ld e, h                                       ; $6045: $5c
    inc hl                                        ; $6046: $23
    ccf                                           ; $6047: $3f
    jr jr_0f9_6069                                ; $6048: $18 $1f

    ld [bc], a                                    ; $604a: $02
    rlca                                          ; $604b: $07
    ld [bc], a                                    ; $604c: $02
    ld bc, $b002                                  ; $604d: $01 $02 $b0
    add l                                         ; $6050: $85
    xor $fe                                       ; $6051: $ee $fe
    call c, Call_0f9_7cfc                         ; $6053: $dc $fc $7c
    ld [bc], a                                    ; $6056: $02
    db $fc                                        ; $6057: $fc
    sub a                                         ; $6058: $97
    call nz, $b6fe                                ; $6059: $c4 $fe $b6
    cp $4a                                        ; $605c: $fe $4a
    ld a, a                                       ; $605e: $7f
    set 7, a                                      ; $605f: $cb $ff
    ld c, [hl]                                    ; $6061: $4e
    rst $38                                       ; $6062: $ff
    inc sp                                        ; $6063: $33
    cp $8f                                        ; $6064: $fe $8f
    cp $c7                                        ; $6066: $fe $c7
    db $fc                                        ; $6068: $fc

jr_0f9_6069:
    rst $38                                       ; $6069: $ff
    cp $ff                                        ; $606a: $fe $ff
    xor c                                         ; $606c: $a9
    rst $38                                       ; $606d: $ff
    db $f4                                        ; $606e: $f4
    rst $38                                       ; $606f: $ff
    ld [bc], a                                    ; $6070: $02
    add b                                         ; $6071: $80
    sub c                                         ; $6072: $91
    ret nz                                        ; $6073: $c0

    ld b, b                                       ; $6074: $40
    pop hl                                        ; $6075: $e1
    and c                                         ; $6076: $a1
    db $ed                                        ; $6077: $ed
    dec l                                         ; $6078: $2d
    di                                            ; $6079: $f3
    rst $38                                       ; $607a: $ff
    ld h, c                                       ; $607b: $61
    rst $38                                       ; $607c: $ff
    rst $08                                       ; $607d: $cf
    rst $38                                       ; $607e: $ff
    ld sp, $40ff                                  ; $607f: $31 $ff $40
    rst $38                                       ; $6082: $ff
    sbc a                                         ; $6083: $9f
    inc bc                                        ; $6084: $03
    rst $38                                       ; $6085: $ff
    ld [bc], a                                    ; $6086: $02
    ldh [$08], a                                  ; $6087: $e0 $08
    nop                                           ; $6089: $00
    ld [bc], a                                    ; $608a: $02
    inc b                                         ; $608b: $04
    ld b, $06                                     ; $608c: $06 $06
    inc b                                         ; $608e: $04
    rlca                                          ; $608f: $07
    ld [bc], a                                    ; $6090: $02
    ld b, $02                                     ; $6091: $06 $02
    inc b                                         ; $6093: $04
    stop                                          ; $6094: $10 $00
    ld [bc], a                                    ; $6096: $02
    ccf                                           ; $6097: $3f
    ld [bc], a                                    ; $6098: $02
    inc bc                                        ; $6099: $03
    inc e                                         ; $609a: $1c
    nop                                           ; $609b: $00
    rst $38                                       ; $609c: $ff
    rrca                                          ; $609d: $0f
    dec b                                         ; $609e: $05
    rst $38                                       ; $609f: $ff
    dec bc                                        ; $60a0: $0b
    ei                                            ; $60a1: $fb
    add hl, bc                                    ; $60a2: $09
    ldh [$f7], a                                  ; $60a3: $e0 $f7
    ldh [rIE], a                                  ; $60a5: $e0 $ff
    and $07                                       ; $60a7: $e6 $07
    add sp, $0a                                   ; $60a9: $e8 $0a
    ldh a, [rIE]                                  ; $60ab: $f0 $ff
    ld [bc], a                                    ; $60ad: $02
    ld bc, $0702                                  ; $60ae: $01 $02 $07
    add d                                         ; $60b1: $82
    inc e                                         ; $60b2: $1c
    rra                                           ; $60b3: $1f
    ld [bc], a                                    ; $60b4: $02
    rrca                                          ; $60b5: $0f
    add c                                         ; $60b6: $81
    inc de                                        ; $60b7: $13
    inc bc                                        ; $60b8: $03
    rra                                           ; $60b9: $1f
    ld [bc], a                                    ; $60ba: $02
    rrca                                          ; $60bb: $0f
    adc [hl]                                      ; $60bc: $8e
    rlca                                          ; $60bd: $07
    dec b                                         ; $60be: $05
    cpl                                           ; $60bf: $2f
    inc l                                         ; $60c0: $2c
    ld a, a                                       ; $60c1: $7f
    ld d, a                                       ; $60c2: $57
    ld sp, hl                                     ; $60c3: $f9
    adc c                                         ; $60c4: $89
    ld [hl], h                                    ; $60c5: $74
    ld e, h                                       ; $60c6: $5c
    inc hl                                        ; $60c7: $23
    ccf                                           ; $60c8: $3f
    jr jr_0f9_60ea                                ; $60c9: $18 $1f

    ld [bc], a                                    ; $60cb: $02
    rlca                                          ; $60cc: $07
    ld [bc], a                                    ; $60cd: $02
    ld bc, $b002                                  ; $60ce: $01 $02 $b0
    add l                                         ; $60d1: $85
    xor $fe                                       ; $60d2: $ee $fe
    call c, Call_0f9_7cfc                         ; $60d4: $dc $fc $7c
    ld [bc], a                                    ; $60d7: $02
    db $fc                                        ; $60d8: $fc
    sub a                                         ; $60d9: $97
    call nz, $b6fe                                ; $60da: $c4 $fe $b6
    cp $4a                                        ; $60dd: $fe $4a
    ld a, a                                       ; $60df: $7f
    set 7, a                                      ; $60e0: $cb $ff
    ld c, [hl]                                    ; $60e2: $4e
    rst $38                                       ; $60e3: $ff
    inc sp                                        ; $60e4: $33
    cp $8f                                        ; $60e5: $fe $8f
    cp $c7                                        ; $60e7: $fe $c7
    db $fc                                        ; $60e9: $fc

jr_0f9_60ea:
    rst $38                                       ; $60ea: $ff
    cp $ff                                        ; $60eb: $fe $ff
    xor c                                         ; $60ed: $a9
    rst $38                                       ; $60ee: $ff
    db $f4                                        ; $60ef: $f4
    rst $38                                       ; $60f0: $ff
    ld [bc], a                                    ; $60f1: $02
    add b                                         ; $60f2: $80
    sub c                                         ; $60f3: $91
    ret nz                                        ; $60f4: $c0

    ld b, b                                       ; $60f5: $40
    pop hl                                        ; $60f6: $e1
    and c                                         ; $60f7: $a1
    db $ed                                        ; $60f8: $ed
    dec l                                         ; $60f9: $2d
    di                                            ; $60fa: $f3
    rst $38                                       ; $60fb: $ff
    ld h, c                                       ; $60fc: $61
    rst $38                                       ; $60fd: $ff
    rst $08                                       ; $60fe: $cf
    rst $38                                       ; $60ff: $ff
    ld sp, $40ff                                  ; $6100: $31 $ff $40
    rst $38                                       ; $6103: $ff
    sbc a                                         ; $6104: $9f
    inc bc                                        ; $6105: $03
    rst $38                                       ; $6106: $ff
    ld [bc], a                                    ; $6107: $02
    ldh [$08], a                                  ; $6108: $e0 $08
    nop                                           ; $610a: $00
    ld [bc], a                                    ; $610b: $02
    inc b                                         ; $610c: $04
    ld b, $06                                     ; $610d: $06 $06
    inc b                                         ; $610f: $04
    rlca                                          ; $6110: $07
    ld [bc], a                                    ; $6111: $02
    ld b, $02                                     ; $6112: $06 $02
    inc b                                         ; $6114: $04
    stop                                          ; $6115: $10 $00
    ld [bc], a                                    ; $6117: $02
    ccf                                           ; $6118: $3f
    ld [bc], a                                    ; $6119: $02
    inc bc                                        ; $611a: $03
    inc e                                         ; $611b: $1c
    nop                                           ; $611c: $00
    rst $38                                       ; $611d: $ff
    rrca                                          ; $611e: $0f
    dec b                                         ; $611f: $05
    rst $38                                       ; $6120: $ff
    dec bc                                        ; $6121: $0b
    ei                                            ; $6122: $fb
    add hl, bc                                    ; $6123: $09
    pop hl                                        ; $6124: $e1
    rst $30                                       ; $6125: $f7
    pop hl                                        ; $6126: $e1
    rst $38                                       ; $6127: $ff
    rst $20                                       ; $6128: $e7
    rlca                                          ; $6129: $07
    jp hl                                         ; $612a: $e9


    ld a, [bc]                                    ; $612b: $0a
    pop af                                        ; $612c: $f1
    rst $38                                       ; $612d: $ff
    ld [bc], a                                    ; $612e: $02
    ld bc, $0702                                  ; $612f: $01 $02 $07
    add d                                         ; $6132: $82
    inc e                                         ; $6133: $1c
    rra                                           ; $6134: $1f
    ld [bc], a                                    ; $6135: $02
    rrca                                          ; $6136: $0f
    add c                                         ; $6137: $81
    inc de                                        ; $6138: $13
    inc bc                                        ; $6139: $03
    rra                                           ; $613a: $1f
    ld [bc], a                                    ; $613b: $02
    rrca                                          ; $613c: $0f
    adc [hl]                                      ; $613d: $8e
    rlca                                          ; $613e: $07
    dec b                                         ; $613f: $05
    cpl                                           ; $6140: $2f
    inc l                                         ; $6141: $2c
    ld a, a                                       ; $6142: $7f
    ld d, a                                       ; $6143: $57
    ld sp, hl                                     ; $6144: $f9
    adc c                                         ; $6145: $89
    ld [hl], h                                    ; $6146: $74
    ld e, h                                       ; $6147: $5c
    inc hl                                        ; $6148: $23
    ccf                                           ; $6149: $3f
    jr jr_0f9_616b                                ; $614a: $18 $1f

    ld [bc], a                                    ; $614c: $02
    rlca                                          ; $614d: $07
    ld [bc], a                                    ; $614e: $02
    ld bc, $b002                                  ; $614f: $01 $02 $b0
    add l                                         ; $6152: $85
    xor $fe                                       ; $6153: $ee $fe
    call c, Call_0f9_7cfc                         ; $6155: $dc $fc $7c
    ld [bc], a                                    ; $6158: $02
    db $fc                                        ; $6159: $fc
    sub a                                         ; $615a: $97
    call nz, $b6fe                                ; $615b: $c4 $fe $b6
    cp $4a                                        ; $615e: $fe $4a
    ld a, a                                       ; $6160: $7f
    set 7, a                                      ; $6161: $cb $ff
    ld c, [hl]                                    ; $6163: $4e
    rst $38                                       ; $6164: $ff
    inc sp                                        ; $6165: $33
    cp $8f                                        ; $6166: $fe $8f
    cp $c7                                        ; $6168: $fe $c7
    db $fc                                        ; $616a: $fc

jr_0f9_616b:
    rst $38                                       ; $616b: $ff
    cp $ff                                        ; $616c: $fe $ff
    xor c                                         ; $616e: $a9
    rst $38                                       ; $616f: $ff
    db $f4                                        ; $6170: $f4
    rst $38                                       ; $6171: $ff
    ld [bc], a                                    ; $6172: $02
    add b                                         ; $6173: $80
    sub c                                         ; $6174: $91
    ret nz                                        ; $6175: $c0

    ld b, b                                       ; $6176: $40
    pop hl                                        ; $6177: $e1
    and c                                         ; $6178: $a1
    db $ed                                        ; $6179: $ed
    dec l                                         ; $617a: $2d
    di                                            ; $617b: $f3
    rst $38                                       ; $617c: $ff
    ld h, c                                       ; $617d: $61
    rst $38                                       ; $617e: $ff
    rst $08                                       ; $617f: $cf
    rst $38                                       ; $6180: $ff
    ld sp, $40ff                                  ; $6181: $31 $ff $40
    rst $38                                       ; $6184: $ff
    sbc a                                         ; $6185: $9f
    inc bc                                        ; $6186: $03
    rst $38                                       ; $6187: $ff
    ld [bc], a                                    ; $6188: $02
    ldh [$08], a                                  ; $6189: $e0 $08
    nop                                           ; $618b: $00
    ld [bc], a                                    ; $618c: $02
    inc b                                         ; $618d: $04
    ld b, $06                                     ; $618e: $06 $06
    inc b                                         ; $6190: $04
    rlca                                          ; $6191: $07
    ld [bc], a                                    ; $6192: $02
    ld b, $02                                     ; $6193: $06 $02
    inc b                                         ; $6195: $04
    stop                                          ; $6196: $10 $00
    ld [bc], a                                    ; $6198: $02
    ccf                                           ; $6199: $3f
    ld [bc], a                                    ; $619a: $02
    inc bc                                        ; $619b: $03
    inc e                                         ; $619c: $1c
    nop                                           ; $619d: $00
    rst $38                                       ; $619e: $ff
    rrca                                          ; $619f: $0f
    dec b                                         ; $61a0: $05
    rst $38                                       ; $61a1: $ff
    dec bc                                        ; $61a2: $0b
    ei                                            ; $61a3: $fb
    add hl, bc                                    ; $61a4: $09
    db $e3                                        ; $61a5: $e3
    rst $30                                       ; $61a6: $f7
    db $e3                                        ; $61a7: $e3
    rst $38                                       ; $61a8: $ff
    jp hl                                         ; $61a9: $e9


    rlca                                          ; $61aa: $07
    db $eb                                        ; $61ab: $eb
    ld a, [bc]                                    ; $61ac: $0a
    di                                            ; $61ad: $f3
    rst $38                                       ; $61ae: $ff
    ld [bc], a                                    ; $61af: $02
    ld bc, $0702                                  ; $61b0: $01 $02 $07
    add d                                         ; $61b3: $82
    inc e                                         ; $61b4: $1c
    rra                                           ; $61b5: $1f
    ld [bc], a                                    ; $61b6: $02
    rrca                                          ; $61b7: $0f
    add c                                         ; $61b8: $81
    inc de                                        ; $61b9: $13
    inc bc                                        ; $61ba: $03
    rra                                           ; $61bb: $1f
    ld [bc], a                                    ; $61bc: $02
    rrca                                          ; $61bd: $0f
    adc [hl]                                      ; $61be: $8e
    rlca                                          ; $61bf: $07
    dec b                                         ; $61c0: $05
    cpl                                           ; $61c1: $2f
    inc l                                         ; $61c2: $2c
    ld a, a                                       ; $61c3: $7f
    ld d, a                                       ; $61c4: $57
    ld sp, hl                                     ; $61c5: $f9
    adc c                                         ; $61c6: $89
    ld [hl], h                                    ; $61c7: $74
    ld e, h                                       ; $61c8: $5c
    inc hl                                        ; $61c9: $23
    ccf                                           ; $61ca: $3f
    jr jr_0f9_61ec                                ; $61cb: $18 $1f

    ld [bc], a                                    ; $61cd: $02
    rlca                                          ; $61ce: $07
    ld [bc], a                                    ; $61cf: $02
    ld bc, $b002                                  ; $61d0: $01 $02 $b0
    add l                                         ; $61d3: $85
    xor $fe                                       ; $61d4: $ee $fe
    call c, Call_0f9_7cfc                         ; $61d6: $dc $fc $7c
    ld [bc], a                                    ; $61d9: $02
    db $fc                                        ; $61da: $fc
    sub a                                         ; $61db: $97
    call nz, $b6fe                                ; $61dc: $c4 $fe $b6
    cp $4a                                        ; $61df: $fe $4a
    ld a, a                                       ; $61e1: $7f
    set 7, a                                      ; $61e2: $cb $ff
    ld c, [hl]                                    ; $61e4: $4e
    rst $38                                       ; $61e5: $ff
    inc sp                                        ; $61e6: $33
    cp $8f                                        ; $61e7: $fe $8f
    cp $c7                                        ; $61e9: $fe $c7
    db $fc                                        ; $61eb: $fc

jr_0f9_61ec:
    rst $38                                       ; $61ec: $ff
    cp $ff                                        ; $61ed: $fe $ff
    xor c                                         ; $61ef: $a9
    rst $38                                       ; $61f0: $ff
    db $f4                                        ; $61f1: $f4
    rst $38                                       ; $61f2: $ff
    ld [bc], a                                    ; $61f3: $02
    add b                                         ; $61f4: $80
    sub c                                         ; $61f5: $91
    ret nz                                        ; $61f6: $c0

    ld b, b                                       ; $61f7: $40
    pop hl                                        ; $61f8: $e1
    and c                                         ; $61f9: $a1
    db $ed                                        ; $61fa: $ed
    dec l                                         ; $61fb: $2d
    di                                            ; $61fc: $f3
    rst $38                                       ; $61fd: $ff
    ld h, c                                       ; $61fe: $61
    rst $38                                       ; $61ff: $ff
    rst $08                                       ; $6200: $cf
    rst $38                                       ; $6201: $ff
    ld sp, $40ff                                  ; $6202: $31 $ff $40
    rst $38                                       ; $6205: $ff
    sbc a                                         ; $6206: $9f
    inc bc                                        ; $6207: $03
    rst $38                                       ; $6208: $ff
    ld [bc], a                                    ; $6209: $02
    ldh [$08], a                                  ; $620a: $e0 $08
    nop                                           ; $620c: $00
    ld [bc], a                                    ; $620d: $02
    inc b                                         ; $620e: $04
    ld b, $06                                     ; $620f: $06 $06
    inc b                                         ; $6211: $04
    rlca                                          ; $6212: $07
    ld [bc], a                                    ; $6213: $02
    ld b, $02                                     ; $6214: $06 $02
    inc b                                         ; $6216: $04
    stop                                          ; $6217: $10 $00
    ld [bc], a                                    ; $6219: $02
    ccf                                           ; $621a: $3f
    ld [bc], a                                    ; $621b: $02
    inc bc                                        ; $621c: $03
    inc e                                         ; $621d: $1c
    nop                                           ; $621e: $00
    rst $38                                       ; $621f: $ff
    rrca                                          ; $6220: $0f
    dec b                                         ; $6221: $05
    rst $38                                       ; $6222: $ff
    dec bc                                        ; $6223: $0b
    ei                                            ; $6224: $fb
    add hl, bc                                    ; $6225: $09
    push hl                                       ; $6226: $e5
    rst $30                                       ; $6227: $f7
    push hl                                       ; $6228: $e5
    rst $38                                       ; $6229: $ff

Call_0f9_622a:
    db $eb                                        ; $622a: $eb
    rlca                                          ; $622b: $07
    db $ed                                        ; $622c: $ed
    ld a, [bc]                                    ; $622d: $0a
    push af                                       ; $622e: $f5
    rst $38                                       ; $622f: $ff
    ld [bc], a                                    ; $6230: $02
    ld bc, $0702                                  ; $6231: $01 $02 $07
    add d                                         ; $6234: $82
    inc e                                         ; $6235: $1c
    rra                                           ; $6236: $1f
    ld [bc], a                                    ; $6237: $02
    rrca                                          ; $6238: $0f
    add c                                         ; $6239: $81
    inc de                                        ; $623a: $13
    inc bc                                        ; $623b: $03
    rra                                           ; $623c: $1f
    ld [bc], a                                    ; $623d: $02
    rrca                                          ; $623e: $0f
    adc [hl]                                      ; $623f: $8e
    rlca                                          ; $6240: $07
    dec b                                         ; $6241: $05
    cpl                                           ; $6242: $2f
    inc l                                         ; $6243: $2c
    ld a, a                                       ; $6244: $7f
    ld d, a                                       ; $6245: $57
    ld sp, hl                                     ; $6246: $f9
    adc c                                         ; $6247: $89
    ld [hl], h                                    ; $6248: $74
    ld e, h                                       ; $6249: $5c
    inc hl                                        ; $624a: $23
    ccf                                           ; $624b: $3f
    jr jr_0f9_626d                                ; $624c: $18 $1f

    ld [bc], a                                    ; $624e: $02
    rlca                                          ; $624f: $07
    ld [bc], a                                    ; $6250: $02
    ld bc, $b002                                  ; $6251: $01 $02 $b0
    add l                                         ; $6254: $85
    xor $fe                                       ; $6255: $ee $fe
    call c, Call_0f9_7cfc                         ; $6257: $dc $fc $7c
    ld [bc], a                                    ; $625a: $02
    db $fc                                        ; $625b: $fc
    sub a                                         ; $625c: $97
    call nz, $b6fe                                ; $625d: $c4 $fe $b6
    cp $4a                                        ; $6260: $fe $4a
    ld a, a                                       ; $6262: $7f
    set 7, a                                      ; $6263: $cb $ff
    ld c, [hl]                                    ; $6265: $4e
    rst $38                                       ; $6266: $ff
    inc sp                                        ; $6267: $33
    cp $8f                                        ; $6268: $fe $8f
    cp $c7                                        ; $626a: $fe $c7
    db $fc                                        ; $626c: $fc

jr_0f9_626d:
    rst $38                                       ; $626d: $ff
    cp $ff                                        ; $626e: $fe $ff
    xor c                                         ; $6270: $a9
    rst $38                                       ; $6271: $ff
    db $f4                                        ; $6272: $f4
    rst $38                                       ; $6273: $ff
    ld [bc], a                                    ; $6274: $02
    add b                                         ; $6275: $80
    sub c                                         ; $6276: $91
    ret nz                                        ; $6277: $c0

    ld b, b                                       ; $6278: $40
    pop hl                                        ; $6279: $e1
    and c                                         ; $627a: $a1
    db $ed                                        ; $627b: $ed
    dec l                                         ; $627c: $2d
    di                                            ; $627d: $f3
    rst $38                                       ; $627e: $ff
    ld h, c                                       ; $627f: $61
    rst $38                                       ; $6280: $ff
    rst $08                                       ; $6281: $cf
    rst $38                                       ; $6282: $ff
    ld sp, $40ff                                  ; $6283: $31 $ff $40
    rst $38                                       ; $6286: $ff
    sbc a                                         ; $6287: $9f
    inc bc                                        ; $6288: $03
    rst $38                                       ; $6289: $ff
    ld [bc], a                                    ; $628a: $02
    ldh [$08], a                                  ; $628b: $e0 $08
    nop                                           ; $628d: $00
    ld [bc], a                                    ; $628e: $02
    inc b                                         ; $628f: $04
    ld b, $06                                     ; $6290: $06 $06
    inc b                                         ; $6292: $04
    rlca                                          ; $6293: $07
    ld [bc], a                                    ; $6294: $02
    ld b, $02                                     ; $6295: $06 $02
    inc b                                         ; $6297: $04
    stop                                          ; $6298: $10 $00
    ld [bc], a                                    ; $629a: $02
    ccf                                           ; $629b: $3f
    ld [bc], a                                    ; $629c: $02
    inc bc                                        ; $629d: $03
    inc e                                         ; $629e: $1c
    nop                                           ; $629f: $00
    rst $38                                       ; $62a0: $ff
    rrca                                          ; $62a1: $0f
    dec b                                         ; $62a2: $05
    rst $38                                       ; $62a3: $ff
    dec bc                                        ; $62a4: $0b
    ei                                            ; $62a5: $fb
    add hl, bc                                    ; $62a6: $09
    rst $20                                       ; $62a7: $e7
    rst $30                                       ; $62a8: $f7
    rst $20                                       ; $62a9: $e7
    rst $38                                       ; $62aa: $ff
    db $ed                                        ; $62ab: $ed
    rlca                                          ; $62ac: $07
    rst $28                                       ; $62ad: $ef
    ld a, [bc]                                    ; $62ae: $0a
    rst $30                                       ; $62af: $f7
    rst $38                                       ; $62b0: $ff
    ld [bc], a                                    ; $62b1: $02
    ld bc, $0702                                  ; $62b2: $01 $02 $07
    add d                                         ; $62b5: $82
    inc e                                         ; $62b6: $1c
    rra                                           ; $62b7: $1f
    ld [bc], a                                    ; $62b8: $02
    rrca                                          ; $62b9: $0f
    add c                                         ; $62ba: $81
    inc de                                        ; $62bb: $13
    inc bc                                        ; $62bc: $03
    rra                                           ; $62bd: $1f
    ld [bc], a                                    ; $62be: $02
    rrca                                          ; $62bf: $0f
    adc [hl]                                      ; $62c0: $8e
    rlca                                          ; $62c1: $07
    dec b                                         ; $62c2: $05
    cpl                                           ; $62c3: $2f
    inc l                                         ; $62c4: $2c
    ld a, a                                       ; $62c5: $7f
    ld d, a                                       ; $62c6: $57
    ld sp, hl                                     ; $62c7: $f9
    adc c                                         ; $62c8: $89
    ld [hl], h                                    ; $62c9: $74
    ld e, h                                       ; $62ca: $5c
    inc hl                                        ; $62cb: $23
    ccf                                           ; $62cc: $3f
    jr jr_0f9_62ee                                ; $62cd: $18 $1f

    ld [bc], a                                    ; $62cf: $02
    rlca                                          ; $62d0: $07
    ld [bc], a                                    ; $62d1: $02
    ld bc, $b002                                  ; $62d2: $01 $02 $b0
    add l                                         ; $62d5: $85
    xor $fe                                       ; $62d6: $ee $fe
    call c, Call_0f9_7cfc                         ; $62d8: $dc $fc $7c
    ld [bc], a                                    ; $62db: $02
    db $fc                                        ; $62dc: $fc
    sub a                                         ; $62dd: $97
    call nz, $b6fe                                ; $62de: $c4 $fe $b6
    cp $4a                                        ; $62e1: $fe $4a
    ld a, a                                       ; $62e3: $7f
    set 7, a                                      ; $62e4: $cb $ff
    ld c, [hl]                                    ; $62e6: $4e
    rst $38                                       ; $62e7: $ff
    inc sp                                        ; $62e8: $33
    cp $8f                                        ; $62e9: $fe $8f
    cp $c7                                        ; $62eb: $fe $c7
    db $fc                                        ; $62ed: $fc

jr_0f9_62ee:
    rst $38                                       ; $62ee: $ff
    cp $ff                                        ; $62ef: $fe $ff
    xor c                                         ; $62f1: $a9
    rst $38                                       ; $62f2: $ff
    db $f4                                        ; $62f3: $f4
    rst $38                                       ; $62f4: $ff
    ld [bc], a                                    ; $62f5: $02
    add b                                         ; $62f6: $80
    sub c                                         ; $62f7: $91
    ret nz                                        ; $62f8: $c0

    ld b, b                                       ; $62f9: $40
    pop hl                                        ; $62fa: $e1
    and c                                         ; $62fb: $a1
    db $ed                                        ; $62fc: $ed
    dec l                                         ; $62fd: $2d
    di                                            ; $62fe: $f3
    rst $38                                       ; $62ff: $ff
    ld h, c                                       ; $6300: $61
    rst $38                                       ; $6301: $ff
    rst $08                                       ; $6302: $cf
    rst $38                                       ; $6303: $ff
    ld sp, $40ff                                  ; $6304: $31 $ff $40
    rst $38                                       ; $6307: $ff
    sbc a                                         ; $6308: $9f
    inc bc                                        ; $6309: $03
    rst $38                                       ; $630a: $ff
    ld [bc], a                                    ; $630b: $02
    ldh [$08], a                                  ; $630c: $e0 $08
    nop                                           ; $630e: $00
    ld [bc], a                                    ; $630f: $02
    inc b                                         ; $6310: $04
    ld b, $06                                     ; $6311: $06 $06
    inc b                                         ; $6313: $04
    rlca                                          ; $6314: $07
    ld [bc], a                                    ; $6315: $02
    ld b, $02                                     ; $6316: $06 $02
    inc b                                         ; $6318: $04
    stop                                          ; $6319: $10 $00
    ld [bc], a                                    ; $631b: $02
    ccf                                           ; $631c: $3f
    ld [bc], a                                    ; $631d: $02
    inc bc                                        ; $631e: $03
    inc e                                         ; $631f: $1c
    nop                                           ; $6320: $00
    rst $38                                       ; $6321: $ff
    rrca                                          ; $6322: $0f
    dec b                                         ; $6323: $05
    rst $38                                       ; $6324: $ff
    dec bc                                        ; $6325: $0b
    ei                                            ; $6326: $fb
    add hl, bc                                    ; $6327: $09
    ld [$eaf7], a                                 ; $6328: $ea $f7 $ea
    rst $38                                       ; $632b: $ff
    ldh a, [rTAC]                                 ; $632c: $f0 $07
    ld a, [c]                                     ; $632e: $f2
    ld a, [bc]                                    ; $632f: $0a
    ld a, [$02ff]                                 ; $6330: $fa $ff $02
    ld bc, $0702                                  ; $6333: $01 $02 $07
    add d                                         ; $6336: $82
    inc e                                         ; $6337: $1c
    rra                                           ; $6338: $1f
    ld [bc], a                                    ; $6339: $02
    rrca                                          ; $633a: $0f
    add c                                         ; $633b: $81
    inc de                                        ; $633c: $13
    inc bc                                        ; $633d: $03
    rra                                           ; $633e: $1f

Jump_0f9_633f:
    ld [bc], a                                    ; $633f: $02
    rrca                                          ; $6340: $0f
    adc [hl]                                      ; $6341: $8e
    rlca                                          ; $6342: $07
    dec b                                         ; $6343: $05
    cpl                                           ; $6344: $2f
    inc l                                         ; $6345: $2c
    ld a, a                                       ; $6346: $7f
    ld d, a                                       ; $6347: $57
    ld sp, hl                                     ; $6348: $f9
    adc c                                         ; $6349: $89
    ld [hl], h                                    ; $634a: $74
    ld e, h                                       ; $634b: $5c
    inc hl                                        ; $634c: $23
    ccf                                           ; $634d: $3f
    jr jr_0f9_636f                                ; $634e: $18 $1f

    ld [bc], a                                    ; $6350: $02
    rlca                                          ; $6351: $07
    ld [bc], a                                    ; $6352: $02
    ld bc, $b002                                  ; $6353: $01 $02 $b0
    add l                                         ; $6356: $85
    xor $fe                                       ; $6357: $ee $fe
    call c, Call_0f9_7cfc                         ; $6359: $dc $fc $7c
    ld [bc], a                                    ; $635c: $02
    db $fc                                        ; $635d: $fc
    sub a                                         ; $635e: $97
    call nz, $b6fe                                ; $635f: $c4 $fe $b6
    cp $4a                                        ; $6362: $fe $4a
    ld a, a                                       ; $6364: $7f
    set 7, a                                      ; $6365: $cb $ff
    ld c, [hl]                                    ; $6367: $4e
    rst $38                                       ; $6368: $ff
    inc sp                                        ; $6369: $33
    cp $8f                                        ; $636a: $fe $8f
    cp $c7                                        ; $636c: $fe $c7
    db $fc                                        ; $636e: $fc

jr_0f9_636f:
    rst $38                                       ; $636f: $ff
    cp $ff                                        ; $6370: $fe $ff
    xor c                                         ; $6372: $a9
    rst $38                                       ; $6373: $ff
    db $f4                                        ; $6374: $f4
    rst $38                                       ; $6375: $ff
    ld [bc], a                                    ; $6376: $02
    add b                                         ; $6377: $80
    sub c                                         ; $6378: $91
    ret nz                                        ; $6379: $c0

    ld b, b                                       ; $637a: $40
    pop hl                                        ; $637b: $e1
    and c                                         ; $637c: $a1
    db $ed                                        ; $637d: $ed
    dec l                                         ; $637e: $2d
    di                                            ; $637f: $f3
    rst $38                                       ; $6380: $ff
    ld h, c                                       ; $6381: $61
    rst $38                                       ; $6382: $ff
    rst $08                                       ; $6383: $cf
    rst $38                                       ; $6384: $ff
    ld sp, $40ff                                  ; $6385: $31 $ff $40
    rst $38                                       ; $6388: $ff
    sbc a                                         ; $6389: $9f
    inc bc                                        ; $638a: $03
    rst $38                                       ; $638b: $ff
    ld [bc], a                                    ; $638c: $02
    ldh [$08], a                                  ; $638d: $e0 $08
    nop                                           ; $638f: $00
    ld [bc], a                                    ; $6390: $02
    inc b                                         ; $6391: $04
    ld b, $06                                     ; $6392: $06 $06
    inc b                                         ; $6394: $04
    rlca                                          ; $6395: $07
    ld [bc], a                                    ; $6396: $02
    ld b, $02                                     ; $6397: $06 $02
    inc b                                         ; $6399: $04
    stop                                          ; $639a: $10 $00
    ld [bc], a                                    ; $639c: $02
    ccf                                           ; $639d: $3f
    ld [bc], a                                    ; $639e: $02
    rrca                                          ; $639f: $0f
    inc e                                         ; $63a0: $1c
    nop                                           ; $63a1: $00
    rst $38                                       ; $63a2: $ff
    rrca                                          ; $63a3: $0f
    dec b                                         ; $63a4: $05
    rst $38                                       ; $63a5: $ff
    dec bc                                        ; $63a6: $0b
    ei                                            ; $63a7: $fb
    add hl, bc                                    ; $63a8: $09
    xor $f7                                       ; $63a9: $ee $f7
    xor $ff                                       ; $63ab: $ee $ff
    db $f4                                        ; $63ad: $f4
    rlca                                          ; $63ae: $07
    or $0a                                        ; $63af: $f6 $0a
    cp $ff                                        ; $63b1: $fe $ff
    ld [bc], a                                    ; $63b3: $02
    ld bc, $0702                                  ; $63b4: $01 $02 $07
    add d                                         ; $63b7: $82
    inc e                                         ; $63b8: $1c
    rra                                           ; $63b9: $1f
    ld [bc], a                                    ; $63ba: $02
    rrca                                          ; $63bb: $0f
    add c                                         ; $63bc: $81
    inc de                                        ; $63bd: $13
    inc bc                                        ; $63be: $03
    rra                                           ; $63bf: $1f
    ld [bc], a                                    ; $63c0: $02
    rrca                                          ; $63c1: $0f
    adc [hl]                                      ; $63c2: $8e
    rlca                                          ; $63c3: $07
    dec b                                         ; $63c4: $05
    cpl                                           ; $63c5: $2f
    inc l                                         ; $63c6: $2c
    ld a, a                                       ; $63c7: $7f
    ld d, a                                       ; $63c8: $57
    ld sp, hl                                     ; $63c9: $f9
    adc c                                         ; $63ca: $89
    ld [hl], h                                    ; $63cb: $74
    ld e, h                                       ; $63cc: $5c
    inc hl                                        ; $63cd: $23
    ccf                                           ; $63ce: $3f
    jr jr_0f9_63f0                                ; $63cf: $18 $1f

    ld [bc], a                                    ; $63d1: $02
    rlca                                          ; $63d2: $07
    ld [bc], a                                    ; $63d3: $02
    ld bc, $b002                                  ; $63d4: $01 $02 $b0
    add l                                         ; $63d7: $85
    xor $fe                                       ; $63d8: $ee $fe
    call c, Call_0f9_7cfc                         ; $63da: $dc $fc $7c
    ld [bc], a                                    ; $63dd: $02
    db $fc                                        ; $63de: $fc
    sub b                                         ; $63df: $90
    call nz, $b6fe                                ; $63e0: $c4 $fe $b6
    cp $4a                                        ; $63e3: $fe $4a
    ld a, a                                       ; $63e5: $7f
    set 7, a                                      ; $63e6: $cb $ff
    ld c, [hl]                                    ; $63e8: $4e
    rst $38                                       ; $63e9: $ff
    inc sp                                        ; $63ea: $33
    cp $8f                                        ; $63eb: $fe $8f
    cp $c7                                        ; $63ed: $fe $c7
    db $fc                                        ; $63ef: $fc

jr_0f9_63f0:
    inc bc                                        ; $63f0: $03
    rst $38                                       ; $63f1: $ff
    add h                                         ; $63f2: $84
    or [hl]                                       ; $63f3: $b6
    rst $38                                       ; $63f4: $ff
    ld sp, hl                                     ; $63f5: $f9
    rst $38                                       ; $63f6: $ff
    ld [bc], a                                    ; $63f7: $02
    add b                                         ; $63f8: $80
    sub c                                         ; $63f9: $91
    ret nz                                        ; $63fa: $c0

    ld b, b                                       ; $63fb: $40
    pop hl                                        ; $63fc: $e1
    and c                                         ; $63fd: $a1
    db $ed                                        ; $63fe: $ed
    dec l                                         ; $63ff: $2d

Call_0f9_6400:
    di                                            ; $6400: $f3
    rst $38                                       ; $6401: $ff
    ld h, c                                       ; $6402: $61
    rst $38                                       ; $6403: $ff
    rst $08                                       ; $6404: $cf
    rst $38                                       ; $6405: $ff
    or c                                          ; $6406: $b1
    rst $38                                       ; $6407: $ff
    ld b, b                                       ; $6408: $40
    rst $38                                       ; $6409: $ff
    ld a, a                                       ; $640a: $7f
    inc bc                                        ; $640b: $03
    rst $38                                       ; $640c: $ff
    add h                                         ; $640d: $84
    or b                                          ; $640e: $b0
    ldh a, [$f8]                                  ; $640f: $f0 $f8
    add sp, $02                                   ; $6411: $e8 $02
    ld hl, sp+$04                                 ; $6413: $f8 $04
    nop                                           ; $6415: $00
    ld [bc], a                                    ; $6416: $02
    inc b                                         ; $6417: $04
    ld b, $06                                     ; $6418: $06 $06
    inc b                                         ; $641a: $04
    rlca                                          ; $641b: $07
    ld [bc], a                                    ; $641c: $02
    ld b, $02                                     ; $641d: $06 $02
    inc b                                         ; $641f: $04
    stop                                          ; $6420: $10 $00
    add c                                         ; $6422: $81
    ld a, l                                       ; $6423: $7d
    inc bc                                        ; $6424: $03
    ld a, a                                       ; $6425: $7f
    add d                                         ; $6426: $82
    rst $38                                       ; $6427: $ff
    cp a                                          ; $6428: $bf
    ld [bc], a                                    ; $6429: $02
    rst $38                                       ; $642a: $ff
    jr jr_0f9_642d                                ; $642b: $18 $00

jr_0f9_642d:
    rst $38                                       ; $642d: $ff
    rrca                                          ; $642e: $0f
    dec b                                         ; $642f: $05
    rst $38                                       ; $6430: $ff
    dec bc                                        ; $6431: $0b
    ei                                            ; $6432: $fb
    add hl, bc                                    ; $6433: $09
    pop af                                        ; $6434: $f1
    rst $30                                       ; $6435: $f7
    pop af                                        ; $6436: $f1
    rst $38                                       ; $6437: $ff
    ld sp, hl                                     ; $6438: $f9
    rlca                                          ; $6439: $07
    ei                                            ; $643a: $fb
    dec bc                                        ; $643b: $0b
    ld bc, $02ff                                  ; $643c: $01 $ff $02
    ld bc, $0f02                                  ; $643f: $01 $02 $0f
    sub b                                         ; $6442: $90
    dec de                                        ; $6443: $1b
    rra                                           ; $6444: $1f
    inc a                                         ; $6445: $3c
    ccf                                           ; $6446: $3f
    cpl                                           ; $6447: $2f
    ccf                                           ; $6448: $3f
    scf                                           ; $6449: $37
    ccf                                           ; $644a: $3f
    rra                                           ; $644b: $1f
    ld e, $0e                                     ; $644c: $1e $0e
    dec bc                                        ; $644e: $0b
    rrca                                          ; $644f: $0f
    ld [$0e0f], sp                                ; $6450: $08 $0f $0e
    ld [bc], a                                    ; $6453: $02
    inc sp                                        ; $6454: $33
    add [hl]                                      ; $6455: $86
    ld a, l                                       ; $6456: $7d
    ld e, l                                       ; $6457: $5d
    ei                                            ; $6458: $fb
    adc a                                         ; $6459: $8f
    ld [hl], b                                    ; $645a: $70
    ld e, a                                       ; $645b: $5f
    ld [bc], a                                    ; $645c: $02
    ccf                                           ; $645d: $3f
    ld [bc], a                                    ; $645e: $02
    ld bc, $6002                                  ; $645f: $01 $02 $60
    add h                                         ; $6462: $84
    call nc, $dcf4                                ; $6463: $d4 $f4 $dc
    db $fc                                        ; $6466: $fc
    inc bc                                        ; $6467: $03
    ld hl, sp-$6e                                 ; $6468: $f8 $92
    adc b                                         ; $646a: $88
    db $fc                                        ; $646b: $fc
    ld l, h                                       ; $646c: $6c
    db $fc                                        ; $646d: $fc
    sub h                                         ; $646e: $94
    db $fc                                        ; $646f: $fc
    sub h                                         ; $6470: $94
    db $fc                                        ; $6471: $fc
    sbc h                                         ; $6472: $9c
    db $fd                                        ; $6473: $fd
    ld h, l                                       ; $6474: $65
    rst $38                                       ; $6475: $ff
    rra                                           ; $6476: $1f
    or $9f                                        ; $6477: $f6 $9f
    ld sp, hl                                     ; $6479: $f9
    rst $38                                       ; $647a: $ff
    db $fd                                        ; $647b: $fd
    inc b                                         ; $647c: $04
    rst $38                                       ; $647d: $ff
    add c                                         ; $647e: $81
    cp a                                          ; $647f: $bf
    ld [bc], a                                    ; $6480: $02
    ret nz                                        ; $6481: $c0

    add a                                         ; $6482: $87
    ldh [rNR41], a                                ; $6483: $e0 $20
    db $ec                                        ; $6485: $ec
    xor h                                         ; $6486: $ac
    ld [hl], e                                    ; $6487: $73
    rst $38                                       ; $6488: $ff
    ld h, c                                       ; $6489: $61
    inc bc                                        ; $648a: $03
    rst $38                                       ; $648b: $ff
    add h                                         ; $648c: $84
    or c                                          ; $648d: $b1
    rst $38                                       ; $648e: $ff
    ld hl, sp-$11                                 ; $648f: $f8 $ef
    ld [bc], a                                    ; $6491: $02
    rst $38                                       ; $6492: $ff
    add [hl]                                      ; $6493: $86
    xor a                                         ; $6494: $af
    rst $38                                       ; $6495: $ff
    xor b                                         ; $6496: $a8
    ld hl, sp-$18                                 ; $6497: $f8 $e8
    ld hl, sp+$08                                 ; $6499: $f8 $08
    nop                                           ; $649b: $00
    ld [bc], a                                    ; $649c: $02
    inc c                                         ; $649d: $0c
    ld [bc], a                                    ; $649e: $02
    ld c, $02                                     ; $649f: $0e $02
    inc c                                         ; $64a1: $0c
    ld [bc], a                                    ; $64a2: $02
    ld c, $04                                     ; $64a3: $0e $04
    rrca                                          ; $64a5: $0f
    ld [bc], a                                    ; $64a6: $02
    ld c, $12                                     ; $64a7: $0e $12
    nop                                           ; $64a9: $00
    ld [bc], a                                    ; $64aa: $02
    rst $38                                       ; $64ab: $ff
    add [hl]                                      ; $64ac: $86
    cp a                                          ; $64ad: $bf
    rst $38                                       ; $64ae: $ff
    xor e                                         ; $64af: $ab
    rst $38                                       ; $64b0: $ff
    cp b                                          ; $64b1: $b8
    rst $38                                       ; $64b2: $ff
    jr jr_0f9_64b5                                ; $64b3: $18 $00

jr_0f9_64b5:
    rst $38                                       ; $64b5: $ff
    rrca                                          ; $64b6: $0f
    dec b                                         ; $64b7: $05
    rst $38                                       ; $64b8: $ff
    dec bc                                        ; $64b9: $0b
    ei                                            ; $64ba: $fb
    add hl, bc                                    ; $64bb: $09
    ld hl, sp-$0c                                 ; $64bc: $f8 $f4
    rst $30                                       ; $64be: $f7
    db $fc                                        ; $64bf: $fc
    rlca                                          ; $64c0: $07
    db $fc                                        ; $64c1: $fc
    ei                                            ; $64c2: $fb
    inc b                                         ; $64c3: $04
    ld bc, $020c                                  ; $64c4: $01 $0c $02
    rrca                                          ; $64c7: $0f
    add d                                         ; $64c8: $82
    add hl, sp                                    ; $64c9: $39
    ccf                                           ; $64ca: $3f
    ld [bc], a                                    ; $64cb: $02
    rrca                                          ; $64cc: $0f
    add [hl]                                      ; $64cd: $86
    inc sp                                        ; $64ce: $33
    ld a, $3f                                     ; $64cf: $3e $3f
    ld a, $13                                     ; $64d1: $3e $13
    ld e, $04                                     ; $64d3: $1e $04
    ccf                                           ; $64d5: $3f
    ld [bc], a                                    ; $64d6: $02
    rrca                                          ; $64d7: $0f
    ld [bc], a                                    ; $64d8: $02
    inc b                                         ; $64d9: $04
    ld [bc], a                                    ; $64da: $02
    ld bc, $0288                                  ; $64db: $01 $88 $02
    inc bc                                        ; $64de: $03
    rlca                                          ; $64df: $07
    dec b                                         ; $64e0: $05
    rrca                                          ; $64e1: $0f
    ld [$0507], sp                                ; $64e2: $08 $07 $05
    ld [bc], a                                    ; $64e5: $02
    inc bc                                        ; $64e6: $03
    ld [bc], a                                    ; $64e7: $02
    add b                                         ; $64e8: $80
    ld [bc], a                                    ; $64e9: $02
    ldh a, [$a0]                                  ; $64ea: $f0 $a0
    ld hl, sp-$58                                 ; $64ec: $f8 $a8
    db $fc                                        ; $64ee: $fc
    ld h, h                                       ; $64ef: $64
    db $fd                                        ; $64f0: $fd
    sbc l                                         ; $64f1: $9d
    cp $93                                        ; $64f2: $fe $93
    ld a, a                                       ; $64f4: $7f
    rst $20                                       ; $64f5: $e7
    ld a, a                                       ; $64f6: $7f
    adc a                                         ; $64f7: $8f
    rst $38                                       ; $64f8: $ff
    xor a                                         ; $64f9: $af
    rst $38                                       ; $64fa: $ff
    rst $30                                       ; $64fb: $f7
    rst $18                                       ; $64fc: $df
    rst $38                                       ; $64fd: $ff
    scf                                           ; $64fe: $37
    rst $38                                       ; $64ff: $ff
    ld d, l                                       ; $6500: $55
    rst $18                                       ; $6501: $df
    sub a                                         ; $6502: $97
    sbc a                                         ; $6503: $9f
    adc e                                         ; $6504: $8b
    adc a                                         ; $6505: $8f
    dec bc                                        ; $6506: $0b
    rrca                                          ; $6507: $0f
    dec bc                                        ; $6508: $0b
    rrca                                          ; $6509: $0f
    dec bc                                        ; $650a: $0b
    rrca                                          ; $650b: $0f
    inc e                                         ; $650c: $1c
    nop                                           ; $650d: $00
    ld [bc], a                                    ; $650e: $02
    ldh a, [$8a]                                  ; $650f: $f0 $8a
    ret z                                         ; $6511: $c8

    ld hl, sp+$2c                                 ; $6512: $f8 $2c
    db $fc                                        ; $6514: $fc
    cp h                                          ; $6515: $bc
    db $fc                                        ; $6516: $fc
    or $fe                                        ; $6517: $f6 $fe
    rst $38                                       ; $6519: $ff
    db $fd                                        ; $651a: $fd
    ld [bc], a                                    ; $651b: $02
    rst $38                                       ; $651c: $ff
    adc [hl]                                      ; $651d: $8e
    push af                                       ; $651e: $f5
    rst $38                                       ; $651f: $ff
    ld [hl], l                                    ; $6520: $75
    rst $38                                       ; $6521: $ff
    dec e                                         ; $6522: $1d
    rst $38                                       ; $6523: $ff
    ld a, [$0bff]                                 ; $6524: $fa $ff $0b
    rst $38                                       ; $6527: $ff
    sbc e                                         ; $6528: $9b
    rst $38                                       ; $6529: $ff
    ld a, [$04fe]                                 ; $652a: $fa $fe $04
    nop                                           ; $652d: $00
    ld [bc], a                                    ; $652e: $02
    ret nz                                        ; $652f: $c0

    adc b                                         ; $6530: $88

jr_0f9_6531:
    ld [hl], b                                    ; $6531: $70
    ldh a, [$bc]                                  ; $6532: $f0 $bc
    db $fc                                        ; $6534: $fc
    ld e, h                                       ; $6535: $5c
    db $fc                                        ; $6536: $fc
    jr c, jr_0f9_6531                             ; $6537: $38 $f8

    inc b                                         ; $6539: $04
    db $fc                                        ; $653a: $fc
    ld [de], a                                    ; $653b: $12
    nop                                           ; $653c: $00
    rst $38                                       ; $653d: $ff
    rrca                                          ; $653e: $0f
    dec b                                         ; $653f: $05
    rst $38                                       ; $6540: $ff
    dec bc                                        ; $6541: $0b
    ei                                            ; $6542: $fb
    add hl, bc                                    ; $6543: $09
    rst $38                                       ; $6544: $ff
    di                                            ; $6545: $f3
    cp $fb                                        ; $6546: $fe $fb
    db $fd                                        ; $6548: $fd
    inc bc                                        ; $6549: $03
    dec c                                         ; $654a: $0d
    inc bc                                        ; $654b: $03
    inc b                                         ; $654c: $04
    dec bc                                        ; $654d: $0b
    ld [bc], a                                    ; $654e: $02
    rrca                                          ; $654f: $0f
    add d                                         ; $6550: $82
    add hl, sp                                    ; $6551: $39
    ccf                                           ; $6552: $3f
    ld [bc], a                                    ; $6553: $02
    rrca                                          ; $6554: $0f
    add [hl]                                      ; $6555: $86
    inc sp                                        ; $6556: $33
    ld a, $3f                                     ; $6557: $3e $3f
    ld a, $13                                     ; $6559: $3e $13
    ld e, $02                                     ; $655b: $1e $02
    rra                                           ; $655d: $1f
    ld [bc], a                                    ; $655e: $02
    rlca                                          ; $655f: $07
    ld [bc], a                                    ; $6560: $02
    ld [bc], a                                    ; $6561: $02
    ld [bc], a                                    ; $6562: $02
    ld bc, $0386                                  ; $6563: $01 $86 $03
    ld [bc], a                                    ; $6566: $02
    rlca                                          ; $6567: $07
    inc b                                         ; $6568: $04
    inc bc                                        ; $6569: $03
    ld [bc], a                                    ; $656a: $02
    ld [bc], a                                    ; $656b: $02
    ld bc, $0004                                  ; $656c: $01 $04 $00
    ld [bc], a                                    ; $656f: $02
    add c                                         ; $6570: $81
    ld [bc], a                                    ; $6571: $02
    di                                            ; $6572: $f3
    sbc d                                         ; $6573: $9a
    ei                                            ; $6574: $fb
    xor e                                         ; $6575: $ab
    rst $38                                       ; $6576: $ff
    ld h, a                                       ; $6577: $67
    rst $38                                       ; $6578: $ff
    sbc a                                         ; $6579: $9f
    rst $38                                       ; $657a: $ff
    sub e                                         ; $657b: $93
    ld a, a                                       ; $657c: $7f
    db $e3                                        ; $657d: $e3
    cp $0f                                        ; $657e: $fe $0f
    rst $28                                       ; $6580: $ef
    rst $38                                       ; $6581: $ff
    sbc l                                         ; $6582: $9d
    rst $38                                       ; $6583: $ff
    dec [hl]                                      ; $6584: $35
    rst $30                                       ; $6585: $f7
    push bc                                       ; $6586: $c5
    rst $00                                       ; $6587: $c7
    ret                                           ; $6588: $c9


    ld c, a                                       ; $6589: $4f
    adc e                                         ; $658a: $8b
    adc a                                         ; $658b: $8f
    rra                                           ; $658c: $1f
    rla                                           ; $658d: $17
    ld [bc], a                                    ; $658e: $02
    dec de                                        ; $658f: $1b
    ld [bc], a                                    ; $6590: $02
    ld hl, sp-$79                                 ; $6591: $f8 $87
    ld h, h                                       ; $6593: $64
    db $fc                                        ; $6594: $fc
    sub [hl]                                      ; $6595: $96
    cp $de                                        ; $6596: $fe $de
    cp $fa                                        ; $6598: $fe $fa
    dec b                                         ; $659a: $05
    cp $92                                        ; $659b: $fe $92
    ei                                            ; $659d: $fb
    rst $38                                       ; $659e: $ff
    cp d                                          ; $659f: $ba
    rst $38                                       ; $65a0: $ff
    adc [hl]                                      ; $65a1: $8e
    rst $38                                       ; $65a2: $ff
    db $fd                                        ; $65a3: $fd
    rst $38                                       ; $65a4: $ff
    add l                                         ; $65a5: $85
    rst $38                                       ; $65a6: $ff
    call $fcff                                    ; $65a7: $cd $ff $fc
    rst $38                                       ; $65aa: $ff
    cp $ff                                        ; $65ab: $fe $ff
    rst $30                                       ; $65ad: $f7
    rst $38                                       ; $65ae: $ff
    ld [bc], a                                    ; $65af: $02
    cp $1e                                        ; $65b0: $fe $1e
    nop                                           ; $65b2: $00
    ld [bc], a                                    ; $65b3: $02
    add b                                         ; $65b4: $80
    ld [bc], a                                    ; $65b5: $02
    ldh [$8e], a                                  ; $65b6: $e0 $8e
    or b                                          ; $65b8: $b0
    ldh a, [$58]                                  ; $65b9: $f0 $58
    ld hl, sp+$2c                                 ; $65bb: $f8 $2c
    db $fc                                        ; $65bd: $fc
    ld e, $fe                                     ; $65be: $1e $fe
    cp [hl]                                       ; $65c0: $be
    cp $b0                                        ; $65c1: $fe $b0
    ldh a, [$f8]                                  ; $65c3: $f0 $f8
    ld a, b                                       ; $65c5: $78
    ld [bc], a                                    ; $65c6: $02
    ld hl, sp+$0c                                 ; $65c7: $f8 $0c
    nop                                           ; $65c9: $00
    rst $38                                       ; $65ca: $ff
    rrca                                          ; $65cb: $0f
    dec b                                         ; $65cc: $05
    rst $38                                       ; $65cd: $ff
    dec bc                                        ; $65ce: $0b
    ei                                            ; $65cf: $fb
    add hl, bc                                    ; $65d0: $09
    nop                                           ; $65d1: $00
    di                                            ; $65d2: $f3
    cp $fb                                        ; $65d3: $fe $fb
    db $fd                                        ; $65d5: $fd
    inc bc                                        ; $65d6: $03
    dec c                                         ; $65d7: $0d
    inc bc                                        ; $65d8: $03
    dec b                                         ; $65d9: $05
    dec bc                                        ; $65da: $0b
    ld [bc], a                                    ; $65db: $02
    rrca                                          ; $65dc: $0f
    add d                                         ; $65dd: $82
    add hl, sp                                    ; $65de: $39
    ccf                                           ; $65df: $3f
    ld [bc], a                                    ; $65e0: $02
    rrca                                          ; $65e1: $0f
    add [hl]                                      ; $65e2: $86
    inc sp                                        ; $65e3: $33
    ld a, $3f                                     ; $65e4: $3e $3f
    ld a, $13                                     ; $65e6: $3e $13
    ld e, $02                                     ; $65e8: $1e $02
    rra                                           ; $65ea: $1f
    ld [bc], a                                    ; $65eb: $02
    rlca                                          ; $65ec: $07
    ld [bc], a                                    ; $65ed: $02
    ld [bc], a                                    ; $65ee: $02
    ld [bc], a                                    ; $65ef: $02
    ld bc, $0386                                  ; $65f0: $01 $86 $03
    ld [bc], a                                    ; $65f3: $02
    rlca                                          ; $65f4: $07
    inc b                                         ; $65f5: $04
    inc bc                                        ; $65f6: $03
    ld [bc], a                                    ; $65f7: $02
    ld [bc], a                                    ; $65f8: $02
    ld bc, $0004                                  ; $65f9: $01 $04 $00
    ld [bc], a                                    ; $65fc: $02
    ld bc, $8302                                  ; $65fd: $01 $02 $83
    ld [bc], a                                    ; $6600: $02
    di                                            ; $6601: $f3
    sbc b                                         ; $6602: $98
    ei                                            ; $6603: $fb
    xor e                                         ; $6604: $ab
    rst $38                                       ; $6605: $ff
    ld h, a                                       ; $6606: $67
    rst $38                                       ; $6607: $ff
    sbc a                                         ; $6608: $9f
    rst $38                                       ; $6609: $ff
    sub e                                         ; $660a: $93
    ld a, [hl]                                    ; $660b: $7e
    db $e3                                        ; $660c: $e3
    rst $38                                       ; $660d: $ff
    rrca                                          ; $660e: $0f
    db $ed                                        ; $660f: $ed
    rst $38                                       ; $6610: $ff
    sbc l                                         ; $6611: $9d
    rst $38                                       ; $6612: $ff
    dec [hl]                                      ; $6613: $35
    rst $30                                       ; $6614: $f7
    ret                                           ; $6615: $c9


    rst $08                                       ; $6616: $cf
    bit 1, a                                      ; $6617: $cb $4f
    sbc a                                         ; $6619: $9f
    sub a                                         ; $661a: $97
    ld [bc], a                                    ; $661b: $02
    dec de                                        ; $661c: $1b
    ld [bc], a                                    ; $661d: $02
    ld hl, sp-$79                                 ; $661e: $f8 $87
    ld h, h                                       ; $6620: $64
    db $fc                                        ; $6621: $fc
    sub [hl]                                      ; $6622: $96
    cp $de                                        ; $6623: $fe $de
    cp $fa                                        ; $6625: $fe $fa
    dec b                                         ; $6627: $05
    cp $92                                        ; $6628: $fe $92
    ld a, [$bbfe]                                 ; $662a: $fa $fe $bb
    rst $38                                       ; $662d: $ff
    adc [hl]                                      ; $662e: $8e
    rst $38                                       ; $662f: $ff
    db $fd                                        ; $6630: $fd
    rst $38                                       ; $6631: $ff
    add l                                         ; $6632: $85
    rst $38                                       ; $6633: $ff
    call $fcff                                    ; $6634: $cd $ff $fc
    rst $38                                       ; $6637: $ff
    cp $ff                                        ; $6638: $fe $ff
    rst $30                                       ; $663a: $f7
    rst $38                                       ; $663b: $ff
    ld [bc], a                                    ; $663c: $02
    cp $1e                                        ; $663d: $fe $1e
    nop                                           ; $663f: $00
    ld [bc], a                                    ; $6640: $02
    add b                                         ; $6641: $80
    ld [bc], a                                    ; $6642: $02
    ldh [$8c], a                                  ; $6643: $e0 $8c
    or b                                          ; $6645: $b0
    ldh a, [$58]                                  ; $6646: $f0 $58
    ld hl, sp+$2c                                 ; $6648: $f8 $2c
    db $fc                                        ; $664a: $fc
    sbc [hl]                                      ; $664b: $9e
    cp $be                                        ; $664c: $fe $be
    cp $f0                                        ; $664e: $fe $f0
    ld [hl], b                                    ; $6650: $70
    ld [bc], a                                    ; $6651: $02
    ld hl, sp+$02                                 ; $6652: $f8 $02
    jr c, jr_0f9_6662                             ; $6654: $38 $0c

    nop                                           ; $6656: $00
    rst $38                                       ; $6657: $ff
    rrca                                          ; $6658: $0f
    dec b                                         ; $6659: $05
    rst $38                                       ; $665a: $ff
    dec bc                                        ; $665b: $0b
    ei                                            ; $665c: $fb
    add hl, bc                                    ; $665d: $09
    rst $38                                       ; $665e: $ff
    di                                            ; $665f: $f3
    cp $fb                                        ; $6660: $fe $fb

jr_0f9_6662:
    db $fd                                        ; $6662: $fd
    inc bc                                        ; $6663: $03
    dec c                                         ; $6664: $0d
    inc bc                                        ; $6665: $03
    inc b                                         ; $6666: $04
    dec bc                                        ; $6667: $0b
    ld [bc], a                                    ; $6668: $02
    rrca                                          ; $6669: $0f
    add d                                         ; $666a: $82
    add hl, sp                                    ; $666b: $39
    ccf                                           ; $666c: $3f
    ld [bc], a                                    ; $666d: $02
    rrca                                          ; $666e: $0f
    add [hl]                                      ; $666f: $86
    inc sp                                        ; $6670: $33
    ld a, $3f                                     ; $6671: $3e $3f
    ld a, $13                                     ; $6673: $3e $13
    ld e, $02                                     ; $6675: $1e $02
    rra                                           ; $6677: $1f
    ld [bc], a                                    ; $6678: $02
    rlca                                          ; $6679: $07
    ld [bc], a                                    ; $667a: $02
    ld [bc], a                                    ; $667b: $02
    ld [bc], a                                    ; $667c: $02
    ld bc, $0386                                  ; $667d: $01 $86 $03
    ld [bc], a                                    ; $6680: $02
    rlca                                          ; $6681: $07
    inc b                                         ; $6682: $04
    inc bc                                        ; $6683: $03
    ld [bc], a                                    ; $6684: $02
    ld [bc], a                                    ; $6685: $02
    ld bc, $0004                                  ; $6686: $01 $04 $00
    ld [bc], a                                    ; $6689: $02
    add c                                         ; $668a: $81
    ld [bc], a                                    ; $668b: $02
    di                                            ; $668c: $f3
    sbc d                                         ; $668d: $9a
    ei                                            ; $668e: $fb
    xor e                                         ; $668f: $ab
    rst $38                                       ; $6690: $ff
    ld h, a                                       ; $6691: $67
    rst $38                                       ; $6692: $ff
    sbc a                                         ; $6693: $9f
    rst $38                                       ; $6694: $ff
    sub e                                         ; $6695: $93
    ld a, a                                       ; $6696: $7f
    db $e3                                        ; $6697: $e3
    cp $0f                                        ; $6698: $fe $0f
    rst $28                                       ; $669a: $ef
    rst $38                                       ; $669b: $ff
    sbc l                                         ; $669c: $9d
    rst $38                                       ; $669d: $ff
    dec [hl]                                      ; $669e: $35
    rst $30                                       ; $669f: $f7
    push bc                                       ; $66a0: $c5
    rst $00                                       ; $66a1: $c7
    ret                                           ; $66a2: $c9


    ld c, a                                       ; $66a3: $4f
    adc e                                         ; $66a4: $8b
    adc a                                         ; $66a5: $8f
    rra                                           ; $66a6: $1f
    rla                                           ; $66a7: $17
    ld [bc], a                                    ; $66a8: $02
    dec de                                        ; $66a9: $1b
    ld [bc], a                                    ; $66aa: $02
    ld hl, sp-$79                                 ; $66ab: $f8 $87
    ld h, h                                       ; $66ad: $64
    db $fc                                        ; $66ae: $fc
    sub [hl]                                      ; $66af: $96
    cp $de                                        ; $66b0: $fe $de
    cp $fa                                        ; $66b2: $fe $fa
    dec b                                         ; $66b4: $05
    cp $92                                        ; $66b5: $fe $92
    ei                                            ; $66b7: $fb
    rst $38                                       ; $66b8: $ff
    cp d                                          ; $66b9: $ba
    rst $38                                       ; $66ba: $ff
    adc [hl]                                      ; $66bb: $8e
    rst $38                                       ; $66bc: $ff
    db $fd                                        ; $66bd: $fd
    rst $38                                       ; $66be: $ff
    add l                                         ; $66bf: $85
    rst $38                                       ; $66c0: $ff
    call $fcff                                    ; $66c1: $cd $ff $fc
    rst $38                                       ; $66c4: $ff
    cp $ff                                        ; $66c5: $fe $ff
    rst $30                                       ; $66c7: $f7
    rst $38                                       ; $66c8: $ff
    ld [bc], a                                    ; $66c9: $02
    cp $1e                                        ; $66ca: $fe $1e
    nop                                           ; $66cc: $00
    ld [bc], a                                    ; $66cd: $02
    add b                                         ; $66ce: $80
    ld [bc], a                                    ; $66cf: $02
    ldh [$8e], a                                  ; $66d0: $e0 $8e
    or b                                          ; $66d2: $b0
    ldh a, [$58]                                  ; $66d3: $f0 $58
    ld hl, sp+$2c                                 ; $66d5: $f8 $2c
    db $fc                                        ; $66d7: $fc
    ld e, $fe                                     ; $66d8: $1e $fe
    cp [hl]                                       ; $66da: $be
    cp $b0                                        ; $66db: $fe $b0
    ldh a, [$f8]                                  ; $66dd: $f0 $f8
    ld a, b                                       ; $66df: $78
    ld [bc], a                                    ; $66e0: $02
    ld hl, sp+$0c                                 ; $66e1: $f8 $0c
    nop                                           ; $66e3: $00
    rst $38                                       ; $66e4: $ff
    ld de, $ff06                                  ; $66e5: $11 $06 $ff
    dec bc                                        ; $66e8: $0b
    ei                                            ; $66e9: $fb
    add hl, bc                                    ; $66ea: $09
    db $fc                                        ; $66eb: $fc
    push af                                       ; $66ec: $f5
    db $fd                                        ; $66ed: $fd
    db $fd                                        ; $66ee: $fd
    db $fd                                        ; $66ef: $fd
    dec b                                         ; $66f0: $05
    inc bc                                        ; $66f1: $03
    ld a, [bc]                                    ; $66f2: $0a
    inc c                                         ; $66f3: $0c
    cp $0c                                        ; $66f4: $fe $0c
    ld [bc], a                                    ; $66f6: $02
    ld [bc], a                                    ; $66f7: $02
    ld [bc], a                                    ; $66f8: $02
    ld [bc], a                                    ; $66f9: $02
    ccf                                           ; $66fa: $3f
    adc h                                         ; $66fb: $8c
    rst $20                                       ; $66fc: $e7
    cp $3f                                        ; $66fd: $fe $3f
    dec a                                         ; $66ff: $3d
    rst $08                                       ; $6700: $cf
    ld a, [$faff]                                 ; $6701: $fa $ff $fa
    ld c, l                                       ; $6704: $4d
    ld a, e                                       ; $6705: $7b
    ld a, a                                       ; $6706: $7f
    ld a, h                                       ; $6707: $7c
    ld [bc], a                                    ; $6708: $02
    rra                                           ; $6709: $1f
    adc d                                         ; $670a: $8a
    ld a, [bc]                                    ; $670b: $0a
    dec bc                                        ; $670c: $0b
    inc b                                         ; $670d: $04
    rlca                                          ; $670e: $07
    rrca                                          ; $670f: $0f
    dec bc                                        ; $6710: $0b
    rra                                           ; $6711: $1f
    ld de, $0a0e                                  ; $6712: $11 $0e $0a
    ld [bc], a                                    ; $6715: $02
    inc b                                         ; $6716: $04
    ld [bc], a                                    ; $6717: $02
    nop                                           ; $6718: $00
    ld [bc], a                                    ; $6719: $02
    jp $e59e                                      ; $671a: $c3 $9e $e5


    and a                                         ; $671d: $a7
    cp $9f                                        ; $671e: $fe $9f
    rst $38                                       ; $6720: $ff
    ld a, a                                       ; $6721: $7f
    rst $38                                       ; $6722: $ff
    ld c, a                                       ; $6723: $4f
    rst $38                                       ; $6724: $ff
    adc a                                         ; $6725: $8f
    rst $38                                       ; $6726: $ff
    ccf                                           ; $6727: $3f
    cp a                                          ; $6728: $bf
    rst $38                                       ; $6729: $ff
    ld a, d                                       ; $672a: $7a
    rst $38                                       ; $672b: $ff
    adc $cf                                       ; $672c: $ce $cf
    rla                                           ; $672e: $17
    rra                                           ; $672f: $1f
    ld d, $1f                                     ; $6730: $16 $1f
    rla                                           ; $6732: $17
    rra                                           ; $6733: $1f
    daa                                           ; $6734: $27
    ccf                                           ; $6735: $3f
    cpl                                           ; $6736: $2f
    ccf                                           ; $6737: $3f
    ld a, a                                       ; $6738: $7f
    ld e, a                                       ; $6739: $5f
    ld [bc], a                                    ; $673a: $02
    ldh [$88], a                                  ; $673b: $e0 $88
    sub b                                         ; $673d: $90
    ldh a, [$58]                                  ; $673e: $f0 $58
    ld hl, sp+$78                                 ; $6740: $f8 $78
    ld hl, sp-$18                                 ; $6742: $f8 $e8
    ld hl, sp+$02                                 ; $6744: $f8 $02
    cp $94                                        ; $6746: $fe $94
    ei                                            ; $6748: $fb
    rst $38                                       ; $6749: $ff
    ld [$edff], a                                 ; $674a: $ea $ff $ed
    rst $38                                       ; $674d: $ff
    jr c, @+$01                                   ; $674e: $38 $ff

    db $f4                                        ; $6750: $f4
    rst $38                                       ; $6751: $ff
    inc d                                         ; $6752: $14
    rst $38                                       ; $6753: $ff
    ld [hl], $ff                                  ; $6754: $36 $ff
    di                                            ; $6756: $f3
    rst $38                                       ; $6757: $ff
    ld a, [$dffe]                                 ; $6758: $fa $fe $df
    db $fd                                        ; $675b: $fd
    ld [bc], a                                    ; $675c: $02
    db $10                                        ; $675d: $10
    ld [bc], a                                    ; $675e: $02
    jr @-$79                                      ; $675f: $18 $85

    inc c                                         ; $6761: $0c
    inc e                                         ; $6762: $1c
    ld d, $1e                                     ; $6763: $16 $1e
    rrca                                          ; $6765: $0f
    inc bc                                        ; $6766: $03
    rra                                           ; $6767: $1f
    ld [bc], a                                    ; $6768: $02
    jr jr_0f9_676f                                ; $6769: $18 $04

    inc e                                         ; $676b: $1c
    ld [bc], a                                    ; $676c: $02
    nop                                           ; $676d: $00
    ld [bc], a                                    ; $676e: $02

jr_0f9_676f:
    ld h, b                                       ; $676f: $60
    inc c                                         ; $6770: $0c
    nop                                           ; $6771: $00
    ld [bc], a                                    ; $6772: $02
    rst $18                                       ; $6773: $df
    ld e, $00                                     ; $6774: $1e $00
    ld [bc], a                                    ; $6776: $02
    rrca                                          ; $6777: $0f
    inc e                                         ; $6778: $1c
    nop                                           ; $6779: $00
    rst $38                                       ; $677a: $ff
    rrca                                          ; $677b: $0f
    dec b                                         ; $677c: $05
    rst $38                                       ; $677d: $ff
    dec bc                                        ; $677e: $0b
    ei                                            ; $677f: $fb
    add hl, bc                                    ; $6780: $09
    rst $30                                       ; $6781: $f7
    db $f4                                        ; $6782: $f4
    or $fc                                        ; $6783: $f6 $fc
    ld b, $fc                                     ; $6785: $06 $fc
    ei                                            ; $6787: $fb
    inc b                                         ; $6788: $04
    nop                                           ; $6789: $00
    inc c                                         ; $678a: $0c
    ld [bc], a                                    ; $678b: $02
    rrca                                          ; $678c: $0f
    add d                                         ; $678d: $82
    add hl, sp                                    ; $678e: $39
    ccf                                           ; $678f: $3f
    ld [bc], a                                    ; $6790: $02
    rrca                                          ; $6791: $0f
    add [hl]                                      ; $6792: $86
    inc sp                                        ; $6793: $33
    ld a, $3f                                     ; $6794: $3e $3f
    ld a, $13                                     ; $6796: $3e $13
    ld e, $04                                     ; $6798: $1e $04
    ccf                                           ; $679a: $3f
    ld [bc], a                                    ; $679b: $02
    rrca                                          ; $679c: $0f
    ld [bc], a                                    ; $679d: $02
    inc b                                         ; $679e: $04
    ld [bc], a                                    ; $679f: $02
    ld bc, $0288                                  ; $67a0: $01 $88 $02
    inc bc                                        ; $67a3: $03
    rlca                                          ; $67a4: $07
    dec b                                         ; $67a5: $05
    rrca                                          ; $67a6: $0f
    ld [$0507], sp                                ; $67a7: $08 $07 $05
    ld [bc], a                                    ; $67aa: $02
    inc bc                                        ; $67ab: $03
    ld [bc], a                                    ; $67ac: $02
    add b                                         ; $67ad: $80
    ld [bc], a                                    ; $67ae: $02
    ldh a, [$8e]                                  ; $67af: $f0 $8e
    ld hl, sp-$58                                 ; $67b1: $f8 $a8
    db $fc                                        ; $67b3: $fc
    ld h, h                                       ; $67b4: $64
    db $fc                                        ; $67b5: $fc
    sbc h                                         ; $67b6: $9c
    rst $38                                       ; $67b7: $ff
    sub e                                         ; $67b8: $93
    ld a, [hl]                                    ; $67b9: $7e
    db $e3                                        ; $67ba: $e3
    ld a, a                                       ; $67bb: $7f
    add a                                         ; $67bc: $87
    rst $38                                       ; $67bd: $ff
    xor a                                         ; $67be: $af
    ld [bc], a                                    ; $67bf: $02
    rst $38                                       ; $67c0: $ff
    sub d                                         ; $67c1: $92
    rst $18                                       ; $67c2: $df
    rst $30                                       ; $67c3: $f7
    ccf                                           ; $67c4: $3f
    rst $38                                       ; $67c5: $ff
    ld d, a                                       ; $67c6: $57
    rst $18                                       ; $67c7: $df
    sub l                                         ; $67c8: $95
    sbc a                                         ; $67c9: $9f
    sub a                                         ; $67ca: $97
    sbc a                                         ; $67cb: $9f
    dec bc                                        ; $67cc: $0b
    rrca                                          ; $67cd: $0f
    dec bc                                        ; $67ce: $0b
    rrca                                          ; $67cf: $0f
    dec bc                                        ; $67d0: $0b
    rrca                                          ; $67d1: $0f
    dec bc                                        ; $67d2: $0b
    rrca                                          ; $67d3: $0f
    ld [bc], a                                    ; $67d4: $02
    rlca                                          ; $67d5: $07
    jr jr_0f9_67d8                                ; $67d6: $18 $00

jr_0f9_67d8:
    ld [bc], a                                    ; $67d8: $02
    ldh a, [$87]                                  ; $67d9: $f0 $87
    ret z                                         ; $67db: $c8

    ld hl, sp+$2c                                 ; $67dc: $f8 $2c
    db $fc                                        ; $67de: $fc
    cp [hl]                                       ; $67df: $be
    cp $f7                                        ; $67e0: $fe $f7
    ld [bc], a                                    ; $67e2: $02
    rst $38                                       ; $67e3: $ff
    add c                                         ; $67e4: $81
    db $fd                                        ; $67e5: $fd
    ld [bc], a                                    ; $67e6: $02
    rst $38                                       ; $67e7: $ff
    adc [hl]                                      ; $67e8: $8e
    push af                                       ; $67e9: $f5
    rst $38                                       ; $67ea: $ff
    ld [hl], l                                    ; $67eb: $75
    rst $38                                       ; $67ec: $ff
    dec e                                         ; $67ed: $1d
    rst $38                                       ; $67ee: $ff
    ei                                            ; $67ef: $fb
    rst $38                                       ; $67f0: $ff
    dec bc                                        ; $67f1: $0b
    rst $38                                       ; $67f2: $ff
    sbc d                                         ; $67f3: $9a
    cp $fa                                        ; $67f4: $fe $fa
    cp $02                                        ; $67f6: $fe $02
    db $fc                                        ; $67f8: $fc
    ld [bc], a                                    ; $67f9: $02
    nop                                           ; $67fa: $00
    ld [bc], a                                    ; $67fb: $02
    ret nz                                        ; $67fc: $c0

    adc b                                         ; $67fd: $88

jr_0f9_67fe:
    ld [hl], b                                    ; $67fe: $70
    ldh a, [$bc]                                  ; $67ff: $f0 $bc
    db $fc                                        ; $6801: $fc
    ld e, h                                       ; $6802: $5c
    db $fc                                        ; $6803: $fc
    jr c, jr_0f9_67fe                             ; $6804: $38 $f8

    inc b                                         ; $6806: $04
    db $fc                                        ; $6807: $fc
    ld [de], a                                    ; $6808: $12
    nop                                           ; $6809: $00
    rst $38                                       ; $680a: $ff
    rrca                                          ; $680b: $0f
    dec b                                         ; $680c: $05
    rst $38                                       ; $680d: $ff
    dec bc                                        ; $680e: $0b
    ei                                            ; $680f: $fb
    add hl, bc                                    ; $6810: $09
    ldh a, [$f7]                                  ; $6811: $f0 $f7
    ldh a, [rIE]                                  ; $6813: $f0 $ff
    ld hl, sp+$07                                 ; $6815: $f8 $07
    ld a, [$000b]                                 ; $6817: $fa $0b $00
    rst $38                                       ; $681a: $ff
    ld [bc], a                                    ; $681b: $02
    ld bc, $0f02                                  ; $681c: $01 $02 $0f
    sub b                                         ; $681f: $90
    dec de                                        ; $6820: $1b
    rra                                           ; $6821: $1f
    inc a                                         ; $6822: $3c
    ccf                                           ; $6823: $3f
    cpl                                           ; $6824: $2f
    ccf                                           ; $6825: $3f
    scf                                           ; $6826: $37
    ccf                                           ; $6827: $3f
    rra                                           ; $6828: $1f
    ld e, $0e                                     ; $6829: $1e $0e
    dec bc                                        ; $682b: $0b
    rrca                                          ; $682c: $0f
    ld [$0e0f], sp                                ; $682d: $08 $0f $0e
    ld [bc], a                                    ; $6830: $02
    inc sp                                        ; $6831: $33
    add [hl]                                      ; $6832: $86
    ld a, l                                       ; $6833: $7d
    ld e, l                                       ; $6834: $5d
    ei                                            ; $6835: $fb
    adc a                                         ; $6836: $8f
    ld [hl], b                                    ; $6837: $70
    ld e, a                                       ; $6838: $5f
    ld [bc], a                                    ; $6839: $02
    ccf                                           ; $683a: $3f
    ld [bc], a                                    ; $683b: $02
    ld bc, $6002                                  ; $683c: $01 $02 $60
    add h                                         ; $683f: $84
    call nc, $dcf4                                ; $6840: $d4 $f4 $dc
    db $fc                                        ; $6843: $fc
    inc bc                                        ; $6844: $03
    ld hl, sp-$6c                                 ; $6845: $f8 $94
    adc b                                         ; $6847: $88
    db $fc                                        ; $6848: $fc
    ld l, h                                       ; $6849: $6c
    db $fc                                        ; $684a: $fc
    sub h                                         ; $684b: $94
    db $fc                                        ; $684c: $fc
    sub h                                         ; $684d: $94
    db $fc                                        ; $684e: $fc
    sbc h                                         ; $684f: $9c
    db $fd                                        ; $6850: $fd
    ld h, l                                       ; $6851: $65
    rst $38                                       ; $6852: $ff
    rra                                           ; $6853: $1f
    rst $38                                       ; $6854: $ff
    adc a                                         ; $6855: $8f
    or $ff                                        ; $6856: $f6 $ff
    ld sp, hl                                     ; $6858: $f9
    rst $38                                       ; $6859: $ff
    db $fd                                        ; $685a: $fd
    inc bc                                        ; $685b: $03
    rst $38                                       ; $685c: $ff
    ld [bc], a                                    ; $685d: $02
    ret nz                                        ; $685e: $c0

    adc l                                         ; $685f: $8d
    ldh [rNR41], a                                ; $6860: $e0 $20
    db $ec                                        ; $6862: $ec
    inc l                                         ; $6863: $2c
    di                                            ; $6864: $f3
    rst $38                                       ; $6865: $ff
    ld b, c                                       ; $6866: $41
    rst $38                                       ; $6867: $ff
    ld a, a                                       ; $6868: $7f
    rst $38                                       ; $6869: $ff
    pop hl                                        ; $686a: $e1
    rst $38                                       ; $686b: $ff
    cp b                                          ; $686c: $b8
    ld [bc], a                                    ; $686d: $02
    rst $38                                       ; $686e: $ff
    add c                                         ; $686f: $81
    rst $28                                       ; $6870: $ef
    ld [bc], a                                    ; $6871: $02
    rst $38                                       ; $6872: $ff
    adc b                                         ; $6873: $88
    xor b                                         ; $6874: $a8
    ld hl, sp-$58                                 ; $6875: $f8 $a8
    ld hl, sp-$18                                 ; $6877: $f8 $e8
    ld hl, sp-$30                                 ; $6879: $f8 $d0
    ldh a, [rDIV]                                 ; $687b: $f0 $04
    nop                                           ; $687d: $00
    ld [bc], a                                    ; $687e: $02
    inc c                                         ; $687f: $0c
    ld [bc], a                                    ; $6880: $02
    ld c, $02                                     ; $6881: $0e $02
    inc c                                         ; $6883: $0c
    ld [bc], a                                    ; $6884: $02
    ld c, $04                                     ; $6885: $0e $04
    rrca                                          ; $6887: $0f
    ld [bc], a                                    ; $6888: $02
    ld c, $12                                     ; $6889: $0e $12
    nop                                           ; $688b: $00
    add d                                         ; $688c: $82
    rst $38                                       ; $688d: $ff
    cp a                                          ; $688e: $bf
    ld [bc], a                                    ; $688f: $02
    rst $38                                       ; $6890: $ff
    adc b                                         ; $6891: $88
    cp a                                          ; $6892: $bf
    rst $38                                       ; $6893: $ff
    xor e                                         ; $6894: $ab
    rst $38                                       ; $6895: $ff
    cp b                                          ; $6896: $b8
    rst $38                                       ; $6897: $ff
    ld e, a                                       ; $6898: $5f
    ld a, a                                       ; $6899: $7f
    inc d                                         ; $689a: $14
    nop                                           ; $689b: $00
    rst $38                                       ; $689c: $ff
    rrca                                          ; $689d: $0f
    dec b                                         ; $689e: $05
    rst $38                                       ; $689f: $ff
    dec bc                                        ; $68a0: $0b
    ei                                            ; $68a1: $fb
    add hl, bc                                    ; $68a2: $09
    db $ed                                        ; $68a3: $ed
    rst $30                                       ; $68a4: $f7
    db $ed                                        ; $68a5: $ed
    rst $38                                       ; $68a6: $ff
    push af                                       ; $68a7: $f5
    rlca                                          ; $68a8: $07
    rst $30                                       ; $68a9: $f7
    dec bc                                        ; $68aa: $0b
    db $fd                                        ; $68ab: $fd
    rst $38                                       ; $68ac: $ff
    ld [bc], a                                    ; $68ad: $02
    ld bc, $0f02                                  ; $68ae: $01 $02 $0f
    sub b                                         ; $68b1: $90
    dec de                                        ; $68b2: $1b
    rra                                           ; $68b3: $1f
    inc a                                         ; $68b4: $3c
    ccf                                           ; $68b5: $3f
    cpl                                           ; $68b6: $2f
    ccf                                           ; $68b7: $3f
    scf                                           ; $68b8: $37
    ccf                                           ; $68b9: $3f
    rra                                           ; $68ba: $1f
    ld e, $0e                                     ; $68bb: $1e $0e
    dec bc                                        ; $68bd: $0b
    rrca                                          ; $68be: $0f
    ld [$0e0f], sp                                ; $68bf: $08 $0f $0e
    ld [bc], a                                    ; $68c2: $02
    inc sp                                        ; $68c3: $33
    add [hl]                                      ; $68c4: $86
    ld a, l                                       ; $68c5: $7d
    ld e, l                                       ; $68c6: $5d
    ei                                            ; $68c7: $fb
    adc a                                         ; $68c8: $8f
    ld [hl], b                                    ; $68c9: $70
    ld e, a                                       ; $68ca: $5f
    ld [bc], a                                    ; $68cb: $02
    ccf                                           ; $68cc: $3f
    ld [bc], a                                    ; $68cd: $02
    ld bc, $6002                                  ; $68ce: $01 $02 $60
    add h                                         ; $68d1: $84
    call nc, $dcf4                                ; $68d2: $d4 $f4 $dc
    db $fc                                        ; $68d5: $fc
    inc bc                                        ; $68d6: $03
    ld hl, sp-$70                                 ; $68d7: $f8 $90
    adc b                                         ; $68d9: $88
    db $fc                                        ; $68da: $fc
    ld l, h                                       ; $68db: $6c
    db $fc                                        ; $68dc: $fc
    sub h                                         ; $68dd: $94
    db $fc                                        ; $68de: $fc
    sub h                                         ; $68df: $94
    db $fc                                        ; $68e0: $fc
    sbc h                                         ; $68e1: $9c
    db $fd                                        ; $68e2: $fd
    ld h, l                                       ; $68e3: $65
    rst $38                                       ; $68e4: $ff
    rra                                           ; $68e5: $1f
    cp $8f                                        ; $68e6: $fe $8f
    db $fc                                        ; $68e8: $fc
    inc bc                                        ; $68e9: $03
    rst $38                                       ; $68ea: $ff
    add h                                         ; $68eb: $84
    xor a                                         ; $68ec: $af
    rst $38                                       ; $68ed: $ff
    or $ff                                        ; $68ee: $f6 $ff
    ld [bc], a                                    ; $68f0: $02
    ret nz                                        ; $68f1: $c0

    sub b                                         ; $68f2: $90
    ldh [rNR41], a                                ; $68f3: $e0 $20
    db $ec                                        ; $68f5: $ec
    inc l                                         ; $68f6: $2c
    di                                            ; $68f7: $f3
    rst $38                                       ; $68f8: $ff
    pop bc                                        ; $68f9: $c1
    rst $38                                       ; $68fa: $ff
    cp a                                          ; $68fb: $bf
    rst $38                                       ; $68fc: $ff
    add c                                         ; $68fd: $81
    rst $38                                       ; $68fe: $ff
    ld e, b                                       ; $68ff: $58

Jump_0f9_6900:
    rst $38                                       ; $6900: $ff
    ld a, a                                       ; $6901: $7f
    rst $38                                       ; $6902: $ff

Call_0f9_6903:
    ld [bc], a                                    ; $6903: $02
    rst $28                                       ; $6904: $ef
    add d                                         ; $6905: $82
    or b                                          ; $6906: $b0
    ldh a, [$0a]                                  ; $6907: $f0 $0a
    nop                                           ; $6909: $00
    ld [bc], a                                    ; $690a: $02
    inc c                                         ; $690b: $0c
    ld [bc], a                                    ; $690c: $02
    ld c, $02                                     ; $690d: $0e $02
    inc c                                         ; $690f: $0c
    ld [bc], a                                    ; $6910: $02
    ld c, $04                                     ; $6911: $0e $04
    rrca                                          ; $6913: $0f
    ld [bc], a                                    ; $6914: $02
    ld c, $12                                     ; $6915: $0e $12
    nop                                           ; $6917: $00
    add e                                         ; $6918: $83
    add hl, sp                                    ; $6919: $39
    ccf                                           ; $691a: $3f
    ld a, l                                       ; $691b: $7d
    inc bc                                        ; $691c: $03
    ld a, a                                       ; $691d: $7f
    ld a, [de]                                    ; $691e: $1a
    nop                                           ; $691f: $00
    rst $38                                       ; $6920: $ff
    rrca                                          ; $6921: $0f
    dec b                                         ; $6922: $05
    rst $38                                       ; $6923: $ff
    dec bc                                        ; $6924: $0b
    ei                                            ; $6925: $fb
    add hl, bc                                    ; $6926: $09
    jp hl                                         ; $6927: $e9


    rst $30                                       ; $6928: $f7
    jp hl                                         ; $6929: $e9


    rst $38                                       ; $692a: $ff
    pop af                                        ; $692b: $f1
    rlca                                          ; $692c: $07
    di                                            ; $692d: $f3
    dec bc                                        ; $692e: $0b
    ld sp, hl                                     ; $692f: $f9
    rst $38                                       ; $6930: $ff
    ld [bc], a                                    ; $6931: $02
    ld bc, $0f02                                  ; $6932: $01 $02 $0f
    sub b                                         ; $6935: $90
    dec de                                        ; $6936: $1b
    rra                                           ; $6937: $1f
    inc a                                         ; $6938: $3c
    ccf                                           ; $6939: $3f
    cpl                                           ; $693a: $2f
    ccf                                           ; $693b: $3f
    scf                                           ; $693c: $37
    ccf                                           ; $693d: $3f
    rra                                           ; $693e: $1f
    ld e, $0e                                     ; $693f: $1e $0e
    dec bc                                        ; $6941: $0b
    rrca                                          ; $6942: $0f
    ld [$0e0f], sp                                ; $6943: $08 $0f $0e
    ld [bc], a                                    ; $6946: $02
    inc sp                                        ; $6947: $33
    add [hl]                                      ; $6948: $86
    ld a, l                                       ; $6949: $7d
    ld e, l                                       ; $694a: $5d
    ei                                            ; $694b: $fb
    adc a                                         ; $694c: $8f
    ld [hl], b                                    ; $694d: $70
    ld e, a                                       ; $694e: $5f
    ld [bc], a                                    ; $694f: $02
    ccf                                           ; $6950: $3f
    ld [bc], a                                    ; $6951: $02
    ld bc, $6002                                  ; $6952: $01 $02 $60
    add h                                         ; $6955: $84
    call nc, $dcf4                                ; $6956: $d4 $f4 $dc
    db $fc                                        ; $6959: $fc
    inc bc                                        ; $695a: $03
    ld hl, sp-$70                                 ; $695b: $f8 $90
    adc b                                         ; $695d: $88
    db $fc                                        ; $695e: $fc
    ld l, h                                       ; $695f: $6c
    db $fc                                        ; $6960: $fc
    sub h                                         ; $6961: $94
    db $fc                                        ; $6962: $fc
    sub h                                         ; $6963: $94
    db $fc                                        ; $6964: $fc
    sbc h                                         ; $6965: $9c
    db $fd                                        ; $6966: $fd
    ld h, l                                       ; $6967: $65
    rst $38                                       ; $6968: $ff
    rra                                           ; $6969: $1f
    cp $8f                                        ; $696a: $fe $8f
    db $fc                                        ; $696c: $fc
    inc bc                                        ; $696d: $03
    rst $38                                       ; $696e: $ff
    add h                                         ; $696f: $84
    xor b                                         ; $6970: $a8
    rst $38                                       ; $6971: $ff
    db $f4                                        ; $6972: $f4
    rst $38                                       ; $6973: $ff
    ld [bc], a                                    ; $6974: $02
    ret nz                                        ; $6975: $c0

    adc l                                         ; $6976: $8d
    ldh [rNR41], a                                ; $6977: $e0 $20
    db $ec                                        ; $6979: $ec
    inc l                                         ; $697a: $2c
    di                                            ; $697b: $f3
    rst $38                                       ; $697c: $ff
    pop bc                                        ; $697d: $c1
    rst $38                                       ; $697e: $ff
    cp a                                          ; $697f: $bf
    rst $38                                       ; $6980: $ff
    ld bc, $98ff                                  ; $6981: $01 $ff $98
    inc bc                                        ; $6984: $03
    rst $38                                       ; $6985: $ff
    ld [bc], a                                    ; $6986: $02
    rst $28                                       ; $6987: $ef
    inc c                                         ; $6988: $0c
    nop                                           ; $6989: $00
    ld [bc], a                                    ; $698a: $02
    inc c                                         ; $698b: $0c
    ld [bc], a                                    ; $698c: $02
    ld c, $02                                     ; $698d: $0e $02
    inc c                                         ; $698f: $0c
    ld [bc], a                                    ; $6990: $02
    ld c, $04                                     ; $6991: $0e $04
    rrca                                          ; $6993: $0f
    ld [bc], a                                    ; $6994: $02
    ld c, $12                                     ; $6995: $0e $12
    nop                                           ; $6997: $00
    ld [bc], a                                    ; $6998: $02
    ccf                                           ; $6999: $3f
    ld [bc], a                                    ; $699a: $02
    inc bc                                        ; $699b: $03
    inc e                                         ; $699c: $1c
    nop                                           ; $699d: $00
    rst $38                                       ; $699e: $ff
    rst $38                                       ; $699f: $ff
    rst $38                                       ; $69a0: $ff
    rst $38                                       ; $69a1: $ff
    rst $38                                       ; $69a2: $ff
    rst $38                                       ; $69a3: $ff
    rst $38                                       ; $69a4: $ff
    rst $38                                       ; $69a5: $ff
    rst $38                                       ; $69a6: $ff
    rst $38                                       ; $69a7: $ff
    rst $38                                       ; $69a8: $ff
    rst $38                                       ; $69a9: $ff
    rst $38                                       ; $69aa: $ff
    rst $38                                       ; $69ab: $ff
    rst $38                                       ; $69ac: $ff
    rst $38                                       ; $69ad: $ff
    rst $38                                       ; $69ae: $ff
    rst $38                                       ; $69af: $ff
    rst $38                                       ; $69b0: $ff
    rst $38                                       ; $69b1: $ff
    rst $38                                       ; $69b2: $ff
    rst $38                                       ; $69b3: $ff
    rst $38                                       ; $69b4: $ff
    rst $38                                       ; $69b5: $ff
    rst $38                                       ; $69b6: $ff
    rst $38                                       ; $69b7: $ff
    rst $38                                       ; $69b8: $ff
    rst $38                                       ; $69b9: $ff
    rst $38                                       ; $69ba: $ff
    rst $38                                       ; $69bb: $ff
    rst $38                                       ; $69bc: $ff
    rst $38                                       ; $69bd: $ff
    rst $38                                       ; $69be: $ff
    rst $38                                       ; $69bf: $ff
    rst $38                                       ; $69c0: $ff
    rst $38                                       ; $69c1: $ff
    rst $38                                       ; $69c2: $ff
    rst $38                                       ; $69c3: $ff
    rst $38                                       ; $69c4: $ff
    rst $38                                       ; $69c5: $ff
    rst $38                                       ; $69c6: $ff
    rst $38                                       ; $69c7: $ff
    rst $38                                       ; $69c8: $ff
    rst $38                                       ; $69c9: $ff
    rst $38                                       ; $69ca: $ff
    rst $38                                       ; $69cb: $ff
    rst $38                                       ; $69cc: $ff
    rst $38                                       ; $69cd: $ff
    rst $38                                       ; $69ce: $ff
    rst $38                                       ; $69cf: $ff
    rst $38                                       ; $69d0: $ff
    rst $38                                       ; $69d1: $ff
    rst $38                                       ; $69d2: $ff
    rst $38                                       ; $69d3: $ff
    rst $38                                       ; $69d4: $ff
    rst $38                                       ; $69d5: $ff
    rst $38                                       ; $69d6: $ff
    rst $38                                       ; $69d7: $ff
    rst $38                                       ; $69d8: $ff
    rst $38                                       ; $69d9: $ff
    rst $38                                       ; $69da: $ff
    rst $38                                       ; $69db: $ff
    rst $38                                       ; $69dc: $ff
    rst $38                                       ; $69dd: $ff
    rst $38                                       ; $69de: $ff
    rst $38                                       ; $69df: $ff
    rst $38                                       ; $69e0: $ff
    rst $38                                       ; $69e1: $ff
    rst $38                                       ; $69e2: $ff
    rst $38                                       ; $69e3: $ff
    rst $38                                       ; $69e4: $ff
    rst $38                                       ; $69e5: $ff
    rst $38                                       ; $69e6: $ff
    rst $38                                       ; $69e7: $ff
    rst $38                                       ; $69e8: $ff
    rst $38                                       ; $69e9: $ff
    rst $38                                       ; $69ea: $ff
    rst $38                                       ; $69eb: $ff
    rst $38                                       ; $69ec: $ff
    rst $38                                       ; $69ed: $ff
    rst $38                                       ; $69ee: $ff
    rst $38                                       ; $69ef: $ff
    rst $38                                       ; $69f0: $ff
    rst $38                                       ; $69f1: $ff
    rst $38                                       ; $69f2: $ff
    rst $38                                       ; $69f3: $ff
    rst $38                                       ; $69f4: $ff
    rst $38                                       ; $69f5: $ff
    rst $38                                       ; $69f6: $ff
    rst $38                                       ; $69f7: $ff
    rst $38                                       ; $69f8: $ff
    rst $38                                       ; $69f9: $ff
    rst $38                                       ; $69fa: $ff
    rst $38                                       ; $69fb: $ff
    rst $38                                       ; $69fc: $ff
    rst $38                                       ; $69fd: $ff
    rst $38                                       ; $69fe: $ff
    rst $38                                       ; $69ff: $ff
    rst $38                                       ; $6a00: $ff
    rst $38                                       ; $6a01: $ff
    rst $38                                       ; $6a02: $ff
    rst $38                                       ; $6a03: $ff
    rst $38                                       ; $6a04: $ff
    rst $38                                       ; $6a05: $ff
    rst $38                                       ; $6a06: $ff
    rst $38                                       ; $6a07: $ff
    rst $38                                       ; $6a08: $ff
    rst $38                                       ; $6a09: $ff
    rst $38                                       ; $6a0a: $ff
    rst $38                                       ; $6a0b: $ff
    rst $38                                       ; $6a0c: $ff
    rst $38                                       ; $6a0d: $ff
    rst $38                                       ; $6a0e: $ff
    rst $38                                       ; $6a0f: $ff
    rst $38                                       ; $6a10: $ff
    rst $38                                       ; $6a11: $ff
    rst $38                                       ; $6a12: $ff
    rst $38                                       ; $6a13: $ff
    rst $38                                       ; $6a14: $ff
    rst $38                                       ; $6a15: $ff
    rst $38                                       ; $6a16: $ff
    rst $38                                       ; $6a17: $ff
    rst $38                                       ; $6a18: $ff
    rst $38                                       ; $6a19: $ff
    rst $38                                       ; $6a1a: $ff
    rst $38                                       ; $6a1b: $ff
    rst $38                                       ; $6a1c: $ff
    rst $38                                       ; $6a1d: $ff
    rst $38                                       ; $6a1e: $ff
    rst $38                                       ; $6a1f: $ff
    rst $38                                       ; $6a20: $ff
    rst $38                                       ; $6a21: $ff
    rst $38                                       ; $6a22: $ff
    rst $38                                       ; $6a23: $ff
    rst $38                                       ; $6a24: $ff

Jump_0f9_6a25:
    rst $38                                       ; $6a25: $ff
    rst $38                                       ; $6a26: $ff
    rst $38                                       ; $6a27: $ff
    rst $38                                       ; $6a28: $ff
    rst $38                                       ; $6a29: $ff
    rst $38                                       ; $6a2a: $ff
    rst $38                                       ; $6a2b: $ff
    rst $38                                       ; $6a2c: $ff
    rst $38                                       ; $6a2d: $ff
    rst $38                                       ; $6a2e: $ff
    rst $38                                       ; $6a2f: $ff
    rst $38                                       ; $6a30: $ff
    rst $38                                       ; $6a31: $ff
    rst $38                                       ; $6a32: $ff
    rst $38                                       ; $6a33: $ff
    rst $38                                       ; $6a34: $ff
    rst $38                                       ; $6a35: $ff
    rst $38                                       ; $6a36: $ff
    rst $38                                       ; $6a37: $ff
    rst $38                                       ; $6a38: $ff
    rst $38                                       ; $6a39: $ff
    rst $38                                       ; $6a3a: $ff
    rst $38                                       ; $6a3b: $ff
    rst $38                                       ; $6a3c: $ff
    rst $38                                       ; $6a3d: $ff
    rst $38                                       ; $6a3e: $ff
    rst $38                                       ; $6a3f: $ff
    rst $38                                       ; $6a40: $ff
    rst $38                                       ; $6a41: $ff
    rst $38                                       ; $6a42: $ff
    rst $38                                       ; $6a43: $ff
    rst $38                                       ; $6a44: $ff
    rst $38                                       ; $6a45: $ff
    rst $38                                       ; $6a46: $ff
    rst $38                                       ; $6a47: $ff
    rst $38                                       ; $6a48: $ff
    rst $38                                       ; $6a49: $ff
    rst $38                                       ; $6a4a: $ff
    rst $38                                       ; $6a4b: $ff
    rst $38                                       ; $6a4c: $ff
    rst $38                                       ; $6a4d: $ff
    rst $38                                       ; $6a4e: $ff
    rst $38                                       ; $6a4f: $ff
    rst $38                                       ; $6a50: $ff
    rst $38                                       ; $6a51: $ff
    rst $38                                       ; $6a52: $ff
    rst $38                                       ; $6a53: $ff
    rst $38                                       ; $6a54: $ff
    rst $38                                       ; $6a55: $ff
    rst $38                                       ; $6a56: $ff
    rst $38                                       ; $6a57: $ff
    rst $38                                       ; $6a58: $ff
    rst $38                                       ; $6a59: $ff
    rst $38                                       ; $6a5a: $ff
    rst $38                                       ; $6a5b: $ff
    rst $38                                       ; $6a5c: $ff
    rst $38                                       ; $6a5d: $ff
    rst $38                                       ; $6a5e: $ff
    rst $38                                       ; $6a5f: $ff
    rst $38                                       ; $6a60: $ff
    rst $38                                       ; $6a61: $ff
    rst $38                                       ; $6a62: $ff
    rst $38                                       ; $6a63: $ff
    rst $38                                       ; $6a64: $ff
    rst $38                                       ; $6a65: $ff
    rst $38                                       ; $6a66: $ff
    rst $38                                       ; $6a67: $ff
    rst $38                                       ; $6a68: $ff
    rst $38                                       ; $6a69: $ff
    rst $38                                       ; $6a6a: $ff
    rst $38                                       ; $6a6b: $ff
    rst $38                                       ; $6a6c: $ff
    rst $38                                       ; $6a6d: $ff
    rst $38                                       ; $6a6e: $ff
    rst $38                                       ; $6a6f: $ff
    rst $38                                       ; $6a70: $ff
    rst $38                                       ; $6a71: $ff
    rst $38                                       ; $6a72: $ff
    rst $38                                       ; $6a73: $ff
    rst $38                                       ; $6a74: $ff
    rst $38                                       ; $6a75: $ff
    rst $38                                       ; $6a76: $ff
    rst $38                                       ; $6a77: $ff
    rst $38                                       ; $6a78: $ff
    rst $38                                       ; $6a79: $ff
    rst $38                                       ; $6a7a: $ff
    rst $38                                       ; $6a7b: $ff
    rst $38                                       ; $6a7c: $ff
    rst $38                                       ; $6a7d: $ff
    rst $38                                       ; $6a7e: $ff
    rst $38                                       ; $6a7f: $ff
    rst $38                                       ; $6a80: $ff
    rst $38                                       ; $6a81: $ff
    rst $38                                       ; $6a82: $ff
    rst $38                                       ; $6a83: $ff
    rst $38                                       ; $6a84: $ff
    rst $38                                       ; $6a85: $ff
    rst $38                                       ; $6a86: $ff
    rst $38                                       ; $6a87: $ff
    rst $38                                       ; $6a88: $ff
    rst $38                                       ; $6a89: $ff
    rst $38                                       ; $6a8a: $ff
    rst $38                                       ; $6a8b: $ff
    rst $38                                       ; $6a8c: $ff
    rst $38                                       ; $6a8d: $ff
    rst $38                                       ; $6a8e: $ff
    rst $38                                       ; $6a8f: $ff
    rst $38                                       ; $6a90: $ff
    rst $38                                       ; $6a91: $ff
    rst $38                                       ; $6a92: $ff
    rst $38                                       ; $6a93: $ff
    rst $38                                       ; $6a94: $ff
    rst $38                                       ; $6a95: $ff
    rst $38                                       ; $6a96: $ff
    rst $38                                       ; $6a97: $ff
    rst $38                                       ; $6a98: $ff
    rst $38                                       ; $6a99: $ff
    rst $38                                       ; $6a9a: $ff
    rst $38                                       ; $6a9b: $ff
    rst $38                                       ; $6a9c: $ff
    rst $38                                       ; $6a9d: $ff
    rst $38                                       ; $6a9e: $ff
    rst $38                                       ; $6a9f: $ff
    rst $38                                       ; $6aa0: $ff
    rst $38                                       ; $6aa1: $ff
    rst $38                                       ; $6aa2: $ff
    rst $38                                       ; $6aa3: $ff
    rst $38                                       ; $6aa4: $ff
    rst $38                                       ; $6aa5: $ff
    rst $38                                       ; $6aa6: $ff
    rst $38                                       ; $6aa7: $ff
    rst $38                                       ; $6aa8: $ff
    rst $38                                       ; $6aa9: $ff
    rst $38                                       ; $6aaa: $ff
    rst $38                                       ; $6aab: $ff
    rst $38                                       ; $6aac: $ff
    rst $38                                       ; $6aad: $ff
    rst $38                                       ; $6aae: $ff
    rst $38                                       ; $6aaf: $ff
    rst $38                                       ; $6ab0: $ff
    rst $38                                       ; $6ab1: $ff
    rst $38                                       ; $6ab2: $ff
    rst $38                                       ; $6ab3: $ff
    rst $38                                       ; $6ab4: $ff
    rst $38                                       ; $6ab5: $ff
    rst $38                                       ; $6ab6: $ff
    rst $38                                       ; $6ab7: $ff
    rst $38                                       ; $6ab8: $ff
    rst $38                                       ; $6ab9: $ff
    rst $38                                       ; $6aba: $ff
    rst $38                                       ; $6abb: $ff
    rst $38                                       ; $6abc: $ff
    rst $38                                       ; $6abd: $ff
    rst $38                                       ; $6abe: $ff
    rst $38                                       ; $6abf: $ff
    rst $38                                       ; $6ac0: $ff
    rst $38                                       ; $6ac1: $ff
    rst $38                                       ; $6ac2: $ff
    rst $38                                       ; $6ac3: $ff
    rst $38                                       ; $6ac4: $ff
    rst $38                                       ; $6ac5: $ff
    rst $38                                       ; $6ac6: $ff
    rst $38                                       ; $6ac7: $ff
    rst $38                                       ; $6ac8: $ff
    rst $38                                       ; $6ac9: $ff
    rst $38                                       ; $6aca: $ff
    rst $38                                       ; $6acb: $ff
    rst $38                                       ; $6acc: $ff
    rst $38                                       ; $6acd: $ff
    rst $38                                       ; $6ace: $ff
    rst $38                                       ; $6acf: $ff
    rst $38                                       ; $6ad0: $ff
    rst $38                                       ; $6ad1: $ff
    rst $38                                       ; $6ad2: $ff
    rst $38                                       ; $6ad3: $ff
    rst $38                                       ; $6ad4: $ff
    rst $38                                       ; $6ad5: $ff
    rst $38                                       ; $6ad6: $ff
    rst $38                                       ; $6ad7: $ff
    rst $38                                       ; $6ad8: $ff
    rst $38                                       ; $6ad9: $ff
    rst $38                                       ; $6ada: $ff
    rst $38                                       ; $6adb: $ff
    rst $38                                       ; $6adc: $ff
    rst $38                                       ; $6add: $ff
    rst $38                                       ; $6ade: $ff
    rst $38                                       ; $6adf: $ff
    rst $38                                       ; $6ae0: $ff
    rst $38                                       ; $6ae1: $ff
    rst $38                                       ; $6ae2: $ff
    rst $38                                       ; $6ae3: $ff
    rst $38                                       ; $6ae4: $ff
    rst $38                                       ; $6ae5: $ff
    rst $38                                       ; $6ae6: $ff
    rst $38                                       ; $6ae7: $ff
    rst $38                                       ; $6ae8: $ff
    rst $38                                       ; $6ae9: $ff
    rst $38                                       ; $6aea: $ff
    rst $38                                       ; $6aeb: $ff
    rst $38                                       ; $6aec: $ff
    rst $38                                       ; $6aed: $ff
    rst $38                                       ; $6aee: $ff
    rst $38                                       ; $6aef: $ff
    rst $38                                       ; $6af0: $ff
    rst $38                                       ; $6af1: $ff
    rst $38                                       ; $6af2: $ff
    rst $38                                       ; $6af3: $ff
    rst $38                                       ; $6af4: $ff
    rst $38                                       ; $6af5: $ff
    rst $38                                       ; $6af6: $ff
    rst $38                                       ; $6af7: $ff
    rst $38                                       ; $6af8: $ff
    rst $38                                       ; $6af9: $ff
    rst $38                                       ; $6afa: $ff
    rst $38                                       ; $6afb: $ff
    rst $38                                       ; $6afc: $ff
    rst $38                                       ; $6afd: $ff
    rst $38                                       ; $6afe: $ff
    rst $38                                       ; $6aff: $ff
    rst $38                                       ; $6b00: $ff
    rst $38                                       ; $6b01: $ff
    rst $38                                       ; $6b02: $ff
    rst $38                                       ; $6b03: $ff
    rst $38                                       ; $6b04: $ff
    rst $38                                       ; $6b05: $ff
    rst $38                                       ; $6b06: $ff
    rst $38                                       ; $6b07: $ff
    rst $38                                       ; $6b08: $ff
    rst $38                                       ; $6b09: $ff
    rst $38                                       ; $6b0a: $ff
    rst $38                                       ; $6b0b: $ff
    rst $38                                       ; $6b0c: $ff
    rst $38                                       ; $6b0d: $ff
    rst $38                                       ; $6b0e: $ff
    rst $38                                       ; $6b0f: $ff
    rst $38                                       ; $6b10: $ff
    rst $38                                       ; $6b11: $ff
    rst $38                                       ; $6b12: $ff
    rst $38                                       ; $6b13: $ff
    rst $38                                       ; $6b14: $ff
    rst $38                                       ; $6b15: $ff
    rst $38                                       ; $6b16: $ff
    rst $38                                       ; $6b17: $ff
    rst $38                                       ; $6b18: $ff
    rst $38                                       ; $6b19: $ff
    rst $38                                       ; $6b1a: $ff
    rst $38                                       ; $6b1b: $ff
    rst $38                                       ; $6b1c: $ff
    rst $38                                       ; $6b1d: $ff
    rst $38                                       ; $6b1e: $ff
    rst $38                                       ; $6b1f: $ff
    rst $38                                       ; $6b20: $ff
    rst $38                                       ; $6b21: $ff
    rst $38                                       ; $6b22: $ff
    rst $38                                       ; $6b23: $ff
    rst $38                                       ; $6b24: $ff
    rst $38                                       ; $6b25: $ff
    rst $38                                       ; $6b26: $ff
    rst $38                                       ; $6b27: $ff
    rst $38                                       ; $6b28: $ff
    rst $38                                       ; $6b29: $ff
    rst $38                                       ; $6b2a: $ff
    rst $38                                       ; $6b2b: $ff
    rst $38                                       ; $6b2c: $ff
    rst $38                                       ; $6b2d: $ff
    rst $38                                       ; $6b2e: $ff
    rst $38                                       ; $6b2f: $ff
    rst $38                                       ; $6b30: $ff
    rst $38                                       ; $6b31: $ff
    rst $38                                       ; $6b32: $ff
    rst $38                                       ; $6b33: $ff
    rst $38                                       ; $6b34: $ff
    rst $38                                       ; $6b35: $ff
    rst $38                                       ; $6b36: $ff
    rst $38                                       ; $6b37: $ff
    rst $38                                       ; $6b38: $ff
    rst $38                                       ; $6b39: $ff
    rst $38                                       ; $6b3a: $ff
    rst $38                                       ; $6b3b: $ff
    rst $38                                       ; $6b3c: $ff
    rst $38                                       ; $6b3d: $ff
    rst $38                                       ; $6b3e: $ff
    rst $38                                       ; $6b3f: $ff
    rst $38                                       ; $6b40: $ff
    rst $38                                       ; $6b41: $ff
    rst $38                                       ; $6b42: $ff
    rst $38                                       ; $6b43: $ff
    rst $38                                       ; $6b44: $ff
    rst $38                                       ; $6b45: $ff
    rst $38                                       ; $6b46: $ff
    rst $38                                       ; $6b47: $ff
    rst $38                                       ; $6b48: $ff
    rst $38                                       ; $6b49: $ff
    rst $38                                       ; $6b4a: $ff
    rst $38                                       ; $6b4b: $ff
    rst $38                                       ; $6b4c: $ff
    rst $38                                       ; $6b4d: $ff
    rst $38                                       ; $6b4e: $ff
    rst $38                                       ; $6b4f: $ff
    rst $38                                       ; $6b50: $ff
    rst $38                                       ; $6b51: $ff
    rst $38                                       ; $6b52: $ff
    rst $38                                       ; $6b53: $ff
    rst $38                                       ; $6b54: $ff
    rst $38                                       ; $6b55: $ff
    rst $38                                       ; $6b56: $ff
    rst $38                                       ; $6b57: $ff
    rst $38                                       ; $6b58: $ff
    rst $38                                       ; $6b59: $ff
    rst $38                                       ; $6b5a: $ff
    rst $38                                       ; $6b5b: $ff
    rst $38                                       ; $6b5c: $ff
    rst $38                                       ; $6b5d: $ff
    rst $38                                       ; $6b5e: $ff
    rst $38                                       ; $6b5f: $ff
    rst $38                                       ; $6b60: $ff
    rst $38                                       ; $6b61: $ff
    rst $38                                       ; $6b62: $ff
    rst $38                                       ; $6b63: $ff
    rst $38                                       ; $6b64: $ff
    rst $38                                       ; $6b65: $ff
    rst $38                                       ; $6b66: $ff
    rst $38                                       ; $6b67: $ff
    rst $38                                       ; $6b68: $ff
    rst $38                                       ; $6b69: $ff
    rst $38                                       ; $6b6a: $ff
    rst $38                                       ; $6b6b: $ff
    rst $38                                       ; $6b6c: $ff
    rst $38                                       ; $6b6d: $ff
    rst $38                                       ; $6b6e: $ff
    rst $38                                       ; $6b6f: $ff
    rst $38                                       ; $6b70: $ff
    rst $38                                       ; $6b71: $ff
    rst $38                                       ; $6b72: $ff
    rst $38                                       ; $6b73: $ff
    rst $38                                       ; $6b74: $ff
    rst $38                                       ; $6b75: $ff
    rst $38                                       ; $6b76: $ff
    rst $38                                       ; $6b77: $ff
    rst $38                                       ; $6b78: $ff
    rst $38                                       ; $6b79: $ff
    rst $38                                       ; $6b7a: $ff
    rst $38                                       ; $6b7b: $ff
    rst $38                                       ; $6b7c: $ff
    rst $38                                       ; $6b7d: $ff
    rst $38                                       ; $6b7e: $ff
    rst $38                                       ; $6b7f: $ff
    rst $38                                       ; $6b80: $ff
    rst $38                                       ; $6b81: $ff
    rst $38                                       ; $6b82: $ff
    rst $38                                       ; $6b83: $ff
    rst $38                                       ; $6b84: $ff
    rst $38                                       ; $6b85: $ff
    rst $38                                       ; $6b86: $ff
    rst $38                                       ; $6b87: $ff
    rst $38                                       ; $6b88: $ff
    rst $38                                       ; $6b89: $ff
    rst $38                                       ; $6b8a: $ff
    rst $38                                       ; $6b8b: $ff
    rst $38                                       ; $6b8c: $ff
    rst $38                                       ; $6b8d: $ff
    rst $38                                       ; $6b8e: $ff
    rst $38                                       ; $6b8f: $ff
    rst $38                                       ; $6b90: $ff
    rst $38                                       ; $6b91: $ff
    rst $38                                       ; $6b92: $ff
    rst $38                                       ; $6b93: $ff
    rst $38                                       ; $6b94: $ff
    rst $38                                       ; $6b95: $ff
    rst $38                                       ; $6b96: $ff
    rst $38                                       ; $6b97: $ff
    rst $38                                       ; $6b98: $ff
    rst $38                                       ; $6b99: $ff
    rst $38                                       ; $6b9a: $ff
    rst $38                                       ; $6b9b: $ff
    rst $38                                       ; $6b9c: $ff
    rst $38                                       ; $6b9d: $ff
    rst $38                                       ; $6b9e: $ff
    rst $38                                       ; $6b9f: $ff
    rst $38                                       ; $6ba0: $ff
    rst $38                                       ; $6ba1: $ff
    rst $38                                       ; $6ba2: $ff
    rst $38                                       ; $6ba3: $ff
    rst $38                                       ; $6ba4: $ff
    rst $38                                       ; $6ba5: $ff
    rst $38                                       ; $6ba6: $ff
    rst $38                                       ; $6ba7: $ff
    rst $38                                       ; $6ba8: $ff
    rst $38                                       ; $6ba9: $ff
    rst $38                                       ; $6baa: $ff
    rst $38                                       ; $6bab: $ff
    rst $38                                       ; $6bac: $ff
    rst $38                                       ; $6bad: $ff
    rst $38                                       ; $6bae: $ff
    rst $38                                       ; $6baf: $ff
    rst $38                                       ; $6bb0: $ff
    rst $38                                       ; $6bb1: $ff
    rst $38                                       ; $6bb2: $ff
    rst $38                                       ; $6bb3: $ff
    rst $38                                       ; $6bb4: $ff
    rst $38                                       ; $6bb5: $ff
    rst $38                                       ; $6bb6: $ff
    rst $38                                       ; $6bb7: $ff
    rst $38                                       ; $6bb8: $ff
    rst $38                                       ; $6bb9: $ff
    rst $38                                       ; $6bba: $ff
    rst $38                                       ; $6bbb: $ff
    rst $38                                       ; $6bbc: $ff
    rst $38                                       ; $6bbd: $ff
    rst $38                                       ; $6bbe: $ff
    rst $38                                       ; $6bbf: $ff
    rst $38                                       ; $6bc0: $ff
    rst $38                                       ; $6bc1: $ff
    rst $38                                       ; $6bc2: $ff
    rst $38                                       ; $6bc3: $ff
    rst $38                                       ; $6bc4: $ff
    rst $38                                       ; $6bc5: $ff
    rst $38                                       ; $6bc6: $ff
    rst $38                                       ; $6bc7: $ff
    rst $38                                       ; $6bc8: $ff
    rst $38                                       ; $6bc9: $ff
    rst $38                                       ; $6bca: $ff
    rst $38                                       ; $6bcb: $ff
    rst $38                                       ; $6bcc: $ff
    rst $38                                       ; $6bcd: $ff
    rst $38                                       ; $6bce: $ff
    rst $38                                       ; $6bcf: $ff
    rst $38                                       ; $6bd0: $ff
    rst $38                                       ; $6bd1: $ff
    rst $38                                       ; $6bd2: $ff
    rst $38                                       ; $6bd3: $ff
    rst $38                                       ; $6bd4: $ff
    rst $38                                       ; $6bd5: $ff
    rst $38                                       ; $6bd6: $ff
    rst $38                                       ; $6bd7: $ff
    rst $38                                       ; $6bd8: $ff
    rst $38                                       ; $6bd9: $ff
    rst $38                                       ; $6bda: $ff
    rst $38                                       ; $6bdb: $ff
    rst $38                                       ; $6bdc: $ff
    rst $38                                       ; $6bdd: $ff
    rst $38                                       ; $6bde: $ff
    rst $38                                       ; $6bdf: $ff
    rst $38                                       ; $6be0: $ff
    rst $38                                       ; $6be1: $ff
    rst $38                                       ; $6be2: $ff
    rst $38                                       ; $6be3: $ff
    rst $38                                       ; $6be4: $ff
    rst $38                                       ; $6be5: $ff
    rst $38                                       ; $6be6: $ff
    rst $38                                       ; $6be7: $ff
    rst $38                                       ; $6be8: $ff
    rst $38                                       ; $6be9: $ff
    rst $38                                       ; $6bea: $ff
    rst $38                                       ; $6beb: $ff
    rst $38                                       ; $6bec: $ff
    rst $38                                       ; $6bed: $ff
    rst $38                                       ; $6bee: $ff
    rst $38                                       ; $6bef: $ff
    rst $38                                       ; $6bf0: $ff
    rst $38                                       ; $6bf1: $ff
    rst $38                                       ; $6bf2: $ff
    rst $38                                       ; $6bf3: $ff
    rst $38                                       ; $6bf4: $ff
    rst $38                                       ; $6bf5: $ff
    rst $38                                       ; $6bf6: $ff
    rst $38                                       ; $6bf7: $ff
    rst $38                                       ; $6bf8: $ff
    rst $38                                       ; $6bf9: $ff
    rst $38                                       ; $6bfa: $ff
    rst $38                                       ; $6bfb: $ff
    rst $38                                       ; $6bfc: $ff
    rst $38                                       ; $6bfd: $ff
    rst $38                                       ; $6bfe: $ff
    rst $38                                       ; $6bff: $ff
    rst $38                                       ; $6c00: $ff
    rst $38                                       ; $6c01: $ff
    rst $38                                       ; $6c02: $ff
    rst $38                                       ; $6c03: $ff
    rst $38                                       ; $6c04: $ff
    rst $38                                       ; $6c05: $ff
    rst $38                                       ; $6c06: $ff
    rst $38                                       ; $6c07: $ff
    rst $38                                       ; $6c08: $ff
    rst $38                                       ; $6c09: $ff
    rst $38                                       ; $6c0a: $ff
    rst $38                                       ; $6c0b: $ff
    rst $38                                       ; $6c0c: $ff
    rst $38                                       ; $6c0d: $ff
    rst $38                                       ; $6c0e: $ff
    rst $38                                       ; $6c0f: $ff
    rst $38                                       ; $6c10: $ff
    rst $38                                       ; $6c11: $ff
    rst $38                                       ; $6c12: $ff
    rst $38                                       ; $6c13: $ff
    rst $38                                       ; $6c14: $ff
    rst $38                                       ; $6c15: $ff
    rst $38                                       ; $6c16: $ff
    rst $38                                       ; $6c17: $ff
    rst $38                                       ; $6c18: $ff
    rst $38                                       ; $6c19: $ff
    rst $38                                       ; $6c1a: $ff
    rst $38                                       ; $6c1b: $ff
    rst $38                                       ; $6c1c: $ff
    rst $38                                       ; $6c1d: $ff
    rst $38                                       ; $6c1e: $ff
    rst $38                                       ; $6c1f: $ff
    rst $38                                       ; $6c20: $ff
    rst $38                                       ; $6c21: $ff
    rst $38                                       ; $6c22: $ff
    rst $38                                       ; $6c23: $ff
    rst $38                                       ; $6c24: $ff
    rst $38                                       ; $6c25: $ff
    rst $38                                       ; $6c26: $ff
    rst $38                                       ; $6c27: $ff
    rst $38                                       ; $6c28: $ff
    rst $38                                       ; $6c29: $ff
    rst $38                                       ; $6c2a: $ff
    rst $38                                       ; $6c2b: $ff
    rst $38                                       ; $6c2c: $ff
    rst $38                                       ; $6c2d: $ff
    rst $38                                       ; $6c2e: $ff
    rst $38                                       ; $6c2f: $ff
    rst $38                                       ; $6c30: $ff
    rst $38                                       ; $6c31: $ff
    rst $38                                       ; $6c32: $ff
    rst $38                                       ; $6c33: $ff
    rst $38                                       ; $6c34: $ff
    rst $38                                       ; $6c35: $ff
    rst $38                                       ; $6c36: $ff
    rst $38                                       ; $6c37: $ff
    rst $38                                       ; $6c38: $ff
    rst $38                                       ; $6c39: $ff
    rst $38                                       ; $6c3a: $ff
    rst $38                                       ; $6c3b: $ff
    rst $38                                       ; $6c3c: $ff
    rst $38                                       ; $6c3d: $ff
    rst $38                                       ; $6c3e: $ff
    rst $38                                       ; $6c3f: $ff
    rst $38                                       ; $6c40: $ff
    rst $38                                       ; $6c41: $ff
    rst $38                                       ; $6c42: $ff
    rst $38                                       ; $6c43: $ff
    rst $38                                       ; $6c44: $ff
    rst $38                                       ; $6c45: $ff
    rst $38                                       ; $6c46: $ff
    rst $38                                       ; $6c47: $ff
    rst $38                                       ; $6c48: $ff
    rst $38                                       ; $6c49: $ff
    rst $38                                       ; $6c4a: $ff
    rst $38                                       ; $6c4b: $ff
    rst $38                                       ; $6c4c: $ff
    rst $38                                       ; $6c4d: $ff
    rst $38                                       ; $6c4e: $ff
    rst $38                                       ; $6c4f: $ff
    rst $38                                       ; $6c50: $ff
    rst $38                                       ; $6c51: $ff
    rst $38                                       ; $6c52: $ff
    rst $38                                       ; $6c53: $ff
    rst $38                                       ; $6c54: $ff
    rst $38                                       ; $6c55: $ff
    rst $38                                       ; $6c56: $ff
    rst $38                                       ; $6c57: $ff
    rst $38                                       ; $6c58: $ff
    rst $38                                       ; $6c59: $ff
    rst $38                                       ; $6c5a: $ff
    rst $38                                       ; $6c5b: $ff
    rst $38                                       ; $6c5c: $ff
    rst $38                                       ; $6c5d: $ff
    rst $38                                       ; $6c5e: $ff
    rst $38                                       ; $6c5f: $ff
    rst $38                                       ; $6c60: $ff
    rst $38                                       ; $6c61: $ff
    rst $38                                       ; $6c62: $ff
    rst $38                                       ; $6c63: $ff
    rst $38                                       ; $6c64: $ff
    rst $38                                       ; $6c65: $ff
    rst $38                                       ; $6c66: $ff
    rst $38                                       ; $6c67: $ff
    rst $38                                       ; $6c68: $ff
    rst $38                                       ; $6c69: $ff
    rst $38                                       ; $6c6a: $ff
    rst $38                                       ; $6c6b: $ff
    rst $38                                       ; $6c6c: $ff
    rst $38                                       ; $6c6d: $ff
    rst $38                                       ; $6c6e: $ff
    rst $38                                       ; $6c6f: $ff
    rst $38                                       ; $6c70: $ff
    rst $38                                       ; $6c71: $ff
    rst $38                                       ; $6c72: $ff
    rst $38                                       ; $6c73: $ff
    rst $38                                       ; $6c74: $ff
    rst $38                                       ; $6c75: $ff
    rst $38                                       ; $6c76: $ff
    rst $38                                       ; $6c77: $ff
    rst $38                                       ; $6c78: $ff
    rst $38                                       ; $6c79: $ff
    rst $38                                       ; $6c7a: $ff
    rst $38                                       ; $6c7b: $ff
    rst $38                                       ; $6c7c: $ff
    rst $38                                       ; $6c7d: $ff
    rst $38                                       ; $6c7e: $ff
    rst $38                                       ; $6c7f: $ff
    rst $38                                       ; $6c80: $ff
    rst $38                                       ; $6c81: $ff
    rst $38                                       ; $6c82: $ff
    rst $38                                       ; $6c83: $ff
    rst $38                                       ; $6c84: $ff
    rst $38                                       ; $6c85: $ff
    rst $38                                       ; $6c86: $ff
    rst $38                                       ; $6c87: $ff
    rst $38                                       ; $6c88: $ff
    rst $38                                       ; $6c89: $ff
    rst $38                                       ; $6c8a: $ff
    rst $38                                       ; $6c8b: $ff
    rst $38                                       ; $6c8c: $ff
    rst $38                                       ; $6c8d: $ff
    rst $38                                       ; $6c8e: $ff
    rst $38                                       ; $6c8f: $ff
    rst $38                                       ; $6c90: $ff
    rst $38                                       ; $6c91: $ff
    rst $38                                       ; $6c92: $ff
    rst $38                                       ; $6c93: $ff
    rst $38                                       ; $6c94: $ff
    rst $38                                       ; $6c95: $ff
    rst $38                                       ; $6c96: $ff
    rst $38                                       ; $6c97: $ff
    rst $38                                       ; $6c98: $ff
    rst $38                                       ; $6c99: $ff
    rst $38                                       ; $6c9a: $ff
    rst $38                                       ; $6c9b: $ff
    rst $38                                       ; $6c9c: $ff
    rst $38                                       ; $6c9d: $ff
    rst $38                                       ; $6c9e: $ff
    rst $38                                       ; $6c9f: $ff
    rst $38                                       ; $6ca0: $ff
    rst $38                                       ; $6ca1: $ff
    rst $38                                       ; $6ca2: $ff
    rst $38                                       ; $6ca3: $ff
    rst $38                                       ; $6ca4: $ff
    rst $38                                       ; $6ca5: $ff
    rst $38                                       ; $6ca6: $ff
    rst $38                                       ; $6ca7: $ff
    rst $38                                       ; $6ca8: $ff
    rst $38                                       ; $6ca9: $ff
    rst $38                                       ; $6caa: $ff
    rst $38                                       ; $6cab: $ff
    rst $38                                       ; $6cac: $ff
    rst $38                                       ; $6cad: $ff
    rst $38                                       ; $6cae: $ff
    rst $38                                       ; $6caf: $ff
    rst $38                                       ; $6cb0: $ff
    rst $38                                       ; $6cb1: $ff
    rst $38                                       ; $6cb2: $ff
    rst $38                                       ; $6cb3: $ff
    rst $38                                       ; $6cb4: $ff
    rst $38                                       ; $6cb5: $ff
    rst $38                                       ; $6cb6: $ff
    rst $38                                       ; $6cb7: $ff
    rst $38                                       ; $6cb8: $ff
    rst $38                                       ; $6cb9: $ff
    rst $38                                       ; $6cba: $ff
    rst $38                                       ; $6cbb: $ff
    rst $38                                       ; $6cbc: $ff
    rst $38                                       ; $6cbd: $ff
    rst $38                                       ; $6cbe: $ff
    rst $38                                       ; $6cbf: $ff
    rst $38                                       ; $6cc0: $ff
    rst $38                                       ; $6cc1: $ff
    rst $38                                       ; $6cc2: $ff
    rst $38                                       ; $6cc3: $ff
    rst $38                                       ; $6cc4: $ff
    rst $38                                       ; $6cc5: $ff
    rst $38                                       ; $6cc6: $ff
    rst $38                                       ; $6cc7: $ff
    rst $38                                       ; $6cc8: $ff
    rst $38                                       ; $6cc9: $ff
    rst $38                                       ; $6cca: $ff
    rst $38                                       ; $6ccb: $ff
    rst $38                                       ; $6ccc: $ff
    rst $38                                       ; $6ccd: $ff
    rst $38                                       ; $6cce: $ff
    rst $38                                       ; $6ccf: $ff
    rst $38                                       ; $6cd0: $ff
    rst $38                                       ; $6cd1: $ff
    rst $38                                       ; $6cd2: $ff
    rst $38                                       ; $6cd3: $ff
    rst $38                                       ; $6cd4: $ff
    rst $38                                       ; $6cd5: $ff
    rst $38                                       ; $6cd6: $ff
    rst $38                                       ; $6cd7: $ff
    rst $38                                       ; $6cd8: $ff
    rst $38                                       ; $6cd9: $ff
    rst $38                                       ; $6cda: $ff
    rst $38                                       ; $6cdb: $ff
    rst $38                                       ; $6cdc: $ff
    rst $38                                       ; $6cdd: $ff
    rst $38                                       ; $6cde: $ff
    rst $38                                       ; $6cdf: $ff
    rst $38                                       ; $6ce0: $ff
    rst $38                                       ; $6ce1: $ff
    rst $38                                       ; $6ce2: $ff
    rst $38                                       ; $6ce3: $ff
    rst $38                                       ; $6ce4: $ff
    rst $38                                       ; $6ce5: $ff
    rst $38                                       ; $6ce6: $ff
    rst $38                                       ; $6ce7: $ff
    rst $38                                       ; $6ce8: $ff
    rst $38                                       ; $6ce9: $ff
    rst $38                                       ; $6cea: $ff
    rst $38                                       ; $6ceb: $ff
    rst $38                                       ; $6cec: $ff
    rst $38                                       ; $6ced: $ff
    rst $38                                       ; $6cee: $ff
    rst $38                                       ; $6cef: $ff
    rst $38                                       ; $6cf0: $ff
    rst $38                                       ; $6cf1: $ff
    rst $38                                       ; $6cf2: $ff
    rst $38                                       ; $6cf3: $ff
    rst $38                                       ; $6cf4: $ff
    rst $38                                       ; $6cf5: $ff
    rst $38                                       ; $6cf6: $ff
    rst $38                                       ; $6cf7: $ff
    rst $38                                       ; $6cf8: $ff
    rst $38                                       ; $6cf9: $ff
    rst $38                                       ; $6cfa: $ff
    rst $38                                       ; $6cfb: $ff
    rst $38                                       ; $6cfc: $ff
    rst $38                                       ; $6cfd: $ff
    rst $38                                       ; $6cfe: $ff
    rst $38                                       ; $6cff: $ff
    rst $38                                       ; $6d00: $ff
    rst $38                                       ; $6d01: $ff
    rst $38                                       ; $6d02: $ff
    rst $38                                       ; $6d03: $ff
    rst $38                                       ; $6d04: $ff
    rst $38                                       ; $6d05: $ff
    rst $38                                       ; $6d06: $ff
    rst $38                                       ; $6d07: $ff
    rst $38                                       ; $6d08: $ff
    rst $38                                       ; $6d09: $ff
    rst $38                                       ; $6d0a: $ff
    rst $38                                       ; $6d0b: $ff
    rst $38                                       ; $6d0c: $ff
    rst $38                                       ; $6d0d: $ff
    rst $38                                       ; $6d0e: $ff
    rst $38                                       ; $6d0f: $ff
    rst $38                                       ; $6d10: $ff
    rst $38                                       ; $6d11: $ff
    rst $38                                       ; $6d12: $ff
    rst $38                                       ; $6d13: $ff
    rst $38                                       ; $6d14: $ff
    rst $38                                       ; $6d15: $ff
    rst $38                                       ; $6d16: $ff
    rst $38                                       ; $6d17: $ff
    rst $38                                       ; $6d18: $ff
    rst $38                                       ; $6d19: $ff
    rst $38                                       ; $6d1a: $ff
    rst $38                                       ; $6d1b: $ff
    rst $38                                       ; $6d1c: $ff
    rst $38                                       ; $6d1d: $ff
    rst $38                                       ; $6d1e: $ff
    rst $38                                       ; $6d1f: $ff
    rst $38                                       ; $6d20: $ff
    rst $38                                       ; $6d21: $ff
    rst $38                                       ; $6d22: $ff
    rst $38                                       ; $6d23: $ff
    rst $38                                       ; $6d24: $ff
    rst $38                                       ; $6d25: $ff
    rst $38                                       ; $6d26: $ff
    rst $38                                       ; $6d27: $ff
    rst $38                                       ; $6d28: $ff
    rst $38                                       ; $6d29: $ff
    rst $38                                       ; $6d2a: $ff
    rst $38                                       ; $6d2b: $ff
    rst $38                                       ; $6d2c: $ff
    rst $38                                       ; $6d2d: $ff
    rst $38                                       ; $6d2e: $ff
    rst $38                                       ; $6d2f: $ff
    rst $38                                       ; $6d30: $ff
    rst $38                                       ; $6d31: $ff
    rst $38                                       ; $6d32: $ff
    rst $38                                       ; $6d33: $ff
    rst $38                                       ; $6d34: $ff
    rst $38                                       ; $6d35: $ff
    rst $38                                       ; $6d36: $ff
    rst $38                                       ; $6d37: $ff
    rst $38                                       ; $6d38: $ff
    rst $38                                       ; $6d39: $ff
    rst $38                                       ; $6d3a: $ff
    rst $38                                       ; $6d3b: $ff
    rst $38                                       ; $6d3c: $ff
    rst $38                                       ; $6d3d: $ff
    rst $38                                       ; $6d3e: $ff
    rst $38                                       ; $6d3f: $ff
    rst $38                                       ; $6d40: $ff
    rst $38                                       ; $6d41: $ff
    rst $38                                       ; $6d42: $ff
    rst $38                                       ; $6d43: $ff
    rst $38                                       ; $6d44: $ff
    rst $38                                       ; $6d45: $ff
    rst $38                                       ; $6d46: $ff
    rst $38                                       ; $6d47: $ff
    rst $38                                       ; $6d48: $ff
    rst $38                                       ; $6d49: $ff
    rst $38                                       ; $6d4a: $ff
    rst $38                                       ; $6d4b: $ff
    rst $38                                       ; $6d4c: $ff
    rst $38                                       ; $6d4d: $ff
    rst $38                                       ; $6d4e: $ff
    rst $38                                       ; $6d4f: $ff
    rst $38                                       ; $6d50: $ff
    rst $38                                       ; $6d51: $ff
    rst $38                                       ; $6d52: $ff
    rst $38                                       ; $6d53: $ff
    rst $38                                       ; $6d54: $ff
    rst $38                                       ; $6d55: $ff
    rst $38                                       ; $6d56: $ff
    rst $38                                       ; $6d57: $ff
    rst $38                                       ; $6d58: $ff
    rst $38                                       ; $6d59: $ff
    rst $38                                       ; $6d5a: $ff
    rst $38                                       ; $6d5b: $ff
    rst $38                                       ; $6d5c: $ff
    rst $38                                       ; $6d5d: $ff
    rst $38                                       ; $6d5e: $ff
    rst $38                                       ; $6d5f: $ff
    rst $38                                       ; $6d60: $ff
    rst $38                                       ; $6d61: $ff
    rst $38                                       ; $6d62: $ff
    rst $38                                       ; $6d63: $ff
    rst $38                                       ; $6d64: $ff
    rst $38                                       ; $6d65: $ff
    rst $38                                       ; $6d66: $ff
    rst $38                                       ; $6d67: $ff
    rst $38                                       ; $6d68: $ff
    rst $38                                       ; $6d69: $ff
    rst $38                                       ; $6d6a: $ff
    rst $38                                       ; $6d6b: $ff
    rst $38                                       ; $6d6c: $ff
    rst $38                                       ; $6d6d: $ff
    rst $38                                       ; $6d6e: $ff
    rst $38                                       ; $6d6f: $ff
    rst $38                                       ; $6d70: $ff
    rst $38                                       ; $6d71: $ff
    rst $38                                       ; $6d72: $ff
    rst $38                                       ; $6d73: $ff
    rst $38                                       ; $6d74: $ff
    rst $38                                       ; $6d75: $ff
    rst $38                                       ; $6d76: $ff
    rst $38                                       ; $6d77: $ff
    rst $38                                       ; $6d78: $ff
    rst $38                                       ; $6d79: $ff
    rst $38                                       ; $6d7a: $ff
    rst $38                                       ; $6d7b: $ff
    rst $38                                       ; $6d7c: $ff
    rst $38                                       ; $6d7d: $ff
    rst $38                                       ; $6d7e: $ff
    rst $38                                       ; $6d7f: $ff
    rst $38                                       ; $6d80: $ff
    rst $38                                       ; $6d81: $ff
    rst $38                                       ; $6d82: $ff
    rst $38                                       ; $6d83: $ff
    rst $38                                       ; $6d84: $ff
    rst $38                                       ; $6d85: $ff
    rst $38                                       ; $6d86: $ff
    rst $38                                       ; $6d87: $ff
    rst $38                                       ; $6d88: $ff
    rst $38                                       ; $6d89: $ff
    rst $38                                       ; $6d8a: $ff
    rst $38                                       ; $6d8b: $ff
    rst $38                                       ; $6d8c: $ff
    rst $38                                       ; $6d8d: $ff
    rst $38                                       ; $6d8e: $ff
    rst $38                                       ; $6d8f: $ff
    rst $38                                       ; $6d90: $ff
    rst $38                                       ; $6d91: $ff
    rst $38                                       ; $6d92: $ff
    rst $38                                       ; $6d93: $ff
    rst $38                                       ; $6d94: $ff
    rst $38                                       ; $6d95: $ff
    rst $38                                       ; $6d96: $ff
    rst $38                                       ; $6d97: $ff
    rst $38                                       ; $6d98: $ff
    rst $38                                       ; $6d99: $ff
    rst $38                                       ; $6d9a: $ff
    rst $38                                       ; $6d9b: $ff
    rst $38                                       ; $6d9c: $ff
    rst $38                                       ; $6d9d: $ff
    rst $38                                       ; $6d9e: $ff
    rst $38                                       ; $6d9f: $ff
    rst $38                                       ; $6da0: $ff
    rst $38                                       ; $6da1: $ff
    rst $38                                       ; $6da2: $ff
    rst $38                                       ; $6da3: $ff
    rst $38                                       ; $6da4: $ff
    rst $38                                       ; $6da5: $ff
    rst $38                                       ; $6da6: $ff
    rst $38                                       ; $6da7: $ff
    rst $38                                       ; $6da8: $ff
    rst $38                                       ; $6da9: $ff
    rst $38                                       ; $6daa: $ff
    rst $38                                       ; $6dab: $ff
    rst $38                                       ; $6dac: $ff
    rst $38                                       ; $6dad: $ff
    rst $38                                       ; $6dae: $ff
    rst $38                                       ; $6daf: $ff
    rst $38                                       ; $6db0: $ff
    rst $38                                       ; $6db1: $ff
    rst $38                                       ; $6db2: $ff
    rst $38                                       ; $6db3: $ff
    rst $38                                       ; $6db4: $ff
    rst $38                                       ; $6db5: $ff
    rst $38                                       ; $6db6: $ff
    rst $38                                       ; $6db7: $ff
    rst $38                                       ; $6db8: $ff
    rst $38                                       ; $6db9: $ff
    rst $38                                       ; $6dba: $ff
    rst $38                                       ; $6dbb: $ff
    rst $38                                       ; $6dbc: $ff
    rst $38                                       ; $6dbd: $ff
    rst $38                                       ; $6dbe: $ff
    rst $38                                       ; $6dbf: $ff
    rst $38                                       ; $6dc0: $ff
    rst $38                                       ; $6dc1: $ff
    rst $38                                       ; $6dc2: $ff
    rst $38                                       ; $6dc3: $ff
    rst $38                                       ; $6dc4: $ff
    rst $38                                       ; $6dc5: $ff
    rst $38                                       ; $6dc6: $ff
    rst $38                                       ; $6dc7: $ff
    rst $38                                       ; $6dc8: $ff
    rst $38                                       ; $6dc9: $ff
    rst $38                                       ; $6dca: $ff
    rst $38                                       ; $6dcb: $ff
    rst $38                                       ; $6dcc: $ff
    rst $38                                       ; $6dcd: $ff
    rst $38                                       ; $6dce: $ff
    rst $38                                       ; $6dcf: $ff
    rst $38                                       ; $6dd0: $ff
    rst $38                                       ; $6dd1: $ff
    rst $38                                       ; $6dd2: $ff
    rst $38                                       ; $6dd3: $ff
    rst $38                                       ; $6dd4: $ff
    rst $38                                       ; $6dd5: $ff
    rst $38                                       ; $6dd6: $ff
    rst $38                                       ; $6dd7: $ff
    rst $38                                       ; $6dd8: $ff
    rst $38                                       ; $6dd9: $ff
    rst $38                                       ; $6dda: $ff
    rst $38                                       ; $6ddb: $ff
    rst $38                                       ; $6ddc: $ff
    rst $38                                       ; $6ddd: $ff
    rst $38                                       ; $6dde: $ff
    rst $38                                       ; $6ddf: $ff
    rst $38                                       ; $6de0: $ff
    rst $38                                       ; $6de1: $ff
    rst $38                                       ; $6de2: $ff
    rst $38                                       ; $6de3: $ff
    rst $38                                       ; $6de4: $ff
    rst $38                                       ; $6de5: $ff
    rst $38                                       ; $6de6: $ff
    rst $38                                       ; $6de7: $ff
    rst $38                                       ; $6de8: $ff
    rst $38                                       ; $6de9: $ff
    rst $38                                       ; $6dea: $ff
    rst $38                                       ; $6deb: $ff
    rst $38                                       ; $6dec: $ff
    rst $38                                       ; $6ded: $ff
    rst $38                                       ; $6dee: $ff
    rst $38                                       ; $6def: $ff
    rst $38                                       ; $6df0: $ff
    rst $38                                       ; $6df1: $ff
    rst $38                                       ; $6df2: $ff
    rst $38                                       ; $6df3: $ff
    rst $38                                       ; $6df4: $ff
    rst $38                                       ; $6df5: $ff
    rst $38                                       ; $6df6: $ff
    rst $38                                       ; $6df7: $ff
    rst $38                                       ; $6df8: $ff
    rst $38                                       ; $6df9: $ff
    rst $38                                       ; $6dfa: $ff
    rst $38                                       ; $6dfb: $ff
    rst $38                                       ; $6dfc: $ff
    rst $38                                       ; $6dfd: $ff
    rst $38                                       ; $6dfe: $ff
    rst $38                                       ; $6dff: $ff
    rst $38                                       ; $6e00: $ff
    rst $38                                       ; $6e01: $ff
    rst $38                                       ; $6e02: $ff
    rst $38                                       ; $6e03: $ff
    rst $38                                       ; $6e04: $ff
    rst $38                                       ; $6e05: $ff
    rst $38                                       ; $6e06: $ff
    rst $38                                       ; $6e07: $ff
    rst $38                                       ; $6e08: $ff
    rst $38                                       ; $6e09: $ff
    rst $38                                       ; $6e0a: $ff
    rst $38                                       ; $6e0b: $ff
    rst $38                                       ; $6e0c: $ff
    rst $38                                       ; $6e0d: $ff
    rst $38                                       ; $6e0e: $ff
    rst $38                                       ; $6e0f: $ff
    rst $38                                       ; $6e10: $ff
    rst $38                                       ; $6e11: $ff
    rst $38                                       ; $6e12: $ff
    rst $38                                       ; $6e13: $ff
    rst $38                                       ; $6e14: $ff
    rst $38                                       ; $6e15: $ff
    rst $38                                       ; $6e16: $ff
    rst $38                                       ; $6e17: $ff
    rst $38                                       ; $6e18: $ff
    rst $38                                       ; $6e19: $ff
    rst $38                                       ; $6e1a: $ff
    rst $38                                       ; $6e1b: $ff
    rst $38                                       ; $6e1c: $ff
    rst $38                                       ; $6e1d: $ff
    rst $38                                       ; $6e1e: $ff
    rst $38                                       ; $6e1f: $ff
    rst $38                                       ; $6e20: $ff
    rst $38                                       ; $6e21: $ff
    rst $38                                       ; $6e22: $ff
    rst $38                                       ; $6e23: $ff
    rst $38                                       ; $6e24: $ff
    rst $38                                       ; $6e25: $ff
    rst $38                                       ; $6e26: $ff
    rst $38                                       ; $6e27: $ff
    rst $38                                       ; $6e28: $ff
    rst $38                                       ; $6e29: $ff
    rst $38                                       ; $6e2a: $ff
    rst $38                                       ; $6e2b: $ff
    rst $38                                       ; $6e2c: $ff
    rst $38                                       ; $6e2d: $ff
    rst $38                                       ; $6e2e: $ff
    rst $38                                       ; $6e2f: $ff
    rst $38                                       ; $6e30: $ff
    rst $38                                       ; $6e31: $ff
    rst $38                                       ; $6e32: $ff
    rst $38                                       ; $6e33: $ff
    rst $38                                       ; $6e34: $ff
    rst $38                                       ; $6e35: $ff
    rst $38                                       ; $6e36: $ff
    rst $38                                       ; $6e37: $ff
    rst $38                                       ; $6e38: $ff
    rst $38                                       ; $6e39: $ff
    rst $38                                       ; $6e3a: $ff
    rst $38                                       ; $6e3b: $ff
    rst $38                                       ; $6e3c: $ff
    rst $38                                       ; $6e3d: $ff
    rst $38                                       ; $6e3e: $ff
    rst $38                                       ; $6e3f: $ff
    rst $38                                       ; $6e40: $ff
    rst $38                                       ; $6e41: $ff
    rst $38                                       ; $6e42: $ff
    rst $38                                       ; $6e43: $ff
    rst $38                                       ; $6e44: $ff
    rst $38                                       ; $6e45: $ff
    rst $38                                       ; $6e46: $ff
    rst $38                                       ; $6e47: $ff
    rst $38                                       ; $6e48: $ff
    rst $38                                       ; $6e49: $ff
    rst $38                                       ; $6e4a: $ff
    rst $38                                       ; $6e4b: $ff
    rst $38                                       ; $6e4c: $ff
    rst $38                                       ; $6e4d: $ff
    rst $38                                       ; $6e4e: $ff
    rst $38                                       ; $6e4f: $ff
    rst $38                                       ; $6e50: $ff
    rst $38                                       ; $6e51: $ff
    rst $38                                       ; $6e52: $ff
    rst $38                                       ; $6e53: $ff
    rst $38                                       ; $6e54: $ff
    rst $38                                       ; $6e55: $ff
    rst $38                                       ; $6e56: $ff
    rst $38                                       ; $6e57: $ff
    rst $38                                       ; $6e58: $ff
    rst $38                                       ; $6e59: $ff
    rst $38                                       ; $6e5a: $ff
    rst $38                                       ; $6e5b: $ff
    rst $38                                       ; $6e5c: $ff
    rst $38                                       ; $6e5d: $ff
    rst $38                                       ; $6e5e: $ff
    rst $38                                       ; $6e5f: $ff
    rst $38                                       ; $6e60: $ff
    rst $38                                       ; $6e61: $ff
    rst $38                                       ; $6e62: $ff
    rst $38                                       ; $6e63: $ff
    rst $38                                       ; $6e64: $ff
    rst $38                                       ; $6e65: $ff
    rst $38                                       ; $6e66: $ff
    rst $38                                       ; $6e67: $ff
    rst $38                                       ; $6e68: $ff
    rst $38                                       ; $6e69: $ff
    rst $38                                       ; $6e6a: $ff
    rst $38                                       ; $6e6b: $ff
    rst $38                                       ; $6e6c: $ff
    rst $38                                       ; $6e6d: $ff
    rst $38                                       ; $6e6e: $ff
    rst $38                                       ; $6e6f: $ff
    rst $38                                       ; $6e70: $ff
    rst $38                                       ; $6e71: $ff
    rst $38                                       ; $6e72: $ff
    rst $38                                       ; $6e73: $ff
    rst $38                                       ; $6e74: $ff
    rst $38                                       ; $6e75: $ff
    rst $38                                       ; $6e76: $ff
    rst $38                                       ; $6e77: $ff
    rst $38                                       ; $6e78: $ff
    rst $38                                       ; $6e79: $ff
    rst $38                                       ; $6e7a: $ff
    rst $38                                       ; $6e7b: $ff
    rst $38                                       ; $6e7c: $ff
    rst $38                                       ; $6e7d: $ff
    rst $38                                       ; $6e7e: $ff
    rst $38                                       ; $6e7f: $ff
    rst $38                                       ; $6e80: $ff
    rst $38                                       ; $6e81: $ff
    rst $38                                       ; $6e82: $ff
    rst $38                                       ; $6e83: $ff
    rst $38                                       ; $6e84: $ff
    rst $38                                       ; $6e85: $ff
    rst $38                                       ; $6e86: $ff
    rst $38                                       ; $6e87: $ff
    rst $38                                       ; $6e88: $ff
    rst $38                                       ; $6e89: $ff
    rst $38                                       ; $6e8a: $ff
    rst $38                                       ; $6e8b: $ff
    rst $38                                       ; $6e8c: $ff
    rst $38                                       ; $6e8d: $ff
    rst $38                                       ; $6e8e: $ff
    rst $38                                       ; $6e8f: $ff
    rst $38                                       ; $6e90: $ff
    rst $38                                       ; $6e91: $ff
    rst $38                                       ; $6e92: $ff
    rst $38                                       ; $6e93: $ff
    rst $38                                       ; $6e94: $ff
    rst $38                                       ; $6e95: $ff
    rst $38                                       ; $6e96: $ff
    rst $38                                       ; $6e97: $ff
    rst $38                                       ; $6e98: $ff
    rst $38                                       ; $6e99: $ff
    rst $38                                       ; $6e9a: $ff
    rst $38                                       ; $6e9b: $ff
    rst $38                                       ; $6e9c: $ff
    rst $38                                       ; $6e9d: $ff
    rst $38                                       ; $6e9e: $ff
    rst $38                                       ; $6e9f: $ff
    rst $38                                       ; $6ea0: $ff
    rst $38                                       ; $6ea1: $ff
    rst $38                                       ; $6ea2: $ff
    rst $38                                       ; $6ea3: $ff
    rst $38                                       ; $6ea4: $ff
    rst $38                                       ; $6ea5: $ff
    rst $38                                       ; $6ea6: $ff
    rst $38                                       ; $6ea7: $ff
    rst $38                                       ; $6ea8: $ff
    rst $38                                       ; $6ea9: $ff
    rst $38                                       ; $6eaa: $ff
    rst $38                                       ; $6eab: $ff
    rst $38                                       ; $6eac: $ff
    rst $38                                       ; $6ead: $ff
    rst $38                                       ; $6eae: $ff
    rst $38                                       ; $6eaf: $ff
    rst $38                                       ; $6eb0: $ff
    rst $38                                       ; $6eb1: $ff
    rst $38                                       ; $6eb2: $ff
    rst $38                                       ; $6eb3: $ff
    rst $38                                       ; $6eb4: $ff
    rst $38                                       ; $6eb5: $ff
    rst $38                                       ; $6eb6: $ff
    rst $38                                       ; $6eb7: $ff
    rst $38                                       ; $6eb8: $ff
    rst $38                                       ; $6eb9: $ff
    rst $38                                       ; $6eba: $ff
    rst $38                                       ; $6ebb: $ff
    rst $38                                       ; $6ebc: $ff
    rst $38                                       ; $6ebd: $ff
    rst $38                                       ; $6ebe: $ff
    rst $38                                       ; $6ebf: $ff
    rst $38                                       ; $6ec0: $ff
    rst $38                                       ; $6ec1: $ff
    rst $38                                       ; $6ec2: $ff
    rst $38                                       ; $6ec3: $ff
    rst $38                                       ; $6ec4: $ff
    rst $38                                       ; $6ec5: $ff
    rst $38                                       ; $6ec6: $ff
    rst $38                                       ; $6ec7: $ff
    rst $38                                       ; $6ec8: $ff
    rst $38                                       ; $6ec9: $ff
    rst $38                                       ; $6eca: $ff
    rst $38                                       ; $6ecb: $ff
    rst $38                                       ; $6ecc: $ff
    rst $38                                       ; $6ecd: $ff
    rst $38                                       ; $6ece: $ff
    rst $38                                       ; $6ecf: $ff
    rst $38                                       ; $6ed0: $ff
    rst $38                                       ; $6ed1: $ff
    rst $38                                       ; $6ed2: $ff
    rst $38                                       ; $6ed3: $ff
    rst $38                                       ; $6ed4: $ff
    rst $38                                       ; $6ed5: $ff
    rst $38                                       ; $6ed6: $ff
    rst $38                                       ; $6ed7: $ff
    rst $38                                       ; $6ed8: $ff
    rst $38                                       ; $6ed9: $ff
    rst $38                                       ; $6eda: $ff
    rst $38                                       ; $6edb: $ff
    rst $38                                       ; $6edc: $ff
    rst $38                                       ; $6edd: $ff
    rst $38                                       ; $6ede: $ff
    rst $38                                       ; $6edf: $ff
    rst $38                                       ; $6ee0: $ff
    rst $38                                       ; $6ee1: $ff
    rst $38                                       ; $6ee2: $ff
    rst $38                                       ; $6ee3: $ff
    rst $38                                       ; $6ee4: $ff
    rst $38                                       ; $6ee5: $ff
    rst $38                                       ; $6ee6: $ff
    rst $38                                       ; $6ee7: $ff
    rst $38                                       ; $6ee8: $ff
    rst $38                                       ; $6ee9: $ff
    rst $38                                       ; $6eea: $ff
    rst $38                                       ; $6eeb: $ff
    rst $38                                       ; $6eec: $ff
    rst $38                                       ; $6eed: $ff
    rst $38                                       ; $6eee: $ff
    rst $38                                       ; $6eef: $ff
    rst $38                                       ; $6ef0: $ff
    rst $38                                       ; $6ef1: $ff
    rst $38                                       ; $6ef2: $ff
    rst $38                                       ; $6ef3: $ff
    rst $38                                       ; $6ef4: $ff
    rst $38                                       ; $6ef5: $ff
    rst $38                                       ; $6ef6: $ff
    rst $38                                       ; $6ef7: $ff
    rst $38                                       ; $6ef8: $ff
    rst $38                                       ; $6ef9: $ff
    rst $38                                       ; $6efa: $ff
    rst $38                                       ; $6efb: $ff
    rst $38                                       ; $6efc: $ff
    rst $38                                       ; $6efd: $ff
    rst $38                                       ; $6efe: $ff
    rst $38                                       ; $6eff: $ff
    rst $38                                       ; $6f00: $ff
    rst $38                                       ; $6f01: $ff
    rst $38                                       ; $6f02: $ff
    rst $38                                       ; $6f03: $ff
    rst $38                                       ; $6f04: $ff
    rst $38                                       ; $6f05: $ff
    rst $38                                       ; $6f06: $ff
    rst $38                                       ; $6f07: $ff
    rst $38                                       ; $6f08: $ff
    rst $38                                       ; $6f09: $ff
    rst $38                                       ; $6f0a: $ff
    rst $38                                       ; $6f0b: $ff
    rst $38                                       ; $6f0c: $ff
    rst $38                                       ; $6f0d: $ff
    rst $38                                       ; $6f0e: $ff
    rst $38                                       ; $6f0f: $ff
    rst $38                                       ; $6f10: $ff
    rst $38                                       ; $6f11: $ff
    rst $38                                       ; $6f12: $ff
    rst $38                                       ; $6f13: $ff
    rst $38                                       ; $6f14: $ff
    rst $38                                       ; $6f15: $ff
    rst $38                                       ; $6f16: $ff
    rst $38                                       ; $6f17: $ff
    rst $38                                       ; $6f18: $ff
    rst $38                                       ; $6f19: $ff
    rst $38                                       ; $6f1a: $ff
    rst $38                                       ; $6f1b: $ff
    rst $38                                       ; $6f1c: $ff
    rst $38                                       ; $6f1d: $ff
    rst $38                                       ; $6f1e: $ff
    rst $38                                       ; $6f1f: $ff
    rst $38                                       ; $6f20: $ff
    rst $38                                       ; $6f21: $ff
    rst $38                                       ; $6f22: $ff
    rst $38                                       ; $6f23: $ff
    rst $38                                       ; $6f24: $ff
    rst $38                                       ; $6f25: $ff
    rst $38                                       ; $6f26: $ff
    rst $38                                       ; $6f27: $ff
    rst $38                                       ; $6f28: $ff
    rst $38                                       ; $6f29: $ff
    rst $38                                       ; $6f2a: $ff
    rst $38                                       ; $6f2b: $ff
    rst $38                                       ; $6f2c: $ff
    rst $38                                       ; $6f2d: $ff
    rst $38                                       ; $6f2e: $ff
    rst $38                                       ; $6f2f: $ff
    rst $38                                       ; $6f30: $ff
    rst $38                                       ; $6f31: $ff
    rst $38                                       ; $6f32: $ff
    rst $38                                       ; $6f33: $ff
    rst $38                                       ; $6f34: $ff
    rst $38                                       ; $6f35: $ff
    rst $38                                       ; $6f36: $ff
    rst $38                                       ; $6f37: $ff
    rst $38                                       ; $6f38: $ff
    rst $38                                       ; $6f39: $ff
    rst $38                                       ; $6f3a: $ff
    rst $38                                       ; $6f3b: $ff
    rst $38                                       ; $6f3c: $ff
    rst $38                                       ; $6f3d: $ff
    rst $38                                       ; $6f3e: $ff
    rst $38                                       ; $6f3f: $ff
    rst $38                                       ; $6f40: $ff
    rst $38                                       ; $6f41: $ff
    rst $38                                       ; $6f42: $ff
    rst $38                                       ; $6f43: $ff
    rst $38                                       ; $6f44: $ff
    rst $38                                       ; $6f45: $ff
    rst $38                                       ; $6f46: $ff
    rst $38                                       ; $6f47: $ff
    rst $38                                       ; $6f48: $ff
    rst $38                                       ; $6f49: $ff
    rst $38                                       ; $6f4a: $ff
    rst $38                                       ; $6f4b: $ff
    rst $38                                       ; $6f4c: $ff
    rst $38                                       ; $6f4d: $ff
    rst $38                                       ; $6f4e: $ff
    rst $38                                       ; $6f4f: $ff
    rst $38                                       ; $6f50: $ff
    rst $38                                       ; $6f51: $ff
    rst $38                                       ; $6f52: $ff
    rst $38                                       ; $6f53: $ff
    rst $38                                       ; $6f54: $ff
    rst $38                                       ; $6f55: $ff
    rst $38                                       ; $6f56: $ff
    rst $38                                       ; $6f57: $ff
    rst $38                                       ; $6f58: $ff
    rst $38                                       ; $6f59: $ff
    rst $38                                       ; $6f5a: $ff
    rst $38                                       ; $6f5b: $ff
    rst $38                                       ; $6f5c: $ff
    rst $38                                       ; $6f5d: $ff
    rst $38                                       ; $6f5e: $ff
    rst $38                                       ; $6f5f: $ff
    rst $38                                       ; $6f60: $ff
    rst $38                                       ; $6f61: $ff
    rst $38                                       ; $6f62: $ff
    rst $38                                       ; $6f63: $ff
    rst $38                                       ; $6f64: $ff
    rst $38                                       ; $6f65: $ff
    rst $38                                       ; $6f66: $ff
    rst $38                                       ; $6f67: $ff
    rst $38                                       ; $6f68: $ff
    rst $38                                       ; $6f69: $ff
    rst $38                                       ; $6f6a: $ff
    rst $38                                       ; $6f6b: $ff
    rst $38                                       ; $6f6c: $ff
    rst $38                                       ; $6f6d: $ff
    rst $38                                       ; $6f6e: $ff
    rst $38                                       ; $6f6f: $ff
    rst $38                                       ; $6f70: $ff
    rst $38                                       ; $6f71: $ff
    rst $38                                       ; $6f72: $ff
    rst $38                                       ; $6f73: $ff
    rst $38                                       ; $6f74: $ff
    rst $38                                       ; $6f75: $ff
    rst $38                                       ; $6f76: $ff
    rst $38                                       ; $6f77: $ff
    rst $38                                       ; $6f78: $ff
    rst $38                                       ; $6f79: $ff
    rst $38                                       ; $6f7a: $ff
    rst $38                                       ; $6f7b: $ff
    rst $38                                       ; $6f7c: $ff
    rst $38                                       ; $6f7d: $ff
    rst $38                                       ; $6f7e: $ff
    rst $38                                       ; $6f7f: $ff
    rst $38                                       ; $6f80: $ff
    rst $38                                       ; $6f81: $ff
    rst $38                                       ; $6f82: $ff
    rst $38                                       ; $6f83: $ff
    rst $38                                       ; $6f84: $ff
    rst $38                                       ; $6f85: $ff
    rst $38                                       ; $6f86: $ff
    rst $38                                       ; $6f87: $ff
    rst $38                                       ; $6f88: $ff
    rst $38                                       ; $6f89: $ff
    rst $38                                       ; $6f8a: $ff
    rst $38                                       ; $6f8b: $ff
    rst $38                                       ; $6f8c: $ff
    rst $38                                       ; $6f8d: $ff
    rst $38                                       ; $6f8e: $ff
    rst $38                                       ; $6f8f: $ff
    rst $38                                       ; $6f90: $ff
    rst $38                                       ; $6f91: $ff
    rst $38                                       ; $6f92: $ff
    rst $38                                       ; $6f93: $ff
    rst $38                                       ; $6f94: $ff
    rst $38                                       ; $6f95: $ff
    rst $38                                       ; $6f96: $ff
    rst $38                                       ; $6f97: $ff
    rst $38                                       ; $6f98: $ff
    rst $38                                       ; $6f99: $ff
    rst $38                                       ; $6f9a: $ff
    rst $38                                       ; $6f9b: $ff
    rst $38                                       ; $6f9c: $ff
    rst $38                                       ; $6f9d: $ff
    rst $38                                       ; $6f9e: $ff
    rst $38                                       ; $6f9f: $ff
    rst $38                                       ; $6fa0: $ff
    rst $38                                       ; $6fa1: $ff
    rst $38                                       ; $6fa2: $ff
    rst $38                                       ; $6fa3: $ff
    rst $38                                       ; $6fa4: $ff
    rst $38                                       ; $6fa5: $ff
    rst $38                                       ; $6fa6: $ff
    rst $38                                       ; $6fa7: $ff
    rst $38                                       ; $6fa8: $ff
    rst $38                                       ; $6fa9: $ff
    rst $38                                       ; $6faa: $ff
    rst $38                                       ; $6fab: $ff
    rst $38                                       ; $6fac: $ff
    rst $38                                       ; $6fad: $ff
    rst $38                                       ; $6fae: $ff
    rst $38                                       ; $6faf: $ff
    rst $38                                       ; $6fb0: $ff
    rst $38                                       ; $6fb1: $ff
    rst $38                                       ; $6fb2: $ff
    rst $38                                       ; $6fb3: $ff
    rst $38                                       ; $6fb4: $ff
    rst $38                                       ; $6fb5: $ff
    rst $38                                       ; $6fb6: $ff
    rst $38                                       ; $6fb7: $ff
    rst $38                                       ; $6fb8: $ff
    rst $38                                       ; $6fb9: $ff
    rst $38                                       ; $6fba: $ff
    rst $38                                       ; $6fbb: $ff
    rst $38                                       ; $6fbc: $ff
    rst $38                                       ; $6fbd: $ff
    rst $38                                       ; $6fbe: $ff
    rst $38                                       ; $6fbf: $ff
    rst $38                                       ; $6fc0: $ff
    rst $38                                       ; $6fc1: $ff
    rst $38                                       ; $6fc2: $ff
    rst $38                                       ; $6fc3: $ff
    rst $38                                       ; $6fc4: $ff
    rst $38                                       ; $6fc5: $ff
    rst $38                                       ; $6fc6: $ff
    rst $38                                       ; $6fc7: $ff
    rst $38                                       ; $6fc8: $ff
    rst $38                                       ; $6fc9: $ff
    rst $38                                       ; $6fca: $ff
    rst $38                                       ; $6fcb: $ff
    rst $38                                       ; $6fcc: $ff
    rst $38                                       ; $6fcd: $ff
    rst $38                                       ; $6fce: $ff
    rst $38                                       ; $6fcf: $ff
    rst $38                                       ; $6fd0: $ff
    rst $38                                       ; $6fd1: $ff
    rst $38                                       ; $6fd2: $ff
    rst $38                                       ; $6fd3: $ff
    rst $38                                       ; $6fd4: $ff
    rst $38                                       ; $6fd5: $ff
    rst $38                                       ; $6fd6: $ff
    rst $38                                       ; $6fd7: $ff
    rst $38                                       ; $6fd8: $ff
    rst $38                                       ; $6fd9: $ff
    rst $38                                       ; $6fda: $ff
    rst $38                                       ; $6fdb: $ff
    rst $38                                       ; $6fdc: $ff
    rst $38                                       ; $6fdd: $ff
    rst $38                                       ; $6fde: $ff
    rst $38                                       ; $6fdf: $ff
    rst $38                                       ; $6fe0: $ff
    rst $38                                       ; $6fe1: $ff
    rst $38                                       ; $6fe2: $ff
    rst $38                                       ; $6fe3: $ff
    rst $38                                       ; $6fe4: $ff
    rst $38                                       ; $6fe5: $ff
    rst $38                                       ; $6fe6: $ff
    rst $38                                       ; $6fe7: $ff
    rst $38                                       ; $6fe8: $ff
    rst $38                                       ; $6fe9: $ff
    rst $38                                       ; $6fea: $ff
    rst $38                                       ; $6feb: $ff
    rst $38                                       ; $6fec: $ff
    rst $38                                       ; $6fed: $ff
    rst $38                                       ; $6fee: $ff
    rst $38                                       ; $6fef: $ff
    rst $38                                       ; $6ff0: $ff
    rst $38                                       ; $6ff1: $ff
    rst $38                                       ; $6ff2: $ff
    rst $38                                       ; $6ff3: $ff
    rst $38                                       ; $6ff4: $ff
    rst $38                                       ; $6ff5: $ff
    rst $38                                       ; $6ff6: $ff
    rst $38                                       ; $6ff7: $ff
    rst $38                                       ; $6ff8: $ff
    rst $38                                       ; $6ff9: $ff
    rst $38                                       ; $6ffa: $ff
    rst $38                                       ; $6ffb: $ff
    rst $38                                       ; $6ffc: $ff
    rst $38                                       ; $6ffd: $ff
    rst $38                                       ; $6ffe: $ff
    rst $38                                       ; $6fff: $ff
    rst $38                                       ; $7000: $ff
    rst $38                                       ; $7001: $ff
    rst $38                                       ; $7002: $ff
    rst $38                                       ; $7003: $ff
    rst $38                                       ; $7004: $ff
    rst $38                                       ; $7005: $ff
    rst $38                                       ; $7006: $ff
    rst $38                                       ; $7007: $ff
    rst $38                                       ; $7008: $ff
    rst $38                                       ; $7009: $ff
    rst $38                                       ; $700a: $ff
    rst $38                                       ; $700b: $ff
    rst $38                                       ; $700c: $ff
    rst $38                                       ; $700d: $ff
    rst $38                                       ; $700e: $ff
    rst $38                                       ; $700f: $ff
    rst $38                                       ; $7010: $ff
    rst $38                                       ; $7011: $ff
    rst $38                                       ; $7012: $ff
    rst $38                                       ; $7013: $ff
    rst $38                                       ; $7014: $ff
    rst $38                                       ; $7015: $ff
    rst $38                                       ; $7016: $ff
    rst $38                                       ; $7017: $ff
    rst $38                                       ; $7018: $ff
    rst $38                                       ; $7019: $ff
    rst $38                                       ; $701a: $ff
    rst $38                                       ; $701b: $ff
    rst $38                                       ; $701c: $ff
    rst $38                                       ; $701d: $ff
    rst $38                                       ; $701e: $ff
    rst $38                                       ; $701f: $ff
    rst $38                                       ; $7020: $ff
    rst $38                                       ; $7021: $ff
    rst $38                                       ; $7022: $ff
    rst $38                                       ; $7023: $ff
    rst $38                                       ; $7024: $ff
    rst $38                                       ; $7025: $ff
    rst $38                                       ; $7026: $ff
    rst $38                                       ; $7027: $ff
    rst $38                                       ; $7028: $ff
    rst $38                                       ; $7029: $ff
    rst $38                                       ; $702a: $ff
    rst $38                                       ; $702b: $ff
    rst $38                                       ; $702c: $ff
    rst $38                                       ; $702d: $ff
    rst $38                                       ; $702e: $ff
    rst $38                                       ; $702f: $ff
    rst $38                                       ; $7030: $ff
    rst $38                                       ; $7031: $ff
    rst $38                                       ; $7032: $ff
    rst $38                                       ; $7033: $ff
    rst $38                                       ; $7034: $ff
    rst $38                                       ; $7035: $ff
    rst $38                                       ; $7036: $ff
    rst $38                                       ; $7037: $ff
    rst $38                                       ; $7038: $ff
    rst $38                                       ; $7039: $ff
    rst $38                                       ; $703a: $ff
    rst $38                                       ; $703b: $ff
    rst $38                                       ; $703c: $ff
    rst $38                                       ; $703d: $ff
    rst $38                                       ; $703e: $ff
    rst $38                                       ; $703f: $ff
    rst $38                                       ; $7040: $ff
    rst $38                                       ; $7041: $ff
    rst $38                                       ; $7042: $ff
    rst $38                                       ; $7043: $ff
    rst $38                                       ; $7044: $ff
    rst $38                                       ; $7045: $ff
    rst $38                                       ; $7046: $ff
    rst $38                                       ; $7047: $ff
    rst $38                                       ; $7048: $ff
    rst $38                                       ; $7049: $ff
    rst $38                                       ; $704a: $ff
    rst $38                                       ; $704b: $ff
    rst $38                                       ; $704c: $ff
    rst $38                                       ; $704d: $ff
    rst $38                                       ; $704e: $ff
    rst $38                                       ; $704f: $ff
    rst $38                                       ; $7050: $ff
    rst $38                                       ; $7051: $ff
    rst $38                                       ; $7052: $ff
    rst $38                                       ; $7053: $ff
    rst $38                                       ; $7054: $ff
    rst $38                                       ; $7055: $ff
    rst $38                                       ; $7056: $ff
    rst $38                                       ; $7057: $ff
    rst $38                                       ; $7058: $ff
    rst $38                                       ; $7059: $ff
    rst $38                                       ; $705a: $ff
    rst $38                                       ; $705b: $ff
    rst $38                                       ; $705c: $ff
    rst $38                                       ; $705d: $ff
    rst $38                                       ; $705e: $ff
    rst $38                                       ; $705f: $ff
    rst $38                                       ; $7060: $ff
    rst $38                                       ; $7061: $ff
    rst $38                                       ; $7062: $ff
    rst $38                                       ; $7063: $ff
    rst $38                                       ; $7064: $ff
    rst $38                                       ; $7065: $ff
    rst $38                                       ; $7066: $ff
    rst $38                                       ; $7067: $ff
    rst $38                                       ; $7068: $ff
    rst $38                                       ; $7069: $ff
    rst $38                                       ; $706a: $ff
    rst $38                                       ; $706b: $ff
    rst $38                                       ; $706c: $ff
    rst $38                                       ; $706d: $ff
    rst $38                                       ; $706e: $ff
    rst $38                                       ; $706f: $ff
    rst $38                                       ; $7070: $ff
    rst $38                                       ; $7071: $ff
    rst $38                                       ; $7072: $ff
    rst $38                                       ; $7073: $ff
    rst $38                                       ; $7074: $ff
    rst $38                                       ; $7075: $ff
    rst $38                                       ; $7076: $ff
    rst $38                                       ; $7077: $ff
    rst $38                                       ; $7078: $ff
    rst $38                                       ; $7079: $ff
    rst $38                                       ; $707a: $ff
    rst $38                                       ; $707b: $ff
    rst $38                                       ; $707c: $ff
    rst $38                                       ; $707d: $ff
    rst $38                                       ; $707e: $ff
    rst $38                                       ; $707f: $ff
    rst $38                                       ; $7080: $ff
    rst $38                                       ; $7081: $ff
    rst $38                                       ; $7082: $ff
    rst $38                                       ; $7083: $ff
    rst $38                                       ; $7084: $ff
    rst $38                                       ; $7085: $ff
    rst $38                                       ; $7086: $ff
    rst $38                                       ; $7087: $ff
    rst $38                                       ; $7088: $ff
    rst $38                                       ; $7089: $ff
    rst $38                                       ; $708a: $ff
    rst $38                                       ; $708b: $ff
    rst $38                                       ; $708c: $ff
    rst $38                                       ; $708d: $ff
    rst $38                                       ; $708e: $ff
    rst $38                                       ; $708f: $ff
    rst $38                                       ; $7090: $ff
    rst $38                                       ; $7091: $ff
    rst $38                                       ; $7092: $ff
    rst $38                                       ; $7093: $ff
    rst $38                                       ; $7094: $ff
    rst $38                                       ; $7095: $ff
    rst $38                                       ; $7096: $ff
    rst $38                                       ; $7097: $ff
    rst $38                                       ; $7098: $ff
    rst $38                                       ; $7099: $ff
    rst $38                                       ; $709a: $ff
    rst $38                                       ; $709b: $ff
    rst $38                                       ; $709c: $ff
    rst $38                                       ; $709d: $ff
    rst $38                                       ; $709e: $ff
    rst $38                                       ; $709f: $ff
    rst $38                                       ; $70a0: $ff
    rst $38                                       ; $70a1: $ff
    rst $38                                       ; $70a2: $ff
    rst $38                                       ; $70a3: $ff
    rst $38                                       ; $70a4: $ff
    rst $38                                       ; $70a5: $ff
    rst $38                                       ; $70a6: $ff
    rst $38                                       ; $70a7: $ff
    rst $38                                       ; $70a8: $ff
    rst $38                                       ; $70a9: $ff
    rst $38                                       ; $70aa: $ff
    rst $38                                       ; $70ab: $ff
    rst $38                                       ; $70ac: $ff
    rst $38                                       ; $70ad: $ff
    rst $38                                       ; $70ae: $ff
    rst $38                                       ; $70af: $ff
    rst $38                                       ; $70b0: $ff
    rst $38                                       ; $70b1: $ff
    rst $38                                       ; $70b2: $ff
    rst $38                                       ; $70b3: $ff
    rst $38                                       ; $70b4: $ff
    rst $38                                       ; $70b5: $ff
    rst $38                                       ; $70b6: $ff
    rst $38                                       ; $70b7: $ff
    rst $38                                       ; $70b8: $ff
    rst $38                                       ; $70b9: $ff
    rst $38                                       ; $70ba: $ff
    rst $38                                       ; $70bb: $ff
    rst $38                                       ; $70bc: $ff
    rst $38                                       ; $70bd: $ff
    rst $38                                       ; $70be: $ff
    rst $38                                       ; $70bf: $ff
    rst $38                                       ; $70c0: $ff
    rst $38                                       ; $70c1: $ff
    rst $38                                       ; $70c2: $ff
    rst $38                                       ; $70c3: $ff
    rst $38                                       ; $70c4: $ff
    rst $38                                       ; $70c5: $ff
    rst $38                                       ; $70c6: $ff
    rst $38                                       ; $70c7: $ff
    rst $38                                       ; $70c8: $ff
    rst $38                                       ; $70c9: $ff
    rst $38                                       ; $70ca: $ff
    rst $38                                       ; $70cb: $ff
    rst $38                                       ; $70cc: $ff
    rst $38                                       ; $70cd: $ff
    rst $38                                       ; $70ce: $ff
    rst $38                                       ; $70cf: $ff
    rst $38                                       ; $70d0: $ff
    rst $38                                       ; $70d1: $ff
    rst $38                                       ; $70d2: $ff
    rst $38                                       ; $70d3: $ff
    rst $38                                       ; $70d4: $ff
    rst $38                                       ; $70d5: $ff
    rst $38                                       ; $70d6: $ff
    rst $38                                       ; $70d7: $ff
    rst $38                                       ; $70d8: $ff
    rst $38                                       ; $70d9: $ff
    rst $38                                       ; $70da: $ff
    rst $38                                       ; $70db: $ff
    rst $38                                       ; $70dc: $ff
    rst $38                                       ; $70dd: $ff
    rst $38                                       ; $70de: $ff
    rst $38                                       ; $70df: $ff
    rst $38                                       ; $70e0: $ff
    rst $38                                       ; $70e1: $ff
    rst $38                                       ; $70e2: $ff
    rst $38                                       ; $70e3: $ff
    rst $38                                       ; $70e4: $ff
    rst $38                                       ; $70e5: $ff
    rst $38                                       ; $70e6: $ff
    rst $38                                       ; $70e7: $ff
    rst $38                                       ; $70e8: $ff
    rst $38                                       ; $70e9: $ff
    rst $38                                       ; $70ea: $ff
    rst $38                                       ; $70eb: $ff
    rst $38                                       ; $70ec: $ff
    rst $38                                       ; $70ed: $ff
    rst $38                                       ; $70ee: $ff
    rst $38                                       ; $70ef: $ff
    rst $38                                       ; $70f0: $ff
    rst $38                                       ; $70f1: $ff
    rst $38                                       ; $70f2: $ff
    rst $38                                       ; $70f3: $ff
    rst $38                                       ; $70f4: $ff
    rst $38                                       ; $70f5: $ff
    rst $38                                       ; $70f6: $ff
    rst $38                                       ; $70f7: $ff
    rst $38                                       ; $70f8: $ff
    rst $38                                       ; $70f9: $ff
    rst $38                                       ; $70fa: $ff
    rst $38                                       ; $70fb: $ff
    rst $38                                       ; $70fc: $ff
    rst $38                                       ; $70fd: $ff
    rst $38                                       ; $70fe: $ff
    rst $38                                       ; $70ff: $ff
    rst $38                                       ; $7100: $ff
    rst $38                                       ; $7101: $ff
    rst $38                                       ; $7102: $ff
    rst $38                                       ; $7103: $ff
    rst $38                                       ; $7104: $ff
    rst $38                                       ; $7105: $ff
    rst $38                                       ; $7106: $ff
    rst $38                                       ; $7107: $ff
    rst $38                                       ; $7108: $ff
    rst $38                                       ; $7109: $ff
    rst $38                                       ; $710a: $ff
    rst $38                                       ; $710b: $ff
    rst $38                                       ; $710c: $ff
    rst $38                                       ; $710d: $ff
    rst $38                                       ; $710e: $ff
    rst $38                                       ; $710f: $ff
    rst $38                                       ; $7110: $ff
    rst $38                                       ; $7111: $ff
    rst $38                                       ; $7112: $ff
    rst $38                                       ; $7113: $ff
    rst $38                                       ; $7114: $ff
    rst $38                                       ; $7115: $ff
    rst $38                                       ; $7116: $ff
    rst $38                                       ; $7117: $ff
    rst $38                                       ; $7118: $ff
    rst $38                                       ; $7119: $ff
    rst $38                                       ; $711a: $ff
    rst $38                                       ; $711b: $ff
    rst $38                                       ; $711c: $ff
    rst $38                                       ; $711d: $ff
    rst $38                                       ; $711e: $ff
    rst $38                                       ; $711f: $ff
    rst $38                                       ; $7120: $ff
    rst $38                                       ; $7121: $ff
    rst $38                                       ; $7122: $ff
    rst $38                                       ; $7123: $ff
    rst $38                                       ; $7124: $ff
    rst $38                                       ; $7125: $ff
    rst $38                                       ; $7126: $ff
    rst $38                                       ; $7127: $ff
    rst $38                                       ; $7128: $ff
    rst $38                                       ; $7129: $ff
    rst $38                                       ; $712a: $ff
    rst $38                                       ; $712b: $ff
    rst $38                                       ; $712c: $ff
    rst $38                                       ; $712d: $ff
    rst $38                                       ; $712e: $ff
    rst $38                                       ; $712f: $ff
    rst $38                                       ; $7130: $ff
    rst $38                                       ; $7131: $ff
    rst $38                                       ; $7132: $ff
    rst $38                                       ; $7133: $ff
    rst $38                                       ; $7134: $ff
    rst $38                                       ; $7135: $ff
    rst $38                                       ; $7136: $ff
    rst $38                                       ; $7137: $ff
    rst $38                                       ; $7138: $ff
    rst $38                                       ; $7139: $ff
    rst $38                                       ; $713a: $ff
    rst $38                                       ; $713b: $ff
    rst $38                                       ; $713c: $ff
    rst $38                                       ; $713d: $ff
    rst $38                                       ; $713e: $ff
    rst $38                                       ; $713f: $ff
    rst $38                                       ; $7140: $ff
    rst $38                                       ; $7141: $ff
    rst $38                                       ; $7142: $ff
    rst $38                                       ; $7143: $ff
    rst $38                                       ; $7144: $ff
    rst $38                                       ; $7145: $ff
    rst $38                                       ; $7146: $ff
    rst $38                                       ; $7147: $ff
    rst $38                                       ; $7148: $ff
    rst $38                                       ; $7149: $ff
    rst $38                                       ; $714a: $ff
    rst $38                                       ; $714b: $ff
    rst $38                                       ; $714c: $ff
    rst $38                                       ; $714d: $ff
    rst $38                                       ; $714e: $ff
    rst $38                                       ; $714f: $ff
    rst $38                                       ; $7150: $ff
    rst $38                                       ; $7151: $ff
    rst $38                                       ; $7152: $ff
    rst $38                                       ; $7153: $ff
    rst $38                                       ; $7154: $ff
    rst $38                                       ; $7155: $ff
    rst $38                                       ; $7156: $ff
    rst $38                                       ; $7157: $ff
    rst $38                                       ; $7158: $ff
    rst $38                                       ; $7159: $ff
    rst $38                                       ; $715a: $ff
    rst $38                                       ; $715b: $ff
    rst $38                                       ; $715c: $ff
    rst $38                                       ; $715d: $ff
    rst $38                                       ; $715e: $ff
    rst $38                                       ; $715f: $ff
    rst $38                                       ; $7160: $ff
    rst $38                                       ; $7161: $ff
    rst $38                                       ; $7162: $ff
    rst $38                                       ; $7163: $ff
    rst $38                                       ; $7164: $ff
    rst $38                                       ; $7165: $ff
    rst $38                                       ; $7166: $ff
    rst $38                                       ; $7167: $ff
    rst $38                                       ; $7168: $ff
    rst $38                                       ; $7169: $ff
    rst $38                                       ; $716a: $ff
    rst $38                                       ; $716b: $ff
    rst $38                                       ; $716c: $ff
    rst $38                                       ; $716d: $ff
    rst $38                                       ; $716e: $ff
    rst $38                                       ; $716f: $ff
    rst $38                                       ; $7170: $ff
    rst $38                                       ; $7171: $ff
    rst $38                                       ; $7172: $ff
    rst $38                                       ; $7173: $ff
    rst $38                                       ; $7174: $ff
    rst $38                                       ; $7175: $ff
    rst $38                                       ; $7176: $ff
    rst $38                                       ; $7177: $ff
    rst $38                                       ; $7178: $ff
    rst $38                                       ; $7179: $ff
    rst $38                                       ; $717a: $ff
    rst $38                                       ; $717b: $ff
    rst $38                                       ; $717c: $ff
    rst $38                                       ; $717d: $ff
    rst $38                                       ; $717e: $ff
    rst $38                                       ; $717f: $ff
    rst $38                                       ; $7180: $ff
    rst $38                                       ; $7181: $ff
    rst $38                                       ; $7182: $ff
    rst $38                                       ; $7183: $ff
    rst $38                                       ; $7184: $ff
    rst $38                                       ; $7185: $ff
    rst $38                                       ; $7186: $ff
    rst $38                                       ; $7187: $ff
    rst $38                                       ; $7188: $ff
    rst $38                                       ; $7189: $ff
    rst $38                                       ; $718a: $ff
    rst $38                                       ; $718b: $ff
    rst $38                                       ; $718c: $ff
    rst $38                                       ; $718d: $ff
    rst $38                                       ; $718e: $ff
    rst $38                                       ; $718f: $ff
    rst $38                                       ; $7190: $ff
    rst $38                                       ; $7191: $ff
    rst $38                                       ; $7192: $ff
    rst $38                                       ; $7193: $ff
    rst $38                                       ; $7194: $ff
    rst $38                                       ; $7195: $ff
    rst $38                                       ; $7196: $ff
    rst $38                                       ; $7197: $ff
    rst $38                                       ; $7198: $ff
    rst $38                                       ; $7199: $ff
    rst $38                                       ; $719a: $ff
    rst $38                                       ; $719b: $ff
    rst $38                                       ; $719c: $ff
    rst $38                                       ; $719d: $ff
    rst $38                                       ; $719e: $ff
    rst $38                                       ; $719f: $ff
    rst $38                                       ; $71a0: $ff
    rst $38                                       ; $71a1: $ff
    rst $38                                       ; $71a2: $ff
    rst $38                                       ; $71a3: $ff
    rst $38                                       ; $71a4: $ff
    rst $38                                       ; $71a5: $ff
    rst $38                                       ; $71a6: $ff
    rst $38                                       ; $71a7: $ff
    rst $38                                       ; $71a8: $ff
    rst $38                                       ; $71a9: $ff
    rst $38                                       ; $71aa: $ff
    rst $38                                       ; $71ab: $ff
    rst $38                                       ; $71ac: $ff
    rst $38                                       ; $71ad: $ff
    rst $38                                       ; $71ae: $ff
    rst $38                                       ; $71af: $ff
    rst $38                                       ; $71b0: $ff
    rst $38                                       ; $71b1: $ff
    rst $38                                       ; $71b2: $ff
    rst $38                                       ; $71b3: $ff
    rst $38                                       ; $71b4: $ff
    rst $38                                       ; $71b5: $ff
    rst $38                                       ; $71b6: $ff
    rst $38                                       ; $71b7: $ff
    rst $38                                       ; $71b8: $ff
    rst $38                                       ; $71b9: $ff
    rst $38                                       ; $71ba: $ff
    rst $38                                       ; $71bb: $ff
    rst $38                                       ; $71bc: $ff
    rst $38                                       ; $71bd: $ff
    rst $38                                       ; $71be: $ff
    rst $38                                       ; $71bf: $ff
    rst $38                                       ; $71c0: $ff
    rst $38                                       ; $71c1: $ff
    rst $38                                       ; $71c2: $ff
    rst $38                                       ; $71c3: $ff
    rst $38                                       ; $71c4: $ff
    rst $38                                       ; $71c5: $ff
    rst $38                                       ; $71c6: $ff
    rst $38                                       ; $71c7: $ff
    rst $38                                       ; $71c8: $ff
    rst $38                                       ; $71c9: $ff
    rst $38                                       ; $71ca: $ff
    rst $38                                       ; $71cb: $ff
    rst $38                                       ; $71cc: $ff
    rst $38                                       ; $71cd: $ff
    rst $38                                       ; $71ce: $ff
    rst $38                                       ; $71cf: $ff
    rst $38                                       ; $71d0: $ff
    rst $38                                       ; $71d1: $ff
    rst $38                                       ; $71d2: $ff
    rst $38                                       ; $71d3: $ff
    rst $38                                       ; $71d4: $ff
    rst $38                                       ; $71d5: $ff
    rst $38                                       ; $71d6: $ff
    rst $38                                       ; $71d7: $ff
    rst $38                                       ; $71d8: $ff
    rst $38                                       ; $71d9: $ff
    rst $38                                       ; $71da: $ff
    rst $38                                       ; $71db: $ff
    rst $38                                       ; $71dc: $ff
    rst $38                                       ; $71dd: $ff
    rst $38                                       ; $71de: $ff
    rst $38                                       ; $71df: $ff
    rst $38                                       ; $71e0: $ff
    rst $38                                       ; $71e1: $ff
    rst $38                                       ; $71e2: $ff
    rst $38                                       ; $71e3: $ff
    rst $38                                       ; $71e4: $ff
    rst $38                                       ; $71e5: $ff
    rst $38                                       ; $71e6: $ff
    rst $38                                       ; $71e7: $ff
    rst $38                                       ; $71e8: $ff
    rst $38                                       ; $71e9: $ff
    rst $38                                       ; $71ea: $ff
    rst $38                                       ; $71eb: $ff
    rst $38                                       ; $71ec: $ff
    rst $38                                       ; $71ed: $ff
    rst $38                                       ; $71ee: $ff
    rst $38                                       ; $71ef: $ff
    rst $38                                       ; $71f0: $ff
    rst $38                                       ; $71f1: $ff
    rst $38                                       ; $71f2: $ff
    rst $38                                       ; $71f3: $ff
    rst $38                                       ; $71f4: $ff
    rst $38                                       ; $71f5: $ff
    rst $38                                       ; $71f6: $ff
    rst $38                                       ; $71f7: $ff
    rst $38                                       ; $71f8: $ff
    rst $38                                       ; $71f9: $ff
    rst $38                                       ; $71fa: $ff
    rst $38                                       ; $71fb: $ff
    rst $38                                       ; $71fc: $ff
    rst $38                                       ; $71fd: $ff
    rst $38                                       ; $71fe: $ff
    rst $38                                       ; $71ff: $ff
    rst $38                                       ; $7200: $ff
    rst $38                                       ; $7201: $ff
    rst $38                                       ; $7202: $ff
    rst $38                                       ; $7203: $ff
    rst $38                                       ; $7204: $ff
    rst $38                                       ; $7205: $ff
    rst $38                                       ; $7206: $ff
    rst $38                                       ; $7207: $ff
    rst $38                                       ; $7208: $ff
    rst $38                                       ; $7209: $ff
    rst $38                                       ; $720a: $ff
    rst $38                                       ; $720b: $ff
    rst $38                                       ; $720c: $ff
    rst $38                                       ; $720d: $ff
    rst $38                                       ; $720e: $ff
    rst $38                                       ; $720f: $ff
    rst $38                                       ; $7210: $ff
    rst $38                                       ; $7211: $ff
    rst $38                                       ; $7212: $ff
    rst $38                                       ; $7213: $ff
    rst $38                                       ; $7214: $ff
    rst $38                                       ; $7215: $ff
    rst $38                                       ; $7216: $ff
    rst $38                                       ; $7217: $ff
    rst $38                                       ; $7218: $ff
    rst $38                                       ; $7219: $ff
    rst $38                                       ; $721a: $ff
    rst $38                                       ; $721b: $ff
    rst $38                                       ; $721c: $ff
    rst $38                                       ; $721d: $ff
    rst $38                                       ; $721e: $ff
    rst $38                                       ; $721f: $ff
    rst $38                                       ; $7220: $ff
    rst $38                                       ; $7221: $ff
    rst $38                                       ; $7222: $ff
    rst $38                                       ; $7223: $ff
    rst $38                                       ; $7224: $ff
    rst $38                                       ; $7225: $ff
    rst $38                                       ; $7226: $ff
    rst $38                                       ; $7227: $ff
    rst $38                                       ; $7228: $ff
    rst $38                                       ; $7229: $ff
    rst $38                                       ; $722a: $ff
    rst $38                                       ; $722b: $ff
    rst $38                                       ; $722c: $ff
    rst $38                                       ; $722d: $ff
    rst $38                                       ; $722e: $ff
    rst $38                                       ; $722f: $ff
    rst $38                                       ; $7230: $ff
    rst $38                                       ; $7231: $ff
    rst $38                                       ; $7232: $ff
    rst $38                                       ; $7233: $ff
    rst $38                                       ; $7234: $ff
    rst $38                                       ; $7235: $ff
    rst $38                                       ; $7236: $ff
    rst $38                                       ; $7237: $ff
    rst $38                                       ; $7238: $ff
    rst $38                                       ; $7239: $ff
    rst $38                                       ; $723a: $ff
    rst $38                                       ; $723b: $ff
    rst $38                                       ; $723c: $ff
    rst $38                                       ; $723d: $ff
    rst $38                                       ; $723e: $ff
    rst $38                                       ; $723f: $ff
    rst $38                                       ; $7240: $ff
    rst $38                                       ; $7241: $ff
    rst $38                                       ; $7242: $ff
    rst $38                                       ; $7243: $ff
    rst $38                                       ; $7244: $ff
    rst $38                                       ; $7245: $ff
    rst $38                                       ; $7246: $ff
    rst $38                                       ; $7247: $ff
    rst $38                                       ; $7248: $ff
    rst $38                                       ; $7249: $ff
    rst $38                                       ; $724a: $ff
    rst $38                                       ; $724b: $ff
    rst $38                                       ; $724c: $ff
    rst $38                                       ; $724d: $ff
    rst $38                                       ; $724e: $ff
    rst $38                                       ; $724f: $ff
    rst $38                                       ; $7250: $ff
    rst $38                                       ; $7251: $ff
    rst $38                                       ; $7252: $ff
    rst $38                                       ; $7253: $ff
    rst $38                                       ; $7254: $ff
    rst $38                                       ; $7255: $ff
    rst $38                                       ; $7256: $ff
    rst $38                                       ; $7257: $ff
    rst $38                                       ; $7258: $ff
    rst $38                                       ; $7259: $ff
    rst $38                                       ; $725a: $ff
    rst $38                                       ; $725b: $ff
    rst $38                                       ; $725c: $ff
    rst $38                                       ; $725d: $ff
    rst $38                                       ; $725e: $ff
    rst $38                                       ; $725f: $ff
    rst $38                                       ; $7260: $ff
    rst $38                                       ; $7261: $ff
    rst $38                                       ; $7262: $ff
    rst $38                                       ; $7263: $ff
    rst $38                                       ; $7264: $ff
    rst $38                                       ; $7265: $ff
    rst $38                                       ; $7266: $ff
    rst $38                                       ; $7267: $ff
    rst $38                                       ; $7268: $ff
    rst $38                                       ; $7269: $ff
    rst $38                                       ; $726a: $ff
    rst $38                                       ; $726b: $ff
    rst $38                                       ; $726c: $ff
    rst $38                                       ; $726d: $ff
    rst $38                                       ; $726e: $ff
    rst $38                                       ; $726f: $ff
    rst $38                                       ; $7270: $ff
    rst $38                                       ; $7271: $ff
    rst $38                                       ; $7272: $ff
    rst $38                                       ; $7273: $ff
    rst $38                                       ; $7274: $ff
    rst $38                                       ; $7275: $ff
    rst $38                                       ; $7276: $ff
    rst $38                                       ; $7277: $ff
    rst $38                                       ; $7278: $ff
    rst $38                                       ; $7279: $ff
    rst $38                                       ; $727a: $ff
    rst $38                                       ; $727b: $ff
    rst $38                                       ; $727c: $ff
    rst $38                                       ; $727d: $ff
    rst $38                                       ; $727e: $ff
    rst $38                                       ; $727f: $ff
    rst $38                                       ; $7280: $ff
    rst $38                                       ; $7281: $ff
    rst $38                                       ; $7282: $ff
    rst $38                                       ; $7283: $ff
    rst $38                                       ; $7284: $ff
    rst $38                                       ; $7285: $ff
    rst $38                                       ; $7286: $ff
    rst $38                                       ; $7287: $ff
    rst $38                                       ; $7288: $ff
    rst $38                                       ; $7289: $ff
    rst $38                                       ; $728a: $ff
    rst $38                                       ; $728b: $ff
    rst $38                                       ; $728c: $ff
    rst $38                                       ; $728d: $ff
    rst $38                                       ; $728e: $ff
    rst $38                                       ; $728f: $ff
    rst $38                                       ; $7290: $ff
    rst $38                                       ; $7291: $ff
    rst $38                                       ; $7292: $ff
    rst $38                                       ; $7293: $ff
    rst $38                                       ; $7294: $ff
    rst $38                                       ; $7295: $ff
    rst $38                                       ; $7296: $ff
    rst $38                                       ; $7297: $ff
    rst $38                                       ; $7298: $ff
    rst $38                                       ; $7299: $ff
    rst $38                                       ; $729a: $ff
    rst $38                                       ; $729b: $ff
    rst $38                                       ; $729c: $ff
    rst $38                                       ; $729d: $ff
    rst $38                                       ; $729e: $ff
    rst $38                                       ; $729f: $ff
    rst $38                                       ; $72a0: $ff
    rst $38                                       ; $72a1: $ff
    rst $38                                       ; $72a2: $ff
    rst $38                                       ; $72a3: $ff
    rst $38                                       ; $72a4: $ff
    rst $38                                       ; $72a5: $ff
    rst $38                                       ; $72a6: $ff
    rst $38                                       ; $72a7: $ff
    rst $38                                       ; $72a8: $ff
    rst $38                                       ; $72a9: $ff
    rst $38                                       ; $72aa: $ff
    rst $38                                       ; $72ab: $ff
    rst $38                                       ; $72ac: $ff
    rst $38                                       ; $72ad: $ff
    rst $38                                       ; $72ae: $ff
    rst $38                                       ; $72af: $ff
    rst $38                                       ; $72b0: $ff
    rst $38                                       ; $72b1: $ff
    rst $38                                       ; $72b2: $ff
    rst $38                                       ; $72b3: $ff
    rst $38                                       ; $72b4: $ff
    rst $38                                       ; $72b5: $ff
    rst $38                                       ; $72b6: $ff
    rst $38                                       ; $72b7: $ff
    rst $38                                       ; $72b8: $ff
    rst $38                                       ; $72b9: $ff
    rst $38                                       ; $72ba: $ff
    rst $38                                       ; $72bb: $ff
    rst $38                                       ; $72bc: $ff
    rst $38                                       ; $72bd: $ff
    rst $38                                       ; $72be: $ff
    rst $38                                       ; $72bf: $ff
    rst $38                                       ; $72c0: $ff
    rst $38                                       ; $72c1: $ff
    rst $38                                       ; $72c2: $ff
    rst $38                                       ; $72c3: $ff
    rst $38                                       ; $72c4: $ff
    rst $38                                       ; $72c5: $ff
    rst $38                                       ; $72c6: $ff
    rst $38                                       ; $72c7: $ff
    rst $38                                       ; $72c8: $ff
    rst $38                                       ; $72c9: $ff
    rst $38                                       ; $72ca: $ff
    rst $38                                       ; $72cb: $ff
    rst $38                                       ; $72cc: $ff
    rst $38                                       ; $72cd: $ff
    rst $38                                       ; $72ce: $ff
    rst $38                                       ; $72cf: $ff
    rst $38                                       ; $72d0: $ff
    rst $38                                       ; $72d1: $ff
    rst $38                                       ; $72d2: $ff
    rst $38                                       ; $72d3: $ff
    rst $38                                       ; $72d4: $ff
    rst $38                                       ; $72d5: $ff
    rst $38                                       ; $72d6: $ff
    rst $38                                       ; $72d7: $ff
    rst $38                                       ; $72d8: $ff
    rst $38                                       ; $72d9: $ff
    rst $38                                       ; $72da: $ff
    rst $38                                       ; $72db: $ff
    rst $38                                       ; $72dc: $ff
    rst $38                                       ; $72dd: $ff
    rst $38                                       ; $72de: $ff
    rst $38                                       ; $72df: $ff
    rst $38                                       ; $72e0: $ff
    rst $38                                       ; $72e1: $ff
    rst $38                                       ; $72e2: $ff
    rst $38                                       ; $72e3: $ff
    rst $38                                       ; $72e4: $ff
    rst $38                                       ; $72e5: $ff
    rst $38                                       ; $72e6: $ff
    rst $38                                       ; $72e7: $ff
    rst $38                                       ; $72e8: $ff
    rst $38                                       ; $72e9: $ff
    rst $38                                       ; $72ea: $ff
    rst $38                                       ; $72eb: $ff
    rst $38                                       ; $72ec: $ff
    rst $38                                       ; $72ed: $ff
    rst $38                                       ; $72ee: $ff
    rst $38                                       ; $72ef: $ff
    rst $38                                       ; $72f0: $ff
    rst $38                                       ; $72f1: $ff
    rst $38                                       ; $72f2: $ff
    rst $38                                       ; $72f3: $ff
    rst $38                                       ; $72f4: $ff
    rst $38                                       ; $72f5: $ff
    rst $38                                       ; $72f6: $ff
    rst $38                                       ; $72f7: $ff
    rst $38                                       ; $72f8: $ff
    rst $38                                       ; $72f9: $ff
    rst $38                                       ; $72fa: $ff
    rst $38                                       ; $72fb: $ff
    rst $38                                       ; $72fc: $ff
    rst $38                                       ; $72fd: $ff
    rst $38                                       ; $72fe: $ff
    rst $38                                       ; $72ff: $ff
    rst $38                                       ; $7300: $ff
    rst $38                                       ; $7301: $ff
    rst $38                                       ; $7302: $ff
    rst $38                                       ; $7303: $ff
    rst $38                                       ; $7304: $ff
    rst $38                                       ; $7305: $ff
    rst $38                                       ; $7306: $ff
    rst $38                                       ; $7307: $ff
    rst $38                                       ; $7308: $ff
    rst $38                                       ; $7309: $ff
    rst $38                                       ; $730a: $ff
    rst $38                                       ; $730b: $ff
    rst $38                                       ; $730c: $ff
    rst $38                                       ; $730d: $ff
    rst $38                                       ; $730e: $ff
    rst $38                                       ; $730f: $ff
    rst $38                                       ; $7310: $ff
    rst $38                                       ; $7311: $ff
    rst $38                                       ; $7312: $ff
    rst $38                                       ; $7313: $ff
    rst $38                                       ; $7314: $ff
    rst $38                                       ; $7315: $ff
    rst $38                                       ; $7316: $ff
    rst $38                                       ; $7317: $ff
    rst $38                                       ; $7318: $ff
    rst $38                                       ; $7319: $ff
    rst $38                                       ; $731a: $ff
    rst $38                                       ; $731b: $ff
    rst $38                                       ; $731c: $ff
    rst $38                                       ; $731d: $ff
    rst $38                                       ; $731e: $ff
    rst $38                                       ; $731f: $ff
    rst $38                                       ; $7320: $ff
    rst $38                                       ; $7321: $ff
    rst $38                                       ; $7322: $ff
    rst $38                                       ; $7323: $ff
    rst $38                                       ; $7324: $ff
    rst $38                                       ; $7325: $ff
    rst $38                                       ; $7326: $ff
    rst $38                                       ; $7327: $ff
    rst $38                                       ; $7328: $ff
    rst $38                                       ; $7329: $ff
    rst $38                                       ; $732a: $ff
    rst $38                                       ; $732b: $ff
    rst $38                                       ; $732c: $ff
    rst $38                                       ; $732d: $ff
    rst $38                                       ; $732e: $ff
    rst $38                                       ; $732f: $ff
    rst $38                                       ; $7330: $ff
    rst $38                                       ; $7331: $ff
    rst $38                                       ; $7332: $ff
    rst $38                                       ; $7333: $ff
    rst $38                                       ; $7334: $ff
    rst $38                                       ; $7335: $ff
    rst $38                                       ; $7336: $ff
    rst $38                                       ; $7337: $ff
    rst $38                                       ; $7338: $ff
    rst $38                                       ; $7339: $ff
    rst $38                                       ; $733a: $ff
    rst $38                                       ; $733b: $ff
    rst $38                                       ; $733c: $ff
    rst $38                                       ; $733d: $ff
    rst $38                                       ; $733e: $ff
    rst $38                                       ; $733f: $ff
    rst $38                                       ; $7340: $ff
    rst $38                                       ; $7341: $ff
    rst $38                                       ; $7342: $ff
    rst $38                                       ; $7343: $ff
    rst $38                                       ; $7344: $ff
    rst $38                                       ; $7345: $ff
    rst $38                                       ; $7346: $ff
    rst $38                                       ; $7347: $ff
    rst $38                                       ; $7348: $ff
    rst $38                                       ; $7349: $ff
    rst $38                                       ; $734a: $ff
    rst $38                                       ; $734b: $ff
    rst $38                                       ; $734c: $ff
    rst $38                                       ; $734d: $ff
    rst $38                                       ; $734e: $ff
    rst $38                                       ; $734f: $ff
    rst $38                                       ; $7350: $ff
    rst $38                                       ; $7351: $ff
    rst $38                                       ; $7352: $ff
    rst $38                                       ; $7353: $ff
    rst $38                                       ; $7354: $ff
    rst $38                                       ; $7355: $ff
    rst $38                                       ; $7356: $ff
    rst $38                                       ; $7357: $ff
    rst $38                                       ; $7358: $ff
    rst $38                                       ; $7359: $ff
    rst $38                                       ; $735a: $ff
    rst $38                                       ; $735b: $ff
    rst $38                                       ; $735c: $ff
    rst $38                                       ; $735d: $ff
    rst $38                                       ; $735e: $ff
    rst $38                                       ; $735f: $ff
    rst $38                                       ; $7360: $ff
    rst $38                                       ; $7361: $ff
    rst $38                                       ; $7362: $ff
    rst $38                                       ; $7363: $ff
    rst $38                                       ; $7364: $ff
    rst $38                                       ; $7365: $ff
    rst $38                                       ; $7366: $ff
    rst $38                                       ; $7367: $ff
    rst $38                                       ; $7368: $ff
    rst $38                                       ; $7369: $ff
    rst $38                                       ; $736a: $ff
    rst $38                                       ; $736b: $ff
    rst $38                                       ; $736c: $ff
    rst $38                                       ; $736d: $ff
    rst $38                                       ; $736e: $ff
    rst $38                                       ; $736f: $ff
    rst $38                                       ; $7370: $ff
    rst $38                                       ; $7371: $ff
    rst $38                                       ; $7372: $ff
    rst $38                                       ; $7373: $ff
    rst $38                                       ; $7374: $ff
    rst $38                                       ; $7375: $ff
    rst $38                                       ; $7376: $ff
    rst $38                                       ; $7377: $ff
    rst $38                                       ; $7378: $ff
    rst $38                                       ; $7379: $ff
    rst $38                                       ; $737a: $ff
    rst $38                                       ; $737b: $ff
    rst $38                                       ; $737c: $ff
    rst $38                                       ; $737d: $ff
    rst $38                                       ; $737e: $ff
    rst $38                                       ; $737f: $ff
    rst $38                                       ; $7380: $ff
    rst $38                                       ; $7381: $ff
    rst $38                                       ; $7382: $ff
    rst $38                                       ; $7383: $ff
    rst $38                                       ; $7384: $ff
    rst $38                                       ; $7385: $ff
    rst $38                                       ; $7386: $ff
    rst $38                                       ; $7387: $ff
    rst $38                                       ; $7388: $ff
    rst $38                                       ; $7389: $ff
    rst $38                                       ; $738a: $ff
    rst $38                                       ; $738b: $ff
    rst $38                                       ; $738c: $ff
    rst $38                                       ; $738d: $ff
    rst $38                                       ; $738e: $ff
    rst $38                                       ; $738f: $ff
    rst $38                                       ; $7390: $ff
    rst $38                                       ; $7391: $ff
    rst $38                                       ; $7392: $ff
    rst $38                                       ; $7393: $ff
    rst $38                                       ; $7394: $ff
    rst $38                                       ; $7395: $ff
    rst $38                                       ; $7396: $ff
    rst $38                                       ; $7397: $ff
    rst $38                                       ; $7398: $ff
    rst $38                                       ; $7399: $ff
    rst $38                                       ; $739a: $ff
    rst $38                                       ; $739b: $ff
    rst $38                                       ; $739c: $ff
    rst $38                                       ; $739d: $ff
    rst $38                                       ; $739e: $ff
    rst $38                                       ; $739f: $ff
    rst $38                                       ; $73a0: $ff
    rst $38                                       ; $73a1: $ff
    rst $38                                       ; $73a2: $ff
    rst $38                                       ; $73a3: $ff
    rst $38                                       ; $73a4: $ff
    rst $38                                       ; $73a5: $ff
    rst $38                                       ; $73a6: $ff
    rst $38                                       ; $73a7: $ff
    rst $38                                       ; $73a8: $ff
    rst $38                                       ; $73a9: $ff
    rst $38                                       ; $73aa: $ff
    rst $38                                       ; $73ab: $ff
    rst $38                                       ; $73ac: $ff
    rst $38                                       ; $73ad: $ff
    rst $38                                       ; $73ae: $ff
    rst $38                                       ; $73af: $ff
    rst $38                                       ; $73b0: $ff
    rst $38                                       ; $73b1: $ff
    rst $38                                       ; $73b2: $ff
    rst $38                                       ; $73b3: $ff
    rst $38                                       ; $73b4: $ff
    rst $38                                       ; $73b5: $ff
    rst $38                                       ; $73b6: $ff
    rst $38                                       ; $73b7: $ff
    rst $38                                       ; $73b8: $ff
    rst $38                                       ; $73b9: $ff
    rst $38                                       ; $73ba: $ff
    rst $38                                       ; $73bb: $ff
    rst $38                                       ; $73bc: $ff
    rst $38                                       ; $73bd: $ff
    rst $38                                       ; $73be: $ff
    rst $38                                       ; $73bf: $ff
    rst $38                                       ; $73c0: $ff
    rst $38                                       ; $73c1: $ff
    rst $38                                       ; $73c2: $ff
    rst $38                                       ; $73c3: $ff
    rst $38                                       ; $73c4: $ff
    rst $38                                       ; $73c5: $ff
    rst $38                                       ; $73c6: $ff
    rst $38                                       ; $73c7: $ff
    rst $38                                       ; $73c8: $ff
    rst $38                                       ; $73c9: $ff
    rst $38                                       ; $73ca: $ff
    rst $38                                       ; $73cb: $ff
    rst $38                                       ; $73cc: $ff
    rst $38                                       ; $73cd: $ff
    rst $38                                       ; $73ce: $ff
    rst $38                                       ; $73cf: $ff
    rst $38                                       ; $73d0: $ff
    rst $38                                       ; $73d1: $ff
    rst $38                                       ; $73d2: $ff
    rst $38                                       ; $73d3: $ff
    rst $38                                       ; $73d4: $ff
    rst $38                                       ; $73d5: $ff
    rst $38                                       ; $73d6: $ff
    rst $38                                       ; $73d7: $ff
    rst $38                                       ; $73d8: $ff
    rst $38                                       ; $73d9: $ff
    rst $38                                       ; $73da: $ff
    rst $38                                       ; $73db: $ff
    rst $38                                       ; $73dc: $ff
    rst $38                                       ; $73dd: $ff
    rst $38                                       ; $73de: $ff
    rst $38                                       ; $73df: $ff
    rst $38                                       ; $73e0: $ff
    rst $38                                       ; $73e1: $ff
    rst $38                                       ; $73e2: $ff
    rst $38                                       ; $73e3: $ff
    rst $38                                       ; $73e4: $ff
    rst $38                                       ; $73e5: $ff
    rst $38                                       ; $73e6: $ff
    rst $38                                       ; $73e7: $ff
    rst $38                                       ; $73e8: $ff
    rst $38                                       ; $73e9: $ff
    rst $38                                       ; $73ea: $ff
    rst $38                                       ; $73eb: $ff
    rst $38                                       ; $73ec: $ff

Jump_0f9_73ed:
    rst $38                                       ; $73ed: $ff
    rst $38                                       ; $73ee: $ff
    rst $38                                       ; $73ef: $ff
    rst $38                                       ; $73f0: $ff
    rst $38                                       ; $73f1: $ff
    rst $38                                       ; $73f2: $ff
    rst $38                                       ; $73f3: $ff
    rst $38                                       ; $73f4: $ff
    rst $38                                       ; $73f5: $ff
    rst $38                                       ; $73f6: $ff
    rst $38                                       ; $73f7: $ff
    rst $38                                       ; $73f8: $ff
    rst $38                                       ; $73f9: $ff
    rst $38                                       ; $73fa: $ff
    rst $38                                       ; $73fb: $ff
    rst $38                                       ; $73fc: $ff
    rst $38                                       ; $73fd: $ff
    rst $38                                       ; $73fe: $ff
    rst $38                                       ; $73ff: $ff
    rst $38                                       ; $7400: $ff
    rst $38                                       ; $7401: $ff
    rst $38                                       ; $7402: $ff
    rst $38                                       ; $7403: $ff
    rst $38                                       ; $7404: $ff
    rst $38                                       ; $7405: $ff
    rst $38                                       ; $7406: $ff
    rst $38                                       ; $7407: $ff
    rst $38                                       ; $7408: $ff
    rst $38                                       ; $7409: $ff
    rst $38                                       ; $740a: $ff
    rst $38                                       ; $740b: $ff
    rst $38                                       ; $740c: $ff
    rst $38                                       ; $740d: $ff
    rst $38                                       ; $740e: $ff
    rst $38                                       ; $740f: $ff
    rst $38                                       ; $7410: $ff
    rst $38                                       ; $7411: $ff
    rst $38                                       ; $7412: $ff
    rst $38                                       ; $7413: $ff
    rst $38                                       ; $7414: $ff
    rst $38                                       ; $7415: $ff
    rst $38                                       ; $7416: $ff
    rst $38                                       ; $7417: $ff
    rst $38                                       ; $7418: $ff
    rst $38                                       ; $7419: $ff
    rst $38                                       ; $741a: $ff
    rst $38                                       ; $741b: $ff
    rst $38                                       ; $741c: $ff
    rst $38                                       ; $741d: $ff
    rst $38                                       ; $741e: $ff
    rst $38                                       ; $741f: $ff
    rst $38                                       ; $7420: $ff
    rst $38                                       ; $7421: $ff
    rst $38                                       ; $7422: $ff
    rst $38                                       ; $7423: $ff
    rst $38                                       ; $7424: $ff
    rst $38                                       ; $7425: $ff
    rst $38                                       ; $7426: $ff
    rst $38                                       ; $7427: $ff
    rst $38                                       ; $7428: $ff
    rst $38                                       ; $7429: $ff
    rst $38                                       ; $742a: $ff
    rst $38                                       ; $742b: $ff
    rst $38                                       ; $742c: $ff
    rst $38                                       ; $742d: $ff
    rst $38                                       ; $742e: $ff
    rst $38                                       ; $742f: $ff
    rst $38                                       ; $7430: $ff
    rst $38                                       ; $7431: $ff
    rst $38                                       ; $7432: $ff
    rst $38                                       ; $7433: $ff
    rst $38                                       ; $7434: $ff
    rst $38                                       ; $7435: $ff
    rst $38                                       ; $7436: $ff
    rst $38                                       ; $7437: $ff
    rst $38                                       ; $7438: $ff
    rst $38                                       ; $7439: $ff
    rst $38                                       ; $743a: $ff
    rst $38                                       ; $743b: $ff
    rst $38                                       ; $743c: $ff
    rst $38                                       ; $743d: $ff
    rst $38                                       ; $743e: $ff
    rst $38                                       ; $743f: $ff
    rst $38                                       ; $7440: $ff
    rst $38                                       ; $7441: $ff
    rst $38                                       ; $7442: $ff
    rst $38                                       ; $7443: $ff
    rst $38                                       ; $7444: $ff
    rst $38                                       ; $7445: $ff
    rst $38                                       ; $7446: $ff
    rst $38                                       ; $7447: $ff
    rst $38                                       ; $7448: $ff
    rst $38                                       ; $7449: $ff
    rst $38                                       ; $744a: $ff
    rst $38                                       ; $744b: $ff
    rst $38                                       ; $744c: $ff
    rst $38                                       ; $744d: $ff
    rst $38                                       ; $744e: $ff
    rst $38                                       ; $744f: $ff
    rst $38                                       ; $7450: $ff
    rst $38                                       ; $7451: $ff
    rst $38                                       ; $7452: $ff
    rst $38                                       ; $7453: $ff
    rst $38                                       ; $7454: $ff
    rst $38                                       ; $7455: $ff
    rst $38                                       ; $7456: $ff
    rst $38                                       ; $7457: $ff
    rst $38                                       ; $7458: $ff
    rst $38                                       ; $7459: $ff
    rst $38                                       ; $745a: $ff
    rst $38                                       ; $745b: $ff
    rst $38                                       ; $745c: $ff
    rst $38                                       ; $745d: $ff
    rst $38                                       ; $745e: $ff
    rst $38                                       ; $745f: $ff
    rst $38                                       ; $7460: $ff
    rst $38                                       ; $7461: $ff
    rst $38                                       ; $7462: $ff
    rst $38                                       ; $7463: $ff
    rst $38                                       ; $7464: $ff
    rst $38                                       ; $7465: $ff
    rst $38                                       ; $7466: $ff
    rst $38                                       ; $7467: $ff
    rst $38                                       ; $7468: $ff
    rst $38                                       ; $7469: $ff
    rst $38                                       ; $746a: $ff
    rst $38                                       ; $746b: $ff
    rst $38                                       ; $746c: $ff
    rst $38                                       ; $746d: $ff
    rst $38                                       ; $746e: $ff
    rst $38                                       ; $746f: $ff
    rst $38                                       ; $7470: $ff
    rst $38                                       ; $7471: $ff
    rst $38                                       ; $7472: $ff
    rst $38                                       ; $7473: $ff
    rst $38                                       ; $7474: $ff
    rst $38                                       ; $7475: $ff
    rst $38                                       ; $7476: $ff
    rst $38                                       ; $7477: $ff
    rst $38                                       ; $7478: $ff
    rst $38                                       ; $7479: $ff
    rst $38                                       ; $747a: $ff
    rst $38                                       ; $747b: $ff
    rst $38                                       ; $747c: $ff
    rst $38                                       ; $747d: $ff
    rst $38                                       ; $747e: $ff
    rst $38                                       ; $747f: $ff
    rst $38                                       ; $7480: $ff
    rst $38                                       ; $7481: $ff
    rst $38                                       ; $7482: $ff
    rst $38                                       ; $7483: $ff
    rst $38                                       ; $7484: $ff
    rst $38                                       ; $7485: $ff
    rst $38                                       ; $7486: $ff
    rst $38                                       ; $7487: $ff
    rst $38                                       ; $7488: $ff
    rst $38                                       ; $7489: $ff
    rst $38                                       ; $748a: $ff
    rst $38                                       ; $748b: $ff
    rst $38                                       ; $748c: $ff
    rst $38                                       ; $748d: $ff
    rst $38                                       ; $748e: $ff
    rst $38                                       ; $748f: $ff
    rst $38                                       ; $7490: $ff
    rst $38                                       ; $7491: $ff
    rst $38                                       ; $7492: $ff
    rst $38                                       ; $7493: $ff
    rst $38                                       ; $7494: $ff
    rst $38                                       ; $7495: $ff
    rst $38                                       ; $7496: $ff
    rst $38                                       ; $7497: $ff
    rst $38                                       ; $7498: $ff
    rst $38                                       ; $7499: $ff
    rst $38                                       ; $749a: $ff
    rst $38                                       ; $749b: $ff
    rst $38                                       ; $749c: $ff
    rst $38                                       ; $749d: $ff
    rst $38                                       ; $749e: $ff
    rst $38                                       ; $749f: $ff
    rst $38                                       ; $74a0: $ff
    rst $38                                       ; $74a1: $ff
    rst $38                                       ; $74a2: $ff
    rst $38                                       ; $74a3: $ff
    rst $38                                       ; $74a4: $ff
    rst $38                                       ; $74a5: $ff
    rst $38                                       ; $74a6: $ff
    rst $38                                       ; $74a7: $ff
    rst $38                                       ; $74a8: $ff
    rst $38                                       ; $74a9: $ff
    rst $38                                       ; $74aa: $ff
    rst $38                                       ; $74ab: $ff
    rst $38                                       ; $74ac: $ff
    rst $38                                       ; $74ad: $ff
    rst $38                                       ; $74ae: $ff
    rst $38                                       ; $74af: $ff
    rst $38                                       ; $74b0: $ff
    rst $38                                       ; $74b1: $ff
    rst $38                                       ; $74b2: $ff
    rst $38                                       ; $74b3: $ff
    rst $38                                       ; $74b4: $ff
    rst $38                                       ; $74b5: $ff
    rst $38                                       ; $74b6: $ff
    rst $38                                       ; $74b7: $ff
    rst $38                                       ; $74b8: $ff
    rst $38                                       ; $74b9: $ff
    rst $38                                       ; $74ba: $ff
    rst $38                                       ; $74bb: $ff
    rst $38                                       ; $74bc: $ff
    rst $38                                       ; $74bd: $ff
    rst $38                                       ; $74be: $ff
    rst $38                                       ; $74bf: $ff
    rst $38                                       ; $74c0: $ff
    rst $38                                       ; $74c1: $ff
    rst $38                                       ; $74c2: $ff
    rst $38                                       ; $74c3: $ff
    rst $38                                       ; $74c4: $ff
    rst $38                                       ; $74c5: $ff
    rst $38                                       ; $74c6: $ff
    rst $38                                       ; $74c7: $ff
    rst $38                                       ; $74c8: $ff
    rst $38                                       ; $74c9: $ff
    rst $38                                       ; $74ca: $ff
    rst $38                                       ; $74cb: $ff
    rst $38                                       ; $74cc: $ff
    rst $38                                       ; $74cd: $ff
    rst $38                                       ; $74ce: $ff
    rst $38                                       ; $74cf: $ff
    rst $38                                       ; $74d0: $ff
    rst $38                                       ; $74d1: $ff
    rst $38                                       ; $74d2: $ff
    rst $38                                       ; $74d3: $ff
    rst $38                                       ; $74d4: $ff
    rst $38                                       ; $74d5: $ff
    rst $38                                       ; $74d6: $ff
    rst $38                                       ; $74d7: $ff
    rst $38                                       ; $74d8: $ff
    rst $38                                       ; $74d9: $ff
    rst $38                                       ; $74da: $ff
    rst $38                                       ; $74db: $ff
    rst $38                                       ; $74dc: $ff
    rst $38                                       ; $74dd: $ff
    rst $38                                       ; $74de: $ff
    rst $38                                       ; $74df: $ff
    rst $38                                       ; $74e0: $ff
    rst $38                                       ; $74e1: $ff
    rst $38                                       ; $74e2: $ff
    rst $38                                       ; $74e3: $ff
    rst $38                                       ; $74e4: $ff
    rst $38                                       ; $74e5: $ff
    rst $38                                       ; $74e6: $ff
    rst $38                                       ; $74e7: $ff
    rst $38                                       ; $74e8: $ff
    rst $38                                       ; $74e9: $ff
    rst $38                                       ; $74ea: $ff
    rst $38                                       ; $74eb: $ff
    rst $38                                       ; $74ec: $ff
    rst $38                                       ; $74ed: $ff
    rst $38                                       ; $74ee: $ff
    rst $38                                       ; $74ef: $ff
    rst $38                                       ; $74f0: $ff
    rst $38                                       ; $74f1: $ff
    rst $38                                       ; $74f2: $ff
    rst $38                                       ; $74f3: $ff
    rst $38                                       ; $74f4: $ff
    rst $38                                       ; $74f5: $ff
    rst $38                                       ; $74f6: $ff
    rst $38                                       ; $74f7: $ff
    rst $38                                       ; $74f8: $ff
    rst $38                                       ; $74f9: $ff
    rst $38                                       ; $74fa: $ff
    rst $38                                       ; $74fb: $ff
    rst $38                                       ; $74fc: $ff
    rst $38                                       ; $74fd: $ff
    rst $38                                       ; $74fe: $ff
    rst $38                                       ; $74ff: $ff
    rst $38                                       ; $7500: $ff
    rst $38                                       ; $7501: $ff
    rst $38                                       ; $7502: $ff
    rst $38                                       ; $7503: $ff
    rst $38                                       ; $7504: $ff
    rst $38                                       ; $7505: $ff
    rst $38                                       ; $7506: $ff
    rst $38                                       ; $7507: $ff
    rst $38                                       ; $7508: $ff
    rst $38                                       ; $7509: $ff
    rst $38                                       ; $750a: $ff
    rst $38                                       ; $750b: $ff
    rst $38                                       ; $750c: $ff
    rst $38                                       ; $750d: $ff
    rst $38                                       ; $750e: $ff
    rst $38                                       ; $750f: $ff
    rst $38                                       ; $7510: $ff
    rst $38                                       ; $7511: $ff
    rst $38                                       ; $7512: $ff
    rst $38                                       ; $7513: $ff
    rst $38                                       ; $7514: $ff
    rst $38                                       ; $7515: $ff
    rst $38                                       ; $7516: $ff
    rst $38                                       ; $7517: $ff
    rst $38                                       ; $7518: $ff
    rst $38                                       ; $7519: $ff
    rst $38                                       ; $751a: $ff
    rst $38                                       ; $751b: $ff
    rst $38                                       ; $751c: $ff
    rst $38                                       ; $751d: $ff
    rst $38                                       ; $751e: $ff
    rst $38                                       ; $751f: $ff
    rst $38                                       ; $7520: $ff
    rst $38                                       ; $7521: $ff
    rst $38                                       ; $7522: $ff
    rst $38                                       ; $7523: $ff
    rst $38                                       ; $7524: $ff
    rst $38                                       ; $7525: $ff
    rst $38                                       ; $7526: $ff
    rst $38                                       ; $7527: $ff
    rst $38                                       ; $7528: $ff
    rst $38                                       ; $7529: $ff
    rst $38                                       ; $752a: $ff
    rst $38                                       ; $752b: $ff
    rst $38                                       ; $752c: $ff
    rst $38                                       ; $752d: $ff
    rst $38                                       ; $752e: $ff
    rst $38                                       ; $752f: $ff
    rst $38                                       ; $7530: $ff
    rst $38                                       ; $7531: $ff
    rst $38                                       ; $7532: $ff
    rst $38                                       ; $7533: $ff
    rst $38                                       ; $7534: $ff
    rst $38                                       ; $7535: $ff
    rst $38                                       ; $7536: $ff
    rst $38                                       ; $7537: $ff
    rst $38                                       ; $7538: $ff
    rst $38                                       ; $7539: $ff
    rst $38                                       ; $753a: $ff
    rst $38                                       ; $753b: $ff
    rst $38                                       ; $753c: $ff
    rst $38                                       ; $753d: $ff
    rst $38                                       ; $753e: $ff
    rst $38                                       ; $753f: $ff
    rst $38                                       ; $7540: $ff
    rst $38                                       ; $7541: $ff
    rst $38                                       ; $7542: $ff
    rst $38                                       ; $7543: $ff
    rst $38                                       ; $7544: $ff
    rst $38                                       ; $7545: $ff
    rst $38                                       ; $7546: $ff
    rst $38                                       ; $7547: $ff
    rst $38                                       ; $7548: $ff
    rst $38                                       ; $7549: $ff
    rst $38                                       ; $754a: $ff
    rst $38                                       ; $754b: $ff
    rst $38                                       ; $754c: $ff
    rst $38                                       ; $754d: $ff
    rst $38                                       ; $754e: $ff
    rst $38                                       ; $754f: $ff
    rst $38                                       ; $7550: $ff
    rst $38                                       ; $7551: $ff
    rst $38                                       ; $7552: $ff
    rst $38                                       ; $7553: $ff
    rst $38                                       ; $7554: $ff
    rst $38                                       ; $7555: $ff
    rst $38                                       ; $7556: $ff
    rst $38                                       ; $7557: $ff
    rst $38                                       ; $7558: $ff
    rst $38                                       ; $7559: $ff
    rst $38                                       ; $755a: $ff
    rst $38                                       ; $755b: $ff
    rst $38                                       ; $755c: $ff
    rst $38                                       ; $755d: $ff
    rst $38                                       ; $755e: $ff
    rst $38                                       ; $755f: $ff
    rst $38                                       ; $7560: $ff
    rst $38                                       ; $7561: $ff
    rst $38                                       ; $7562: $ff
    rst $38                                       ; $7563: $ff
    rst $38                                       ; $7564: $ff
    rst $38                                       ; $7565: $ff
    rst $38                                       ; $7566: $ff
    rst $38                                       ; $7567: $ff
    rst $38                                       ; $7568: $ff
    rst $38                                       ; $7569: $ff
    rst $38                                       ; $756a: $ff
    rst $38                                       ; $756b: $ff
    rst $38                                       ; $756c: $ff
    rst $38                                       ; $756d: $ff
    rst $38                                       ; $756e: $ff
    rst $38                                       ; $756f: $ff
    rst $38                                       ; $7570: $ff
    rst $38                                       ; $7571: $ff
    rst $38                                       ; $7572: $ff
    rst $38                                       ; $7573: $ff
    rst $38                                       ; $7574: $ff
    rst $38                                       ; $7575: $ff
    rst $38                                       ; $7576: $ff
    rst $38                                       ; $7577: $ff
    rst $38                                       ; $7578: $ff
    rst $38                                       ; $7579: $ff
    rst $38                                       ; $757a: $ff
    rst $38                                       ; $757b: $ff
    rst $38                                       ; $757c: $ff
    rst $38                                       ; $757d: $ff
    rst $38                                       ; $757e: $ff
    rst $38                                       ; $757f: $ff
    rst $38                                       ; $7580: $ff
    rst $38                                       ; $7581: $ff
    rst $38                                       ; $7582: $ff
    rst $38                                       ; $7583: $ff
    rst $38                                       ; $7584: $ff
    rst $38                                       ; $7585: $ff
    rst $38                                       ; $7586: $ff
    rst $38                                       ; $7587: $ff
    rst $38                                       ; $7588: $ff
    rst $38                                       ; $7589: $ff
    rst $38                                       ; $758a: $ff
    rst $38                                       ; $758b: $ff
    rst $38                                       ; $758c: $ff
    rst $38                                       ; $758d: $ff
    rst $38                                       ; $758e: $ff
    rst $38                                       ; $758f: $ff
    rst $38                                       ; $7590: $ff
    rst $38                                       ; $7591: $ff
    rst $38                                       ; $7592: $ff
    rst $38                                       ; $7593: $ff
    rst $38                                       ; $7594: $ff
    rst $38                                       ; $7595: $ff
    rst $38                                       ; $7596: $ff
    rst $38                                       ; $7597: $ff
    rst $38                                       ; $7598: $ff
    rst $38                                       ; $7599: $ff
    rst $38                                       ; $759a: $ff
    rst $38                                       ; $759b: $ff
    rst $38                                       ; $759c: $ff
    rst $38                                       ; $759d: $ff
    rst $38                                       ; $759e: $ff
    rst $38                                       ; $759f: $ff
    rst $38                                       ; $75a0: $ff
    rst $38                                       ; $75a1: $ff
    rst $38                                       ; $75a2: $ff
    rst $38                                       ; $75a3: $ff
    rst $38                                       ; $75a4: $ff
    rst $38                                       ; $75a5: $ff
    rst $38                                       ; $75a6: $ff
    rst $38                                       ; $75a7: $ff
    rst $38                                       ; $75a8: $ff
    rst $38                                       ; $75a9: $ff
    rst $38                                       ; $75aa: $ff
    rst $38                                       ; $75ab: $ff
    rst $38                                       ; $75ac: $ff
    rst $38                                       ; $75ad: $ff
    rst $38                                       ; $75ae: $ff
    rst $38                                       ; $75af: $ff
    rst $38                                       ; $75b0: $ff
    rst $38                                       ; $75b1: $ff
    rst $38                                       ; $75b2: $ff
    rst $38                                       ; $75b3: $ff
    rst $38                                       ; $75b4: $ff
    rst $38                                       ; $75b5: $ff
    rst $38                                       ; $75b6: $ff
    rst $38                                       ; $75b7: $ff
    rst $38                                       ; $75b8: $ff
    rst $38                                       ; $75b9: $ff
    rst $38                                       ; $75ba: $ff
    rst $38                                       ; $75bb: $ff
    rst $38                                       ; $75bc: $ff
    rst $38                                       ; $75bd: $ff
    rst $38                                       ; $75be: $ff
    rst $38                                       ; $75bf: $ff
    rst $38                                       ; $75c0: $ff
    rst $38                                       ; $75c1: $ff
    rst $38                                       ; $75c2: $ff
    rst $38                                       ; $75c3: $ff
    rst $38                                       ; $75c4: $ff
    rst $38                                       ; $75c5: $ff
    rst $38                                       ; $75c6: $ff
    rst $38                                       ; $75c7: $ff
    rst $38                                       ; $75c8: $ff
    rst $38                                       ; $75c9: $ff
    rst $38                                       ; $75ca: $ff
    rst $38                                       ; $75cb: $ff
    rst $38                                       ; $75cc: $ff
    rst $38                                       ; $75cd: $ff
    rst $38                                       ; $75ce: $ff
    rst $38                                       ; $75cf: $ff
    rst $38                                       ; $75d0: $ff
    rst $38                                       ; $75d1: $ff
    rst $38                                       ; $75d2: $ff
    rst $38                                       ; $75d3: $ff
    rst $38                                       ; $75d4: $ff
    rst $38                                       ; $75d5: $ff
    rst $38                                       ; $75d6: $ff
    rst $38                                       ; $75d7: $ff
    rst $38                                       ; $75d8: $ff
    rst $38                                       ; $75d9: $ff
    rst $38                                       ; $75da: $ff
    rst $38                                       ; $75db: $ff
    rst $38                                       ; $75dc: $ff
    rst $38                                       ; $75dd: $ff
    rst $38                                       ; $75de: $ff
    rst $38                                       ; $75df: $ff
    rst $38                                       ; $75e0: $ff
    rst $38                                       ; $75e1: $ff
    rst $38                                       ; $75e2: $ff
    rst $38                                       ; $75e3: $ff
    rst $38                                       ; $75e4: $ff
    rst $38                                       ; $75e5: $ff
    rst $38                                       ; $75e6: $ff
    rst $38                                       ; $75e7: $ff
    rst $38                                       ; $75e8: $ff
    rst $38                                       ; $75e9: $ff
    rst $38                                       ; $75ea: $ff
    rst $38                                       ; $75eb: $ff
    rst $38                                       ; $75ec: $ff
    rst $38                                       ; $75ed: $ff
    rst $38                                       ; $75ee: $ff
    rst $38                                       ; $75ef: $ff
    rst $38                                       ; $75f0: $ff
    rst $38                                       ; $75f1: $ff
    rst $38                                       ; $75f2: $ff
    rst $38                                       ; $75f3: $ff
    rst $38                                       ; $75f4: $ff
    rst $38                                       ; $75f5: $ff
    rst $38                                       ; $75f6: $ff
    rst $38                                       ; $75f7: $ff
    rst $38                                       ; $75f8: $ff
    rst $38                                       ; $75f9: $ff
    rst $38                                       ; $75fa: $ff
    rst $38                                       ; $75fb: $ff
    rst $38                                       ; $75fc: $ff
    rst $38                                       ; $75fd: $ff
    rst $38                                       ; $75fe: $ff
    rst $38                                       ; $75ff: $ff
    rst $38                                       ; $7600: $ff
    rst $38                                       ; $7601: $ff
    rst $38                                       ; $7602: $ff
    rst $38                                       ; $7603: $ff
    rst $38                                       ; $7604: $ff
    rst $38                                       ; $7605: $ff
    rst $38                                       ; $7606: $ff
    rst $38                                       ; $7607: $ff
    rst $38                                       ; $7608: $ff
    rst $38                                       ; $7609: $ff
    rst $38                                       ; $760a: $ff
    rst $38                                       ; $760b: $ff
    rst $38                                       ; $760c: $ff
    rst $38                                       ; $760d: $ff
    rst $38                                       ; $760e: $ff
    rst $38                                       ; $760f: $ff
    rst $38                                       ; $7610: $ff
    rst $38                                       ; $7611: $ff
    rst $38                                       ; $7612: $ff
    rst $38                                       ; $7613: $ff
    rst $38                                       ; $7614: $ff
    rst $38                                       ; $7615: $ff
    rst $38                                       ; $7616: $ff
    rst $38                                       ; $7617: $ff
    rst $38                                       ; $7618: $ff
    rst $38                                       ; $7619: $ff
    rst $38                                       ; $761a: $ff
    rst $38                                       ; $761b: $ff
    rst $38                                       ; $761c: $ff
    rst $38                                       ; $761d: $ff
    rst $38                                       ; $761e: $ff
    rst $38                                       ; $761f: $ff
    rst $38                                       ; $7620: $ff
    rst $38                                       ; $7621: $ff
    rst $38                                       ; $7622: $ff
    rst $38                                       ; $7623: $ff
    rst $38                                       ; $7624: $ff
    rst $38                                       ; $7625: $ff
    rst $38                                       ; $7626: $ff
    rst $38                                       ; $7627: $ff
    rst $38                                       ; $7628: $ff
    rst $38                                       ; $7629: $ff
    rst $38                                       ; $762a: $ff
    rst $38                                       ; $762b: $ff
    rst $38                                       ; $762c: $ff
    rst $38                                       ; $762d: $ff
    rst $38                                       ; $762e: $ff
    rst $38                                       ; $762f: $ff
    rst $38                                       ; $7630: $ff
    rst $38                                       ; $7631: $ff
    rst $38                                       ; $7632: $ff
    rst $38                                       ; $7633: $ff
    rst $38                                       ; $7634: $ff
    rst $38                                       ; $7635: $ff
    rst $38                                       ; $7636: $ff
    rst $38                                       ; $7637: $ff
    rst $38                                       ; $7638: $ff
    rst $38                                       ; $7639: $ff
    rst $38                                       ; $763a: $ff
    rst $38                                       ; $763b: $ff
    rst $38                                       ; $763c: $ff
    rst $38                                       ; $763d: $ff
    rst $38                                       ; $763e: $ff
    rst $38                                       ; $763f: $ff
    rst $38                                       ; $7640: $ff
    rst $38                                       ; $7641: $ff
    rst $38                                       ; $7642: $ff
    rst $38                                       ; $7643: $ff
    rst $38                                       ; $7644: $ff
    rst $38                                       ; $7645: $ff
    rst $38                                       ; $7646: $ff
    rst $38                                       ; $7647: $ff
    rst $38                                       ; $7648: $ff
    rst $38                                       ; $7649: $ff
    rst $38                                       ; $764a: $ff
    rst $38                                       ; $764b: $ff
    rst $38                                       ; $764c: $ff
    rst $38                                       ; $764d: $ff
    rst $38                                       ; $764e: $ff
    rst $38                                       ; $764f: $ff
    rst $38                                       ; $7650: $ff
    rst $38                                       ; $7651: $ff
    rst $38                                       ; $7652: $ff
    rst $38                                       ; $7653: $ff
    rst $38                                       ; $7654: $ff
    rst $38                                       ; $7655: $ff
    rst $38                                       ; $7656: $ff
    rst $38                                       ; $7657: $ff
    rst $38                                       ; $7658: $ff
    rst $38                                       ; $7659: $ff
    rst $38                                       ; $765a: $ff
    rst $38                                       ; $765b: $ff
    rst $38                                       ; $765c: $ff
    rst $38                                       ; $765d: $ff
    rst $38                                       ; $765e: $ff
    rst $38                                       ; $765f: $ff
    rst $38                                       ; $7660: $ff
    rst $38                                       ; $7661: $ff
    rst $38                                       ; $7662: $ff
    rst $38                                       ; $7663: $ff
    rst $38                                       ; $7664: $ff
    rst $38                                       ; $7665: $ff
    rst $38                                       ; $7666: $ff
    rst $38                                       ; $7667: $ff
    rst $38                                       ; $7668: $ff
    rst $38                                       ; $7669: $ff
    rst $38                                       ; $766a: $ff
    rst $38                                       ; $766b: $ff
    rst $38                                       ; $766c: $ff
    rst $38                                       ; $766d: $ff
    rst $38                                       ; $766e: $ff
    rst $38                                       ; $766f: $ff
    rst $38                                       ; $7670: $ff
    rst $38                                       ; $7671: $ff
    rst $38                                       ; $7672: $ff
    rst $38                                       ; $7673: $ff
    rst $38                                       ; $7674: $ff
    rst $38                                       ; $7675: $ff
    rst $38                                       ; $7676: $ff
    rst $38                                       ; $7677: $ff
    rst $38                                       ; $7678: $ff
    rst $38                                       ; $7679: $ff
    rst $38                                       ; $767a: $ff
    rst $38                                       ; $767b: $ff
    rst $38                                       ; $767c: $ff
    rst $38                                       ; $767d: $ff
    rst $38                                       ; $767e: $ff
    rst $38                                       ; $767f: $ff
    rst $38                                       ; $7680: $ff
    rst $38                                       ; $7681: $ff
    rst $38                                       ; $7682: $ff
    rst $38                                       ; $7683: $ff
    rst $38                                       ; $7684: $ff
    rst $38                                       ; $7685: $ff
    rst $38                                       ; $7686: $ff
    rst $38                                       ; $7687: $ff
    rst $38                                       ; $7688: $ff
    rst $38                                       ; $7689: $ff
    rst $38                                       ; $768a: $ff
    rst $38                                       ; $768b: $ff
    rst $38                                       ; $768c: $ff
    rst $38                                       ; $768d: $ff
    rst $38                                       ; $768e: $ff
    rst $38                                       ; $768f: $ff
    rst $38                                       ; $7690: $ff
    rst $38                                       ; $7691: $ff
    rst $38                                       ; $7692: $ff
    rst $38                                       ; $7693: $ff
    rst $38                                       ; $7694: $ff
    rst $38                                       ; $7695: $ff
    rst $38                                       ; $7696: $ff
    rst $38                                       ; $7697: $ff
    rst $38                                       ; $7698: $ff
    rst $38                                       ; $7699: $ff
    rst $38                                       ; $769a: $ff
    rst $38                                       ; $769b: $ff
    rst $38                                       ; $769c: $ff
    rst $38                                       ; $769d: $ff
    rst $38                                       ; $769e: $ff
    rst $38                                       ; $769f: $ff
    rst $38                                       ; $76a0: $ff
    rst $38                                       ; $76a1: $ff
    rst $38                                       ; $76a2: $ff
    rst $38                                       ; $76a3: $ff
    rst $38                                       ; $76a4: $ff
    rst $38                                       ; $76a5: $ff
    rst $38                                       ; $76a6: $ff
    rst $38                                       ; $76a7: $ff
    rst $38                                       ; $76a8: $ff
    rst $38                                       ; $76a9: $ff
    rst $38                                       ; $76aa: $ff
    rst $38                                       ; $76ab: $ff
    rst $38                                       ; $76ac: $ff
    rst $38                                       ; $76ad: $ff
    rst $38                                       ; $76ae: $ff
    rst $38                                       ; $76af: $ff
    rst $38                                       ; $76b0: $ff
    rst $38                                       ; $76b1: $ff
    rst $38                                       ; $76b2: $ff
    rst $38                                       ; $76b3: $ff
    rst $38                                       ; $76b4: $ff
    rst $38                                       ; $76b5: $ff
    rst $38                                       ; $76b6: $ff
    rst $38                                       ; $76b7: $ff
    rst $38                                       ; $76b8: $ff
    rst $38                                       ; $76b9: $ff
    rst $38                                       ; $76ba: $ff
    rst $38                                       ; $76bb: $ff
    rst $38                                       ; $76bc: $ff
    rst $38                                       ; $76bd: $ff
    rst $38                                       ; $76be: $ff
    rst $38                                       ; $76bf: $ff
    rst $38                                       ; $76c0: $ff
    rst $38                                       ; $76c1: $ff
    rst $38                                       ; $76c2: $ff
    rst $38                                       ; $76c3: $ff
    rst $38                                       ; $76c4: $ff
    rst $38                                       ; $76c5: $ff
    rst $38                                       ; $76c6: $ff
    rst $38                                       ; $76c7: $ff
    rst $38                                       ; $76c8: $ff
    rst $38                                       ; $76c9: $ff
    rst $38                                       ; $76ca: $ff
    rst $38                                       ; $76cb: $ff
    rst $38                                       ; $76cc: $ff
    rst $38                                       ; $76cd: $ff
    rst $38                                       ; $76ce: $ff
    rst $38                                       ; $76cf: $ff
    rst $38                                       ; $76d0: $ff
    rst $38                                       ; $76d1: $ff
    rst $38                                       ; $76d2: $ff
    rst $38                                       ; $76d3: $ff
    rst $38                                       ; $76d4: $ff
    rst $38                                       ; $76d5: $ff
    rst $38                                       ; $76d6: $ff
    rst $38                                       ; $76d7: $ff
    rst $38                                       ; $76d8: $ff
    rst $38                                       ; $76d9: $ff
    rst $38                                       ; $76da: $ff
    rst $38                                       ; $76db: $ff
    rst $38                                       ; $76dc: $ff
    rst $38                                       ; $76dd: $ff
    rst $38                                       ; $76de: $ff
    rst $38                                       ; $76df: $ff
    rst $38                                       ; $76e0: $ff
    rst $38                                       ; $76e1: $ff
    rst $38                                       ; $76e2: $ff
    rst $38                                       ; $76e3: $ff
    rst $38                                       ; $76e4: $ff
    rst $38                                       ; $76e5: $ff
    rst $38                                       ; $76e6: $ff
    rst $38                                       ; $76e7: $ff
    rst $38                                       ; $76e8: $ff
    rst $38                                       ; $76e9: $ff
    rst $38                                       ; $76ea: $ff
    rst $38                                       ; $76eb: $ff
    rst $38                                       ; $76ec: $ff
    rst $38                                       ; $76ed: $ff
    rst $38                                       ; $76ee: $ff
    rst $38                                       ; $76ef: $ff
    rst $38                                       ; $76f0: $ff
    rst $38                                       ; $76f1: $ff
    rst $38                                       ; $76f2: $ff
    rst $38                                       ; $76f3: $ff
    rst $38                                       ; $76f4: $ff
    rst $38                                       ; $76f5: $ff
    rst $38                                       ; $76f6: $ff
    rst $38                                       ; $76f7: $ff
    rst $38                                       ; $76f8: $ff
    rst $38                                       ; $76f9: $ff
    rst $38                                       ; $76fa: $ff
    rst $38                                       ; $76fb: $ff
    rst $38                                       ; $76fc: $ff
    rst $38                                       ; $76fd: $ff
    rst $38                                       ; $76fe: $ff
    rst $38                                       ; $76ff: $ff
    rst $38                                       ; $7700: $ff
    rst $38                                       ; $7701: $ff
    rst $38                                       ; $7702: $ff
    rst $38                                       ; $7703: $ff
    rst $38                                       ; $7704: $ff
    rst $38                                       ; $7705: $ff
    rst $38                                       ; $7706: $ff
    rst $38                                       ; $7707: $ff
    rst $38                                       ; $7708: $ff
    rst $38                                       ; $7709: $ff
    rst $38                                       ; $770a: $ff
    rst $38                                       ; $770b: $ff
    rst $38                                       ; $770c: $ff
    rst $38                                       ; $770d: $ff
    rst $38                                       ; $770e: $ff
    rst $38                                       ; $770f: $ff
    rst $38                                       ; $7710: $ff
    rst $38                                       ; $7711: $ff
    rst $38                                       ; $7712: $ff
    rst $38                                       ; $7713: $ff
    rst $38                                       ; $7714: $ff
    rst $38                                       ; $7715: $ff
    rst $38                                       ; $7716: $ff
    rst $38                                       ; $7717: $ff
    rst $38                                       ; $7718: $ff
    rst $38                                       ; $7719: $ff
    rst $38                                       ; $771a: $ff
    rst $38                                       ; $771b: $ff
    rst $38                                       ; $771c: $ff
    rst $38                                       ; $771d: $ff
    rst $38                                       ; $771e: $ff
    rst $38                                       ; $771f: $ff
    rst $38                                       ; $7720: $ff
    rst $38                                       ; $7721: $ff
    rst $38                                       ; $7722: $ff
    rst $38                                       ; $7723: $ff
    rst $38                                       ; $7724: $ff
    rst $38                                       ; $7725: $ff
    rst $38                                       ; $7726: $ff
    rst $38                                       ; $7727: $ff
    rst $38                                       ; $7728: $ff
    rst $38                                       ; $7729: $ff
    rst $38                                       ; $772a: $ff
    rst $38                                       ; $772b: $ff
    rst $38                                       ; $772c: $ff
    rst $38                                       ; $772d: $ff
    rst $38                                       ; $772e: $ff
    rst $38                                       ; $772f: $ff
    rst $38                                       ; $7730: $ff
    rst $38                                       ; $7731: $ff
    rst $38                                       ; $7732: $ff
    rst $38                                       ; $7733: $ff
    rst $38                                       ; $7734: $ff
    rst $38                                       ; $7735: $ff
    rst $38                                       ; $7736: $ff
    rst $38                                       ; $7737: $ff
    rst $38                                       ; $7738: $ff
    rst $38                                       ; $7739: $ff
    rst $38                                       ; $773a: $ff
    rst $38                                       ; $773b: $ff
    rst $38                                       ; $773c: $ff
    rst $38                                       ; $773d: $ff
    rst $38                                       ; $773e: $ff
    rst $38                                       ; $773f: $ff
    rst $38                                       ; $7740: $ff
    rst $38                                       ; $7741: $ff
    rst $38                                       ; $7742: $ff
    rst $38                                       ; $7743: $ff
    rst $38                                       ; $7744: $ff
    rst $38                                       ; $7745: $ff
    rst $38                                       ; $7746: $ff
    rst $38                                       ; $7747: $ff
    rst $38                                       ; $7748: $ff
    rst $38                                       ; $7749: $ff
    rst $38                                       ; $774a: $ff
    rst $38                                       ; $774b: $ff
    rst $38                                       ; $774c: $ff
    rst $38                                       ; $774d: $ff
    rst $38                                       ; $774e: $ff
    rst $38                                       ; $774f: $ff
    rst $38                                       ; $7750: $ff
    rst $38                                       ; $7751: $ff
    rst $38                                       ; $7752: $ff
    rst $38                                       ; $7753: $ff
    rst $38                                       ; $7754: $ff
    rst $38                                       ; $7755: $ff
    rst $38                                       ; $7756: $ff
    rst $38                                       ; $7757: $ff
    rst $38                                       ; $7758: $ff
    rst $38                                       ; $7759: $ff
    rst $38                                       ; $775a: $ff
    rst $38                                       ; $775b: $ff
    rst $38                                       ; $775c: $ff
    rst $38                                       ; $775d: $ff
    rst $38                                       ; $775e: $ff
    rst $38                                       ; $775f: $ff
    rst $38                                       ; $7760: $ff
    rst $38                                       ; $7761: $ff
    rst $38                                       ; $7762: $ff
    rst $38                                       ; $7763: $ff
    rst $38                                       ; $7764: $ff
    rst $38                                       ; $7765: $ff
    rst $38                                       ; $7766: $ff
    rst $38                                       ; $7767: $ff
    rst $38                                       ; $7768: $ff
    rst $38                                       ; $7769: $ff
    rst $38                                       ; $776a: $ff
    rst $38                                       ; $776b: $ff
    rst $38                                       ; $776c: $ff
    rst $38                                       ; $776d: $ff
    rst $38                                       ; $776e: $ff
    rst $38                                       ; $776f: $ff
    rst $38                                       ; $7770: $ff
    rst $38                                       ; $7771: $ff
    rst $38                                       ; $7772: $ff
    rst $38                                       ; $7773: $ff
    rst $38                                       ; $7774: $ff
    rst $38                                       ; $7775: $ff
    rst $38                                       ; $7776: $ff
    rst $38                                       ; $7777: $ff
    rst $38                                       ; $7778: $ff
    rst $38                                       ; $7779: $ff
    rst $38                                       ; $777a: $ff
    rst $38                                       ; $777b: $ff
    rst $38                                       ; $777c: $ff
    rst $38                                       ; $777d: $ff
    rst $38                                       ; $777e: $ff
    rst $38                                       ; $777f: $ff
    rst $38                                       ; $7780: $ff
    rst $38                                       ; $7781: $ff
    rst $38                                       ; $7782: $ff
    rst $38                                       ; $7783: $ff
    rst $38                                       ; $7784: $ff
    rst $38                                       ; $7785: $ff
    rst $38                                       ; $7786: $ff
    rst $38                                       ; $7787: $ff
    rst $38                                       ; $7788: $ff
    rst $38                                       ; $7789: $ff
    rst $38                                       ; $778a: $ff
    rst $38                                       ; $778b: $ff
    rst $38                                       ; $778c: $ff
    rst $38                                       ; $778d: $ff
    rst $38                                       ; $778e: $ff
    rst $38                                       ; $778f: $ff
    rst $38                                       ; $7790: $ff
    rst $38                                       ; $7791: $ff
    rst $38                                       ; $7792: $ff
    rst $38                                       ; $7793: $ff
    rst $38                                       ; $7794: $ff
    rst $38                                       ; $7795: $ff
    rst $38                                       ; $7796: $ff
    rst $38                                       ; $7797: $ff
    rst $38                                       ; $7798: $ff
    rst $38                                       ; $7799: $ff
    rst $38                                       ; $779a: $ff
    rst $38                                       ; $779b: $ff
    rst $38                                       ; $779c: $ff
    rst $38                                       ; $779d: $ff
    rst $38                                       ; $779e: $ff
    rst $38                                       ; $779f: $ff
    rst $38                                       ; $77a0: $ff
    rst $38                                       ; $77a1: $ff
    rst $38                                       ; $77a2: $ff
    rst $38                                       ; $77a3: $ff
    rst $38                                       ; $77a4: $ff
    rst $38                                       ; $77a5: $ff
    rst $38                                       ; $77a6: $ff
    rst $38                                       ; $77a7: $ff
    rst $38                                       ; $77a8: $ff
    rst $38                                       ; $77a9: $ff
    rst $38                                       ; $77aa: $ff
    rst $38                                       ; $77ab: $ff
    rst $38                                       ; $77ac: $ff
    rst $38                                       ; $77ad: $ff
    rst $38                                       ; $77ae: $ff
    rst $38                                       ; $77af: $ff
    rst $38                                       ; $77b0: $ff
    rst $38                                       ; $77b1: $ff
    rst $38                                       ; $77b2: $ff
    rst $38                                       ; $77b3: $ff
    rst $38                                       ; $77b4: $ff
    rst $38                                       ; $77b5: $ff
    rst $38                                       ; $77b6: $ff
    rst $38                                       ; $77b7: $ff
    rst $38                                       ; $77b8: $ff
    rst $38                                       ; $77b9: $ff
    rst $38                                       ; $77ba: $ff
    rst $38                                       ; $77bb: $ff
    rst $38                                       ; $77bc: $ff
    rst $38                                       ; $77bd: $ff
    rst $38                                       ; $77be: $ff
    rst $38                                       ; $77bf: $ff
    rst $38                                       ; $77c0: $ff
    rst $38                                       ; $77c1: $ff
    rst $38                                       ; $77c2: $ff
    rst $38                                       ; $77c3: $ff
    rst $38                                       ; $77c4: $ff
    rst $38                                       ; $77c5: $ff
    rst $38                                       ; $77c6: $ff
    rst $38                                       ; $77c7: $ff
    rst $38                                       ; $77c8: $ff
    rst $38                                       ; $77c9: $ff
    rst $38                                       ; $77ca: $ff
    rst $38                                       ; $77cb: $ff
    rst $38                                       ; $77cc: $ff
    rst $38                                       ; $77cd: $ff
    rst $38                                       ; $77ce: $ff
    rst $38                                       ; $77cf: $ff
    rst $38                                       ; $77d0: $ff
    rst $38                                       ; $77d1: $ff
    rst $38                                       ; $77d2: $ff
    rst $38                                       ; $77d3: $ff
    rst $38                                       ; $77d4: $ff
    rst $38                                       ; $77d5: $ff
    rst $38                                       ; $77d6: $ff
    rst $38                                       ; $77d7: $ff
    rst $38                                       ; $77d8: $ff
    rst $38                                       ; $77d9: $ff
    rst $38                                       ; $77da: $ff
    rst $38                                       ; $77db: $ff
    rst $38                                       ; $77dc: $ff
    rst $38                                       ; $77dd: $ff
    rst $38                                       ; $77de: $ff
    rst $38                                       ; $77df: $ff
    rst $38                                       ; $77e0: $ff
    rst $38                                       ; $77e1: $ff
    rst $38                                       ; $77e2: $ff
    rst $38                                       ; $77e3: $ff
    rst $38                                       ; $77e4: $ff
    rst $38                                       ; $77e5: $ff
    rst $38                                       ; $77e6: $ff
    rst $38                                       ; $77e7: $ff
    rst $38                                       ; $77e8: $ff
    rst $38                                       ; $77e9: $ff
    rst $38                                       ; $77ea: $ff
    rst $38                                       ; $77eb: $ff
    rst $38                                       ; $77ec: $ff
    rst $38                                       ; $77ed: $ff
    rst $38                                       ; $77ee: $ff
    rst $38                                       ; $77ef: $ff
    rst $38                                       ; $77f0: $ff
    rst $38                                       ; $77f1: $ff
    rst $38                                       ; $77f2: $ff
    rst $38                                       ; $77f3: $ff
    rst $38                                       ; $77f4: $ff
    rst $38                                       ; $77f5: $ff
    rst $38                                       ; $77f6: $ff
    rst $38                                       ; $77f7: $ff
    rst $38                                       ; $77f8: $ff
    rst $38                                       ; $77f9: $ff
    rst $38                                       ; $77fa: $ff
    rst $38                                       ; $77fb: $ff
    rst $38                                       ; $77fc: $ff
    rst $38                                       ; $77fd: $ff
    rst $38                                       ; $77fe: $ff
    rst $38                                       ; $77ff: $ff
    rst $38                                       ; $7800: $ff
    rst $38                                       ; $7801: $ff
    rst $38                                       ; $7802: $ff
    rst $38                                       ; $7803: $ff
    rst $38                                       ; $7804: $ff
    rst $38                                       ; $7805: $ff
    rst $38                                       ; $7806: $ff
    rst $38                                       ; $7807: $ff
    rst $38                                       ; $7808: $ff
    rst $38                                       ; $7809: $ff
    rst $38                                       ; $780a: $ff
    rst $38                                       ; $780b: $ff
    rst $38                                       ; $780c: $ff
    rst $38                                       ; $780d: $ff
    rst $38                                       ; $780e: $ff
    rst $38                                       ; $780f: $ff
    rst $38                                       ; $7810: $ff
    rst $38                                       ; $7811: $ff
    rst $38                                       ; $7812: $ff
    rst $38                                       ; $7813: $ff
    rst $38                                       ; $7814: $ff
    rst $38                                       ; $7815: $ff
    rst $38                                       ; $7816: $ff
    rst $38                                       ; $7817: $ff
    rst $38                                       ; $7818: $ff
    rst $38                                       ; $7819: $ff
    rst $38                                       ; $781a: $ff
    rst $38                                       ; $781b: $ff
    rst $38                                       ; $781c: $ff
    rst $38                                       ; $781d: $ff
    rst $38                                       ; $781e: $ff
    rst $38                                       ; $781f: $ff
    rst $38                                       ; $7820: $ff
    rst $38                                       ; $7821: $ff
    rst $38                                       ; $7822: $ff
    rst $38                                       ; $7823: $ff
    rst $38                                       ; $7824: $ff
    rst $38                                       ; $7825: $ff
    rst $38                                       ; $7826: $ff
    rst $38                                       ; $7827: $ff
    rst $38                                       ; $7828: $ff
    rst $38                                       ; $7829: $ff
    rst $38                                       ; $782a: $ff
    rst $38                                       ; $782b: $ff
    rst $38                                       ; $782c: $ff
    rst $38                                       ; $782d: $ff
    rst $38                                       ; $782e: $ff
    rst $38                                       ; $782f: $ff
    rst $38                                       ; $7830: $ff
    rst $38                                       ; $7831: $ff
    rst $38                                       ; $7832: $ff
    rst $38                                       ; $7833: $ff
    rst $38                                       ; $7834: $ff
    rst $38                                       ; $7835: $ff
    rst $38                                       ; $7836: $ff
    rst $38                                       ; $7837: $ff
    rst $38                                       ; $7838: $ff
    rst $38                                       ; $7839: $ff
    rst $38                                       ; $783a: $ff
    rst $38                                       ; $783b: $ff
    rst $38                                       ; $783c: $ff
    rst $38                                       ; $783d: $ff
    rst $38                                       ; $783e: $ff
    rst $38                                       ; $783f: $ff
    rst $38                                       ; $7840: $ff
    rst $38                                       ; $7841: $ff
    rst $38                                       ; $7842: $ff
    rst $38                                       ; $7843: $ff
    rst $38                                       ; $7844: $ff
    rst $38                                       ; $7845: $ff
    rst $38                                       ; $7846: $ff
    rst $38                                       ; $7847: $ff
    rst $38                                       ; $7848: $ff
    rst $38                                       ; $7849: $ff
    rst $38                                       ; $784a: $ff
    rst $38                                       ; $784b: $ff
    rst $38                                       ; $784c: $ff
    rst $38                                       ; $784d: $ff
    rst $38                                       ; $784e: $ff
    rst $38                                       ; $784f: $ff
    rst $38                                       ; $7850: $ff
    rst $38                                       ; $7851: $ff
    rst $38                                       ; $7852: $ff
    rst $38                                       ; $7853: $ff
    rst $38                                       ; $7854: $ff
    rst $38                                       ; $7855: $ff
    rst $38                                       ; $7856: $ff
    rst $38                                       ; $7857: $ff
    rst $38                                       ; $7858: $ff
    rst $38                                       ; $7859: $ff
    rst $38                                       ; $785a: $ff
    rst $38                                       ; $785b: $ff
    rst $38                                       ; $785c: $ff
    rst $38                                       ; $785d: $ff
    rst $38                                       ; $785e: $ff
    rst $38                                       ; $785f: $ff
    rst $38                                       ; $7860: $ff
    rst $38                                       ; $7861: $ff
    rst $38                                       ; $7862: $ff
    rst $38                                       ; $7863: $ff
    rst $38                                       ; $7864: $ff
    rst $38                                       ; $7865: $ff
    rst $38                                       ; $7866: $ff
    rst $38                                       ; $7867: $ff
    rst $38                                       ; $7868: $ff
    rst $38                                       ; $7869: $ff
    rst $38                                       ; $786a: $ff
    rst $38                                       ; $786b: $ff
    rst $38                                       ; $786c: $ff
    rst $38                                       ; $786d: $ff
    rst $38                                       ; $786e: $ff
    rst $38                                       ; $786f: $ff
    rst $38                                       ; $7870: $ff
    rst $38                                       ; $7871: $ff
    rst $38                                       ; $7872: $ff
    rst $38                                       ; $7873: $ff
    rst $38                                       ; $7874: $ff
    rst $38                                       ; $7875: $ff
    rst $38                                       ; $7876: $ff
    rst $38                                       ; $7877: $ff
    rst $38                                       ; $7878: $ff
    rst $38                                       ; $7879: $ff
    rst $38                                       ; $787a: $ff
    rst $38                                       ; $787b: $ff
    rst $38                                       ; $787c: $ff
    rst $38                                       ; $787d: $ff
    rst $38                                       ; $787e: $ff
    rst $38                                       ; $787f: $ff
    rst $38                                       ; $7880: $ff
    rst $38                                       ; $7881: $ff
    rst $38                                       ; $7882: $ff
    rst $38                                       ; $7883: $ff
    rst $38                                       ; $7884: $ff
    rst $38                                       ; $7885: $ff
    rst $38                                       ; $7886: $ff
    rst $38                                       ; $7887: $ff
    rst $38                                       ; $7888: $ff
    rst $38                                       ; $7889: $ff
    rst $38                                       ; $788a: $ff
    rst $38                                       ; $788b: $ff
    rst $38                                       ; $788c: $ff
    rst $38                                       ; $788d: $ff
    rst $38                                       ; $788e: $ff
    rst $38                                       ; $788f: $ff
    rst $38                                       ; $7890: $ff
    rst $38                                       ; $7891: $ff
    rst $38                                       ; $7892: $ff
    rst $38                                       ; $7893: $ff
    rst $38                                       ; $7894: $ff
    rst $38                                       ; $7895: $ff
    rst $38                                       ; $7896: $ff
    rst $38                                       ; $7897: $ff
    rst $38                                       ; $7898: $ff
    rst $38                                       ; $7899: $ff
    rst $38                                       ; $789a: $ff
    rst $38                                       ; $789b: $ff
    rst $38                                       ; $789c: $ff
    rst $38                                       ; $789d: $ff
    rst $38                                       ; $789e: $ff
    rst $38                                       ; $789f: $ff
    rst $38                                       ; $78a0: $ff
    rst $38                                       ; $78a1: $ff
    rst $38                                       ; $78a2: $ff
    rst $38                                       ; $78a3: $ff
    rst $38                                       ; $78a4: $ff
    rst $38                                       ; $78a5: $ff
    rst $38                                       ; $78a6: $ff
    rst $38                                       ; $78a7: $ff
    rst $38                                       ; $78a8: $ff
    rst $38                                       ; $78a9: $ff
    rst $38                                       ; $78aa: $ff
    rst $38                                       ; $78ab: $ff
    rst $38                                       ; $78ac: $ff
    rst $38                                       ; $78ad: $ff
    rst $38                                       ; $78ae: $ff
    rst $38                                       ; $78af: $ff
    rst $38                                       ; $78b0: $ff
    rst $38                                       ; $78b1: $ff
    rst $38                                       ; $78b2: $ff
    rst $38                                       ; $78b3: $ff
    rst $38                                       ; $78b4: $ff
    rst $38                                       ; $78b5: $ff
    rst $38                                       ; $78b6: $ff
    rst $38                                       ; $78b7: $ff
    rst $38                                       ; $78b8: $ff
    rst $38                                       ; $78b9: $ff
    rst $38                                       ; $78ba: $ff
    rst $38                                       ; $78bb: $ff
    rst $38                                       ; $78bc: $ff
    rst $38                                       ; $78bd: $ff
    rst $38                                       ; $78be: $ff
    rst $38                                       ; $78bf: $ff
    rst $38                                       ; $78c0: $ff
    rst $38                                       ; $78c1: $ff
    rst $38                                       ; $78c2: $ff
    rst $38                                       ; $78c3: $ff
    rst $38                                       ; $78c4: $ff
    rst $38                                       ; $78c5: $ff
    rst $38                                       ; $78c6: $ff
    rst $38                                       ; $78c7: $ff
    rst $38                                       ; $78c8: $ff
    rst $38                                       ; $78c9: $ff
    rst $38                                       ; $78ca: $ff
    rst $38                                       ; $78cb: $ff
    rst $38                                       ; $78cc: $ff
    rst $38                                       ; $78cd: $ff
    rst $38                                       ; $78ce: $ff
    rst $38                                       ; $78cf: $ff
    rst $38                                       ; $78d0: $ff
    rst $38                                       ; $78d1: $ff
    rst $38                                       ; $78d2: $ff
    rst $38                                       ; $78d3: $ff
    rst $38                                       ; $78d4: $ff
    rst $38                                       ; $78d5: $ff
    rst $38                                       ; $78d6: $ff
    rst $38                                       ; $78d7: $ff
    rst $38                                       ; $78d8: $ff
    rst $38                                       ; $78d9: $ff
    rst $38                                       ; $78da: $ff
    rst $38                                       ; $78db: $ff
    rst $38                                       ; $78dc: $ff
    rst $38                                       ; $78dd: $ff
    rst $38                                       ; $78de: $ff
    rst $38                                       ; $78df: $ff
    rst $38                                       ; $78e0: $ff
    rst $38                                       ; $78e1: $ff
    rst $38                                       ; $78e2: $ff
    rst $38                                       ; $78e3: $ff
    rst $38                                       ; $78e4: $ff
    rst $38                                       ; $78e5: $ff
    rst $38                                       ; $78e6: $ff
    rst $38                                       ; $78e7: $ff
    rst $38                                       ; $78e8: $ff
    rst $38                                       ; $78e9: $ff
    rst $38                                       ; $78ea: $ff
    rst $38                                       ; $78eb: $ff
    rst $38                                       ; $78ec: $ff
    rst $38                                       ; $78ed: $ff
    rst $38                                       ; $78ee: $ff
    rst $38                                       ; $78ef: $ff
    rst $38                                       ; $78f0: $ff
    rst $38                                       ; $78f1: $ff
    rst $38                                       ; $78f2: $ff
    rst $38                                       ; $78f3: $ff
    rst $38                                       ; $78f4: $ff
    rst $38                                       ; $78f5: $ff
    rst $38                                       ; $78f6: $ff
    rst $38                                       ; $78f7: $ff
    rst $38                                       ; $78f8: $ff
    rst $38                                       ; $78f9: $ff
    rst $38                                       ; $78fa: $ff
    rst $38                                       ; $78fb: $ff
    rst $38                                       ; $78fc: $ff
    rst $38                                       ; $78fd: $ff
    rst $38                                       ; $78fe: $ff
    rst $38                                       ; $78ff: $ff
    rst $38                                       ; $7900: $ff
    rst $38                                       ; $7901: $ff
    rst $38                                       ; $7902: $ff
    rst $38                                       ; $7903: $ff
    rst $38                                       ; $7904: $ff
    rst $38                                       ; $7905: $ff
    rst $38                                       ; $7906: $ff
    rst $38                                       ; $7907: $ff
    rst $38                                       ; $7908: $ff
    rst $38                                       ; $7909: $ff
    rst $38                                       ; $790a: $ff
    rst $38                                       ; $790b: $ff
    rst $38                                       ; $790c: $ff
    rst $38                                       ; $790d: $ff
    rst $38                                       ; $790e: $ff
    rst $38                                       ; $790f: $ff
    rst $38                                       ; $7910: $ff
    rst $38                                       ; $7911: $ff
    rst $38                                       ; $7912: $ff
    rst $38                                       ; $7913: $ff
    rst $38                                       ; $7914: $ff
    rst $38                                       ; $7915: $ff
    rst $38                                       ; $7916: $ff
    rst $38                                       ; $7917: $ff
    rst $38                                       ; $7918: $ff
    rst $38                                       ; $7919: $ff
    rst $38                                       ; $791a: $ff
    rst $38                                       ; $791b: $ff
    rst $38                                       ; $791c: $ff
    rst $38                                       ; $791d: $ff
    rst $38                                       ; $791e: $ff
    rst $38                                       ; $791f: $ff
    rst $38                                       ; $7920: $ff
    rst $38                                       ; $7921: $ff
    rst $38                                       ; $7922: $ff
    rst $38                                       ; $7923: $ff
    rst $38                                       ; $7924: $ff
    rst $38                                       ; $7925: $ff
    rst $38                                       ; $7926: $ff
    rst $38                                       ; $7927: $ff
    rst $38                                       ; $7928: $ff
    rst $38                                       ; $7929: $ff
    rst $38                                       ; $792a: $ff
    rst $38                                       ; $792b: $ff
    rst $38                                       ; $792c: $ff
    rst $38                                       ; $792d: $ff
    rst $38                                       ; $792e: $ff
    rst $38                                       ; $792f: $ff
    rst $38                                       ; $7930: $ff
    rst $38                                       ; $7931: $ff
    rst $38                                       ; $7932: $ff

Call_0f9_7933:
    rst $38                                       ; $7933: $ff
    rst $38                                       ; $7934: $ff
    rst $38                                       ; $7935: $ff
    rst $38                                       ; $7936: $ff
    rst $38                                       ; $7937: $ff
    rst $38                                       ; $7938: $ff
    rst $38                                       ; $7939: $ff
    rst $38                                       ; $793a: $ff
    rst $38                                       ; $793b: $ff
    rst $38                                       ; $793c: $ff
    rst $38                                       ; $793d: $ff
    rst $38                                       ; $793e: $ff
    rst $38                                       ; $793f: $ff
    rst $38                                       ; $7940: $ff
    rst $38                                       ; $7941: $ff
    rst $38                                       ; $7942: $ff
    rst $38                                       ; $7943: $ff
    rst $38                                       ; $7944: $ff
    rst $38                                       ; $7945: $ff
    rst $38                                       ; $7946: $ff
    rst $38                                       ; $7947: $ff
    rst $38                                       ; $7948: $ff
    rst $38                                       ; $7949: $ff
    rst $38                                       ; $794a: $ff
    rst $38                                       ; $794b: $ff
    rst $38                                       ; $794c: $ff
    rst $38                                       ; $794d: $ff
    rst $38                                       ; $794e: $ff
    rst $38                                       ; $794f: $ff
    rst $38                                       ; $7950: $ff
    rst $38                                       ; $7951: $ff
    rst $38                                       ; $7952: $ff
    rst $38                                       ; $7953: $ff
    rst $38                                       ; $7954: $ff
    rst $38                                       ; $7955: $ff
    rst $38                                       ; $7956: $ff
    rst $38                                       ; $7957: $ff
    rst $38                                       ; $7958: $ff
    rst $38                                       ; $7959: $ff
    rst $38                                       ; $795a: $ff
    rst $38                                       ; $795b: $ff
    rst $38                                       ; $795c: $ff
    rst $38                                       ; $795d: $ff
    rst $38                                       ; $795e: $ff
    rst $38                                       ; $795f: $ff
    rst $38                                       ; $7960: $ff
    rst $38                                       ; $7961: $ff
    rst $38                                       ; $7962: $ff
    rst $38                                       ; $7963: $ff
    rst $38                                       ; $7964: $ff
    rst $38                                       ; $7965: $ff
    rst $38                                       ; $7966: $ff
    rst $38                                       ; $7967: $ff
    rst $38                                       ; $7968: $ff
    rst $38                                       ; $7969: $ff
    rst $38                                       ; $796a: $ff
    rst $38                                       ; $796b: $ff
    rst $38                                       ; $796c: $ff
    rst $38                                       ; $796d: $ff
    rst $38                                       ; $796e: $ff
    rst $38                                       ; $796f: $ff
    rst $38                                       ; $7970: $ff
    rst $38                                       ; $7971: $ff
    rst $38                                       ; $7972: $ff
    rst $38                                       ; $7973: $ff
    rst $38                                       ; $7974: $ff
    rst $38                                       ; $7975: $ff
    rst $38                                       ; $7976: $ff
    rst $38                                       ; $7977: $ff
    rst $38                                       ; $7978: $ff
    rst $38                                       ; $7979: $ff
    rst $38                                       ; $797a: $ff
    rst $38                                       ; $797b: $ff
    rst $38                                       ; $797c: $ff
    rst $38                                       ; $797d: $ff
    rst $38                                       ; $797e: $ff
    rst $38                                       ; $797f: $ff
    rst $38                                       ; $7980: $ff
    rst $38                                       ; $7981: $ff
    rst $38                                       ; $7982: $ff
    rst $38                                       ; $7983: $ff
    rst $38                                       ; $7984: $ff
    rst $38                                       ; $7985: $ff
    rst $38                                       ; $7986: $ff
    rst $38                                       ; $7987: $ff
    rst $38                                       ; $7988: $ff
    rst $38                                       ; $7989: $ff
    rst $38                                       ; $798a: $ff
    rst $38                                       ; $798b: $ff
    rst $38                                       ; $798c: $ff
    rst $38                                       ; $798d: $ff
    rst $38                                       ; $798e: $ff
    rst $38                                       ; $798f: $ff
    rst $38                                       ; $7990: $ff
    rst $38                                       ; $7991: $ff
    rst $38                                       ; $7992: $ff
    rst $38                                       ; $7993: $ff
    rst $38                                       ; $7994: $ff
    rst $38                                       ; $7995: $ff
    rst $38                                       ; $7996: $ff
    rst $38                                       ; $7997: $ff
    rst $38                                       ; $7998: $ff
    rst $38                                       ; $7999: $ff
    rst $38                                       ; $799a: $ff
    rst $38                                       ; $799b: $ff
    rst $38                                       ; $799c: $ff
    rst $38                                       ; $799d: $ff
    rst $38                                       ; $799e: $ff
    rst $38                                       ; $799f: $ff
    rst $38                                       ; $79a0: $ff
    rst $38                                       ; $79a1: $ff
    rst $38                                       ; $79a2: $ff
    rst $38                                       ; $79a3: $ff
    rst $38                                       ; $79a4: $ff
    rst $38                                       ; $79a5: $ff
    rst $38                                       ; $79a6: $ff
    rst $38                                       ; $79a7: $ff
    rst $38                                       ; $79a8: $ff
    rst $38                                       ; $79a9: $ff
    rst $38                                       ; $79aa: $ff
    rst $38                                       ; $79ab: $ff
    rst $38                                       ; $79ac: $ff
    rst $38                                       ; $79ad: $ff
    rst $38                                       ; $79ae: $ff
    rst $38                                       ; $79af: $ff
    rst $38                                       ; $79b0: $ff
    rst $38                                       ; $79b1: $ff
    rst $38                                       ; $79b2: $ff
    rst $38                                       ; $79b3: $ff
    rst $38                                       ; $79b4: $ff
    rst $38                                       ; $79b5: $ff
    rst $38                                       ; $79b6: $ff
    rst $38                                       ; $79b7: $ff
    rst $38                                       ; $79b8: $ff
    rst $38                                       ; $79b9: $ff
    rst $38                                       ; $79ba: $ff
    rst $38                                       ; $79bb: $ff
    rst $38                                       ; $79bc: $ff
    rst $38                                       ; $79bd: $ff
    rst $38                                       ; $79be: $ff
    rst $38                                       ; $79bf: $ff
    rst $38                                       ; $79c0: $ff
    rst $38                                       ; $79c1: $ff
    rst $38                                       ; $79c2: $ff
    rst $38                                       ; $79c3: $ff
    rst $38                                       ; $79c4: $ff
    rst $38                                       ; $79c5: $ff
    rst $38                                       ; $79c6: $ff
    rst $38                                       ; $79c7: $ff
    rst $38                                       ; $79c8: $ff
    rst $38                                       ; $79c9: $ff
    rst $38                                       ; $79ca: $ff
    rst $38                                       ; $79cb: $ff
    rst $38                                       ; $79cc: $ff
    rst $38                                       ; $79cd: $ff
    rst $38                                       ; $79ce: $ff
    rst $38                                       ; $79cf: $ff
    rst $38                                       ; $79d0: $ff
    rst $38                                       ; $79d1: $ff
    rst $38                                       ; $79d2: $ff
    rst $38                                       ; $79d3: $ff
    rst $38                                       ; $79d4: $ff
    rst $38                                       ; $79d5: $ff
    rst $38                                       ; $79d6: $ff
    rst $38                                       ; $79d7: $ff
    rst $38                                       ; $79d8: $ff
    rst $38                                       ; $79d9: $ff
    rst $38                                       ; $79da: $ff
    rst $38                                       ; $79db: $ff
    rst $38                                       ; $79dc: $ff
    rst $38                                       ; $79dd: $ff
    rst $38                                       ; $79de: $ff
    rst $38                                       ; $79df: $ff
    rst $38                                       ; $79e0: $ff
    rst $38                                       ; $79e1: $ff
    rst $38                                       ; $79e2: $ff
    rst $38                                       ; $79e3: $ff
    rst $38                                       ; $79e4: $ff
    rst $38                                       ; $79e5: $ff
    rst $38                                       ; $79e6: $ff
    rst $38                                       ; $79e7: $ff
    rst $38                                       ; $79e8: $ff
    rst $38                                       ; $79e9: $ff
    rst $38                                       ; $79ea: $ff
    rst $38                                       ; $79eb: $ff
    rst $38                                       ; $79ec: $ff
    rst $38                                       ; $79ed: $ff
    rst $38                                       ; $79ee: $ff
    rst $38                                       ; $79ef: $ff
    rst $38                                       ; $79f0: $ff
    rst $38                                       ; $79f1: $ff
    rst $38                                       ; $79f2: $ff
    rst $38                                       ; $79f3: $ff
    rst $38                                       ; $79f4: $ff
    rst $38                                       ; $79f5: $ff
    rst $38                                       ; $79f6: $ff
    rst $38                                       ; $79f7: $ff
    rst $38                                       ; $79f8: $ff
    rst $38                                       ; $79f9: $ff
    rst $38                                       ; $79fa: $ff
    rst $38                                       ; $79fb: $ff
    rst $38                                       ; $79fc: $ff
    rst $38                                       ; $79fd: $ff
    rst $38                                       ; $79fe: $ff
    rst $38                                       ; $79ff: $ff
    rst $38                                       ; $7a00: $ff
    rst $38                                       ; $7a01: $ff
    rst $38                                       ; $7a02: $ff
    rst $38                                       ; $7a03: $ff
    rst $38                                       ; $7a04: $ff
    rst $38                                       ; $7a05: $ff
    rst $38                                       ; $7a06: $ff
    rst $38                                       ; $7a07: $ff
    rst $38                                       ; $7a08: $ff
    rst $38                                       ; $7a09: $ff
    rst $38                                       ; $7a0a: $ff
    rst $38                                       ; $7a0b: $ff
    rst $38                                       ; $7a0c: $ff
    rst $38                                       ; $7a0d: $ff
    rst $38                                       ; $7a0e: $ff
    rst $38                                       ; $7a0f: $ff
    rst $38                                       ; $7a10: $ff
    rst $38                                       ; $7a11: $ff
    rst $38                                       ; $7a12: $ff
    rst $38                                       ; $7a13: $ff
    rst $38                                       ; $7a14: $ff
    rst $38                                       ; $7a15: $ff
    rst $38                                       ; $7a16: $ff
    rst $38                                       ; $7a17: $ff
    rst $38                                       ; $7a18: $ff
    rst $38                                       ; $7a19: $ff
    rst $38                                       ; $7a1a: $ff
    rst $38                                       ; $7a1b: $ff
    rst $38                                       ; $7a1c: $ff
    rst $38                                       ; $7a1d: $ff
    rst $38                                       ; $7a1e: $ff
    rst $38                                       ; $7a1f: $ff
    rst $38                                       ; $7a20: $ff
    rst $38                                       ; $7a21: $ff
    rst $38                                       ; $7a22: $ff
    rst $38                                       ; $7a23: $ff
    rst $38                                       ; $7a24: $ff
    rst $38                                       ; $7a25: $ff
    rst $38                                       ; $7a26: $ff
    rst $38                                       ; $7a27: $ff
    rst $38                                       ; $7a28: $ff
    rst $38                                       ; $7a29: $ff
    rst $38                                       ; $7a2a: $ff
    rst $38                                       ; $7a2b: $ff
    rst $38                                       ; $7a2c: $ff
    rst $38                                       ; $7a2d: $ff
    rst $38                                       ; $7a2e: $ff
    rst $38                                       ; $7a2f: $ff
    rst $38                                       ; $7a30: $ff
    rst $38                                       ; $7a31: $ff
    rst $38                                       ; $7a32: $ff
    rst $38                                       ; $7a33: $ff
    rst $38                                       ; $7a34: $ff
    rst $38                                       ; $7a35: $ff
    rst $38                                       ; $7a36: $ff
    rst $38                                       ; $7a37: $ff
    rst $38                                       ; $7a38: $ff
    rst $38                                       ; $7a39: $ff
    rst $38                                       ; $7a3a: $ff
    rst $38                                       ; $7a3b: $ff
    rst $38                                       ; $7a3c: $ff
    rst $38                                       ; $7a3d: $ff
    rst $38                                       ; $7a3e: $ff
    rst $38                                       ; $7a3f: $ff
    rst $38                                       ; $7a40: $ff
    rst $38                                       ; $7a41: $ff
    rst $38                                       ; $7a42: $ff
    rst $38                                       ; $7a43: $ff
    rst $38                                       ; $7a44: $ff
    rst $38                                       ; $7a45: $ff
    rst $38                                       ; $7a46: $ff
    rst $38                                       ; $7a47: $ff
    rst $38                                       ; $7a48: $ff
    rst $38                                       ; $7a49: $ff
    rst $38                                       ; $7a4a: $ff
    rst $38                                       ; $7a4b: $ff
    rst $38                                       ; $7a4c: $ff
    rst $38                                       ; $7a4d: $ff
    rst $38                                       ; $7a4e: $ff
    rst $38                                       ; $7a4f: $ff
    rst $38                                       ; $7a50: $ff
    rst $38                                       ; $7a51: $ff
    rst $38                                       ; $7a52: $ff
    rst $38                                       ; $7a53: $ff
    rst $38                                       ; $7a54: $ff
    rst $38                                       ; $7a55: $ff
    rst $38                                       ; $7a56: $ff
    rst $38                                       ; $7a57: $ff
    rst $38                                       ; $7a58: $ff
    rst $38                                       ; $7a59: $ff
    rst $38                                       ; $7a5a: $ff
    rst $38                                       ; $7a5b: $ff
    rst $38                                       ; $7a5c: $ff
    rst $38                                       ; $7a5d: $ff
    rst $38                                       ; $7a5e: $ff
    rst $38                                       ; $7a5f: $ff
    rst $38                                       ; $7a60: $ff
    rst $38                                       ; $7a61: $ff
    rst $38                                       ; $7a62: $ff
    rst $38                                       ; $7a63: $ff
    rst $38                                       ; $7a64: $ff
    rst $38                                       ; $7a65: $ff
    rst $38                                       ; $7a66: $ff
    rst $38                                       ; $7a67: $ff
    rst $38                                       ; $7a68: $ff
    rst $38                                       ; $7a69: $ff
    rst $38                                       ; $7a6a: $ff
    rst $38                                       ; $7a6b: $ff
    rst $38                                       ; $7a6c: $ff
    rst $38                                       ; $7a6d: $ff
    rst $38                                       ; $7a6e: $ff
    rst $38                                       ; $7a6f: $ff
    rst $38                                       ; $7a70: $ff
    rst $38                                       ; $7a71: $ff
    rst $38                                       ; $7a72: $ff
    rst $38                                       ; $7a73: $ff
    rst $38                                       ; $7a74: $ff
    rst $38                                       ; $7a75: $ff
    rst $38                                       ; $7a76: $ff
    rst $38                                       ; $7a77: $ff
    rst $38                                       ; $7a78: $ff
    rst $38                                       ; $7a79: $ff
    rst $38                                       ; $7a7a: $ff
    rst $38                                       ; $7a7b: $ff
    rst $38                                       ; $7a7c: $ff
    rst $38                                       ; $7a7d: $ff
    rst $38                                       ; $7a7e: $ff
    rst $38                                       ; $7a7f: $ff
    rst $38                                       ; $7a80: $ff
    rst $38                                       ; $7a81: $ff
    rst $38                                       ; $7a82: $ff
    rst $38                                       ; $7a83: $ff
    rst $38                                       ; $7a84: $ff
    rst $38                                       ; $7a85: $ff
    rst $38                                       ; $7a86: $ff
    rst $38                                       ; $7a87: $ff
    rst $38                                       ; $7a88: $ff
    rst $38                                       ; $7a89: $ff
    rst $38                                       ; $7a8a: $ff
    rst $38                                       ; $7a8b: $ff
    rst $38                                       ; $7a8c: $ff
    rst $38                                       ; $7a8d: $ff
    rst $38                                       ; $7a8e: $ff
    rst $38                                       ; $7a8f: $ff
    rst $38                                       ; $7a90: $ff
    rst $38                                       ; $7a91: $ff
    rst $38                                       ; $7a92: $ff
    rst $38                                       ; $7a93: $ff
    rst $38                                       ; $7a94: $ff
    rst $38                                       ; $7a95: $ff
    rst $38                                       ; $7a96: $ff
    rst $38                                       ; $7a97: $ff
    rst $38                                       ; $7a98: $ff
    rst $38                                       ; $7a99: $ff
    rst $38                                       ; $7a9a: $ff
    rst $38                                       ; $7a9b: $ff
    rst $38                                       ; $7a9c: $ff
    rst $38                                       ; $7a9d: $ff
    rst $38                                       ; $7a9e: $ff
    rst $38                                       ; $7a9f: $ff
    rst $38                                       ; $7aa0: $ff
    rst $38                                       ; $7aa1: $ff
    rst $38                                       ; $7aa2: $ff
    rst $38                                       ; $7aa3: $ff
    rst $38                                       ; $7aa4: $ff
    rst $38                                       ; $7aa5: $ff
    rst $38                                       ; $7aa6: $ff
    rst $38                                       ; $7aa7: $ff
    rst $38                                       ; $7aa8: $ff
    rst $38                                       ; $7aa9: $ff
    rst $38                                       ; $7aaa: $ff
    rst $38                                       ; $7aab: $ff
    rst $38                                       ; $7aac: $ff
    rst $38                                       ; $7aad: $ff
    rst $38                                       ; $7aae: $ff
    rst $38                                       ; $7aaf: $ff
    rst $38                                       ; $7ab0: $ff
    rst $38                                       ; $7ab1: $ff
    rst $38                                       ; $7ab2: $ff
    rst $38                                       ; $7ab3: $ff
    rst $38                                       ; $7ab4: $ff
    rst $38                                       ; $7ab5: $ff
    rst $38                                       ; $7ab6: $ff
    rst $38                                       ; $7ab7: $ff
    rst $38                                       ; $7ab8: $ff
    rst $38                                       ; $7ab9: $ff
    rst $38                                       ; $7aba: $ff
    rst $38                                       ; $7abb: $ff
    rst $38                                       ; $7abc: $ff
    rst $38                                       ; $7abd: $ff
    rst $38                                       ; $7abe: $ff
    rst $38                                       ; $7abf: $ff
    rst $38                                       ; $7ac0: $ff
    rst $38                                       ; $7ac1: $ff
    rst $38                                       ; $7ac2: $ff
    rst $38                                       ; $7ac3: $ff
    rst $38                                       ; $7ac4: $ff
    rst $38                                       ; $7ac5: $ff
    rst $38                                       ; $7ac6: $ff
    rst $38                                       ; $7ac7: $ff
    rst $38                                       ; $7ac8: $ff
    rst $38                                       ; $7ac9: $ff
    rst $38                                       ; $7aca: $ff
    rst $38                                       ; $7acb: $ff
    rst $38                                       ; $7acc: $ff
    rst $38                                       ; $7acd: $ff
    rst $38                                       ; $7ace: $ff
    rst $38                                       ; $7acf: $ff
    rst $38                                       ; $7ad0: $ff
    rst $38                                       ; $7ad1: $ff
    rst $38                                       ; $7ad2: $ff
    rst $38                                       ; $7ad3: $ff
    rst $38                                       ; $7ad4: $ff
    rst $38                                       ; $7ad5: $ff
    rst $38                                       ; $7ad6: $ff
    rst $38                                       ; $7ad7: $ff
    rst $38                                       ; $7ad8: $ff
    rst $38                                       ; $7ad9: $ff
    rst $38                                       ; $7ada: $ff
    rst $38                                       ; $7adb: $ff
    rst $38                                       ; $7adc: $ff
    rst $38                                       ; $7add: $ff
    rst $38                                       ; $7ade: $ff
    rst $38                                       ; $7adf: $ff
    rst $38                                       ; $7ae0: $ff
    rst $38                                       ; $7ae1: $ff
    rst $38                                       ; $7ae2: $ff
    rst $38                                       ; $7ae3: $ff
    rst $38                                       ; $7ae4: $ff
    rst $38                                       ; $7ae5: $ff
    rst $38                                       ; $7ae6: $ff
    rst $38                                       ; $7ae7: $ff
    rst $38                                       ; $7ae8: $ff
    rst $38                                       ; $7ae9: $ff
    rst $38                                       ; $7aea: $ff
    rst $38                                       ; $7aeb: $ff
    rst $38                                       ; $7aec: $ff
    rst $38                                       ; $7aed: $ff
    rst $38                                       ; $7aee: $ff
    rst $38                                       ; $7aef: $ff
    rst $38                                       ; $7af0: $ff
    rst $38                                       ; $7af1: $ff
    rst $38                                       ; $7af2: $ff
    rst $38                                       ; $7af3: $ff
    rst $38                                       ; $7af4: $ff
    rst $38                                       ; $7af5: $ff
    rst $38                                       ; $7af6: $ff
    rst $38                                       ; $7af7: $ff
    rst $38                                       ; $7af8: $ff
    rst $38                                       ; $7af9: $ff
    rst $38                                       ; $7afa: $ff
    rst $38                                       ; $7afb: $ff
    rst $38                                       ; $7afc: $ff
    rst $38                                       ; $7afd: $ff
    rst $38                                       ; $7afe: $ff
    rst $38                                       ; $7aff: $ff
    rst $38                                       ; $7b00: $ff
    rst $38                                       ; $7b01: $ff
    rst $38                                       ; $7b02: $ff
    rst $38                                       ; $7b03: $ff
    rst $38                                       ; $7b04: $ff
    rst $38                                       ; $7b05: $ff
    rst $38                                       ; $7b06: $ff
    rst $38                                       ; $7b07: $ff
    rst $38                                       ; $7b08: $ff
    rst $38                                       ; $7b09: $ff
    rst $38                                       ; $7b0a: $ff
    rst $38                                       ; $7b0b: $ff
    rst $38                                       ; $7b0c: $ff
    rst $38                                       ; $7b0d: $ff
    rst $38                                       ; $7b0e: $ff
    rst $38                                       ; $7b0f: $ff
    rst $38                                       ; $7b10: $ff
    rst $38                                       ; $7b11: $ff
    rst $38                                       ; $7b12: $ff
    rst $38                                       ; $7b13: $ff
    rst $38                                       ; $7b14: $ff
    rst $38                                       ; $7b15: $ff
    rst $38                                       ; $7b16: $ff
    rst $38                                       ; $7b17: $ff
    rst $38                                       ; $7b18: $ff
    rst $38                                       ; $7b19: $ff
    rst $38                                       ; $7b1a: $ff
    rst $38                                       ; $7b1b: $ff
    rst $38                                       ; $7b1c: $ff
    rst $38                                       ; $7b1d: $ff
    rst $38                                       ; $7b1e: $ff
    rst $38                                       ; $7b1f: $ff
    rst $38                                       ; $7b20: $ff
    rst $38                                       ; $7b21: $ff
    rst $38                                       ; $7b22: $ff
    rst $38                                       ; $7b23: $ff
    rst $38                                       ; $7b24: $ff
    rst $38                                       ; $7b25: $ff
    rst $38                                       ; $7b26: $ff
    rst $38                                       ; $7b27: $ff
    rst $38                                       ; $7b28: $ff
    rst $38                                       ; $7b29: $ff
    rst $38                                       ; $7b2a: $ff
    rst $38                                       ; $7b2b: $ff
    rst $38                                       ; $7b2c: $ff
    rst $38                                       ; $7b2d: $ff
    rst $38                                       ; $7b2e: $ff
    rst $38                                       ; $7b2f: $ff
    rst $38                                       ; $7b30: $ff
    rst $38                                       ; $7b31: $ff
    rst $38                                       ; $7b32: $ff
    rst $38                                       ; $7b33: $ff
    rst $38                                       ; $7b34: $ff
    rst $38                                       ; $7b35: $ff
    rst $38                                       ; $7b36: $ff
    rst $38                                       ; $7b37: $ff
    rst $38                                       ; $7b38: $ff
    rst $38                                       ; $7b39: $ff
    rst $38                                       ; $7b3a: $ff
    rst $38                                       ; $7b3b: $ff
    rst $38                                       ; $7b3c: $ff
    rst $38                                       ; $7b3d: $ff
    rst $38                                       ; $7b3e: $ff
    rst $38                                       ; $7b3f: $ff
    rst $38                                       ; $7b40: $ff
    rst $38                                       ; $7b41: $ff
    rst $38                                       ; $7b42: $ff
    rst $38                                       ; $7b43: $ff
    rst $38                                       ; $7b44: $ff
    rst $38                                       ; $7b45: $ff
    rst $38                                       ; $7b46: $ff
    rst $38                                       ; $7b47: $ff
    rst $38                                       ; $7b48: $ff
    rst $38                                       ; $7b49: $ff
    rst $38                                       ; $7b4a: $ff
    rst $38                                       ; $7b4b: $ff
    rst $38                                       ; $7b4c: $ff
    rst $38                                       ; $7b4d: $ff
    rst $38                                       ; $7b4e: $ff
    rst $38                                       ; $7b4f: $ff
    rst $38                                       ; $7b50: $ff
    rst $38                                       ; $7b51: $ff
    rst $38                                       ; $7b52: $ff
    rst $38                                       ; $7b53: $ff
    rst $38                                       ; $7b54: $ff
    rst $38                                       ; $7b55: $ff
    rst $38                                       ; $7b56: $ff
    rst $38                                       ; $7b57: $ff
    rst $38                                       ; $7b58: $ff
    rst $38                                       ; $7b59: $ff
    rst $38                                       ; $7b5a: $ff
    rst $38                                       ; $7b5b: $ff
    rst $38                                       ; $7b5c: $ff
    rst $38                                       ; $7b5d: $ff
    rst $38                                       ; $7b5e: $ff
    rst $38                                       ; $7b5f: $ff
    rst $38                                       ; $7b60: $ff
    rst $38                                       ; $7b61: $ff
    rst $38                                       ; $7b62: $ff
    rst $38                                       ; $7b63: $ff
    rst $38                                       ; $7b64: $ff
    rst $38                                       ; $7b65: $ff
    rst $38                                       ; $7b66: $ff
    rst $38                                       ; $7b67: $ff
    rst $38                                       ; $7b68: $ff
    rst $38                                       ; $7b69: $ff
    rst $38                                       ; $7b6a: $ff
    rst $38                                       ; $7b6b: $ff
    rst $38                                       ; $7b6c: $ff
    rst $38                                       ; $7b6d: $ff
    rst $38                                       ; $7b6e: $ff
    rst $38                                       ; $7b6f: $ff
    rst $38                                       ; $7b70: $ff
    rst $38                                       ; $7b71: $ff
    rst $38                                       ; $7b72: $ff
    rst $38                                       ; $7b73: $ff
    rst $38                                       ; $7b74: $ff
    rst $38                                       ; $7b75: $ff
    rst $38                                       ; $7b76: $ff
    rst $38                                       ; $7b77: $ff
    rst $38                                       ; $7b78: $ff
    rst $38                                       ; $7b79: $ff
    rst $38                                       ; $7b7a: $ff
    rst $38                                       ; $7b7b: $ff
    rst $38                                       ; $7b7c: $ff
    rst $38                                       ; $7b7d: $ff
    rst $38                                       ; $7b7e: $ff
    rst $38                                       ; $7b7f: $ff
    rst $38                                       ; $7b80: $ff
    rst $38                                       ; $7b81: $ff
    rst $38                                       ; $7b82: $ff
    rst $38                                       ; $7b83: $ff
    rst $38                                       ; $7b84: $ff
    rst $38                                       ; $7b85: $ff
    rst $38                                       ; $7b86: $ff
    rst $38                                       ; $7b87: $ff
    rst $38                                       ; $7b88: $ff
    rst $38                                       ; $7b89: $ff
    rst $38                                       ; $7b8a: $ff
    rst $38                                       ; $7b8b: $ff
    rst $38                                       ; $7b8c: $ff
    rst $38                                       ; $7b8d: $ff
    rst $38                                       ; $7b8e: $ff
    rst $38                                       ; $7b8f: $ff
    rst $38                                       ; $7b90: $ff
    rst $38                                       ; $7b91: $ff
    rst $38                                       ; $7b92: $ff
    rst $38                                       ; $7b93: $ff
    rst $38                                       ; $7b94: $ff
    rst $38                                       ; $7b95: $ff
    rst $38                                       ; $7b96: $ff
    rst $38                                       ; $7b97: $ff
    rst $38                                       ; $7b98: $ff
    rst $38                                       ; $7b99: $ff
    rst $38                                       ; $7b9a: $ff
    rst $38                                       ; $7b9b: $ff
    rst $38                                       ; $7b9c: $ff
    rst $38                                       ; $7b9d: $ff
    rst $38                                       ; $7b9e: $ff
    rst $38                                       ; $7b9f: $ff
    rst $38                                       ; $7ba0: $ff
    rst $38                                       ; $7ba1: $ff
    rst $38                                       ; $7ba2: $ff
    rst $38                                       ; $7ba3: $ff
    rst $38                                       ; $7ba4: $ff
    rst $38                                       ; $7ba5: $ff
    rst $38                                       ; $7ba6: $ff
    rst $38                                       ; $7ba7: $ff
    rst $38                                       ; $7ba8: $ff
    rst $38                                       ; $7ba9: $ff
    rst $38                                       ; $7baa: $ff
    rst $38                                       ; $7bab: $ff
    rst $38                                       ; $7bac: $ff
    rst $38                                       ; $7bad: $ff
    rst $38                                       ; $7bae: $ff
    rst $38                                       ; $7baf: $ff
    rst $38                                       ; $7bb0: $ff
    rst $38                                       ; $7bb1: $ff
    rst $38                                       ; $7bb2: $ff
    rst $38                                       ; $7bb3: $ff
    rst $38                                       ; $7bb4: $ff
    rst $38                                       ; $7bb5: $ff
    rst $38                                       ; $7bb6: $ff
    rst $38                                       ; $7bb7: $ff
    rst $38                                       ; $7bb8: $ff
    rst $38                                       ; $7bb9: $ff
    rst $38                                       ; $7bba: $ff
    rst $38                                       ; $7bbb: $ff
    rst $38                                       ; $7bbc: $ff
    rst $38                                       ; $7bbd: $ff
    rst $38                                       ; $7bbe: $ff
    rst $38                                       ; $7bbf: $ff
    rst $38                                       ; $7bc0: $ff
    rst $38                                       ; $7bc1: $ff
    rst $38                                       ; $7bc2: $ff
    rst $38                                       ; $7bc3: $ff
    rst $38                                       ; $7bc4: $ff
    rst $38                                       ; $7bc5: $ff
    rst $38                                       ; $7bc6: $ff
    rst $38                                       ; $7bc7: $ff
    rst $38                                       ; $7bc8: $ff
    rst $38                                       ; $7bc9: $ff
    rst $38                                       ; $7bca: $ff
    rst $38                                       ; $7bcb: $ff
    rst $38                                       ; $7bcc: $ff
    rst $38                                       ; $7bcd: $ff
    rst $38                                       ; $7bce: $ff
    rst $38                                       ; $7bcf: $ff
    rst $38                                       ; $7bd0: $ff
    rst $38                                       ; $7bd1: $ff
    rst $38                                       ; $7bd2: $ff
    rst $38                                       ; $7bd3: $ff
    rst $38                                       ; $7bd4: $ff
    rst $38                                       ; $7bd5: $ff
    rst $38                                       ; $7bd6: $ff
    rst $38                                       ; $7bd7: $ff
    rst $38                                       ; $7bd8: $ff
    rst $38                                       ; $7bd9: $ff
    rst $38                                       ; $7bda: $ff
    rst $38                                       ; $7bdb: $ff
    rst $38                                       ; $7bdc: $ff
    rst $38                                       ; $7bdd: $ff
    rst $38                                       ; $7bde: $ff
    rst $38                                       ; $7bdf: $ff
    rst $38                                       ; $7be0: $ff
    rst $38                                       ; $7be1: $ff
    rst $38                                       ; $7be2: $ff
    rst $38                                       ; $7be3: $ff
    rst $38                                       ; $7be4: $ff
    rst $38                                       ; $7be5: $ff
    rst $38                                       ; $7be6: $ff
    rst $38                                       ; $7be7: $ff
    rst $38                                       ; $7be8: $ff
    rst $38                                       ; $7be9: $ff
    rst $38                                       ; $7bea: $ff
    rst $38                                       ; $7beb: $ff
    rst $38                                       ; $7bec: $ff
    rst $38                                       ; $7bed: $ff
    rst $38                                       ; $7bee: $ff
    rst $38                                       ; $7bef: $ff
    rst $38                                       ; $7bf0: $ff
    rst $38                                       ; $7bf1: $ff
    rst $38                                       ; $7bf2: $ff
    rst $38                                       ; $7bf3: $ff
    rst $38                                       ; $7bf4: $ff
    rst $38                                       ; $7bf5: $ff
    rst $38                                       ; $7bf6: $ff
    rst $38                                       ; $7bf7: $ff
    rst $38                                       ; $7bf8: $ff
    rst $38                                       ; $7bf9: $ff
    rst $38                                       ; $7bfa: $ff
    rst $38                                       ; $7bfb: $ff
    rst $38                                       ; $7bfc: $ff
    rst $38                                       ; $7bfd: $ff
    rst $38                                       ; $7bfe: $ff
    rst $38                                       ; $7bff: $ff
    rst $38                                       ; $7c00: $ff
    rst $38                                       ; $7c01: $ff
    rst $38                                       ; $7c02: $ff
    rst $38                                       ; $7c03: $ff
    rst $38                                       ; $7c04: $ff
    rst $38                                       ; $7c05: $ff
    rst $38                                       ; $7c06: $ff
    rst $38                                       ; $7c07: $ff
    rst $38                                       ; $7c08: $ff
    rst $38                                       ; $7c09: $ff
    rst $38                                       ; $7c0a: $ff
    rst $38                                       ; $7c0b: $ff
    rst $38                                       ; $7c0c: $ff
    rst $38                                       ; $7c0d: $ff
    rst $38                                       ; $7c0e: $ff
    rst $38                                       ; $7c0f: $ff
    rst $38                                       ; $7c10: $ff
    rst $38                                       ; $7c11: $ff
    rst $38                                       ; $7c12: $ff
    rst $38                                       ; $7c13: $ff
    rst $38                                       ; $7c14: $ff
    rst $38                                       ; $7c15: $ff
    rst $38                                       ; $7c16: $ff
    rst $38                                       ; $7c17: $ff
    rst $38                                       ; $7c18: $ff
    rst $38                                       ; $7c19: $ff
    rst $38                                       ; $7c1a: $ff
    rst $38                                       ; $7c1b: $ff
    rst $38                                       ; $7c1c: $ff
    rst $38                                       ; $7c1d: $ff
    rst $38                                       ; $7c1e: $ff
    rst $38                                       ; $7c1f: $ff
    rst $38                                       ; $7c20: $ff
    rst $38                                       ; $7c21: $ff
    rst $38                                       ; $7c22: $ff
    rst $38                                       ; $7c23: $ff
    rst $38                                       ; $7c24: $ff
    rst $38                                       ; $7c25: $ff
    rst $38                                       ; $7c26: $ff
    rst $38                                       ; $7c27: $ff
    rst $38                                       ; $7c28: $ff
    rst $38                                       ; $7c29: $ff
    rst $38                                       ; $7c2a: $ff
    rst $38                                       ; $7c2b: $ff
    rst $38                                       ; $7c2c: $ff
    rst $38                                       ; $7c2d: $ff
    rst $38                                       ; $7c2e: $ff
    rst $38                                       ; $7c2f: $ff
    rst $38                                       ; $7c30: $ff
    rst $38                                       ; $7c31: $ff
    rst $38                                       ; $7c32: $ff
    rst $38                                       ; $7c33: $ff

Call_0f9_7c34:
    rst $38                                       ; $7c34: $ff
    rst $38                                       ; $7c35: $ff
    rst $38                                       ; $7c36: $ff
    rst $38                                       ; $7c37: $ff
    rst $38                                       ; $7c38: $ff
    rst $38                                       ; $7c39: $ff
    rst $38                                       ; $7c3a: $ff
    rst $38                                       ; $7c3b: $ff
    rst $38                                       ; $7c3c: $ff
    rst $38                                       ; $7c3d: $ff
    rst $38                                       ; $7c3e: $ff
    rst $38                                       ; $7c3f: $ff
    rst $38                                       ; $7c40: $ff
    rst $38                                       ; $7c41: $ff
    rst $38                                       ; $7c42: $ff
    rst $38                                       ; $7c43: $ff
    rst $38                                       ; $7c44: $ff
    rst $38                                       ; $7c45: $ff
    rst $38                                       ; $7c46: $ff
    rst $38                                       ; $7c47: $ff
    rst $38                                       ; $7c48: $ff
    rst $38                                       ; $7c49: $ff
    rst $38                                       ; $7c4a: $ff
    rst $38                                       ; $7c4b: $ff
    rst $38                                       ; $7c4c: $ff
    rst $38                                       ; $7c4d: $ff
    rst $38                                       ; $7c4e: $ff
    rst $38                                       ; $7c4f: $ff
    rst $38                                       ; $7c50: $ff
    rst $38                                       ; $7c51: $ff
    rst $38                                       ; $7c52: $ff
    rst $38                                       ; $7c53: $ff
    rst $38                                       ; $7c54: $ff
    rst $38                                       ; $7c55: $ff
    rst $38                                       ; $7c56: $ff
    rst $38                                       ; $7c57: $ff
    rst $38                                       ; $7c58: $ff
    rst $38                                       ; $7c59: $ff
    rst $38                                       ; $7c5a: $ff
    rst $38                                       ; $7c5b: $ff
    rst $38                                       ; $7c5c: $ff
    rst $38                                       ; $7c5d: $ff
    rst $38                                       ; $7c5e: $ff
    rst $38                                       ; $7c5f: $ff
    rst $38                                       ; $7c60: $ff
    rst $38                                       ; $7c61: $ff
    rst $38                                       ; $7c62: $ff
    rst $38                                       ; $7c63: $ff
    rst $38                                       ; $7c64: $ff
    rst $38                                       ; $7c65: $ff
    rst $38                                       ; $7c66: $ff
    rst $38                                       ; $7c67: $ff
    rst $38                                       ; $7c68: $ff
    rst $38                                       ; $7c69: $ff
    rst $38                                       ; $7c6a: $ff
    rst $38                                       ; $7c6b: $ff
    rst $38                                       ; $7c6c: $ff
    rst $38                                       ; $7c6d: $ff
    rst $38                                       ; $7c6e: $ff
    rst $38                                       ; $7c6f: $ff
    rst $38                                       ; $7c70: $ff
    rst $38                                       ; $7c71: $ff
    rst $38                                       ; $7c72: $ff
    rst $38                                       ; $7c73: $ff
    rst $38                                       ; $7c74: $ff
    rst $38                                       ; $7c75: $ff
    rst $38                                       ; $7c76: $ff
    rst $38                                       ; $7c77: $ff
    rst $38                                       ; $7c78: $ff
    rst $38                                       ; $7c79: $ff
    rst $38                                       ; $7c7a: $ff
    rst $38                                       ; $7c7b: $ff
    rst $38                                       ; $7c7c: $ff
    rst $38                                       ; $7c7d: $ff
    rst $38                                       ; $7c7e: $ff
    rst $38                                       ; $7c7f: $ff
    rst $38                                       ; $7c80: $ff
    rst $38                                       ; $7c81: $ff
    rst $38                                       ; $7c82: $ff
    rst $38                                       ; $7c83: $ff
    rst $38                                       ; $7c84: $ff
    rst $38                                       ; $7c85: $ff
    rst $38                                       ; $7c86: $ff
    rst $38                                       ; $7c87: $ff
    rst $38                                       ; $7c88: $ff
    rst $38                                       ; $7c89: $ff
    rst $38                                       ; $7c8a: $ff
    rst $38                                       ; $7c8b: $ff
    rst $38                                       ; $7c8c: $ff
    rst $38                                       ; $7c8d: $ff
    rst $38                                       ; $7c8e: $ff
    rst $38                                       ; $7c8f: $ff
    rst $38                                       ; $7c90: $ff
    rst $38                                       ; $7c91: $ff
    rst $38                                       ; $7c92: $ff
    rst $38                                       ; $7c93: $ff
    rst $38                                       ; $7c94: $ff
    rst $38                                       ; $7c95: $ff
    rst $38                                       ; $7c96: $ff
    rst $38                                       ; $7c97: $ff
    rst $38                                       ; $7c98: $ff
    rst $38                                       ; $7c99: $ff
    rst $38                                       ; $7c9a: $ff
    rst $38                                       ; $7c9b: $ff
    rst $38                                       ; $7c9c: $ff
    rst $38                                       ; $7c9d: $ff
    rst $38                                       ; $7c9e: $ff
    rst $38                                       ; $7c9f: $ff
    rst $38                                       ; $7ca0: $ff
    rst $38                                       ; $7ca1: $ff
    rst $38                                       ; $7ca2: $ff
    rst $38                                       ; $7ca3: $ff
    rst $38                                       ; $7ca4: $ff
    rst $38                                       ; $7ca5: $ff
    rst $38                                       ; $7ca6: $ff
    rst $38                                       ; $7ca7: $ff
    rst $38                                       ; $7ca8: $ff
    rst $38                                       ; $7ca9: $ff
    rst $38                                       ; $7caa: $ff
    rst $38                                       ; $7cab: $ff
    rst $38                                       ; $7cac: $ff
    rst $38                                       ; $7cad: $ff
    rst $38                                       ; $7cae: $ff
    rst $38                                       ; $7caf: $ff
    rst $38                                       ; $7cb0: $ff
    rst $38                                       ; $7cb1: $ff
    rst $38                                       ; $7cb2: $ff
    rst $38                                       ; $7cb3: $ff
    rst $38                                       ; $7cb4: $ff
    rst $38                                       ; $7cb5: $ff
    rst $38                                       ; $7cb6: $ff
    rst $38                                       ; $7cb7: $ff
    rst $38                                       ; $7cb8: $ff
    rst $38                                       ; $7cb9: $ff
    rst $38                                       ; $7cba: $ff
    rst $38                                       ; $7cbb: $ff
    rst $38                                       ; $7cbc: $ff
    rst $38                                       ; $7cbd: $ff
    rst $38                                       ; $7cbe: $ff
    rst $38                                       ; $7cbf: $ff
    rst $38                                       ; $7cc0: $ff
    rst $38                                       ; $7cc1: $ff
    rst $38                                       ; $7cc2: $ff
    rst $38                                       ; $7cc3: $ff
    rst $38                                       ; $7cc4: $ff
    rst $38                                       ; $7cc5: $ff
    rst $38                                       ; $7cc6: $ff
    rst $38                                       ; $7cc7: $ff
    rst $38                                       ; $7cc8: $ff
    rst $38                                       ; $7cc9: $ff
    rst $38                                       ; $7cca: $ff
    rst $38                                       ; $7ccb: $ff
    rst $38                                       ; $7ccc: $ff
    rst $38                                       ; $7ccd: $ff
    rst $38                                       ; $7cce: $ff
    rst $38                                       ; $7ccf: $ff
    rst $38                                       ; $7cd0: $ff
    rst $38                                       ; $7cd1: $ff
    rst $38                                       ; $7cd2: $ff
    rst $38                                       ; $7cd3: $ff
    rst $38                                       ; $7cd4: $ff
    rst $38                                       ; $7cd5: $ff
    rst $38                                       ; $7cd6: $ff
    rst $38                                       ; $7cd7: $ff
    rst $38                                       ; $7cd8: $ff
    rst $38                                       ; $7cd9: $ff
    rst $38                                       ; $7cda: $ff
    rst $38                                       ; $7cdb: $ff
    rst $38                                       ; $7cdc: $ff
    rst $38                                       ; $7cdd: $ff
    rst $38                                       ; $7cde: $ff
    rst $38                                       ; $7cdf: $ff
    rst $38                                       ; $7ce0: $ff
    rst $38                                       ; $7ce1: $ff
    rst $38                                       ; $7ce2: $ff
    rst $38                                       ; $7ce3: $ff
    rst $38                                       ; $7ce4: $ff
    rst $38                                       ; $7ce5: $ff
    rst $38                                       ; $7ce6: $ff
    rst $38                                       ; $7ce7: $ff
    rst $38                                       ; $7ce8: $ff
    rst $38                                       ; $7ce9: $ff
    rst $38                                       ; $7cea: $ff
    rst $38                                       ; $7ceb: $ff
    rst $38                                       ; $7cec: $ff
    rst $38                                       ; $7ced: $ff
    rst $38                                       ; $7cee: $ff
    rst $38                                       ; $7cef: $ff
    rst $38                                       ; $7cf0: $ff
    rst $38                                       ; $7cf1: $ff
    rst $38                                       ; $7cf2: $ff
    rst $38                                       ; $7cf3: $ff
    rst $38                                       ; $7cf4: $ff
    rst $38                                       ; $7cf5: $ff
    rst $38                                       ; $7cf6: $ff
    rst $38                                       ; $7cf7: $ff
    rst $38                                       ; $7cf8: $ff
    rst $38                                       ; $7cf9: $ff
    rst $38                                       ; $7cfa: $ff
    rst $38                                       ; $7cfb: $ff

Call_0f9_7cfc:
    rst $38                                       ; $7cfc: $ff
    rst $38                                       ; $7cfd: $ff
    rst $38                                       ; $7cfe: $ff
    rst $38                                       ; $7cff: $ff
    rst $38                                       ; $7d00: $ff
    rst $38                                       ; $7d01: $ff
    rst $38                                       ; $7d02: $ff
    rst $38                                       ; $7d03: $ff
    rst $38                                       ; $7d04: $ff
    rst $38                                       ; $7d05: $ff
    rst $38                                       ; $7d06: $ff
    rst $38                                       ; $7d07: $ff
    rst $38                                       ; $7d08: $ff
    rst $38                                       ; $7d09: $ff
    rst $38                                       ; $7d0a: $ff
    rst $38                                       ; $7d0b: $ff
    rst $38                                       ; $7d0c: $ff
    rst $38                                       ; $7d0d: $ff
    rst $38                                       ; $7d0e: $ff
    rst $38                                       ; $7d0f: $ff
    rst $38                                       ; $7d10: $ff
    rst $38                                       ; $7d11: $ff
    rst $38                                       ; $7d12: $ff
    rst $38                                       ; $7d13: $ff
    rst $38                                       ; $7d14: $ff
    rst $38                                       ; $7d15: $ff
    rst $38                                       ; $7d16: $ff
    rst $38                                       ; $7d17: $ff
    rst $38                                       ; $7d18: $ff
    rst $38                                       ; $7d19: $ff
    rst $38                                       ; $7d1a: $ff
    rst $38                                       ; $7d1b: $ff
    rst $38                                       ; $7d1c: $ff
    rst $38                                       ; $7d1d: $ff
    rst $38                                       ; $7d1e: $ff
    rst $38                                       ; $7d1f: $ff
    rst $38                                       ; $7d20: $ff
    rst $38                                       ; $7d21: $ff
    rst $38                                       ; $7d22: $ff
    rst $38                                       ; $7d23: $ff
    rst $38                                       ; $7d24: $ff
    rst $38                                       ; $7d25: $ff
    rst $38                                       ; $7d26: $ff
    rst $38                                       ; $7d27: $ff
    rst $38                                       ; $7d28: $ff
    rst $38                                       ; $7d29: $ff
    rst $38                                       ; $7d2a: $ff
    rst $38                                       ; $7d2b: $ff
    rst $38                                       ; $7d2c: $ff
    rst $38                                       ; $7d2d: $ff
    rst $38                                       ; $7d2e: $ff
    rst $38                                       ; $7d2f: $ff
    rst $38                                       ; $7d30: $ff
    rst $38                                       ; $7d31: $ff
    rst $38                                       ; $7d32: $ff
    rst $38                                       ; $7d33: $ff
    rst $38                                       ; $7d34: $ff
    rst $38                                       ; $7d35: $ff
    rst $38                                       ; $7d36: $ff
    rst $38                                       ; $7d37: $ff
    rst $38                                       ; $7d38: $ff
    rst $38                                       ; $7d39: $ff
    rst $38                                       ; $7d3a: $ff
    rst $38                                       ; $7d3b: $ff
    rst $38                                       ; $7d3c: $ff
    rst $38                                       ; $7d3d: $ff
    rst $38                                       ; $7d3e: $ff
    rst $38                                       ; $7d3f: $ff
    rst $38                                       ; $7d40: $ff
    rst $38                                       ; $7d41: $ff
    rst $38                                       ; $7d42: $ff
    rst $38                                       ; $7d43: $ff
    rst $38                                       ; $7d44: $ff
    rst $38                                       ; $7d45: $ff
    rst $38                                       ; $7d46: $ff
    rst $38                                       ; $7d47: $ff
    rst $38                                       ; $7d48: $ff
    rst $38                                       ; $7d49: $ff
    rst $38                                       ; $7d4a: $ff
    rst $38                                       ; $7d4b: $ff
    rst $38                                       ; $7d4c: $ff
    rst $38                                       ; $7d4d: $ff
    rst $38                                       ; $7d4e: $ff
    rst $38                                       ; $7d4f: $ff
    rst $38                                       ; $7d50: $ff
    rst $38                                       ; $7d51: $ff
    rst $38                                       ; $7d52: $ff
    rst $38                                       ; $7d53: $ff
    rst $38                                       ; $7d54: $ff
    rst $38                                       ; $7d55: $ff
    rst $38                                       ; $7d56: $ff
    rst $38                                       ; $7d57: $ff
    rst $38                                       ; $7d58: $ff
    rst $38                                       ; $7d59: $ff
    rst $38                                       ; $7d5a: $ff
    rst $38                                       ; $7d5b: $ff
    rst $38                                       ; $7d5c: $ff
    rst $38                                       ; $7d5d: $ff
    rst $38                                       ; $7d5e: $ff
    rst $38                                       ; $7d5f: $ff
    rst $38                                       ; $7d60: $ff
    rst $38                                       ; $7d61: $ff
    rst $38                                       ; $7d62: $ff
    rst $38                                       ; $7d63: $ff
    rst $38                                       ; $7d64: $ff
    rst $38                                       ; $7d65: $ff
    rst $38                                       ; $7d66: $ff
    rst $38                                       ; $7d67: $ff
    rst $38                                       ; $7d68: $ff
    rst $38                                       ; $7d69: $ff
    rst $38                                       ; $7d6a: $ff
    rst $38                                       ; $7d6b: $ff
    rst $38                                       ; $7d6c: $ff
    rst $38                                       ; $7d6d: $ff
    rst $38                                       ; $7d6e: $ff
    rst $38                                       ; $7d6f: $ff
    rst $38                                       ; $7d70: $ff
    rst $38                                       ; $7d71: $ff
    rst $38                                       ; $7d72: $ff
    rst $38                                       ; $7d73: $ff
    rst $38                                       ; $7d74: $ff
    rst $38                                       ; $7d75: $ff
    rst $38                                       ; $7d76: $ff
    rst $38                                       ; $7d77: $ff
    rst $38                                       ; $7d78: $ff
    rst $38                                       ; $7d79: $ff
    rst $38                                       ; $7d7a: $ff
    rst $38                                       ; $7d7b: $ff
    rst $38                                       ; $7d7c: $ff
    rst $38                                       ; $7d7d: $ff
    rst $38                                       ; $7d7e: $ff
    rst $38                                       ; $7d7f: $ff
    rst $38                                       ; $7d80: $ff
    rst $38                                       ; $7d81: $ff
    rst $38                                       ; $7d82: $ff
    rst $38                                       ; $7d83: $ff
    rst $38                                       ; $7d84: $ff
    rst $38                                       ; $7d85: $ff
    rst $38                                       ; $7d86: $ff
    rst $38                                       ; $7d87: $ff
    rst $38                                       ; $7d88: $ff
    rst $38                                       ; $7d89: $ff
    rst $38                                       ; $7d8a: $ff
    rst $38                                       ; $7d8b: $ff
    rst $38                                       ; $7d8c: $ff
    rst $38                                       ; $7d8d: $ff
    rst $38                                       ; $7d8e: $ff
    rst $38                                       ; $7d8f: $ff
    rst $38                                       ; $7d90: $ff
    rst $38                                       ; $7d91: $ff
    rst $38                                       ; $7d92: $ff
    rst $38                                       ; $7d93: $ff
    rst $38                                       ; $7d94: $ff
    rst $38                                       ; $7d95: $ff
    rst $38                                       ; $7d96: $ff
    rst $38                                       ; $7d97: $ff
    rst $38                                       ; $7d98: $ff
    rst $38                                       ; $7d99: $ff
    rst $38                                       ; $7d9a: $ff
    rst $38                                       ; $7d9b: $ff
    rst $38                                       ; $7d9c: $ff
    rst $38                                       ; $7d9d: $ff
    rst $38                                       ; $7d9e: $ff
    rst $38                                       ; $7d9f: $ff
    rst $38                                       ; $7da0: $ff
    rst $38                                       ; $7da1: $ff
    rst $38                                       ; $7da2: $ff
    rst $38                                       ; $7da3: $ff
    rst $38                                       ; $7da4: $ff
    rst $38                                       ; $7da5: $ff
    rst $38                                       ; $7da6: $ff
    rst $38                                       ; $7da7: $ff
    rst $38                                       ; $7da8: $ff
    rst $38                                       ; $7da9: $ff
    rst $38                                       ; $7daa: $ff
    rst $38                                       ; $7dab: $ff
    rst $38                                       ; $7dac: $ff
    rst $38                                       ; $7dad: $ff
    rst $38                                       ; $7dae: $ff
    rst $38                                       ; $7daf: $ff
    rst $38                                       ; $7db0: $ff
    rst $38                                       ; $7db1: $ff
    rst $38                                       ; $7db2: $ff
    rst $38                                       ; $7db3: $ff
    rst $38                                       ; $7db4: $ff
    rst $38                                       ; $7db5: $ff
    rst $38                                       ; $7db6: $ff
    rst $38                                       ; $7db7: $ff
    rst $38                                       ; $7db8: $ff
    rst $38                                       ; $7db9: $ff
    rst $38                                       ; $7dba: $ff
    rst $38                                       ; $7dbb: $ff
    rst $38                                       ; $7dbc: $ff
    rst $38                                       ; $7dbd: $ff
    rst $38                                       ; $7dbe: $ff
    rst $38                                       ; $7dbf: $ff
    rst $38                                       ; $7dc0: $ff
    rst $38                                       ; $7dc1: $ff
    rst $38                                       ; $7dc2: $ff
    rst $38                                       ; $7dc3: $ff
    rst $38                                       ; $7dc4: $ff
    rst $38                                       ; $7dc5: $ff
    rst $38                                       ; $7dc6: $ff
    rst $38                                       ; $7dc7: $ff
    rst $38                                       ; $7dc8: $ff
    rst $38                                       ; $7dc9: $ff
    rst $38                                       ; $7dca: $ff
    rst $38                                       ; $7dcb: $ff
    rst $38                                       ; $7dcc: $ff
    rst $38                                       ; $7dcd: $ff
    rst $38                                       ; $7dce: $ff
    rst $38                                       ; $7dcf: $ff
    rst $38                                       ; $7dd0: $ff
    rst $38                                       ; $7dd1: $ff
    rst $38                                       ; $7dd2: $ff
    rst $38                                       ; $7dd3: $ff
    rst $38                                       ; $7dd4: $ff
    rst $38                                       ; $7dd5: $ff
    rst $38                                       ; $7dd6: $ff
    rst $38                                       ; $7dd7: $ff
    rst $38                                       ; $7dd8: $ff
    rst $38                                       ; $7dd9: $ff
    rst $38                                       ; $7dda: $ff
    rst $38                                       ; $7ddb: $ff
    rst $38                                       ; $7ddc: $ff
    rst $38                                       ; $7ddd: $ff
    rst $38                                       ; $7dde: $ff
    rst $38                                       ; $7ddf: $ff
    rst $38                                       ; $7de0: $ff
    rst $38                                       ; $7de1: $ff
    rst $38                                       ; $7de2: $ff
    rst $38                                       ; $7de3: $ff
    rst $38                                       ; $7de4: $ff
    rst $38                                       ; $7de5: $ff
    rst $38                                       ; $7de6: $ff
    rst $38                                       ; $7de7: $ff
    rst $38                                       ; $7de8: $ff
    rst $38                                       ; $7de9: $ff
    rst $38                                       ; $7dea: $ff
    rst $38                                       ; $7deb: $ff
    rst $38                                       ; $7dec: $ff
    rst $38                                       ; $7ded: $ff
    rst $38                                       ; $7dee: $ff
    rst $38                                       ; $7def: $ff
    rst $38                                       ; $7df0: $ff
    rst $38                                       ; $7df1: $ff
    rst $38                                       ; $7df2: $ff
    rst $38                                       ; $7df3: $ff
    rst $38                                       ; $7df4: $ff
    rst $38                                       ; $7df5: $ff
    rst $38                                       ; $7df6: $ff
    rst $38                                       ; $7df7: $ff
    rst $38                                       ; $7df8: $ff
    rst $38                                       ; $7df9: $ff
    rst $38                                       ; $7dfa: $ff
    rst $38                                       ; $7dfb: $ff
    rst $38                                       ; $7dfc: $ff
    rst $38                                       ; $7dfd: $ff
    rst $38                                       ; $7dfe: $ff
    rst $38                                       ; $7dff: $ff
    rst $38                                       ; $7e00: $ff
    rst $38                                       ; $7e01: $ff
    rst $38                                       ; $7e02: $ff
    rst $38                                       ; $7e03: $ff
    rst $38                                       ; $7e04: $ff
    rst $38                                       ; $7e05: $ff
    rst $38                                       ; $7e06: $ff
    rst $38                                       ; $7e07: $ff
    rst $38                                       ; $7e08: $ff
    rst $38                                       ; $7e09: $ff
    rst $38                                       ; $7e0a: $ff
    rst $38                                       ; $7e0b: $ff
    rst $38                                       ; $7e0c: $ff
    rst $38                                       ; $7e0d: $ff
    rst $38                                       ; $7e0e: $ff
    rst $38                                       ; $7e0f: $ff
    rst $38                                       ; $7e10: $ff
    rst $38                                       ; $7e11: $ff
    rst $38                                       ; $7e12: $ff
    rst $38                                       ; $7e13: $ff
    rst $38                                       ; $7e14: $ff
    rst $38                                       ; $7e15: $ff
    rst $38                                       ; $7e16: $ff
    rst $38                                       ; $7e17: $ff
    rst $38                                       ; $7e18: $ff
    rst $38                                       ; $7e19: $ff
    rst $38                                       ; $7e1a: $ff
    rst $38                                       ; $7e1b: $ff
    rst $38                                       ; $7e1c: $ff
    rst $38                                       ; $7e1d: $ff
    rst $38                                       ; $7e1e: $ff
    rst $38                                       ; $7e1f: $ff
    rst $38                                       ; $7e20: $ff
    rst $38                                       ; $7e21: $ff
    rst $38                                       ; $7e22: $ff
    rst $38                                       ; $7e23: $ff
    rst $38                                       ; $7e24: $ff
    rst $38                                       ; $7e25: $ff
    rst $38                                       ; $7e26: $ff
    rst $38                                       ; $7e27: $ff
    rst $38                                       ; $7e28: $ff
    rst $38                                       ; $7e29: $ff
    rst $38                                       ; $7e2a: $ff
    rst $38                                       ; $7e2b: $ff
    rst $38                                       ; $7e2c: $ff
    rst $38                                       ; $7e2d: $ff
    rst $38                                       ; $7e2e: $ff
    rst $38                                       ; $7e2f: $ff
    rst $38                                       ; $7e30: $ff
    rst $38                                       ; $7e31: $ff
    rst $38                                       ; $7e32: $ff
    rst $38                                       ; $7e33: $ff
    rst $38                                       ; $7e34: $ff
    rst $38                                       ; $7e35: $ff
    rst $38                                       ; $7e36: $ff
    rst $38                                       ; $7e37: $ff
    rst $38                                       ; $7e38: $ff
    rst $38                                       ; $7e39: $ff
    rst $38                                       ; $7e3a: $ff
    rst $38                                       ; $7e3b: $ff
    rst $38                                       ; $7e3c: $ff
    rst $38                                       ; $7e3d: $ff
    rst $38                                       ; $7e3e: $ff
    rst $38                                       ; $7e3f: $ff
    rst $38                                       ; $7e40: $ff
    rst $38                                       ; $7e41: $ff
    rst $38                                       ; $7e42: $ff
    rst $38                                       ; $7e43: $ff
    rst $38                                       ; $7e44: $ff
    rst $38                                       ; $7e45: $ff
    rst $38                                       ; $7e46: $ff
    rst $38                                       ; $7e47: $ff
    rst $38                                       ; $7e48: $ff
    rst $38                                       ; $7e49: $ff
    rst $38                                       ; $7e4a: $ff
    rst $38                                       ; $7e4b: $ff
    rst $38                                       ; $7e4c: $ff
    rst $38                                       ; $7e4d: $ff
    rst $38                                       ; $7e4e: $ff
    rst $38                                       ; $7e4f: $ff
    rst $38                                       ; $7e50: $ff
    rst $38                                       ; $7e51: $ff
    rst $38                                       ; $7e52: $ff
    rst $38                                       ; $7e53: $ff
    rst $38                                       ; $7e54: $ff
    rst $38                                       ; $7e55: $ff
    rst $38                                       ; $7e56: $ff
    rst $38                                       ; $7e57: $ff
    rst $38                                       ; $7e58: $ff
    rst $38                                       ; $7e59: $ff
    rst $38                                       ; $7e5a: $ff
    rst $38                                       ; $7e5b: $ff
    rst $38                                       ; $7e5c: $ff
    rst $38                                       ; $7e5d: $ff
    rst $38                                       ; $7e5e: $ff
    rst $38                                       ; $7e5f: $ff
    rst $38                                       ; $7e60: $ff
    rst $38                                       ; $7e61: $ff
    rst $38                                       ; $7e62: $ff
    rst $38                                       ; $7e63: $ff
    rst $38                                       ; $7e64: $ff
    rst $38                                       ; $7e65: $ff
    rst $38                                       ; $7e66: $ff
    rst $38                                       ; $7e67: $ff
    rst $38                                       ; $7e68: $ff
    rst $38                                       ; $7e69: $ff
    rst $38                                       ; $7e6a: $ff
    rst $38                                       ; $7e6b: $ff
    rst $38                                       ; $7e6c: $ff
    rst $38                                       ; $7e6d: $ff
    rst $38                                       ; $7e6e: $ff
    rst $38                                       ; $7e6f: $ff
    rst $38                                       ; $7e70: $ff
    rst $38                                       ; $7e71: $ff
    rst $38                                       ; $7e72: $ff
    rst $38                                       ; $7e73: $ff
    rst $38                                       ; $7e74: $ff
    rst $38                                       ; $7e75: $ff
    rst $38                                       ; $7e76: $ff
    rst $38                                       ; $7e77: $ff
    rst $38                                       ; $7e78: $ff
    rst $38                                       ; $7e79: $ff
    rst $38                                       ; $7e7a: $ff
    rst $38                                       ; $7e7b: $ff
    rst $38                                       ; $7e7c: $ff
    rst $38                                       ; $7e7d: $ff
    rst $38                                       ; $7e7e: $ff
    rst $38                                       ; $7e7f: $ff
    rst $38                                       ; $7e80: $ff
    rst $38                                       ; $7e81: $ff
    rst $38                                       ; $7e82: $ff
    rst $38                                       ; $7e83: $ff
    rst $38                                       ; $7e84: $ff
    rst $38                                       ; $7e85: $ff
    rst $38                                       ; $7e86: $ff
    rst $38                                       ; $7e87: $ff
    rst $38                                       ; $7e88: $ff
    rst $38                                       ; $7e89: $ff
    rst $38                                       ; $7e8a: $ff
    rst $38                                       ; $7e8b: $ff
    rst $38                                       ; $7e8c: $ff
    rst $38                                       ; $7e8d: $ff
    rst $38                                       ; $7e8e: $ff
    rst $38                                       ; $7e8f: $ff
    rst $38                                       ; $7e90: $ff
    rst $38                                       ; $7e91: $ff
    rst $38                                       ; $7e92: $ff
    rst $38                                       ; $7e93: $ff
    rst $38                                       ; $7e94: $ff
    rst $38                                       ; $7e95: $ff
    rst $38                                       ; $7e96: $ff
    rst $38                                       ; $7e97: $ff
    rst $38                                       ; $7e98: $ff
    rst $38                                       ; $7e99: $ff
    rst $38                                       ; $7e9a: $ff
    rst $38                                       ; $7e9b: $ff
    rst $38                                       ; $7e9c: $ff
    rst $38                                       ; $7e9d: $ff
    rst $38                                       ; $7e9e: $ff
    rst $38                                       ; $7e9f: $ff
    rst $38                                       ; $7ea0: $ff
    rst $38                                       ; $7ea1: $ff
    rst $38                                       ; $7ea2: $ff
    rst $38                                       ; $7ea3: $ff
    rst $38                                       ; $7ea4: $ff
    rst $38                                       ; $7ea5: $ff
    rst $38                                       ; $7ea6: $ff
    rst $38                                       ; $7ea7: $ff
    rst $38                                       ; $7ea8: $ff
    rst $38                                       ; $7ea9: $ff
    rst $38                                       ; $7eaa: $ff
    rst $38                                       ; $7eab: $ff
    rst $38                                       ; $7eac: $ff
    rst $38                                       ; $7ead: $ff
    rst $38                                       ; $7eae: $ff
    rst $38                                       ; $7eaf: $ff
    rst $38                                       ; $7eb0: $ff
    rst $38                                       ; $7eb1: $ff
    rst $38                                       ; $7eb2: $ff
    rst $38                                       ; $7eb3: $ff
    rst $38                                       ; $7eb4: $ff
    rst $38                                       ; $7eb5: $ff
    rst $38                                       ; $7eb6: $ff
    rst $38                                       ; $7eb7: $ff
    rst $38                                       ; $7eb8: $ff
    rst $38                                       ; $7eb9: $ff
    rst $38                                       ; $7eba: $ff
    rst $38                                       ; $7ebb: $ff
    rst $38                                       ; $7ebc: $ff
    rst $38                                       ; $7ebd: $ff
    rst $38                                       ; $7ebe: $ff
    rst $38                                       ; $7ebf: $ff
    rst $38                                       ; $7ec0: $ff
    rst $38                                       ; $7ec1: $ff
    rst $38                                       ; $7ec2: $ff
    rst $38                                       ; $7ec3: $ff
    rst $38                                       ; $7ec4: $ff
    rst $38                                       ; $7ec5: $ff
    rst $38                                       ; $7ec6: $ff
    rst $38                                       ; $7ec7: $ff
    rst $38                                       ; $7ec8: $ff
    rst $38                                       ; $7ec9: $ff
    rst $38                                       ; $7eca: $ff
    rst $38                                       ; $7ecb: $ff
    rst $38                                       ; $7ecc: $ff
    rst $38                                       ; $7ecd: $ff
    rst $38                                       ; $7ece: $ff
    rst $38                                       ; $7ecf: $ff
    rst $38                                       ; $7ed0: $ff
    rst $38                                       ; $7ed1: $ff
    rst $38                                       ; $7ed2: $ff
    rst $38                                       ; $7ed3: $ff
    rst $38                                       ; $7ed4: $ff
    rst $38                                       ; $7ed5: $ff
    rst $38                                       ; $7ed6: $ff
    rst $38                                       ; $7ed7: $ff
    rst $38                                       ; $7ed8: $ff
    rst $38                                       ; $7ed9: $ff
    rst $38                                       ; $7eda: $ff
    rst $38                                       ; $7edb: $ff
    rst $38                                       ; $7edc: $ff
    rst $38                                       ; $7edd: $ff
    rst $38                                       ; $7ede: $ff
    rst $38                                       ; $7edf: $ff
    rst $38                                       ; $7ee0: $ff
    rst $38                                       ; $7ee1: $ff
    rst $38                                       ; $7ee2: $ff
    rst $38                                       ; $7ee3: $ff
    rst $38                                       ; $7ee4: $ff
    rst $38                                       ; $7ee5: $ff
    rst $38                                       ; $7ee6: $ff
    rst $38                                       ; $7ee7: $ff
    rst $38                                       ; $7ee8: $ff
    rst $38                                       ; $7ee9: $ff
    rst $38                                       ; $7eea: $ff
    rst $38                                       ; $7eeb: $ff
    rst $38                                       ; $7eec: $ff
    rst $38                                       ; $7eed: $ff
    rst $38                                       ; $7eee: $ff
    rst $38                                       ; $7eef: $ff
    rst $38                                       ; $7ef0: $ff
    rst $38                                       ; $7ef1: $ff
    rst $38                                       ; $7ef2: $ff
    rst $38                                       ; $7ef3: $ff
    rst $38                                       ; $7ef4: $ff
    rst $38                                       ; $7ef5: $ff
    rst $38                                       ; $7ef6: $ff
    rst $38                                       ; $7ef7: $ff
    rst $38                                       ; $7ef8: $ff
    rst $38                                       ; $7ef9: $ff
    rst $38                                       ; $7efa: $ff
    rst $38                                       ; $7efb: $ff
    rst $38                                       ; $7efc: $ff
    rst $38                                       ; $7efd: $ff
    rst $38                                       ; $7efe: $ff
    rst $38                                       ; $7eff: $ff
    rst $38                                       ; $7f00: $ff
    rst $38                                       ; $7f01: $ff
    rst $38                                       ; $7f02: $ff
    rst $38                                       ; $7f03: $ff
    rst $38                                       ; $7f04: $ff
    rst $38                                       ; $7f05: $ff
    rst $38                                       ; $7f06: $ff
    rst $38                                       ; $7f07: $ff
    rst $38                                       ; $7f08: $ff
    rst $38                                       ; $7f09: $ff
    rst $38                                       ; $7f0a: $ff
    rst $38                                       ; $7f0b: $ff
    rst $38                                       ; $7f0c: $ff
    rst $38                                       ; $7f0d: $ff
    rst $38                                       ; $7f0e: $ff
    rst $38                                       ; $7f0f: $ff
    rst $38                                       ; $7f10: $ff
    rst $38                                       ; $7f11: $ff
    rst $38                                       ; $7f12: $ff
    rst $38                                       ; $7f13: $ff
    rst $38                                       ; $7f14: $ff
    rst $38                                       ; $7f15: $ff
    rst $38                                       ; $7f16: $ff
    rst $38                                       ; $7f17: $ff
    rst $38                                       ; $7f18: $ff
    rst $38                                       ; $7f19: $ff
    rst $38                                       ; $7f1a: $ff
    rst $38                                       ; $7f1b: $ff
    rst $38                                       ; $7f1c: $ff
    rst $38                                       ; $7f1d: $ff
    rst $38                                       ; $7f1e: $ff
    rst $38                                       ; $7f1f: $ff
    rst $38                                       ; $7f20: $ff
    rst $38                                       ; $7f21: $ff
    rst $38                                       ; $7f22: $ff
    rst $38                                       ; $7f23: $ff
    rst $38                                       ; $7f24: $ff
    rst $38                                       ; $7f25: $ff
    rst $38                                       ; $7f26: $ff
    rst $38                                       ; $7f27: $ff
    rst $38                                       ; $7f28: $ff
    rst $38                                       ; $7f29: $ff
    rst $38                                       ; $7f2a: $ff
    rst $38                                       ; $7f2b: $ff
    rst $38                                       ; $7f2c: $ff
    rst $38                                       ; $7f2d: $ff
    rst $38                                       ; $7f2e: $ff
    rst $38                                       ; $7f2f: $ff
    rst $38                                       ; $7f30: $ff
    rst $38                                       ; $7f31: $ff
    rst $38                                       ; $7f32: $ff
    rst $38                                       ; $7f33: $ff
    rst $38                                       ; $7f34: $ff
    rst $38                                       ; $7f35: $ff
    rst $38                                       ; $7f36: $ff
    rst $38                                       ; $7f37: $ff
    rst $38                                       ; $7f38: $ff
    rst $38                                       ; $7f39: $ff
    rst $38                                       ; $7f3a: $ff
    rst $38                                       ; $7f3b: $ff
    rst $38                                       ; $7f3c: $ff
    rst $38                                       ; $7f3d: $ff
    rst $38                                       ; $7f3e: $ff
    rst $38                                       ; $7f3f: $ff
    rst $38                                       ; $7f40: $ff
    rst $38                                       ; $7f41: $ff
    rst $38                                       ; $7f42: $ff
    rst $38                                       ; $7f43: $ff
    rst $38                                       ; $7f44: $ff
    rst $38                                       ; $7f45: $ff
    rst $38                                       ; $7f46: $ff
    rst $38                                       ; $7f47: $ff
    rst $38                                       ; $7f48: $ff
    rst $38                                       ; $7f49: $ff
    rst $38                                       ; $7f4a: $ff
    rst $38                                       ; $7f4b: $ff
    rst $38                                       ; $7f4c: $ff
    rst $38                                       ; $7f4d: $ff
    rst $38                                       ; $7f4e: $ff
    rst $38                                       ; $7f4f: $ff
    rst $38                                       ; $7f50: $ff
    rst $38                                       ; $7f51: $ff
    rst $38                                       ; $7f52: $ff
    rst $38                                       ; $7f53: $ff
    rst $38                                       ; $7f54: $ff
    rst $38                                       ; $7f55: $ff
    rst $38                                       ; $7f56: $ff
    rst $38                                       ; $7f57: $ff
    rst $38                                       ; $7f58: $ff
    rst $38                                       ; $7f59: $ff
    rst $38                                       ; $7f5a: $ff
    rst $38                                       ; $7f5b: $ff
    rst $38                                       ; $7f5c: $ff
    rst $38                                       ; $7f5d: $ff
    rst $38                                       ; $7f5e: $ff
    rst $38                                       ; $7f5f: $ff
    rst $38                                       ; $7f60: $ff
    rst $38                                       ; $7f61: $ff
    rst $38                                       ; $7f62: $ff
    rst $38                                       ; $7f63: $ff
    rst $38                                       ; $7f64: $ff
    rst $38                                       ; $7f65: $ff
    rst $38                                       ; $7f66: $ff
    rst $38                                       ; $7f67: $ff
    rst $38                                       ; $7f68: $ff
    rst $38                                       ; $7f69: $ff
    rst $38                                       ; $7f6a: $ff
    rst $38                                       ; $7f6b: $ff
    rst $38                                       ; $7f6c: $ff
    rst $38                                       ; $7f6d: $ff
    rst $38                                       ; $7f6e: $ff
    rst $38                                       ; $7f6f: $ff
    rst $38                                       ; $7f70: $ff
    rst $38                                       ; $7f71: $ff
    rst $38                                       ; $7f72: $ff
    rst $38                                       ; $7f73: $ff
    rst $38                                       ; $7f74: $ff
    rst $38                                       ; $7f75: $ff
    rst $38                                       ; $7f76: $ff
    rst $38                                       ; $7f77: $ff
    rst $38                                       ; $7f78: $ff
    rst $38                                       ; $7f79: $ff
    rst $38                                       ; $7f7a: $ff
    rst $38                                       ; $7f7b: $ff
    rst $38                                       ; $7f7c: $ff
    rst $38                                       ; $7f7d: $ff
    rst $38                                       ; $7f7e: $ff
    rst $38                                       ; $7f7f: $ff
    rst $38                                       ; $7f80: $ff
    rst $38                                       ; $7f81: $ff
    rst $38                                       ; $7f82: $ff
    rst $38                                       ; $7f83: $ff
    rst $38                                       ; $7f84: $ff
    rst $38                                       ; $7f85: $ff
    rst $38                                       ; $7f86: $ff
    rst $38                                       ; $7f87: $ff
    rst $38                                       ; $7f88: $ff
    rst $38                                       ; $7f89: $ff
    rst $38                                       ; $7f8a: $ff
    rst $38                                       ; $7f8b: $ff
    rst $38                                       ; $7f8c: $ff
    rst $38                                       ; $7f8d: $ff
    rst $38                                       ; $7f8e: $ff
    rst $38                                       ; $7f8f: $ff
    rst $38                                       ; $7f90: $ff
    rst $38                                       ; $7f91: $ff
    rst $38                                       ; $7f92: $ff
    rst $38                                       ; $7f93: $ff
    rst $38                                       ; $7f94: $ff
    rst $38                                       ; $7f95: $ff
    rst $38                                       ; $7f96: $ff
    rst $38                                       ; $7f97: $ff
    rst $38                                       ; $7f98: $ff
    rst $38                                       ; $7f99: $ff
    rst $38                                       ; $7f9a: $ff
    rst $38                                       ; $7f9b: $ff
    rst $38                                       ; $7f9c: $ff
    rst $38                                       ; $7f9d: $ff
    rst $38                                       ; $7f9e: $ff
    rst $38                                       ; $7f9f: $ff
    rst $38                                       ; $7fa0: $ff
    rst $38                                       ; $7fa1: $ff
    rst $38                                       ; $7fa2: $ff
    rst $38                                       ; $7fa3: $ff
    rst $38                                       ; $7fa4: $ff
    rst $38                                       ; $7fa5: $ff
    rst $38                                       ; $7fa6: $ff
    rst $38                                       ; $7fa7: $ff
    rst $38                                       ; $7fa8: $ff
    rst $38                                       ; $7fa9: $ff
    rst $38                                       ; $7faa: $ff
    rst $38                                       ; $7fab: $ff
    rst $38                                       ; $7fac: $ff
    rst $38                                       ; $7fad: $ff
    rst $38                                       ; $7fae: $ff
    rst $38                                       ; $7faf: $ff
    rst $38                                       ; $7fb0: $ff
    rst $38                                       ; $7fb1: $ff
    rst $38                                       ; $7fb2: $ff
    rst $38                                       ; $7fb3: $ff
    rst $38                                       ; $7fb4: $ff
    rst $38                                       ; $7fb5: $ff
    rst $38                                       ; $7fb6: $ff
    rst $38                                       ; $7fb7: $ff
    rst $38                                       ; $7fb8: $ff
    rst $38                                       ; $7fb9: $ff
    rst $38                                       ; $7fba: $ff
    rst $38                                       ; $7fbb: $ff
    rst $38                                       ; $7fbc: $ff
    rst $38                                       ; $7fbd: $ff
    rst $38                                       ; $7fbe: $ff
    rst $38                                       ; $7fbf: $ff
    rst $38                                       ; $7fc0: $ff
    rst $38                                       ; $7fc1: $ff
    rst $38                                       ; $7fc2: $ff
    rst $38                                       ; $7fc3: $ff
    rst $38                                       ; $7fc4: $ff
    rst $38                                       ; $7fc5: $ff
    rst $38                                       ; $7fc6: $ff
    rst $38                                       ; $7fc7: $ff
    rst $38                                       ; $7fc8: $ff
    rst $38                                       ; $7fc9: $ff
    rst $38                                       ; $7fca: $ff
    rst $38                                       ; $7fcb: $ff
    rst $38                                       ; $7fcc: $ff
    rst $38                                       ; $7fcd: $ff
    rst $38                                       ; $7fce: $ff
    rst $38                                       ; $7fcf: $ff
    rst $38                                       ; $7fd0: $ff
    rst $38                                       ; $7fd1: $ff
    rst $38                                       ; $7fd2: $ff
    rst $38                                       ; $7fd3: $ff
    rst $38                                       ; $7fd4: $ff
    rst $38                                       ; $7fd5: $ff
    rst $38                                       ; $7fd6: $ff
    rst $38                                       ; $7fd7: $ff
    rst $38                                       ; $7fd8: $ff
    rst $38                                       ; $7fd9: $ff
    rst $38                                       ; $7fda: $ff
    rst $38                                       ; $7fdb: $ff
    rst $38                                       ; $7fdc: $ff
    rst $38                                       ; $7fdd: $ff
    rst $38                                       ; $7fde: $ff
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
