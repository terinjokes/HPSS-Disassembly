; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $09f", ROMX[$4000], BANK[$9f]

    db $9f

    ld b, b                                       ; $4001: $40
    inc d                                         ; $4002: $14
    ld b, e                                       ; $4003: $43
    db $10                                        ; $4004: $10
    ld b, d                                       ; $4005: $42
    rst $38                                       ; $4006: $ff
    ld bc, $8360                                  ; $4007: $01 $60 $83
    rst $38                                       ; $400a: $ff
    pop bc                                        ; $400b: $c1
    cp a                                          ; $400c: $bf
    inc b                                         ; $400d: $04
    ld c, b                                       ; $400e: $48
    nop                                           ; $400f: $00
    nop                                           ; $4010: $00
    rst $38                                       ; $4011: $ff
    ld [hl+], a                                   ; $4012: $22
    db $dd                                        ; $4013: $dd
    ld d, l                                       ; $4014: $55
    xor d                                         ; $4015: $aa
    cp d                                          ; $4016: $ba
    ld b, l                                       ; $4017: $45
    ld [hl], l                                    ; $4018: $75
    nop                                           ; $4019: $00
    adc d                                         ; $401a: $8a
    rst $38                                       ; $401b: $ff
    nop                                           ; $401c: $00

jr_09f_401d:
    rst $18                                       ; $401d: $df
    jr nz, jr_09f_401d                            ; $401e: $20 $fd

    nop                                           ; $4020: $00
    nop                                           ; $4021: $00
    nop                                           ; $4022: $00
    rst $38                                       ; $4023: $ff
    nop                                           ; $4024: $00
    rst $38                                       ; $4025: $ff
    db $28, $d7                                   ; $4026: $28 $d7
    sub l                                         ; $4028: $95
    ld l, d                                       ; $4029: $6a
    xor $00                                       ; $402a: $ee $00
    ld de, $04fb                                  ; $402c: $11 $fb $04
    rst $38                                       ; $402f: $ff
    nop                                           ; $4030: $00
    db $eb                                        ; $4031: $eb
    nop                                           ; $4032: $00
    ld [hl], l                                    ; $4033: $75
    nop                                           ; $4034: $00
    nop                                           ; $4035: $00
    xor b                                         ; $4036: $a8
    ld [bc], a                                    ; $4037: $02
    ld d, b                                       ; $4038: $50
    ld bc, $0201                                  ; $4039: $01 $01 $02
    add d                                         ; $403c: $82
    nop                                           ; $403d: $00
    inc h                                         ; $403e: $24
    inc d                                         ; $403f: $14
    ld [$0c0b], sp                                ; $4040: $08 $0b $0c
    add hl, bc                                    ; $4043: $09
    ld c, $d6                                     ; $4044: $0e $d6
    nop                                           ; $4046: $00
    db $28, $89                                   ; $4047: $28 $89
    ld a, [hl]                                    ; $4049: $7e
    ld l, d                                       ; $404a: $6a
    sbc l                                         ; $404b: $9d
    rrca                                          ; $404c: $0f
    jr jr_09f_4059                                ; $404d: $18 $0a

    ld b, b                                       ; $404f: $40
    inc e                                         ; $4050: $1c
    inc b                                         ; $4051: $04
    nop                                           ; $4052: $00
    dec e                                         ; $4053: $1d
    ld c, a                                       ; $4054: $4f
    cp d                                          ; $4055: $ba
    dec bc                                        ; $4056: $0b
    rlca                                          ; $4057: $07
    ld [bc], a                                    ; $4058: $02

jr_09f_4059:
    db $10                                        ; $4059: $10
    ld bc, $0005                                  ; $405a: $01 $05 $00
    ld bc, $0808                                  ; $405d: $01 $08 $08
    rlca                                          ; $4060: $07
    db $10                                        ; $4061: $10
    ld [$0800], sp                                ; $4062: $08 $00 $08
    db $10                                        ; $4065: $10
    ld [$eefc], a                                 ; $4066: $ea $fc $ee
    jr @+$0c                                      ; $4069: $18 $0a

    inc a                                         ; $406b: $3c
    nop                                           ; $406c: $00
    dec c                                         ; $406d: $0d
    ld e, [hl]                                    ; $406e: $5e
    cpl                                           ; $406f: $2f
    dec de                                        ; $4070: $1b
    rrca                                          ; $4071: $0f
    ld hl, sp+$2d                                 ; $4072: $f8 $2d
    jr jr_09f_4076                                ; $4074: $18 $00

jr_09f_4076:
    ld [$061d], sp                                ; $4076: $08 $1d $06
    jr jr_09f_4094                                ; $4079: $18 $19

    ld c, $1b                                     ; $407b: $0e $1b
    rlca                                          ; $407d: $07
    ld b, b                                       ; $407e: $40

Jump_09f_407f:
    rrca                                          ; $407f: $0f
    ld [hl+], a                                   ; $4080: $22
    db $10                                        ; $4081: $10
    ld bc, $1000                                  ; $4082: $01 $00 $10
    nop                                           ; $4085: $00
    ld [$001c], sp                                ; $4086: $08 $1c $00
    db $ec                                        ; $4089: $ec
    inc e                                         ; $408a: $1c
    db $ec                                        ; $408b: $ec
    ld hl, sp-$14                                 ; $408c: $f8 $ec
    jr jr_09f_409c                                ; $408e: $18 $0c

    jr jr_09f_4094                                ; $4090: $18 $02

    ld c, $18                                     ; $4092: $0e $18

jr_09f_4094:
    dec c                                         ; $4094: $0d
    jr jr_09f_40c6                                ; $4095: $18 $2f

    jr @+$72                                      ; $4097: $18 $70

    ld [$0000], sp                                ; $4099: $08 $00 $00

jr_09f_409c:
    rst $38                                       ; $409c: $ff
    ld de, $a2ee                                  ; $409d: $11 $ee $a2
    ld e, l                                       ; $40a0: $5d
    push de                                       ; $40a1: $d5
    ld a, [hl+]                                   ; $40a2: $2a
    db $eb                                        ; $40a3: $eb
    jr nz, jr_09f_40ba                            ; $40a4: $20 $14

    rst $38                                       ; $40a6: $ff
    add b                                         ; $40a7: $80
    nop                                           ; $40a8: $00
    ld [$95f7], sp                                ; $40a9: $08 $f7 $95
    ld l, d                                       ; $40ac: $6a
    ld a, $00                                     ; $40ad: $3e $00
    pop bc                                        ; $40af: $c1
    ei                                            ; $40b0: $fb
    inc b                                         ; $40b1: $04
    rst $18                                       ; $40b2: $df
    jr nz, @+$80                                  ; $40b3: $20 $7e

    add b                                         ; $40b5: $80
    ei                                            ; $40b6: $fb
    add b                                         ; $40b7: $80
    sub b                                         ; $40b8: $90
    nop                                           ; $40b9: $00

jr_09f_40ba:
    ld [bc], a                                    ; $40ba: $02
    db $fd                                        ; $40bb: $fd
    ld d, h                                       ; $40bc: $54
    xor e                                         ; $40bd: $ab
    db $eb                                        ; $40be: $eb
    inc d                                         ; $40bf: $14
    cp l                                          ; $40c0: $bd
    ld [bc], a                                    ; $40c1: $02
    ld b, d                                       ; $40c2: $42
    rst $38                                       ; $40c3: $ff
    nop                                           ; $40c4: $00
    rst $28                                       ; $40c5: $ef

jr_09f_40c6:
    nop                                           ; $40c6: $00
    rst $10                                       ; $40c7: $d7
    and b                                         ; $40c8: $a0
    db $10                                        ; $40c9: $10
    sub d                                         ; $40ca: $92
    nop                                           ; $40cb: $00
    ld l, l                                       ; $40cc: $6d
    ld b, l                                       ; $40cd: $45
    cp d                                          ; $40ce: $ba
    xor e                                         ; $40cf: $ab
    ld d, h                                       ; $40d0: $54
    rst $18                                       ; $40d1: $df
    jr nz, jr_09f_414b                            ; $40d2: $20 $77

    nop                                           ; $40d4: $00
    adc b                                         ; $40d5: $88
    ld a, [hl]                                    ; $40d6: $7e
    nop                                           ; $40d7: $00
    call nc, $e800                                ; $40d8: $d4 $00 $e8
    nop                                           ; $40db: $00
    ld [hl], c                                    ; $40dc: $71
    nop                                           ; $40dd: $00
    nop                                           ; $40de: $00
    ld h, b                                       ; $40df: $60
    sbc [hl]                                      ; $40e0: $9e
    ld [bc], a                                    ; $40e1: $02
    pop hl                                        ; $40e2: $e1
    ld b, c                                       ; $40e3: $41
    add b                                         ; $40e4: $80
    inc hl                                        ; $40e5: $23
    ld [bc], a                                    ; $40e6: $02
    ret nz                                        ; $40e7: $c0

    ld c, h                                       ; $40e8: $4c
    inc sp                                        ; $40e9: $33
    xor e                                         ; $40ea: $ab
    nop                                           ; $40eb: $00
    ld b, e                                       ; $40ec: $43
    adc [hl]                                      ; $40ed: $8e
    nop                                           ; $40ee: $00
    ld hl, $0840                                  ; $40ef: $21 $40 $08
    sub e                                         ; $40f2: $93
    nop                                           ; $40f3: $00
    and b                                         ; $40f4: $a0
    db $10                                        ; $40f5: $10
    add d                                         ; $40f6: $82

Call_09f_40f7:
    ld bc, $f5fc                                  ; $40f7: $01 $fc $f5
    nop                                           ; $40fa: $00
    ld [$184a], sp                                ; $40fb: $08 $4a $18
    jp hl                                         ; $40fe: $e9


    inc e                                         ; $40ff: $1c
    ld l, $18                                     ; $4100: $2e $18

Call_09f_4102:
    ld [$1c20], sp                                ; $4102: $08 $20 $1c
    adc [hl]                                      ; $4105: $8e
    inc b                                         ; $4106: $04
    nop                                           ; $4107: $00
    ld c, $58                                     ; $4108: $0e $58
    db $ed                                        ; $410a: $ed
    nop                                           ; $410b: $00
    ld e, d                                       ; $410c: $5a
    ld [bc], a                                    ; $410d: $02

Call_09f_410e:
    nop                                           ; $410e: $00
    db $fd                                        ; $410f: $fd
    nop                                           ; $4110: $00
    jr z, jr_09f_4113                             ; $4111: $28 $00

jr_09f_4113:
    inc d                                         ; $4113: $14
    or h                                          ; $4114: $b4
    stop                                          ; $4115: $10 $00
    nop                                           ; $4117: $00
    nop                                           ; $4118: $00
    ld d, $0f                                     ; $4119: $16 $0f
    dec bc                                        ; $411b: $0b
    inc b                                         ; $411c: $04
    ld c, $04                                     ; $411d: $0e $04
    sub l                                         ; $411f: $95
    nop                                           ; $4120: $00
    ld c, $0c                                     ; $4121: $0e $0c
    ei                                            ; $4123: $fb
    ld l, a                                       ; $4124: $6f

Jump_09f_4125:
    pop af                                        ; $4125: $f1
    ld sp, hl                                     ; $4126: $f9
    ld [bc], a                                    ; $4127: $02
    ld b, c                                       ; $4128: $41
    ld [$8408], sp                                ; $4129: $08 $08 $84
    inc bc                                        ; $412c: $03
    ld bc, $00ce                                  ; $412d: $01 $ce $00
    ld b, e                                       ; $4130: $43
    nop                                           ; $4131: $00
    cp $02                                        ; $4132: $fe $02
    ld bc, $ff83                                  ; $4134: $01 $83 $ff
    ld a, [$f87c]                                 ; $4137: $fa $7c $f8
    or b                                          ; $413a: $b0
    nop                                           ; $413b: $00
    ld c, $00                                     ; $413c: $0e $00
    sbc b                                         ; $413e: $98
    ld c, b                                       ; $413f: $48
    sbc h                                         ; $4140: $9c
    ld c, h                                       ; $4141: $4c
    sbc b                                         ; $4142: $98
    call z, $8c98                                 ; $4143: $cc $98 $8c
    ld b, $18                                     ; $4146: $06 $18
    inc c                                         ; $4148: $0c
    ld e, b                                       ; $4149: $58
    inc c                                         ; $414a: $0c

jr_09f_414b:
    jr jr_09f_4184                                ; $414b: $18 $37

    jr nz, jr_09f_4156                            ; $414d: $20 $07

    jr nc, jr_09f_4173                            ; $414f: $30 $22

    stop                                          ; $4151: $10 $00
    nop                                           ; $4153: $00
    add b                                         ; $4154: $80
    ld c, e                                       ; $4155: $4b

jr_09f_4156:
    jr jr_09f_4198                                ; $4156: $18 $40

    nop                                           ; $4158: $00
    and b                                         ; $4159: $a0
    nop                                           ; $415a: $00
    nop                                           ; $415b: $00
    ld d, c                                       ; $415c: $51
    nop                                           ; $415d: $00
    nop                                           ; $415e: $00
    adc a                                         ; $415f: $8f
    ld [$b410], sp                                ; $4160: $08 $10 $b4
    jr jr_09f_4175                                ; $4163: $18 $10

    dec sp                                        ; $4165: $3b
    inc c                                         ; $4166: $0c
    rra                                           ; $4167: $1f
    db $f4                                        ; $4168: $f4
    jr nz, @+$0e                                  ; $4169: $20 $0c

    sbc b                                         ; $416b: $98
    inc c                                         ; $416c: $0c
    ld e, b                                       ; $416d: $58
    ld bc, $384c                                  ; $416e: $01 $4c $38
    adc h                                         ; $4171: $8c
    ld a, b                                       ; $4172: $78

jr_09f_4173:
    xor h                                         ; $4173: $ac
    ret c                                         ; $4174: $d8

jr_09f_4175:
    call z, Call_000_00f4                         ; $4175: $cc $f4 $00
    ld b, b                                       ; $4178: $40
    dec c                                         ; $4179: $0d
    ld b, b                                       ; $417a: $40

jr_09f_417b:
    ld h, b                                       ; $417b: $60
    ld de, $f700                                  ; $417c: $11 $00 $f7
    ld [$18ee], sp                                ; $417f: $08 $ee $18
    inc b                                         ; $4182: $04
    ret                                           ; $4183: $c9


jr_09f_4184:
    inc e                                         ; $4184: $1c
    xor [hl]                                      ; $4185: $ae
    jr jr_09f_41d0                                ; $4186: $18 $48

    and b                                         ; $4188: $a0
    db $10                                        ; $4189: $10
    ld l, $18                                     ; $418a: $2e $18
    db $10                                        ; $418c: $10
    ld [hl], l                                    ; $418d: $75

jr_09f_418e:
    nop                                           ; $418e: $00
    xor d                                         ; $418f: $aa
    ld b, [hl]                                    ; $4190: $46
    nop                                           ; $4191: $00
    ld [bc], a                                    ; $4192: $02
    nop                                           ; $4193: $00
    add c                                         ; $4194: $81
    nop                                           ; $4195: $00

jr_09f_4196:
    ld b, b                                       ; $4196: $40
    ld [de], a                                    ; $4197: $12

jr_09f_4198:
    ld d, [hl]                                    ; $4198: $56
    ld de, $00fe                                  ; $4199: $11 $fe $00
    cp a                                          ; $419c: $bf
    nop                                           ; $419d: $00
    ei                                            ; $419e: $fb
    nop                                           ; $419f: $00
    ld bc, $00f7                                  ; $41a0: $01 $f7 $00
    dec hl                                        ; $41a3: $2b
    nop                                           ; $41a4: $00
    ld d, l                                       ; $41a5: $55
    nop                                           ; $41a6: $00
    add d                                         ; $41a7: $82
    ld l, b                                       ; $41a8: $68
    ld bc, $f082                                  ; $41a9: $01 $82 $f0
    jr jr_09f_4196                                ; $41ac: $18 $e8

    nop                                           ; $41ae: $00
    ld d, b                                       ; $41af: $50
    nop                                           ; $41b0: $00
    and h                                         ; $41b1: $a4
    halt                                          ; $41b2: $76
    ld bc, $df20                                  ; $41b3: $01 $20 $df
    and b                                         ; $41b6: $a0
    ld [$00dc], sp                                ; $41b7: $08 $dc $00
    inc c                                         ; $41ba: $0c
    ld d, b                                       ; $41bb: $50
    ld bc, $9804                                  ; $41bc: $01 $04 $98
    or b                                          ; $41bf: $b0
    ld c, b                                       ; $41c0: $48
    add b                                         ; $41c1: $80
    add hl, bc                                    ; $41c2: $09
    ret nz                                        ; $41c3: $c0

    jr c, jr_09f_41e5                             ; $41c4: $38 $1f

    ld a, [bc]                                    ; $41c6: $0a
    nop                                           ; $41c7: $00
    dec d                                         ; $41c8: $15
    ld d, [hl]                                    ; $41c9: $56
    nop                                           ; $41ca: $00

jr_09f_41cb:
    ret nc                                        ; $41cb: $d0

    jr c, jr_09f_418e                             ; $41cc: $38 $c0

    jr jr_09f_4210                                ; $41ce: $18 $40

jr_09f_41d0:
    ld hl, $30e7                                  ; $41d0: $21 $e7 $30
    nop                                           ; $41d3: $00
    add b                                         ; $41d4: $80
    rst $38                                       ; $41d5: $ff
    ld e, d                                       ; $41d6: $5a
    add b                                         ; $41d7: $80
    db $fd                                        ; $41d8: $fd
    add b                                         ; $41d9: $80
    jr nz, jr_09f_417b                            ; $41da: $20 $9f

    nop                                           ; $41dc: $00
    rst $28                                       ; $41dd: $ef
    sbc a                                         ; $41de: $9f
    jr nz, @-$5f                                  ; $41df: $20 $9f

    call Call_09f_6b92                            ; $41e1: $cd $92 $6b
    sub h                                         ; $41e4: $94

jr_09f_41e5:
    inc d                                         ; $41e5: $14
    nop                                           ; $41e6: $00
    rst $38                                       ; $41e7: $ff
    db $d3                                        ; $41e8: $d3
    sub d                                         ; $41e9: $92
    nop                                           ; $41ea: $00
    nop                                           ; $41eb: $00
    ld d, a                                       ; $41ec: $57
    ld [bc], a                                    ; $41ed: $02
    nop                                           ; $41ee: $00
    rst $38                                       ; $41ef: $ff
    nop                                           ; $41f0: $00
    xor l                                         ; $41f1: $ad
    ld [de], a                                    ; $41f2: $12
    ld e, c                                       ; $41f3: $59
    inc h                                         ; $41f4: $24
    ld bc, $6eff                                  ; $41f5: $01 $ff $6e
    ld bc, $db00                                  ; $41f8: $01 $00 $db
    ld bc, $c13c                                  ; $41fb: $01 $3c $c1

Call_09f_41fe:
    ld l, a                                       ; $41fe: $6f
    add c                                         ; $41ff: $81
    jp c, Jump_000_0001                           ; $4200: $da $01 $00

    or a                                          ; $4203: $b7
    add hl, bc                                    ; $4204: $09
    ld h, [hl]                                    ; $4205: $66
    add hl, de                                    ; $4206: $19
    rst $28                                       ; $4207: $ef
    sub b                                         ; $4208: $90
    ld c, d                                       ; $4209: $4a
    sub c                                         ; $420a: $91
    nop                                           ; $420b: $00
    push bc                                       ; $420c: $c5
    sub d                                         ; $420d: $92
    ld h, [hl]                                    ; $420e: $66
    sbc b                                         ; $420f: $98

jr_09f_4210:
    xor e                                         ; $4210: $ab
    sub b                                         ; $4211: $90
    ld h, [hl]                                    ; $4212: $66
    sub c                                         ; $4213: $91
    nop                                           ; $4214: $00
    call Call_09f_4b92                            ; $4215: $cd $92 $4b
    sub h                                         ; $4218: $94
    di                                            ; $4219: $f3
    ld [$10e7], sp                                ; $421a: $08 $e7 $10
    nop                                           ; $421d: $00
    ld e, l                                       ; $421e: $5d
    jr nz, jr_09f_41cb                            ; $421f: $20 $aa

    ld b, c                                       ; $4221: $41
    ld e, l                                       ; $4222: $5d
    add e                                         ; $4223: $83
    ld a, [$0007]                                 ; $4224: $fa $07 $00
    ld [hl], l                                    ; $4227: $75
    ld c, $aa                                     ; $4228: $0e $aa
    inc e                                         ; $422a: $1c
    push de                                       ; $422b: $d5
    add hl, sp                                    ; $422c: $39
    and [hl]                                      ; $422d: $a6
    ld a, c                                       ; $422e: $79
    nop                                           ; $422f: $00
    ld d, l                                       ; $4230: $55
    jp hl                                         ; $4231: $e9


    or d                                          ; $4232: $b2
    ret                                           ; $4233: $c9


    ld h, l                                       ; $4234: $65
    sbc c                                         ; $4235: $99
    sub $29                                       ; $4236: $d6 $29
    nop                                           ; $4238: $00
    rst $30                                       ; $4239: $f7
    add hl, bc                                    ; $423a: $09
    jp nz, $e519                                  ; $423b: $c2 $19 $e5

    sbc b                                         ; $423e: $98
    ld l, $90                                     ; $423f: $2e $90
    nop                                           ; $4241: $00
    ei                                            ; $4242: $fb
    add b                                         ; $4243: $80
    ld e, [hl]                                    ; $4244: $5e
    add c                                         ; $4245: $81
    db $f4                                        ; $4246: $f4
    add e                                         ; $4247: $83
    ccf                                           ; $4248: $3f
    add b                                         ; $4249: $80
    nop                                           ; $424a: $00
    ld a, [$6d80]                                 ; $424b: $fa $80 $6d
    add b                                         ; $424e: $80
    ld d, l                                       ; $424f: $55
    jr c, @-$4f                                   ; $4250: $38 $af

    ld [hl], b                                    ; $4252: $70
    nop                                           ; $4253: $00
    ld d, l                                       ; $4254: $55
    ld [c], a                                     ; $4255: $e2
    xor e                                         ; $4256: $ab
    call nz, $ff00                                ; $4257: $c4 $00 $ff
    xor e                                         ; $425a: $ab
    nop                                           ; $425b: $00
    ld b, b                                       ; $425c: $40
    push af                                       ; $425d: $f5
    adc l                                         ; $425e: $8d
    ld [bc], a                                    ; $425f: $02
    sub a                                         ; $4260: $97
    add hl, hl                                    ; $4261: $29
    db $f4                                        ; $4262: $f4
    add hl, bc                                    ; $4263: $09
    ld [hl], a                                    ; $4264: $77
    add hl, bc                                    ; $4265: $09
    nop                                           ; $4266: $00
    or [hl]                                       ; $4267: $b6
    add hl, bc                                    ; $4268: $09
    rlca                                          ; $4269: $07
    ld sp, hl                                     ; $426a: $f9
    ld a, [$af01]                                 ; $426b: $fa $01 $af
    ld bc, $dc11                                  ; $426e: $01 $11 $dc
    ld bc, $7201                                  ; $4271: $01 $01 $72
    ld bc, $0044                                  ; $4274: $01 $44 $00
    add hl, bc                                    ; $4277: $09
    inc c                                         ; $4278: $0c
    ld bc, $a900                                  ; $4279: $01 $00 $a9
    nop                                           ; $427c: $00
    jp nc, $e600                                  ; $427d: $d2 $00 $e6

    ld bc, $182e                                  ; $4280: $01 $2e $18
    nop                                           ; $4283: $00
    ld l, l                                       ; $4284: $6d
    jr jr_09f_42c2                                ; $4285: $18 $3b

    inc e                                         ; $4287: $1c
    ld e, l                                       ; $4288: $5d
    ld h, $ae                                     ; $4289: $26 $ae
    ld b, e                                       ; $428b: $43
    nop                                           ; $428c: $00
    ld c, c                                       ; $428d: $49
    add e                                         ; $428e: $83
    rlca                                          ; $428f: $07
    add c                                         ; $4290: $81
    and d                                         ; $4291: $a2
    ld bc, $017c                                  ; $4292: $01 $7c $01
    ld b, b                                       ; $4295: $40
    cp $02                                        ; $4296: $fe $02
    nop                                           ; $4298: $00
    rst $30                                       ; $4299: $f7
    add hl, bc                                    ; $429a: $09
    rst $18                                       ; $429b: $df
    ld hl, $4ab5                                  ; $429c: $21 $b5 $4a
    nop                                           ; $429f: $00
    ld l, d                                       ; $42a0: $6a
    sub l                                         ; $42a1: $95
    sub c                                         ; $42a2: $91
    ld l, [hl]                                    ; $42a3: $6e
    dec d                                         ; $42a4: $15
    nop                                           ; $42a5: $00
    and d                                         ; $42a6: $a2
    inc b                                         ; $42a7: $04
    inc b                                         ; $42a8: $04
    dec d                                         ; $42a9: $15
    nop                                           ; $42aa: $00
    cp b                                          ; $42ab: $b8
    rlca                                          ; $42ac: $07
    ld c, d                                       ; $42ad: $4a
    or d                                          ; $42ae: $b2
    db $10                                        ; $42af: $10
    ld b, h                                       ; $42b0: $44
    cp e                                          ; $42b1: $bb
    jr nz, jr_09f_42d8                            ; $42b2: $20 $24

    db $db                                        ; $42b4: $db
    ld h, d                                       ; $42b5: $62
    ld a, [bc]                                    ; $42b6: $0a
    and b                                         ; $42b7: $a0
    rst $38                                       ; $42b8: $ff
    add d                                         ; $42b9: $82
    rst $38                                       ; $42ba: $ff
    push de                                       ; $42bb: $d5
    jr nz, @+$01                                  ; $42bc: $20 $ff

    rst $28                                       ; $42be: $ef
    add $10                                       ; $42bf: $c6 $10
    ld b, b                                       ; $42c1: $40

jr_09f_42c2:
    cp a                                          ; $42c2: $bf
    db $10                                        ; $42c3: $10
    rst $38                                       ; $42c4: $ff
    ld b, l                                       ; $42c5: $45
    ld [bc], a                                    ; $42c6: $02
    rst $38                                       ; $42c7: $ff
    ld a, [bc]                                    ; $42c8: $0a
    rst $38                                       ; $42c9: $ff
    ld d, a                                       ; $42ca: $57
    rst $38                                       ; $42cb: $ff
    xor e                                         ; $42cc: $ab
    dec l                                         ; $42cd: $2d
    inc bc                                        ; $42ce: $03
    or l                                          ; $42cf: $b5
    nop                                           ; $42d0: $00
    jp nz, $c07f                                  ; $42d1: $c2 $7f $c0

    ld e, d                                       ; $42d4: $5a
    push hl                                       ; $42d5: $e5
    cp a                                          ; $42d6: $bf
    ld h, b                                       ; $42d7: $60

jr_09f_42d8:
    dec hl                                        ; $42d8: $2b
    nop                                           ; $42d9: $00
    ldh a, [$9d]                                  ; $42da: $f0 $9d
    ld a, [c]                                     ; $42dc: $f2
    ld d, a                                       ; $42dd: $57
    ld hl, sp+$2e                                 ; $42de: $f8 $2e
    ret c                                         ; $42e0: $d8

    xor d                                         ; $42e1: $aa
    nop                                           ; $42e2: $00
    call nc, Call_09f_40f7                        ; $42e3: $d4 $f7 $40
    call nc, $fe69                                ; $42e6: $d4 $69 $fe
    jr nz, jr_09f_4354                            ; $42e9: $20 $69

    nop                                           ; $42eb: $00
    ld [hl-], a                                   ; $42ec: $32
    cp $11                                        ; $42ed: $fe $11
    or a                                          ; $42ef: $b7
    rra                                           ; $42f0: $1f
    ld a, d                                       ; $42f1: $7a
    adc b                                         ; $42f2: $88
    ld e, [hl]                                    ; $42f3: $5e
    ld [$3700], sp                                ; $42f4: $08 $00 $37
    nop                                           ; $42f7: $00
    ld l, l                                       ; $42f8: $6d
    or l                                          ; $42f9: $b5
    ld [de], a                                    ; $42fa: $12
    rst $18                                       ; $42fb: $df
    jr nz, @+$31                                  ; $42fc: $20 $2f

    nop                                           ; $42fe: $00
    ret nc                                        ; $42ff: $d0

    rst $08                                       ; $4300: $cf
    or b                                          ; $4301: $b0
    add sp, $00                                   ; $4302: $e8 $00
    ldh a, [rP1]                                  ; $4304: $f0 $00
    reti                                          ; $4306: $d9


    ld [$7400], sp                                ; $4307: $08 $00 $74
    nop                                           ; $430a: $00
    ld a, [$01a4]                                 ; $430b: $fa $a4 $01
    rst $38                                       ; $430e: $ff
    nop                                           ; $430f: $00
    db $fc                                        ; $4310: $fc
    jr nz, jr_09f_4314                            ; $4311: $20 $01

    ld c, [hl]                                    ; $4313: $4e

jr_09f_4314:
    sub $02                                       ; $4314: $d6 $02
    ld e, d                                       ; $4316: $5a
    inc e                                         ; $4317: $1c
    dec d                                         ; $4318: $15
    ld l, $ae                                     ; $4319: $2e $ae
    nop                                           ; $431b: $00
    ld b, e                                       ; $431c: $43
    ld c, e                                       ; $431d: $4b
    add c                                         ; $431e: $81
    ld hl, $8881                                  ; $431f: $21 $81 $88
    ld bc, $2820                                  ; $4322: $01 $20 $28
    nop                                           ; $4325: $00
    inc b                                         ; $4326: $04
    ld [hl], d                                    ; $4327: $72
    ld [bc], a                                    ; $4328: $02
    dec l                                         ; $4329: $2d
    ret z                                         ; $432a: $c8

    ld bc, $00df                                  ; $432b: $01 $df $00
    ld a, l                                       ; $432e: $7d
    nop                                           ; $432f: $00
    add b                                         ; $4330: $80
    cp $81                                        ; $4331: $fe $81
    add [hl]                                      ; $4333: $86
    ld sp, hl                                     ; $4334: $f9
    and a                                         ; $4335: $a7
    ret c                                         ; $4336: $d8

    adc e                                         ; $4337: $8b
    nop                                           ; $4338: $00
    db $f4                                        ; $4339: $f4
    add l                                         ; $433a: $85
    ld a, [$f58a]                                 ; $433b: $fa $8a $f5
    ld bc, $02fe                                  ; $433e: $01 $fe $02
    db $10                                        ; $4341: $10
    db $fd                                        ; $4342: $fd
    db $10                                        ; $4343: $10
    rst $28                                       ; $4344: $ef
    xor [hl]                                      ; $4345: $ae
    ld [$916e], sp                                ; $4346: $08 $6e $91
    rst $38                                       ; $4349: $ff
    ld bc, $bf00                                  ; $434a: $01 $00 $bf
    ld b, c                                       ; $434d: $41
    ld e, e                                       ; $434e: $5b
    and h                                         ; $434f: $a4
    ld l, $d1                                     ; $4350: $2e $d1
    sub l                                         ; $4352: $95
    ld l, d                                       ; $4353: $6a

jr_09f_4354:
    nop                                           ; $4354: $00
    daa                                           ; $4355: $27
    nop                                           ; $4356: $00
    adc c                                         ; $4357: $89
    jr nz, jr_09f_4381                            ; $4358: $20 $27

    nop                                           ; $435a: $00
    jp z, Jump_09f_4125                           ; $435b: $ca $25 $41

    ld d, h                                       ; $435e: $54
    ld h, d                                       ; $435f: $62
    ld de, $ea15                                  ; $4360: $11 $15 $ea
    sbc [hl]                                      ; $4363: $9e
    pop bc                                        ; $4364: $c1
    cp [hl]                                       ; $4365: $be
    ld [bc], a                                    ; $4366: $02
    nop                                           ; $4367: $00
    nop                                           ; $4368: $00
    cp a                                          ; $4369: $bf
    pop bc                                        ; $436a: $c1
    sbc l                                         ; $436b: $9d
    db $e3                                        ; $436c: $e3
    dec sp                                        ; $436d: $3b
    call nz, $d02f                                ; $436e: $c4 $2f $d0
    jr nz, jr_09f_43c8                            ; $4371: $20 $55

    xor d                                         ; $4373: $aa
    call nz, $ff00                                ; $4374: $c4 $00 $ff
    or d                                          ; $4377: $b2
    rst $38                                       ; $4378: $ff
    ld l, b                                       ; $4379: $68
    rst $38                                       ; $437a: $ff
    db $10                                        ; $437b: $10
    push af                                       ; $437c: $f5
    rst $38                                       ; $437d: $ff
    cp [hl]                                       ; $437e: $be
    db $db                                        ; $437f: $db
    inc de                                        ; $4380: $13

jr_09f_4381:
    nop                                           ; $4381: $00
    rst $38                                       ; $4382: $ff
    inc b                                         ; $4383: $04
    ei                                            ; $4384: $fb
    dec b                                         ; $4385: $05
    db $10                                        ; $4386: $10
    rst $38                                       ; $4387: $ff
    ld b, b                                       ; $4388: $40
    rst $38                                       ; $4389: $ff
    dec d                                         ; $438a: $15
    cp [hl]                                       ; $438b: $be
    nop                                           ; $438c: $00
    ld e, a                                       ; $438d: $5f
    db $ed                                        ; $438e: $ed
    inc bc                                        ; $438f: $03
    ld bc, $5da2                                  ; $4390: $01 $a2 $5d
    nop                                           ; $4393: $00
    rst $38                                       ; $4394: $ff
    jr nz, @+$01                                  ; $4395: $20 $ff

    adc d                                         ; $4397: $8a
    stop                                          ; $4398: $10 $00
    db $10                                        ; $439a: $10
    xor [hl]                                      ; $439b: $ae
    rst $38                                       ; $439c: $ff
    rst $18                                       ; $439d: $df
    db $fd                                        ; $439e: $fd
    inc bc                                        ; $439f: $03
    ld a, [bc]                                    ; $43a0: $0a
    push af                                       ; $43a1: $f5
    ld b, b                                       ; $43a2: $40
    cp a                                          ; $43a3: $bf
    ld b, h                                       ; $43a4: $44
    add l                                         ; $43a5: $85
    ld [hl+], a                                   ; $43a6: $22
    nop                                           ; $43a7: $00
    ld b, c                                       ; $43a8: $41
    rst $38                                       ; $43a9: $ff
    xor d                                         ; $43aa: $aa
    inc [hl]                                      ; $43ab: $34
    nop                                           ; $43ac: $00
    rst $38                                       ; $43ad: $ff
    rst $38                                       ; $43ae: $ff
    nop                                           ; $43af: $00
    and a                                         ; $43b0: $a7
    ret c                                         ; $43b1: $d8

jr_09f_43b2:
    or $49                                        ; $43b2: $f6 $49
    call Call_09f_7a72                            ; $43b4: $cd $72 $7a
    and l                                         ; $43b7: $a5
    nop                                           ; $43b8: $00
    db $ed                                        ; $43b9: $ed
    ld [hl-], a                                   ; $43ba: $32
    rst $18                                       ; $43bb: $df
    ret nc                                        ; $43bc: $d0

    dec d                                         ; $43bd: $15
    ld e, d                                       ; $43be: $5a
    xor a                                         ; $43bf: $af
    ld [$ea00], sp                                ; $43c0: $08 $00 $ea
    db $fd                                        ; $43c3: $fd
    call nc, $e26b                                ; $43c4: $d4 $6b $e2
    ld a, a                                       ; $43c7: $7f

jr_09f_43c8:
    db $eb                                        ; $43c8: $eb
    ccf                                           ; $43c9: $3f
    nop                                           ; $43ca: $00
    ld a, $ff                                     ; $43cb: $3e $ff
    jp nc, Jump_09f_783d                          ; $43cd: $d2 $3d $78

    sbc a                                         ; $43d0: $9f
    cp d                                          ; $43d1: $ba
    ld c, a                                       ; $43d2: $4f
    nop                                           ; $43d3: $00
    xor c                                         ; $43d4: $a9
    jp nc, $c875                                  ; $43d5: $d2 $75 $c8

    sub $e1                                       ; $43d8: $d6 $e1
    cp e                                          ; $43da: $bb
    db $e4                                        ; $43db: $e4
    nop                                           ; $43dc: $00
    dec l                                         ; $43dd: $2d
    ldh a, [$5e]                                  ; $43de: $f0 $5e
    or c                                          ; $43e0: $b1
    or l                                          ; $43e1: $b5
    jp c, $f90e                                   ; $43e2: $da $0e $f9

    nop                                           ; $43e5: $00
    jp nz, $c890                                  ; $43e6: $c2 $90 $c8

    ld b, h                                       ; $43e9: $44
    ldh [rSCY], a                                 ; $43ea: $e0 $42
    db $e4                                        ; $43ec: $e4
    jr z, jr_09f_43ef                             ; $43ed: $28 $00

jr_09f_43ef:
    ld [hl], c                                    ; $43ef: $71
    and b                                         ; $43f0: $a0
    ld a, [c]                                     ; $43f1: $f2
    inc d                                         ; $43f2: $14
    cp b                                          ; $43f3: $b8
    ld d, b                                       ; $43f4: $50
    cp c                                          ; $43f5: $b9
    ld [$0d04], sp                                ; $43f6: $08 $04 $0d
    jr jr_09f_4429                                ; $43f9: $18 $2e

    jr jr_09f_4455                                ; $43fb: $18 $58

    ldh [rNR41], a                                ; $43fd: $e0 $20
    add hl, bc                                    ; $43ff: $09
    add c                                         ; $4400: $81
    inc b                                         ; $4401: $04
    and b                                         ; $4402: $a0
    ld bc, $002a                                  ; $4403: $01 $2a $00
    ld a, l                                       ; $4406: $7d
    ld [de], a                                    ; $4407: $12
    ld bc, $005f                                  ; $4408: $01 $5f $00
    nop                                           ; $440b: $00
    cp l                                          ; $440c: $bd
    nop                                           ; $440d: $00
    ld [hl], a                                    ; $440e: $77
    nop                                           ; $440f: $00
    ld e, a                                       ; $4410: $5f
    add b                                         ; $4411: $80
    rst $38                                       ; $4412: $ff
    add b                                         ; $4413: $80
    nop                                           ; $4414: $00
    ld c, e                                       ; $4415: $4b
    nop                                           ; $4416: $00
    and c                                         ; $4417: $a1
    ld [$004b], sp                                ; $4418: $08 $4b $00
    and [hl]                                      ; $441b: $a6
    ld c, c                                       ; $441c: $49
    sub b                                         ; $441d: $90
    ret nz                                        ; $441e: $c0

    jr jr_09f_43b2                                ; $441f: $18 $91

    ld l, [hl]                                    ; $4421: $6e
    cp h                                          ; $4422: $bc
    nop                                           ; $4423: $00
    ret nz                                        ; $4424: $c0

    xor a                                         ; $4425: $af
    ret nc                                        ; $4426: $d0

    cp l                                          ; $4427: $bd
    nop                                           ; $4428: $00

jr_09f_4429:
    jp nz, $d5aa                                  ; $4429: $c2 $aa $d5

    inc d                                         ; $442c: $14
    db $eb                                        ; $442d: $eb
    add hl, bc                                    ; $442e: $09
    or $44                                        ; $442f: $f6 $44
    nop                                           ; $4431: $00
    cp e                                          ; $4432: $bb
    and l                                         ; $4433: $a5
    jp nc, Jump_09f_407f                          ; $4434: $d2 $7f $40

    jp nc, $3d68                                  ; $4437: $d2 $68 $3d

    nop                                           ; $443a: $00
    ld [hl+], a                                   ; $443b: $22
    dec hl                                        ; $443c: $2b
    jr nc, jr_09f_449c                            ; $443d: $30 $5d

    db $10                                        ; $443f: $10
    dec [hl]                                      ; $4440: $35
    sbc d                                         ; $4441: $9a
    dec e                                         ; $4442: $1d
    nop                                           ; $4443: $00
    ld [$efd4], sp                                ; $4444: $08 $d4 $ef
    pop de                                        ; $4447: $d1
    ld a, [hl]                                    ; $4448: $7e
    ld h, [hl]                                    ; $4449: $66
    ei                                            ; $444a: $fb
    db $e4                                        ; $444b: $e4
    nop                                           ; $444c: $00
    ccf                                           ; $444d: $3f
    ld [hl], d                                    ; $444e: $72
    ccf                                           ; $444f: $3f
    ld [hl], l                                    ; $4450: $75
    sbc e                                         ; $4451: $9b
    ld a, d                                       ; $4452: $7a
    rra                                           ; $4453: $1f
    sbc c                                         ; $4454: $99

jr_09f_4455:
    nop                                           ; $4455: $00
    ld c, [hl]                                    ; $4456: $4e
    xor d                                         ; $4457: $aa
    rst $38                                       ; $4458: $ff
    and b                                         ; $4459: $a0
    rst $18                                       ; $445a: $df
    pop bc                                        ; $445b: $c1
    cp [hl]                                       ; $445c: $be
    and e                                         ; $445d: $a3
    nop                                           ; $445e: $00
    rst $18                                       ; $445f: $df
    sub c                                         ; $4460: $91
    rst $28                                       ; $4461: $ef
    add h                                         ; $4462: $84
    ei                                            ; $4463: $fb
    sub d                                         ; $4464: $92
    db $fd                                        ; $4465: $fd
    ret c                                         ; $4466: $d8

    ld b, d                                       ; $4467: $42
    cp a                                          ; $4468: $bf
    stop                                          ; $4469: $10 $00
    ld e, a                                       ; $446b: $5f
    ld b, d                                       ; $446c: $42
    cp l                                          ; $446d: $bd
    rst $38                                       ; $446e: $ff
    or b                                          ; $446f: $b0
    ld bc, $00c9                                  ; $4470: $01 $c9 $00
    rst $30                                       ; $4473: $f7
    ld h, d                                       ; $4474: $62

Jump_09f_4475:
    db $fd                                        ; $4475: $fd
    dec [hl]                                      ; $4476: $35
    ld a, [$ffab]                                 ; $4477: $fa $ab $ff
    ld de, $ef00                                  ; $447a: $11 $00 $ef
    and c                                         ; $447d: $a1
    ld e, a                                       ; $447e: $5f
    db $fd                                        ; $447f: $fd
    ei                                            ; $4480: $fb
    add hl, bc                                    ; $4481: $09
    rst $38                                       ; $4482: $ff
    ld c, l                                       ; $4483: $4d
    nop                                           ; $4484: $00
    cp e                                          ; $4485: $bb
    dec hl                                        ; $4486: $2b
    db $dd                                        ; $4487: $dd
    dec e                                         ; $4488: $1d
    db $eb                                        ; $4489: $eb
    sub h                                         ; $448a: $94
    rst $38                                       ; $448b: $ff
    db $d3                                        ; $448c: $d3
    nop                                           ; $448d: $00
    cp [hl]                                       ; $448e: $be
    sbc c                                         ; $448f: $99
    rst $30                                       ; $4490: $f7
    sub b                                         ; $4491: $90
    rst $38                                       ; $4492: $ff
    push de                                       ; $4493: $d5
    cp d                                          ; $4494: $ba
    cp d                                          ; $4495: $ba
    nop                                           ; $4496: $00
    db $dd                                        ; $4497: $dd
    push de                                       ; $4498: $d5
    cp [hl]                                       ; $4499: $be
    or b                                          ; $449a: $b0
    rst $18                                       ; $449b: $df

jr_09f_449c:
    ld e, d                                       ; $449c: $5a
    cp l                                          ; $449d: $bd
    dec l                                         ; $449e: $2d
    nop                                           ; $449f: $00
    rst $18                                       ; $44a0: $df
    add [hl]                                      ; $44a1: $86
    ld a, a                                       ; $44a2: $7f
    and e                                         ; $44a3: $a3
    rst $18                                       ; $44a4: $df
    ld b, l                                       ; $44a5: $45
    ei                                            ; $44a6: $fb
    and d                                         ; $44a7: $a2
    nop                                           ; $44a8: $00
    ld a, l                                       ; $44a9: $7d
    add hl, de                                    ; $44aa: $19
    or $2a                                        ; $44ab: $f6 $2a
    db $dd                                        ; $44ad: $dd
    xor e                                         ; $44ae: $ab

Jump_09f_44af:
    ld a, l                                       ; $44af: $7d
    ld e, c                                       ; $44b0: $59
    nop                                           ; $44b1: $00
    cp a                                          ; $44b2: $bf
    adc c                                         ; $44b3: $89
    rst $38                                       ; $44b4: $ff
    ld c, e                                       ; $44b5: $4b
    cp l                                          ; $44b6: $bd
    xor c                                         ; $44b7: $a9
    rst $18                                       ; $44b8: $df
    rlc b                                         ; $44b9: $cb $00
    db $fd                                        ; $44bb: $fd
    ld l, c                                       ; $44bc: $69
    rst $38                                       ; $44bd: $ff
    dec sp                                        ; $44be: $3b
    db $fd                                        ; $44bf: $fd
    sbc c                                         ; $44c0: $99
    or $b4                                        ; $44c1: $f6 $b4
    nop                                           ; $44c3: $00
    db $db                                        ; $44c4: $db
    sub d                                         ; $44c5: $92
    rst $38                                       ; $44c6: $ff
    sbc a                                         ; $44c7: $9f
    rst $38                                       ; $44c8: $ff
    rst $18                                       ; $44c9: $df
    cp a                                          ; $44ca: $bf
    adc b                                         ; $44cb: $88
    nop                                           ; $44cc: $00
    rst $30                                       ; $44cd: $f7
    sub l                                         ; $44ce: $95
    ld [$ffff], a                                 ; $44cf: $ea $ff $ff
    inc d                                         ; $44d2: $14
    rst $28                                       ; $44d3: $ef
    and d                                         ; $44d4: $a2
    ld [de], a                                    ; $44d5: $12
    ld a, a                                       ; $44d6: $7f
    ld d, c                                       ; $44d7: $51
    cp a                                          ; $44d8: $bf
    ld h, $0d                                     ; $44d9: $26 $0d
    ld d, d                                       ; $44db: $52
    xor l                                         ; $44dc: $ad
    sub $0a                                       ; $44dd: $d6 $0a
    sbc l                                         ; $44df: $9d
    nop                                           ; $44e0: $00
    ld a, e                                       ; $44e1: $7b
    add hl, bc                                    ; $44e2: $09
    rst $38                                       ; $44e3: $ff
    ld b, e                                       ; $44e4: $43
    cp l                                          ; $44e5: $bd
    and l                                         ; $44e6: $a5

Jump_09f_44e7:
    db $db                                        ; $44e7: $db
    db $d3                                        ; $44e8: $d3
    nop                                           ; $44e9: $00
    db $ed                                        ; $44ea: $ed
    add hl, hl                                    ; $44eb: $29
    rst $10                                       ; $44ec: $d7
    sub c                                         ; $44ed: $91
    ld l, a                                       ; $44ee: $6f
    rst $38                                       ; $44ef: $ff
    rst $38                                       ; $44f0: $ff
    add b                                         ; $44f1: $80
    nop                                           ; $44f2: $00
    rst $38                                       ; $44f3: $ff
    ld h, e                                       ; $44f4: $63
    add b                                         ; $44f5: $80
    ret nz                                        ; $44f6: $c0

    cp a                                          ; $44f7: $bf
    rra                                           ; $44f8: $1f
    cp a                                          ; $44f9: $bf
    add b                                         ; $44fa: $80
    nop                                           ; $44fb: $00
    cp a                                          ; $44fc: $bf
    ld e, d                                       ; $44fd: $5a
    and c                                         ; $44fe: $a1
    add l                                         ; $44ff: $85
    or d                                          ; $4500: $b2
    ld e, d                                       ; $4501: $5a
    and h                                         ; $4502: $a4
    ld bc, $ff00                                  ; $4503: $01 $00 $ff
    ld [hl], d                                    ; $4506: $72
    ld bc, $e11f                                  ; $4507: $01 $1f $e1
    xor d                                         ; $450a: $aa
    push bc                                       ; $450b: $c5
    inc sp                                        ; $450c: $33
    nop                                           ; $450d: $00
    adc l                                         ; $450e: $8d
    add sp, $1d                                   ; $450f: $e8 $1d
    ld d, c                                       ; $4511: $51
    dec a                                         ; $4512: $3d
    xor d                                         ; $4513: $aa
    ld [hl], l                                    ; $4514: $75
    sub l                                         ; $4515: $95
    nop                                           ; $4516: $00
    xor b                                         ; $4517: $a8
    ld c, [hl]                                    ; $4518: $4e
    or c                                          ; $4519: $b1
    call Call_09f_5aa3                            ; $451a: $cd $a3 $5a
    add a                                         ; $451d: $87
    push af                                       ; $451e: $f5
    nop                                           ; $451f: $00
    adc [hl]                                      ; $4520: $8e
    dec hl                                        ; $4521: $2b
    sbc h                                         ; $4522: $9c
    ret nz                                        ; $4523: $c0

    cp a                                          ; $4524: $bf
    ld h, [hl]                                    ; $4525: $66
    add b                                         ; $4526: $80
    ld e, e                                       ; $4527: $5b
    nop                                           ; $4528: $00
    push hl                                       ; $4529: $e5
    or b                                          ; $452a: $b0
    call $956b                                    ; $452b: $cd $6b $95
    cp b                                          ; $452e: $b8
    dec b                                         ; $452f: $05
    ld d, e                                       ; $4530: $53
    nop                                           ; $4531: $00
    dec h                                         ; $4532: $25
    cp d                                          ; $4533: $ba
    ld b, l                                       ; $4534: $45
    inc bc                                        ; $4535: $03
    db $fd                                        ; $4536: $fd
    add $01                                       ; $4537: $c6 $01
    xor d                                         ; $4539: $aa
    nop                                           ; $453a: $00
    rst $38                                       ; $453b: $ff
    sbc c                                         ; $453c: $99
    and $ff                                       ; $453d: $e6 $ff
    cp a                                          ; $453f: $bf
    and h                                         ; $4540: $a4
    ei                                            ; $4541: $fb
    xor c                                         ; $4542: $a9
    nop                                           ; $4543: $00
    rst $30                                       ; $4544: $f7
    or e                                          ; $4545: $b3
    rst $28                                       ; $4546: $ef
    and $bf                                       ; $4547: $e6 $bf
    xor l                                         ; $4549: $ad
    cp $ab                                        ; $454a: $fe $ab
    nop                                           ; $454c: $00
    rst $38                                       ; $454d: $ff
    add hl, hl                                    ; $454e: $29
    rst $10                                       ; $454f: $d7
    di                                            ; $4550: $f3
    db $ed                                        ; $4551: $ed
    pop bc                                        ; $4552: $c1
    rst $38                                       ; $4553: $ff
    xor a                                         ; $4554: $af
    nop                                           ; $4555: $00
    push de                                       ; $4556: $d5
    ld e, l                                       ; $4557: $5d
    xor a                                         ; $4558: $af
    dec [hl]                                      ; $4559: $35
    rst $18                                       ; $455a: $df
    daa                                           ; $455b: $27
    db $fd                                        ; $455c: $fd
    ld a, [$bd00]                                 ; $455d: $fa $00 $bd
    db $f4                                        ; $4560: $f4
    cp e                                          ; $4561: $bb
    and c                                         ; $4562: $a1
    rst $38                                       ; $4563: $ff
    adc d                                         ; $4564: $8a
    rst $30                                       ; $4565: $f7
    and a                                         ; $4566: $a7
    nop                                           ; $4567: $00
    rst $18                                       ; $4568: $df
    rst $08                                       ; $4569: $cf
    cp a                                          ; $456a: $bf
    adc h                                         ; $456b: $8c
    di                                            ; $456c: $f3
    rst $38                                       ; $456d: $ff
    rst $38                                       ; $456e: $ff
    ld b, a                                       ; $456f: $47
    nop                                           ; $4570: $00
    db $fd                                        ; $4571: $fd
    sub a                                         ; $4572: $97
    db $ed                                        ; $4573: $ed
    dec h                                         ; $4574: $25
    rst $18                                       ; $4575: $df
    ld d, a                                       ; $4576: $57
    xor l                                         ; $4577: $ad
    db $fd                                        ; $4578: $fd
    inc b                                         ; $4579: $04
    rst $38                                       ; $457a: $ff
    db $fd                                        ; $457b: $fd
    rst $38                                       ; $457c: $ff
    push de                                       ; $457d: $d5
    dec hl                                        ; $457e: $2b
    ret nz                                        ; $457f: $c0

    ld bc, $a70d                                  ; $4580: $01 $0d $a7
    nop                                           ; $4583: $00
    inc d                                         ; $4584: $14
    dec d                                         ; $4585: $15
    add [hl]                                      ; $4586: $86
    ld b, e                                       ; $4587: $43
    ld [hl+], a                                   ; $4588: $22
    ld [bc], a                                    ; $4589: $02
    inc bc                                        ; $458a: $03
    ld d, l                                       ; $458b: $55
    nop                                           ; $458c: $00
    add hl, bc                                    ; $458d: $09
    add c                                         ; $458e: $81
    ld hl, $8488                                  ; $458f: $21 $88 $84
    call c, Call_09f_7d2f                         ; $4592: $dc $2f $7d
    nop                                           ; $4595: $00
    add a                                         ; $4596: $87
    or [hl]                                       ; $4597: $b6
    ld c, a                                       ; $4598: $4f
    xor [hl]                                      ; $4599: $ae
    ld d, e                                       ; $459a: $53
    ld d, e                                       ; $459b: $53
    xor a                                         ; $459c: $af
    xor a                                         ; $459d: $af
    nop                                           ; $459e: $00
    ld d, c                                       ; $459f: $51
    ld [hl], a                                    ; $45a0: $77
    adc c                                         ; $45a1: $89
    db $dd                                        ; $45a2: $dd
    and d                                         ; $45a3: $a2
    xor e                                         ; $45a4: $ab
    ld a, h                                       ; $45a5: $7c
    ld b, $00                                     ; $45a6: $06 $00
    db $fc                                        ; $45a8: $fc
    ld h, l                                       ; $45a9: $65
    cp [hl]                                       ; $45aa: $be
    sub e                                         ; $45ab: $93
    ld l, [hl]                                    ; $45ac: $6e
    ld c, d                                       ; $45ad: $4a
    rst $30                                       ; $45ae: $f7
    ld de, $ff00                                  ; $45af: $11 $00 $ff
    push bc                                       ; $45b2: $c5
    cp a                                          ; $45b3: $bf
    xor b                                         ; $45b4: $a8
    rst $38                                       ; $45b5: $ff
    ld e, h                                       ; $45b6: $5c
    xor d                                         ; $45b7: $aa
    call z, Call_000_1400                         ; $45b8: $cc $00 $14
    ld a, [hl]                                    ; $45bb: $7e
    inc b                                         ; $45bc: $04
    xor [hl]                                      ; $45bd: $ae
    ld b, d                                       ; $45be: $42
    db $db                                        ; $45bf: $db
    ld h, $af                                     ; $45c0: $26 $af
    nop                                           ; $45c2: $00
    dec e                                         ; $45c3: $1d
    ld a, a                                       ; $45c4: $7f
    pop af                                        ; $45c5: $f1
    ld sp, hl                                     ; $45c6: $f9
    add d                                         ; $45c7: $82
    xor d                                         ; $45c8: $aa
    rst $38                                       ; $45c9: $ff
    sub h                                         ; $45ca: $94
    nop                                           ; $45cb: $00
    db $eb                                        ; $45cc: $eb
    rst $08                                       ; $45cd: $cf
    or a                                          ; $45ce: $b7
    add e                                         ; $45cf: $83
    rst $38                                       ; $45d0: $ff
    push af                                       ; $45d1: $f5
    xor e                                         ; $45d2: $ab
    cp d                                          ; $45d3: $ba
    nop                                           ; $45d4: $00
    push af                                       ; $45d5: $f5
    xor h                                         ; $45d6: $ac
    ei                                            ; $45d7: $fb
    db $e4                                        ; $45d8: $e4
    cp a                                          ; $45d9: $bf
    xor e                                         ; $45da: $ab
    rst $38                                       ; $45db: $ff
    sbc c                                         ; $45dc: $99
    nop                                           ; $45dd: $00
    ld h, a                                       ; $45de: $67
    rst $38                                       ; $45df: $ff
    db $fd                                        ; $45e0: $fd
    dec h                                         ; $45e1: $25
    rst $18                                       ; $45e2: $df
    sub l                                         ; $45e3: $95
    rst $28                                       ; $45e4: $ef
    call $f700                                    ; $45e5: $cd $00 $f7
    ld h, a                                       ; $45e8: $67
    db $fd                                        ; $45e9: $fd
    or l                                          ; $45ea: $b5
    ld a, a                                       ; $45eb: $7f
    ld c, d                                       ; $45ec: $4a
    adc l                                         ; $45ed: $8d
    daa                                           ; $45ee: $27
    nop                                           ; $45ef: $00
    inc b                                         ; $45f0: $04
    add l                                         ; $45f1: $85
    rla                                           ; $45f2: $17
    inc bc                                        ; $45f3: $03
    ld c, d                                       ; $45f4: $4a
    ld [bc], a                                    ; $45f5: $02
    inc de                                        ; $45f6: $13
    ld d, l                                       ; $45f7: $55
    nop                                           ; $45f8: $00
    ld bc, $2189                                  ; $45f9: $01 $89 $21
    add b                                         ; $45fc: $80
    sub d                                         ; $45fd: $92
    db $ed                                        ; $45fe: $ed
    rra                                           ; $45ff: $1f
    inc a                                         ; $4600: $3c
    nop                                           ; $4601: $00
    ld [hl], a                                    ; $4602: $77
    or $cf                                        ; $4603: $f6 $cf
    ld a, [hl]                                    ; $4605: $7e
    add e                                         ; $4606: $83
    xor a                                         ; $4607: $af
    ld d, e                                       ; $4608: $53
    ei                                            ; $4609: $fb
    nop                                           ; $460a: $00
    dec b                                         ; $460b: $05
    ld d, a                                       ; $460c: $57
    xor c                                         ; $460d: $a9
    db $ed                                        ; $460e: $ed
    sub d                                         ; $460f: $92
    call nc, $c280                                ; $4610: $d4 $80 $c2
    nop                                           ; $4613: $00
    ld b, h                                       ; $4614: $44
    pop hl                                        ; $4615: $e1
    ld c, b                                       ; $4616: $48
    ldh [rNR41], a                                ; $4617: $e0 $20
    ld [hl], h                                    ; $4619: $74
    ld hl, $00f1                                  ; $461a: $21 $f1 $00
    db $10                                        ; $461d: $10
    cp a                                          ; $461e: $bf
    ld d, a                                       ; $461f: $57
    ld a, [$b608]                                 ; $4620: $fa $08 $b6
    ret                                           ; $4623: $c9


    ld a, l                                       ; $4624: $7d
    nop                                           ; $4625: $00
    ld b, d                                       ; $4626: $42
    ld d, l                                       ; $4627: $55
    ld l, d                                       ; $4628: $6a
    ccf                                           ; $4629: $3f
    jr nz, jr_09f_469a                            ; $462a: $20 $6e

    ld sp, $00dd                                  ; $462c: $31 $dd $00
    jp nc, Jump_000_1817                          ; $462f: $d2 $17 $18

    ld c, l                                       ; $4632: $4d
    ld a, [bc]                                    ; $4633: $0a
    ld e, l                                       ; $4634: $5d
    adc b                                         ; $4635: $88
    call c, Call_000_2400                         ; $4636: $dc $00 $24
    cp [hl]                                       ; $4639: $be
    ld b, h                                       ; $463a: $44
    and $12                                       ; $463b: $e6 $12
    rst $18                                       ; $463d: $df
    ld [bc], a                                    ; $463e: $02
    or a                                          ; $463f: $b7
    nop                                           ; $4640: $00
    ld c, c                                       ; $4641: $49
    ld e, a                                       ; $4642: $5f
    add c                                         ; $4643: $81
    jp hl                                         ; $4644: $e9


    sub d                                         ; $4645: $92
    ld a, [hl+]                                   ; $4646: $2a
    dec c                                         ; $4647: $0d
    ld d, a                                       ; $4648: $57
    nop                                           ; $4649: $00
    inc b                                         ; $464a: $04
    xor h                                         ; $464b: $ac
    rlca                                          ; $464c: $07
    ld b, e                                       ; $464d: $43
    ld [bc], a                                    ; $464e: $02
    ld [hl+], a                                   ; $464f: $22
    inc bc                                        ; $4650: $03
    add hl, bc                                    ; $4651: $09
    nop                                           ; $4652: $00
    ld bc, $0195                                  ; $4653: $01 $95 $01
    add b                                         ; $4656: $80
    add b                                         ; $4657: $80
    rrca                                          ; $4658: $0f
    rst $38                                       ; $4659: $ff
    rst $18                                       ; $465a: $df
    nop                                           ; $465b: $00
    inc h                                         ; $465c: $24
    xor l                                         ; $465d: $ad
    ld d, [hl]                                    ; $465e: $56
    ld e, a                                       ; $465f: $5f
    and d                                         ; $4660: $a2
    or [hl]                                       ; $4661: $b6
    ld c, e                                       ; $4662: $4b
    rst $28                                       ; $4663: $ef
    nop                                           ; $4664: $00
    ld de, $a957                                  ; $4665: $11 $57 $a9
    db $eb                                        ; $4668: $eb
    sub h                                         ; $4669: $94
    db $fc                                        ; $466a: $fc
    adc c                                         ; $466b: $89
    ld l, h                                       ; $466c: $6c
    nop                                           ; $466d: $00
    add h                                         ; $466e: $84
    cp [hl]                                       ; $466f: $be
    inc b                                         ; $4670: $04
    ld l, [hl]                                    ; $4671: $6e
    ld [bc], a                                    ; $4672: $02
    db $db                                        ; $4673: $db
    ld [hl+], a                                   ; $4674: $22
    adc a                                         ; $4675: $8f
    nop                                           ; $4676: $00
    ld d, c                                       ; $4677: $51
    ld a, e                                       ; $4678: $7b
    add c                                         ; $4679: $81
    db $ed                                        ; $467a: $ed
    add d                                         ; $467b: $82
    cp l                                          ; $467c: $bd
    ret nz                                        ; $467d: $c0

    rst $30                                       ; $467e: $f7
    nop                                           ; $467f: $00
    ld c, b                                       ; $4680: $48
    ret c                                         ; $4681: $d8

    ld h, d                                       ; $4682: $62
    rst $38                                       ; $4683: $ff
    jr nz, jr_09f_46f0                            ; $4684: $20 $6a

    or l                                          ; $4686: $b5
    db $fd                                        ; $4687: $fd
    nop                                           ; $4688: $00
    db $10                                        ; $4689: $10
    or a                                          ; $468a: $b7

jr_09f_468b:
    ld e, b                                       ; $468b: $58
    cp $09                                        ; $468c: $fe $09
    call nz, $d180                                ; $468e: $c4 $80 $d1
    nop                                           ; $4691: $00
    ld b, b                                       ; $4692: $40
    db $e4                                        ; $4693: $e4
    ld b, b                                       ; $4694: $40
    ld h, d                                       ; $4695: $62
    and b                                         ; $4696: $a0
    or h                                          ; $4697: $b4
    jr nz, @-$0b                                  ; $4698: $20 $f3

jr_09f_469a:
    nop                                           ; $469a: $00
    db $10                                        ; $469b: $10
    ccf                                           ; $469c: $3f
    sub a                                         ; $469d: $97
    db $fd                                        ; $469e: $fd
    ld a, [bc]                                    ; $469f: $0a
    cp l                                          ; $46a0: $bd
    jp nz, $006f                                  ; $46a1: $c2 $6f $00

    ld d, b                                       ; $46a4: $50
    db $db                                        ; $46a5: $db
    ld h, h                                       ; $46a6: $64
    dec a                                         ; $46a7: $3d
    ld [hl+], a                                   ; $46a8: $22
    ld l, e                                       ; $46a9: $6b
    inc [hl]                                      ; $46aa: $34
    cp $00                                        ; $46ab: $fe $00
    pop de                                        ; $46ad: $d1
    sub a                                         ; $46ae: $97
    ld a, b                                       ; $46af: $78
    ld a, l                                       ; $46b0: $7d
    ld a, [bc]                                    ; $46b1: $0a
    or a                                          ; $46b2: $b7
    ret nz                                        ; $46b3: $c0

    jp hl                                         ; $46b4: $e9


    ld bc, $5a54                                  ; $46b5: $01 $54 $5a
    pop hl                                        ; $46b8: $e1
    or $28                                        ; $46b9: $f6 $28
    ld l, c                                       ; $46bb: $69
    or d                                          ; $46bc: $b2
    sub b                                         ; $46bd: $90
    inc bc                                        ; $46be: $03
    nop                                           ; $46bf: $00
    ld e, a                                       ; $46c0: $5f
    ld e, [hl]                                    ; $46c1: $5e
    xor c                                         ; $46c2: $a9
    ld e, h                                       ; $46c3: $5c
    add hl, bc                                    ; $46c4: $09
    xor h                                         ; $46c5: $ac
    inc b                                         ; $46c6: $04
    ld b, [hl]                                    ; $46c7: $46
    nop                                           ; $46c8: $00
    inc h                                         ; $46c9: $24
    ld [de], a                                    ; $46ca: $12
    ld a, [bc]                                    ; $46cb: $0a
    ld c, e                                       ; $46cc: $4b
    ld [bc], a                                    ; $46cd: $02
    dec h                                         ; $46ce: $25
    ld bc, $1081                                  ; $46cf: $01 $81 $10
    dec d                                         ; $46d2: $15
    sub h                                         ; $46d3: $94
    add b                                         ; $46d4: $80
    or b                                          ; $46d5: $b0

jr_09f_46d6:
    ld a, [de]                                    ; $46d6: $1a
    ld h, h                                       ; $46d7: $64
    jr z, jr_09f_468b                             ; $46d8: $28 $b1

    ld h, b                                       ; $46da: $60
    nop                                           ; $46db: $00
    ld a, [c]                                     ; $46dc: $f2
    call nc, $12f8                                ; $46dd: $d4 $f8 $12
    cp c                                          ; $46e0: $b9
    ld [$40bf], sp                                ; $46e1: $08 $bf $40
    nop                                           ; $46e4: $00
    ld [hl], a                                    ; $46e5: $77
    nop                                           ; $46e6: $00

Jump_09f_46e7:
    ld a, [$7f40]                                 ; $46e7: $fa $40 $7f
    jr nz, jr_09f_46d6                            ; $46ea: $20 $ea

    dec d                                         ; $46ec: $15
    inc b                                         ; $46ed: $04
    db $fd                                        ; $46ee: $fd
    add b                                         ; $46ef: $80

jr_09f_46f0:
    rst $38                                       ; $46f0: $ff
    db $10                                        ; $46f1: $10
    rst $18                                       ; $46f2: $df
    stop                                          ; $46f3: $10 $00
    rst $38                                       ; $46f5: $ff
    nop                                           ; $46f6: $00
    nop                                           ; $46f7: $00
    ld a, [$ff45]                                 ; $46f8: $fa $45 $ff
    jr nz, @-$10                                  ; $46fb: $20 $ee

    ld de, $02fd                                  ; $46fd: $11 $fd $02
    nop                                           ; $4700: $00
    cp $10                                        ; $4701: $fe $10
    rst $38                                       ; $4703: $ff
    ld [$04fb], sp                                ; $4704: $08 $fb $04
    ld a, a                                       ; $4707: $7f
    add b                                         ; $4708: $80
    nop                                           ; $4709: $00
    rst $28                                       ; $470a: $ef
    dec d                                         ; $470b: $15
    rst $30                                       ; $470c: $f7
    ld [bc], a                                    ; $470d: $02
    rst $38                                       ; $470e: $ff
    nop                                           ; $470f: $00
    rst $10                                       ; $4710: $d7
    jr z, jr_09f_4713                             ; $4711: $28 $00

jr_09f_4713:
    db $eb                                        ; $4713: $eb
    dec b                                         ; $4714: $05
    rst $30                                       ; $4715: $f7
    adc b                                         ; $4716: $88
    ld [$f715], a                                 ; $4717: $ea $15 $f7
    jr nz, jr_09f_471c                            ; $471a: $20 $00

jr_09f_471c:
    rst $28                                       ; $471c: $ef
    ld d, h                                       ; $471d: $54
    rst $38                                       ; $471e: $ff
    ld [bc], a                                    ; $471f: $02
    xor d                                         ; $4720: $aa
    ld d, c                                       ; $4721: $51
    ld d, l                                       ; $4722: $55
    ld [$ab00], sp                                ; $4723: $08 $00 $ab
    ld bc, $82d5                                  ; $4726: $01 $d5 $82
    ld [$dd10], a                                 ; $4729: $ea $10 $dd
    nop                                           ; $472c: $00
    ld [$40ea], sp                                ; $472d: $08 $ea $40
    push af                                       ; $4730: $f5
    jr z, @-$7a                                   ; $4731: $28 $84

    dec c                                         ; $4733: $0d
    cp d                                          ; $4734: $ba
    ld d, b                                       ; $4735: $50

jr_09f_4736:
    db $fd                                        ; $4736: $fd
    nop                                           ; $4737: $00
    ld [$6c9b], sp                                ; $4738: $08 $9b $6c
    ld l, [hl]                                    ; $473b: $6e
    sub l                                         ; $473c: $95
    db $dd                                        ; $473d: $dd
    daa                                           ; $473e: $27
    xor [hl]                                      ; $473f: $ae
    nop                                           ; $4740: $00
    ld d, d                                       ; $4741: $52
    db $db                                        ; $4742: $db
    ld h, $ab                                     ; $4743: $26 $ab
    ld d, l                                       ; $4745: $55
    ld e, a                                       ; $4746: $5f
    and c                                         ; $4747: $a1
    db $eb                                        ; $4748: $eb
    nop                                           ; $4749: $00
    sub h                                         ; $474a: $94
    jp z, $b63c                                   ; $474b: $ca $3c $b6

    ld [hl], l                                    ; $474e: $75
    push bc                                       ; $474f: $c5
    adc $53                                       ; $4750: $ce $53
    nop                                           ; $4752: $00
    ld [bc], a                                    ; $4753: $02
    add d                                         ; $4754: $82
    dec hl                                        ; $4755: $2b
    ld c, c                                       ; $4756: $49
    dec b                                         ; $4757: $05
    add l                                         ; $4758: $85
    ld hl, $0092                                  ; $4759: $21 $92 $00
    adc b                                         ; $475c: $88
    sbc d                                         ; $475d: $9a
    ld c, l                                       ; $475e: $4d
    ld a, a                                       ; $475f: $7f
    add h                                         ; $4760: $84
    db $dd                                        ; $4761: $dd
    ld h, $2f                                     ; $4762: $26 $2f
    nop                                           ; $4764: $00
    ld b, d                                       ; $4765: $42
    sub $0b                                       ; $4766: $d6 $0b
    xor a                                         ; $4768: $af
    ld b, c                                       ; $4769: $41
    ld l, c                                       ; $476a: $69
    sub e                                         ; $476b: $93
    push de                                       ; $476c: $d5
    nop                                           ; $476d: $00
    add d                                         ; $476e: $82
    ei                                            ; $476f: $fb
    inc c                                         ; $4770: $0c
    ld e, [hl]                                    ; $4771: $5e
    and l                                         ; $4772: $a5
    xor l                                         ; $4773: $ad
    ld d, [hl]                                    ; $4774: $56

jr_09f_4775:
    ld e, e                                       ; $4775: $5b
    jr nz, jr_09f_4736                            ; $4776: $20 $be

    ld [c], a                                     ; $4778: $e2
    and d                                         ; $4779: $a2
    inc bc                                        ; $477a: $03
    ret                                           ; $477b: $c9


    rst $38                                       ; $477c: $ff
    and b                                         ; $477d: $a0
    rst $38                                       ; $477e: $ff
    cp [hl]                                       ; $477f: $be
    ld bc, $fd41                                  ; $4780: $01 $41 $fd
    ld [bc], a                                    ; $4783: $02
    ld a, [$7f45]                                 ; $4784: $fa $45 $7f
    jr nz, jr_09f_4775                            ; $4787: $20 $ec

    ld c, $00                                     ; $4789: $0e $00
    rst $38                                       ; $478b: $ff
    dec d                                         ; $478c: $15
    ld e, l                                       ; $478d: $5d
    ld a, [hl+]                                   ; $478e: $2a
    call nz, $c890                                ; $478f: $c4 $90 $c8
    ld b, d                                       ; $4792: $42
    nop                                           ; $4793: $00
    ld [c], a                                     ; $4794: $e2
    ld b, h                                       ; $4795: $44
    db $e4                                        ; $4796: $e4
    ld hl, $62b1                                  ; $4797: $21 $b1 $62
    call nc, $00f0                                ; $479a: $d4 $f0 $00
    add hl, de                                    ; $479d: $19
    ldh a, [$a8]                                  ; $479e: $f0 $a8
    ld a, d                                       ; $47a0: $7a
    xor e                                         ; $47a1: $ab
    ret nc                                        ; $47a2: $d0

    ld [hl], l                                    ; $47a3: $75
    ld c, d                                       ; $47a4: $4a
    nop                                           ; $47a5: $00
    ld e, d                                       ; $47a6: $5a
    ldh [$b5], a                                  ; $47a7: $e0 $b5
    jr z, jr_09f_47d5                             ; $47a9: $28 $2a

    dec [hl]                                      ; $47ab: $35
    ld e, a                                       ; $47ac: $5f
    sub b                                         ; $47ad: $90
    nop                                           ; $47ae: $00
    ld [de], a                                    ; $47af: $12
    ld e, h                                       ; $47b0: $5c
    adc l                                         ; $47b1: $8d
    ld [$55fe], sp                                ; $47b2: $08 $fe $55
    push de                                       ; $47b5: $d5
    ld a, [hl+]                                   ; $47b6: $2a
    nop                                           ; $47b7: $00
    cp $55                                        ; $47b8: $fe $55
    ld a, l                                       ; $47ba: $7d
    xor d                                         ; $47bb: $aa
    ld a, [$7515]                                 ; $47bc: $fa $15 $75
    ld a, [bc]                                    ; $47bf: $0a
    nop                                           ; $47c0: $00
    cp [hl]                                       ; $47c1: $be
    ld d, l                                       ; $47c2: $55
    ld a, a                                       ; $47c3: $7f
    adc d                                         ; $47c4: $8a
    cp a                                          ; $47c5: $bf
    ld b, l                                       ; $47c6: $45
    db $dd                                        ; $47c7: $dd
    ld [hl+], a                                   ; $47c8: $22
    ld [bc], a                                    ; $47c9: $02
    cp [hl]                                       ; $47ca: $be
    ld b, l                                       ; $47cb: $45
    rst $30                                       ; $47cc: $f7
    ld a, [bc]                                    ; $47cd: $0a
    cp a                                          ; $47ce: $bf
    ld b, c                                       ; $47cf: $41
    xor c                                         ; $47d0: $a9
    rlca                                          ; $47d1: $07
    ld bc, $d700                                  ; $47d2: $01 $00 $d7

jr_09f_47d5:
    and b                                         ; $47d5: $a0
    rst $28                                       ; $47d6: $ef
    ld d, b                                       ; $47d7: $50
    ld d, l                                       ; $47d8: $55
    xor b                                         ; $47d9: $a8
    cp [hl]                                       ; $47da: $be
    ld d, h                                       ; $47db: $54
    nop                                           ; $47dc: $00
    ld [hl], a                                    ; $47dd: $77
    adc d                                         ; $47de: $8a
    xor e                                         ; $47df: $ab
    ld d, h                                       ; $47e0: $54
    ld d, l                                       ; $47e1: $55
    xor d                                         ; $47e2: $aa
    cp e                                          ; $47e3: $bb
    ld b, l                                       ; $47e4: $45
    nop                                           ; $47e5: $00
    rst $30                                       ; $47e6: $f7
    xor b                                         ; $47e7: $a8
    dec hl                                        ; $47e8: $2b
    adc h                                         ; $47e9: $8c
    ld d, $45                                     ; $47ea: $16 $45
    add l                                         ; $47ec: $85
    ld b, $02                                     ; $47ed: $06 $02
    ld a, a                                       ; $47ef: $7f
    ld a, [de]                                    ; $47f0: $1a
    cp $e3                                        ; $47f1: $fe $e3
    or a                                          ; $47f3: $b7
    ld c, c                                       ; $47f4: $49
    ld h, b                                       ; $47f5: $60
    ld bc, $0080                                  ; $47f6: $01 $80 $00
    rst $38                                       ; $47f9: $ff
    dec b                                         ; $47fa: $05
    ld a, l                                       ; $47fb: $7d
    ld [bc], a                                    ; $47fc: $02
    cp [hl]                                       ; $47fd: $be
    ld b, l                                       ; $47fe: $45
    rst $10                                       ; $47ff: $d7

Call_09f_4800:
    ld a, [bc]                                    ; $4800: $0a
    ld [$11ef], sp                                ; $4801: $08 $ef $11
    rst $18                                       ; $4804: $df
    nop                                           ; $4805: $00
    inc b                                         ; $4806: $04
    nop                                           ; $4807: $00
    add b                                         ; $4808: $80
    xor a                                         ; $4809: $af
    ld d, b                                       ; $480a: $50
    ld b, b                                       ; $480b: $40
    ld a, a                                       ; $480c: $7f
    db $10                                        ; $480d: $10
    ld bc, $227d                                  ; $480e: $01 $7d $22
    xor e                                         ; $4811: $ab
    db $10                                        ; $4812: $10
    ld e, l                                       ; $4813: $5d
    nop                                           ; $4814: $00
    nop                                           ; $4815: $00
    cp a                                          ; $4816: $bf
    db $10                                        ; $4817: $10
    ld e, l                                       ; $4818: $5d
    ld [$45fe], sp                                ; $4819: $08 $fe $45
    push de                                       ; $481c: $d5
    ld a, [hl+]                                   ; $481d: $2a
    ld [$51ee], sp                                ; $481e: $08 $ee $51
    push af                                       ; $4821: $f5
    ld a, [hl+]                                   ; $4822: $2a
    ld h, b                                       ; $4823: $60
    nop                                           ; $4824: $00
    adc d                                         ; $4825: $8a
    ld a, [$0215]                                 ; $4826: $fa $15 $02
    db $dd                                        ; $4829: $dd
    ld a, [bc]                                    ; $482a: $0a
    cp a                                          ; $482b: $bf
    ld b, b                                       ; $482c: $40
    ld a, a                                       ; $482d: $7f
    add b                                         ; $482e: $80
    jr nz, jr_09f_483a                            ; $482f: $20 $09

    xor e                                         ; $4831: $ab
    nop                                           ; $4832: $00
    ld d, b                                       ; $4833: $50
    db $dd                                        ; $4834: $dd
    and d                                         ; $4835: $a2
    rst $38                                       ; $4836: $ff
    ld d, b                                       ; $4837: $50
    ld a, a                                       ; $4838: $7f
    adc b                                         ; $4839: $88

jr_09f_483a:
    ld e, h                                       ; $483a: $5c
    nop                                           ; $483b: $00
    xor b                                         ; $483c: $a8
    db $fc                                        ; $483d: $fc
    dec b                                         ; $483e: $05
    ld l, $84                                     ; $483f: $2e $84
    xor $12                                       ; $4841: $ee $12

jr_09f_4843:
    or a                                          ; $4843: $b7
    nop                                           ; $4844: $00
    ld b, d                                       ; $4845: $42
    rst $28                                       ; $4846: $ef
    ld bc, $a553                                  ; $4847: $01 $53 $a5
    rst $28                                       ; $484a: $ef
    sub b                                         ; $484b: $90
    cp c                                          ; $484c: $b9
    inc b                                         ; $484d: $04
    add $46                                       ; $484e: $c6 $46
    add [hl]                                      ; $4850: $86
    add $86                                       ; $4851: $c6 $86
    inc b                                         ; $4853: $04
    jr z, jr_09f_48ad                             ; $4854: $28 $57

    add [hl]                                      ; $4856: $86
    ret nz                                        ; $4857: $c0

    or d                                          ; $4858: $b2
    rlca                                          ; $4859: $07
    inc de                                        ; $485a: $13
    ld b, a                                       ; $485b: $47
    ld d, l                                       ; $485c: $55
    nop                                           ; $485d: $00
    sbc l                                         ; $485e: $9d
    ld h, e                                       ; $485f: $63

Jump_09f_4860:
    ld h, e                                       ; $4860: $63
    ld h, c                                       ; $4861: $61
    add b                                         ; $4862: $80
    ld [bc], a                                    ; $4863: $02
    jr c, jr_09f_48dd                             ; $4864: $38 $77

    ld h, c                                       ; $4866: $61
    xor d                                         ; $4867: $aa
    ld b, c                                       ; $4868: $41
    ld [hl], l                                    ; $4869: $75
    adc d                                         ; $486a: $8a
    rst $38                                       ; $486b: $ff
    nop                                           ; $486c: $00
    ld b, b                                       ; $486d: $40
    ld a, l                                       ; $486e: $7d
    and d                                         ; $486f: $a2
    xor [hl]                                      ; $4870: $ae
    ld d, l                                       ; $4871: $55
    ld d, l                                       ; $4872: $55
    xor d                                         ; $4873: $aa
    cp [hl]                                       ; $4874: $be
    nop                                           ; $4875: $00
    ld d, l                                       ; $4876: $55
    ld e, l                                       ; $4877: $5d
    xor d                                         ; $4878: $aa
    xor $86                                       ; $4879: $ee $86
    rst $10                                       ; $487b: $d7
    xor [hl]                                      ; $487c: $ae
    rst $38                                       ; $487d: $ff
    nop                                           ; $487e: $00
    rst $38                                       ; $487f: $ff
    ret nz                                        ; $4880: $c0

    rst $38                                       ; $4881: $ff
    xor d                                         ; $4882: $aa
    ret nz                                        ; $4883: $c0

    push de                                       ; $4884: $d5
    add b                                         ; $4885: $80
    xor d                                         ; $4886: $aa
    nop                                           ; $4887: $00
    push de                                       ; $4888: $d5
    rst $38                                       ; $4889: $ff
    rst $38                                       ; $488a: $ff
    xor d                                         ; $488b: $aa
    nop                                           ; $488c: $00
    ld a, l                                       ; $488d: $7d
    cp [hl]                                       ; $488e: $be
    jp $c300                                      ; $488f: $c3 $00 $c3


    ld b, [hl]                                    ; $4892: $46
    jp Jump_000_24ae                              ; $4893: $c3 $ae $24


    ld e, l                                       ; $4896: $5d
    jr jr_09f_4843                                ; $4897: $18 $aa

    nop                                           ; $4899: $00
    ld d, l                                       ; $489a: $55
    rst $38                                       ; $489b: $ff
    rst $38                                       ; $489c: $ff
    db $eb                                        ; $489d: $eb
    ld h, c                                       ; $489e: $61
    ld [hl], l                                    ; $489f: $75
    db $eb                                        ; $48a0: $eb
    rst $38                                       ; $48a1: $ff
    nop                                           ; $48a2: $00
    rst $38                                       ; $48a3: $ff
    inc bc                                        ; $48a4: $03
    rst $38                                       ; $48a5: $ff
    xor c                                         ; $48a6: $a9
    inc bc                                        ; $48a7: $03
    ld d, a                                       ; $48a8: $57
    ld bc, $00a9                                  ; $48a9: $01 $a9 $00
    ld d, a                                       ; $48ac: $57

jr_09f_48ad:
    rst $38                                       ; $48ad: $ff
    rst $38                                       ; $48ae: $ff
    cp [hl]                                       ; $48af: $be
    ld d, l                                       ; $48b0: $55
    db $fd                                        ; $48b1: $fd
    xor d                                         ; $48b2: $aa
    xor a                                         ; $48b3: $af
    nop                                           ; $48b4: $00
    ld d, h                                       ; $48b5: $54
    rst $38                                       ; $48b6: $ff

Jump_09f_48b7:
    xor d                                         ; $48b7: $aa
    cp e                                          ; $48b8: $bb
    ld d, l                                       ; $48b9: $55
    rst $38                                       ; $48ba: $ff
    xor b                                         ; $48bb: $a8
    ei                                            ; $48bc: $fb
    nop                                           ; $48bd: $00
    ld d, l                                       ; $48be: $55
    push de                                       ; $48bf: $d5
    xor d                                         ; $48c0: $aa
    ld [$7715], a                                 ; $48c1: $ea $15 $77
    xor b                                         ; $48c4: $a8
    rst $38                                       ; $48c5: $ff
    inc b                                         ; $48c6: $04
    ld b, h                                       ; $48c7: $44
    ld e, a                                       ; $48c8: $5f
    and d                                         ; $48c9: $a2
    cp d                                          ; $48ca: $ba
    ld b, l                                       ; $48cb: $45
    ldh a, [rP1]                                  ; $48cc: $f0 $00
    ld d, l                                       ; $48ce: $55
    push af                                       ; $48cf: $f5
    nop                                           ; $48d0: $00
    adc d                                         ; $48d1: $8a
    ld a, e                                       ; $48d2: $7b
    inc c                                         ; $48d3: $0c
    ccf                                           ; $48d4: $3f
    call nz, $17cd                                ; $48d5: $c4 $cd $17
    or [hl]                                       ; $48d8: $b6
    nop                                           ; $48d9: $00
    ld b, d                                       ; $48da: $42
    rst $18                                       ; $48db: $df
    ld [bc], a                                    ; $48dc: $02

jr_09f_48dd:
    rst $10                                       ; $48dd: $d7
    add hl, hl                                    ; $48de: $29
    ld l, e                                       ; $48df: $6b

jr_09f_48e0:
    add l                                         ; $48e0: $85
    rst $30                                       ; $48e1: $f7
    nop                                           ; $48e2: $00
    adc b                                         ; $48e3: $88
    ld l, d                                       ; $48e4: $6a
    dec e                                         ; $48e5: $1d
    or a                                          ; $48e6: $b7
    ld [hl], h                                    ; $48e7: $74
    push bc                                       ; $48e8: $c5
    sub $ab                                       ; $48e9: $d6 $ab
    ld [$8202], sp                                ; $48eb: $08 $02 $82
    ld d, e                                       ; $48ee: $53
    dec d                                         ; $48ef: $15
    jr nc, @+$05                                  ; $48f0: $30 $03

    sub h                                         ; $48f2: $94
    add d                                         ; $48f3: $82
    ld [$4080], a                                 ; $48f4: $ea $80 $40
    ld bc, $55ea                                  ; $48f7: $01 $ea $55
    rst $38                                       ; $48fa: $ff
    ld a, [hl+]                                   ; $48fb: $2a

jr_09f_48fc:
    cp [hl]                                       ; $48fc: $be
    ld d, l                                       ; $48fd: $55
    rst $10                                       ; $48fe: $d7
    nop                                           ; $48ff: $00
    jr z, jr_09f_48fc                             ; $4900: $28 $fa

    dec d                                         ; $4902: $15
    rst $38                                       ; $4903: $ff
    ld a, [bc]                                    ; $4904: $0a
    xor e                                         ; $4905: $ab
    ld d, b                                       ; $4906: $50
    ld [hl], l                                    ; $4907: $75
    nop                                           ; $4908: $00
    adc b                                         ; $4909: $88
    cp $41                                        ; $490a: $fe $41
    rst $38                                       ; $490c: $ff
    and b                                         ; $490d: $a0
    xor a                                         ; $490e: $af
    ld d, b                                       ; $490f: $50
    ld e, a                                       ; $4910: $5f
    dec b                                         ; $4911: $05
    and b                                         ; $4912: $a0
    cp a                                          ; $4913: $bf
    ld d, b                                       ; $4914: $50
    ld e, a                                       ; $4915: $5f
    xor b                                         ; $4916: $a8
    ld h, b                                       ; $4917: $60
    cpl                                           ; $4918: $2f
    db $eb                                        ; $4919: $eb
    ld l, [hl]                                    ; $491a: $6e
    ld b, $64                                     ; $491b: $06 $64
    ld a, [c]                                     ; $491d: $f2
    call z, $0205                                 ; $491e: $cc $05 $02
    ld a, b                                       ; $4921: $78
    ld [hl], b                                    ; $4922: $70
    add b                                         ; $4923: $80
    ld d, $08                                     ; $4924: $16 $08
    or b                                          ; $4926: $b0
    ld b, b                                       ; $4927: $40
    ld bc, $807a                                  ; $4928: $01 $7a $80
    or l                                          ; $492b: $b5
    ld b, b                                       ; $492c: $40
    ld e, e                                       ; $492d: $5b
    and b                                         ; $492e: $a0
    rst $30                                       ; $492f: $f7
    sub d                                         ; $4930: $92
    rlca                                          ; $4931: $07
    ld b, [hl]                                    ; $4932: $46
    db $dd                                        ; $4933: $dd
    and h                                         ; $4934: $a4
    rlca                                          ; $4935: $07
    ld b, h                                       ; $4936: $44
    nop                                           ; $4937: $00
    adc b                                         ; $4938: $88
    add b                                         ; $4939: $80
    rla                                           ; $493a: $17
    ld e, c                                       ; $493b: $59
    rra                                           ; $493c: $1f
    ld [bc], a                                    ; $493d: $02
    adc b                                         ; $493e: $88
    db $ec                                        ; $493f: $ec
    rlca                                          ; $4940: $07
    ld [$0200], sp                                ; $4941: $08 $00 $02
    ld e, a                                       ; $4944: $5f
    rlca                                          ; $4945: $07
    ld b, c                                       ; $4946: $41
    nop                                           ; $4947: $00
    stop                                          ; $4948: $10 $00
    rrca                                          ; $494a: $0f
    jr z, jr_09f_495d                             ; $494b: $28 $10

    nop                                           ; $494d: $00
    jr nz, jr_09f_48e0                            ; $494e: $20 $90

    jr nz, jr_09f_495e                            ; $4950: $20 $0c

    nop                                           ; $4952: $00
    or b                                          ; $4953: $b0
    scf                                           ; $4954: $37
    jr @+$5b                                      ; $4955: $18 $59

    ld c, $10                                     ; $4957: $0e $10
    nop                                           ; $4959: $00
    ld de, $e000                                  ; $495a: $11 $00 $e0

jr_09f_495d:
    ld h, h                                       ; $495d: $64

jr_09f_495e:
    jr jr_09f_496a                                ; $495e: $18 $0a

    inc b                                         ; $4960: $04
    dec b                                         ; $4961: $05
    ld [bc], a                                    ; $4962: $02
    inc e                                         ; $4963: $1c
    inc b                                         ; $4964: $04
    inc bc                                        ; $4965: $03
    pop af                                        ; $4966: $f1
    rrca                                          ; $4967: $0f
    add a                                         ; $4968: $87
    ld a, a                                       ; $4969: $7f

jr_09f_496a:
    ld l, b                                       ; $496a: $68
    rlca                                          ; $496b: $07
    ld a, $02                                     ; $496c: $3e $02
    nop                                           ; $496e: $00
    ld b, c                                       ; $496f: $41
    and l                                         ; $4970: $a5
    ld b, e                                       ; $4971: $43
    sbc c                                         ; $4972: $99
    ld h, a                                       ; $4973: $67
    db $e3                                        ; $4974: $e3
    ld a, $7f                                     ; $4975: $3e $7f
    nop                                           ; $4977: $00
    inc e                                         ; $4978: $1c
    cp [hl]                                       ; $4979: $be
    nop                                           ; $497a: $00
    ld c, c                                       ; $497b: $49
    ld b, $16                                     ; $497c: $06 $16
    add hl, bc                                    ; $497e: $09
    jr z, jr_09f_4981                             ; $497f: $28 $00

jr_09f_4981:
    db $10                                        ; $4981: $10
    add hl, de                                    ; $4982: $19
    and b                                         ; $4983: $a0
    daa                                           ; $4984: $27
    jr c, jr_09f_49bf                             ; $4985: $38 $38

    rra                                           ; $4987: $1f
    sub a                                         ; $4988: $97
    nop                                           ; $4989: $00
    rrca                                          ; $498a: $0f
    rlca                                          ; $498b: $07
    ld [$0f03], sp                                ; $498c: $08 $03 $0f
    cpl                                           ; $498f: $2f
    sub b                                         ; $4990: $90
    sub c                                         ; $4991: $91
    nop                                           ; $4992: $00
    ld h, b                                       ; $4993: $60
    and d                                         ; $4994: $a2
    ld b, c                                       ; $4995: $41
    inc a                                         ; $4996: $3c
    jp $ff81                                      ; $4997: $c3 $81 $ff


    dec a                                         ; $499a: $3d
    nop                                           ; $499b: $00
    cp $bf                                        ; $499c: $fe $bf
    ld h, b                                       ; $499e: $60
    sbc $fe                                       ; $499f: $de $fe
    ld [hl], b                                    ; $49a1: $70
    adc a                                         ; $49a2: $8f
    ld h, e                                       ; $49a3: $63
    nop                                           ; $49a4: $00
    sbc h                                         ; $49a5: $9c
    add sp, -$10                                  ; $49a6: $e8 $f0
    ret nc                                        ; $49a8: $d0

    and b                                         ; $49a9: $a0
    db $ec                                        ; $49aa: $ec
    jr nc, @-$0b                                  ; $49ab: $30 $f3

    nop                                           ; $49ad: $00
    inc a                                         ; $49ae: $3c
    ld hl, sp+$1f                                 ; $49af: $f8 $1f
    jr nz, @+$04                                  ; $49b1: $20 $02

    nop                                           ; $49b3: $00
    ldh a, [$30]                                  ; $49b4: $f0 $30
    nop                                           ; $49b6: $00
    inc c                                         ; $49b7: $0c
    inc b                                         ; $49b8: $04
    ld [bc], a                                    ; $49b9: $02
    inc b                                         ; $49ba: $04
    ld [bc], a                                    ; $49bb: $02
    db $10                                        ; $49bc: $10
    ld c, $b6                                     ; $49bd: $0e $b6

jr_09f_49bf:
    nop                                           ; $49bf: $00
    inc c                                         ; $49c0: $0c
    db $ec                                        ; $49c1: $ec
    jr @+$30                                      ; $49c2: $18 $2e

    ret nc                                        ; $49c4: $d0

    ld d, a                                       ; $49c5: $57
    and b                                         ; $49c6: $a0
    dec c                                         ; $49c7: $0d
    nop                                           ; $49c8: $00
    ldh a, [$2f]                                  ; $49c9: $f0 $2f
    ret nc                                        ; $49cb: $d0

    rrca                                          ; $49cc: $0f
    ldh a, [rIF]                                  ; $49cd: $f0 $0f
    ldh a, [$8f]                                  ; $49cf: $f0 $8f
    ret nz                                        ; $49d1: $c0

    inc b                                         ; $49d2: $04
    nop                                           ; $49d3: $00
    sub b                                         ; $49d4: $90
    ld e, [hl]                                    ; $49d5: $5e
    db $fd                                        ; $49d6: $fd
    nop                                           ; $49d7: $00
    and [hl]                                      ; $49d8: $a6
    ld sp, hl                                     ; $49d9: $f9
    ld b, a                                       ; $49da: $47
    ld hl, sp+$00                                 ; $49db: $f8 $00
    xor e                                         ; $49dd: $ab
    db $f4                                        ; $49de: $f4
    push de                                       ; $49df: $d5
    ld a, [$f56a]                                 ; $49e0: $fa $6a $f5
    pop de                                        ; $49e3: $d1
    cp $10                                        ; $49e4: $fe $10
    ld a, [c]                                     ; $49e6: $f2
    db $fd                                        ; $49e7: $fd
    ldh a, [$b7]                                  ; $49e8: $f0 $b7
    rrca                                          ; $49ea: $0f
    nop                                           ; $49eb: $00
    ld l, a                                       ; $49ec: $6f
    sub b                                         ; $49ed: $90
    cp $10                                        ; $49ee: $fe $10
    ld bc, $40bf                                  ; $49f0: $01 $bf $40
    ld [hl], b                                    ; $49f3: $70
    ld e, $f0                                     ; $49f4: $1e $f0
    rst $38                                       ; $49f6: $ff
    db $f4                                        ; $49f7: $f4
    rst $38                                       ; $49f8: $ff
    db $10                                        ; $49f9: $10
    ld a, [c]                                     ; $49fa: $f2
    rst $38                                       ; $49fb: $ff
    add sp, $50                                   ; $49fc: $e8 $50
    ld [hl], $53                                  ; $49fe: $36 $53
    inc c                                         ; $4a00: $0c
    cp e                                          ; $4a01: $bb
    rlca                                          ; $4a02: $07
    ld bc, $00ec                                  ; $4a03: $01 $ec $00
    ld a, [$bd01]                                 ; $4a06: $fa $01 $bd
    nop                                           ; $4a09: $00
    xor $18                                       ; $4a0a: $ee $18
    ld bc, $ff00                                  ; $4a0c: $01 $00 $ff
    nop                                           ; $4a0f: $00
    ld e, h                                       ; $4a10: $5c
    ldh [$a4], a                                  ; $4a11: $e0 $a4
    ret z                                         ; $4a13: $c8

    ld [hl+], a                                   ; $4a14: $22
    inc b                                         ; $4a15: $04
    ld b, b                                       ; $4a16: $40
    sub b                                         ; $4a17: $90
    ret c                                         ; $4a18: $d8

    nop                                           ; $4a19: $00
    sub l                                         ; $4a1a: $95
    nop                                           ; $4a1b: $00
    ld c, e                                       ; $4a1c: $4b
    nop                                           ; $4a1d: $00
    rst $20                                       ; $4a1e: $e7
    nop                                           ; $4a1f: $00
    nop                                           ; $4a20: $00
    ld e, $87                                     ; $4a21: $1e $87
    ld h, $01                                     ; $4a23: $26 $01
    ld e, e                                       ; $4a25: $5b
    nop                                           ; $4a26: $00
    or h                                          ; $4a27: $b4
    ld bc, $7b10                                  ; $4a28: $01 $10 $7b
    inc b                                         ; $4a2b: $04
    ei                                            ; $4a2c: $fb
    ld a, [hl-]                                   ; $4a2d: $3a

Jump_09f_4a2e:
    ld bc, $00ff                                  ; $4a2e: $01 $ff $00
    ld c, $f8                                     ; $4a31: $0e $f8
    ld bc, $f0f8                                  ; $4a33: $01 $f8 $f0
    ld a, [c]                                     ; $4a36: $f2
    nop                                           ; $4a37: $00
    xor b                                         ; $4a38: $a8
    db $10                                        ; $4a39: $10
    push de                                       ; $4a3a: $d5
    jr nc, jr_09f_4a3d                            ; $4a3b: $30 $00

jr_09f_4a3d:
    ld h, b                                       ; $4a3d: $60
    ld [hl], a                                    ; $4a3e: $77
    jr jr_09f_4a58                                ; $4a3f: $18 $17

    ld d, $08                                     ; $4a41: $16 $08
    rst $38                                       ; $4a43: $ff
    nop                                           ; $4a44: $00
    or a                                          ; $4a45: $b7
    ld c, b                                       ; $4a46: $48
    ld e, e                                       ; $4a47: $5b
    ld [bc], a                                    ; $4a48: $02
    and h                                         ; $4a49: $a4
    xor [hl]                                      ; $4a4a: $ae
    ld d, c                                       ; $4a4b: $51
    dec d                                         ; $4a4c: $15
    ld [$2cdf], a                                 ; $4a4d: $ea $df $2c
    rla                                           ; $4a50: $17
    rst $38                                       ; $4a51: $ff
    nop                                           ; $4a52: $00
    nop                                           ; $4a53: $00
    db $dd                                        ; $4a54: $dd
    ld [hl+], a                                   ; $4a55: $22
    ei                                            ; $4a56: $fb
    inc b                                         ; $4a57: $04

jr_09f_4a58:
    xor a                                         ; $4a58: $af
    ld d, b                                       ; $4a59: $50
    ld d, l                                       ; $4a5a: $55
    ld [hl+], a                                   ; $4a5b: $22
    xor d                                         ; $4a5c: $aa
    ld a, l                                       ; $4a5d: $7d
    inc a                                         ; $4a5e: $3c
    rla                                           ; $4a5f: $17
    rst $30                                       ; $4a60: $f7
    ld [$a0de], sp                                ; $4a61: $08 $de $a0
    daa                                           ; $4a64: $27
    cp $00                                        ; $4a65: $fe $00
    ld bc, $00ff                                  ; $4a67: $01 $ff $00
    rst $28                                       ; $4a6a: $ef
    db $10                                        ; $4a6b: $10
    cp l                                          ; $4a6c: $bd
    ld b, d                                       ; $4a6d: $42
    ld [$1500], a                                 ; $4a6e: $ea $00 $15
    call nc, $892b                                ; $4a71: $d4 $2b $89
    halt                                          ; $4a74: $76
    ld b, h                                       ; $4a75: $44
    cp e                                          ; $4a76: $bb
    ret nc                                        ; $4a77: $d0

    nop                                           ; $4a78: $00
    cpl                                           ; $4a79: $2f
    xor b                                         ; $4a7a: $a8
    ld [hl], b                                    ; $4a7b: $70
    ld c, d                                       ; $4a7c: $4a
    rst $20                                       ; $4a7d: $e7
    rst $30                                       ; $4a7e: $f7
    ld e, a                                       ; $4a7f: $5f
    ld e, a                                       ; $4a80: $5f
    nop                                           ; $4a81: $00
    rst $28                                       ; $4a82: $ef
    rst $38                                       ; $4a83: $ff
    ld e, a                                       ; $4a84: $5f
    rst $18                                       ; $4a85: $df
    rst $28                                       ; $4a86: $ef
    xor [hl]                                      ; $4a87: $ae
    rst $30                                       ; $4a88: $f7
    dec c                                         ; $4a89: $0d
    nop                                           ; $4a8a: $00
    ld a, [c]                                     ; $4a8b: $f2
    ld [hl], $0d                                  ; $4a8c: $36 $0d
    or d                                          ; $4a8e: $b2
    rst $20                                       ; $4a8f: $e7
    or $fb                                        ; $4a90: $f6 $fb
    ld a, [$f701]                                 ; $4a92: $fa $01 $f7
    cp $fb                                        ; $4a95: $fe $fb
    ei                                            ; $4a97: $fb
    rst $30                                       ; $4a98: $f7
    ld [hl], l                                    ; $4a99: $75
    rst $28                                       ; $4a9a: $ef
    jr nz, @+$1a                                  ; $4a9b: $20 $18

    ld [bc], a                                    ; $4a9d: $02
    ld [hl], a                                    ; $4a9e: $77
    rst $18                                       ; $4a9f: $df
    ld e, a                                       ; $4aa0: $5f
    rst $28                                       ; $4aa1: $ef
    ld a, a                                       ; $4aa2: $7f
    rst $18                                       ; $4aa3: $df
    jr nz, jr_09f_4ace                            ; $4aa4: $20 $28

    or e                                          ; $4aa6: $b3
    ld b, b                                       ; $4aa7: $40
    and $20                                       ; $4aa8: $e6 $20
    jr c, @-$6e                                   ; $4aaa: $38 $90

    ld hl, sp-$3a                                 ; $4aac: $f8 $c6
    rst $38                                       ; $4aae: $ff
    cp [hl]                                       ; $4aaf: $be
    jp hl                                         ; $4ab0: $e9


    nop                                           ; $4ab1: $00
    sbc h                                         ; $4ab2: $9c
    jp hl                                         ; $4ab3: $e9


    adc $ff                                       ; $4ab4: $ce $ff
    sbc b                                         ; $4ab6: $98
    rst $28                                       ; $4ab7: $ef
    sbc $e9                                       ; $4ab8: $de $e9
    nop                                           ; $4aba: $00
    cp h                                          ; $4abb: $bc
    jp hl                                         ; $4abc: $e9


    add hl, bc                                    ; $4abd: $09
    rra                                           ; $4abe: $1f
    ld h, e                                       ; $4abf: $63
    rst $38                                       ; $4ac0: $ff
    ld a, l                                       ; $4ac1: $7d
    rla                                           ; $4ac2: $17
    nop                                           ; $4ac3: $00
    add hl, sp                                    ; $4ac4: $39
    rla                                           ; $4ac5: $17
    ld [hl], e                                    ; $4ac6: $73
    ld a, a                                       ; $4ac7: $7f
    add hl, de                                    ; $4ac8: $19
    rst $30                                       ; $4ac9: $f7
    ld e, e                                       ; $4aca: $5b
    scf                                           ; $4acb: $37
    jr nz, @+$17                                  ; $4acc: $20 $15

jr_09f_4ace:
    ccf                                           ; $4ace: $3f
    cp [hl]                                       ; $4acf: $be
    add hl, bc                                    ; $4ad0: $09
    cp $04                                        ; $4ad1: $fe $04
    rst $38                                       ; $4ad3: $ff
    ld [bc], a                                    ; $4ad4: $02
    ei                                            ; $4ad5: $fb
    nop                                           ; $4ad6: $00
    inc b                                         ; $4ad7: $04
    rst $38                                       ; $4ad8: $ff
    ld [$51ff], sp                                ; $4ad9: $08 $ff $51
    db $fd                                        ; $4adc: $fd
    add d                                         ; $4add: $82
    jp nz, $fd00                                  ; $4ade: $c2 $00 $fd

    jp c, $e16f                                   ; $4ae1: $da $6f $e1

    ld a, a                                       ; $4ae4: $7f
    ld l, c                                       ; $4ae5: $69
    or [hl]                                       ; $4ae6: $b6
    or h                                          ; $4ae7: $b4
    nop                                           ; $4ae8: $00
    ld a, a                                       ; $4ae9: $7f
    jp nc, $1cff                                  ; $4aea: $d2 $ff $1c

    ei                                            ; $4aed: $fb
    add hl, hl                                    ; $4aee: $29
    cp $ab                                        ; $4aef: $fe $ab
    nop                                           ; $4af1: $00
    call nc, $c275                                ; $4af2: $d4 $75 $c2
    ld d, a                                       ; $4af5: $57
    add sp, $3c                                   ; $4af6: $e8 $3c
    pop hl                                        ; $4af8: $e1
    xor e                                         ; $4af9: $ab

jr_09f_4afa:
    nop                                           ; $4afa: $00
    ld [hl], h                                    ; $4afb: $74
    rra                                           ; $4afc: $1f
    ldh a, [$b4]                                  ; $4afd: $f0 $b4

jr_09f_4aff:
    ld sp, hl                                     ; $4aff: $f9
    rst $38                                       ; $4b00: $ff
    add sp, -$52                                  ; $4b01: $e8 $ae
    nop                                           ; $4b03: $00
    rrca                                          ; $4b04: $0f
    ld b, l                                       ; $4b05: $45
    rlca                                          ; $4b06: $07
    sub [hl]                                      ; $4b07: $96
    daa                                           ; $4b08: $27
    ld [bc], a                                    ; $4b09: $02
    inc de                                        ; $4b0a: $13
    inc hl                                        ; $4b0b: $23
    nop                                           ; $4b0c: $00
    ld b, e                                       ; $4b0d: $43
    add hl, bc                                    ; $4b0e: $09
    dec b                                         ; $4b0f: $05
    xor l                                         ; $4b10: $ad
    ld bc, $9082                                  ; $4b11: $01 $82 $90
    xor a                                         ; $4b14: $af
    nop                                           ; $4b15: $00
    rst $38                                       ; $4b16: $ff
    ld h, $fd                                     ; $4b17: $26 $fd
    ld b, l                                       ; $4b19: $45
    cp $93                                        ; $4b1a: $fe $93
    cp $42                                        ; $4b1c: $fe $42
    nop                                           ; $4b1e: $00
    rst $38                                       ; $4b1f: $ff
    dec l                                         ; $4b20: $2d
    rst $38                                       ; $4b21: $ff
    sub c                                         ; $4b22: $91
    rst $38                                       ; $4b23: $ff
    add [hl]                                      ; $4b24: $86
    rst $38                                       ; $4b25: $ff
    ld a, [$8c00]                                 ; $4b26: $fa $00 $8c
    sbc $25                                       ; $4b29: $de $25
    db $ed                                        ; $4b2b: $ed
    ld d, $b7                                     ; $4b2c: $16 $b7
    ld c, d                                       ; $4b2e: $4a
    cp [hl]                                       ; $4b2f: $be
    ld b, d                                       ; $4b30: $42
    ld b, e                                       ; $4b31: $43
    add b                                         ; $4b32: $80
    ld [bc], a                                    ; $4b33: $02
    sub l                                         ; $4b34: $95
    rst $38                                       ; $4b35: $ff
    add b                                         ; $4b36: $80
    ld [$0304], a                                 ; $4b37: $ea $04 $03
    ld [$4002], a                                 ; $4b3a: $ea $02 $40
    ld [hl], a                                    ; $4b3d: $77
    jr z, jr_09f_4aff                             ; $4b3e: $28 $bf

    inc b                                         ; $4b40: $04
    ld e, a                                       ; $4b41: $5f
    ld h, b                                       ; $4b42: $60
    inc bc                                        ; $4b43: $03
    ld e, a                                       ; $4b44: $5f
    nop                                           ; $4b45: $00
    ld [$55ea], sp                                ; $4b46: $08 $ea $55
    ld d, a                                       ; $4b49: $57
    ld a, [hl+]                                   ; $4b4a: $2a
    rst $28                                       ; $4b4b: $ef
    ld d, l                                       ; $4b4c: $55
    push af                                       ; $4b4d: $f5
    jr z, jr_09f_4afa                             ; $4b4e: $28 $aa

    ei                                            ; $4b50: $fb
    ld h, b                                       ; $4b51: $60
    inc bc                                        ; $4b52: $03
    cp e                                          ; $4b53: $bb
    ld h, b                                       ; $4b54: $60
    inc hl                                        ; $4b55: $23
    cp $41                                        ; $4b56: $fe $41
    ld a, a                                       ; $4b58: $7f
    add b                                         ; $4b59: $80
    add b                                         ; $4b5a: $80
    ld [bc], a                                    ; $4b5b: $02
    ld e, l                                       ; $4b5c: $5d
    and d                                         ; $4b5d: $a2
    cp [hl]                                       ; $4b5e: $be
    ld d, c                                       ; $4b5f: $51
    ld a, a                                       ; $4b60: $7f
    xor b                                         ; $4b61: $a8
    adc h                                         ; $4b62: $8c
    nop                                           ; $4b63: $00
    rst $38                                       ; $4b64: $ff
    sbc $e9                                       ; $4b65: $de $e9
    db $fc                                        ; $4b67: $fc
    jp hl                                         ; $4b68: $e9


    ld e, [hl]                                    ; $4b69: $5e
    jp hl                                         ; $4b6a: $e9


    ld l, b                                       ; $4b6b: $68
    nop                                           ; $4b6c: $00
    db $fd                                        ; $4b6d: $fd
    rst $10                                       ; $4b6e: $d7
    ld a, a                                       ; $4b6f: $7f
    cp [hl]                                       ; $4b70: $be
    ld a, l                                       ; $4b71: $7d
    xor $1f                                       ; $4b72: $ee $1f
    ld [hl], c                                    ; $4b74: $71
    nop                                           ; $4b75: $00
    rst $38                                       ; $4b76: $ff
    dec sp                                        ; $4b77: $3b
    rla                                           ; $4b78: $17
    ccf                                           ; $4b79: $3f
    rla                                           ; $4b7a: $17
    ld a, d                                       ; $4b7b: $7a
    rla                                           ; $4b7c: $17
    ld d, $01                                     ; $4b7d: $16 $01
    ccf                                           ; $4b7f: $3f
    db $eb                                        ; $4b80: $eb
    cp $3d                                        ; $4b81: $fe $3d
    ld a, $b7                                     ; $4b83: $3e $b7
    ld hl, sp+$10                                 ; $4b85: $f8 $10
    jr c, jr_09f_4b89                             ; $4b87: $38 $00

jr_09f_4b89:
    ld [$3cff], a                                 ; $4b89: $ea $ff $3c
    ccf                                           ; $4b8c: $3f
    or b                                          ; $4b8d: $b0
    rst $38                                       ; $4b8e: $ff
    cp $00                                        ; $4b8f: $fe $00
    nop                                           ; $4b91: $00

Call_09f_4b92:
    rst $10                                       ; $4b92: $d7
    nop                                           ; $4b93: $00
    db $eb                                        ; $4b94: $eb
    ld b, b                                       ; $4b95: $40
    push af                                       ; $4b96: $f5

jr_09f_4b97:
    jr nz, jr_09f_4b97                            ; $4b97: $20 $fe

    ld bc, $f500                                  ; $4b99: $01 $00 $f5
    nop                                           ; $4b9c: $00
    cp a                                          ; $4b9d: $bf
    ld d, l                                       ; $4b9e: $55
    rst $38                                       ; $4b9f: $ff
    ld [$41be], sp                                ; $4ba0: $08 $be $41
    db $10                                        ; $4ba3: $10
    ld a, l                                       ; $4ba4: $7d
    ld [bc], a                                    ; $4ba5: $02
    rst $38                                       ; $4ba6: $ff
    ldh [rDIV], a                                 ; $4ba7: $e0 $04
    xor $11                                       ; $4ba9: $ee $11
    db $dd                                        ; $4bab: $dd
    add d                                         ; $4bac: $82
    add b                                         ; $4bad: $80
    ret nc                                        ; $4bae: $d0

    inc bc                                        ; $4baf: $03
    ld a, [bc]                                    ; $4bb0: $0a
    cp $51                                        ; $4bb1: $fe $51

jr_09f_4bb3:
    push de                                       ; $4bb3: $d5
    ld a, [hl+]                                   ; $4bb4: $2a
    db $eb                                        ; $4bb5: $eb
    ld d, h                                       ; $4bb6: $54
    nop                                           ; $4bb7: $00
    ld a, a                                       ; $4bb8: $7f
    xor b                                         ; $4bb9: $a8
    rst $38                                       ; $4bba: $ff
    dec d                                         ; $4bbb: $15
    ld [hl], a                                    ; $4bbc: $77
    adc b                                         ; $4bbd: $88
    cp d                                          ; $4bbe: $ba
    ld d, l                                       ; $4bbf: $55
    ld bc, $2add                                  ; $4bc0: $01 $dd $2a
    cp d                                          ; $4bc3: $ba
    ld d, b                                       ; $4bc4: $50
    ld d, l                                       ; $4bc5: $55
    add d                                         ; $4bc6: $82
    xor $70                                       ; $4bc7: $ee $70
    nop                                           ; $4bc9: $00
    nop                                           ; $4bca: $00
    cp [hl]                                       ; $4bcb: $be
    ld b, b                                       ; $4bcc: $40
    ld d, l                                       ; $4bcd: $55
    and b                                         ; $4bce: $a0
    ld a, [$fd50]                                 ; $4bcf: $fa $50 $fd
    xor b                                         ; $4bd2: $a8
    ld bc, $40bf                                  ; $4bd3: $01 $bf $40
    rst $30                                       ; $4bd6: $f7
    ld [$40fa], sp                                ; $4bd7: $08 $fa $40
    rst $38                                       ; $4bda: $ff
    db $10                                        ; $4bdb: $10
    dec c                                         ; $4bdc: $0d
    nop                                           ; $4bdd: $00
    nop                                           ; $4bde: $00
    cp a                                          ; $4bdf: $bf
    ld d, b                                       ; $4be0: $50
    rst $38                                       ; $4be1: $ff
    ld [$0ff0], sp                                ; $4be2: $08 $f0 $0f
    add sp, $18                                   ; $4be5: $e8 $18
    jr nc, jr_09f_4bb3                            ; $4be7: $30 $ca

    ld h, a                                       ; $4be9: $67
    ld [hl], b                                    ; $4bea: $70
    add hl, bc                                    ; $4beb: $09
    ld d, b                                       ; $4bec: $50
    add hl, bc                                    ; $4bed: $09
    xor $f7                                       ; $4bee: $ee $f7
    or b                                          ; $4bf0: $b0
    add b                                         ; $4bf1: $80
    ld b, b                                       ; $4bf2: $40
    ld bc, $f9ae                                  ; $4bf3: $01 $ae $f9
    adc $f9                                       ; $4bf6: $ce $f9
    ld a, d                                       ; $4bf8: $7a
    db $fd                                        ; $4bf9: $fd
    rst $30                                       ; $4bfa: $f7
    nop                                           ; $4bfb: $00
    ld a, a                                       ; $4bfc: $7f
    cp $3d                                        ; $4bfd: $fe $3d
    xor $1f                                       ; $4bff: $ee $1f
    cp l                                          ; $4c01: $bd
    ld c, a                                       ; $4c02: $4f
    call c, Call_000_2700                         ; $4c03: $dc $00 $27
    ld a, $47                                     ; $4c06: $3e $47
    and $0b                                       ; $4c08: $e6 $0b
    cp a                                          ; $4c0a: $bf
    ld b, e                                       ; $4c0b: $43
    db $eb                                        ; $4c0c: $eb
    nop                                           ; $4c0d: $00
    dec d                                         ; $4c0e: $15
    ld a, a                                       ; $4c0f: $7f
    add c                                         ; $4c10: $81
    rst $10                                       ; $4c11: $d7
    and b                                         ; $4c12: $a0
    ld l, l                                       ; $4c13: $6d
    ret c                                         ; $4c14: $d8

    inc b                                         ; $4c15: $04
    nop                                           ; $4c16: $00
    db $fc                                        ; $4c17: $fc
    sub [hl]                                      ; $4c18: $96
    ld a, h                                       ; $4c19: $7c
    ld h, d                                       ; $4c1a: $62
    sbc $0b                                       ; $4c1b: $de $0b
    or $55                                        ; $4c1d: $f6 $55
    nop                                           ; $4c1f: $00
    rst $38                                       ; $4c20: $ff
    sub c                                         ; $4c21: $91
    rst $28                                       ; $4c22: $ef
    and [hl]                                      ; $4c23: $a6
    db $fd                                        ; $4c24: $fd
    db $dd                                        ; $4c25: $dd
    rrca                                          ; $4c26: $0f
    ld l, h                                       ; $4c27: $6c
    nop                                           ; $4c28: $00
    rla                                           ; $4c29: $17
    or [hl]                                       ; $4c2a: $b6
    ld c, a                                       ; $4c2b: $4f
    sub [hl]                                      ; $4c2c: $96
    ld c, e                                       ; $4c2d: $4b
    ld l, a                                       ; $4c2e: $6f
    inc de                                        ; $4c2f: $13
    db $db                                        ; $4c30: $db
    nop                                           ; $4c31: $00
    dec b                                         ; $4c32: $05
    ld h, a                                       ; $4c33: $67
    sub c                                         ; $4c34: $91
    db $db                                        ; $4c35: $db
    add h                                         ; $4c36: $84
    rrca                                          ; $4c37: $0f
    ldh a, [$37]                                  ; $4c38: $f0 $37
    inc b                                         ; $4c3a: $04
    inc c                                         ; $4c3b: $0c
    or e                                          ; $4c3c: $b3
    and $f7                                       ; $4c3d: $e6 $f7
    ld a, [$19b0]                                 ; $4c3f: $fa $b0 $19
    ld [hl], a                                    ; $4c42: $77
    rst $28                                       ; $4c43: $ef
    ld b, b                                       ; $4c44: $40
    dec c                                         ; $4c45: $0d
    add b                                         ; $4c46: $80
    ld bc, $1f75                                  ; $4c47: $01 $75 $1f
    ld [hl], e                                    ; $4c4a: $73
    rra                                           ; $4c4b: $1f
    ld e, $3f                                     ; $4c4c: $1e $3f
    nop                                           ; $4c4e: $00
    rst $28                                       ; $4c4f: $ef
    cp $3f                                        ; $4c50: $fe $3f
    inc a                                         ; $4c52: $3c
    or a                                          ; $4c53: $b7
    ld hl, sp+$1e                                 ; $4c54: $f8 $1e
    db $fd                                        ; $4c56: $fd
    nop                                           ; $4c57: $00
    xor l                                         ; $4c58: $ad
    rst $38                                       ; $4c59: $ff
    rlca                                          ; $4c5a: $07
    cp $aa                                        ; $4c5b: $fe $aa
    rst $38                                       ; $4c5d: $ff
    inc de                                        ; $4c5e: $13
    rst $38                                       ; $4c5f: $ff
    nop                                           ; $4c60: $00
    xor a                                         ; $4c61: $af
    db $fd                                        ; $4c62: $fd
    ld a, e                                       ; $4c63: $7b
    push af                                       ; $4c64: $f5
    push de                                       ; $4c65: $d5
    xor d                                         ; $4c66: $aa
    rlca                                          ; $4c67: $07
    rlca                                          ; $4c68: $07
    ld [bc], a                                    ; $4c69: $02
    dec de                                        ; $4c6a: $1b
    jr jr_09f_4c97                                ; $4c6b: $18 $2a

    dec h                                         ; $4c6d: $25
    ld e, a                                       ; $4c6e: $5f
    ld b, b                                       ; $4c6f: $40
    ld h, c                                       ; $4c70: $61
    rlca                                          ; $4c71: $07
    ret nz                                        ; $4c72: $c0

    nop                                           ; $4c73: $00
    rst $18                                       ; $4c74: $df
    ldh [$af], a                                  ; $4c75: $e0 $af
    ldh a, [$e0]                                  ; $4c77: $f0 $e0
    ldh [$98], a                                  ; $4c79: $e0 $98
    jr jr_09f_4c7d                                ; $4c7b: $18 $00

jr_09f_4c7d:
    inc d                                         ; $4c7d: $14
    db $e4                                        ; $4c7e: $e4
    ld [c], a                                     ; $4c7f: $e2
    ld a, [de]                                    ; $4c80: $1a
    ld sp, hl                                     ; $4c81: $f9
    dec b                                         ; $4c82: $05
    db $fd                                        ; $4c83: $fd
    inc bc                                        ; $4c84: $03
    nop                                           ; $4c85: $00
    ei                                            ; $4c86: $fb
    inc bc                                        ; $4c87: $03
    rst $30                                       ; $4c88: $f7
    rlca                                          ; $4c89: $07
    sbc c                                         ; $4c8a: $99
    cp $87                                        ; $4c8b: $fe $87
    rst $38                                       ; $4c8d: $ff
    nop                                           ; $4c8e: $00
    add b                                         ; $4c8f: $80
    rst $18                                       ; $4c90: $df

jr_09f_4c91:
    xor b                                         ; $4c91: $a8
    rst $00                                       ; $4c92: $c7
    or l                                          ; $4c93: $b5
    ret nz                                        ; $4c94: $c0

    sbc d                                         ; $4c95: $9a
    ret nz                                        ; $4c96: $c0

jr_09f_4c97:
    nop                                           ; $4c97: $00
    xor a                                         ; $4c98: $af
    ret nz                                        ; $4c99: $c0

    or a                                          ; $4c9a: $b7
    ldh [$9b], a                                  ; $4c9b: $e0 $9b
    rra                                           ; $4c9d: $1f
    rst $20                                       ; $4c9e: $e7
    rst $38                                       ; $4c9f: $ff

jr_09f_4ca0:
    nop                                           ; $4ca0: $00
    dec bc                                        ; $4ca1: $0b
    rst $38                                       ; $4ca2: $ff
    rlca                                          ; $4ca3: $07
    rst $38                                       ; $4ca4: $ff
    adc e                                         ; $4ca5: $8b
    ccf                                           ; $4ca6: $3f
    rst $00                                       ; $4ca7: $c7
    ccf                                           ; $4ca8: $3f
    nop                                           ; $4ca9: $00
    adc e                                         ; $4caa: $8b
    ccf                                           ; $4cab: $3f
    ld b, a                                       ; $4cac: $47
    ccf                                           ; $4cad: $3f
    cp d                                          ; $4cae: $ba
    ld b, l                                       ; $4caf: $45
    ld a, a                                       ; $4cb0: $7f
    add b                                         ; $4cb1: $80
    add hl, bc                                    ; $4cb2: $09
    rst $38                                       ; $4cb3: $ff
    inc b                                         ; $4cb4: $04
    ld a, a                                       ; $4cb5: $7f
    ld [bc], a                                    ; $4cb6: $02
    ld c, b                                       ; $4cb7: $48
    ld a, [bc]                                    ; $4cb8: $0a
    db $eb                                        ; $4cb9: $eb
    ld de, $0570                                  ; $4cba: $11 $70 $05
    nop                                           ; $4cbd: $00
    inc b                                         ; $4cbe: $04
    ld e, a                                       ; $4cbf: $5f
    and b                                         ; $4cc0: $a0
    xor a                                         ; $4cc1: $af
    ld d, h                                       ; $4cc2: $54
    ld e, a                                       ; $4cc3: $5f
    xor d                                         ; $4cc4: $aa
    ld [$70a0], a                                 ; $4cc5: $ea $a0 $70
    inc b                                         ; $4cc8: $04
    db $eb                                        ; $4cc9: $eb
    ld a, b                                       ; $4cca: $78
    ld bc, $10ee                                  ; $4ccb: $01 $ee $10
    db $dd                                        ; $4cce: $dd
    ld [bc], a                                    ; $4ccf: $02
    ld [$4400], a                                 ; $4cd0: $ea $00 $44
    push af                                       ; $4cd3: $f5
    jr nz, jr_09f_4c91                            ; $4cd4: $20 $bb

    ld b, b                                       ; $4cd6: $40

jr_09f_4cd7:
    push de                                       ; $4cd7: $d5
    and b                                         ; $4cd8: $a0
    cp e                                          ; $4cd9: $bb
    ld [de], a                                    ; $4cda: $12
    ld d, b                                       ; $4cdb: $50
    db $fd                                        ; $4cdc: $fd
    ld a, [hl+]                                   ; $4cdd: $2a
    nop                                           ; $4cde: $00
    inc b                                         ; $4cdf: $04
    ld a, [bc]                                    ; $4ce0: $0a
    ld a, [$05d0]                                 ; $4ce1: $fa $d0 $05
    xor d                                         ; $4ce4: $aa
    nop                                           ; $4ce5: $00
    dec d                                         ; $4ce6: $15
    ld e, a                                       ; $4ce7: $5f
    add b                                         ; $4ce8: $80
    cp d                                          ; $4ce9: $ba
    ld d, h                                       ; $4cea: $54
    db $dd                                        ; $4ceb: $dd
    ld [$0a81], sp                                ; $4cec: $08 $81 $0a
    rst $38                                       ; $4cef: $ff
    ret nz                                        ; $4cf0: $c0

    cp a                                          ; $4cf1: $bf
    add b                                         ; $4cf2: $80
    inc b                                         ; $4cf3: $04
    jr nz, jr_09f_4ca0                            ; $4cf4: $20 $aa

    ld [bc], a                                    ; $4cf6: $02
    inc de                                        ; $4cf7: $13
    nop                                           ; $4cf8: $00
    jr @+$01                                      ; $4cf9: $18 $ff

jr_09f_4cfb:
    xor d                                         ; $4cfb: $aa
    ld d, l                                       ; $4cfc: $55
    or l                                          ; $4cfd: $b5
    ld a, [de]                                    ; $4cfe: $1a
    db $10                                        ; $4cff: $10
    jr jr_09f_4d03                                ; $4d00: $18 $01

    rst $38                                       ; $4d02: $ff

jr_09f_4d03:
    add e                                         ; $4d03: $83
    jr nc, jr_09f_4d85                            ; $4d04: $30 $7f

    ld bc, $0492                                  ; $4d06: $01 $92 $04
    inc b                                         ; $4d09: $04
    ld [$bfc1], sp                                ; $4d0a: $08 $c1 $bf
    rst $38                                       ; $4d0d: $ff
    rst $38                                       ; $4d0e: $ff
    ld h, b                                       ; $4d0f: $60
    add b                                         ; $4d10: $80
    ld [bc], a                                    ; $4d11: $02
    nop                                           ; $4d12: $00
    inc [hl]                                      ; $4d13: $34
    jr z, jr_09f_4cd7                             ; $4d14: $28 $c1

    cp a                                          ; $4d16: $bf
    ld bc, $2200                                  ; $4d17: $01 $00 $22
    add b                                         ; $4d1a: $80
    inc c                                         ; $4d1b: $0c
    inc b                                         ; $4d1c: $04
    add hl, bc                                    ; $4d1d: $09
    nop                                           ; $4d1e: $00
    add d                                         ; $4d1f: $82
    nop                                           ; $4d20: $00
    xor c                                         ; $4d21: $a9
    nop                                           ; $4d22: $00
    jp nc, $2085                                  ; $4d23: $d2 $85 $20

    inc bc                                        ; $4d26: $03
    add e                                         ; $4d27: $83
    rst $38                                       ; $4d28: $ff
    ld b, c                                       ; $4d29: $41
    cp a                                          ; $4d2a: $bf
    jr nc, @+$2a                                  ; $4d2b: $30 $28

    xor e                                         ; $4d2d: $ab
    ld d, d                                       ; $4d2e: $52
    inc bc                                        ; $4d2f: $03
    nop                                           ; $4d30: $00
    dec d                                         ; $4d31: $15
    add b                                         ; $4d32: $80
    xor a                                         ; $4d33: $af
    add b                                         ; $4d34: $80
    ld d, a                                       ; $4d35: $57
    sub [hl]                                      ; $4d36: $96
    cp h                                          ; $4d37: $bc
    xor h                                         ; $4d38: $ac
    inc bc                                        ; $4d39: $03
    ld a, a                                       ; $4d3a: $7f
    add b                                         ; $4d3b: $80
    xor l                                         ; $4d3c: $ad
    xor h                                         ; $4d3d: $ac
    ld e, d                                       ; $4d3e: $5a
    sbc d                                         ; $4d3f: $9a
    dec a                                         ; $4d40: $3d
    nop                                           ; $4d41: $00
    or [hl]                                       ; $4d42: $b6
    dec b                                         ; $4d43: $05
    nop                                           ; $4d44: $00
    ld a, [hl]                                    ; $4d45: $7e
    ld [bc], a                                    ; $4d46: $02
    db $fd                                        ; $4d47: $fd
    call nz, Call_000_08fa                        ; $4d48: $c4 $fa $08
    db $fc                                        ; $4d4b: $fc
    ld [$f600], sp                                ; $4d4c: $08 $00 $f6
    db $10                                        ; $4d4f: $10
    db $ed                                        ; $4d50: $ed
    jr nz, jr_09f_4cfb                            ; $4d51: $20 $a8

    ld bc, $81f5                                  ; $4d53: $01 $f5 $81
    nop                                           ; $4d56: $00
    ld a, d                                       ; $4d57: $7a
    ld b, c                                       ; $4d58: $41
    ld a, l                                       ; $4d59: $7d
    ld b, c                                       ; $4d5a: $41
    ld a, [hl]                                    ; $4d5b: $7e
    ld b, c                                       ; $4d5c: $41
    db $fd                                        ; $4d5d: $fd
    ld b, c                                       ; $4d5e: $41
    ld [$81fe], sp                                ; $4d5f: $08 $fe $81
    rst $38                                       ; $4d62: $ff
    add c                                         ; $4d63: $81
    ld l, d                                       ; $4d64: $6a
    nop                                           ; $4d65: $00
    db $fd                                        ; $4d66: $fd
    ld d, l                                       ; $4d67: $55
    xor e                                         ; $4d68: $ab
    nop                                           ; $4d69: $00
    ld [$bd15], a                                 ; $4d6a: $ea $15 $bd
    ld b, e                                       ; $4d6d: $43
    cp $01                                        ; $4d6e: $fe $01
    xor $01                                       ; $4d70: $ee $01
    jr nz, @-$28                                  ; $4d72: $20 $d6

    ld bc, $00de                                  ; $4d74: $01 $de $00
    add b                                         ; $4d77: $80
    ld a, a                                       ; $4d78: $7f
    add c                                         ; $4d79: $81
    cp $8e                                        ; $4d7a: $fe $8e
    nop                                           ; $4d7c: $00
    ld l, [hl]                                    ; $4d7d: $6e
    and b                                         ; $4d7e: $a0
    rst $18                                       ; $4d7f: $df
    rst $08                                       ; $4d80: $cf
    ld [hl], e                                    ; $4d81: $73
    or e                                          ; $4d82: $b3
    cp $9e                                        ; $4d83: $fe $9e

jr_09f_4d85:
    nop                                           ; $4d85: $00
    push de                                       ; $4d86: $d5
    ld b, b                                       ; $4d87: $40
    cp [hl]                                       ; $4d88: $be
    add b                                         ; $4d89: $80
    ld a, [$fbf8]                                 ; $4d8a: $fa $f8 $fb
    inc bc                                        ; $4d8d: $03
    nop                                           ; $4d8e: $00
    ld sp, hl                                     ; $4d8f: $f9
    ld hl, sp+$37                                 ; $4d90: $f8 $37
    rlca                                          ; $4d92: $07
    cp h                                          ; $4d93: $bc
    adc h                                         ; $4d94: $8c
    ld h, $00                                     ; $4d95: $26 $00
    ret nz                                        ; $4d97: $c0

    inc [hl]                                      ; $4d98: $34
    ld [$0038], sp                                ; $4d99: $08 $38 $00
    pop bc                                        ; $4d9c: $c1
    ld a, [hl]                                    ; $4d9d: $7e
    ld b, c                                       ; $4d9e: $41
    rst $18                                       ; $4d9f: $df
    ld de, $00ee                                  ; $4da0: $11 $ee $00
    ret                                           ; $4da3: $c9


    rst $30                                       ; $4da4: $f7
    push af                                       ; $4da5: $f5
    xor d                                         ; $4da6: $aa
    ld bc, $0142                                  ; $4da7: $01 $42 $01
    ld bc, $0030                                  ; $4daa: $01 $30 $00
    jr nz, jr_09f_4db3                            ; $4dad: $20 $04

    nop                                           ; $4daf: $00
    ld [bc], a                                    ; $4db0: $02
    jr @+$81                                      ; $4db1: $18 $7f

jr_09f_4db3:
    add e                                         ; $4db3: $83
    rst $38                                       ; $4db4: $ff
    add d                                         ; $4db5: $82
    ld [$827f], sp                                ; $4db6: $08 $7f $82
    cp $82                                        ; $4db9: $fe $82
    ld b, h                                       ; $4dbb: $44
    nop                                           ; $4dbc: $00
    add [hl]                                      ; $4dbd: $86
    ld a, [hl]                                    ; $4dbe: $7e
    cp $00                                        ; $4dbf: $fe $00
    db $db                                        ; $4dc1: $db
    rr d                                          ; $4dc2: $cb $1a
    jr @-$40                                      ; $4dc4: $18 $be

    nop                                           ; $4dc6: $00
    ld a, a                                       ; $4dc7: $7f
    ld bc, $b500                                  ; $4dc8: $01 $00 $b5
    or c                                          ; $4dcb: $b1
    ret z                                         ; $4dcc: $c8

    ret z                                         ; $4dcd: $c8

    cp $06                                        ; $4dce: $fe $06
    jp nc, Jump_000_00d2                          ; $4dd0: $d2 $d2 $00

    ret c                                         ; $4dd3: $d8

    ret c                                         ; $4dd4: $d8

    rst $28                                       ; $4dd5: $ef
    adc l                                         ; $4dd6: $8d
    ccf                                           ; $4dd7: $3f
    dec sp                                        ; $4dd8: $3b
    add $c7                                       ; $4dd9: $c6 $c7
    nop                                           ; $4ddb: $00
    cpl                                           ; $4ddc: $2f
    dec c                                         ; $4ddd: $0d
    cp $f9                                        ; $4dde: $fe $f9
    ccf                                           ; $4de0: $3f
    ld sp, $71fe                                  ; $4de1: $31 $fe $71
    nop                                           ; $4de4: $00
    rst $28                                       ; $4de5: $ef
    db $ed                                        ; $4de6: $ed
    ld b, e                                       ; $4de7: $43
    nop                                           ; $4de8: $00
    ld [$4301], sp                                ; $4de9: $08 $01 $43
    nop                                           ; $4dec: $00
    inc b                                         ; $4ded: $04
    inc d                                         ; $4dee: $14
    ld bc, $01aa                                  ; $4def: $01 $aa $01
    halt                                          ; $4df2: $76
    add b                                         ; $4df3: $80
    nop                                           ; $4df4: $00
    cp $01                                        ; $4df5: $fe $01
    nop                                           ; $4df7: $00
    xor e                                         ; $4df8: $ab
    ld a, h                                       ; $4df9: $7c
    ld b, a                                       ; $4dfa: $47
    cp h                                          ; $4dfb: $bc
    dec d                                         ; $4dfc: $15
    cp $43                                        ; $4dfd: $fe $43
    cp $00                                        ; $4dff: $fe $00
    ld [hl-], a                                   ; $4e01: $32
    rst $28                                       ; $4e02: $ef
    ld b, l                                       ; $4e03: $45
    cp e                                          ; $4e04: $bb
    sub l                                         ; $4e05: $95
    rst $38                                       ; $4e06: $ff
    and d                                         ; $4e07: $a2
    db $dd                                        ; $4e08: $dd
    nop                                           ; $4e09: $00
    ld e, h                                       ; $4e0a: $5c
    add hl, bc                                    ; $4e0b: $09
    db $fc                                        ; $4e0c: $fc
    inc b                                         ; $4e0d: $04
    ld c, [hl]                                    ; $4e0e: $4e
    and h                                         ; $4e0f: $a4
    or [hl]                                       ; $4e10: $b6
    ld [bc], a                                    ; $4e11: $02
    nop                                           ; $4e12: $00
    rst $28                                       ; $4e13: $ef
    ld [de], a                                    ; $4e14: $12
    rst $10                                       ; $4e15: $d7
    add hl, hl                                    ; $4e16: $29
    ld l, l                                       ; $4e17: $6d
    add e                                         ; $4e18: $83
    or $8e                                        ; $4e19: $f6 $8e
    nop                                           ; $4e1b: $00
    call nc, $c5fb                                ; $4e1c: $d4 $fb $c5
    ld a, a                                       ; $4e1f: $7f
    jp hl                                         ; $4e20: $e9


    halt                                          ; $4e21: $76
    ld l, d                                       ; $4e22: $6a
    cp l                                          ; $4e23: $bd
    nop                                           ; $4e24: $00
    push af                                       ; $4e25: $f5
    ccf                                           ; $4e26: $3f
    ld [hl], e                                    ; $4e27: $73
    sbc l                                         ; $4e28: $9d
    cp d                                          ; $4e29: $ba
    ld e, a                                       ; $4e2a: $5f
    ret c                                         ; $4e2b: $d8

    cpl                                           ; $4e2c: $2f
    nop                                           ; $4e2d: $00
    cp b                                          ; $4e2e: $b8
    ld hl, sp+$51                                 ; $4e2f: $f8 $51
    jp nz, $c164                                  ; $4e31: $c2 $64 $c1

    ld a, [hl-]                                   ; $4e34: $3a
    ldh [rP1], a                                  ; $4e35: $e0 $00
    or h                                          ; $4e37: $b4
    ld h, d                                       ; $4e38: $62
    db $10                                        ; $4e39: $10
    ldh a, [$da]                                  ; $4e3a: $f0 $da
    ld [hl], b                                    ; $4e3c: $70
    ld hl, sp-$18                                 ; $4e3d: $f8 $e8
    adc b                                         ; $4e3f: $88
    ld a, [$2003]                                 ; $4e40: $fa $03 $20
    cp [hl]                                       ; $4e43: $be
    ld b, h                                       ; $4e44: $44
    ld h, b                                       ; $4e45: $60
    rrca                                          ; $4e46: $0f
    rst $30                                       ; $4e47: $f7
    ld [$00ff], sp                                ; $4e48: $08 $ff $00
    ld bc, $82fd                                  ; $4e4b: $01 $fd $82
    xor d                                         ; $4e4e: $aa
    dec b                                         ; $4e4f: $05
    ld d, a                                       ; $4e50: $57
    nop                                           ; $4e51: $00
    xor [hl]                                      ; $4e52: $ae
    inc b                                         ; $4e53: $04
    dec b                                         ; $4e54: $05
    ld d, a                                       ; $4e55: $57
    ld [bc], a                                    ; $4e56: $02
    xor d                                         ; $4e57: $aa
    ld bc, $0680                                  ; $4e58: $01 $80 $06
    ld bc, $10d5                                  ; $4e5b: $01 $d5 $10
    add b                                         ; $4e5e: $80
    xor $00                                       ; $4e5f: $ee $00
    ld a, [hl-]                                   ; $4e61: $3a
    inc b                                         ; $4e62: $04
    ld b, b                                       ; $4e63: $40
    ld [hl], a                                    ; $4e64: $77
    and b                                         ; $4e65: $a0
    cp [hl]                                       ; $4e66: $be
    adc b                                         ; $4e67: $88
    ld h, b                                       ; $4e68: $60
    rlca                                          ; $4e69: $07
    cp a                                          ; $4e6a: $bf
    dec d                                         ; $4e6b: $15
    db $fd                                        ; $4e6c: $fd
    add b                                         ; $4e6d: $80
    ld c, $00                                     ; $4e6e: $0e $00

jr_09f_4e70:
    ei                                            ; $4e70: $fb
    ld b, h                                       ; $4e71: $44
    ld hl, $227d                                  ; $4e72: $21 $7d $22
    jr nz, jr_09f_4e7e                            ; $4e75: $20 $07

    add b                                         ; $4e77: $80
    cp a                                          ; $4e78: $bf
    ld d, b                                       ; $4e79: $50
    ld a, l                                       ; $4e7a: $7d
    sub b                                         ; $4e7b: $90
    ld b, $00                                     ; $4e7c: $06 $00

jr_09f_4e7e:
    db $fd                                        ; $4e7e: $fd
    nop                                           ; $4e7f: $00
    ld a, [$f741]                                 ; $4e80: $fa $41 $f7
    jr z, jr_09f_4e70                             ; $4e83: $28 $eb

    db $10                                        ; $4e85: $10
    add e                                         ; $4e86: $83
    ld e, d                                       ; $4e87: $5a
    inc b                                         ; $4e88: $04
    ld d, l                                       ; $4e89: $55
    ld e, a                                       ; $4e8a: $5f
    xor b                                         ; $4e8b: $a8
    sbc d                                         ; $4e8c: $9a
    ld hl, sp+$10                                 ; $4e8d: $f8 $10
    ld [bc], a                                    ; $4e8f: $02
    add h                                         ; $4e90: $84
    ld bc, $d383                                  ; $4e91: $01 $83 $d3
    rlca                                          ; $4e94: $07
    ccf                                           ; $4e95: $3f
    jr jr_09f_4eb7                                ; $4e96: $18 $1f

    rlca                                          ; $4e98: $07
    rlca                                          ; $4e99: $07
    ld [$1002], sp                                ; $4e9a: $08 $02 $10

jr_09f_4e9d:
    ld [de], a                                    ; $4e9d: $12
    nop                                           ; $4e9e: $00
    ld a, [bc]                                    ; $4e9f: $0a
    cp $04                                        ; $4ea0: $fe $04
    db $fc                                        ; $4ea2: $fc
    jr jr_09f_4e9d                                ; $4ea3: $18 $f8

    ldh [$e0], a                                  ; $4ea5: $e0 $e0
    inc c                                         ; $4ea7: $0c
    add b                                         ; $4ea8: $80
    rst $38                                       ; $4ea9: $ff
    xor b                                         ; $4eaa: $a8
    ldh a, [rNR41]                                ; $4eab: $f0 $20
    inc e                                         ; $4ead: $1c
    ld b, b                                       ; $4eae: $40
    inc e                                         ; $4eaf: $1c
    ld bc, $80ff                                  ; $4eb0: $01 $ff $80
    ld b, b                                       ; $4eb3: $40
    ld e, h                                       ; $4eb4: $5c
    ld d, b                                       ; $4eb5: $50
    rrca                                          ; $4eb6: $0f

jr_09f_4eb7:
    call z, $a030                                 ; $4eb7: $cc $30 $a0
    ld b, b                                       ; $4eba: $40
    ld d, a                                       ; $4ebb: $57
    nop                                           ; $4ebc: $00
    adc a                                         ; $4ebd: $8f
    ld e, a                                       ; $4ebe: $5f
    cp a                                          ; $4ebf: $bf
    ld l, h                                       ; $4ec0: $6c
    ldh a, [$60]                                  ; $4ec1: $f0 $60
    ret nz                                        ; $4ec3: $c0

    ld b, b                                       ; $4ec4: $40
    nop                                           ; $4ec5: $00
    add b                                         ; $4ec6: $80
    nop                                           ; $4ec7: $00
    rst $38                                       ; $4ec8: $ff
    jr nc, jr_09f_4eda                            ; $4ec9: $30 $0f

    inc c                                         ; $4ecb: $0c
    inc bc                                        ; $4ecc: $03
    db $ed                                        ; $4ecd: $ed
    nop                                           ; $4ece: $00
    di                                            ; $4ecf: $f3
    db $fd                                        ; $4ed0: $fd
    rst $38                                       ; $4ed1: $ff
    scf                                           ; $4ed2: $37
    rrca                                          ; $4ed3: $0f
    rrca                                          ; $4ed4: $0f
    inc bc                                        ; $4ed5: $03
    dec c                                         ; $4ed6: $0d
    ld bc, $e003                                  ; $4ed7: $01 $03 $e0

jr_09f_4eda:
    ret nz                                        ; $4eda: $c0

    and b                                         ; $4edb: $a0
    and b                                         ; $4edc: $a0
    rst $30                                       ; $4edd: $f7
    rst $08                                       ; $4ede: $cf
    ld e, $18                                     ; $4edf: $1e $18
    inc b                                         ; $4ee1: $04
    ld e, a                                       ; $4ee2: $5f
    adc a                                         ; $4ee3: $8f
    ld [hl], e                                    ; $4ee4: $73
    cp h                                          ; $4ee5: $bc
    dec c                                         ; $4ee6: $0d
    inc d                                         ; $4ee7: $14
    nop                                           ; $4ee8: $00
    db $ed                                        ; $4ee9: $ed
    di                                            ; $4eea: $f3
    ld b, b                                       ; $4eeb: $40
    ld sp, hl                                     ; $4eec: $f9
    ld e, $10                                     ; $4eed: $1e $10
    db $fd                                        ; $4eef: $fd
    di                                            ; $4ef0: $f3
    call Call_09f_5a3f                            ; $4ef1: $cd $3f $5a
    ldh [$32], a                                  ; $4ef4: $e0 $32
    dec [hl]                                      ; $4ef6: $35
    ret nz                                        ; $4ef7: $c0

    inc b                                         ; $4ef8: $04
    ld a, [bc]                                    ; $4ef9: $0a
    cp [hl]                                       ; $4efa: $be
    ld b, $80                                     ; $4efb: $06 $80
    push de                                       ; $4efd: $d5
    ld sp, $ab02                                  ; $4efe: $31 $02 $ab
    db $10                                        ; $4f01: $10
    rlca                                          ; $4f02: $07
    ld d, l                                       ; $4f03: $55
    inc bc                                        ; $4f04: $03
    inc h                                         ; $4f05: $24
    ld a, [bc]                                    ; $4f06: $0a
    ld d, l                                       ; $4f07: $55
    ld bc, $01ab                                  ; $4f08: $01 $ab $01
    ld b, b                                       ; $4f0b: $40
    ld d, l                                       ; $4f0c: $55
    pop af                                        ; $4f0d: $f1
    ld bc, $c9b6                                  ; $4f0e: $01 $b6 $c9
    db $fd                                        ; $4f11: $fd
    ld b, d                                       ; $4f12: $42
    jp nc, $006d                                  ; $4f13: $d2 $6d $00

    ld a, d                                       ; $4f16: $7a
    dec h                                         ; $4f17: $25
    jp hl                                         ; $4f18: $e9


    ld [hl], $be                                  ; $4f19: $36 $be
    ld de, $1ff7                                  ; $4f1b: $11 $f7 $1f
    nop                                           ; $4f1e: $00
    ld e, b                                       ; $4f1f: $58
    cpl                                           ; $4f20: $2f
    call nc, $c1ff                                ; $4f21: $d4 $ff $c1
    ld a, a                                       ; $4f24: $7f
    db $f4                                        ; $4f25: $f4
    ld a, a                                       ; $4f26: $7f
    nop                                           ; $4f27: $00
    ld l, c                                       ; $4f28: $69
    cp a                                          ; $4f29: $bf
    ld a, [c]                                     ; $4f2a: $f2
    ccf                                           ; $4f2b: $3f
    ld [hl], c                                    ; $4f2c: $71
    rra                                           ; $4f2d: $1f
    cp h                                          ; $4f2e: $bc
    ld e, a                                       ; $4f2f: $5f
    inc d                                         ; $4f30: $14
    ld a, d                                       ; $4f31: $7a
    adc a                                         ; $4f32: $8f
    cp $94                                        ; $4f33: $fe $94
    dec b                                         ; $4f35: $05
    xor [hl]                                      ; $4f36: $ae
    add b                                         ; $4f37: $80
    inc b                                         ; $4f38: $04
    cp a                                          ; $4f39: $bf
    ld b, b                                       ; $4f3a: $40
    ld [$00ff], sp                                ; $4f3b: $08 $ff $00
    ei                                            ; $4f3e: $fb
    dec b                                         ; $4f3f: $05
    jr nc, jr_09f_4f46                            ; $4f40: $30 $04

    dec b                                         ; $4f42: $05
    ld [hl], a                                    ; $4f43: $77
    nop                                           ; $4f44: $00
    nop                                           ; $4f45: $00

jr_09f_4f46:
    xor a                                         ; $4f46: $af
    inc d                                         ; $4f47: $14
    ld d, a                                       ; $4f48: $57
    ld a, [bc]                                    ; $4f49: $0a
    xor d                                         ; $4f4a: $aa
    ld de, $0055                                  ; $4f4b: $11 $55 $00
    nop                                           ; $4f4e: $00
    xor e                                         ; $4f4f: $ab
    ld bc, $82d5                                  ; $4f50: $01 $d5 $82
    xor d                                         ; $4f53: $aa
    pop bc                                        ; $4f54: $c1
    ld [hl], l                                    ; $4f55: $75
    jp z, Jump_09f_5700                           ; $4f56: $ca $00 $57

    ldh [$3d], a                                  ; $4f59: $e0 $3d
    db $e3                                        ; $4f5b: $e3
    xor [hl]                                      ; $4f5c: $ae
    rst $38                                       ; $4f5d: $ff
    ld d, c                                       ; $4f5e: $51
    cp $00                                        ; $4f5f: $fe $00
    sbc h                                         ; $4f61: $9c
    rst $38                                       ; $4f62: $ff
    ld c, c                                       ; $4f63: $49
    rst $38                                       ; $4f64: $ff
    call nc, $c280                                ; $4f65: $d4 $80 $c2
    ld b, h                                       ; $4f68: $44
    nop                                           ; $4f69: $00
    ld h, c                                       ; $4f6a: $61
    ret z                                         ; $4f6b: $c8

    and b                                         ; $4f6c: $a0
    ldh [$34], a                                  ; $4f6d: $e0 $34
    pop hl                                        ; $4f6f: $e1
    sub c                                         ; $4f70: $91
    ldh a, [rP1]                                  ; $4f71: $f0 $00
    ld e, a                                       ; $4f73: $5f
    or a                                          ; $4f74: $b7
    ld e, a                                       ; $4f75: $5f
    add sp, $3c                                   ; $4f76: $e8 $3c
    inc a                                         ; $4f78: $3c
    ld a, d                                       ; $4f79: $7a
    ld b, d                                       ; $4f7a: $42
    nop                                           ; $4f7b: $00
    cp l                                          ; $4f7c: $bd
    pop bc                                        ; $4f7d: $c1
    rst $18                                       ; $4f7e: $df
    db $e3                                        ; $4f7f: $e3
    cp l                                          ; $4f80: $bd
    rst $38                                       ; $4f81: $ff
    add e                                         ; $4f82: $83
    rst $38                                       ; $4f83: $ff
    inc b                                         ; $4f84: $04
    and c                                         ; $4f85: $a1
    rst $00                                       ; $4f86: $c7
    sbc e                                         ; $4f87: $9b
    rst $00                                       ; $4f88: $c7
    add b                                         ; $4f89: $80
    sub h                                         ; $4f8a: $94
    ld bc, $aad5                                  ; $4f8b: $01 $d5 $aa
    ld hl, $c5ba                                  ; $4f8e: $21 $ba $c5
    ld h, [hl]                                    ; $4f91: $66
    rlca                                          ; $4f92: $07
    add b                                         ; $4f93: $80
    ld e, a                                       ; $4f94: $5f
    and b                                         ; $4f95: $a0
    ld a, l                                       ; $4f96: $7d
    ret nc                                        ; $4f97: $d0

    nop                                           ; $4f98: $00
    add h                                         ; $4f99: $84
    add l                                         ; $4f9a: $85
    dec c                                         ; $4f9b: $0d
    ld de, $a2ee                                  ; $4f9c: $11 $ee $a2
    ld e, l                                       ; $4f9f: $5d
    ld [$1404], sp                                ; $4fa0: $08 $04 $14
    ld a, a                                       ; $4fa3: $7f
    inc b                                         ; $4fa4: $04
    add b                                         ; $4fa5: $80
    xor a                                         ; $4fa6: $af
    ld d, l                                       ; $4fa7: $55
    rst $18                                       ; $4fa8: $df
    jr nz, jr_09f_4fbb                            ; $4fa9: $20 $10

    inc bc                                        ; $4fab: $03
    and d                                         ; $4fac: $a2
    cp [hl]                                       ; $4fad: $be
    ld b, b                                       ; $4fae: $40
    ld b, c                                       ; $4faf: $41
    ld a, d                                       ; $4fb0: $7a
    ld a, [bc]                                    ; $4fb1: $0a
    rst $38                                       ; $4fb2: $ff
    add b                                         ; $4fb3: $80
    sbc a                                         ; $4fb4: $9f
    rst $38                                       ; $4fb5: $ff
    sbc e                                         ; $4fb6: $9b
    ld hl, sp+$18                                 ; $4fb7: $f8 $18
    xor d                                         ; $4fb9: $aa
    push hl                                       ; $4fba: $e5

jr_09f_4fbb:
    rst $18                                       ; $4fbb: $df
    push af                                       ; $4fbc: $f5
    ld [bc], a                                    ; $4fbd: $02
    ld [hl], b                                    ; $4fbe: $70
    dec de                                        ; $4fbf: $1b
    db $eb                                        ; $4fc0: $eb
    rst $38                                       ; $4fc1: $ff
    sbc a                                         ; $4fc2: $9f
    inc b                                         ; $4fc3: $04
    rra                                           ; $4fc4: $1f
    rla                                           ; $4fc5: $17
    rst $20                                       ; $4fc6: $e7
    db $e3                                        ; $4fc7: $e3
    dec de                                        ; $4fc8: $1b
    ld [hl], b                                    ; $4fc9: $70
    dec hl                                        ; $4fca: $2b
    cp l                                          ; $4fcb: $bd
    rst $38                                       ; $4fcc: $ff
    inc hl                                        ; $4fcd: $23
    ei                                            ; $4fce: $fb
    jp Jump_09f_4860                              ; $4fcf: $c3 $60 $48


    add c                                         ; $4fd2: $81
    rst $38                                       ; $4fd3: $ff
    jp Jump_000_0618                              ; $4fd4: $c3 $18 $06


    ld l, [hl]                                    ; $4fd7: $6e
    ld [$a910], sp                                ; $4fd8: $08 $10 $a9
    rst $00                                       ; $4fdb: $c7
    sub e                                         ; $4fdc: $93
    ld c, $00                                     ; $4fdd: $0e $00
    ld [hl], a                                    ; $4fdf: $77
    add b                                         ; $4fe0: $80
    ld a, [hl]                                    ; $4fe1: $7e
    add b                                         ; $4fe2: $80
    ld [bc], a                                    ; $4fe3: $02
    ld e, l                                       ; $4fe4: $5d
    add b                                         ; $4fe5: $80
    ld a, [hl+]                                   ; $4fe6: $2a
    add b                                         ; $4fe7: $80
    ld b, h                                       ; $4fe8: $44
    add b                                         ; $4fe9: $80
    nop                                           ; $4fea: $00
    rlca                                          ; $4feb: $07
    add b                                         ; $4fec: $80
    nop                                           ; $4fed: $00
    and b                                         ; $4fee: $a0
    nop                                           ; $4fef: $00
    sbc $20                                       ; $4ff0: $de $20
    add c                                         ; $4ff2: $81
    ld a, [hl]                                    ; $4ff3: $7e
    ld h, d                                       ; $4ff4: $62
    add c                                         ; $4ff5: $81
    ld b, b                                       ; $4ff6: $40
    ld bc, $0f05                                  ; $4ff7: $01 $05 $0f
    nop                                           ; $4ffa: $00
    ld b, $01                                     ; $4ffb: $06 $01
    ld e, e                                       ; $4ffd: $5b
    and [hl]                                      ; $4ffe: $a6
    nop                                           ; $4fff: $00
    db $10                                        ; $5000: $10
    add b                                         ; $5001: $80
    add b                                         ; $5002: $80
    nop                                           ; $5003: $00
    ld [bc], a                                    ; $5004: $02
    ld c, b                                       ; $5005: $48
    ld a, [$fcfc]                                 ; $5006: $fa $fc $fc
    inc b                                         ; $5009: $04
    nop                                           ; $500a: $00
    ld e, $24                                     ; $500b: $1e $24
    dec d                                         ; $500d: $15
    ld b, [hl]                                    ; $500e: $46
    daa                                           ; $500f: $27
    inc bc                                        ; $5010: $03
    inc de                                        ; $5011: $13
    ldh [$08], a                                  ; $5012: $e0 $08
    ld hl, $0818                                  ; $5014: $21 $18 $08
    dec b                                         ; $5017: $05
    ld e, $58                                     ; $5018: $1e $58
    add b                                         ; $501a: $80
    nop                                           ; $501b: $00
    ld [$0402], sp                                ; $501c: $08 $02 $04
    db $f4                                        ; $501f: $f4
    inc c                                         ; $5020: $0c
    db $f4                                        ; $5021: $f4
    ld hl, sp-$10                                 ; $5022: $f8 $f0
    ld c, h                                       ; $5024: $4c
    rlca                                          ; $5025: $07
    ld a, [bc]                                    ; $5026: $0a
    nop                                           ; $5027: $00
    nop                                           ; $5028: $00
    dec d                                         ; $5029: $15
    nop                                           ; $502a: $00
    dec hl                                        ; $502b: $2b
    nop                                           ; $502c: $00
    add c                                         ; $502d: $81
    nop                                           ; $502e: $00
    and d                                         ; $502f: $a2
    nop                                           ; $5030: $00

jr_09f_5031:
    nop                                           ; $5031: $00
    ld b, h                                       ; $5032: $44
    add b                                         ; $5033: $80
    adc c                                         ; $5034: $89

jr_09f_5035:
    nop                                           ; $5035: $00
    ld [bc], a                                    ; $5036: $02
    add b                                         ; $5037: $80
    xor c                                         ; $5038: $a9
    nop                                           ; $5039: $00
    nop                                           ; $503a: $00
    ld d, d                                       ; $503b: $52

jr_09f_503c:
    add b                                         ; $503c: $80
    ld h, a                                       ; $503d: $67
    add b                                         ; $503e: $80
    ld a, [hl+]                                   ; $503f: $2a
    nop                                           ; $5040: $00
    ld a, l                                       ; $5041: $7d
    inc bc                                        ; $5042: $03
    nop                                           ; $5043: $00
    scf                                           ; $5044: $37
    nop                                           ; $5045: $00
    ld e, a                                       ; $5046: $5f
    nop                                           ; $5047: $00
    cp l                                          ; $5048: $bd
    ld e, [hl]                                    ; $5049: $5e
    ld b, $4c                                     ; $504a: $06 $4c
    ld c, $40                                     ; $504c: $0e $40
    ld e, [hl]                                    ; $504e: $5e
    ld c, $00                                     ; $504f: $0e $00
    ld l, l                                       ; $5051: $6d
    nop                                           ; $5052: $00
    db $fc                                        ; $5053: $fc
    inc bc                                        ; $5054: $03
    ld sp, hl                                     ; $5055: $f9
    inc b                                         ; $5056: $04
    nop                                           ; $5057: $00
    db $db                                        ; $5058: $db
    inc h                                         ; $5059: $24
    xor e                                         ; $505a: $ab
    ld d, a                                       ; $505b: $57
    ld c, h                                       ; $505c: $4c
    or e                                          ; $505d: $b3
    add sp, $00                                   ; $505e: $e8 $00
    nop                                           ; $5060: $00
    db $e4                                        ; $5061: $e4
    jr jr_09f_5031                                ; $5062: $18 $cd

    inc h                                         ; $5064: $24
    ld b, h                                       ; $5065: $44
    inc l                                         ; $5066: $2c
    adc $a5                                       ; $5067: $ce $a5
    nop                                           ; $5069: $00
    and $ad                                       ; $506a: $e6 $ad
    halt                                          ; $506c: $76
    xor l                                         ; $506d: $ad
    inc h                                         ; $506e: $24
    rst $38                                       ; $506f: $ff
    cp e                                          ; $5070: $bb
    ld b, h                                       ; $5071: $44
    cp b                                          ; $5072: $b8
    db $10                                        ; $5073: $10
    inc b                                         ; $5074: $04
    dec b                                         ; $5075: $05
    ldh [$15], a                                  ; $5076: $e0 $15
    ldh a, [rNR10]                                ; $5078: $f0 $10
    cp [hl]                                       ; $507a: $be
    jr nz, jr_09f_503c                            ; $507b: $20 $bf

    or c                                          ; $507d: $b1
    adc a                                         ; $507e: $8f
    nop                                           ; $507f: $00
    or e                                          ; $5080: $b3
    rst $08                                       ; $5081: $cf
    ld b, d                                       ; $5082: $42
    ld a, [hl]                                    ; $5083: $7e
    inc a                                         ; $5084: $3c
    inc a                                         ; $5085: $3c
    cp l                                          ; $5086: $bd
    ret nz                                        ; $5087: $c0

    nop                                           ; $5088: $00
    ld [hl], e                                    ; $5089: $73
    ld b, h                                       ; $508a: $44
    ld e, d                                       ; $508b: $5a
    ld h, b                                       ; $508c: $60
    ccf                                           ; $508d: $3f
    jr nz, jr_09f_50fa                            ; $508e: $20 $6a

    dec [hl]                                      ; $5090: $35
    nop                                           ; $5091: $00
    db $fd                                        ; $5092: $fd
    ret nc                                        ; $5093: $d0

    rst $30                                       ; $5094: $f7
    jr jr_09f_5035                                ; $5095: $18 $9e

    ld c, c                                       ; $5097: $49
    or l                                          ; $5098: $b5
    jp nz, $eb00                                  ; $5099: $c2 $00 $eb

    ld d, b                                       ; $509c: $50
    jp c, $fb65                                   ; $509d: $da $65 $fb

    jr nz, jr_09f_5110                            ; $50a0: $20 $6e

    ld sp, $bd00                                  ; $50a2: $31 $00 $bd
    ld [de], a                                    ; $50a5: $12
    halt                                          ; $50a6: $76
    sbc b                                         ; $50a7: $98
    cp a                                          ; $50a8: $bf
    ld c, b                                       ; $50a9: $48
    ld c, d                                       ; $50aa: $4a
    cp l                                          ; $50ab: $bd
    nop                                           ; $50ac: $00
    daa                                           ; $50ad: $27
    db $fc                                        ; $50ae: $fc
    ld d, l                                       ; $50af: $55
    xor $0b                                       ; $50b0: $ee $0b
    or $ba                                        ; $50b2: $f6 $ba
    ld l, a                                       ; $50b4: $6f
    nop                                           ; $50b5: $00
    ld b, l                                       ; $50b6: $45
    ei                                            ; $50b7: $fb
    sub e                                         ; $50b8: $93
    db $fd                                        ; $50b9: $fd
    and h                                         ; $50ba: $a4
    db $db                                        ; $50bb: $db
    ld a, l                                       ; $50bc: $7d
    add b                                         ; $50bd: $80
    ld b, b                                       ; $50be: $40
    ld a, a                                       ; $50bf: $7f
    ld [bc], a                                    ; $50c0: $02
    nop                                           ; $50c1: $00
    ld [hl], a                                    ; $50c2: $77
    adc b                                         ; $50c3: $88
    sbc $a1                                       ; $50c4: $de $a1
    dec [hl]                                      ; $50c6: $35
    jp z, $ea04                                   ; $50c7: $ca $04 $ea

    sub l                                         ; $50ca: $95
    sub c                                         ; $50cb: $91
    xor $fe                                       ; $50cc: $ee $fe
    inc d                                         ; $50ce: $14
    inc bc                                        ; $50cf: $03
    xor $11                                       ; $50d0: $ee $11
    nop                                           ; $50d2: $00
    cp h                                          ; $50d3: $bc
    ld b, e                                       ; $50d4: $43
    ld [$d515], a                                 ; $50d5: $ea $15 $d5
    dec hl                                        ; $50d8: $2b

jr_09f_50d9:
    adc c                                         ; $50d9: $89
    ld [hl], a                                    ; $50da: $77
    nop                                           ; $50db: $00
    ld b, l                                       ; $50dc: $45
    cp e                                          ; $50dd: $bb
    rst $38                                       ; $50de: $ff
    nop                                           ; $50df: $00
    ld b, b                                       ; $50e0: $40
    add b                                         ; $50e1: $80
    rst $00                                       ; $50e2: $c7
    nop                                           ; $50e3: $00
    ld bc, $804a                                  ; $50e4: $01 $4a $80
    call Call_09f_4800                            ; $50e7: $cd $00 $48
    add b                                         ; $50ea: $80
    ret z                                         ; $50eb: $c8

    inc b                                         ; $50ec: $04
    nop                                           ; $50ed: $00
    inc d                                         ; $50ee: $14
    rst $38                                       ; $50ef: $ff
    jr jr_09f_50f2                                ; $50f0: $18 $00

jr_09f_50f2:
    ld a, b                                       ; $50f2: $78
    rlca                                          ; $50f3: $07
    xor d                                         ; $50f4: $aa
    ld b, $06                                     ; $50f5: $06 $06
    nop                                           ; $50f7: $00
    nop                                           ; $50f8: $00
    nop                                           ; $50f9: $00

jr_09f_50fa:
    jr jr_09f_50fc                                ; $50fa: $18 $00

jr_09f_50fc:
    inc h                                         ; $50fc: $24
    jr @-$5a                                      ; $50fd: $18 $a4

    db $db                                        ; $50ff: $db
    add b                                         ; $5100: $80
    rst $38                                       ; $5101: $ff
    nop                                           ; $5102: $00
    adc b                                         ; $5103: $88
    rst $30                                       ; $5104: $f7
    and b                                         ; $5105: $a0
    rst $38                                       ; $5106: $ff
    add d                                         ; $5107: $82
    rst $38                                       ; $5108: $ff
    push de                                       ; $5109: $d5
    rst $38                                       ; $510a: $ff
    ld b, b                                       ; $510b: $40
    rst $28                                       ; $510c: $ef
    ld h, d                                       ; $510d: $62
    rlca                                          ; $510e: $07
    inc bc                                        ; $510f: $03

jr_09f_5110:
    rst $38                                       ; $5110: $ff
    ld b, l                                       ; $5111: $45
    cp a                                          ; $5112: $bf
    inc de                                        ; $5113: $13
    rst $38                                       ; $5114: $ff
    ld d, b                                       ; $5115: $50
    ld b, l                                       ; $5116: $45
    call nz, $5704                                ; $5117: $c4 $04 $57
    jr nz, jr_09f_5130                            ; $511a: $20 $14

    rst $00                                       ; $511c: $c7
    nop                                           ; $511d: $00
    ld h, b                                       ; $511e: $60
    add b                                         ; $511f: $80
    dec b                                         ; $5120: $05
    rra                                           ; $5121: $1f
    ldh [$60], a                                  ; $5122: $e0 $60
    add b                                         ; $5124: $80
    push af                                       ; $5125: $f5
    nop                                           ; $5126: $00
    dec b                                         ; $5127: $05
    add b                                         ; $5128: $80
    ld a, a                                       ; $5129: $7f
    inc d                                         ; $512a: $14
    cp b                                          ; $512b: $b8
    ld b, b                                       ; $512c: $40
    ld [$4600], sp                                ; $512d: $08 $00 $46

jr_09f_5130:
    ld b, $0a                                     ; $5130: $06 $0a
    nop                                           ; $5132: $00
    sub d                                         ; $5133: $92
    rlca                                          ; $5134: $07
    db $ed                                        ; $5135: $ed
    nop                                           ; $5136: $00
    ld e, d                                       ; $5137: $5a
    adc b                                         ; $5138: $88
    add $07                                       ; $5139: $c6 $07
    jr z, jr_09f_513d                             ; $513b: $28 $00

jr_09f_513d:
    inc d                                         ; $513d: $14

jr_09f_513e:
    ld d, [hl]                                    ; $513e: $56
    ld bc, $0010                                  ; $513f: $01 $10 $00
    nop                                           ; $5142: $00
    ld [bc], a                                    ; $5143: $02
    ld b, b                                       ; $5144: $40
    nop                                           ; $5145: $00
    nop                                           ; $5146: $00
    db $10                                        ; $5147: $10
    add b                                         ; $5148: $80
    ld b, b                                       ; $5149: $40
    ld [bc], a                                    ; $514a: $02
    nop                                           ; $514b: $00
    ret nz                                        ; $514c: $c0

    ld [hl], b                                    ; $514d: $70
    adc b                                         ; $514e: $88
    stop                                          ; $514f: $10 $00
    ld c, $00                                     ; $5151: $0e $00
    ld l, l                                       ; $5153: $6d
    ld bc, $4048                                  ; $5154: $01 $48 $40
    jr nz, jr_09f_50d9                            ; $5157: $20 $80

    ld [$a060], sp                                ; $5159: $08 $60 $a0
    ret nz                                        ; $515c: $c0

    ret nz                                        ; $515d: $c0

    add h                                         ; $515e: $84
    ld bc, $0011                                  ; $515f: $01 $11 $00
    ld b, d                                       ; $5162: $42
    add b                                         ; $5163: $80

jr_09f_5164:
    adc h                                         ; $5164: $8c
    inc b                                         ; $5165: $04
    ld b, d                                       ; $5166: $42
    nop                                           ; $5167: $00
    dec d                                         ; $5168: $15
    ret nz                                        ; $5169: $c0

    ld l, e                                       ; $516a: $6b
    jr nz, jr_09f_5164                            ; $516b: $20 $f7

    nop                                           ; $516d: $00
    jr nz, jr_09f_513e                            ; $516e: $20 $ce

    ldh [$3f], a                                  ; $5170: $e0 $3f
    ret nz                                        ; $5172: $c0

    jr nz, jr_09f_5175                            ; $5173: $20 $00

jr_09f_5175:
    inc b                                         ; $5175: $04
    adc d                                         ; $5176: $8a
    ld b, d                                       ; $5177: $42
    nop                                           ; $5178: $00
    dec l                                         ; $5179: $2d
    nop                                           ; $517a: $00
    cp $3e                                        ; $517b: $fe $3e
    ld bc, $fcfd                                  ; $517d: $01 $fd $fc
    rlca                                          ; $5180: $07
    xor e                                         ; $5181: $ab
    jr z, jr_09f_5184                             ; $5182: $28 $00

jr_09f_5184:
    ld b, e                                       ; $5184: $43
    xor h                                         ; $5185: $ac
    ld bc, $b021                                  ; $5186: $01 $21 $b0
    ld bc, $0000                                  ; $5189: $01 $00 $00
    jr nz, jr_09f_51a9                            ; $518c: $20 $1b

    nop                                           ; $518e: $00
    ld [bc], a                                    ; $518f: $02
    db $10                                        ; $5190: $10
    ld h, b                                       ; $5191: $60
    jr c, jr_09f_51a7                             ; $5192: $38 $13

    ld [$5202], sp                                ; $5194: $08 $02 $52
    ld [$01cc], sp                                ; $5197: $08 $cc $01
    ld a, b                                       ; $519a: $78
    ld [$000b], sp                                ; $519b: $08 $0b $00
    inc bc                                        ; $519e: $03
    db $10                                        ; $519f: $10
    inc d                                         ; $51a0: $14
    ld [$09dc], sp                                ; $51a1: $08 $dc $09
    inc b                                         ; $51a4: $04
    nop                                           ; $51a5: $00
    nop                                           ; $51a6: $00

jr_09f_51a7:
    rlca                                          ; $51a7: $07
    ld c, b                                       ; $51a8: $48

jr_09f_51a9:
    ld [bc], a                                    ; $51a9: $02
    and b                                         ; $51aa: $a0
    nop                                           ; $51ab: $00
    ld d, c                                       ; $51ac: $51
    add b                                         ; $51ad: $80
    ld hl, $0fe8                                  ; $51ae: $21 $e8 $0f
    ld e, b                                       ; $51b1: $58
    ld [bc], a                                    ; $51b2: $02
    nop                                           ; $51b3: $00
    ld d, b                                       ; $51b4: $50
    ld c, a                                       ; $51b5: $4f
    or b                                          ; $51b6: $b0
    add sp, $00                                   ; $51b7: $e8 $00
    ldh a, [rSC]                                  ; $51b9: $f0 $02
    reti                                          ; $51bb: $d9


    ld a, [bc]                                    ; $51bc: $0a
    nop                                           ; $51bd: $00
    ld [hl], h                                    ; $51be: $74
    nop                                           ; $51bf: $00
    ld a, [$03c0]                                 ; $51c0: $fa $c0 $03
    rst $38                                       ; $51c3: $ff
    ld h, d                                       ; $51c4: $62
    db $10                                        ; $51c5: $10
    ld [bc], a                                    ; $51c6: $02
    nop                                           ; $51c7: $00
    ld bc, $00e3                                  ; $51c8: $01 $e3 $00
    or d                                          ; $51cb: $b2
    ld bc, $0053                                  ; $51cc: $01 $53 $00
    ld [de], a                                    ; $51cf: $12
    inc h                                         ; $51d0: $24
    ld bc, $0413                                  ; $51d1: $01 $13 $04
    nop                                           ; $51d4: $00
    rst $18                                       ; $51d5: $df
    nop                                           ; $51d6: $00
    ld b, b                                       ; $51d7: $40
    add hl, bc                                    ; $51d8: $09
    ld a, a                                       ; $51d9: $7f
    add b                                         ; $51da: $80
    nop                                           ; $51db: $00
    db $dd                                        ; $51dc: $dd
    and d                                         ; $51dd: $a2
    ei                                            ; $51de: $fb
    add h                                         ; $51df: $84
    xor a                                         ; $51e0: $af
    ret nc                                        ; $51e1: $d0

    sub l                                         ; $51e2: $95
    ld [$e340], a                                 ; $51e3: $ea $40 $e3
    ld h, $02                                     ; $51e6: $26 $02
    ld hl, sp+$07                                 ; $51e8: $f8 $07
    ld [bc], a                                    ; $51ea: $02
    ld bc, $0157                                  ; $51eb: $01 $57 $01
    db $10                                        ; $51ee: $10
    db $fd                                        ; $51ef: $fd
    inc bc                                        ; $51f0: $03
    ld bc, $0570                                  ; $51f1: $01 $70 $05
    jp z, $80f5                                   ; $51f4: $ca $f5 $80

    rst $38                                       ; $51f7: $ff
    dec b                                         ; $51f8: $05
    push bc                                       ; $51f9: $c5
    ei                                            ; $51fa: $fb
    and b                                         ; $51fb: $a0
    rst $38                                       ; $51fc: $ff
    pop de                                        ; $51fd: $d1
    ld l, [hl]                                    ; $51fe: $6e
    dec b                                         ; $51ff: $05
    push af                                       ; $5200: $f5
    add b                                         ; $5201: $80
    dec b                                         ; $5202: $05
    nop                                           ; $5203: $00
    xor d                                         ; $5204: $aa
    ld d, h                                       ; $5205: $54
    rst $30                                       ; $5206: $f7
    nop                                           ; $5207: $00
    cp $41                                        ; $5208: $fe $41
    rst $38                                       ; $520a: $ff
    jr nz, @-$7e                                  ; $520b: $20 $80

    ldh a, [rNR13]                                ; $520d: $f0 $13
    dec d                                         ; $520f: $15
    ld a, a                                       ; $5210: $7f
    adc b                                         ; $5211: $88
    add [hl]                                      ; $5212: $86
    ld a, c                                       ; $5213: $79
    and a                                         ; $5214: $a7
    ld e, b                                       ; $5215: $58
    ld bc, $b44b                                  ; $5216: $01 $4b $b4
    dec b                                         ; $5219: $05
    ld a, [$f50a]                                 ; $521a: $fa $0a $f5
    add c                                         ; $521d: $81
    scf                                           ; $521e: $37
    dec b                                         ; $521f: $05
    nop                                           ; $5220: $00
    db $10                                        ; $5221: $10
    rst $28                                       ; $5222: $ef
    ret nc                                        ; $5223: $d0

    cpl                                           ; $5224: $2f
    xor b                                         ; $5225: $a8
    ld [hl], b                                    ; $5226: $70
    ld c, d                                       ; $5227: $4a
    rst $20                                       ; $5228: $e7
    ld [$5ff7], sp                                ; $5229: $08 $f7 $5f
    rst $18                                       ; $522c: $df
    ld l, a                                       ; $522d: $6f
    or b                                          ; $522e: $b0
    ld c, $ae                                     ; $522f: $0e $ae
    rst $30                                       ; $5231: $f7
    ld l, h                                       ; $5232: $6c
    nop                                           ; $5233: $00
    ret nz                                        ; $5234: $c0

    ld a, [$2bf8]                                 ; $5235: $fa $f8 $2b
    adc b                                         ; $5238: $88
    db $d3                                        ; $5239: $d3
    sub b                                         ; $523a: $90
    ld sp, $9110                                  ; $523b: $31 $10 $91
    sbc a                                         ; $523e: $9f
    adc h                                         ; $523f: $8c
    jr nc, @+$0b                                  ; $5240: $30 $09

    sub a                                         ; $5242: $97
    sub e                                         ; $5243: $93
    ld e, [hl]                                    ; $5244: $5e
    ld e, [hl]                                    ; $5245: $5e
    nop                                           ; $5246: $00
    push hl                                       ; $5247: $e5
    ld h, l                                       ; $5248: $65
    rst $08                                       ; $5249: $cf
    ld [$b0be], sp                                ; $524a: $08 $be $b0
    db $fd                                        ; $524d: $fd
    ret nz                                        ; $524e: $c0

    add b                                         ; $524f: $80
    ld b, b                                       ; $5250: $40
    add hl, bc                                    ; $5251: $09
    ret c                                         ; $5252: $d8

    pop bc                                        ; $5253: $c1
    sbc a                                         ; $5254: $9f
    add c                                         ; $5255: $81
    db $fc                                        ; $5256: $fc
    pop bc                                        ; $5257: $c1
    ld l, e                                       ; $5258: $6b
    inc b                                         ; $5259: $04
    ld h, c                                       ; $525a: $61
    inc [hl]                                      ; $525b: $34
    ld sp, $a1e9                                  ; $525c: $31 $e9 $a1
    ld d, b                                       ; $525f: $50
    add hl, bc                                    ; $5260: $09
    cp $01                                        ; $5261: $fe $01
    ld b, b                                       ; $5263: $40
    cp [hl]                                       ; $5264: $be
    sub $04                                       ; $5265: $d6 $04
    cp $01                                        ; $5267: $fe $01
    or a                                          ; $5269: $b7
    ld c, c                                       ; $526a: $49
    ld e, d                                       ; $526b: $5a
    and l                                         ; $526c: $a5
    nop                                           ; $526d: $00
    xor a                                         ; $526e: $af
    ld d, c                                       ; $526f: $51
    inc d                                         ; $5270: $14
    db $eb                                        ; $5271: $eb
    and e                                         ; $5272: $a3
    ld e, l                                       ; $5273: $5d
    ld bc, $00ff                                  ; $5274: $01 $ff $00
    ld hl, $8bff                                  ; $5277: $21 $ff $8b
    rst $38                                       ; $527a: $ff
    dec d                                         ; $527b: $15
    rst $38                                       ; $527c: $ff
    xor a                                         ; $527d: $af
    rst $38                                       ; $527e: $ff
    ld b, b                                       ; $527f: $40
    rst $18                                       ; $5280: $df
    nop                                           ; $5281: $00
    ld b, $d2                                     ; $5282: $06 $d2
    add b                                         ; $5284: $80
    ld b, b                                       ; $5285: $40
    ld b, l                                       ; $5286: $45
    ld l, c                                       ; $5287: $69
    ld b, b                                       ; $5288: $40
    nop                                           ; $5289: $00
    ld [hl+], a                                   ; $528a: $22
    jr nz, @-$4e                                  ; $528b: $20 $b0

    inc h                                         ; $528d: $24
    ld de, $3c92                                  ; $528e: $11 $92 $3c
    ld de, $8800                                  ; $5291: $11 $00 $88
    ld [$c9b6], sp                                ; $5294: $08 $b6 $c9
    ld l, e                                       ; $5297: $6b
    ld d, h                                       ; $5298: $54
    ld e, [hl]                                    ; $5299: $5e
    ld h, c                                       ; $529a: $61
    nop                                           ; $529b: $00
    dec [hl]                                      ; $529c: $35
    xor d                                         ; $529d: $aa
    xor l                                         ; $529e: $ad
    ld [hl-], a                                   ; $529f: $32
    ld e, $11                                     ; $52a0: $1e $11
    ld d, a                                       ; $52a2: $57
    rra                                           ; $52a3: $1f
    nop                                           ; $52a4: $00
    ld [$ea8f], sp                                ; $52a5: $08 $8f $ea
    ld d, l                                       ; $52a8: $55
    rst $18                                       ; $52a9: $df
    ld a, [hl+]                                   ; $52aa: $2a
    db $eb                                        ; $52ab: $eb
    ld d, l                                       ; $52ac: $55
    nop                                           ; $52ad: $00
    ld a, l                                       ; $52ae: $7d
    and d                                         ; $52af: $a2
    cp [hl]                                       ; $52b0: $be
    ld d, l                                       ; $52b1: $55
    rst $10                                       ; $52b2: $d7
    xor d                                         ; $52b3: $aa
    cp [hl]                                       ; $52b4: $be
    ld d, c                                       ; $52b5: $51
    nop                                           ; $52b6: $00
    ld a, l                                       ; $52b7: $7d
    xor d                                         ; $52b8: $aa
    xor e                                         ; $52b9: $ab
    ld d, h                                       ; $52ba: $54
    ld [hl], l                                    ; $52bb: $75
    add d                                         ; $52bc: $82
    rst $38                                       ; $52bd: $ff
    ld b, b                                       ; $52be: $40
    nop                                           ; $52bf: $00
    ld a, l                                       ; $52c0: $7d
    and b                                         ; $52c1: $a0
    xor e                                         ; $52c2: $ab
    ld d, h                                       ; $52c3: $54
    ld e, a                                       ; $52c4: $5f
    and b                                         ; $52c5: $a0
    cp [hl]                                       ; $52c6: $be
    ld d, c                                       ; $52c7: $51
    ld bc, $a8ff                                  ; $52c8: $01 $ff $a8
    xor [hl]                                      ; $52cb: $ae
    dec b                                         ; $52cc: $05
    ld d, l                                       ; $52cd: $55
    ld [bc], a                                    ; $52ce: $02
    cp [hl]                                       ; $52cf: $be
    ldh [rDIV], a                                 ; $52d0: $e0 $04
    ld bc, $41ab                                  ; $52d2: $01 $ab $41
    ld e, l                                       ; $52d5: $5d
    nop                                           ; $52d6: $00
    xor a                                         ; $52d7: $af
    ld bc, $80d7                                  ; $52d8: $01 $d7 $80
    inc bc                                        ; $52db: $03
    inc b                                         ; $52dc: $04
    ld [hl], a                                    ; $52dd: $77

jr_09f_52de:
    xor b                                         ; $52de: $a8
    rst $28                                       ; $52df: $ef
    ld d, h                                       ; $52e0: $54
    rst $10                                       ; $52e1: $d7
    sub b                                         ; $52e2: $90

jr_09f_52e3:
    ld b, $7d                                     ; $52e3: $06 $7d
    xor d                                         ; $52e5: $aa
    ld b, b                                       ; $52e6: $40
    cp e                                          ; $52e7: $bb
    inc [hl]                                      ; $52e8: $34
    nop                                           ; $52e9: $00
    ld a, [$df04]                                 ; $52ea: $fa $04 $df
    jr nz, jr_09f_52de                            ; $52ed: $20 $ef

    inc d                                         ; $52ef: $14
    nop                                           ; $52f0: $00
    rst $30                                       ; $52f1: $f7
    ld a, [bc]                                    ; $52f2: $0a
    cp [hl]                                       ; $52f3: $be
    ld b, c                                       ; $52f4: $41
    rst $10                                       ; $52f5: $d7
    jr z, jr_09f_52e3                             ; $52f6: $28 $eb

    dec d                                         ; $52f8: $15
    and b                                         ; $52f9: $a0
    nop                                           ; $52fa: $00
    inc h                                         ; $52fb: $24
    dec d                                         ; $52fc: $15
    nop                                           ; $52fd: $00
    inc a                                         ; $52fe: $3c
    rst $28                                       ; $52ff: $ef
    dec d                                         ; $5300: $15
    ld a, l                                       ; $5301: $7d
    ld [hl+], a                                   ; $5302: $22
    cp $04                                        ; $5303: $fe $04
    ld b, l                                       ; $5305: $45
    ld a, a                                       ; $5306: $7f
    add d                                         ; $5307: $82
    xor a                                         ; $5308: $af
    ld d, c                                       ; $5309: $51
    ld a, [hl+]                                   ; $530a: $2a
    ld c, $fd                                     ; $530b: $0e $fd
    add d                                         ; $530d: $82
    nop                                           ; $530e: $00
    xor e                                         ; $530f: $ab
    ld d, h                                       ; $5310: $54
    ld d, a                                       ; $5311: $57
    xor b                                         ; $5312: $a8
    cp a                                          ; $5313: $bf
    ld d, h                                       ; $5314: $54
    ld d, a                                       ; $5315: $57
    xor d                                         ; $5316: $aa
    nop                                           ; $5317: $00
    cp d                                          ; $5318: $ba
    ld b, l                                       ; $5319: $45
    ld d, l                                       ; $531a: $55
    xor d                                         ; $531b: $aa
    cp a                                          ; $531c: $bf
    ld d, l                                       ; $531d: $55
    rst $30                                       ; $531e: $f7
    adc b                                         ; $531f: $88
    dec b                                         ; $5320: $05
    cp $01                                        ; $5321: $fe $01
    ld a, l                                       ; $5323: $7d
    add b                                         ; $5324: $80
    cp [hl]                                       ; $5325: $be
    ldh a, [rTMA]                                 ; $5326: $f0 $06
    ei                                            ; $5328: $fb
    ld c, $03                                     ; $5329: $0e $03
    ld h, b                                       ; $532b: $60
    ei                                            ; $532c: $fb
    ld d, b                                       ; $532d: $50
    dec d                                         ; $532e: $15
    jr c, @+$07                                   ; $532f: $38 $05

    inc b                                         ; $5331: $04
    ld d, a                                       ; $5332: $57
    ld [hl+], a                                   ; $5333: $22
    xor d                                         ; $5334: $aa
    ld bc, $5500                                  ; $5335: $01 $00 $55
    ld [$01ab], sp                                ; $5338: $08 $ab $01
    db $dd                                        ; $533b: $dd
    add b                                         ; $533c: $80
    cp $05                                        ; $533d: $fe $05
    ld a, [bc]                                    ; $533f: $0a
    ld a, l                                       ; $5340: $7d
    add d                                         ; $5341: $82
    cp [hl]                                       ; $5342: $be
    ld b, l                                       ; $5343: $45
    nop                                           ; $5344: $00
    inc bc                                        ; $5345: $03
    dec b                                         ; $5346: $05
    ld l, d                                       ; $5347: $6a
    ld c, $dd                                     ; $5348: $0e $dd
    ld b, d                                       ; $534a: $42
    and d                                         ; $534b: $a2
    ld b, b                                       ; $534c: $40
    ld [$14ef], sp                                ; $534d: $08 $ef $14
    rst $10                                       ; $5350: $d7
    ld a, [hl+]                                   ; $5351: $2a
    db $10                                        ; $5352: $10
    rrca                                          ; $5353: $0f
    rst $28                                       ; $5354: $ef
    nop                                           ; $5355: $00
    dec d                                         ; $5356: $15
    db $fd                                        ; $5357: $fd
    xor d                                         ; $5358: $aa
    cp $01                                        ; $5359: $fe $01
    db $fd                                        ; $535b: $fd
    nop                                           ; $535c: $00
    xor $00                                       ; $535d: $ee $00
    inc b                                         ; $535f: $04
    ld d, a                                       ; $5360: $57
    ld a, [bc]                                    ; $5361: $0a
    db $eb                                        ; $5362: $eb
    nop                                           ; $5363: $00
    ld [hl], l                                    ; $5364: $75
    nop                                           ; $5365: $00
    xor e                                         ; $5366: $ab
    dec a                                         ; $5367: $3d
    dec d                                         ; $5368: $15
    push de                                       ; $5369: $d5
    ld [hl], e                                    ; $536a: $73
    ld [de], a                                    ; $536b: $12
    ldh a, [rNR34]                                ; $536c: $f0 $1e
    cp $1e                                        ; $536e: $fe $1e
    rst $30                                       ; $5370: $f7
    ld d, $55                                     ; $5371: $16 $55
    ei                                            ; $5373: $fb
    ld d, $40                                     ; $5374: $16 $40
    ld d, l                                       ; $5376: $55
    rrca                                          ; $5377: $0f
    rlca                                          ; $5378: $07
    db $db                                        ; $5379: $db
    and b                                         ; $537a: $a0
    jr jr_09f_5390                                ; $537b: $18 $13

    ld de, $ff42                                  ; $537d: $11 $42 $ff
    ld bc, $8360                                  ; $5380: $01 $60 $83
    rst $38                                       ; $5383: $ff
    pop bc                                        ; $5384: $c1
    cp a                                          ; $5385: $bf
    inc b                                         ; $5386: $04
    ld c, b                                       ; $5387: $48
    rst $38                                       ; $5388: $ff
    nop                                           ; $5389: $00
    nop                                           ; $538a: $00
    rst $18                                       ; $538b: $df
    nop                                           ; $538c: $00
    ld a, a                                       ; $538d: $7f
    nop                                           ; $538e: $00
    xor [hl]                                      ; $538f: $ae

jr_09f_5390:
    nop                                           ; $5390: $00
    ld d, a                                       ; $5391: $57
    nop                                           ; $5392: $00
    nop                                           ; $5393: $00
    ld a, [bc]                                    ; $5394: $0a
    nop                                           ; $5395: $00
    ld b, c                                       ; $5396: $41
    nop                                           ; $5397: $00
    ld [$ff00], sp                                ; $5398: $08 $00 $ff
    add b                                         ; $539b: $80
    ld [bc], a                                    ; $539c: $02
    nop                                           ; $539d: $00
    or [hl]                                       ; $539e: $b6
    nop                                           ; $539f: $00
    db $eb                                        ; $53a0: $eb
    nop                                           ; $53a1: $00
    ld b, l                                       ; $53a2: $45
    nop                                           ; $53a3: $00
    and d                                         ; $53a4: $a2
    ld [bc], a                                    ; $53a5: $02
    nop                                           ; $53a6: $00
    inc bc                                        ; $53a7: $03
    nop                                           ; $53a8: $00
    db $10                                        ; $53a9: $10
    rra                                           ; $53aa: $1f
    nop                                           ; $53ab: $00
    ld bc, $1860                                  ; $53ac: $01 $60 $18
    ld [$1b10], sp                                ; $53af: $08 $10 $1b
    db $10                                        ; $53b2: $10
    jr jr_09f_53b7                                ; $53b3: $18 $02

    nop                                           ; $53b5: $00
    db $10                                        ; $53b6: $10

jr_09f_53b7:
    jr jr_09f_53cd                                ; $53b7: $18 $14

    nop                                           ; $53b9: $00
    jr @+$20                                      ; $53ba: $18 $1e

    ld [$0c0b], sp                                ; $53bc: $08 $0b $0c
    ld c, $04                                     ; $53bf: $0e $04
    dec b                                         ; $53c1: $05
    ld [bc], a                                    ; $53c2: $02
    ld b, $06                                     ; $53c3: $06 $06
    inc bc                                        ; $53c5: $03
    inc bc                                        ; $53c6: $03
    ld bc, $2901                                  ; $53c7: $01 $01 $29
    ld b, b                                       ; $53ca: $40
    ld b, b                                       ; $53cb: $40
    ld [bc], a                                    ; $53cc: $02

jr_09f_53cd:
    nop                                           ; $53cd: $00
    xor b                                         ; $53ce: $a8
    nop                                           ; $53cf: $00
    ld [hl], h                                    ; $53d0: $74
    nop                                           ; $53d1: $00
    jp c, SerialTransferCompleteInterrupt         ; $53d2: $da $58 $00

    rst $38                                       ; $53d5: $ff
    add b                                         ; $53d6: $80
    ccf                                           ; $53d7: $3f
    nop                                           ; $53d8: $00
    ld bc, $2000                                  ; $53d9: $01 $00 $20
    nop                                           ; $53dc: $00
    adc d                                         ; $53dd: $8a
    nop                                           ; $53de: $00
    dec d                                         ; $53df: $15
    jr nc, jr_09f_53e2                            ; $53e0: $30 $00

jr_09f_53e2:
    xor e                                         ; $53e2: $ab
    db $10                                        ; $53e3: $10
    db $10                                        ; $53e4: $10
    ld h, b                                       ; $53e5: $60
    ld [$00f5], sp                                ; $53e6: $08 $f5 $00
    xor h                                         ; $53e9: $ac
    rlca                                          ; $53ea: $07
    ld bc, $085c                                  ; $53eb: $01 $5c $08
    jr c, jr_09f_5400                             ; $53ee: $38 $10

    ld [hl], d                                    ; $53f0: $72
    ldh [$c2], a                                  ; $53f1: $e0 $c2
    ld [hl], b                                    ; $53f3: $70
    stop                                          ; $53f4: $10 $00
    cp a                                          ; $53f6: $bf
    nop                                           ; $53f7: $00
    ld l, [hl]                                    ; $53f8: $6e
    add b                                         ; $53f9: $80
    cp l                                          ; $53fa: $bd
    ld b, b                                       ; $53fb: $40
    ld c, d                                       ; $53fc: $4a
    jr nz, jr_09f_5400                            ; $53fd: $20 $01

    inc hl                                        ; $53ff: $23

jr_09f_5400:
    inc e                                         ; $5400: $1c
    inc c                                         ; $5401: $0c
    inc bc                                        ; $5402: $03
    rst $38                                       ; $5403: $ff
    nop                                           ; $5404: $00
    cp $20                                        ; $5405: $fe $20
    nop                                           ; $5407: $00
    inc b                                         ; $5408: $04
    xor d                                         ; $5409: $aa
    nop                                           ; $540a: $00
    ld d, h                                       ; $540b: $54
    nop                                           ; $540c: $00
    add hl, bc                                    ; $540d: $09
    ld c, b                                       ; $540e: $48
    nop                                           ; $540f: $00
    jr nz, @-$1e                                  ; $5410: $20 $e0

    nop                                           ; $5412: $00
    cp $01                                        ; $5413: $fe $01
    cp $01                                        ; $5415: $fe $01
    db $f4                                        ; $5417: $f4
    ld bc, $01aa                                  ; $5418: $01 $aa $01

jr_09f_541b:
    inc b                                         ; $541b: $04
    ld d, l                                       ; $541c: $55
    nop                                           ; $541d: $00
    jr nz, jr_09f_5421                            ; $541e: $20 $01

    dec b                                         ; $5420: $05

jr_09f_5421:
    ld c, l                                       ; $5421: $4d
    nop                                           ; $5422: $00
    dec b                                         ; $5423: $05
    ld [bc], a                                    ; $5424: $02
    ld bc, $f20d                                  ; $5425: $01 $0d $f2
    inc e                                         ; $5428: $1c
    ld [bc], a                                    ; $5429: $02
    ld c, $02                                     ; $542a: $0e $02
    ld b, $02                                     ; $542c: $06 $02
    nop                                           ; $542e: $00
    nop                                           ; $542f: $00
    ld l, $02                                     ; $5430: $2e $02
    ld e, [hl]                                    ; $5432: $5e
    ld [bc], a                                    ; $5433: $02
    nop                                           ; $5434: $00
    nop                                           ; $5435: $00
    and c                                         ; $5436: $a1
    ld e, [hl]                                    ; $5437: $5e

jr_09f_5438:
    db $10                                        ; $5438: $10
    ret nz                                        ; $5439: $c0

    nop                                           ; $543a: $00
    add c                                         ; $543b: $81
    ld l, b                                       ; $543c: $68
    db $10                                        ; $543d: $10

jr_09f_543e:
    ld [bc], a                                    ; $543e: $02
    nop                                           ; $543f: $00
    dec b                                         ; $5440: $05
    nop                                           ; $5441: $00
    inc b                                         ; $5442: $04
    ldh [rNR41], a                                ; $5443: $e0 $20
    ld [hl], b                                    ; $5445: $70
    jr nz, jr_09f_5438                            ; $5446: $20 $f0

    inc b                                         ; $5448: $04
    jr nz, jr_09f_541b                            ; $5449: $20 $d0

    ld h, b                                       ; $544b: $60
    jr jr_09f_543e                                ; $544c: $18 $f0

    ld b, b                                       ; $544e: $40
    ld bc, $0080                                  ; $544f: $01 $80 $00
    inc b                                         ; $5452: $04
    ld c, b                                       ; $5453: $48
    xor d                                         ; $5454: $aa
    ld b, $5e                                     ; $5455: $06 $5e
    ld b, b                                       ; $5457: $40
    ld [bc], a                                    ; $5458: $02
    inc b                                         ; $5459: $04
    nop                                           ; $545a: $00
    add d                                         ; $545b: $82
    xor d                                         ; $545c: $aa
    add $d6                                       ; $545d: $c6 $d6
    ld l, d                                       ; $545f: $6a
    ld l, d                                       ; $5460: $6a
    ld [$3636], sp                                ; $5461: $08 $36 $36
    ld a, [de]                                    ; $5464: $1a
    dec bc                                        ; $5465: $0b
    sbc d                                         ; $5466: $9a
    ld [$d601], sp                                ; $5467: $08 $01 $d6
    inc bc                                        ; $546a: $03
    nop                                           ; $546b: $00
    dec l                                         ; $546c: $2d
    add [hl]                                      ; $546d: $86
    db $db                                        ; $546e: $db
    inc c                                         ; $546f: $0c
    ld [hl], $98                                  ; $5470: $36 $98
    ld l, h                                       ; $5472: $6c
    or b                                          ; $5473: $b0
    nop                                           ; $5474: $00
    and b                                         ; $5475: $a0
    ret nz                                        ; $5476: $c0

    ldh [$80], a                                  ; $5477: $e0 $80
    ld b, b                                       ; $5479: $40
    add b                                         ; $547a: $80
    ret nz                                        ; $547b: $c0

    nop                                           ; $547c: $00
    ld l, b                                       ; $547d: $68
    add b                                         ; $547e: $80
    ld sp, hl                                     ; $547f: $f9
    jr nz, jr_09f_54c2                            ; $5480: $20 $40

    ld [$0403], sp                                ; $5482: $08 $03 $04
    jr nc, @+$04                                  ; $5485: $30 $02

    ld bc, $001a                                  ; $5487: $01 $1a $00
    ld c, $2f                                     ; $548a: $0e $2f
    ld b, $57                                     ; $548c: $06 $57
    inc bc                                        ; $548e: $03
    cp d                                          ; $548f: $ba
    ld bc, $206d                                  ; $5490: $01 $6d $20
    nop                                           ; $5493: $00
    cp [hl]                                       ; $5494: $be
    inc l                                         ; $5495: $2c
    ld de, $e058                                  ; $5496: $11 $58 $e0
    or b                                          ; $5499: $b0
    ret nz                                        ; $549a: $c0

    ld h, b                                       ; $549b: $60
    nop                                           ; $549c: $00
    add b                                         ; $549d: $80
    jp nc, $c100                                  ; $549e: $d2 $00 $c1

    nop                                           ; $54a1: $00

jr_09f_54a2:
    ld [$f700], a                                 ; $54a2: $ea $00 $f7
    and b                                         ; $54a5: $a0
    ld c, h                                       ; $54a6: $4c
    ld bc, $8600                                  ; $54a7: $01 $00 $86
    nop                                           ; $54aa: $00
    dec d                                         ; $54ab: $15
    nop                                           ; $54ac: $00
    ld a, [hl+]                                   ; $54ad: $2a
    nop                                           ; $54ae: $00
    ld d, l                                       ; $54af: $55
    jr nz, jr_09f_54b2                            ; $54b0: $20 $00

jr_09f_54b2:
    ei                                            ; $54b2: $fb
    ret c                                         ; $54b3: $d8

    nop                                           ; $54b4: $00
    rst $38                                       ; $54b5: $ff
    nop                                           ; $54b6: $00
    inc de                                        ; $54b7: $13
    nop                                           ; $54b8: $00
    ld a, [hl+]                                   ; $54b9: $2a
    nop                                           ; $54ba: $00
    ld bc, $0057                                  ; $54bb: $01 $57 $00
    cp d                                          ; $54be: $ba
    ld bc, $016e                                  ; $54bf: $01 $6e $01

jr_09f_54c2:
    cp [hl]                                       ; $54c2: $be
    add b                                         ; $54c3: $80
    jp z, $ff00                                   ; $54c4: $ca $00 $ff

    ld bc, $c0b5                                  ; $54c7: $01 $b5 $c0
    xor l                                         ; $54ca: $ad
    ret nz                                        ; $54cb: $c0

    xor a                                         ; $54cc: $af
    ld [$bfc0], sp                                ; $54cd: $08 $c0 $bf
    ret nz                                        ; $54d0: $c0

    cp l                                          ; $54d1: $bd
    ld b, $10                                     ; $54d2: $06 $10
    or l                                          ; $54d4: $b5
    ret nz                                        ; $54d5: $c0

    ld l, l                                       ; $54d6: $6d
    nop                                           ; $54d7: $00
    ret nz                                        ; $54d8: $c0

    scf                                           ; $54d9: $37
    ret nz                                        ; $54da: $c0

    ld [hl], l                                    ; $54db: $75
    ret nz                                        ; $54dc: $c0

    ccf                                           ; $54dd: $3f
    ret nz                                        ; $54de: $c0

    dec sp                                        ; $54df: $3b
    jr nz, jr_09f_54a2                            ; $54e0: $20 $c0

    ld [hl], a                                    ; $54e2: $77
    inc b                                         ; $54e3: $04
    nop                                           ; $54e4: $00
    ld l, a                                       ; $54e5: $6f
    ret nz                                        ; $54e6: $c0

    ld [hl], l                                    ; $54e7: $75
    inc bc                                        ; $54e8: $03
    xor h                                         ; $54e9: $ac
    nop                                           ; $54ea: $00
    inc bc                                        ; $54eb: $03
    or l                                          ; $54ec: $b5
    inc bc                                        ; $54ed: $03
    ld l, h                                       ; $54ee: $6c
    inc bc                                        ; $54ef: $03
    or h                                          ; $54f0: $b4
    inc bc                                        ; $54f1: $03
    db $ec                                        ; $54f2: $ec
    jr nz, jr_09f_54f8                            ; $54f3: $20 $03

    db $fd                                        ; $54f5: $fd
    ld b, $00                                     ; $54f6: $06 $00

jr_09f_54f8:
    xor l                                         ; $54f8: $ad
    inc bc                                        ; $54f9: $03
    or a                                          ; $54fa: $b7
    inc bc                                        ; $54fb: $03
    push af                                       ; $54fc: $f5
    ld [bc], a                                    ; $54fd: $02
    inc bc                                        ; $54fe: $03
    rst $38                                       ; $54ff: $ff
    inc bc                                        ; $5500: $03
    cp l                                          ; $5501: $bd
    inc bc                                        ; $5502: $03
    rst $30                                       ; $5503: $f7
    stop                                          ; $5504: $10 $00
    xor l                                         ; $5506: $ad
    ld a, [hl+]                                   ; $5507: $2a
    inc bc                                        ; $5508: $03
    xor l                                         ; $5509: $ad
    ld a, [hl-]                                   ; $550a: $3a
    nop                                           ; $550b: $00
    or a                                          ; $550c: $b7
    ld b, b                                       ; $550d: $40
    db $10                                        ; $550e: $10
    or a                                          ; $550f: $b7
    ld c, b                                       ; $5510: $48
    nop                                           ; $5511: $00
    or l                                          ; $5512: $b5
    and d                                         ; $5513: $a2
    ld a, [hl-]                                   ; $5514: $3a
    nop                                           ; $5515: $00
    scf                                           ; $5516: $37
    inc b                                         ; $5517: $04
    db $10                                        ; $5518: $10
    scf                                           ; $5519: $37
    ret nz                                        ; $551a: $c0

    ld a, a                                       ; $551b: $7f
    ld b, [hl]                                    ; $551c: $46
    nop                                           ; $551d: $00
    ld l, e                                       ; $551e: $6b
    ld b, c                                       ; $551f: $41
    ret nz                                        ; $5520: $c0

    ld a, [hl-]                                   ; $5521: $3a
    ld [$036c], sp                                ; $5522: $08 $6c $03
    dec a                                         ; $5525: $3d
    inc bc                                        ; $5526: $03
    ld [hl], h                                    ; $5527: $74
    ld b, [hl]                                    ; $5528: $46
    nop                                           ; $5529: $00
    ld d, h                                       ; $552a: $54
    db $ec                                        ; $552b: $ec
    ld c, d                                       ; $552c: $4a
    nop                                           ; $552d: $00
    or l                                          ; $552e: $b5
    ld a, [hl-]                                   ; $552f: $3a
    nop                                           ; $5530: $00
    db $ed                                        ; $5531: $ed
    ld c, d                                       ; $5532: $4a
    nop                                           ; $5533: $00
    cp l                                          ; $5534: $bd
    inc bc                                        ; $5535: $03
    ld l, d                                       ; $5536: $6a
    rst $28                                       ; $5537: $ef
    ld c, b                                       ; $5538: $48
    nop                                           ; $5539: $00
    ld b, b                                       ; $553a: $40
    ld [$80b5], sp                                ; $553b: $08 $b5 $80
    nop                                           ; $553e: $00
    cp l                                          ; $553f: $bd
    add [hl]                                      ; $5540: $86
    nop                                           ; $5541: $00
    cp a                                          ; $5542: $bf
    and b                                         ; $5543: $a0
    ld [$b710], sp                                ; $5544: $08 $10 $b7
    ld h, d                                       ; $5547: $62
    nop                                           ; $5548: $00
    push af                                       ; $5549: $f5
    inc bc                                        ; $554a: $03
    rst $08                                       ; $554b: $cf
    inc bc                                        ; $554c: $03
    add l                                         ; $554d: $85
    nop                                           ; $554e: $00
    inc bc                                        ; $554f: $03
    rlc a                                         ; $5550: $cb $07
    or c                                          ; $5552: $b1
    ld c, a                                       ; $5553: $4f
    bit 7, a                                      ; $5554: $cb $7f
    cp a                                          ; $5556: $bf
    ldh [rNR30], a                                ; $5557: $e0 $1a
    jr nz, jr_09f_557b                            ; $5559: $20 $20

    ld [$086a], sp                                ; $555b: $08 $6a $08
    or c                                          ; $555e: $b1
    ld a, a                                       ; $555f: $7f
    add l                                         ; $5560: $85
    dec sp                                        ; $5561: $3b
    db $fd                                        ; $5562: $fd
    and b                                         ; $5563: $a0
    add d                                         ; $5564: $82
    nop                                           ; $5565: $00
    or l                                          ; $5566: $b5
    ld b, h                                       ; $5567: $44
    jr nz, jr_09f_55e9                            ; $5568: $20 $7f

    add b                                         ; $556a: $80
    ld e, a                                       ; $556b: $5f
    add b                                         ; $556c: $80
    ld a, a                                       ; $556d: $7f
    ld b, b                                       ; $556e: $40
    add b                                         ; $556f: $80
    jr nc, jr_09f_5574                            ; $5570: $30 $02

    add b                                         ; $5572: $80
    adc d                                         ; $5573: $8a

jr_09f_5574:
    nop                                           ; $5574: $00
    ld b, c                                       ; $5575: $41
    add b                                         ; $5576: $80
    adc b                                         ; $5577: $88
    and b                                         ; $5578: $a0
    jr nc, jr_09f_55cd                            ; $5579: $30 $52

jr_09f_557b:
    ld de, $022d                                  ; $557b: $11 $2d $02
    rst $38                                       ; $557e: $ff
    add b                                         ; $557f: $80
    ccf                                           ; $5580: $3f
    ret nz                                        ; $5581: $c0

    push hl                                       ; $5582: $e5
    add b                                         ; $5583: $80
    ld [hl+], a                                   ; $5584: $22
    nop                                           ; $5585: $00
    add b                                         ; $5586: $80
    rst $38                                       ; $5587: $ff
    ld [hl], e                                    ; $5588: $73
    add b                                         ; $5589: $80
    cp a                                          ; $558a: $bf
    ret nz                                        ; $558b: $c0

    ld a, d                                       ; $558c: $7a
    nop                                           ; $558d: $00
    add b                                         ; $558e: $80
    or h                                          ; $558f: $b4
    ret nz                                        ; $5590: $c0

    ld a, a                                       ; $5591: $7f
    add b                                         ; $5592: $80
    xor b                                         ; $5593: $a8
    rst $10                                       ; $5594: $d7
    ld [hl-], a                                   ; $5595: $32
    nop                                           ; $5596: $00
    ret nz                                        ; $5597: $c0

    rst $38                                       ; $5598: $ff
    add b                                         ; $5599: $80
    dec [hl]                                      ; $559a: $35
    ret nz                                        ; $559b: $c0

    xor d                                         ; $559c: $aa
    ret nc                                        ; $559d: $d0

    dec d                                         ; $559e: $15
    inc h                                         ; $559f: $24
    ld [$5a80], a                                 ; $55a0: $ea $80 $5a
    ld bc, $0080                                  ; $55a3: $01 $80 $00
    ld h, b                                       ; $55a6: $60
    add hl, bc                                    ; $55a7: $09
    ld b, b                                       ; $55a8: $40
    add b                                         ; $55a9: $80
    add b                                         ; $55aa: $80
    inc b                                         ; $55ab: $04
    ld [$ff00], sp                                ; $55ac: $08 $00 $ff
    ld a, a                                       ; $55af: $7f
    rst $38                                       ; $55b0: $ff
    ld b, b                                       ; $55b1: $40
    rst $38                                       ; $55b2: $ff
    ld b, b                                       ; $55b3: $40
    nop                                           ; $55b4: $00
    cp $41                                        ; $55b5: $fe $41
    db $fd                                        ; $55b7: $fd
    ld b, e                                       ; $55b8: $43
    rst $38                                       ; $55b9: $ff
    ld b, a                                       ; $55ba: $47
    cp $4d                                        ; $55bb: $fe $4d
    jr nz, @-$01                                  ; $55bd: $20 $fd

    ret nz                                        ; $55bf: $c0

    jr jr_09f_55c2                                ; $55c0: $18 $00

jr_09f_55c2:
    ld b, b                                       ; $55c2: $40
    add b                                         ; $55c3: $80
    ld l, b                                       ; $55c4: $68
    add b                                         ; $55c5: $80
    ld [hl], h                                    ; $55c6: $74
    ld [$5a80], sp                                ; $55c7: $08 $80 $5a
    add b                                         ; $55ca: $80
    rst $38                                       ; $55cb: $ff
    ld l, d                                       ; $55cc: $6a

jr_09f_55cd:
    nop                                           ; $55cd: $00
    ld a, d                                       ; $55ce: $7a
    sbc $75                                       ; $55cf: $de $75
    ld [bc], a                                    ; $55d1: $02
    cp $6a                                        ; $55d2: $fe $6a
    db $fd                                        ; $55d4: $fd
    ld d, l                                       ; $55d5: $55
    ld a, [$997f]                                 ; $55d6: $fa $7f $99
    ld [bc], a                                    ; $55d9: $02
    ld a, a                                       ; $55da: $7f
    nop                                           ; $55db: $00
    rst $38                                       ; $55dc: $ff
    ld b, c                                       ; $55dd: $41
    rst $38                                       ; $55de: $ff
    rst $30                                       ; $55df: $f7
    ld [$22dd], sp                                ; $55e0: $08 $dd $22
    xor d                                         ; $55e3: $aa
    nop                                           ; $55e4: $00
    ld d, l                                       ; $55e5: $55
    ld d, h                                       ; $55e6: $54
    xor e                                         ; $55e7: $ab
    and b                                         ; $55e8: $a0

jr_09f_55e9:
    ld e, a                                       ; $55e9: $5f
    add hl, bc                                    ; $55ea: $09
    rst $30                                       ; $55eb: $f7
    and d                                         ; $55ec: $a2
    nop                                           ; $55ed: $00
    rst $38                                       ; $55ee: $ff
    push de                                       ; $55ef: $d5
    rst $38                                       ; $55f0: $ff
    ld a, l                                       ; $55f1: $7d
    add d                                         ; $55f2: $82
    or $09                                        ; $55f3: $f6 $09
    xor c                                         ; $55f5: $a9
    nop                                           ; $55f6: $00
    ld d, [hl]                                    ; $55f7: $56
    ld d, d                                       ; $55f8: $52
    xor l                                         ; $55f9: $ad
    nop                                           ; $55fa: $00
    rst $38                                       ; $55fb: $ff
    ld b, h                                       ; $55fc: $44
    rst $38                                       ; $55fd: $ff
    xor d                                         ; $55fe: $aa
    add b                                         ; $55ff: $80
    stop                                          ; $5600: $10 $00
    ret                                           ; $5602: $c9


    add b                                         ; $5603: $80
    add b                                         ; $5604: $80
    ret nz                                        ; $5605: $c0

    jp hl                                         ; $5606: $e9


    ld b, b                                       ; $5607: $40
    ret nz                                        ; $5608: $c0

    nop                                           ; $5609: $00
    ld h, b                                       ; $560a: $60
    ld a, [c]                                     ; $560b: $f2
    and b                                         ; $560c: $a0
    jr nz, jr_09f_563f                            ; $560d: $20 $30

    add hl, sp                                    ; $560f: $39
    db $10                                        ; $5610: $10
    rla                                           ; $5611: $17
    nop                                           ; $5612: $00
    ld e, $fb                                     ; $5613: $1e $fb
    sub h                                         ; $5615: $94
    sbc a                                         ; $5616: $9f
    db $e4                                        ; $5617: $e4
    db $fd                                        ; $5618: $fd
    ld b, d                                       ; $5619: $42
    ld d, a                                       ; $561a: $57
    nop                                           ; $561b: $00
    ld l, c                                       ; $561c: $69
    ld a, l                                       ; $561d: $7d
    ld [hl+], a                                   ; $561e: $22
    cpl                                           ; $561f: $2f
    inc [hl]                                      ; $5620: $34
    db $ed                                        ; $5621: $ed
    jp nc, Jump_000_00b6                          ; $5622: $d2 $b6 $00

    ld e, c                                       ; $5625: $59
    sbc l                                         ; $5626: $9d
    ld a, [bc]                                    ; $5627: $0a
    dec hl                                        ; $5628: $2b
    inc c                                         ; $5629: $0c
    rrca                                          ; $562a: $0f
    inc b                                         ; $562b: $04
    add l                                         ; $562c: $85
    nop                                           ; $562d: $00
    ld b, $27                                     ; $562e: $06 $27
    ld [bc], a                                    ; $5630: $02
    ld [bc], a                                    ; $5631: $02
    inc bc                                        ; $5632: $03
    adc e                                         ; $5633: $8b
    ld bc, $0021                                  ; $5634: $01 $21 $00
    add c                                         ; $5637: $81
    ld a, a                                       ; $5638: $7f
    adc b                                         ; $5639: $88
    db $db                                        ; $563a: $db
    xor a                                         ; $563b: $af
    cp d                                          ; $563c: $ba
    ld b, h                                       ; $563d: $44
    ld l, b                                       ; $563e: $68

jr_09f_563f:
    nop                                           ; $563f: $00
    sub [hl]                                      ; $5640: $96
    rst $38                                       ; $5641: $ff
    ld [hl+], a                                   ; $5642: $22
    or h                                          ; $5643: $b4
    ld c, e                                       ; $5644: $4b
    rst $38                                       ; $5645: $ff
    ld bc, $006d                                  ; $5646: $01 $6d $00
    or e                                          ; $5649: $b3
    jp $b086                                      ; $564a: $c3 $86 $b0


    ldh a, [$62]                                  ; $564d: $f0 $62
    ret nz                                        ; $564f: $c0

    ld b, h                                       ; $5650: $44
    nop                                           ; $5651: $00
    ldh [$b0], a                                  ; $5652: $e0 $b0
    ld h, b                                       ; $5654: $60
    ld [hl+], a                                   ; $5655: $22
    ldh a, [$d8]                                  ; $5656: $f0 $d8
    ldh a, [rNR12]                                ; $5658: $f0 $12
    nop                                           ; $565a: $00
    ld hl, sp-$09                                 ; $565b: $f8 $f7
    adc [hl]                                      ; $565d: $8e
    dec l                                         ; $565e: $2d
    ld a, [c]                                     ; $565f: $f2
    rst $28                                       ; $5660: $ef
    ld d, h                                       ; $5661: $54
    ld e, l                                       ; $5662: $5d
    nop                                           ; $5663: $00
    ld h, d                                       ; $5664: $62
    ld a, e                                       ; $5665: $7b
    inc h                                         ; $5666: $24
    xor a                                         ; $5667: $af
    ld [hl-], a                                   ; $5668: $32
    cpl                                           ; $5669: $2f
    db $10                                        ; $566a: $10
    ld d, l                                       ; $566b: $55
    nop                                           ; $566c: $00
    ld a, [de]                                    ; $566d: $1a
    rst $38                                       ; $566e: $ff
    nop                                           ; $566f: $00
    db $fd                                        ; $5670: $fd
    ld [bc], a                                    ; $5671: $02
    ld e, a                                       ; $5672: $5f
    and b                                         ; $5673: $a0
    xor d                                         ; $5674: $aa
    nop                                           ; $5675: $00
    ld d, l                                       ; $5676: $55
    dec d                                         ; $5677: $15
    ld [$fd02], a                                 ; $5678: $ea $02 $fd
    xor b                                         ; $567b: $a8
    rst $38                                       ; $567c: $ff
    cp $00                                        ; $567d: $fe $00
    rst $38                                       ; $567f: $ff
    db $fd                                        ; $5680: $fd
    ld [bc], a                                    ; $5681: $02
    cp $01                                        ; $5682: $fe $01
    cp e                                          ; $5684: $bb
    ld b, h                                       ; $5685: $44
    push af                                       ; $5686: $f5
    nop                                           ; $5687: $00
    ld a, [bc]                                    ; $5688: $0a
    ld c, d                                       ; $5689: $4a
    or l                                          ; $568a: $b5
    nop                                           ; $568b: $00
    rst $38                                       ; $568c: $ff
    ld d, l                                       ; $568d: $55
    rst $38                                       ; $568e: $ff
    xor [hl]                                      ; $568f: $ae
    nop                                           ; $5690: $00
    rst $38                                       ; $5691: $ff
    rst $38                                       ; $5692: $ff
    nop                                           ; $5693: $00
    sbc $21                                       ; $5694: $de $21
    or l                                          ; $5696: $b5
    ld c, d                                       ; $5697: $4a
    ld c, d                                       ; $5698: $4a
    ld [$80b5], sp                                ; $5699: $08 $b5 $80
    ld a, a                                       ; $569c: $7f
    ld a, [hl+]                                   ; $569d: $2a
    stop                                          ; $569e: $10 $00
    cp a                                          ; $56a0: $bf
    rst $38                                       ; $56a1: $ff
    cp $00                                        ; $56a2: $fe $00
    ld bc, $03fd                                  ; $56a4: $01 $fd $03
    ld e, [hl]                                    ; $56a7: $5e
    and c                                         ; $56a8: $a1
    xor e                                         ; $56a9: $ab
    ld d, l                                       ; $56aa: $55
    dec d                                         ; $56ab: $15
    ld [$03eb], sp                                ; $56ac: $08 $eb $03
    db $fd                                        ; $56af: $fd
    xor c                                         ; $56b0: $a9
    adc l                                         ; $56b1: $8d
    inc bc                                        ; $56b2: $03
    db $eb                                        ; $56b3: $eb
    sub h                                         ; $56b4: $94
    cp a                                          ; $56b5: $bf
    nop                                           ; $56b6: $00
    ret nz                                        ; $56b7: $c0

    xor $53                                       ; $56b8: $ee $53
    call c, $f078                                 ; $56ba: $dc $78 $f0
    jr nz, jr_09f_5723                            ; $56bd: $20 $64

    nop                                           ; $56bf: $00
    or b                                          ; $56c0: $b0

jr_09f_56c1:
    ld hl, sp-$70                                 ; $56c1: $f8 $90
    pop af                                        ; $56c3: $f1
    jr jr_09f_56c1                                ; $56c4: $18 $fb

    adc h                                         ; $56c6: $8c
    xor a                                         ; $56c7: $af
    nop                                           ; $56c8: $00
    ret nc                                        ; $56c9: $d0

    cp l                                          ; $56ca: $bd
    ld b, d                                       ; $56cb: $42
    ld e, a                                       ; $56cc: $5f
    ld l, b                                       ; $56cd: $68
    ld a, d                                       ; $56ce: $7a
    dec h                                         ; $56cf: $25
    cpl                                           ; $56d0: $2f
    nop                                           ; $56d1: $00
    jr nc, jr_09f_5713                            ; $56d2: $30 $3f

    ld de, $1807                                  ; $56d4: $11 $07 $18
    xor d                                         ; $56d7: $aa
    rst $10                                       ; $56d8: $d7
    add b                                         ; $56d9: $80
    nop                                           ; $56da: $00
    rst $38                                       ; $56db: $ff
    jp nc, $c87d                                  ; $56dc: $d2 $7d $c8

    ld [hl], a                                    ; $56df: $77
    ld [c], a                                     ; $56e0: $e2
    ccf                                           ; $56e1: $3f
    ld h, h                                       ; $56e2: $64
    nop                                           ; $56e3: $00
    cp e                                          ; $56e4: $bb
    ldh a, [$5f]                                  ; $56e5: $f0 $5f
    halt                                          ; $56e7: $76
    sbc [hl]                                      ; $56e8: $9e
    pop bc                                        ; $56e9: $c1
    add b                                         ; $56ea: $80
    adc b                                         ; $56eb: $88
    nop                                           ; $56ec: $00
    ret nz                                        ; $56ed: $c0

    ld [hl+], a                                   ; $56ee: $22
    ret nz                                        ; $56ef: $c0

    ld b, b                                       ; $56f0: $40
    ldh [$b2], a                                  ; $56f1: $e0 $b2
    ld h, b                                       ; $56f3: $60
    jr nz, jr_09f_56f6                            ; $56f4: $20 $00

jr_09f_56f6:
    ldh a, [$78]                                  ; $56f6: $f0 $78

jr_09f_56f8:
    ret nc                                        ; $56f8: $d0

    db $10                                        ; $56f9: $10
    jr jr_09f_56f8                                ; $56fa: $18 $fc

    ld l, b                                       ; $56fc: $68
    ld [$0c02], sp                                ; $56fd: $08 $02 $0c

Jump_09f_5700:
    adc [hl]                                      ; $5700: $8e
    inc b                                         ; $5701: $04
    inc h                                         ; $5702: $24
    ld b, $47                                     ; $5703: $06 $47
    ret nz                                        ; $5705: $c0

    nop                                           ; $5706: $00
    sub e                                         ; $5707: $93
    nop                                           ; $5708: $00
    ld bc, $8101                                  ; $5709: $01 $01 $81
    dec e                                         ; $570c: $1d
    ld a, [bc]                                    ; $570d: $0a
    dec bc                                        ; $570e: $0b
    inc c                                         ; $570f: $0c
    cpl                                           ; $5710: $2f
    add d                                         ; $5711: $82
    add h                                         ; $5712: $84

jr_09f_5713:
    inc bc                                        ; $5713: $03
    rlca                                          ; $5714: $07
    ld [bc], a                                    ; $5715: $02
    ld [de], a                                    ; $5716: $12
    inc bc                                        ; $5717: $03
    add e                                         ; $5718: $83
    ret nc                                        ; $5719: $d0

    nop                                           ; $571a: $00
    cp h                                          ; $571b: $bc
    nop                                           ; $571c: $00
    ld c, b                                       ; $571d: $48
    ld a, b                                       ; $571e: $78
    xor h                                         ; $571f: $ac
    sbc $24                                       ; $5720: $de $24
    ld [hl], h                                    ; $5722: $74

jr_09f_5723:
    adc [hl]                                      ; $5723: $8e
    db $db                                        ; $5724: $db
    nop                                           ; $5725: $00
    ld a, $c2                                     ; $5726: $3e $c2
    rst $38                                       ; $5728: $ff
    add hl, de                                    ; $5729: $19
    rst $30                                       ; $572a: $f7
    dec b                                         ; $572b: $05
    ei                                            ; $572c: $fb
    dec e                                         ; $572d: $1d
    ld a, [hl+]                                   ; $572e: $2a
    ld [$a488], sp                                ; $572f: $08 $88 $a4
    inc bc                                        ; $5732: $03
    inc d                                         ; $5733: $14
    jr nz, jr_09f_5736                            ; $5734: $20 $00

jr_09f_5736:
    ld [hl+], a                                   ; $5736: $22
    jr nz, jr_09f_5739                            ; $5737: $20 $00

jr_09f_5739:
    dec b                                         ; $5739: $05
    nop                                           ; $573a: $00
    add c                                         ; $573b: $81
    push bc                                       ; $573c: $c5
    add b                                         ; $573d: $80
    sub b                                         ; $573e: $90
    ret nz                                        ; $573f: $c0

    and b                                         ; $5740: $a0
    ld b, b                                       ; $5741: $40
    jp nz, Jump_09f_6000                          ; $5742: $c2 $00 $60

    ld d, c                                       ; $5745: $51
    and c                                         ; $5746: $a1
    add sp, $3f                                   ; $5747: $e8 $3f
    ld [hl], b                                    ; $5749: $70
    sbc a                                         ; $574a: $9f
    or $20                                        ; $574b: $f6 $20
    dec de                                        ; $574d: $1b
    push bc                                       ; $574e: $c5
    jr nc, jr_09f_5752                            ; $574f: $30 $01

    db $e4                                        ; $5751: $e4

jr_09f_5752:
    ld b, b                                       ; $5752: $40
    ld [bc], a                                    ; $5753: $02
    ld h, b                                       ; $5754: $60
    jr nc, jr_09f_5757                            ; $5755: $30 $00

jr_09f_5757:
    ldh [rDIV], a                                 ; $5757: $e0 $04
    ldh a, [$9a]                                  ; $5759: $f0 $9a
    ld [hl], c                                    ; $575b: $71
    ld b, c                                       ; $575c: $41
    cp [hl]                                       ; $575d: $be
    and b                                         ; $575e: $a0
    nop                                           ; $575f: $00
    rst $18                                       ; $5760: $df
    adc b                                         ; $5761: $88
    rst $38                                       ; $5762: $ff
    jp z, Jump_09f_4475                           ; $5763: $ca $75 $44

    ld a, e                                       ; $5766: $7b
    ld h, b                                       ; $5767: $60
    nop                                           ; $5768: $00
    ccf                                           ; $5769: $3f
    add b                                         ; $576a: $80
    ld a, a                                       ; $576b: $7f
    ld [hl], h                                    ; $576c: $74
    db $db                                        ; $576d: $db
    ldh a, [$1f]                                  ; $576e: $f0 $1f
    pop de                                        ; $5770: $d1
    adc b                                         ; $5771: $88
    ld d, b                                       ; $5772: $50
    ld bc, $c062                                  ; $5773: $01 $62 $c0
    inc b                                         ; $5776: $04
    db $10                                        ; $5777: $10
    ld bc, $f020                                  ; $5778: $01 $20 $f0
    sbc c                                         ; $577b: $99
    inc c                                         ; $577c: $0c
    ldh a, [rP1]                                  ; $577d: $f0 $00
    ld hl, sp-$4b                                 ; $577f: $f8 $b5
    cp h                                          ; $5781: $bc
    ld [bc], a                                    ; $5782: $02
    add b                                         ; $5783: $80
    ld a, [bc]                                    ; $5784: $0a
    cp a                                          ; $5785: $bf
    ret nz                                        ; $5786: $c0

    ld b, l                                       ; $5787: $45
    xor e                                         ; $5788: $ab
    ret z                                         ; $5789: $c8

    ld [bc], a                                    ; $578a: $02
    xor d                                         ; $578b: $aa
    rst $38                                       ; $578c: $ff
    cpl                                           ; $578d: $2f
    ld a, b                                       ; $578e: $78
    ld [bc], a                                    ; $578f: $02
    cpl                                           ; $5790: $2f
    ret nz                                        ; $5791: $c0

    ld [bc], a                                    ; $5792: $02
    ld b, c                                       ; $5793: $41
    ccf                                           ; $5794: $3f
    ret nz                                        ; $5795: $c0

    ld [bc], a                                    ; $5796: $02
    inc sp                                        ; $5797: $33
    ret nz                                        ; $5798: $c0

    and b                                         ; $5799: $a0
    rst $38                                       ; $579a: $ff
    db $ed                                        ; $579b: $ed
    ld a, d                                       ; $579c: $7a
    ld [bc], a                                    ; $579d: $02
    ld b, h                                       ; $579e: $44
    cp l                                          ; $579f: $bd
    ld a, [hl]                                    ; $57a0: $7e
    ld [bc], a                                    ; $57a1: $02
    db $f4                                        ; $57a2: $f4
    inc bc                                        ; $57a3: $03
    ld l, l                                       ; $57a4: $6d
    inc b                                         ; $57a5: $04
    nop                                           ; $57a6: $00
    dec b                                         ; $57a7: $05
    rst $38                                       ; $57a8: $ff
    ld d, c                                       ; $57a9: $51
    xor l                                         ; $57aa: $ad
    cp h                                          ; $57ab: $bc
    ld [bc], a                                    ; $57ac: $02
    db $ed                                        ; $57ad: $ed
    ret nz                                        ; $57ae: $c0

    ld [bc], a                                    ; $57af: $02
    db $fd                                        ; $57b0: $fd
    inc bc                                        ; $57b1: $03
    push de                                       ; $57b2: $d5
    ret z                                         ; $57b3: $c8

    ld [bc], a                                    ; $57b4: $02
    nop                                           ; $57b5: $00
    ld d, l                                       ; $57b6: $55
    rst $38                                       ; $57b7: $ff
    rst $10                                       ; $57b8: $d7
    xor b                                         ; $57b9: $a8
    cp l                                          ; $57ba: $bd
    jp nz, Jump_09f_48b7                          ; $57bb: $c2 $b7 $48

    nop                                           ; $57be: $00
    rra                                           ; $57bf: $1f
    ld h, b                                       ; $57c0: $60
    ld a, [hl]                                    ; $57c1: $7e
    ld hl, $342b                                  ; $57c2: $21 $2b $34
    cp l                                          ; $57c5: $bd
    ld [de], a                                    ; $57c6: $12
    nop                                           ; $57c7: $00
    rla                                           ; $57c8: $17
    jr jr_09f_5838                                ; $57c9: $18 $6d

    sub d                                         ; $57cb: $92
    dec sp                                        ; $57cc: $3b
    call nz, Call_09f_41fe                        ; $57cd: $c4 $fe $41
    nop                                           ; $57d0: $00
    rst $10                                       ; $57d1: $d7
    ld l, b                                       ; $57d2: $68
    db $fd                                        ; $57d3: $fd
    inc hl                                        ; $57d4: $23
    db $ec                                        ; $57d5: $ec
    inc a                                         ; $57d6: $3c
    cp b                                          ; $57d7: $b8
    ld d, b                                       ; $57d8: $50
    nop                                           ; $57d9: $00
    pop af                                        ; $57da: $f1
    jr jr_09f_57fc                                ; $57db: $18 $1f

    ld [$0d2a], sp                                ; $57dd: $08 $2a $0d
    rrca                                          ; $57e0: $0f
    inc b                                         ; $57e1: $04
    ld [$0704], sp                                ; $57e2: $08 $04 $07
    ld h, $03                                     ; $57e5: $26 $03
    and b                                         ; $57e7: $a0
    add hl, bc                                    ; $57e8: $09
    db $10                                        ; $57e9: $10
    add c                                         ; $57ea: $81
    call c, Call_000_2800                         ; $57eb: $dc $00 $28
    ld hl, sp+$0c                                 ; $57ee: $f8 $0c
    or [hl]                                       ; $57f0: $b6
    ld a, h                                       ; $57f1: $7c
    add b                                         ; $57f2: $80
    cp $1b                                        ; $57f3: $fe $1b
    nop                                           ; $57f5: $00
    or $80                                        ; $57f6: $f6 $80
    ld a, a                                       ; $57f8: $7f
    dec h                                         ; $57f9: $25
    rst $18                                       ; $57fa: $df
    add hl, bc                                    ; $57fb: $09

jr_09f_57fc:
    rst $30                                       ; $57fc: $f7
    rst $00                                       ; $57fd: $c7
    nop                                           ; $57fe: $00
    add [hl]                                      ; $57ff: $86
    cp a                                          ; $5800: $bf
    ldh a, [$f7]                                  ; $5801: $f0 $f7
    ld c, b                                       ; $5803: $48
    ld e, [hl]                                    ; $5804: $5e
    ld h, l                                       ; $5805: $65
    ld a, a                                       ; $5806: $7f
    ld [$2b20], sp                                ; $5807: $08 $20 $2b
    inc [hl]                                      ; $580a: $34
    ccf                                           ; $580b: $3f
    ld b, b                                       ; $580c: $40
    nop                                           ; $580d: $00
    sub d                                         ; $580e: $92
    db $ed                                        ; $580f: $ed
    sub b                                         ; $5810: $90
    nop                                           ; $5811: $00
    rst $38                                       ; $5812: $ff
    pop bc                                        ; $5813: $c1
    ld a, [hl]                                    ; $5814: $7e
    push bc                                       ; $5815: $c5

jr_09f_5816:
    ld a, e                                       ; $5816: $7b
    add sp, $37                                   ; $5817: $e8 $37
    ld b, d                                       ; $5819: $42
    nop                                           ; $581a: $00
    cp l                                          ; $581b: $bd
    ldh a, [$1f]                                  ; $581c: $f0 $1f
    or $1f                                        ; $581e: $f6 $1f
    rst $30                                       ; $5820: $f7
    adc b                                         ; $5821: $88
    ld e, l                                       ; $5822: $5d
    nop                                           ; $5823: $00
    and d                                         ; $5824: $a2
    xor d                                         ; $5825: $aa
    push de                                       ; $5826: $d5
    call nc, $a0ab                                ; $5827: $d4 $ab $a0
    rst $18                                       ; $582a: $df
    adc c                                         ; $582b: $89
    add b                                         ; $582c: $80
    jr nz, jr_09f_5841                            ; $582d: $20 $12

    ld b, d                                       ; $582f: $42
    rst $38                                       ; $5830: $ff
    ld b, l                                       ; $5831: $45
    rst $38                                       ; $5832: $ff
    ld c, d                                       ; $5833: $4a
    rst $38                                       ; $5834: $ff
    ld d, [hl]                                    ; $5835: $56
    nop                                           ; $5836: $00
    db $fd                                        ; $5837: $fd

jr_09f_5838:
    ld l, b                                       ; $5838: $68
    rst $38                                       ; $5839: $ff
    ld [hl], b                                    ; $583a: $70
    rst $18                                       ; $583b: $df
    ld h, b                                       ; $583c: $60
    rst $38                                       ; $583d: $ff
    ld l, d                                       ; $583e: $6a
    jr jr_09f_5816                                ; $583f: $18 $d5

jr_09f_5841:
    ld d, l                                       ; $5841: $55
    ld [$1a4a], a                                 ; $5842: $ea $4a $1a
    ld [hl], h                                    ; $5845: $74
    ld [bc], a                                    ; $5846: $02
    rst $38                                       ; $5847: $ff
    ld b, d                                       ; $5848: $42
    db $fd                                        ; $5849: $fd
    ld [bc], a                                    ; $584a: $02
    ld b, b                                       ; $584b: $40
    db $fc                                        ; $584c: $fc
    ld b, d                                       ; $584d: $42
    db $fc                                        ; $584e: $fc
    ld b, c                                       ; $584f: $41
    cp $0c                                        ; $5850: $fe $0c
    ld [$2069], sp                                ; $5852: $08 $69 $20
    rst $10                                       ; $5855: $d7
    ld d, a                                       ; $5856: $57
    ld a, [de]                                    ; $5857: $1a
    db $10                                        ; $5858: $10
    ld c, h                                       ; $5859: $4c
    cp b                                          ; $585a: $b8
    add hl, bc                                    ; $585b: $09
    db $fc                                        ; $585c: $fc
    ld b, [hl]                                    ; $585d: $46
    nop                                           ; $585e: $00
    cp h                                          ; $585f: $bc
    sub b                                         ; $5860: $90
    ld a, [hl]                                    ; $5861: $7e
    ld b, c                                       ; $5862: $41
    cp [hl]                                       ; $5863: $be
    ld a, [bc]                                    ; $5864: $0a
    rst $30                                       ; $5865: $f7
    ld sp, $ef00                                  ; $5866: $31 $00 $ef
    inc c                                         ; $5869: $0c
    rst $30                                       ; $586a: $f7
    ld d, $09                                     ; $586b: $16 $09
    inc bc                                        ; $586d: $03
    inc c                                         ; $586e: $0c
    ld c, a                                       ; $586f: $4f
    jr z, @+$06                                   ; $5870: $28 $04

    ld hl, $0160                                  ; $5872: $21 $60 $01
    jr nz, jr_09f_58d7                            ; $5875: $20 $60

    ld bc, $8110                                  ; $5877: $01 $10 $81
    and b                                         ; $587a: $a0
    nop                                           ; $587b: $00
    rst $18                                       ; $587c: $df
    adc d                                         ; $587d: $8a
    db $fd                                        ; $587e: $fd
    ret z                                         ; $587f: $c8

    ld [hl], a                                    ; $5880: $77
    pop bc                                        ; $5881: $c1
    ld a, [hl]                                    ; $5882: $7e
    ld l, d                                       ; $5883: $6a
    nop                                           ; $5884: $00
    cp l                                          ; $5885: $bd
    ldh [$3f], a                                  ; $5886: $e0 $3f
    or b                                          ; $5888: $b0
    ld e, a                                       ; $5889: $5f
    rst $20                                       ; $588a: $e7
    ld e, $c2                                     ; $588b: $1e $c2
    jr nz, jr_09f_5816                            ; $588d: $20 $87

    sub b                                         ; $588f: $90
    ld c, b                                       ; $5890: $48
    nop                                           ; $5891: $00
    ld c, c                                       ; $5892: $49
    or $24                                        ; $5893: $f6 $24
    rst $38                                       ; $5895: $ff
    jr nz, jr_09f_5898                            ; $5896: $20 $00

jr_09f_5898:
    rst $38                                       ; $5898: $ff
    db $f4                                        ; $5899: $f4
    db $db                                        ; $589a: $db
    ld [hl], c                                    ; $589b: $71
    sbc [hl]                                      ; $589c: $9e
    ld [hl], a                                    ; $589d: $77
    ret z                                         ; $589e: $c8

    xor e                                         ; $589f: $ab
    nop                                           ; $58a0: $00
    ld e, h                                       ; $58a1: $5c
    cp [hl]                                       ; $58a2: $be
    ld [hl], l                                    ; $58a3: $75
    add l                                         ; $58a4: $85
    add [hl]                                      ; $58a5: $86
    rla                                           ; $58a6: $17
    ld [bc], a                                    ; $58a7: $02
    ld b, d                                       ; $58a8: $42
    add b                                         ; $58a9: $80
    and b                                         ; $58aa: $a0
    ld bc, $8105                                  ; $58ab: $01 $05 $81
    ld a, [$b92f]                                 ; $58ae: $fa $2f $b9
    ld c, [hl]                                    ; $58b1: $4e
    ld hl, sp+$00                                 ; $58b2: $f8 $00
    rlca                                          ; $58b4: $07
    add sp, -$69                                  ; $58b5: $e8 $97
    cp [hl]                                       ; $58b7: $be
    ld d, e                                       ; $58b8: $53
    or $0b                                        ; $58b9: $f6 $0b
    rst $28                                       ; $58bb: $ef
    nop                                           ; $58bc: $00

jr_09f_58bd:
    ld de, $837c                                  ; $58bd: $11 $7c $83
    ei                                            ; $58c0: $fb
    inc d                                         ; $58c1: $14
    rst $18                                       ; $58c2: $df
    and b                                         ; $58c3: $a0
    rst $38                                       ; $58c4: $ff
    nop                                           ; $58c5: $00
    ld b, b                                       ; $58c6: $40
    ld d, a                                       ; $58c7: $57
    jr z, @+$01                                   ; $58c8: $28 $ff

    nop                                           ; $58ca: $00
    ld a, a                                       ; $58cb: $7f
    jr nz, jr_09f_58bd                            ; $58cc: $20 $ef

    nop                                           ; $58ce: $00
    ld d, b                                       ; $58cf: $50
    rst $30                                       ; $58d0: $f7
    ld [$4fb8], sp                                ; $58d1: $08 $b8 $4f
    ld sp, hl                                     ; $58d4: $f9
    ld l, $f8                                     ; $58d5: $2e $f8

jr_09f_58d7:
    nop                                           ; $58d7: $00
    ld b, a                                       ; $58d8: $47
    ld e, h                                       ; $58d9: $5c
    and a                                         ; $58da: $a7
    cp [hl]                                       ; $58db: $be
    ld d, e                                       ; $58dc: $53
    db $f4                                        ; $58dd: $f4
    dec hl                                        ; $58de: $2b
    cp $00                                        ; $58df: $fe $00
    ld bc, $b35d                                  ; $58e1: $01 $5d $b3
    rlca                                          ; $58e4: $07
    ld hl, sp+$2a                                 ; $58e5: $f8 $2a
    db $dd                                        ; $58e7: $dd
    rlca                                          ; $58e8: $07
    nop                                           ; $58e9: $00
    db $fc                                        ; $58ea: $fc
    or c                                          ; $58eb: $b1
    ld l, [hl]                                    ; $58ec: $6e
    inc bc                                        ; $58ed: $03
    cp $12                                        ; $58ee: $fe $12
    rst $28                                       ; $58f0: $ef
    and c                                         ; $58f1: $a1
    nop                                           ; $58f2: $00
    ld a, a                                       ; $58f3: $7f
    dec b                                         ; $58f4: $05
    ei                                            ; $58f5: $fb
    ld a, d                                       ; $58f6: $7a
    adc l                                         ; $58f7: $8d
    reti                                          ; $58f8: $d9


    cpl                                           ; $58f9: $2f
    db $fc                                        ; $58fa: $fc
    ld [bc], a                                    ; $58fb: $02
    add a                                         ; $58fc: $87
    db $fc                                        ; $58fd: $fc
    rla                                           ; $58fe: $17
    ld e, [hl]                                    ; $58ff: $5e
    and e                                         ; $5900: $a3
    db $f4                                        ; $5901: $f4
    and b                                         ; $5902: $a0
    ld [bc], a                                    ; $5903: $02
    ld e, l                                       ; $5904: $5d
    nop                                           ; $5905: $00
    and e                                         ; $5906: $a3
    inc l                                         ; $5907: $2c
    ret c                                         ; $5908: $d8

    ld b, c                                       ; $5909: $41
    cp h                                          ; $590a: $bc
    ld [de], a                                    ; $590b: $12
    db $ec                                        ; $590c: $ec
    add l                                         ; $590d: $85
    nop                                           ; $590e: $00
    ld a, a                                       ; $590f: $7f
    ld hl, $10fe                                  ; $5910: $21 $fe $10
    rst $28                                       ; $5913: $ef
    ld d, c                                       ; $5914: $51
    cp a                                          ; $5915: $bf
    dec b                                         ; $5916: $05
    nop                                           ; $5917: $00
    ei                                            ; $5918: $fb
    ld a, e                                       ; $5919: $7b
    add h                                         ; $591a: $84
    xor a                                         ; $591b: $af
    call nc, $c27d                                ; $591c: $d4 $7d $c2
    ld d, a                                       ; $591f: $57
    nop                                           ; $5920: $00
    add sp, $3d                                   ; $5921: $e8 $3d
    db $e3                                        ; $5923: $e3
    adc a                                         ; $5924: $8f
    ld a, h                                       ; $5925: $7c
    rra                                           ; $5926: $1f
    pop af                                        ; $5927: $f1
    ld b, l                                       ; $5928: $45
    nop                                           ; $5929: $00
    ld a, [$ef90]                                 ; $592a: $fa $90 $ef
    ld h, $db                                     ; $592d: $26 $db
    add b                                         ; $592f: $80
    ld a, a                                       ; $5930: $7f
    ld b, a                                       ; $5931: $47
    nop                                           ; $5932: $00
    db $fd                                        ; $5933: $fd
    ld l, b                                       ; $5934: $68
    or a                                          ; $5935: $b7
    and b                                         ; $5936: $a0
    ld a, a                                       ; $5937: $7f
    push af                                       ; $5938: $f5
    dec de                                        ; $5939: $1b
    ld [hl], b                                    ; $593a: $70
    nop                                           ; $593b: $00

jr_09f_593c:
    sbc a                                         ; $593c: $9f
    ld [hl], h                                    ; $593d: $74
    adc [hl]                                      ; $593e: $8e
    sub b                                         ; $593f: $90
    ldh a, [rNR41]                                ; $5940: $f0 $20
    ret nz                                        ; $5942: $c0

    ld a, [bc]                                    ; $5943: $0a
    nop                                           ; $5944: $00
    ldh [rNR10], a                                ; $5945: $e0 $10
    ldh [$82], a                                  ; $5947: $e0 $82
    ld [hl], b                                    ; $5949: $70
    jr jr_09f_593c                                ; $594a: $18 $f0

    add c                                         ; $594c: $81
    nop                                           ; $594d: $00
    ld a, b                                       ; $594e: $78
    sub b                                         ; $594f: $90
    rst $28                                       ; $5950: $ef
    dec b                                         ; $5951: $05
    cp $c2                                        ; $5952: $fe $c2
    ld a, l                                       ; $5954: $7d
    ld c, b                                       ; $5955: $48
    nop                                           ; $5956: $00
    ld [hl], a                                    ; $5957: $77
    ld h, c                                       ; $5958: $61
    ccf                                           ; $5959: $3f
    xor d                                         ; $595a: $aa
    dec a                                         ; $595b: $3d
    ld hl, $041f                                  ; $595c: $21 $1f $04
    nop                                           ; $595f: $00
    dec de                                        ; $5960: $1b
    xor e                                         ; $5961: $ab
    ld d, h                                       ; $5962: $54
    ld a, a                                       ; $5963: $7f
    xor b                                         ; $5964: $a8
    xor a                                         ; $5965: $af
    ld d, b                                       ; $5966: $50
    push af                                       ; $5967: $f5
    inc b                                         ; $5968: $04
    adc d                                         ; $5969: $8a
    cp a                                          ; $596a: $bf
    ld d, b                                       ; $596b: $50
    rst $30                                       ; $596c: $f7
    adc b                                         ; $596d: $88
    sub h                                         ; $596e: $94
    nop                                           ; $596f: $00
    add b                                         ; $5970: $80
    xor e                                         ; $5971: $ab
    inc b                                         ; $5972: $04
    ld d, l                                       ; $5973: $55
    db $fd                                        ; $5974: $fd
    ld a, [bc]                                    ; $5975: $0a
    ld a, [$d605]                                 ; $5976: $fa $05 $d6
    ld a, [bc]                                    ; $5979: $0a
    rst $38                                       ; $597a: $ff
    ld [bc], a                                    ; $597b: $02
    nop                                           ; $597c: $00
    rst $38                                       ; $597d: $ff
    ld bc, $00ff                                  ; $597e: $01 $ff $00
    ld b, h                                       ; $5981: $44
    cp b                                          ; $5982: $b8
    ld [$00fc], sp                                ; $5983: $08 $fc $00
    ld h, $fc                                     ; $5986: $26 $fc
    add b                                         ; $5988: $80
    cp $23                                        ; $5989: $fe $23
    sbc $4a                                       ; $598b: $de $4a
    or a                                          ; $598d: $b7
    nop                                           ; $598e: $00
    ld bc, $24ff                                  ; $598f: $01 $ff $24
    db $db                                        ; $5992: $db
    jr jr_09f_59a4                                ; $5993: $18 $0f

    ld hl, $180f                                  ; $5995: $21 $0f $18
    adc e                                         ; $5998: $8b
    inc b                                         ; $5999: $04
    dec h                                         ; $599a: $25
    ld [hl], b                                    ; $599b: $70
    ld [bc], a                                    ; $599c: $02
    ld b, b                                       ; $599d: $40
    dec bc                                        ; $599e: $0b
    ld bc, $0381                                  ; $599f: $01 $81 $03
    nop                                           ; $59a2: $00
    inc bc                                        ; $59a3: $03

jr_09f_59a4:
    rlca                                          ; $59a4: $07
    rlca                                          ; $59a5: $07
    ld b, $07                                     ; $59a6: $06 $07
    inc b                                         ; $59a8: $04
    rlca                                          ; $59a9: $07
    ld a, [bc]                                    ; $59aa: $0a
    nop                                           ; $59ab: $00
    dec c                                         ; $59ac: $0d
    rrca                                          ; $59ad: $0f
    rrca                                          ; $59ae: $0f
    dec bc                                        ; $59af: $0b

jr_09f_59b0:
    inc c                                         ; $59b0: $0c
    dec bc                                        ; $59b1: $0b
    ld c, $c0                                     ; $59b2: $0e $c0
    nop                                           ; $59b4: $00
    ret nz                                        ; $59b5: $c0

    ldh [$e0], a                                  ; $59b6: $e0 $e0
    ld h, b                                       ; $59b8: $60
    ldh [rNR41], a                                ; $59b9: $e0 $20
    ldh [$d0], a                                  ; $59bb: $e0 $d0
    db $10                                        ; $59bd: $10
    jr nc, jr_09f_59b0                            ; $59be: $30 $f0

    ldh a, [rDIV]                                 ; $59c0: $f0 $04
    nop                                           ; $59c2: $00
    or b                                          ; $59c3: $b0
    xor d                                         ; $59c4: $aa
    ld d, l                                       ; $59c5: $55
    push de                                       ; $59c6: $d5
    nop                                           ; $59c7: $00
    xor d                                         ; $59c8: $aa
    ld a, [$dd55]                                 ; $59c9: $fa $55 $dd
    ld [hl+], a                                   ; $59cc: $22
    ld [$7515], a                                 ; $59cd: $ea $15 $75
    adc b                                         ; $59d0: $88
    ld [$f700], sp                                ; $59d1: $08 $00 $f7
    ld a, [bc]                                    ; $59d4: $0a
    ld e, a                                       ; $59d5: $5f
    inc [hl]                                      ; $59d6: $34
    ld b, $3f                                     ; $59d7: $06 $3f
    inc [hl]                                      ; $59d9: $34
    ld sp, hl                                     ; $59da: $f9
    nop                                           ; $59db: $00
    add [hl]                                      ; $59dc: $86
    ld l, a                                       ; $59dd: $6f
    sub d                                         ; $59de: $92
    cp $23                                        ; $59df: $fe $23
    ei                                            ; $59e1: $fb
    dec b                                         ; $59e2: $05
    ld e, a                                       ; $59e3: $5f
    nop                                           ; $59e4: $00
    and c                                         ; $59e5: $a1
    ld a, b                                       ; $59e6: $78
    adc a                                         ; $59e7: $8f
    jp c, $6c2d                                   ; $59e8: $da $2d $6c

    sub a                                         ; $59eb: $97
    db $fd                                        ; $59ec: $fd
    nop                                           ; $59ed: $00
    ld b, [hl]                                    ; $59ee: $46
    cp $03                                        ; $59ef: $fe $03
    xor [hl]                                      ; $59f1: $ae
    ld d, e                                       ; $59f2: $53
    rst $38                                       ; $59f3: $ff
    dec b                                         ; $59f4: $05
    ld a, [hl]                                    ; $59f5: $7e
    nop                                           ; $59f6: $00
    sub c                                         ; $59f7: $91
    ld [hl], a                                    ; $59f8: $77
    adc d                                         ; $59f9: $8a
    dec sp                                        ; $59fa: $3b
    call nz, $c07f                                ; $59fb: $c4 $7f $c0
    ld d, a                                       ; $59fe: $57
    nop                                           ; $59ff: $00
    ld [$e53e], a                                 ; $5a00: $ea $3e $e5
    xor a                                         ; $5a03: $af
    ld [hl], b                                    ; $5a04: $70
    dec e                                         ; $5a05: $1d
    ld a, [c]                                     ; $5a06: $f2
    ld d, $44                                     ; $5a07: $16 $44
    ld sp, hl                                     ; $5a09: $f9
    jr nc, jr_09f_5a0f                            ; $5a0a: $30 $03

    ret z                                         ; $5a0c: $c8

    db $fd                                        ; $5a0d: $fd
    ld b, d                                       ; $5a0e: $42

jr_09f_5a0f:
    jr nz, jr_09f_5a13                            ; $5a0f: $20 $02

    ld [hl+], a                                   ; $5a11: $22
    rst $28                                       ; $5a12: $ef

jr_09f_5a13:
    nop                                           ; $5a13: $00
    or b                                          ; $5a14: $b0
    rst $38                                       ; $5a15: $ff
    ld [de], a                                    ; $5a16: $12
    or a                                          ; $5a17: $b7
    ld e, b                                       ; $5a18: $58
    cpl                                           ; $5a19: $2f
    ld hl, sp-$05                                 ; $5a1a: $f8 $fb
    nop                                           ; $5a1c: $00
    inc c                                         ; $5a1d: $0c
    rst $38                                       ; $5a1e: $ff
    inc b                                         ; $5a1f: $04
    ld e, c                                       ; $5a20: $59
    and [hl]                                      ; $5a21: $a6
    rst $38                                       ; $5a22: $ff
    ld [bc], a                                    ; $5a23: $02
    or [hl]                                       ; $5a24: $b6
    add b                                         ; $5a25: $80
    or b                                          ; $5a26: $b0
    inc bc                                        ; $5a27: $03
    ld l, a                                       ; $5a28: $6f
    sub c                                         ; $5a29: $91
    db $fd                                        ; $5a2a: $fd
    ld a, [bc]                                    ; $5a2b: $0a
    ld e, e                                       ; $5a2c: $5b
    xor h                                         ; $5a2d: $ac
    ei                                            ; $5a2e: $fb
    nop                                           ; $5a2f: $00
    inc b                                         ; $5a30: $04
    db $dd                                        ; $5a31: $dd
    and a                                         ; $5a32: $a7
    cp a                                          ; $5a33: $bf
    ld d, d                                       ; $5a34: $52
    cp $03                                        ; $5a35: $fe $03
    rst $28                                       ; $5a37: $ef
    nop                                           ; $5a38: $00
    ld de, $a55b                                  ; $5a39: $11 $5b $a5
    ld c, a                                       ; $5a3c: $4f
    cp b                                          ; $5a3d: $b8
    ld a, [hl+]                                   ; $5a3e: $2a

Call_09f_5a3f:
    db $fd                                        ; $5a3f: $fd
    rlca                                          ; $5a40: $07
    nop                                           ; $5a41: $00
    db $fc                                        ; $5a42: $fc
    and l                                         ; $5a43: $a5
    sbc $17                                       ; $5a44: $de $17
    ld a, [$cbf6]                                 ; $5a46: $fa $f6 $cb
    rst $28                                       ; $5a49: $ef
    nop                                           ; $5a4a: $00
    ld de, $857a                                  ; $5a4b: $11 $7a $85
    ld sp, hl                                     ; $5a4e: $f9
    cpl                                           ; $5a4f: $2f
    ld hl, sp+$0f                                 ; $5a50: $f8 $0f
    reti                                          ; $5a52: $d9


    ld [$e9a6], sp                                ; $5a53: $08 $a6 $e9
    ld d, a                                       ; $5a56: $57
    db $fc                                        ; $5a57: $fc
    ld h, b                                       ; $5a58: $60
    ld [$7b21], sp                                ; $5a59: $08 $21 $7b
    add l                                         ; $5a5c: $85
    add b                                         ; $5a5d: $80
    ldh a, [rTMA]                                 ; $5a5e: $f0 $06

jr_09f_5a60:
    xor b                                         ; $5a60: $a8
    cp e                                          ; $5a61: $bb
    ld b, h                                       ; $5a62: $44
    ld a, a                                       ; $5a63: $7f
    add b                                         ; $5a64: $80
    rst $38                                       ; $5a65: $ff
    nop                                           ; $5a66: $00
    jr z, jr_09f_5a60                             ; $5a67: $28 $f7

    ld [$0184], sp                                ; $5a69: $08 $84 $01
    and b                                         ; $5a6c: $a0
    ldh [$2e], a                                  ; $5a6d: $e0 $2e
    xor d                                         ; $5a6f: $aa
    rst $38                                       ; $5a70: $ff
    call nc, $ff1c                                ; $5a71: $d4 $1c $ff
    and b                                         ; $5a74: $a0
    rst $38                                       ; $5a75: $ff
    and a                                         ; $5a76: $a7
    inc b                                         ; $5a77: $04
    inc b                                         ; $5a78: $04
    db $10                                        ; $5a79: $10
    ld [bc], a                                    ; $5a7a: $02
    cp b                                          ; $5a7b: $b8

jr_09f_5a7c:
    ld a, $3f                                     ; $5a7c: $3e $3f
    nop                                           ; $5a7e: $00
    ld c, a                                       ; $5a7f: $4f
    ld a, a                                       ; $5a80: $7f
    xor b                                         ; $5a81: $a8
    rst $18                                       ; $5a82: $df
    cp b                                          ; $5a83: $b8
    rst $08                                       ; $5a84: $cf
    xor d                                         ; $5a85: $aa
    db $dd                                        ; $5a86: $dd
    nop                                           ; $5a87: $00
    ld a, l                                       ; $5a88: $7d
    ld a, a                                       ; $5a89: $7f
    cp c                                          ; $5a8a: $b9
    rst $18                                       ; $5a8b: $df
    cp e                                          ; $5a8c: $bb
    rst $38                                       ; $5a8d: $ff
    cp h                                          ; $5a8e: $bc
    db $fc                                        ; $5a8f: $fc
    nop                                           ; $5a90: $00
    ld a, [c]                                     ; $5a91: $f2
    cp $15                                        ; $5a92: $fe $15
    ei                                            ; $5a94: $fb
    scf                                           ; $5a95: $37
    reti                                          ; $5a96: $d9


    ld [hl], l                                    ; $5a97: $75
    sbc e                                         ; $5a98: $9b
    nop                                           ; $5a99: $00
    cp [hl]                                       ; $5a9a: $be
    cp $9d                                        ; $5a9b: $fe $9d
    ei                                            ; $5a9d: $fb
    db $dd                                        ; $5a9e: $dd
    rst $38                                       ; $5a9f: $ff
    cp [hl]                                       ; $5aa0: $be
    ld b, b                                       ; $5aa1: $40
    nop                                           ; $5aa2: $00

Call_09f_5aa3:
    db $fd                                        ; $5aa3: $fd

jr_09f_5aa4:
    jr z, jr_09f_5aa4                             ; $5aa4: $28 $fe

    inc b                                         ; $5aa6: $04
    push af                                       ; $5aa7: $f5
    ld a, [bc]                                    ; $5aa8: $0a
    ei                                            ; $5aa9: $fb
    inc d                                         ; $5aaa: $14
    nop                                           ; $5aab: $00
    rst $30                                       ; $5aac: $f7
    ld a, [bc]                                    ; $5aad: $0a
    cp a                                          ; $5aae: $bf
    ld b, c                                       ; $5aaf: $41
    rst $30                                       ; $5ab0: $f7
    ld [$cfbd], sp                                ; $5ab1: $08 $bd $cf
    nop                                           ; $5ab4: $00
    ld c, e                                       ; $5ab5: $4b
    halt                                          ; $5ab6: $76
    ld [hl-], a                                   ; $5ab7: $32
    ccf                                           ; $5ab8: $3f
    rra                                           ; $5ab9: $1f
    rra                                           ; $5aba: $1f
    cp a                                          ; $5abb: $bf
    rst $38                                       ; $5abc: $ff
    ld b, b                                       ; $5abd: $40
    inc hl                                        ; $5abe: $23
    ld [bc], a                                    ; $5abf: $02
    nop                                           ; $5ac0: $00
    rra                                           ; $5ac1: $1f
    rst $38                                       ; $5ac2: $ff
    cp l                                          ; $5ac3: $bd
    di                                            ; $5ac4: $f3
    ld [hl], d                                    ; $5ac5: $72
    xor [hl]                                      ; $5ac6: $ae
    nop                                           ; $5ac7: $00
    db $ec                                        ; $5ac8: $ec
    db $fc                                        ; $5ac9: $fc
    ld hl, sp+$78                                 ; $5aca: $f8 $78
    sbc l                                         ; $5acc: $9d
    ld a, a                                       ; $5acd: $7f
    sbc h                                         ; $5ace: $9c
    ld h, a                                       ; $5acf: $67
    ld [$4fb4], sp                                ; $5ad0: $08 $b4 $4f
    ld hl, sp+$7f                                 ; $5ad3: $f8 $7f
    ld h, b                                       ; $5ad5: $60
    cpl                                           ; $5ad6: $2f
    ld d, l                                       ; $5ad7: $55
    rst $38                                       ; $5ad8: $ff
    xor e                                         ; $5ad9: $ab
    nop                                           ; $5ada: $00
    rst $38                                       ; $5adb: $ff

jr_09f_5adc:
    dec b                                         ; $5adc: $05
    rst $38                                       ; $5add: $ff
    inc bc                                        ; $5ade: $03
    rst $38                                       ; $5adf: $ff
    rla                                           ; $5ae0: $17
    rst $38                                       ; $5ae1: $ff
    dec de                                        ; $5ae2: $1b
    jr nz, jr_09f_5adc                            ; $5ae3: $20 $f7

    inc de                                        ; $5ae5: $13
    inc b                                         ; $5ae6: $04
    jr nz, jr_09f_5af4                            ; $5ae7: $20 $0b

    rst $38                                       ; $5ae9: $ff
    rrca                                          ; $5aea: $0f
    rst $38                                       ; $5aeb: $ff
    add sp, $10                                   ; $5aec: $e8 $10
    ld a, a                                       ; $5aee: $7f
    sbc b                                         ; $5aef: $98
    ld l, a                                       ; $5af0: $6f
    ld [bc], a                                    ; $5af1: $02
    jr jr_09f_5a7c                                ; $5af2: $18 $88

jr_09f_5af4:
    ld a, a                                       ; $5af4: $7f
    sub b                                         ; $5af5: $90
    ld a, a                                       ; $5af6: $7f
    inc b                                         ; $5af7: $04
    ldh a, [$7f]                                  ; $5af8: $f0 $7f
    inc de                                        ; $5afa: $13
    rst $38                                       ; $5afb: $ff
    dec bc                                        ; $5afc: $0b
    ld [bc], a                                    ; $5afd: $02
    nop                                           ; $5afe: $00
    cpl                                           ; $5aff: $2f
    rst $38                                       ; $5b00: $ff
    nop                                           ; $5b01: $00
    ld e, e                                       ; $5b02: $5b
    rst $38                                       ; $5b03: $ff
    or a                                          ; $5b04: $b7
    ei                                            ; $5b05: $fb
    ld l, a                                       ; $5b06: $6f
    rst $30                                       ; $5b07: $f7
    cp d                                          ; $5b08: $ba
    rst $38                                       ; $5b09: $ff
    add b                                         ; $5b0a: $80
    ld d, $08                                     ; $5b0b: $16 $08
    sub b                                         ; $5b0d: $90
    ld a, a                                       ; $5b0e: $7f
    cp b                                          ; $5b0f: $b8
    ld a, a                                       ; $5b10: $7f
    sub h                                         ; $5b11: $94
    ld a, a                                       ; $5b12: $7f
    ld [$9f08], a                                 ; $5b13: $ea $08 $9f
    ld [hl], h                                    ; $5b16: $74
    rst $28                                       ; $5b17: $ef
    cp d                                          ; $5b18: $ba
    rst $28                                       ; $5b19: $ef
    rlca                                          ; $5b1a: $07
    add b                                         ; $5b1b: $80
    rst $38                                       ; $5b1c: $ff
    sub c                                         ; $5b1d: $91
    inc b                                         ; $5b1e: $04
    xor $88                                       ; $5b1f: $ee $88
    rst $30                                       ; $5b21: $f7
    add c                                         ; $5b22: $81
    cp $04                                        ; $5b23: $fe $04
    ld [$f08e], sp                                ; $5b25: $08 $8e $f0
    ld b, c                                       ; $5b28: $41
    rst $38                                       ; $5b29: $ff
    rst $00                                       ; $5b2a: $c7
    ld bc, $ae55                                  ; $5b2b: $01 $55 $ae
    ld [$10ff], sp                                ; $5b2e: $08 $ff $10

jr_09f_5b31:
    and b                                         ; $5b31: $a0
    ld [bc], a                                    ; $5b32: $02
    ld [$ff40], sp                                ; $5b33: $08 $40 $ff
    xor d                                         ; $5b36: $aa
    and l                                         ; $5b37: $a5
    and c                                         ; $5b38: $a1
    inc b                                         ; $5b39: $04
    rst $38                                       ; $5b3a: $ff
    ld d, l                                       ; $5b3b: $55
    xor d                                         ; $5b3c: $aa
    ld [$ff00], sp                                ; $5b3d: $08 $00 $ff
    inc b                                         ; $5b40: $04
    ei                                            ; $5b41: $fb
    inc b                                         ; $5b42: $04
    ld [$54ab], sp                                ; $5b43: $08 $ab $54
    adc c                                         ; $5b46: $89
    nop                                           ; $5b47: $00
    rst $30                                       ; $5b48: $f7
    add d                                         ; $5b49: $82
    rst $38                                       ; $5b4a: $ff
    adc l                                         ; $5b4b: $8d
    rst $30                                       ; $5b4c: $f7
    adc d                                         ; $5b4d: $8a
    rst $38                                       ; $5b4e: $ff
    sbc h                                         ; $5b4f: $9c

jr_09f_5b50:
    inc b                                         ; $5b50: $04
    rst $30                                       ; $5b51: $f7
    xor b                                         ; $5b52: $a8
    rst $38                                       ; $5b53: $ff
    ret c                                         ; $5b54: $d8

    rst $30                                       ; $5b55: $f7
    sbc e                                         ; $5b56: $9b
    ld [bc], a                                    ; $5b57: $02
    rst $38                                       ; $5b58: $ff
    add c                                         ; $5b59: $81
    ld b, c                                       ; $5b5a: $41
    cp $1c                                        ; $5b5b: $fe $1c
    ld [$ef10], sp                                ; $5b5d: $08 $10 $ef
    jr nz, jr_09f_5b31                            ; $5b60: $20 $cf

    nop                                           ; $5b62: $00
    ld [bc], a                                    ; $5b63: $02
    ld [$8580], sp                                ; $5b64: $08 $80 $85
    dec b                                         ; $5b67: $05
    ld h, b                                       ; $5b68: $60
    sbc a                                         ; $5b69: $9f
    db $10                                        ; $5b6a: $10
    rst $28                                       ; $5b6b: $ef
    nop                                           ; $5b6c: $00
    rst $00                                       ; $5b6d: $c7

jr_09f_5b6e:
    nop                                           ; $5b6e: $00
    ld b, c                                       ; $5b6f: $41
    add e                                         ; $5b70: $83
    ld [bc], a                                    ; $5b71: $02
    ld [$f7c8], sp                                ; $5b72: $08 $c8 $f7
    add b                                         ; $5b75: $80
    rst $38                                       ; $5b76: $ff
    adc b                                         ; $5b77: $88
    inc b                                         ; $5b78: $04
    ld b, b                                       ; $5b79: $40
    ret nc                                        ; $5b7a: $d0

    inc h                                         ; $5b7b: $24
    db $10                                        ; $5b7c: $10
    ld a, [hl+]                                   ; $5b7d: $2a
    nop                                           ; $5b7e: $00
    jr nz, jr_09f_5b83                            ; $5b7f: $20 $02

    stop                                          ; $5b81: $10 $00

jr_09f_5b83:
    add e                                         ; $5b83: $83
    ld b, h                                       ; $5b84: $44
    add e                                         ; $5b85: $83
    inc h                                         ; $5b86: $24
    jr c, jr_09f_5b50                             ; $5b87: $38 $c7

    rst $20                                       ; $5b89: $e7
    rrca                                          ; $5b8a: $0f
    inc c                                         ; $5b8b: $0c
    di                                            ; $5b8c: $f3
    inc [hl]                                      ; $5b8d: $34
    nop                                           ; $5b8e: $00
    add c                                         ; $5b8f: $81
    nop                                           ; $5b90: $00
    db $10                                        ; $5b91: $10
    add c                                         ; $5b92: $81
    adc d                                         ; $5b93: $8a
    push af                                       ; $5b94: $f5
    jr nc, @+$0a                                  ; $5b95: $30 $08

    add l                                         ; $5b97: $85
    ld a, [$f58a]                                 ; $5b98: $fa $8a $f5
    nop                                           ; $5b9b: $00
    add l                                         ; $5b9c: $85
    ld a, [$ff80]                                 ; $5b9d: $fa $80 $ff
    rst $38                                       ; $5ba0: $ff
    ld a, a                                       ; $5ba1: $7f
    ld b, h                                       ; $5ba2: $44
    add e                                         ; $5ba3: $83
    nop                                           ; $5ba4: $00
    jr z, jr_09f_5b6e                             ; $5ba5: $28 $c7

    nop                                           ; $5ba7: $00
    rst $28                                       ; $5ba8: $ef
    db $10                                        ; $5ba9: $10
    rst $28                                       ; $5baa: $ef
    add b                                         ; $5bab: $80
    ld a, a                                       ; $5bac: $7f
    jp nz, Jump_000_0886                          ; $5bad: $c2 $86 $08

    cpl                                           ; $5bb0: $2f
    dec b                                         ; $5bb1: $05
    add c                                         ; $5bb2: $81
    ld a, [hl]                                    ; $5bb3: $7e
    add c                                         ; $5bb4: $81
    nop                                           ; $5bb5: $00
    ld l, c                                       ; $5bb6: $69
    ld [bc], a                                    ; $5bb7: $02
    ld [bc], a                                    ; $5bb8: $02
    ld c, $ff                                     ; $5bb9: $0e $ff
    ld b, l                                       ; $5bbb: $45
    cp a                                          ; $5bbc: $bf
    ld a, [bc]                                    ; $5bbd: $0a
    jr nz, jr_09f_5bc5                            ; $5bbe: $20 $05

    and b                                         ; $5bc0: $a0
    jr z, jr_09f_5c20                             ; $5bc1: $28 $5d

    rrca                                          ; $5bc3: $0f
    ld d, h                                       ; $5bc4: $54

jr_09f_5bc5:
    inc de                                        ; $5bc5: $13
    xor e                                         ; $5bc6: $ab
    xor e                                         ; $5bc7: $ab
    ld d, h                                       ; $5bc8: $54
    or b                                          ; $5bc9: $b0
    jr z, @+$03                                   ; $5bca: $28 $01

    cp $b8                                        ; $5bcc: $fe $b8
    ld [$0833], sp                                ; $5bce: $08 $33 $08
    add [hl]                                      ; $5bd1: $86
    ret nz                                        ; $5bd2: $c0

    jr jr_09f_5c15                                ; $5bd3: $18 $40

    cp a                                          ; $5bd5: $bf
    and b                                         ; $5bd6: $a0
    ld e, a                                       ; $5bd7: $5f
    db $10                                        ; $5bd8: $10
    ld c, b                                       ; $5bd9: $48
    ld [hl-], a                                   ; $5bda: $32
    jr @-$10                                      ; $5bdb: $18 $ee

    nop                                           ; $5bdd: $00
    ld de, $eb14                                  ; $5bde: $11 $14 $eb
    ld a, [bc]                                    ; $5be1: $0a
    push af                                       ; $5be2: $f5
    inc d                                         ; $5be3: $14
    ld [$0600], a                                 ; $5be4: $ea $00 $06
    cp $02                                        ; $5be7: $fe $02
    db $fc                                        ; $5be9: $fc
    inc b                                         ; $5bea: $04
    ld a, [$0802]                                 ; $5beb: $fa $02 $08
    inc [hl]                                      ; $5bee: $34
    nop                                           ; $5bef: $00
    ld d, l                                       ; $5bf0: $55
    ld bc, $0302                                  ; $5bf1: $01 $02 $03
    ld d, l                                       ; $5bf4: $55
    ld d, l                                       ; $5bf5: $55
    ld a, [$5782]                                 ; $5bf6: $fa $82 $57
    ccf                                           ; $5bf9: $3f
    nop                                           ; $5bfa: $00
    nop                                           ; $5bfb: $00
    ld [hl], a                                    ; $5bfc: $77
    ld de, $aa55                                  ; $5bfd: $11 $55 $aa

Call_09f_5c00:
    and b                                         ; $5c00: $a0
    ld e, a                                       ; $5c01: $5f
    ld [bc], a                                    ; $5c02: $02
    cp $00                                        ; $5c03: $fe $00
    dec b                                         ; $5c05: $05
    ld [hl], l                                    ; $5c06: $75
    ld a, [$77da]                                 ; $5c07: $fa $da $77
    ld d, h                                       ; $5c0a: $54
    cp $da                                        ; $5c0b: $fe $da
    jr nz, jr_09f_5c84                            ; $5c0d: $20 $75

    ld d, l                                       ; $5c0f: $55
    push bc                                       ; $5c10: $c5
    rla                                           ; $5c11: $17
    inc bc                                        ; $5c12: $03
    ld d, b                                       ; $5c13: $50
    ld d, e                                       ; $5c14: $53

jr_09f_5c15:
    ld a, [$0389]                                 ; $5c15: $fa $89 $03
    ld d, c                                       ; $5c18: $51
    ld d, d                                       ; $5c19: $52
    xor c                                         ; $5c1a: $a9
    xor d                                         ; $5c1b: $aa
    ld [hl], c                                    ; $5c1c: $71
    ld b, d                                       ; $5c1d: $42
    ld [hl], $18                                  ; $5c1e: $36 $18

jr_09f_5c20:
    inc a                                         ; $5c20: $3c
    ld [$0500], sp                                ; $5c21: $08 $00 $05
    ei                                            ; $5c24: $fb
    inc b                                         ; $5c25: $04
    ei                                            ; $5c26: $fb
    dec d                                         ; $5c27: $15
    ld a, [$aaab]                                 ; $5c28: $fa $ab $aa
    and b                                         ; $5c2b: $a0
    inc a                                         ; $5c2c: $3c
    db $10                                        ; $5c2d: $10
    ld d, c                                       ; $5c2e: $51
    ld [$0208], sp                                ; $5c2f: $08 $08 $02
    cp $56                                        ; $5c32: $fe $56
    ld bc, $14fb                                  ; $5c34: $01 $fb $14
    ret c                                         ; $5c37: $d8

    ld [hl], l                                    ; $5c38: $75
    ld d, c                                       ; $5c39: $51
    inc a                                         ; $5c3a: $3c
    nop                                           ; $5c3b: $00
    ld d, l                                       ; $5c3c: $55
    inc a                                         ; $5c3d: $3c
    ld [$dbfa], sp                                ; $5c3e: $08 $fa $db
    nop                                           ; $5c41: $00
    di                                            ; $5c42: $f3
    call nc, $aaa9                                ; $5c43: $d4 $a9 $aa
    ld d, c                                       ; $5c46: $51
    ld d, d                                       ; $5c47: $52
    cp c                                          ; $5c48: $b9
    ld a, [bc]                                    ; $5c49: $0a
    add b                                         ; $5c4a: $80
    inc a                                         ; $5c4b: $3c
    ld [$5655], sp                                ; $5c4c: $08 $55 $56
    ld bc, $55fe                                  ; $5c4f: $01 $fe $55
    inc bc                                        ; $5c52: $03
    inc h                                         ; $5c53: $24
    ld bc, $45fb                                  ; $5c54: $01 $fb $45
    ld a, [$fb84]                                 ; $5c57: $fa $84 $fb
    rlca                                          ; $5c5a: $07
    ld hl, sp+$61                                 ; $5c5b: $f8 $61
    ld [bc], a                                    ; $5c5d: $02
    sbc [hl]                                      ; $5c5e: $9e
    dec de                                        ; $5c5f: $1b
    rlca                                          ; $5c60: $07
    rst $38                                       ; $5c61: $ff
    rst $38                                       ; $5c62: $ff
    jp nz, Jump_000_1500                          ; $5c63: $c2 $00 $15

    rlca                                          ; $5c66: $07
    inc b                                         ; $5c67: $04
    ld [$1810], sp                                ; $5c68: $08 $10 $18
    halt                                          ; $5c6b: $76
    ld b, b                                       ; $5c6c: $40
    reti                                          ; $5c6d: $d9


jr_09f_5c6e:
    db $10                                        ; $5c6e: $10
    ld e, b                                       ; $5c6f: $58
    xor e                                         ; $5c70: $ab
    ld d, [hl]                                    ; $5c71: $56
    db $fd                                        ; $5c72: $fd
    rlca                                          ; $5c73: $07
    dec bc                                        ; $5c74: $0b
    cp $01                                        ; $5c75: $fe $01
    rst $38                                       ; $5c77: $ff
    inc d                                         ; $5c78: $14
    jr z, @+$01                                   ; $5c79: $28 $ff

    ld d, l                                       ; $5c7b: $55
    ld a, [$20a0]                                 ; $5c7c: $fa $a0 $20
    ld b, $50                                     ; $5c7f: $06 $50
    sub $52                                       ; $5c81: $d6 $52
    rlca                                          ; $5c83: $07

jr_09f_5c84:
    ld l, e                                       ; $5c84: $6b
    ld d, [hl]                                    ; $5c85: $56
    rlca                                          ; $5c86: $07
    ld [bc], a                                    ; $5c87: $02
    db $fd                                        ; $5c88: $fd
    ld d, l                                       ; $5c89: $55
    nop                                           ; $5c8a: $00
    sub h                                         ; $5c8b: $94
    and e                                         ; $5c8c: $a3
    ld bc, $d500                                  ; $5c8d: $01 $00 $d5
    ld h, d                                       ; $5c90: $62
    rlca                                          ; $5c91: $07
    or $66                                        ; $5c92: $f6 $66
    rlca                                          ; $5c94: $07
    jr z, jr_09f_5c6e                             ; $5c95: $28 $d7

    ld bc, $00d6                                  ; $5c97: $01 $d6 $00
    ld a, a                                       ; $5c9a: $7f
    nop                                           ; $5c9b: $00
    rst $10                                       ; $5c9c: $d7
    nop                                           ; $5c9d: $00
    cp a                                          ; $5c9e: $bf
    ld [hl], d                                    ; $5c9f: $72
    rlca                                          ; $5ca0: $07
    ld b, l                                       ; $5ca1: $45
    cp d                                          ; $5ca2: $ba
    halt                                          ; $5ca3: $76
    rlca                                          ; $5ca4: $07
    dec b                                         ; $5ca5: $05
    ld a, [$7cac]                                 ; $5ca6: $fa $ac $7c
    rla                                           ; $5ca9: $17
    rst $10                                       ; $5caa: $d7
    add b                                         ; $5cab: $80
    rla                                           ; $5cac: $17
    inc b                                         ; $5cad: $04
    rst $38                                       ; $5cae: $ff
    nop                                           ; $5caf: $00
    xor b                                         ; $5cb0: $a8
    ld d, a                                       ; $5cb1: $57
    sub $86                                       ; $5cb2: $d6 $86
    rlca                                          ; $5cb4: $07
    rst $38                                       ; $5cb5: $ff
    nop                                           ; $5cb6: $00
    ld b, c                                       ; $5cb7: $41
    ld d, [hl]                                    ; $5cb8: $56
    sub d                                         ; $5cb9: $92
    rlca                                          ; $5cba: $07
    ld bc, $aafe                                  ; $5cbb: $01 $fe $aa
    nop                                           ; $5cbe: $00
    push af                                       ; $5cbf: $f5
    ld l, $00                                     ; $5cc0: $2e $00
    dec c                                         ; $5cc2: $0d
    or [hl]                                       ; $5cc3: $b6
    nop                                           ; $5cc4: $00
    xor e                                         ; $5cc5: $ab
    ld d, h                                       ; $5cc6: $54
    ld c, e                                       ; $5cc7: $4b
    add hl, bc                                    ; $5cc8: $09
    ld c, b                                       ; $5cc9: $48
    ld bc, $3f00                                  ; $5cca: $01 $00 $3f
    ld bc, $0031                                  ; $5ccd: $01 $31 $00
    xor [hl]                                      ; $5cd0: $ae
    xor [hl]                                      ; $5cd1: $ae
    rlca                                          ; $5cd2: $07
    ld h, b                                       ; $5cd3: $60
    ld [$ff00], sp                                ; $5cd4: $08 $00 $ff
    cp a                                          ; $5cd7: $bf
    ld e, b                                       ; $5cd8: $58
    db $10                                        ; $5cd9: $10
    inc b                                         ; $5cda: $04
    or a                                          ; $5cdb: $b7
    nop                                           ; $5cdc: $00
    ld b, l                                       ; $5cdd: $45
    cp d                                          ; $5cde: $ba
    dec [hl]                                      ; $5cdf: $35
    jp nz, Jump_000_1507                          ; $5ce0: $c2 $07 $15

    ld [$fa32], a                                 ; $5ce3: $ea $32 $fa
    nop                                           ; $5ce6: $00
    cp a                                          ; $5ce7: $bf
    ld b, $c6                                     ; $5ce8: $06 $c6
    rlca                                          ; $5cea: $07
    ld e, a                                       ; $5ceb: $5f
    and b                                         ; $5cec: $a0
    sub h                                         ; $5ced: $94
    add hl, bc                                    ; $5cee: $09
    ld l, b                                       ; $5cef: $68
    nop                                           ; $5cf0: $00
    rst $38                                       ; $5cf1: $ff
    ldh a, [$df]                                  ; $5cf2: $f0 $df
    ldh a, [$a7]                                  ; $5cf4: $f0 $a7
    add sp, $47                                   ; $5cf6: $e8 $47
    ret nc                                        ; $5cf8: $d0

    db $10                                        ; $5cf9: $10
    add a                                         ; $5cfa: $87
    ld b, b                                       ; $5cfb: $40
    rlca                                          ; $5cfc: $07
    and h                                         ; $5cfd: $a4
    ld de, $00ff                                  ; $5cfe: $11 $ff $00

Jump_09f_5d01:
    db $fc                                        ; $5d01: $fc
    ld b, $01                                     ; $5d02: $06 $01
    ld hl, sp+$05                                 ; $5d04: $f8 $05
    ldh a, [rSC]                                  ; $5d06: $f0 $02
    ldh a, [rSB]                                  ; $5d08: $f0 $01
    ldh a, [rNR10]                                ; $5d0a: $f0 $10
    jr nz, jr_09f_5d0e                            ; $5d0c: $20 $00

jr_09f_5d0e:
    ccf                                           ; $5d0e: $3f
    nop                                           ; $5d0f: $00
    rra                                           ; $5d10: $1f
    nop                                           ; $5d11: $00
    rrca                                          ; $5d12: $0f
    add d                                         ; $5d13: $82
    rrca                                          ; $5d14: $0f
    ld b, l                                       ; $5d15: $45
    ld h, b                                       ; $5d16: $60
    rrca                                          ; $5d17: $0f
    call nz, $5e09                                ; $5d18: $c4 $09 $5e
    ld [bc], a                                    ; $5d1b: $02
    cp $20                                        ; $5d1c: $fe $20
    db $fc                                        ; $5d1e: $fc
    ld b, l                                       ; $5d1f: $45
    ld hl, sp+$00                                 ; $5d20: $f8 $00
    add d                                         ; $5d22: $82
    ld hl, sp+$05                                 ; $5d23: $f8 $05
    ld hl, sp+$08                                 ; $5d25: $f8 $08
    rlca                                          ; $5d27: $07
    ld [de], a                                    ; $5d28: $12
    dec c                                         ; $5d29: $0d
    ld [$1fa0], sp                                ; $5d2a: $08 $a0 $1f
    ld d, l                                       ; $5d2d: $55
    xor d                                         ; $5d2e: $aa
    ld l, b                                       ; $5d2f: $68
    ld a, [bc]                                    ; $5d30: $0a
    rst $38                                       ; $5d31: $ff
    rst $38                                       ; $5d32: $ff
    ld h, b                                       ; $5d33: $60
    nop                                           ; $5d34: $00
    ret nz                                        ; $5d35: $c0

    ld [$84f0], sp                                ; $5d36: $08 $f0 $84
    ld a, b                                       ; $5d39: $78
    inc de                                        ; $5d3a: $13
    db $ec                                        ; $5d3b: $ec
    ld a, [hl+]                                   ; $5d3c: $2a
    ld b, b                                       ; $5d3d: $40
    push de                                       ; $5d3e: $d5
    db $10                                        ; $5d3f: $10
    jr jr_09f_5d42                                ; $5d40: $18 $00

jr_09f_5d42:
    rra                                           ; $5d42: $1f
    ei                                            ; $5d43: $fb
    ld c, $74                                     ; $5d44: $0e $74
    rra                                           ; $5d46: $1f
    ld [$3dea], sp                                ; $5d47: $08 $ea $3d
    ld hl, sp+$57                                 ; $5d4a: $f8 $57
    jr nz, jr_09f_5d66                            ; $5d4c: $20 $18

    ld [bc], a                                    ; $5d4e: $02
    rst $38                                       ; $5d4f: $ff
    ld h, $06                                     ; $5d50: $26 $06
    ret c                                         ; $5d52: $d8

    ld b, b                                       ; $5d53: $40
    cp h                                          ; $5d54: $bc
    and d                                         ; $5d55: $a2
    ld e, h                                       ; $5d56: $5c
    jr nc, @+$2a                                  ; $5d57: $30 $28

    ld [de], a                                    ; $5d59: $12
    ld [bc], a                                    ; $5d5a: $02
    ld bc, $5400                                  ; $5d5b: $01 $00 $54
    inc bc                                        ; $5d5e: $03
    xor a                                         ; $5d5f: $af
    ld bc, $01fe                                  ; $5d60: $01 $fe $01
    dec d                                         ; $5d63: $15
    db $eb                                        ; $5d64: $eb
    inc c                                         ; $5d65: $0c

jr_09f_5d66:
    xor h                                         ; $5d66: $ac
    inc bc                                        ; $5d67: $03
    ld e, l                                       ; $5d68: $5d
    inc bc                                        ; $5d69: $03
    add [hl]                                      ; $5d6a: $86
    inc b                                         ; $5d6b: $04
    ld c, l                                       ; $5d6c: $4d
    ld [bc], a                                    ; $5d6d: $02
    push af                                       ; $5d6e: $f5
    nop                                           ; $5d6f: $00
    nop                                           ; $5d70: $00
    xor [hl]                                      ; $5d71: $ae
    inc bc                                        ; $5d72: $03
    ld a, h                                       ; $5d73: $7c
    rra                                           ; $5d74: $1f
    ld h, [hl]                                    ; $5d75: $66
    ld a, b                                       ; $5d76: $78
    or b                                          ; $5d77: $b0
    rst $08                                       ; $5d78: $cf
    ld de, $ff8f                                  ; $5d79: $11 $8f $ff
    ld l, l                                       ; $5d7c: $6d
    inc d                                         ; $5d7d: $14
    nop                                           ; $5d7e: $00
    ld bc, $aeff                                  ; $5d7f: $01 $ff $ae
    ld d, [hl]                                    ; $5d82: $56
    rlca                                          ; $5d83: $07
    nop                                           ; $5d84: $00
    cp $01                                        ; $5d85: $fe $01
    ld d, l                                       ; $5d87: $55
    dec bc                                        ; $5d88: $0b
    xor b                                         ; $5d89: $a8
    ld d, a                                       ; $5d8a: $57
    push af                                       ; $5d8b: $f5
    rst $38                                       ; $5d8c: $ff
    ld b, b                                       ; $5d8d: $40
    add sp, -$4a                                  ; $5d8e: $e8 $b6
    inc bc                                        ; $5d90: $03
    ld h, d                                       ; $5d91: $62
    db $fd                                        ; $5d92: $fd
    push de                                       ; $5d93: $d5
    ld a, d                                       ; $5d94: $7a
    ld [c], a                                     ; $5d95: $e2
    ld a, l                                       ; $5d96: $7d
    dec b                                         ; $5d97: $05
    ld sp, $6a7e                                  ; $5d98: $31 $7e $6a
    dec a                                         ; $5d9b: $3d
    nop                                           ; $5d9c: $00
    sub h                                         ; $5d9d: $94
    rlca                                          ; $5d9e: $07
    ld [bc], a                                    ; $5d9f: $02
    ld [bc], a                                    ; $5da0: $02
    ld [$7f00], sp                                ; $5da1: $08 $00 $7f
    ld b, d                                       ; $5da4: $42
    ccf                                           ; $5da5: $3f
    add d                                         ; $5da6: $82
    ccf                                           ; $5da7: $3f
    ld b, d                                       ; $5da8: $42
    ccf                                           ; $5da9: $3f
    ld d, h                                       ; $5daa: $54
    nop                                           ; $5dab: $00
    ccf                                           ; $5dac: $3f
    add hl, sp                                    ; $5dad: $39
    ld e, $24                                     ; $5dae: $1e $24
    rra                                           ; $5db0: $1f
    ld a, [de]                                    ; $5db1: $1a
    rrca                                          ; $5db2: $0f
    dec c                                         ; $5db3: $0d
    nop                                           ; $5db4: $00
    rlca                                          ; $5db5: $07
    ld b, $03                                     ; $5db6: $06 $03
    inc bc                                        ; $5db8: $03
    ld bc, $0001                                  ; $5db9: $01 $01 $00
    jp nz, Jump_000_3f00                          ; $5dbc: $c2 $00 $3f

    ld [bc], a                                    ; $5dbf: $02
    ld a, a                                       ; $5dc0: $7f
    add d                                         ; $5dc1: $82
    ld a, a                                       ; $5dc2: $7f
    ld d, d                                       ; $5dc3: $52
    xor a                                         ; $5dc4: $af
    cp $c1                                        ; $5dc5: $fe $c1
    ld b, $06                                     ; $5dc7: $06 $06
    ld a, [hl+]                                   ; $5dc9: $2a
    ld [$0010], sp                                ; $5dca: $08 $10 $00
    jr z, jr_09f_5dcf                             ; $5dcd: $28 $00

jr_09f_5dcf:
    ld d, h                                       ; $5dcf: $54
    ld d, d                                       ; $5dd0: $52
    ld bc, $6d18                                  ; $5dd1: $01 $18 $6d
    nop                                           ; $5dd4: $00
    cp [hl]                                       ; $5dd5: $be
    ld b, l                                       ; $5dd6: $45
    ld a, [hl+]                                   ; $5dd7: $2a
    ld h, h                                       ; $5dd8: $64
    ld bc, $ffa0                                  ; $5dd9: $01 $a0 $ff
    ld a, [hl+]                                   ; $5ddc: $2a
    nop                                           ; $5ddd: $00
    push de                                       ; $5dde: $d5
    add c                                         ; $5ddf: $81
    nop                                           ; $5de0: $00
    rlca                                          ; $5de1: $07
    ldh a, [$f0]                                  ; $5de2: $f0 $f0
    rst $30                                       ; $5de4: $f7
    rst $38                                       ; $5de5: $ff
    add b                                         ; $5de6: $80
    ld a, [hl-]                                   ; $5de7: $3a
    ld bc, $00f5                                  ; $5de8: $01 $f5 $00
    ld a, [hl+]                                   ; $5deb: $2a
    ret nz                                        ; $5dec: $c0

    and h                                         ; $5ded: $a4
    ld e, b                                       ; $5dee: $58
    ld [hl], e                                    ; $5def: $73
    nop                                           ; $5df0: $00
    ld c, $c5                                     ; $5df1: $0e $c5
    inc bc                                        ; $5df3: $03
    add hl, de                                    ; $5df4: $19
    db $e3                                        ; $5df5: $e3
    rst $38                                       ; $5df6: $ff
    nop                                           ; $5df7: $00
    cp e                                          ; $5df8: $bb
    nop                                           ; $5df9: $00
    nop                                           ; $5dfa: $00
    ld e, a                                       ; $5dfb: $5f
    nop                                           ; $5dfc: $00
    xor d                                         ; $5dfd: $aa
    nop                                           ; $5dfe: $00
    ld b, l                                       ; $5dff: $45
    nop                                           ; $5e00: $00
    ld [de], a                                    ; $5e01: $12
    add b                                         ; $5e02: $80
    dec sp                                        ; $5e03: $3b
    inc b                                         ; $5e04: $04
    add b                                         ; $5e05: $80
    nop                                           ; $5e06: $00
    ld d, c                                       ; $5e07: $51
    or $32                                        ; $5e08: $f6 $32
    push af                                       ; $5e0a: $f5
    ld de, $f614                                  ; $5e0b: $11 $14 $f6
    or d                                          ; $5e0e: $b2
    ld [hl], l                                    ; $5e0f: $75
    inc b                                         ; $5e10: $04
    ld [$0c19], sp                                ; $5e11: $08 $19 $0c
    nop                                           ; $5e14: $00
    ld b, e                                       ; $5e15: $43
    cp e                                          ; $5e16: $bb
    nop                                           ; $5e17: $00
    and c                                         ; $5e18: $a1
    ld e, e                                       ; $5e19: $5b
    ld d, a                                       ; $5e1a: $57
    xor e                                         ; $5e1b: $ab
    and l                                         ; $5e1c: $a5
    ld e, e                                       ; $5e1d: $5b
    ld b, e                                       ; $5e1e: $43
    cp [hl]                                       ; $5e1f: $be
    ld bc, $5ea7                                  ; $5e20: $01 $a7 $5e
    ld c, e                                       ; $5e23: $4b
    cp [hl]                                       ; $5e24: $be
    sub a                                         ; $5e25: $97
    ld a, h                                       ; $5e26: $7c
    add b                                         ; $5e27: $80
    inc h                                         ; $5e28: $24
    nop                                           ; $5e29: $00
    ret nz                                        ; $5e2a: $c0

    inc b                                         ; $5e2b: $04
    jr z, jr_09f_5e9a                             ; $5e2c: $28 $6c

    inc c                                         ; $5e2e: $0c
    sbc c                                         ; $5e2f: $99
    halt                                          ; $5e30: $76

jr_09f_5e31:
    ld [hl-], a                                   ; $5e31: $32
    push af                                       ; $5e32: $f5
    sbc c                                         ; $5e33: $99
    halt                                          ; $5e34: $76
    nop                                           ; $5e35: $00
    ld a, [hl-]                                   ; $5e36: $3a
    push af                                       ; $5e37: $f5
    jr jr_09f_5e31                                ; $5e38: $18 $f7

    or c                                          ; $5e3a: $b1
    rst $38                                       ; $5e3b: $ff
    ld e, d                                       ; $5e3c: $5a
    rst $30                                       ; $5e3d: $f7
    nop                                           ; $5e3e: $00
    or l                                          ; $5e3f: $b5
    rst $38                                       ; $5e40: $ff
    ld c, a                                       ; $5e41: $4f
    cp h                                          ; $5e42: $bc
    sbc [hl]                                      ; $5e43: $9e
    ld a, b                                       ; $5e44: $78
    ld l, $f8                                     ; $5e45: $2e $f8
    nop                                           ; $5e47: $00
    ld e, h                                       ; $5e48: $5c
    ldh a, [$bc]                                  ; $5e49: $f0 $bc
    ldh [$78], a                                  ; $5e4b: $e0 $78
    ret nz                                        ; $5e4d: $c0

    ldh a, [$80]                                  ; $5e4e: $f0 $80
    nop                                           ; $5e50: $00
    ldh [rP1], a                                  ; $5e51: $e0 $00
    db $d3                                        ; $5e53: $d3
    ld a, [hl]                                    ; $5e54: $7e
    ld [hl], a                                    ; $5e55: $77
    inc a                                         ; $5e56: $3c
    ccf                                           ; $5e57: $3f
    jr jr_09f_5e5a                                ; $5e58: $18 $00

jr_09f_5e5a:
    sbc [hl]                                      ; $5e5a: $9e
    nop                                           ; $5e5b: $00
    ld b, c                                       ; $5e5c: $41
    nop                                           ; $5e5d: $00
    ld [$f700], a                                 ; $5e5e: $ea $00 $f7
    nop                                           ; $5e61: $00
    nop                                           ; $5e62: $00
    rst $18                                       ; $5e63: $df
    nop                                           ; $5e64: $00
    ret nz                                        ; $5e65: $c0

    nop                                           ; $5e66: $00
    add d                                         ; $5e67: $82
    nop                                           ; $5e68: $00
    dec d                                         ; $5e69: $15
    nop                                           ; $5e6a: $00
    ld a, [hl-]                                   ; $5e6b: $3a
    ld a, [hl+]                                   ; $5e6c: $2a
    nop                                           ; $5e6d: $00
    ld c, $0a                                     ; $5e6e: $0e $0a
    db $fc                                        ; $5e70: $fc
    add hl, bc                                    ; $5e71: $09
    or b                                          ; $5e72: $b0
    inc c                                         ; $5e73: $0c
    jr nz, jr_09f_5e8a                            ; $5e74: $20 $14

    nop                                           ; $5e76: $00
    ld d, h                                       ; $5e77: $54
    or b                                          ; $5e78: $b0
    jr nz, @+$12                                  ; $5e79: $20 $10

    cp $5c                                        ; $5e7b: $fe $5c
    ld [bc], a                                    ; $5e7d: $02
    call z, Call_09f_410e                         ; $5e7e: $cc $0e $41
    rst $38                                       ; $5e81: $ff
    ld b, e                                       ; $5e82: $43
    cp $04                                        ; $5e83: $fe $04
    ld b, a                                       ; $5e85: $47
    db $fd                                        ; $5e86: $fd
    ld c, d                                       ; $5e87: $4a
    cp $55                                        ; $5e88: $fe $55

jr_09f_5e8a:
    ld h, $03                                     ; $5e8a: $26 $03
    rst $38                                       ; $5e8c: $ff
    rst $38                                       ; $5e8d: $ff
    nop                                           ; $5e8e: $00
    cp b                                          ; $5e8f: $b8
    rst $20                                       ; $5e90: $e7
    call nz, $8243                                ; $5e91: $c4 $43 $82
    add c                                         ; $5e94: $81
    ld [bc], a                                    ; $5e95: $02
    ld bc, $b119                                  ; $5e96: $01 $19 $b1
    nop                                           ; $5e99: $00

jr_09f_5e9a:
    ld a, e                                       ; $5e9a: $7b
    ld a, h                                       ; $5e9b: $7c
    ld a, [bc]                                    ; $5e9c: $0a
    rst $10                                       ; $5e9d: $d7
    jr z, @+$01                                   ; $5e9e: $28 $ff

    add hl, hl                                    ; $5ea0: $29
    ld e, l                                       ; $5ea1: $5d
    ld a, [bc]                                    ; $5ea2: $0a
    add b                                         ; $5ea3: $80
    ld h, d                                       ; $5ea4: $62
    inc de                                        ; $5ea5: $13
    ld bc, $0aff                                  ; $5ea6: $01 $ff $0a
    rst $38                                       ; $5ea9: $ff
    inc d                                         ; $5eaa: $14
    rst $38                                       ; $5eab: $ff
    ld a, l                                       ; $5eac: $7d
    nop                                           ; $5ead: $00
    xor d                                         ; $5eae: $aa
    ld d, b                                       ; $5eaf: $50
    rst $38                                       ; $5eb0: $ff
    ld l, d                                       ; $5eb1: $6a
    db $fd                                        ; $5eb2: $fd
    ld d, c                                       ; $5eb3: $51
    cp $60                                        ; $5eb4: $fe $60
    db $10                                        ; $5eb6: $10
    rst $38                                       ; $5eb7: $ff
    ld d, h                                       ; $5eb8: $54
    db $eb                                        ; $5eb9: $eb
    ld d, $2f                                     ; $5eba: $16 $2f
    cp $01                                        ; $5ebc: $fe $01
    ld [hl], h                                    ; $5ebe: $74
    adc e                                         ; $5ebf: $8b
    dec c                                         ; $5ec0: $0d
    add sp, $17                                   ; $5ec1: $e8 $17
    ld [bc], a                                    ; $5ec3: $02
    db $fd                                        ; $5ec4: $fd
    sub b                                         ; $5ec5: $90
    add hl, hl                                    ; $5ec6: $29
    sbc h                                         ; $5ec7: $9c
    dec de                                        ; $5ec8: $1b
    xor l                                         ; $5ec9: $ad
    or b                                          ; $5eca: $b0
    ld hl, $b052                                  ; $5ecb: $21 $52 $b0
    inc h                                         ; $5ece: $24
    dec b                                         ; $5ecf: $05
    ld b, b                                       ; $5ed0: $40
    inc h                                         ; $5ed1: $24
    dec b                                         ; $5ed2: $05
    ld c, d                                       ; $5ed3: $4a
    or l                                          ; $5ed4: $b5
    or b                                          ; $5ed5: $b0
    add hl, hl                                    ; $5ed6: $29
    ret nc                                        ; $5ed7: $d0

    nop                                           ; $5ed8: $00
    add b                                         ; $5ed9: $80
    ld a, [hl+]                                   ; $5eda: $2a
    ret nz                                        ; $5edb: $c0

    rrca                                          ; $5edc: $0f
    ldh a, [rTMA]                                 ; $5edd: $f0 $06
    ld sp, hl                                     ; $5edf: $f9
    inc c                                         ; $5ee0: $0c
    nop                                           ; $5ee1: $00
    ldh a, [rNR23]                                ; $5ee2: $f0 $18
    ldh [rNR14], a                                ; $5ee4: $e0 $14
    ldh [$0a], a                                  ; $5ee6: $e0 $0a
    ldh a, [rNR41]                                ; $5ee8: $f0 $20
    ld bc, $401f                                  ; $5eea: $01 $1f $40
    ccf                                           ; $5eed: $3f
    nop                                           ; $5eee: $00
    rst $38                                       ; $5eef: $ff
    dec h                                         ; $5ef0: $25
    jp c, Jump_000_063f                           ; $5ef1: $da $3f $06

    ld [bc], a                                    ; $5ef4: $02
    ld a, a                                       ; $5ef5: $7f
    dec b                                         ; $5ef6: $05
    ld a, a                                       ; $5ef7: $7f
    adc d                                         ; $5ef8: $8a
    ld a, a                                       ; $5ef9: $7f
    inc b                                         ; $5efa: $04
    ld e, $0a                                     ; $5efb: $1e $0a
    rst $38                                       ; $5efd: $ff
    ld [$aaf5], sp                                ; $5efe: $08 $f5 $aa
    ld l, b                                       ; $5f01: $68
    rst $10                                       ; $5f02: $d7
    ld [de], a                                    ; $5f03: $12
    dec de                                        ; $5f04: $1b
    ld [$12f0], sp                                ; $5f05: $08 $f0 $12
    nop                                           ; $5f08: $00
    pop hl                                        ; $5f09: $e1
    inc b                                         ; $5f0a: $04
    db $e3                                        ; $5f0b: $e3
    ld de, $1ae0                                  ; $5f0c: $11 $e0 $1a
    pop hl                                        ; $5f0f: $e1
    dec c                                         ; $5f10: $0d
    inc c                                         ; $5f11: $0c
    ldh a, [rTMA]                                 ; $5f12: $f0 $06
    ld hl, sp-$5d                                 ; $5f14: $f8 $a3
    ld a, [$6f31]                                 ; $5f16: $fa $31 $6f
    ld c, $05                                     ; $5f19: $0e $05
    rst $38                                       ; $5f1b: $ff
    ld c, $8a                                     ; $5f1c: $0e $8a
    ld a, a                                       ; $5f1e: $7f
    ld d, [hl]                                    ; $5f1f: $56
    cp l                                          ; $5f20: $bd
    ld a, [hl-]                                   ; $5f21: $3a
    ld a, [de]                                    ; $5f22: $1a
    ld h, [hl]                                    ; $5f23: $66
    ld [$0c48], sp                                ; $5f24: $08 $48 $0c
    sub l                                         ; $5f27: $95
    ld b, b                                       ; $5f28: $40
    ld l, d                                       ; $5f29: $6a
    adc d                                         ; $5f2a: $8a
    jr c, jr_09f_5f2d                             ; $5f2b: $38 $00

jr_09f_5f2d:
    rst $38                                       ; $5f2d: $ff
    inc bc                                        ; $5f2e: $03
    db $fc                                        ; $5f2f: $fc
    ld b, c                                       ; $5f30: $41
    cp a                                          ; $5f31: $bf
    add b                                         ; $5f32: $80
    ld a, [hl+]                                   ; $5f33: $2a
    ld a, [hl+]                                   ; $5f34: $2a
    ld a, [de]                                    ; $5f35: $1a
    ldh [rHDMA5], a                               ; $5f36: $e0 $55
    adc d                                         ; $5f38: $8a
    xor c                                         ; $5f39: $a9
    nop                                           ; $5f3a: $00
    ld d, h                                       ; $5f3b: $54
    ld bc, $383f                                  ; $5f3c: $01 $3f $38
    cpl                                           ; $5f3f: $2f
    ld d, b                                       ; $5f40: $50
    ret nc                                        ; $5f41: $d0

    cp b                                          ; $5f42: $b8
    ldh [$96], a                                  ; $5f43: $e0 $96
    ld [$dc80], sp                                ; $5f45: $08 $80 $dc
    inc c                                         ; $5f48: $0c
    inc c                                         ; $5f49: $0c
    ldh a, [$61]                                  ; $5f4a: $f0 $61
    add b                                         ; $5f4c: $80
    inc c                                         ; $5f4d: $0c
    inc bc                                        ; $5f4e: $03
    ld h, b                                       ; $5f4f: $60
    inc b                                         ; $5f50: $04
    rra                                           ; $5f51: $1f
    nop                                           ; $5f52: $00
    rst $38                                       ; $5f53: $ff
    dec b                                         ; $5f54: $05
    ld a, [$10ea]                                 ; $5f55: $fa $ea $10
    ld [bc], a                                    ; $5f58: $02
    ld d, l                                       ; $5f59: $55
    ld [hl], b                                    ; $5f5a: $70
    ld [bc], a                                    ; $5f5b: $02
    sub b                                         ; $5f5c: $90
    inc c                                         ; $5f5d: $0c
    ld l, $0c                                     ; $5f5e: $2e $0c
    sub h                                         ; $5f60: $94
    ld [de], a                                    ; $5f61: $12
    nop                                           ; $5f62: $00
    adc $00                                       ; $5f63: $ce $00
    cp $18                                        ; $5f65: $fe $18
    ld bc, $ca35                                  ; $5f67: $01 $35 $ca
    jr nz, jr_09f_5f6c                            ; $5f6a: $20 $00

jr_09f_5f6c:
    ld l, h                                       ; $5f6c: $6c
    inc d                                         ; $5f6d: $14
    ld [de], a                                    ; $5f6e: $12
    rrca                                          ; $5f6f: $0f
    adc d                                         ; $5f70: $8a
    nop                                           ; $5f71: $00
    ld b, a                                       ; $5f72: $47
    ld h, [hl]                                    ; $5f73: $66
    add a                                         ; $5f74: $87
    adc [hl]                                      ; $5f75: $8e
    ld c, a                                       ; $5f76: $4f
    sbc d                                         ; $5f77: $9a
    rra                                           ; $5f78: $1f
    ld [hl-], a                                   ; $5f79: $32
    ld bc, $623f                                  ; $5f7a: $01 $3f $62
    ld a, a                                       ; $5f7d: $7f
    add $fb                                       ; $5f7e: $c6 $fb
    xor d                                         ; $5f80: $aa
    rst $10                                       ; $5f81: $d7
    ld a, [de]                                    ; $5f82: $1a
    ld a, [hl+]                                   ; $5f83: $2a
    add b                                         ; $5f84: $80
    ld a, [hl+]                                   ; $5f85: $2a
    ld [bc], a                                    ; $5f86: $02
    rst $38                                       ; $5f87: $ff
    ld h, d                                       ; $5f88: $62
    rra                                           ; $5f89: $1f
    ld [bc], a                                    ; $5f8a: $02
    rst $38                                       ; $5f8b: $ff
    sub [hl]                                      ; $5f8c: $96
    rrca                                          ; $5f8d: $0f
    nop                                           ; $5f8e: $00
    ld a, [bc]                                    ; $5f8f: $0a
    rst $38                                       ; $5f90: $ff
    ld d, d                                       ; $5f91: $52
    rst $38                                       ; $5f92: $ff
    and [hl]                                      ; $5f93: $a6

jr_09f_5f94:
    ei                                            ; $5f94: $fb
    ld [$8057], a                                 ; $5f95: $ea $57 $80
    inc [hl]                                      ; $5f98: $34
    ld a, [bc]                                    ; $5f99: $0a
    rst $18                                       ; $5f9a: $df
    jr nz, jr_09f_5f94                            ; $5f9b: $20 $f7

    ld [$a25d], sp                                ; $5f9d: $08 $5d $a2
    xor d                                         ; $5fa0: $aa
    nop                                           ; $5fa1: $00
    ld d, l                                       ; $5fa2: $55
    db $10                                        ; $5fa3: $10
    rst $28                                       ; $5fa4: $ef
    add c                                         ; $5fa5: $81
    rst $38                                       ; $5fa6: $ff
    ld d, a                                       ; $5fa7: $57
    rst $38                                       ; $5fa8: $ff
    xor a                                         ; $5fa9: $af
    add b                                         ; $5faa: $80
    ld d, h                                       ; $5fab: $54
    dec b                                         ; $5fac: $05
    ld b, b                                       ; $5fad: $40
    rst $38                                       ; $5fae: $ff
    ld c, b                                       ; $5faf: $48
    ldh a, [rLY]                                  ; $5fb0: $f0 $44
    ld hl, sp+$41                                 ; $5fb2: $f8 $41
    ld bc, $4ef8                                  ; $5fb4: $01 $f8 $4e
    pop af                                        ; $5fb7: $f1
    ld b, b                                       ; $5fb8: $40
    rst $38                                       ; $5fb9: $ff
    ld h, b                                       ; $5fba: $60
    rst $18                                       ; $5fbb: $df
    ret z                                         ; $5fbc: $c8

    jr jr_09f_5fc0                                ; $5fbd: $18 $01

    ld c, e                                       ; $5fbf: $4b

jr_09f_5fc0:
    dec bc                                        ; $5fc0: $0b
    cp a                                          ; $5fc1: $bf
    ld d, [hl]                                    ; $5fc2: $56
    inc l                                         ; $5fc3: $2c
    rst $38                                       ; $5fc4: $ff
    ld e, b                                       ; $5fc5: $58
    jr nc, jr_09f_5fc9                            ; $5fc6: $30 $01

    ld b, b                                       ; $5fc8: $40

jr_09f_5fc9:
    ld h, b                                       ; $5fc9: $60
    ld d, h                                       ; $5fca: $54
    ld b, $82                                     ; $5fcb: $06 $82
    ld sp, hl                                     ; $5fcd: $f9
    ld [$f400], sp                                ; $5fce: $08 $00 $f4
    ld [$0030], sp                                ; $5fd1: $08 $30 $00
    db $fd                                        ; $5fd4: $fd
    sub h                                         ; $5fd5: $94
    ld [$1cda], sp                                ; $5fd6: $08 $da $1c
    dec d                                         ; $5fd9: $15
    ld a, [hl+]                                   ; $5fda: $2a
    add b                                         ; $5fdb: $80
    ld a, a                                       ; $5fdc: $7f
    and b                                         ; $5fdd: $a0
    ld a, [c]                                     ; $5fde: $f2
    jr jr_09f_6036                                ; $5fdf: $18 $55

    ld a, d                                       ; $5fe1: $7a
    ld hl, $ff56                                  ; $5fe2: $21 $56 $ff
    ld l, h                                       ; $5fe5: $6c
    cp $59                                        ; $5fe6: $fe $59
    inc c                                         ; $5fe8: $0c
    db $fc                                        ; $5fe9: $fc
    ld [hl], d                                    ; $5fea: $72
    db $fc                                        ; $5feb: $fc
    ld h, b                                       ; $5fec: $60
    ld b, $1b                                     ; $5fed: $06 $1b
    or d                                          ; $5fef: $b2
    ld [$500f], sp                                ; $5ff0: $08 $0f $50
    inc b                                         ; $5ff3: $04
    rlca                                          ; $5ff4: $07
    add sp, $06                                   ; $5ff5: $e8 $06
    xor d                                         ; $5ff7: $aa
    ld d, l                                       ; $5ff8: $55
    adc d                                         ; $5ff9: $8a
    ld sp, $c087                                  ; $5ffa: $31 $87 $c0
    dec b                                         ; $5ffd: $05
    inc bc                                        ; $5ffe: $03
    and b                                         ; $5fff: $a0

Jump_09f_6000:
    ld bc, $5faa                                  ; $6000: $01 $aa $5f
    ld a, [hl-]                                   ; $6003: $3a
    dec hl                                        ; $6004: $2b
    dec b                                         ; $6005: $05
    call nz, Call_000_0001                        ; $6006: $c4 $01 $00
    inc [hl]                                      ; $6009: $34
    call nc, $fc61                                ; $600a: $d4 $61 $fc
    ld b, b                                       ; $600d: $40
    db $fc                                        ; $600e: $fc
    ld h, d                                       ; $600f: $62
    call c, Call_09f_4102                         ; $6010: $dc $02 $41
    cp $6a                                        ; $6013: $fe $6a
    push de                                       ; $6015: $d5
    ld d, l                                       ; $6016: $55
    ld [$09c4], a                                 ; $6017: $ea $c4 $09
    ld d, b                                       ; $601a: $50
    inc b                                         ; $601b: $04
    ld b, $40                                     ; $601c: $06 $40
    ld b, $09                                     ; $601e: $06 $09
    ld b, $84                                     ; $6020: $06 $84
    dec sp                                        ; $6022: $3b
    ld d, b                                       ; $6023: $50
    ld bc, $2800                                  ; $6024: $01 $00 $28
    ld bc, $011e                                  ; $6027: $01 $1e $01
    adc l                                         ; $602a: $8d
    inc bc                                        ; $602b: $03
    ld a, d                                       ; $602c: $7a
    add a                                         ; $602d: $87
    jr nz, jr_09f_6085                            ; $602e: $20 $55

    xor a                                         ; $6030: $af
    db $fc                                        ; $6031: $fc
    dec c                                         ; $6032: $0d
    jr c, @-$16                                   ; $6033: $38 $e8

    ld [hl], b                                    ; $6035: $70

jr_09f_6036:
    ret nc                                        ; $6036: $d0

    or [hl]                                       ; $6037: $b6
    ld bc, $79e0                                  ; $6038: $01 $e0 $79
    add $c0                                       ; $603b: $c6 $c0
    add b                                         ; $603d: $80
    ld [$0cf7], sp                                ; $603e: $08 $f7 $0c
    ld c, $02                                     ; $6041: $0e $02
    ei                                            ; $6043: $fb
    dec b                                         ; $6044: $05
    db $fd                                        ; $6045: $fd
    ld a, [bc]                                    ; $6046: $0a
    ei                                            ; $6047: $fb
    inc b                                         ; $6048: $04
    ldh a, [$27]                                  ; $6049: $f0 $27
    nop                                           ; $604b: $00
    nop                                           ; $604c: $00
    ld a, a                                       ; $604d: $7f
    add b                                         ; $604e: $80
    xor $10                                       ; $604f: $ee $10
    ld e, l                                       ; $6051: $5d
    xor b                                         ; $6052: $a8
    xor [hl]                                      ; $6053: $ae
    ld d, h                                       ; $6054: $54
    nop                                           ; $6055: $00
    push de                                       ; $6056: $d5
    xor d                                         ; $6057: $aa
    xor e                                         ; $6058: $ab
    ld d, h                                       ; $6059: $54
    ld e, a                                       ; $605a: $5f
    and d                                         ; $605b: $a2
    db $eb                                        ; $605c: $eb
    dec d                                         ; $605d: $15
    nop                                           ; $605e: $00
    push af                                       ; $605f: $f5
    ld a, [bc]                                    ; $6060: $0a
    db $eb                                        ; $6061: $eb
    inc d                                         ; $6062: $14
    rst $38                                       ; $6063: $ff
    add b                                         ; $6064: $80

jr_09f_6065:
    xor $51                                       ; $6065: $ee $51
    nop                                           ; $6067: $00
    rst $18                                       ; $6068: $df
    jr z, jr_09f_6065                             ; $6069: $28 $fa

    nop                                           ; $606b: $00
    ld [hl], a                                    ; $606c: $77
    and b                                         ; $606d: $a0
    ei                                            ; $606e: $fb
    db $10                                        ; $606f: $10
    inc b                                         ; $6070: $04
    push af                                       ; $6071: $f5
    ld [$c0c0], sp                                ; $6072: $08 $c0 $c0
    and b                                         ; $6075: $a0
    ldh [$57], a                                  ; $6076: $e0 $57
    db $eb                                        ; $6078: $eb
    nop                                           ; $6079: $00
    nop                                           ; $607a: $00
    db $dd                                        ; $607b: $dd
    add b                                         ; $607c: $80
    xor d                                         ; $607d: $aa
    ld b, b                                       ; $607e: $40
    ld d, l                                       ; $607f: $55
    and b                                         ; $6080: $a0

jr_09f_6081:
    cp d                                          ; $6081: $ba
    ld b, b                                       ; $6082: $40
    nop                                           ; $6083: $00
    push af                                       ; $6084: $f5

jr_09f_6085:
    jr nz, jr_09f_6081                            ; $6085: $20 $fa

    ld d, b                                       ; $6087: $50
    push de                                       ; $6088: $d5
    ld [$ffff], sp                                ; $6089: $08 $ff $ff
    nop                                           ; $608c: $00
    dec d                                         ; $608d: $15
    rst $38                                       ; $608e: $ff
    ld l, c                                       ; $608f: $69
    cp a                                          ; $6090: $bf
    ld d, c                                       ; $6091: $51
    rst $38                                       ; $6092: $ff
    ld hl, $46ff                                  ; $6093: $21 $ff $46
    ld d, c                                       ; $6096: $51
    ld [hl+], a                                   ; $6097: $22
    ld bc, $1fe1                                  ; $6098: $01 $e1 $1f
    ld hl, $0112                                  ; $609b: $21 $12 $01
    inc b                                         ; $609e: $04
    ld l, b                                       ; $609f: $68
    inc hl                                        ; $60a0: $23
    nop                                           ; $60a1: $00
    rst $18                                       ; $60a2: $df
    dec b                                         ; $60a3: $05
    rst $38                                       ; $60a4: $ff
    add hl, hl                                    ; $60a5: $29
    rst $18                                       ; $60a6: $df
    ld de, $a1ff                                  ; $60a7: $11 $ff $a1
    and b                                         ; $60aa: $a0
    cp b                                          ; $60ab: $b8
    ld [bc], a                                    ; $60ac: $02
    and c                                         ; $60ad: $a1
    jr nz, jr_09f_60d0                            ; $60ae: $20 $20

    and c                                         ; $60b0: $a1
    ld e, a                                       ; $60b1: $5f
    ld b, c                                       ; $60b2: $41
    cp a                                          ; $60b3: $bf
    ld bc, $ff40                                  ; $60b4: $01 $40 $ff
    cp l                                          ; $60b7: $bd
    inc bc                                        ; $60b8: $03
    ld b, b                                       ; $60b9: $40
    ld e, a                                       ; $60ba: $5f
    ld [$04af], sp                                ; $60bb: $08 $af $04
    ld [hl], a                                    ; $60be: $77
    ld hl, $ef00                                  ; $60bf: $21 $00 $ef
    ld h, [hl]                                    ; $60c2: $66
    inc bc                                        ; $60c3: $03
    cp a                                          ; $60c4: $bf
    nop                                           ; $60c5: $00
    ld e, a                                       ; $60c6: $5f
    add b                                         ; $60c7: $80
    ld [hl], b                                    ; $60c8: $70
    ld c, a                                       ; $60c9: $4f
    ld d, b                                       ; $60ca: $50
    xor c                                         ; $60cb: $a9
    ld [hl], b                                    ; $60cc: $70
    ld h, a                                       ; $60cd: $67
    sub l                                         ; $60ce: $95
    ld [hl], b                                    ; $60cf: $70

jr_09f_60d0:
    rlca                                          ; $60d0: $07
    cp a                                          ; $60d1: $bf
    nop                                           ; $60d2: $00
    db $dd                                        ; $60d3: $dd
    ld [$ee00], sp                                ; $60d4: $08 $00 $ee
    inc b                                         ; $60d7: $04
    push af                                       ; $60d8: $f5
    ld [bc], a                                    ; $60d9: $02
    rst $28                                       ; $60da: $ef
    nop                                           ; $60db: $00
    rst $30                                       ; $60dc: $f7
    ld [bc], a                                    ; $60dd: $02
    ld [hl-], a                                   ; $60de: $32
    db $eb                                        ; $60df: $eb
    ld bc, $0163                                  ; $60e0: $01 $63 $01
    jp nz, $9207                                  ; $60e3: $c2 $07 $92

    db $ed                                        ; $60e6: $ed
    nop                                           ; $60e7: $00
    rlca                                          ; $60e8: $07
    rst $38                                       ; $60e9: $ff
    nop                                           ; $60ea: $00
    adc d                                         ; $60eb: $8a
    rst $30                                       ; $60ec: $f7
    add h                                         ; $60ed: $84
    rst $38                                       ; $60ee: $ff
    adc a                                         ; $60ef: $8f
    db $fd                                        ; $60f0: $fd
    sbc [hl]                                      ; $60f1: $9e
    ei                                            ; $60f2: $fb
    nop                                           ; $60f3: $00
    or h                                          ; $60f4: $b4
    rst $38                                       ; $60f5: $ff
    db $ec                                        ; $60f6: $ec
    ei                                            ; $60f7: $fb
    ret nc                                        ; $60f8: $d0

    rst $38                                       ; $60f9: $ff
    and h                                         ; $60fa: $a4
    ei                                            ; $60fb: $fb
    inc b                                         ; $60fc: $04
    ret nz                                        ; $60fd: $c0

    rst $38                                       ; $60fe: $ff
    add h                                         ; $60ff: $84
    ei                                            ; $6100: $fb
    add b                                         ; $6101: $80
    inc b                                         ; $6102: $04
    jr nc, @-$79                                  ; $6103: $30 $85

    ld a, [$8229]                                 ; $6105: $fa $29 $82
    db $fd                                        ; $6108: $fd
    sub b                                         ; $6109: $90
    ld c, $ff                                     ; $610a: $0e $ff
    jr jr_09f_6115                                ; $610c: $18 $07

    ld [$ae55], a                                 ; $610e: $ea $55 $ae
    dec c                                         ; $6111: $0d
    sub h                                         ; $6112: $94
    ret c                                         ; $6113: $d8

jr_09f_6114:
    ld a, [bc]                                    ; $6114: $0a

jr_09f_6115:
    ld [hl], a                                    ; $6115: $77
    adc b                                         ; $6116: $88
    jr nz, jr_09f_6128                            ; $6117: $20 $0f

    xor d                                         ; $6119: $aa

jr_09f_611a:
    ld d, $06                                     ; $611a: $16 $06
    ld [bc], a                                    ; $611c: $02
    db $fd                                        ; $611d: $fd
    jr nc, jr_09f_6125                            ; $611e: $30 $05

    ld a, [$05fb]                                 ; $6120: $fa $fb $05
    sub e                                         ; $6123: $93
    dec b                                         ; $6124: $05

jr_09f_6125:
    ld [bc], a                                    ; $6125: $02
    rst $38                                       ; $6126: $ff
    xor a                                         ; $6127: $af

jr_09f_6128:
    ld d, l                                       ; $6128: $55
    nop                                           ; $6129: $00
    ld a, [bc]                                    ; $612a: $0a
    rst $38                                       ; $612b: $ff
    sub h                                         ; $612c: $94
    ld a, a                                       ; $612d: $7f
    jr z, @+$01                                   ; $612e: $28 $ff

    ld a, [$3855]                                 ; $6130: $fa $55 $38
    ld [hl], l                                    ; $6133: $75
    ld a, [hl+]                                   ; $6134: $2a
    ld h, b                                       ; $6135: $60
    rrca                                          ; $6136: $0f
    jr nz, jr_09f_6141                            ; $6137: $20 $08

    db $e4                                        ; $6139: $e4
    ld c, $2a                                     ; $613a: $0e $2a
    push de                                       ; $613c: $d5
    push de                                       ; $613d: $d5
    ld b, b                                       ; $613e: $40
    ld a, [hl+]                                   ; $613f: $2a
    ld a, d                                       ; $6140: $7a

jr_09f_6141:
    ld l, $06                                     ; $6141: $2e $06
    ld hl, sp-$40                                 ; $6143: $f8 $c0
    nop                                           ; $6145: $00
    dec d                                         ; $6146: $15
    ldh [$c0], a                                  ; $6147: $e0 $c0
    inc a                                         ; $6149: $3c
    jr jr_09f_611a                                ; $614a: $18 $ce

    ld c, $04                                     ; $614c: $0e $04
    rlca                                          ; $614e: $07
    ld a, [bc]                                    ; $614f: $0a
    add hl, bc                                    ; $6150: $09
    ld d, h                                       ; $6151: $54
    inc de                                        ; $6152: $13
    ret nz                                        ; $6153: $c0

    ld [hl], h                                    ; $6154: $74
    rrca                                          ; $6155: $0f
    ld a, [bc]                                    ; $6156: $0a
    ld e, $03                                     ; $6157: $1e $03
    rst $38                                       ; $6159: $ff
    ld b, $fc                                     ; $615a: $06 $fc
    dec b                                         ; $615c: $05
    db $fc                                        ; $615d: $fc
    db $10                                        ; $615e: $10
    ld b, $fc                                     ; $615f: $06 $fc
    jr z, jr_09f_6114                             ; $6161: $28 $b1

    dec c                                         ; $6163: $0d
    rst $38                                       ; $6164: $ff
    db $fc                                        ; $6165: $fc
    rst $38                                       ; $6166: $ff
    inc sp                                        ; $6167: $33
    ld bc, $ba57                                  ; $6168: $01 $57 $ba
    db $10                                        ; $616b: $10
    ld sp, $3010                                  ; $616c: $31 $10 $30
    db $10                                        ; $616f: $10
    inc l                                         ; $6170: $2c
    rrca                                          ; $6171: $0f
    nop                                           ; $6172: $00
    ccf                                           ; $6173: $3f
    ret nz                                        ; $6174: $c0

    ld a, a                                       ; $6175: $7f
    xor d                                         ; $6176: $aa
    ld [hl], b                                    ; $6177: $70
    sbc a                                         ; $6178: $9f
    ld h, b                                       ; $6179: $60
    cp a                                          ; $617a: $bf
    inc c                                         ; $617b: $0c
    ld a, a                                       ; $617c: $7f
    sub l                                         ; $617d: $95
    ld a, b                                       ; $617e: $78
    xor b                                         ; $617f: $a8
    inc a                                         ; $6180: $3c
    rrca                                          ; $6181: $0f
    or $04                                        ; $6182: $f6 $04
    xor d                                         ; $6184: $aa
    rlca                                          ; $6185: $07
    nop                                           ; $6186: $00
    db $fc                                        ; $6187: $fc
    inc bc                                        ; $6188: $03
    cp $ff                                        ; $6189: $fe $ff
    ld d, h                                       ; $618b: $54
    rrca                                          ; $618c: $0f
    ld a, [bc]                                    ; $618d: $0a
    inc b                                         ; $618e: $04
    add b                                         ; $618f: $80
    inc [hl]                                      ; $6190: $34
    nop                                           ; $6191: $00
    inc b                                         ; $6192: $04
    db $fc                                        ; $6193: $fc
    ld d, $ec                                     ; $6194: $16 $ec
    ld h, $dc                                     ; $6196: $26 $dc
    ld b, [hl]                                    ; $6198: $46
    ld [bc], a                                    ; $6199: $02
    cp d                                          ; $619a: $ba
    add e                                         ; $619b: $83
    ld a, [hl]                                    ; $619c: $7e
    ld b, e                                       ; $619d: $43
    cp l                                          ; $619e: $bd
    jr nc, jr_09f_61d7                            ; $619f: $30 $36

    db $10                                        ; $61a1: $10
    ld sp, $0280                                  ; $61a2: $31 $80 $02
    ld [$3311], sp                                ; $61a5: $08 $11 $33
    ld de, $12b7                                  ; $61a8: $11 $b7 $12
    ld a, b                                       ; $61ab: $78
    sub b                                         ; $61ac: $90
    nop                                           ; $61ad: $00
    ld a, a                                       ; $61ae: $7f
    xor d                                         ; $61af: $aa
    ld b, b                                       ; $61b0: $40
    cp a                                          ; $61b1: $bf
    ld a, a                                       ; $61b2: $7f
    add b                                         ; $61b3: $80
    nop                                           ; $61b4: $00
    rst $38                                       ; $61b5: $ff
    jr nz, @-$56                                  ; $61b6: $20 $a8

    ld d, a                                       ; $61b8: $57
    ld d, b                                       ; $61b9: $50
    rrca                                          ; $61ba: $0f
    rrca                                          ; $61bb: $0f
    inc b                                         ; $61bc: $04
    rst $38                                       ; $61bd: $ff
    xor d                                         ; $61be: $aa
    ld bc, $dde5                                  ; $61bf: $01 $e5 $dd
    inc b                                         ; $61c2: $04
    add h                                         ; $61c3: $84
    rrca                                          ; $61c4: $0f
    ld [bc], a                                    ; $61c5: $02
    dec bc                                        ; $61c6: $0b
    add c                                         ; $61c7: $81
    ld a, [hl]                                    ; $61c8: $7e
    call z, $df17                                 ; $61c9: $cc $17 $df
    jr nc, jr_09f_61dd                            ; $61cc: $30 $0f

    jr nz, jr_09f_6218                            ; $61ce: $20 $48

    or a                                          ; $61d0: $b7
    ld h, c                                       ; $61d1: $61
    ld bc, $fd95                                  ; $61d2: $01 $95 $fd
    ld e, d                                       ; $61d5: $5a
    ld a, b                                       ; $61d6: $78

jr_09f_61d7:
    or a                                          ; $61d7: $b7
    jr jr_09f_620a                                ; $61d8: $18 $30

    rst $08                                       ; $61da: $cf
    ld [bc], a                                    ; $61db: $02
    adc [hl]                                      ; $61dc: $8e

jr_09f_61dd:
    ld [bc], a                                    ; $61dd: $02
    ld [hl], d                                    ; $61de: $72
    dec h                                         ; $61df: $25
    rst $38                                       ; $61e0: $ff
    adc b                                         ; $61e1: $88
    ldh [rP1], a                                  ; $61e2: $e0 $00
    ld [$08d0], sp                                ; $61e4: $08 $d0 $08
    ret nc                                        ; $61e7: $d0

    jr z, @-$3e                                   ; $61e8: $28 $c0

    dec e                                         ; $61ea: $1d
    ldh [rNR41], a                                ; $61eb: $e0 $20
    rlca                                          ; $61ed: $07
    ld hl, sp+$40                                 ; $61ee: $f8 $40

jr_09f_61f0:
    dec c                                         ; $61f0: $0d
    add d                                         ; $61f1: $82
    ccf                                           ; $61f2: $3f
    add d                                         ; $61f3: $82
    ld e, a                                       ; $61f4: $5f
    add d                                         ; $61f5: $82
    ld bc, $a25f                                  ; $61f6: $01 $5f $a2
    rra                                           ; $61f9: $1f
    jp nz, Jump_000_063f                          ; $61fa: $c2 $3f $06

    rst $38                                       ; $61fd: $ff
    jp nc, Jump_000_1805                          ; $61fe: $d2 $05 $18

    ldh a, [rTAC]                                 ; $6201: $f0 $07
    ld hl, sp-$7a                                 ; $6203: $f8 $86
    ld a, [hl+]                                   ; $6205: $2a
    jr c, jr_09f_6214                             ; $6206: $38 $0c

    sub [hl]                                      ; $6208: $96
    ld a, a                                       ; $6209: $7f

jr_09f_620a:
    ld l, $3a                                     ; $620a: $2e $3a
    ei                                            ; $620c: $fb
    ld a, [$130c]                                 ; $620d: $fa $0c $13
    ld l, d                                       ; $6210: $6a
    dec c                                         ; $6211: $0d
    and b                                         ; $6212: $a0
    dec e                                         ; $6213: $1d

jr_09f_6214:
    xor d                                         ; $6214: $aa
    and b                                         ; $6215: $a0
    inc b                                         ; $6216: $04
    inc h                                         ; $6217: $24

jr_09f_6218:
    dec b                                         ; $6218: $05
    inc bc                                        ; $6219: $03
    ld a, [bc]                                    ; $621a: $0a
    inc b                                         ; $621b: $04
    inc d                                         ; $621c: $14
    ld [$1d40], sp                                ; $621d: $08 $40 $1d
    xor $d7                                       ; $6220: $ee $d7
    rlca                                          ; $6222: $07
    ld a, [de]                                    ; $6223: $1a
    ld b, d                                       ; $6224: $42
    add c                                         ; $6225: $81
    nop                                           ; $6226: $00
    db $dd                                        ; $6227: $dd
    rlca                                          ; $6228: $07
    ld b, b                                       ; $6229: $40
    dec e                                         ; $622a: $1d
    xor d                                         ; $622b: $aa
    ld h, h                                       ; $622c: $64
    dec b                                         ; $622d: $05
    add hl, hl                                    ; $622e: $29
    inc b                                         ; $622f: $04
    ret nz                                        ; $6230: $c0

    ld d, b                                       ; $6231: $50
    jr nz, @+$0a                                  ; $6232: $20 $08

    db $10                                        ; $6234: $10
    ld b, b                                       ; $6235: $40
    ld e, l                                       ; $6236: $5d
    nop                                           ; $6237: $00
    nop                                           ; $6238: $00
    nop                                           ; $6239: $00
    ld a, [hl+]                                   ; $623a: $2a
    ld de, $2215                                  ; $623b: $11 $15 $22
    dec sp                                        ; $623e: $3b
    ld b, h                                       ; $623f: $44
    or [hl]                                       ; $6240: $b6
    ld c, b                                       ; $6241: $48
    nop                                           ; $6242: $00
    or l                                          ; $6243: $b5
    ld c, b                                       ; $6244: $48
    and $98                                       ; $6245: $e6 $98
    db $eb                                        ; $6247: $eb
    sub h                                         ; $6248: $94
    or a                                          ; $6249: $b7
    ret c                                         ; $624a: $d8

    ret nz                                        ; $624b: $c0

    ld [hl], $08                                  ; $624c: $36 $08
    ld e, b                                       ; $624e: $58
    dec c                                         ; $624f: $0d
    ld b, b                                       ; $6250: $40
    nop                                           ; $6251: $00
    and b                                         ; $6252: $a0
    nop                                           ; $6253: $00
    ld d, b                                       ; $6254: $50
    nop                                           ; $6255: $00
    nop                                           ; $6256: $00
    add sp, $00                                   ; $6257: $e8 $00
    inc b                                         ; $6259: $04
    adc b                                         ; $625a: $88
    add d                                         ; $625b: $82
    ld b, h                                       ; $625c: $44
    ld b, h                                       ; $625d: $44
    ld [hl+], a                                   ; $625e: $22
    nop                                           ; $625f: $00
    ld hl, $0112                                  ; $6260: $21 $12 $01
    ld [de], a                                    ; $6263: $12
    inc d                                         ; $6264: $14
    add hl, bc                                    ; $6265: $09
    ld [bc], a                                    ; $6266: $02
    add hl, bc                                    ; $6267: $09
    jr nc, jr_09f_626e                            ; $6268: $30 $04

    add hl, bc                                    ; $626a: $09
    ld b, l                                       ; $626b: $45
    dec d                                         ; $626c: $15
    dec b                                         ; $626d: $05

jr_09f_626e:
    jr nc, jr_09f_61f0                            ; $626e: $30 $80

    nop                                           ; $6270: $00
    di                                            ; $6271: $f3
    sbc h                                         ; $6272: $9c
    nop                                           ; $6273: $00
    or c                                          ; $6274: $b1
    sbc $d2                                       ; $6275: $de $d2
    cp l                                          ; $6277: $bd
    ld c, c                                       ; $6278: $49
    cp $c8                                        ; $6279: $fe $c8
    ld a, a                                       ; $627b: $7f
    nop                                           ; $627c: $00
    ld d, h                                       ; $627d: $54
    ld a, a                                       ; $627e: $7f
    ld l, d                                       ; $627f: $6a
    ccf                                           ; $6280: $3f
    dec d                                         ; $6281: $15
    ccf                                           ; $6282: $3f
    db $f4                                        ; $6283: $f4
    nop                                           ; $6284: $00
    ld b, b                                       ; $6285: $40
    ld a, [$0369]                                 ; $6286: $fa $69 $03
    ld a, [hl]                                    ; $6289: $7e
    add b                                         ; $628a: $80
    cp a                                          ; $628b: $bf
    ld b, b                                       ; $628c: $40
    ld d, l                                       ; $628d: $55
    xor d                                         ; $628e: $aa
    add b                                         ; $628f: $80
    call nz, $ff05                                ; $6290: $c4 $05 $ff
    ld [bc], a                                    ; $6293: $02
    add hl, bc                                    ; $6294: $09
    add [hl]                                      ; $6295: $86
    add hl, bc                                    ; $6296: $09
    ld d, [hl]                                    ; $6297: $56
    add hl, bc                                    ; $6298: $09
    nop                                           ; $6299: $00
    xor a                                         ; $629a: $af
    ld [de], a                                    ; $629b: $12
    rst $28                                       ; $629c: $ef
    ld [de], a                                    ; $629d: $12
    rst $30                                       ; $629e: $f7

jr_09f_629f:
    ld a, [hl+]                                   ; $629f: $2a
    ld l, a                                       ; $62a0: $6f
    call nc, $9b20                                ; $62a1: $d4 $20 $9b

jr_09f_62a4:
    db $ec                                        ; $62a4: $ec
    adc [hl]                                      ; $62a5: $8e
    ld e, l                                       ; $62a6: $5d
    nop                                           ; $62a7: $00
    nop                                           ; $62a8: $00
    ld a, [bc]                                    ; $62a9: $0a
    rra                                           ; $62aa: $1f
    dec h                                         ; $62ab: $25
    ld c, $0f                                     ; $62ac: $0e $0f
    ld d, a                                       ; $62ae: $57
    inc bc                                        ; $62af: $03
    cp e                                          ; $62b0: $bb
    nop                                           ; $62b1: $00
    ld [hl], $81                                  ; $62b2: $36 $81
    ld [bc], a                                    ; $62b4: $02
    sbc b                                         ; $62b5: $98
    ld [bc], a                                    ; $62b6: $02
    ld a, [hl]                                    ; $62b7: $7e
    ret nz                                        ; $62b8: $c0

    push af                                       ; $62b9: $f5
    ld d, $80                                     ; $62ba: $16 $80
    dec c                                         ; $62bc: $0d
    ld d, $f8                                     ; $62bd: $16 $f8
    ld l, $f0                                     ; $62bf: $2e $f0
    db $fd                                        ; $62c1: $fd
    ret nz                                        ; $62c2: $c0

    ld h, b                                       ; $62c3: $60
    ld a, [$0750]                                 ; $62c4: $fa $50 $07
    add b                                         ; $62c7: $80
    dec e                                         ; $62c8: $1d
    ld [bc], a                                    ; $62c9: $02
    rst $38                                       ; $62ca: $ff
    dec d                                         ; $62cb: $15
    db $e4                                        ; $62cc: $e4
    jr z, jr_09f_62cf                             ; $62cd: $28 $00

jr_09f_62cf:
    ret z                                         ; $62cf: $c8

    ld d, c                                       ; $62d0: $51
    or b                                          ; $62d1: $b0
    ld h, b                                       ; $62d2: $60
    cp a                                          ; $62d3: $bf
    ld [hl], l                                    ; $62d4: $75
    ret nz                                        ; $62d5: $c0

    cp b                                          ; $62d6: $b8
    db $10                                        ; $62d7: $10
    ret nz                                        ; $62d8: $c0

    dec d                                         ; $62d9: $15
    ldh [$6c], a                                  ; $62da: $e0 $6c
    ld c, $82                                     ; $62dc: $0e $82
    ld a, a                                       ; $62de: $7f
    ld d, [hl]                                    ; $62df: $56
    xor e                                         ; $62e0: $ab
    ld b, a                                       ; $62e1: $47
    jp nz, Jump_000_066c                          ; $62e2: $c2 $6c $06

    add d                                         ; $62e5: $82
    ld a, a                                       ; $62e6: $7f
    ld d, $83                                     ; $62e7: $16 $83
    rlca                                          ; $62e9: $07
    ld a, [$ee1e]                                 ; $62ea: $fa $1e $ee
    inc b                                         ; $62ed: $04
    inc bc                                        ; $62ee: $03
    cp $00                                        ; $62ef: $fe $00
    db $fc                                        ; $62f1: $fc
    ld b, l                                       ; $62f2: $45
    jr c, jr_09f_629f                             ; $62f3: $38 $aa

    ld a, [hl+]                                   ; $62f5: $2a
    ld sp, $2694                                  ; $62f6: $31 $94 $26
    nop                                           ; $62f9: $00
    jr c, jr_09f_6341                             ; $62fa: $38 $45

    jr c, jr_09f_62a4                             ; $62fc: $38 $a6

    jr @-$3e                                      ; $62fe: $18 $c0

    inc a                                         ; $6300: $3c
    ld [hl+], a                                   ; $6301: $22
    ld [hl], b                                    ; $6302: $70
    inc e                                         ; $6303: $1c
    inc h                                         ; $6304: $24

jr_09f_6305:
    rra                                           ; $6305: $1f
    and h                                         ; $6306: $a4
    ld c, $94                                     ; $6307: $0e $94
    ld c, [hl]                                    ; $6309: $4e
    cp d                                          ; $630a: $ba
    dec b                                         ; $630b: $05
    ld [hl], l                                    ; $630c: $75
    ld a, [bc]                                    ; $630d: $0a
    nop                                           ; $630e: $00
    xor e                                         ; $630f: $ab
    inc b                                         ; $6310: $04
    ld [hl], l                                    ; $6311: $75
    ld [bc], a                                    ; $6312: $02
    xor a                                         ; $6313: $af
    nop                                           ; $6314: $00
    ld d, a                                       ; $6315: $57
    nop                                           ; $6316: $00
    nop                                           ; $6317: $00
    xor a                                         ; $6318: $af
    ld bc, $805f                                  ; $6319: $01 $5f $80
    xor d                                         ; $631c: $aa
    ld d, l                                       ; $631d: $55
    push de                                       ; $631e: $d5
    xor d                                         ; $631f: $aa
    nop                                           ; $6320: $00
    ld a, [$dd55]                                 ; $6321: $fa $55 $dd
    ld [hl+], a                                   ; $6324: $22
    ld [$7715], a                                 ; $6325: $ea $15 $77
    xor b                                         ; $6328: $a8
    ld [bc], a                                    ; $6329: $02
    ei                                            ; $632a: $fb
    ld d, h                                       ; $632b: $54
    ld [hl], a                                    ; $632c: $77
    adc b                                         ; $632d: $88
    xor a                                         ; $632e: $af
    ld d, b                                       ; $632f: $50
    ld l, a                                       ; $6330: $6f
    rlca                                          ; $6331: $07
    inc b                                         ; $6332: $04
    jr z, jr_09f_6392                             ; $6333: $28 $5d

    and d                                         ; $6335: $a2
    sbc [hl]                                      ; $6336: $9e
    nop                                           ; $6337: $00
    ld a, [bc]                                    ; $6338: $0a

jr_09f_6339:
    rst $00                                       ; $6339: $c7
    dec b                                         ; $633a: $05
    nop                                           ; $633b: $00
    rst $28                                       ; $633c: $ef
    stop                                          ; $633d: $10 $00
    ld a, a                                       ; $633f: $7f
    add b                                         ; $6340: $80

jr_09f_6341:
    cp $41                                        ; $6341: $fe $41
    rst $10                                       ; $6343: $d7
    jr z, @+$01                                   ; $6344: $28 $ff

    ld bc, $fd07                                  ; $6346: $01 $07 $fd
    jr z, jr_09f_6305                             ; $6349: $28 $ba

    ld d, b                                       ; $634b: $50
    push af                                       ; $634c: $f5
    add b                                         ; $634d: $80
    inc bc                                        ; $634e: $03
    ret nz                                        ; $634f: $c0

    ld a, [de]                                    ; $6350: $1a
    call $801e                                    ; $6351: $cd $1e $80
    ret nz                                        ; $6354: $c0

    ld a, [bc]                                    ; $6355: $0a
    ld bc, $89ff                                  ; $6356: $01 $ff $89
    ld [hl], a                                    ; $6359: $77
    inc de                                        ; $635a: $13
    rst $28                                       ; $635b: $ef
    add a                                         ; $635c: $87
    nop                                           ; $635d: $00
    ld a, a                                       ; $635e: $7f
    dec e                                         ; $635f: $1d
    rst $28                                       ; $6360: $ef
    sbc c                                         ; $6361: $99
    ld a, a                                       ; $6362: $7f
    ld [hl], c                                    ; $6363: $71
    ccf                                           ; $6364: $3f
    xor b                                         ; $6365: $a8
    inc b                                         ; $6366: $04
    ld d, a                                       ; $6367: $57
    ld b, b                                       ; $6368: $40
    cp a                                          ; $6369: $bf
    add b                                         ; $636a: $80
    ld a, a                                       ; $636b: $7f
    inc b                                         ; $636c: $04
    ld [$bfc0], sp                                ; $636d: $08 $c0 $bf
    ld [$dfa0], sp                                ; $6370: $08 $a0 $df
    ret nc                                        ; $6373: $d0

    xor a                                         ; $6374: $af
    push af                                       ; $6375: $f5
    ld e, $01                                     ; $6376: $1e $01
    rst $38                                       ; $6378: $ff
    jr nc, jr_09f_637b                            ; $6379: $30 $00

jr_09f_637b:
    rst $08                                       ; $637b: $cf
    ld c, b                                       ; $637c: $48
    add a                                         ; $637d: $87
    and h                                         ; $637e: $a4
    inc bc                                        ; $637f: $03
    ld b, b                                       ; $6380: $40
    inc bc                                        ; $6381: $03
    ld sp, $ef00                                  ; $6382: $31 $00 $ef
    ld b, c                                       ; $6385: $41
    rst $38                                       ; $6386: $ff
    sub c                                         ; $6387: $91
    rst $28                                       ; $6388: $ef
    ld bc, $11ff                                  ; $6389: $01 $ff $11
    add b                                         ; $638c: $80
    inc b                                         ; $638d: $04
    jr nz, jr_09f_6339                            ; $638e: $20 $a9

    sub $80                                       ; $6390: $d6 $80

jr_09f_6392:
    cp $88                                        ; $6392: $fe $88
    or $81                                        ; $6394: $f6 $81
    inc b                                         ; $6396: $04
    cp $81                                        ; $6397: $fe $81
    cp $80                                        ; $6399: $fe $80
    ld a, a                                       ; $639b: $7f
    inc h                                         ; $639c: $24
    inc bc                                        ; $639d: $03
    cp a                                          ; $639e: $bf
    ld a, [bc]                                    ; $639f: $0a
    nop                                           ; $63a0: $00
    ld bc, $0140                                  ; $63a1: $01 $40 $01
    ld [$4201], sp                                ; $63a4: $08 $01 $42
    ld bc, $010a                                  ; $63a7: $01 $0a $01
    ld bc, $03a4                                  ; $63aa: $01 $a4 $03
    add h                                         ; $63ad: $84
    inc bc                                        ; $63ae: $03
    ld c, b                                       ; $63af: $48
    add a                                         ; $63b0: $87
    jr z, jr_09f_63db                             ; $63b1: $28 $28

    inc d                                         ; $63b3: $14
    ld de, $0bef                                  ; $63b4: $11 $ef $0b
    ld a, [$2903]                                 ; $63b7: $fa $03 $29
    add [hl]                                      ; $63ba: $86
    ld [bc], a                                    ; $63bb: $02
    ld bc, $0cfe                                  ; $63bc: $01 $fe $0c
    inc b                                         ; $63bf: $04
    ei                                            ; $63c0: $fb
    ld [$42f7], sp                                ; $63c1: $08 $f7 $42
    dec bc                                        ; $63c4: $0b
    ld a, [c]                                     ; $63c5: $f2
    rrca                                          ; $63c6: $0f
    ld c, b                                       ; $63c7: $48
    add a                                         ; $63c8: $87
    ld [$cf30], sp                                ; $63c9: $08 $30 $cf
    add c                                         ; $63cc: $81
    ld a, a                                       ; $63cd: $7f
    call c, $aa0d                                 ; $63ce: $dc $0d $aa
    ld e, a                                       ; $63d1: $5f
    inc d                                         ; $63d2: $14
    and b                                         ; $63d3: $a0
    ld a, [c]                                     ; $63d4: $f2
    rlca                                          ; $63d5: $07
    ld d, c                                       ; $63d6: $51
    or $03                                        ; $63d7: $f6 $03
    ld d, c                                       ; $63d9: $51
    rst $28                                       ; $63da: $ef

jr_09f_63db:
    and c                                         ; $63db: $a1
    rst $18                                       ; $63dc: $df
    ld d, c                                       ; $63dd: $51
    db $10                                        ; $63de: $10
    xor a                                         ; $63df: $af
    and c                                         ; $63e0: $a1
    ld e, a                                       ; $63e1: $5f
    ldh a, [$0b]                                  ; $63e2: $f0 $0b
    cp a                                          ; $63e4: $bf
    ld b, b                                       ; $63e5: $40
    ld a, l                                       ; $63e6: $7d
    xor b                                         ; $63e7: $a8
    nop                                           ; $63e8: $00
    rst $38                                       ; $63e9: $ff
    nop                                           ; $63ea: $00
    ld [hl], l                                    ; $63eb: $75
    adc d                                         ; $63ec: $8a
    rst $38                                       ; $63ed: $ff
    db $10                                        ; $63ee: $10
    rst $10                                       ; $63ef: $d7
    xor b                                         ; $63f0: $a8
    nop                                           ; $63f1: $00
    cp a                                          ; $63f2: $bf
    ld b, b                                       ; $63f3: $40
    ld e, a                                       ; $63f4: $5f
    and b                                         ; $63f5: $a0
    cp $00                                        ; $63f6: $fe $00
    db $fd                                        ; $63f8: $fd
    ld [$fe00], sp                                ; $63f9: $08 $00 $fe
    inc b                                         ; $63fc: $04
    push de                                       ; $63fd: $d5
    ld a, [hl+]                                   ; $63fe: $2a
    ei                                            ; $63ff: $fb
    inc b                                         ; $6400: $04
    db $dd                                        ; $6401: $dd
    ld [hl+], a                                   ; $6402: $22
    jp nz, Jump_000_00d4                          ; $6403: $c2 $d4 $00

    ld h, c                                       ; $6406: $61
    ld [bc], a                                    ; $6407: $02
    add b                                         ; $6408: $80
    rst $38                                       ; $6409: $ff
    sub c                                         ; $640a: $91
    xor $d0                                       ; $640b: $ee $d0
    dec de                                        ; $640d: $1b
    add l                                         ; $640e: $85
    nop                                           ; $640f: $00
    cp $8e                                        ; $6410: $fe $8e
    ld hl, sp-$01                                 ; $6412: $f8 $ff
    rst $38                                       ; $6414: $ff
    jr z, @+$01                                   ; $6415: $28 $ff

    ld d, l                                       ; $6417: $55
    ld h, b                                       ; $6418: $60
    ld a, [$1e86]                                 ; $6419: $fa $86 $1e
    xor d                                         ; $641c: $aa
    inc bc                                        ; $641d: $03
    dec b                                         ; $641e: $05
    sbc d                                         ; $641f: $9a
    push af                                       ; $6420: $f5
    and h                                         ; $6421: $a4
    ei                                            ; $6422: $fb
    ld b, $c8                                     ; $6423: $06 $c8
    rst $30                                       ; $6425: $f7
    add b                                         ; $6426: $80
    rst $38                                       ; $6427: $ff
    adc b                                         ; $6428: $88
    inc b                                         ; $6429: $04
    jr nz, jr_09f_644f                            ; $642a: $20 $23

    rrca                                          ; $642c: $0f
    add b                                         ; $642d: $80
    nop                                           ; $642e: $00
    nop                                           ; $642f: $00
    inc hl                                        ; $6430: $23
    sbc h                                         ; $6431: $9c
    nop                                           ; $6432: $00
    add b                                         ; $6433: $80
    inc de                                        ; $6434: $13
    adc h                                         ; $6435: $8c
    nop                                           ; $6436: $00
    jr @-$7e                                      ; $6437: $18 $80

    sub l                                         ; $6439: $95
    ld [$03ca], sp                                ; $643a: $08 $ca $03
    or $07                                        ; $643d: $f6 $07
    ld d, c                                       ; $643f: $51
    jr nz, @+$03                                  ; $6440: $20 $01

    ld bc, $4100                                  ; $6442: $01 $00 $41
    add b                                         ; $6445: $80
    ld bc, $9300                                  ; $6446: $01 $00 $93
    ld h, b                                       ; $6449: $60
    ld a, [de]                                    ; $644a: $1a
    inc b                                         ; $644b: $04

jr_09f_644c:
    jr nz, jr_09f_644c                            ; $644c: $20 $fe

    adc c                                         ; $644e: $89

jr_09f_644f:
    ret nc                                        ; $644f: $d0

    nop                                           ; $6450: $00
    adc c                                         ; $6451: $89
    or $85                                        ; $6452: $f6 $85
    ld a, [$1089]                                 ; $6454: $fa $89 $10
    or $84                                        ; $6457: $f6 $84
    ei                                            ; $6459: $fb
    sub l                                         ; $645a: $95
    rrca                                          ; $645b: $0f
    ld l, d                                       ; $645c: $6a
    inc b                                         ; $645d: $04
    nop                                           ; $645e: $00
    nop                                           ; $645f: $00
    jr nz, jr_09f_6496                            ; $6460: $20 $34

    inc bc                                        ; $6462: $03
    sbc a                                         ; $6463: $9f
    rrca                                          ; $6464: $0f
    ld l, c                                       ; $6465: $69
    ld b, $03                                     ; $6466: $06 $03
    nop                                           ; $6468: $00
    ld [bc], a                                    ; $6469: $02
    ld bc, $a201                                  ; $646a: $01 $01 $a2
    ld b, c                                       ; $646d: $41
    ld [bc], a                                    ; $646e: $02
    ld bc, $01c2                                  ; $646f: $01 $c2 $01
    ld de, $0400                                  ; $6472: $11 $00 $04
    ld bc, $00b3                                  ; $6475: $01 $b3 $00
    adc d                                         ; $6478: $8a
    push af                                       ; $6479: $f5
    ld e, h                                       ; $647a: $5c
    ld [$fb84], sp                                ; $647b: $08 $84 $fb
    ld a, [bc]                                    ; $647e: $0a
    adc d                                         ; $647f: $8a
    push af                                       ; $6480: $f5
    add l                                         ; $6481: $85
    ld a, [$0c30]                                 ; $6482: $fa $30 $0c
    add b                                         ; $6485: $80
    db $fc                                        ; $6486: $fc
    rlca                                          ; $6487: $07
    ld a, a                                       ; $6488: $7f
    ld bc, $0180                                  ; $6489: $01 $80 $01
    cp $82                                        ; $648c: $fe $82
    ld a, l                                       ; $648e: $7d
    ld d, l                                       ; $648f: $55
    xor d                                         ; $6490: $aa
    cp b                                          ; $6491: $b8
    ld d, $80                                     ; $6492: $16 $80
    db $fc                                        ; $6494: $fc
    ld [bc], a                                    ; $6495: $02

jr_09f_6496:
    rst $38                                       ; $6496: $ff
    ld bc, $ab56                                  ; $6497: $01 $56 $ab
    add l                                         ; $649a: $85
    ld a, a                                       ; $649b: $7f
    ld c, a                                       ; $649c: $4f
    ld l, b                                       ; $649d: $68
    cp d                                          ; $649e: $ba
    ldh [$08], a                                  ; $649f: $e0 $08
    ldh a, [$3a]                                  ; $64a1: $f0 $3a
    add hl, bc                                    ; $64a3: $09
    call nz, $0002                                ; $64a4: $c4 $02 $00
    nop                                           ; $64a7: $00
    or h                                          ; $64a8: $b4
    nop                                           ; $64a9: $00
    pop bc                                        ; $64aa: $c1
    xor h                                         ; $64ab: $ac
    pop bc                                        ; $64ac: $c1
    xor [hl]                                      ; $64ad: $ae
    pop bc                                        ; $64ae: $c1
    cp [hl]                                       ; $64af: $be
    pop bc                                        ; $64b0: $c1
    cp h                                          ; $64b1: $bc
    add b                                         ; $64b2: $80
    ld b, $10                                     ; $64b3: $06 $10
    or h                                          ; $64b5: $b4
    pop bc                                        ; $64b6: $c1
    reti                                          ; $64b7: $d9


    add e                                         ; $64b8: $83
    ld l, h                                       ; $64b9: $6c
    add e                                         ; $64ba: $83
    jp hl                                         ; $64bb: $e9


    nop                                           ; $64bc: $00
    add e                                         ; $64bd: $83
    ld a, h                                       ; $64be: $7c
    add e                                         ; $64bf: $83
    ld [hl], h                                    ; $64c0: $74
    add e                                         ; $64c1: $83
    db $ec                                        ; $64c2: $ec
    add e                                         ; $64c3: $83
    ld [hl], l                                    ; $64c4: $75
    ld a, [bc]                                    ; $64c5: $0a
    add e                                         ; $64c6: $83
    call c, $ac83                                 ; $64c7: $dc $83 $ac
    ld a, [de]                                    ; $64ca: $1a
    nop                                           ; $64cb: $00
    or [hl]                                       ; $64cc: $b6
    jr nz, jr_09f_64df                            ; $64cd: $20 $10

    or [hl]                                       ; $64cf: $b6
    adc d                                         ; $64d0: $8a
    jr z, jr_09f_64d3                             ; $64d1: $28 $00

jr_09f_64d3:
    or h                                          ; $64d3: $b4
    pop bc                                        ; $64d4: $c1
    db $ed                                        ; $64d5: $ed
    inc e                                         ; $64d6: $1c
    nop                                           ; $64d7: $00
    db $dd                                        ; $64d8: $dd
    jr nz, jr_09f_64db                            ; $64d9: $20 $00

jr_09f_64db:
    db $fc                                        ; $64db: $fc
    ld a, [hl+]                                   ; $64dc: $2a
    add e                                         ; $64dd: $83
    ld e, h                                       ; $64de: $5c

jr_09f_64df:
    ld a, [hl+]                                   ; $64df: $2a
    nop                                           ; $64e0: $00
    ld e, h                                       ; $64e1: $5c
    jr nz, jr_09f_64e4                            ; $64e2: $20 $00

jr_09f_64e4:
    or h                                          ; $64e4: $b4
    ld b, b                                       ; $64e5: $40
    nop                                           ; $64e6: $00
    cp h                                          ; $64e7: $bc
    xor b                                         ; $64e8: $a8
    ld b, [hl]                                    ; $64e9: $46
    nop                                           ; $64ea: $00
    cp [hl]                                       ; $64eb: $be
    ld [$ec10], sp                                ; $64ec: $08 $10 $ec
    jr jr_09f_64f1                                ; $64ef: $18 $00

jr_09f_64f1:
    db $ec                                        ; $64f1: $ec
    add e                                         ; $64f2: $83
    ld a, l                                       ; $64f3: $7d
    xor [hl]                                      ; $64f4: $ae
    ld a, $10                                     ; $64f5: $3e $10
    ld l, h                                       ; $64f7: $6c
    ld b, d                                       ; $64f8: $42
    nop                                           ; $64f9: $00
    cp [hl]                                       ; $64fa: $be
    ld a, [de]                                    ; $64fb: $1a
    jr nz, jr_09f_651e                            ; $64fc: $20 $20

    ld [$084a], sp                                ; $64fe: $08 $4a $08
    ld a, h                                       ; $6501: $7c
    adc d                                         ; $6502: $8a
    ld h, b                                       ; $6503: $60
    nop                                           ; $6504: $00
    ld a, h                                       ; $6505: $7c
    add e                                         ; $6506: $83
    ld l, l                                       ; $6507: $6d
    ld h, [hl]                                    ; $6508: $66
    nop                                           ; $6509: $00
    db $fd                                        ; $650a: $fd
    ld h, [hl]                                    ; $650b: $66

jr_09f_650c:
    nop                                           ; $650c: $00
    push de                                       ; $650d: $d5
    ld [bc], a                                    ; $650e: $02
    add e                                         ; $650f: $83
    cpl                                           ; $6510: $2f
    ret nz                                        ; $6511: $c0

    push af                                       ; $6512: $f5
    ret nz                                        ; $6513: $c0

    dec l                                         ; $6514: $2d
    inc b                                         ; $6515: $04
    nop                                           ; $6516: $00
    cpl                                           ; $6517: $2f
    nop                                           ; $6518: $00
    ret nz                                        ; $6519: $c0

    rst $30                                       ; $651a: $f7
    ret nz                                        ; $651b: $c0

    dec a                                         ; $651c: $3d
    ret nz                                        ; $651d: $c0

jr_09f_651e:
    ccf                                           ; $651e: $3f
    ret nz                                        ; $651f: $c0

    or e                                          ; $6520: $b3
    ld [bc], a                                    ; $6521: $02
    pop bc                                        ; $6522: $c1
    ld [hl-], a                                   ; $6523: $32
    pop bc                                        ; $6524: $c1
    or a                                          ; $6525: $b7
    pop bc                                        ; $6526: $c1
    ld a, $02                                     ; $6527: $3e $02
    nop                                           ; $6529: $00
    cpl                                           ; $652a: $2f
    add b                                         ; $652b: $80
    sub [hl]                                      ; $652c: $96

jr_09f_652d:
    nop                                           ; $652d: $00
    cpl                                           ; $652e: $2f
    pop bc                                        ; $652f: $c1
    ld d, l                                       ; $6530: $55
    add e                                         ; $6531: $83
    ld e, l                                       ; $6532: $5d
    add e                                         ; $6533: $83
    ld d, l                                       ; $6534: $55
    and b                                         ; $6535: $a0
    ld d, b                                       ; $6536: $50
    nop                                           ; $6537: $00
    ld a, l                                       ; $6538: $7d
    inc [hl]                                      ; $6539: $34
    nop                                           ; $653a: $00
    ld a, l                                       ; $653b: $7d
    add e                                         ; $653c: $83
    ld l, c                                       ; $653d: $69
    add e                                         ; $653e: $83
    scf                                           ; $653f: $37
    add b                                         ; $6540: $80
    ld h, $00                                     ; $6541: $26 $00
    dec l                                         ; $6543: $2d
    ret nz                                        ; $6544: $c0

    dec [hl]                                      ; $6545: $35
    ret nz                                        ; $6546: $c0

    cp a                                          ; $6547: $bf
    ret nz                                        ; $6548: $c0

    rst $28                                       ; $6549: $ef
    jr z, jr_09f_650c                             ; $654a: $28 $c0

    cp l                                          ; $654c: $bd
    ld b, $00                                     ; $654d: $06 $00
    xor e                                         ; $654f: $ab
    inc l                                         ; $6550: $2c
    nop                                           ; $6551: $00
    cp a                                          ; $6552: $bf
    pop bc                                        ; $6553: $c1
    ld [hl], $28                                  ; $6554: $36 $28
    pop bc                                        ; $6556: $c1
    scf                                           ; $6557: $37
    inc [hl]                                      ; $6558: $34
    nop                                           ; $6559: $00
    ld [hl], $38                                  ; $655a: $36 $38
    nop                                           ; $655c: $00
    ld l, l                                       ; $655d: $6d
    add e                                         ; $655e: $83
    ld a, c                                       ; $655f: $79
    or b                                          ; $6560: $b0
    ld a, [hl]                                    ; $6561: $7e
    nop                                           ; $6562: $00
    ld e, c                                       ; $6563: $59
    ld [hl], $00                                  ; $6564: $36 $00
    ld b, $08                                     ; $6566: $06 $08
    ld a, l                                       ; $6568: $7d
    add e                                         ; $6569: $83
    rst $28                                       ; $656a: $ef
    ret nz                                        ; $656b: $c0

    nop                                           ; $656c: $00
    xor l                                         ; $656d: $ad
    ret nz                                        ; $656e: $c0

    or l                                          ; $656f: $b5
    ret nz                                        ; $6570: $c0

    di                                            ; $6571: $f3
    ret nz                                        ; $6572: $c0

    and c                                         ; $6573: $a1
    ret nz                                        ; $6574: $c0

    ld bc, $e0d3                                  ; $6575: $01 $d3 $e0
    adc l                                         ; $6578: $8d
    ld a, [c]                                     ; $6579: $f2
    db $d3                                        ; $657a: $d3
    cp $3b                                        ; $657b: $fe $3b
    inc l                                         ; $657d: $2c
    nop                                           ; $657e: $00
    ld d, l                                       ; $657f: $55
    dec sp                                        ; $6580: $3b
    jp nc, Jump_000_3f00                          ; $6581: $d2 $00 $3f

    sub $00                                       ; $6584: $d6 $00
    ld l, $da                                     ; $6586: $2e $da
    nop                                           ; $6588: $00
    ld a, c                                       ; $6589: $79
    ld a, [hl+]                                   ; $658a: $2a
    jr nz, jr_09f_652d                            ; $658b: $20 $a0

    ld [$6908], sp                                ; $658d: $08 $08 $69
    jr c, jr_09f_6592                             ; $6590: $38 $00

jr_09f_6592:
    adc l                                         ; $6592: $8d
    cp $a1                                        ; $6593: $fe $a1
    call c, Call_000_0aab                         ; $6595: $dc $ab $0a
    ret nz                                        ; $6598: $c0

    xor a                                         ; $6599: $af
    ret nz                                        ; $659a: $c0

    xor e                                         ; $659b: $ab
    ld h, d                                       ; $659c: $62
    nop                                           ; $659d: $00
    cp a                                          ; $659e: $bf
    sub h                                         ; $659f: $94
    nop                                           ; $65a0: $00
    ld l, $a2                                     ; $65a1: $2e $a2
    ld e, h                                       ; $65a3: $5c
    nop                                           ; $65a4: $00
    ld l, $20                                     ; $65a5: $2e $20
    ld bc, $c13e                                  ; $65a7: $01 $3e $c1
    xor a                                         ; $65aa: $af
    sub [hl]                                      ; $65ab: $96
    nop                                           ; $65ac: $00
    or a                                          ; $65ad: $b7
    add hl, sp                                    ; $65ae: $39
    pop bc                                        ; $65af: $c1
    ld l, c                                       ; $65b0: $69
    sub b                                         ; $65b1: $90
    nop                                           ; $65b2: $00
    ld h, h                                       ; $65b3: $64
    jr jr_09f_6620                                ; $65b4: $18 $6a

    ld [$8359], sp                                ; $65b6: $08 $59 $83
    ld h, b                                       ; $65b9: $60
    inc e                                         ; $65ba: $1c

jr_09f_65bb:
    nop                                           ; $65bb: $00
    xor e                                         ; $65bc: $ab
    nop                                           ; $65bd: $00
    ld d, a                                       ; $65be: $57
    ld bc, $0326                                  ; $65bf: $01 $26 $03
    dec c                                         ; $65c2: $0d
    ld b, $20                                     ; $65c3: $06 $20
    ld a, [de]                                    ; $65c5: $1a
    dec c                                         ; $65c6: $0d
    ld h, b                                       ; $65c7: $60
    inc e                                         ; $65c8: $1c
    xor [hl]                                      ; $65c9: $ae
    ret nz                                        ; $65ca: $c0

    dec e                                         ; $65cb: $1d
    and b                                         ; $65cc: $a0
    ld a, [bc]                                    ; $65cd: $0a
    inc b                                         ; $65ce: $04
    or b                                          ; $65cf: $b0
    inc d                                         ; $65d0: $14
    xor b                                         ; $65d1: $a8
    ld a, [hl+]                                   ; $65d2: $2a
    add h                                         ; $65d3: $84
    ld b, l                                       ; $65d4: $45
    inc c                                         ; $65d5: $0c
    ld bc, $0200                                  ; $65d6: $01 $00 $02
    rlca                                          ; $65d9: $07
    inc bc                                        ; $65da: $03
    dec b                                         ; $65db: $05
    ld b, $07                                     ; $65dc: $06 $07
    inc b                                         ; $65de: $04
    inc b                                         ; $65df: $04
    nop                                           ; $65e0: $00
    ld [bc], a                                    ; $65e1: $02
    nop                                           ; $65e2: $00
    scf                                           ; $65e3: $37
    jr @+$6b                                      ; $65e4: $18 $69

    jr nc, jr_09f_65bb                            ; $65e6: $30 $d3

    ldh [$61], a                                  ; $65e8: $e0 $61
    add b                                         ; $65ea: $80
    ld b, b                                       ; $65eb: $40
    add e                                         ; $65ec: $83
    ld d, $00                                     ; $65ed: $16 $00

jr_09f_65ef:
    add d                                         ; $65ef: $82
    ld bc, $0041                                  ; $65f0: $01 $41 $00
    dec b                                         ; $65f3: $05
    and d                                         ; $65f4: $a2
    ld [bc], a                                    ; $65f5: $02
    ld [hl+], a                                   ; $65f6: $22
    add c                                         ; $65f7: $81
    ld bc, $20a0                                  ; $65f8: $01 $a0 $20
    add b                                         ; $65fb: $80
    ld [bc], a                                    ; $65fc: $02
    jr z, jr_09f_6601                             ; $65fd: $28 $02

    jr nc, jr_09f_6604                            ; $65ff: $30 $03

jr_09f_6601:
    inc bc                                        ; $6601: $03
    db $10                                        ; $6602: $10
    ld [bc], a                                    ; $6603: $02

jr_09f_6604:
    ld b, [hl]                                    ; $6604: $46
    inc a                                         ; $6605: $3c
    and d                                         ; $6606: $a2

jr_09f_6607:
    ld bc, $8051                                  ; $6607: $01 $51 $80
    nop                                           ; $660a: $00
    xor d                                         ; $660b: $aa
    pop bc                                        ; $660c: $c1
    push de                                       ; $660d: $d5
    ld h, b                                       ; $660e: $60
    ld l, d                                       ; $660f: $6a
    ld sp, $1835                                  ; $6610: $31 $35 $18
    nop                                           ; $6613: $00
    ld a, [de]                                    ; $6614: $1a
    dec c                                         ; $6615: $0d
    dec c                                         ; $6616: $0d
    ld b, $20                                     ; $6617: $06 $20
    add b                                         ; $6619: $80
    sub c                                         ; $661a: $91
    and b                                         ; $661b: $a0
    nop                                           ; $661c: $00
    and d                                         ; $661d: $a2
    add b                                         ; $661e: $80
    sub l                                         ; $661f: $95

jr_09f_6620:
    and b                                         ; $6620: $a0
    cp e                                          ; $6621: $bb
    add c                                         ; $6622: $81
    sub [hl]                                      ; $6623: $96
    and e                                         ; $6624: $a3
    nop                                           ; $6625: $00
    sbc l                                         ; $6626: $9d
    and [hl]                                      ; $6627: $a6
    sbc e                                         ; $6628: $9b
    xor h                                         ; $6629: $ac
    ld d, $03                                     ; $662a: $16 $03
    dec hl                                        ; $662c: $2b
    ld bc, $5510                                  ; $662d: $01 $10 $55

jr_09f_6630:
    nop                                           ; $6630: $00
    cp d                                          ; $6631: $ba
    jr nz, jr_09f_6668                            ; $6632: $20 $34

    sub [hl]                                      ; $6634: $96
    cp b                                          ; $6635: $b8
    xor h                                         ; $6636: $ac
    or b                                          ; $6637: $b0
    ld bc, $e0d8                                  ; $6638: $01 $d8 $e0
    or d                                          ; $663b: $b2
    ld b, b                                       ; $663c: $40
    ld h, c                                       ; $663d: $61
    nop                                           ; $663e: $00
    ld [$1420], a                                 ; $663f: $ea $20 $14
    add b                                         ; $6642: $80
    xor h                                         ; $6643: $ac
    inc c                                         ; $6644: $0c
    jr nz, jr_09f_6607                            ; $6645: $20 $c0

    ret nc                                        ; $6647: $d0

    jr nc, jr_09f_6682                            ; $6648: $30 $38

    ld [$0018], sp                                ; $664a: $08 $18 $00
    ld [$182c], sp                                ; $664d: $08 $2c $18
    ld [hl], h                                    ; $6650: $74
    jr jr_09f_65ef                                ; $6651: $18 $9c

    jr nc, @+$6a                                  ; $6653: $30 $68

    nop                                           ; $6655: $00
    jr nc, jr_09f_6630                            ; $6656: $30 $d8

    ld h, b                                       ; $6658: $60
    or b                                          ; $6659: $b0
    ret nz                                        ; $665a: $c0

    ld h, b                                       ; $665b: $60
    add b                                         ; $665c: $80
    ret nz                                        ; $665d: $c0

    or c                                          ; $665e: $b1
    ld h, h                                       ; $665f: $64
    inc d                                         ; $6660: $14
    or h                                          ; $6661: $b4
    db $fc                                        ; $6662: $fc
    ld bc, $09e0                                  ; $6663: $01 $e0 $09
    cp [hl]                                       ; $6666: $be
    pop bc                                        ; $6667: $c1

jr_09f_6668:
    xor d                                         ; $6668: $aa
    ld [$1402], sp                                ; $6669: $08 $02 $14
    xor d                                         ; $666c: $aa
    rst $38                                       ; $666d: $ff
    ld e, l                                       ; $666e: $5d
    jp c, Jump_09f_5d01                           ; $666f: $da $01 $5d

    nop                                           ; $6672: $00
    ld [bc], a                                    ; $6673: $02
    ld a, h                                       ; $6674: $7c
    add e                                         ; $6675: $83
    nop                                           ; $6676: $00
    db $ed                                        ; $6677: $ed
    add e                                         ; $6678: $83
    ld h, h                                       ; $6679: $64
    add e                                         ; $667a: $83
    and b                                         ; $667b: $a0
    rst $38                                       ; $667c: $ff
    xor l                                         ; $667d: $ad
    inc bc                                        ; $667e: $03
    db $10                                        ; $667f: $10
    rst $38                                       ; $6680: $ff
    inc bc                                        ; $6681: $03

jr_09f_6682:
    db $ed                                        ; $6682: $ed
    inc b                                         ; $6683: $04
    nop                                           ; $6684: $00
    db $fd                                        ; $6685: $fd
    inc bc                                        ; $6686: $03
    push de                                       ; $6687: $d5
    inc bc                                        ; $6688: $03
    inc b                                         ; $6689: $04
    push af                                       ; $668a: $f5
    inc bc                                        ; $668b: $03
    dec d                                         ; $668c: $15
    rst $38                                       ; $668d: $ff
    cp a                                          ; $668e: $bf
    or b                                          ; $668f: $b0
    ld bc, $c0b7                                  ; $6690: $01 $b7 $c0
    ld d, c                                       ; $6693: $51
    db $fd                                        ; $6694: $fd
    add b                                         ; $6695: $80
    ld bc, $26ad                                  ; $6696: $01 $ad $26
    ld bc, $ffa8                                  ; $6699: $01 $a8 $ff
    xor [hl]                                      ; $669c: $ae
    ld c, [hl]                                    ; $669d: $4e
    ld de, $3a51                                  ; $669e: $11 $51 $3a
    or d                                          ; $66a1: $b2
    ld bc, $86b5                                  ; $66a2: $01 $b5 $86
    ld bc, $ff05                                  ; $66a5: $01 $05 $ff
    ld l, c                                       ; $66a8: $69
    db $fc                                        ; $66a9: $fc
    ld bc, $5d50                                  ; $66aa: $01 $50 $5d
    add h                                         ; $66ad: $84
    ld de, $865d                                  ; $66ae: $11 $5d $86
    ld bc, $ff55                                  ; $66b1: $01 $55 $ff
    jp nz, Jump_000_0187                          ; $66b4: $c2 $87 $01

    sub b                                         ; $66b7: $90
    rst $38                                       ; $66b8: $ff
    ld b, d                                       ; $66b9: $42
    db $fd                                        ; $66ba: $fd
    ld c, c                                       ; $66bb: $49
    or $24                                        ; $66bc: $f6 $24
    ret z                                         ; $66be: $c8

    ld b, $00                                     ; $66bf: $06 $00
    db $f4                                        ; $66c1: $f4
    db $db                                        ; $66c2: $db
    ld d, c                                       ; $66c3: $51
    cp [hl]                                       ; $66c4: $be
    ld a, [$ff45]                                 ; $66c5: $fa $45 $ff
    ld [$be00], sp                                ; $66c8: $08 $00 $be
    ld d, l                                       ; $66cb: $55
    push de                                       ; $66cc: $d5
    add d                                         ; $66cd: $82
    cp a                                          ; $66ce: $bf
    nop                                           ; $66cf: $00
    ld d, a                                       ; $66d0: $57
    ld [bc], a                                    ; $66d1: $02
    db $10                                        ; $66d2: $10
    cp e                                          ; $66d3: $bb
    nop                                           ; $66d4: $00
    ld [hl], a                                    ; $66d5: $77
    ld b, b                                       ; $66d6: $40
    inc b                                         ; $66d7: $04
    db $fd                                        ; $66d8: $fd
    ld a, [bc]                                    ; $66d9: $0a
    ld a, [$0005]                                 ; $66da: $fa $05 $00
    db $fd                                        ; $66dd: $fd
    add d                                         ; $66de: $82
    cp [hl]                                       ; $66df: $be
    ld d, c                                       ; $66e0: $51
    rst $38                                       ; $66e1: $ff
    ld [bc], a                                    ; $66e2: $02
    rst $28                                       ; $66e3: $ef
    ld de, $fd2d                                  ; $66e4: $11 $2d $fd
    ld [bc], a                                    ; $66e7: $02
    jr nc, jr_09f_6736                            ; $66e8: $30 $4c

    cp e                                          ; $66ea: $bb
    jr nc, @+$06                                  ; $66eb: $30 $04

    ldh [$1f], a                                  ; $66ed: $e0 $1f
    db $dd                                        ; $66ef: $dd
    ldh [rTAC], a                                 ; $66f0: $e0 $07
    inc e                                         ; $66f2: $1c
    ld [hl], l                                    ; $66f3: $75
    and b                                         ; $66f4: $a0
    ld a, [$07e0]                                 ; $66f5: $fa $e0 $07
    nop                                           ; $66f8: $00
    rrca                                          ; $66f9: $0f
    jp c, $010a                                   ; $66fa: $da $0a $01

    cp $9d                                        ; $66fd: $fe $9d
    ld [$aa08], sp                                ; $66ff: $08 $08 $aa
    ld d, b                                       ; $6702: $50
    db $10                                        ; $6703: $10
    jr z, jr_09f_6746                             ; $6704: $28 $40

    ld c, $10                                     ; $6706: $0e $10
    nop                                           ; $6708: $00
    db $10                                        ; $6709: $10
    jr nz, jr_09f_673c                            ; $670a: $20 $30

    adc b                                         ; $670c: $88
    jp nc, $ff0e                                  ; $670d: $d2 $0e $ff

    db $ed                                        ; $6710: $ed
    rla                                           ; $6711: $17
    nop                                           ; $6712: $00
    cpl                                           ; $6713: $2f
    ld b, b                                       ; $6714: $40
    cp a                                          ; $6715: $bf
    add h                                         ; $6716: $84
    inc b                                         ; $6717: $04
    ld a, e                                       ; $6718: $7b
    ld d, b                                       ; $6719: $50
    xor a                                         ; $671a: $af
    and b                                         ; $671b: $a0
    ld e, a                                       ; $671c: $5f
    jr c, jr_09f_6727                             ; $671d: $38 $08

jr_09f_671f:
    ld bc, $14fe                                  ; $671f: $01 $fe $14
    ld [$86ff], sp                                ; $6722: $08 $ff $86
    ld b, $07                                     ; $6725: $06 $07

jr_09f_6727:
    add c                                         ; $6727: $81
    ld [bc], a                                    ; $6728: $02
    nop                                           ; $6729: $00
    ld b, b                                       ; $672a: $40
    cp a                                          ; $672b: $bf
    nop                                           ; $672c: $00
    add e                                         ; $672d: $83
    ld a, h                                       ; $672e: $7c
    dec b                                         ; $672f: $05
    ld a, [$f50a]                                 ; $6730: $fa $0a $f5
    inc d                                         ; $6733: $14
    db $eb                                        ; $6734: $eb
    nop                                           ; $6735: $00

jr_09f_6736:
    jr jr_09f_671f                                ; $6736: $18 $e7

    db $10                                        ; $6738: $10
    xor $11                                       ; $6739: $ee $11
    rst $28                                       ; $673b: $ef

jr_09f_673c:
    ld a, [bc]                                    ; $673c: $0a
    rst $38                                       ; $673d: $ff
    nop                                           ; $673e: $00
    db $f4                                        ; $673f: $f4
    rrca                                          ; $6740: $0f
    ld [$14ff], sp                                ; $6741: $08 $ff $14
    ei                                            ; $6744: $fb
    ld a, [bc]                                    ; $6745: $0a

jr_09f_6746:
    pop af                                        ; $6746: $f1
    ld bc, $f902                                  ; $6747: $01 $02 $f9
    ld a, [bc]                                    ; $674a: $0a
    ld de, $e1f2                                  ; $674b: $11 $f2 $e1
    ld b, b                                       ; $674e: $40
    ld d, l                                       ; $674f: $55
    dec b                                         ; $6750: $05
    add b                                         ; $6751: $80
    sbc [hl]                                      ; $6752: $9e
    ld c, $80                                     ; $6753: $0e $80
    ld a, a                                       ; $6755: $7f
    ld b, e                                       ; $6756: $43
    cp [hl]                                       ; $6757: $be
    add h                                         ; $6758: $84
    ld a, a                                       ; $6759: $7f
    inc c                                         ; $675a: $0c
    and b                                         ; $675b: $a0
    and d                                         ; $675c: $a2
    rlca                                          ; $675d: $07
    ld b, b                                       ; $675e: $40
    sub d                                         ; $675f: $92
    rlca                                          ; $6760: $07
    ld de, $12ff                                  ; $6761: $11 $ff $12
    rst $38                                       ; $6764: $ff
    inc e                                         ; $6765: $1c
    nop                                           ; $6766: $00
    db $e3                                        ; $6767: $e3
    ld [hl], $c1                                  ; $6768: $36 $c1
    ld a, [hl+]                                   ; $676a: $2a
    pop bc                                        ; $676b: $c1
    adc b                                         ; $676c: $88
    rst $30                                       ; $676d: $f7
    add l                                         ; $676e: $85
    db $10                                        ; $676f: $10
    ld a, [$fc83]                                 ; $6770: $fa $83 $fc
    ld [hl], b                                    ; $6773: $70
    rrca                                          ; $6774: $0f
    ld [bc], a                                    ; $6775: $02
    db $fd                                        ; $6776: $fd
    dec d                                         ; $6777: $15
    ld [$2a00], a                                 ; $6778: $ea $00 $2a
    push de                                       ; $677b: $d5
    inc h                                         ; $677c: $24
    jp $8748                                      ; $677d: $c3 $48 $87


    ld a, [c]                                     ; $6780: $f2
    dec c                                         ; $6781: $0d
    add b                                         ; $6782: $80
    ld h, b                                       ; $6783: $60
    inc c                                         ; $6784: $0c
    ld bc, $42fe                                  ; $6785: $01 $fe $42
    cp l                                          ; $6788: $bd
    add l                                         ; $6789: $85
    ld a, d                                       ; $678a: $7a
    ld a, [de]                                    ; $678b: $1a
    sub d                                         ; $678c: $92
    nop                                           ; $678d: $00
    inc b                                         ; $678e: $04
    ld c, b                                       ; $678f: $48
    rst $30                                       ; $6790: $f7
    ret z                                         ; $6791: $c8

    inc c                                         ; $6792: $0c
    add hl, bc                                    ; $6793: $09
    or $00                                        ; $6794: $f6 $00
    rrca                                          ; $6796: $0f
    ld [hl+], a                                   ; $6797: $22
    ld [de], a                                    ; $6798: $12
    pop bc                                        ; $6799: $c1
    inc e                                         ; $679a: $1c
    db $e3                                        ; $679b: $e3
    sbc [hl]                                      ; $679c: $9e
    rra                                           ; $679d: $1f
    dec d                                         ; $679e: $15
    ld [$0f10], a                                 ; $679f: $ea $10 $0f
    dec b                                         ; $67a2: $05
    db $10                                        ; $67a3: $10
    ld a, [$f708]                                 ; $67a4: $fa $08 $f7
    nop                                           ; $67a7: $00
    rrca                                          ; $67a8: $0f
    nop                                           ; $67a9: $00
    rst $38                                       ; $67aa: $ff
    ld [de], a                                    ; $67ab: $12
    db $ed                                        ; $67ac: $ed
    add h                                         ; $67ad: $84
    jr nz, jr_09f_67bf                            ; $67ae: $20 $0f

    ld a, [bc]                                    ; $67b0: $0a
    push af                                       ; $67b1: $f5
    nop                                           ; $67b2: $00
    rst $38                                       ; $67b3: $ff
    ld [de], a                                    ; $67b4: $12
    ld [$ff01], sp                                ; $67b5: $08 $01 $ff
    db $10                                        ; $67b8: $10
    sub a                                         ; $67b9: $97
    ld l, d                                       ; $67ba: $6a
    inc b                                         ; $67bb: $04
    or b                                          ; $67bc: $b0

jr_09f_67bd:
    dec bc                                        ; $67bd: $0b
    rst $38                                       ; $67be: $ff

jr_09f_67bf:
    dec [hl]                                      ; $67bf: $35
    rst $38                                       ; $67c0: $ff
    ld l, c                                       ; $67c1: $69
    jr nz, @+$01                                  ; $67c2: $20 $ff

    pop de                                        ; $67c4: $d1
    sub [hl]                                      ; $67c5: $96
    inc d                                         ; $67c6: $14
    add c                                         ; $67c7: $81
    rst $38                                       ; $67c8: $ff
    ld h, c                                       ; $67c9: $61
    sbc a                                         ; $67ca: $9f
    and c                                         ; $67cb: $a1
    inc b                                         ; $67cc: $04
    ld e, a                                       ; $67cd: $5f
    ld b, c                                       ; $67ce: $41
    cp a                                          ; $67cf: $bf
    ld hl, $04df                                  ; $67d0: $21 $df $04
    jr z, jr_09f_67d6                             ; $67d3: $28 $01

    rst $38                                       ; $67d5: $ff

jr_09f_67d6:
    add b                                         ; $67d6: $80
    inc b                                         ; $67d7: $04
    jr jr_09f_67dd                                ; $67d8: $18 $03

    rst $38                                       ; $67da: $ff
    and l                                         ; $67db: $a5
    ld e, a                                       ; $67dc: $5f

jr_09f_67dd:
    dec bc                                        ; $67dd: $0b
    rst $38                                       ; $67de: $ff
    dec [hl]                                      ; $67df: $35
    nop                                           ; $67e0: $00
    rst $18                                       ; $67e1: $df
    add hl, hl                                    ; $67e2: $29
    rst $38                                       ; $67e3: $ff
    ld sp, $21df                                  ; $67e4: $31 $df $21
    rst $38                                       ; $67e7: $ff
    ld h, c                                       ; $67e8: $61
    ld a, [de]                                    ; $67e9: $1a
    rst $18                                       ; $67ea: $df
    add c                                         ; $67eb: $81
    rst $38                                       ; $67ec: $ff
    jr z, jr_09f_67f7                             ; $67ed: $28 $08

    ret nz                                        ; $67ef: $c0

    inc c                                         ; $67f0: $0c
    rst $38                                       ; $67f1: $ff
    or b                                          ; $67f2: $b0
    inc b                                         ; $67f3: $04
    cp a                                          ; $67f4: $bf
    ld b, h                                       ; $67f5: $44
    ld d, b                                       ; $67f6: $50

jr_09f_67f7:
    cp h                                          ; $67f7: $bc
    inc b                                         ; $67f8: $04
    ld d, b                                       ; $67f9: $50
    rst $18                                       ; $67fa: $df
    jr nz, jr_09f_67bd                            ; $67fb: $20 $c0

    inc d                                         ; $67fd: $14
    ld b, b                                       ; $67fe: $40
    db $dd                                        ; $67ff: $dd
    nop                                           ; $6800: $00
    ld [$04ae], sp                                ; $6801: $08 $ae $04
    push af                                       ; $6804: $f5
    ld [bc], a                                    ; $6805: $02
    rst $28                                       ; $6806: $ef
    nop                                           ; $6807: $00
    rst $30                                       ; $6808: $f7
    inc bc                                        ; $6809: $03
    ld [bc], a                                    ; $680a: $02
    ei                                            ; $680b: $fb
    ld bc, $00f5                                  ; $680c: $01 $f5 $00
    add b                                         ; $680f: $80
    ld a, [bc]                                    ; $6810: $0a
    ld b, $04                                     ; $6811: $06 $04
    ld [$aa09], sp                                ; $6813: $08 $09 $aa
    push de                                       ; $6816: $d5
    rst $38                                       ; $6817: $ff
    add b                                         ; $6818: $80
    ld b, b                                       ; $6819: $40
    inc b                                         ; $681a: $04
    rst $38                                       ; $681b: $ff
    ld d, l                                       ; $681c: $55
    sbc d                                         ; $681d: $9a
    dec h                                         ; $681e: $25
    push bc                                       ; $681f: $c5
    ld d, d                                       ; $6820: $52
    rlca                                          ; $6821: $07
    and h                                         ; $6822: $a4
    rlca                                          ; $6823: $07
    rst $38                                       ; $6824: $ff
    rst $38                                       ; $6825: $ff
    ld d, h                                       ; $6826: $54
    db $10                                        ; $6827: $10
    ld h, b                                       ; $6828: $60
    ld bc, $2002                                  ; $6829: $01 $02 $20
    inc c                                         ; $682c: $0c

jr_09f_682d:
    xor c                                         ; $682d: $a9
    ld d, a                                       ; $682e: $57
    rst $38                                       ; $682f: $ff
    ld bc, $0520                                  ; $6830: $01 $20 $05
    ld a, [hl-]                                   ; $6833: $3a
    db $10                                        ; $6834: $10
    or l                                          ; $6835: $b5
    ret nz                                        ; $6836: $c0

    ld b, c                                       ; $6837: $41
    xor d                                         ; $6838: $aa
    sub b                                         ; $6839: $90
    inc bc                                        ; $683a: $03
    sub l                                         ; $683b: $95
    ld [$ffaa], a                                 ; $683c: $ea $aa $ff
    ld a, a                                       ; $683f: $7f
    sbc $15                                       ; $6840: $de $15
    ld e, b                                       ; $6842: $58
    ld d, l                                       ; $6843: $55
    ld [hl], h                                    ; $6844: $74
    inc c                                         ; $6845: $0c
    nop                                           ; $6846: $00
    sbc [hl]                                      ; $6847: $9e
    ld bc, $07f0                                  ; $6848: $01 $f0 $07
    xor d                                         ; $684b: $aa
    ld a, a                                       ; $684c: $7f
    ld h, b                                       ; $684d: $60
    nop                                           ; $684e: $00
    cp a                                          ; $684f: $bf
    or l                                          ; $6850: $b5
    ld l, d                                       ; $6851: $6a
    ld l, d                                       ; $6852: $6a
    or l                                          ; $6853: $b5
    cp d                                          ; $6854: $ba
    ld h, b                                       ; $6855: $60
    ld [hl], l                                    ; $6856: $75
    ld [bc], a                                    ; $6857: $02
    and b                                         ; $6858: $a0
    or b                                          ; $6859: $b0
    ld h, b                                       ; $685a: $60
    ld [hl], b                                    ; $685b: $70
    cp a                                          ; $685c: $bf
    xor d                                         ; $685d: $aa
    ld hl, sp+$00                                 ; $685e: $f8 $00
    ld a, [hl+]                                   ; $6860: $2a
    nop                                           ; $6861: $00
    push de                                       ; $6862: $d5
    add l                                         ; $6863: $85
    ld a, d                                       ; $6864: $7a
    xor d                                         ; $6865: $aa
    nop                                           ; $6866: $00
    ld e, a                                       ; $6867: $5f
    rrca                                          ; $6868: $0f
    dec e                                         ; $6869: $1d
    db $10                                        ; $686a: $10
    ld a, [bc]                                    ; $686b: $0a
    ld a, [de]                                    ; $686c: $1a
    db $fd                                        ; $686d: $fd
    db $10                                        ; $686e: $10
    ld [$f50a], sp                                ; $686f: $08 $0a $f5
    ld d, h                                       ; $6872: $54
    xor e                                         ; $6873: $ab
    pop hl                                        ; $6874: $e1
    dec c                                         ; $6875: $0d
    add hl, bc                                    ; $6876: $09
    ret nc                                        ; $6877: $d0

    ld bc, $0675                                  ; $6878: $01 $75 $06
    ld d, c                                       ; $687b: $51
    xor [hl]                                      ; $687c: $ae
    adc d                                         ; $687d: $8a
    ld [hl], l                                    ; $687e: $75
    db $10                                        ; $687f: $10
    ld c, b                                       ; $6880: $48
    ld bc, $af50                                  ; $6881: $01 $50 $af
    add b                                         ; $6884: $80
    ld a, a                                       ; $6885: $7f
    dec b                                         ; $6886: $05
    ld a, [$20ba]                                 ; $6887: $fa $ba $20
    jr nc, @+$05                                  ; $688a: $30 $03

    dec d                                         ; $688c: $15
    ld [$fd02], a                                 ; $688d: $ea $02 $fd
    ld d, h                                       ; $6890: $54
    xor e                                         ; $6891: $ab
    db $dd                                        ; $6892: $dd
    inc c                                         ; $6893: $0c
    db $10                                        ; $6894: $10
    jr z, jr_09f_6897                             ; $6895: $28 $00

jr_09f_6897:
    and d                                         ; $6897: $a2
    ld e, l                                       ; $6898: $5d
    ld d, l                                       ; $6899: $55
    xor d                                         ; $689a: $aa
    or l                                          ; $689b: $b5
    nop                                           ; $689c: $00
    ld a, [$00f0]                                 ; $689d: $fa $f0 $00
    ld e, b                                       ; $68a0: $58
    or b                                          ; $68a1: $b0
    cp b                                          ; $68a2: $b8
    ld e, a                                       ; $68a3: $5f
    add c                                         ; $68a4: $81
    rst $38                                       ; $68a5: $ff
    ret nz                                        ; $68a6: $c0

    cp a                                          ; $68a7: $bf
    ld a, h                                       ; $68a8: $7c
    add b                                         ; $68a9: $80
    inc b                                         ; $68aa: $04
    jr nz, jr_09f_682d                            ; $68ab: $20 $80

    ld [$2a30], sp                                ; $68ad: $08 $30 $2a
    ld l, [hl]                                    ; $68b0: $6e
    ld d, $c0                                     ; $68b1: $16 $c0
    db $10                                        ; $68b3: $10
    xor c                                         ; $68b4: $a9
    ld d, a                                       ; $68b5: $57
    ld de, $0355                                  ; $68b6: $11 $55 $03
    xor l                                         ; $68b9: $ad
    ret nc                                        ; $68ba: $d0

    ld [bc], a                                    ; $68bb: $02
    ld d, l                                       ; $68bc: $55
    xor e                                         ; $68bd: $ab
    xor e                                         ; $68be: $ab
    ld hl, sp+$06                                 ; $68bf: $f8 $06
    nop                                           ; $68c1: $00
    xor [hl]                                      ; $68c2: $ae
    db $fd                                        ; $68c3: $fd
    dec b                                         ; $68c4: $05
    cp $a6                                        ; $68c5: $fe $a6
    ld e, l                                       ; $68c7: $5d
    ld d, l                                       ; $68c8: $55
    xor [hl]                                      ; $68c9: $ae
    nop                                           ; $68ca: $00
    ld d, [hl]                                    ; $68cb: $56
    dec c                                         ; $68cc: $0d
    xor l                                         ; $68cd: $ad
    ld b, $0e                                     ; $68ce: $06 $0e
    dec b                                         ; $68d0: $05
    dec c                                         ; $68d1: $0d
    cp $02                                        ; $68d2: $fe $02
    add e                                         ; $68d4: $83
    rst $38                                       ; $68d5: $ff
    ld b, c                                       ; $68d6: $41
    cp a                                          ; $68d7: $bf
    add e                                         ; $68d8: $83
    ld a, a                                       ; $68d9: $7f
    ld a, $0a                                     ; $68da: $3e $0a
    ld bc, $ff20                                  ; $68dc: $01 $20 $ff
    xor e                                         ; $68df: $ab
    inc l                                         ; $68e0: $2c
    rlca                                          ; $68e1: $07
    ret nc                                        ; $68e2: $d0

    db $10                                        ; $68e3: $10
    ld c, l                                       ; $68e4: $4d
    dec c                                         ; $68e5: $0d
    ld d, c                                       ; $68e6: $51
    rst $38                                       ; $68e7: $ff
    ld bc, $fea0                                  ; $68e8: $01 $a0 $fe
    ld [bc], a                                    ; $68eb: $02
    nop                                           ; $68ec: $00
    db $fd                                        ; $68ed: $fd
    rst $38                                       ; $68ee: $ff
    ld [$201f], a                                 ; $68ef: $ea $1f $20
    nop                                           ; $68f2: $00
    db $d3                                        ; $68f3: $d3
    rst $38                                       ; $68f4: $ff
    ld h, c                                       ; $68f5: $61
    rst $38                                       ; $68f6: $ff
    ld d, l                                       ; $68f7: $55
    ei                                            ; $68f8: $fb
    ld bc, $00ff                                  ; $68f9: $01 $ff $00
    inc d                                         ; $68fc: $14
    ei                                            ; $68fd: $fb
    ret z                                         ; $68fe: $c8

    rst $30                                       ; $68ff: $f7
    ld [c], a                                     ; $6900: $e2
    rst $38                                       ; $6901: $ff
    ret z                                         ; $6902: $c8

    rst $30                                       ; $6903: $f7
    nop                                           ; $6904: $00
    ret z                                         ; $6905: $c8

    rst $30                                       ; $6906: $f7
    push hl                                       ; $6907: $e5
    ld a, [c]                                     ; $6908: $f2
    call z, $ebf2                                 ; $6909: $cc $f2 $eb
    ldh a, [rP1]                                  ; $690c: $f0 $00
    push bc                                       ; $690e: $c5
    ld hl, sp+$45                                 ; $690f: $f8 $45
    cp e                                          ; $6911: $bb
    ret nc                                        ; $6912: $d0

    dec sp                                        ; $6913: $3b
    sub c                                         ; $6914: $91
    ld a, e                                       ; $6915: $7b
    nop                                           ; $6916: $00
    sub b                                         ; $6917: $90
    ld a, e                                       ; $6918: $7b
    ld [de], a                                    ; $6919: $12
    ld sp, hl                                     ; $691a: $f9
    or h                                          ; $691b: $b4
    ld a, e                                       ; $691c: $7b
    ld d, $f9                                     ; $691d: $16 $f9
    ld [hl+], a                                   ; $691f: $22
    ld h, d                                       ; $6920: $62
    db $fd                                        ; $6921: $fd
    ld [hl], $08                                  ; $6922: $36 $08
    ld a, [$f8ff]                                 ; $6924: $fa $ff $f8
    ld [bc], a                                    ; $6927: $02
    nop                                           ; $6928: $00
    pop af                                        ; $6929: $f1

jr_09f_692a:
    jr nz, jr_09f_692a                            ; $692a: $20 $fe

    ldh a, [rDIV]                                 ; $692c: $f0 $04
    nop                                           ; $692e: $00
    ld [$64f1], a                                 ; $692f: $ea $f1 $64
    ld sp, hl                                     ; $6932: $f9
    ccf                                           ; $6933: $3f
    nop                                           ; $6934: $00
    ldh a, [rNR50]                                ; $6935: $f0 $24
    ld sp, hl                                     ; $6937: $f9
    dec a                                         ; $6938: $3d
    ldh a, [rNR44]                                ; $6939: $f0 $23
    ld hl, sp-$6a                                 ; $693b: $f8 $96
    nop                                           ; $693d: $00
    ld a, b                                       ; $693e: $78
    inc hl                                        ; $693f: $23
    ld hl, sp+$77                                 ; $6940: $f8 $77
    ld hl, sp+$63                                 ; $6942: $f8 $63
    db $fc                                        ; $6944: $fc
    ld h, l                                       ; $6945: $65
    nop                                           ; $6946: $00
    ld a, [$fe61]                                 ; $6947: $fa $61 $fe
    ld l, c                                       ; $694a: $69
    or $3b                                        ; $694b: $f6 $3b
    and $69                                       ; $694d: $e6 $69
    nop                                           ; $694f: $00
    and $bb                                       ; $6950: $e6 $bb
    ld h, [hl]                                    ; $6952: $66
    pop hl                                        ; $6953: $e1
    cp $f4                                        ; $6954: $fe $f4
    ld a, [$00e6]                                 ; $6956: $fa $e6 $00
    ld hl, sp-$0c                                 ; $6959: $f8 $f4
    ld hl, sp-$0e                                 ; $695b: $f8 $f2
    db $fc                                        ; $695d: $fc
    di                                            ; $695e: $f3
    db $fc                                        ; $695f: $fc
    ld a, [$fc00]                                 ; $6960: $fa $00 $fc
    ld sp, hl                                     ; $6963: $f9
    cp $95                                        ; $6964: $fe $95
    ld a, b                                       ; $6966: $78
    ld b, $f9                                     ; $6967: $06 $f9
    add h                                         ; $6969: $84
    nop                                           ; $696a: $00
    ld a, c                                       ; $696b: $79
    ld d, b                                       ; $696c: $50
    cp l                                          ; $696d: $bd
    add [hl]                                      ; $696e: $86
    ld a, c                                       ; $696f: $79
    ld d, b                                       ; $6970: $50
    dec a                                         ; $6971: $3d
    adc e                                         ; $6972: $8b
    nop                                           ; $6973: $00
    ld a, h                                       ; $6974: $7c
    ld b, d                                       ; $6975: $42
    dec a                                         ; $6976: $3d
    xor c                                         ; $6977: $a9
    ld h, [hl]                                    ; $6978: $66
    add e                                         ; $6979: $83
    ld l, [hl]                                    ; $697a: $6e
    xor d                                         ; $697b: $aa
    nop                                           ; $697c: $00
    ld h, a                                       ; $697d: $67
    jp Jump_09f_4a2e                              ; $697e: $c3 $2e $4a


    and a                                         ; $6981: $a7
    inc bc                                        ; $6982: $03

jr_09f_6983:
    xor $0a                                       ; $6983: $ee $0a
    nop                                           ; $6985: $00
    rst $20                                       ; $6986: $e7
    and d                                         ; $6987: $a2
    rst $08                                       ; $6988: $cf
    db $ec                                        ; $6989: $ec
    rst $38                                       ; $698a: $ff
    and $ff                                       ; $698b: $e6 $ff
    ldh [rP1], a                                  ; $698d: $e0 $00
    rst $38                                       ; $698f: $ff
    db $f4                                        ; $6990: $f4
    db $eb                                        ; $6991: $eb
    ld [$f7f5], a                                 ; $6992: $ea $f5 $f7
    ld hl, sp-$1b                                 ; $6995: $f8 $e5
    nop                                           ; $6997: $00
    ld a, [$f9f6]                                 ; $6998: $fa $f6 $f9
    xor d                                         ; $699b: $aa
    dec e                                         ; $699c: $1d
    push hl                                       ; $699d: $e5
    ld e, $4a                                     ; $699e: $1e $4a
    nop                                           ; $69a0: $00
    cp l                                          ; $69a1: $bd
    inc l                                         ; $69a2: $2c
    rst $18                                       ; $69a3: $df
    sbc d                                         ; $69a4: $9a
    rst $28                                       ; $69a5: $ef
    ld d, [hl]                                    ; $69a6: $56
    rst $28                                       ; $69a7: $ef
    ld h, [hl]                                    ; $69a8: $66
    nop                                           ; $69a9: $00
    rst $38                                       ; $69aa: $ff
    or [hl]                                       ; $69ab: $b6
    ld a, a                                       ; $69ac: $7f
    sub [hl]                                      ; $69ad: $96
    rst $28                                       ; $69ae: $ef
    and d                                         ; $69af: $a2
    rst $08                                       ; $69b0: $cf
    sub [hl]                                      ; $69b1: $96
    jr nz, jr_09f_6983                            ; $69b2: $20 $cf

    and $04                                       ; $69b4: $e6 $04
    nop                                           ; $69b6: $00
    ld b, [hl]                                    ; $69b7: $46
    rst $08                                       ; $69b8: $cf
    ld d, [hl]                                    ; $69b9: $56
    rst $08                                       ; $69ba: $cf
    ld [hl], h                                    ; $69bb: $74
    nop                                           ; $69bc: $00
    rst $08                                       ; $69bd: $cf
    pop af                                        ; $69be: $f1
    db $fc                                        ; $69bf: $fc
    ld a, [c]                                     ; $69c0: $f2
    db $fc                                        ; $69c1: $fc
    pop af                                        ; $69c2: $f1
    cp $f1                                        ; $69c3: $fe $f1
    ld [bc], a                                    ; $69c5: $02
    cp $fb                                        ; $69c6: $fe $fb
    db $fc                                        ; $69c8: $fc
    ei                                            ; $69c9: $fb
    db $fc                                        ; $69ca: $fc
    ld hl, sp+$08                                 ; $69cb: $f8 $08
    nop                                           ; $69cd: $00
    cpl                                           ; $69ce: $2f
    nop                                           ; $69cf: $00
    rst $38                                       ; $69d0: $ff
    sub [hl]                                      ; $69d1: $96
    ld a, a                                       ; $69d2: $7f
    ld e, a                                       ; $69d3: $5f
    cp a                                          ; $69d4: $bf
    adc a                                         ; $69d5: $8f
    ld a, a                                       ; $69d6: $7f
    ld b, a                                       ; $69d7: $47
    nop                                           ; $69d8: $00
    ccf                                           ; $69d9: $3f
    daa                                           ; $69da: $27
    rra                                           ; $69db: $1f
    sub e                                         ; $69dc: $93
    rrca                                          ; $69dd: $0f
    jp hl                                         ; $69de: $e9


    rlca                                          ; $69df: $07
    ld h, $00                                     ; $69e0: $26 $00
    rst $18                                       ; $69e2: $df
    inc h                                         ; $69e3: $24
    rst $18                                       ; $69e4: $df
    ld d, $ef                                     ; $69e5: $16 $ef
    inc h                                         ; $69e7: $24
    rst $18                                       ; $69e8: $df
    inc b                                         ; $69e9: $04
    nop                                           ; $69ea: $00
    rst $38                                       ; $69eb: $ff
    xor l                                         ; $69ec: $ad
    ld e, a                                       ; $69ed: $5f
    adc h                                         ; $69ee: $8c
    ld a, a                                       ; $69ef: $7f
    sbc a                                         ; $69f0: $9f
    rst $38                                       ; $69f1: $ff
    di                                            ; $69f2: $f3
    add b                                         ; $69f3: $80
    add h                                         ; $69f4: $84
    nop                                           ; $69f5: $00
    ld hl, sp-$01                                 ; $69f6: $f8 $ff
    db $fc                                        ; $69f8: $fc
    rst $38                                       ; $69f9: $ff
    or $ff                                        ; $69fa: $f6 $ff
    ld [c], a                                     ; $69fc: $e2
    nop                                           ; $69fd: $00
    rst $38                                       ; $69fe: $ff
    jp hl                                         ; $69ff: $e9


    rst $30                                       ; $6a00: $f7
    db $e4                                        ; $6a01: $e4
    ei                                            ; $6a02: $fb
    ld e, c                                       ; $6a03: $59
    and a                                         ; $6a04: $a7
    ld bc, $7f01                                  ; $6a05: $01 $01 $7f
    sub c                                         ; $6a08: $91
    ccf                                           ; $6a09: $3f
    ld d, c                                       ; $6a0a: $51
    cp a                                          ; $6a0b: $bf
    dec hl                                        ; $6a0c: $2b
    rst $18                                       ; $6a0d: $df
    inc [hl]                                      ; $6a0e: $34
    nop                                           ; $6a0f: $00
    nop                                           ; $6a10: $00
    cp a                                          ; $6a11: $bf
    daa                                           ; $6a12: $27
    sbc a                                         ; $6a13: $9f
    ld [hl], e                                    ; $6a14: $73
    adc h                                         ; $6a15: $8c
    rrca                                          ; $6a16: $0f
    ldh a, [rIF]                                  ; $6a17: $f0 $0f
    nop                                           ; $6a19: $00
    ldh a, [$03]                                  ; $6a1a: $f0 $03
    db $fc                                        ; $6a1c: $fc
    add h                                         ; $6a1d: $84
    ld a, a                                       ; $6a1e: $7f
    add sp, $1f                                   ; $6a1f: $e8 $1f
    jr nc, jr_09f_6a23                            ; $6a21: $30 $00

jr_09f_6a23:
    rst $38                                       ; $6a23: $ff
    ldh [$1f], a                                  ; $6a24: $e0 $1f
    jp z, $c5f1                                   ; $6a26: $ca $f1 $c5

    ld hl, sp-$35                                 ; $6a29: $f8 $cb
    nop                                           ; $6a2b: $00
    db $f4                                        ; $6a2c: $f4
    push bc                                       ; $6a2d: $c5
    ld hl, sp-$20                                 ; $6a2e: $f8 $e0
    db $fc                                        ; $6a30: $fc
    push de                                       ; $6a31: $d5
    ld hl, sp-$1e                                 ; $6a32: $f8 $e2
    add b                                         ; $6a34: $80
    ld l, d                                       ; $6a35: $6a
    nop                                           ; $6a36: $00
    sub e                                         ; $6a37: $93
    rrca                                          ; $6a38: $0f
    ld c, e                                       ; $6a39: $4b
    add a                                         ; $6a3a: $87
    or c                                          ; $6a3b: $b1
    ld b, a                                       ; $6a3c: $47
    rrca                                          ; $6a3d: $0f
    nop                                           ; $6a3e: $00
    di                                            ; $6a3f: $f3
    and l                                         ; $6a40: $a5
    ld a, e                                       ; $6a41: $7b
    ld d, e                                       ; $6a42: $53
    cp a                                          ; $6a43: $bf
    sbc c                                         ; $6a44: $99
    ld a, a                                       ; $6a45: $7f
    ld c, l                                       ; $6a46: $4d
    nop                                           ; $6a47: $00
    ccf                                           ; $6a48: $3f
    xor $11                                       ; $6a49: $ee $11
    inc de                                        ; $6a4b: $13
    inc c                                         ; $6a4c: $0c
    xor $17                                       ; $6a4d: $ee $17
    sbc a                                         ; $6a4f: $9f
    nop                                           ; $6a50: $00
    pop hl                                        ; $6a51: $e1
    rst $18                                       ; $6a52: $df
    ldh [$d1], a                                  ; $6a53: $e0 $d1
    ldh [$ef], a                                  ; $6a55: $e0 $ef
    rst $38                                       ; $6a57: $ff
    jr nz, @+$0c                                  ; $6a58: $20 $0a

    rst $38                                       ; $6a5a: $ff
    ld [$f1fd], a                                 ; $6a5b: $ea $fd $f1
    ld h, b                                       ; $6a5e: $60
    nop                                           ; $6a5f: $00
    db $fd                                        ; $6a60: $fd
    inc b                                         ; $6a61: $04
    db $10                                        ; $6a62: $10
    ld a, [$ff00]                                 ; $6a63: $fa $00 $ff
    ld sp, hl                                     ; $6a66: $f9
    rst $38                                       ; $6a67: $ff
    adc a                                         ; $6a68: $8f
    ccf                                           ; $6a69: $3f
    ld b, a                                       ; $6a6a: $47
    sbc a                                         ; $6a6b: $9f
    di                                            ; $6a6c: $f3
    nop                                           ; $6a6d: $00
    rrca                                          ; $6a6e: $0f
    ld e, c                                       ; $6a6f: $59
    and a                                         ; $6a70: $a7
    and a                                         ; $6a71: $a7
    ld e, e                                       ; $6a72: $5b
    ld b, c                                       ; $6a73: $41
    ccf                                           ; $6a74: $3f
    db $eb                                        ; $6a75: $eb
    nop                                           ; $6a76: $00
    rra                                           ; $6a77: $1f
    daa                                           ; $6a78: $27
    sbc a                                         ; $6a79: $9f
    ld h, b                                       ; $6a7a: $60
    rst $38                                       ; $6a7b: $ff
    ret nz                                        ; $6a7c: $c0

    rst $38                                       ; $6a7d: $ff
    nop                                           ; $6a7e: $00
    nop                                           ; $6a7f: $00
    rst $38                                       ; $6a80: $ff
    add b                                         ; $6a81: $80
    ld a, a                                       ; $6a82: $7f
    ld h, b                                       ; $6a83: $60
    sbc a                                         ; $6a84: $9f
    ld a, $c1                                     ; $6a85: $3e $c1
    and b                                         ; $6a87: $a0
    nop                                           ; $6a88: $00
    ld a, a                                       ; $6a89: $7f
    ld sp, hl                                     ; $6a8a: $f9
    ld e, $f9                                     ; $6a8b: $1e $f9
    cp $f6                                        ; $6a8d: $fe $f6
    ld sp, hl                                     ; $6a8f: $f9
    pop af                                        ; $6a90: $f1
    nop                                           ; $6a91: $00
    db $fc                                        ; $6a92: $fc
    ldh a, [$fe]                                  ; $6a93: $f0 $fe
    db $fd                                        ; $6a95: $fd
    ld a, [$f9f4]                                 ; $6a96: $fa $f4 $f9
    ld [$ca80], a                                 ; $6a99: $ea $80 $ca
    nop                                           ; $6a9c: $00
    ld d, a                                       ; $6a9d: $57
    adc a                                         ; $6a9e: $8f
    xor e                                         ; $6a9f: $ab
    ld b, a                                       ; $6aa0: $47
    ld d, e                                       ; $6aa1: $53
    xor a                                         ; $6aa2: $af
    add c                                         ; $6aa3: $81
    nop                                           ; $6aa4: $00
    ld a, a                                       ; $6aa5: $7f
    inc hl                                        ; $6aa6: $23
    rst $38                                       ; $6aa7: $ff
    adc e                                         ; $6aa8: $8b
    ld a, a                                       ; $6aa9: $7f
    rst $10                                       ; $6aaa: $d7
    ccf                                           ; $6aab: $3f
    xor e                                         ; $6aac: $ab
    nop                                           ; $6aad: $00
    ld e, a                                       ; $6aae: $5f
    rst $30                                       ; $6aaf: $f7
    ld [$0817], sp                                ; $6ab0: $08 $17 $08
    inc e                                         ; $6ab3: $1c
    ld [$00cc], sp                                ; $6ab4: $08 $cc $00
    scf                                           ; $6ab7: $37
    ld a, $c3                                     ; $6ab8: $3e $c3
    ld a, $c1                                     ; $6aba: $3e $c1
    ld [c], a                                     ; $6abc: $e2
    pop bc                                        ; $6abd: $c1
    ldh a, [rP1]                                  ; $6abe: $f0 $00
    cpl                                           ; $6ac0: $2f
    ld hl, sp-$01                                 ; $6ac1: $f8 $ff
    ld sp, hl                                     ; $6ac3: $f9
    cp $ec                                        ; $6ac4: $fe $ec
    rst $38                                       ; $6ac6: $ff
    add $00                                       ; $6ac7: $c6 $00
    rst $38                                       ; $6ac9: $ff
    db $d3                                        ; $6aca: $d3
    rst $28                                       ; $6acb: $ef
    ret z                                         ; $6acc: $c8

    rst $30                                       ; $6acd: $f7
    jp z, $e5f1                                   ; $6ace: $ca $f1 $e5

    nop                                           ; $6ad1: $00
    ld hl, sp+$45                                 ; $6ad2: $f8 $45
    ccf                                           ; $6ad4: $3f
    inc hl                                        ; $6ad5: $23
    rra                                           ; $6ad6: $1f
    pop de                                        ; $6ad7: $d1
    rrca                                          ; $6ad8: $0f
    ld l, e                                       ; $6ad9: $6b
    nop                                           ; $6ada: $00
    add a                                         ; $6adb: $87
    dec hl                                        ; $6adc: $2b
    rst $10                                       ; $6add: $d7
    ld d, l                                       ; $6ade: $55
    xor a                                         ; $6adf: $af
    inc hl                                        ; $6ae0: $23
    rst $18                                       ; $6ae1: $df
    dec de                                        ; $6ae2: $1b
    nop                                           ; $6ae3: $00
    rst $38                                       ; $6ae4: $ff
    call z, $bf3f                                 ; $6ae5: $cc $3f $bf
    ld a, a                                       ; $6ae8: $7f

jr_09f_6ae9:
    and a                                         ; $6ae9: $a7
    ld a, a                                       ; $6aea: $7f
    ld d, e                                       ; $6aeb: $53
    nop                                           ; $6aec: $00
    ccf                                           ; $6aed: $3f
    adc $ff                                       ; $6aee: $ce $ff
    ld [hl], $0f                                  ; $6af0: $36 $0f
    jr @+$06                                      ; $6af2: $18 $04

    nop                                           ; $6af4: $00
    nop                                           ; $6af5: $00
    ld [$f8e6], sp                                ; $6af6: $08 $e6 $f8
    ld a, [c]                                     ; $6af9: $f2
    db $fd                                        ; $6afa: $fd
    ld sp, hl                                     ; $6afb: $f9

jr_09f_6afc:
    cp $fc                                        ; $6afc: $fe $fc
    adc b                                         ; $6afe: $88
    ldh a, [rSB]                                  ; $6aff: $f0 $01
    di                                            ; $6b01: $f3
    rst $38                                       ; $6b02: $ff
    ldh a, [$fe]                                  ; $6b03: $f0 $fe
    nop                                           ; $6b05: $00
    rst $08                                       ; $6b06: $cf
    ccf                                           ; $6b07: $3f
    or a                                          ; $6b08: $b7
    nop                                           ; $6b09: $00
    rrca                                          ; $6b0a: $0f
    ld e, e                                       ; $6b0b: $5b
    and a                                         ; $6b0c: $a7
    dec hl                                        ; $6b0d: $2b
    rst $10                                       ; $6b0e: $d7
    ld b, l                                       ; $6b0f: $45
    ei                                            ; $6b10: $fb
    dec sp                                        ; $6b11: $3b
    nop                                           ; $6b12: $00
    rst $38                                       ; $6b13: $ff
    rra                                           ; $6b14: $1f
    rst $38                                       ; $6b15: $ff
    ld b, a                                       ; $6b16: $47
    cp a                                          ; $6b17: $bf
    inc [hl]                                      ; $6b18: $34
    jr jr_09f_6afc                                ; $6b19: $18 $e1

    nop                                           ; $6b1b: $00
    ld a, $c0                                     ; $6b1c: $3e $c0
    rst $38                                       ; $6b1e: $ff
    ld bc, $c2ff                                  ; $6b1f: $01 $ff $c2
    rst $38                                       ; $6b22: $ff
    xor $05                                       ; $6b23: $ee $05
    rra                                           ; $6b25: $1f
    or $09                                        ; $6b26: $f6 $09
    push af                                       ; $6b28: $f5
    ld a, [bc]                                    ; $6b29: $0a
    jr nc, jr_09f_6b36                            ; $6b2a: $30 $0a

    add c                                         ; $6b2c: $81
    ld [bc], a                                    ; $6b2d: $02
    nop                                           ; $6b2e: $00
    ld b, $c3                                     ; $6b2f: $06 $c3
    add c                                         ; $6b31: $81
    rst $38                                       ; $6b32: $ff
    rst $38                                       ; $6b33: $ff
    and l                                         ; $6b34: $a5
    ld h, [hl]                                    ; $6b35: $66

jr_09f_6b36:
    nop                                           ; $6b36: $00
    ld b, b                                       ; $6b37: $40
    ld a, [de]                                    ; $6b38: $1a
    adc $00                                       ; $6b39: $ce $00
    rst $38                                       ; $6b3b: $ff
    rst $10                                       ; $6b3c: $d7
    rst $28                                       ; $6b3d: $ef
    ld b, d                                       ; $6b3e: $42
    rst $38                                       ; $6b3f: $ff
    ld d, e                                       ; $6b40: $53
    rst $28                                       ; $6b41: $ef
    jp nc, $1080                                  ; $6b42: $d2 $80 $10

jr_09f_6b45:
    jr nz, @+$01                                  ; $6b45: $20 $ff

    rst $38                                       ; $6b47: $ff
    ld a, d                                       ; $6b48: $7a
    rst $38                                       ; $6b49: $ff
    ld a, h                                       ; $6b4a: $7c
    rst $38                                       ; $6b4b: $ff
    add hl, sp                                    ; $6b4c: $39
    db $10                                        ; $6b4d: $10
    cp $12                                        ; $6b4e: $fe $12
    db $fd                                        ; $6b50: $fd
    ld h, b                                       ; $6b51: $60
    ld a, [de]                                    ; $6b52: $1a
    rst $00                                       ; $6b53: $c7
    rst $38                                       ; $6b54: $ff
    jp Jump_000_00ff                              ; $6b55: $c3 $ff $00


    ld d, a                                       ; $6b58: $57
    rst $28                                       ; $6b59: $ef
    ld b, e                                       ; $6b5a: $43
    rst $38                                       ; $6b5b: $ff
    inc de                                        ; $6b5c: $13
    rst $28                                       ; $6b5d: $ef
    and l                                         ; $6b5e: $a5
    res 0, b                                      ; $6b5f: $cb $80
    ld [bc], a                                    ; $6b61: $02
    jr c, jr_09f_6ae9                             ; $6b62: $38 $85

    db $eb                                        ; $6b64: $eb
    and l                                         ; $6b65: $a5
    db $db                                        ; $6b66: $db
    jp z, Jump_09f_46e7                           ; $6b67: $ca $e7 $46

    nop                                           ; $6b6a: $00
    db $eb                                        ; $6b6b: $eb
    ld c, d                                       ; $6b6c: $4a
    rst $20                                       ; $6b6d: $e7
    ld c, [hl]                                    ; $6b6e: $4e
    db $e3                                        ; $6b6f: $e3
    nop                                           ; $6b70: $00
    rst $20                                       ; $6b71: $e7
    ld b, h                                       ; $6b72: $44
    nop                                           ; $6b73: $00
    db $e3                                        ; $6b74: $e3
    ld de, $43e7                                  ; $6b75: $11 $e7 $43
    rst $28                                       ; $6b78: $ef
    ld sp, $b0fe                                  ; $6b79: $31 $fe $b0
    nop                                           ; $6b7c: $00
    ld a, [hl]                                    ; $6b7d: $7e
    inc sp                                        ; $6b7e: $33
    db $fc                                        ; $6b7f: $fc
    or b                                          ; $6b80: $b0
    ld a, h                                       ; $6b81: $7c
    add d                                         ; $6b82: $82
    ld a, h                                       ; $6b83: $7c
    db $fc                                        ; $6b84: $fc

jr_09f_6b85:
    jr nz, jr_09f_6b85                            ; $6b85: $20 $fe

    cp $9d                                        ; $6b87: $fe $9d
    ld [bc], a                                    ; $6b89: $02
    ld [de], a                                    ; $6b8a: $12
    rst $28                                       ; $6b8b: $ef
    ld d, d                                       ; $6b8c: $52
    rst $28                                       ; $6b8d: $ef
    ld b, d                                       ; $6b8e: $42
    adc b                                         ; $6b8f: $88
    inc b                                         ; $6b90: $04
    nop                                           ; $6b91: $00

Call_09f_6b92:
    ld h, d                                       ; $6b92: $62
    rst $08                                       ; $6b93: $cf
    ld d, b                                       ; $6b94: $50
    ld [$0800], sp                                ; $6b95: $08 $00 $08
    rst $20                                       ; $6b98: $e7
    and l                                         ; $6b99: $a5
    ld [$b5db], sp                                ; $6b9a: $08 $db $b5
    res 6, l                                      ; $6b9d: $cb $b5
    ld b, h                                       ; $6b9f: $44
    jr nz, jr_09f_6b45                            ; $6ba0: $20 $a3

    rst $08                                       ; $6ba2: $cf
    and a                                         ; $6ba3: $a7
    ld [bc], a                                    ; $6ba4: $02
    rst $08                                       ; $6ba5: $cf
    rrca                                          ; $6ba6: $0f
    rst $38                                       ; $6ba7: $ff
    ccf                                           ; $6ba8: $3f
    rst $38                                       ; $6ba9: $ff
    ld a, a                                       ; $6baa: $7f
    ld [bc], a                                    ; $6bab: $02
    nop                                           ; $6bac: $00
    rst $38                                       ; $6bad: $ff
    nop                                           ; $6bae: $00
    ld a, a                                       ; $6baf: $7f
    cp a                                          ; $6bb0: $bf
    ld a, a                                       ; $6bb1: $7f
    sub a                                         ; $6bb2: $97
    ld a, a                                       ; $6bb3: $7f
    rst $08                                       ; $6bb4: $cf
    ccf                                           ; $6bb5: $3f
    ret nc                                        ; $6bb6: $d0

jr_09f_6bb7:
    inc b                                         ; $6bb7: $04
    rst $28                                       ; $6bb8: $ef
    ld [$f0f5], a                                 ; $6bb9: $ea $f5 $f0
    rst $38                                       ; $6bbc: $ff
    call nc, $fa18                                ; $6bbd: $d4 $18 $fa
    db $fd                                        ; $6bc0: $fd
    ld bc, $fdea                                  ; $6bc1: $01 $ea $fd
    xor l                                         ; $6bc4: $ad
    rst $08                                       ; $6bc5: $cf
    xor c                                         ; $6bc6: $a9
    rst $08                                       ; $6bc7: $cf
    and c                                         ; $6bc8: $a1
    ld [bc], a                                    ; $6bc9: $02
    nop                                           ; $6bca: $00
    ld [$cfa5], sp                                ; $6bcb: $08 $a5 $cf
    and e                                         ; $6bce: $a3
    rst $08                                       ; $6bcf: $cf
    ld a, h                                       ; $6bd0: $7c
    ld [$0ff5], sp                                ; $6bd1: $08 $f5 $0f
    ld a, [hl+]                                   ; $6bd4: $2a
    nop                                           ; $6bd5: $00
    sub a                                         ; $6bd6: $97
    ld d, l                                       ; $6bd7: $55
    adc e                                         ; $6bd8: $8b
    xor d                                         ; $6bd9: $aa
    ld b, l                                       ; $6bda: $45
    dec [hl]                                      ; $6bdb: $35
    jp nz, Jump_000_049b                          ; $6bdc: $c2 $9b $04

    ld h, b                                       ; $6bdf: $60

jr_09f_6be0:
    rrca                                          ; $6be0: $0f
    ldh a, [$96]                                  ; $6be1: $f0 $96
    ld l, b                                       ; $6be3: $68
    nop                                           ; $6be4: $00
    dec bc                                        ; $6be5: $0b
    ld e, a                                       ; $6be6: $5f
    rst $38                                       ; $6be7: $ff
    nop                                           ; $6be8: $00
    xor d                                         ; $6be9: $aa
    rst $38                                       ; $6bea: $ff
    inc d                                         ; $6beb: $14
    rst $38                                       ; $6bec: $ff
    and d                                         ; $6bed: $a2
    ld e, l                                       ; $6bee: $5d
    push de                                       ; $6bef: $d5
    ld a, [hl+]                                   ; $6bf0: $2a
    nop                                           ; $6bf1: $00
    cp d                                          ; $6bf2: $ba
    dec b                                         ; $6bf3: $05
    sub $f9                                       ; $6bf4: $d6 $f9
    db $eb                                        ; $6bf6: $eb
    db $f4                                        ; $6bf7: $f4
    ld d, a                                       ; $6bf8: $57
    add sp, $00                                   ; $6bf9: $e8 $00
    xor d                                         ; $6bfb: $aa
    pop de                                        ; $6bfc: $d1
    ld d, h                                       ; $6bfd: $54
    and e                                         ; $6bfe: $a3
    xor b                                         ; $6bff: $a8
    ld b, a                                       ; $6c00: $47

jr_09f_6c01:
    ld e, d                                       ; $6c01: $5a
    add a                                         ; $6c02: $87
    jr nz, jr_09f_6bb7                            ; $6c03: $20 $b2

    rlca                                          ; $6c05: $07
    jr nz, jr_09f_6c23                            ; $6c06: $20 $1b

    and l                                         ; $6c08: $a5
    rst $38                                       ; $6c09: $ff
    ld b, h                                       ; $6c0a: $44
    rst $38                                       ; $6c0b: $ff
    sub [hl]                                      ; $6c0c: $96
    inc bc                                        ; $6c0d: $03
    db $ed                                        ; $6c0e: $ed
    jr nc, jr_09f_6be0                            ; $6c0f: $30 $cf

    inc [hl]                                      ; $6c11: $34
    set 7, a                                      ; $6c12: $cb $ff
    call c, $a202                                 ; $6c14: $dc $02 $a2
    ld bc, $f800                                  ; $6c17: $01 $00 $f8
    rlca                                          ; $6c1a: $07
    ret nz                                        ; $6c1b: $c0

    cp a                                          ; $6c1c: $bf
    nop                                           ; $6c1d: $00
    ld a, a                                       ; $6c1e: $7f
    add b                                         ; $6c1f: $80
    ld a, a                                       ; $6c20: $7f
    nop                                           ; $6c21: $00
    add b                                         ; $6c22: $80

jr_09f_6c23:
    inc a                                         ; $6c23: $3c
    rst $38                                       ; $6c24: $ff
    inc a                                         ; $6c25: $3c
    rst $38                                       ; $6c26: $ff
    jr nz, jr_09f_6c65                            ; $6c27: $20 $3c

    db $e3                                        ; $6c29: $e3
    jr jr_09f_6c68                                ; $6c2a: $18 $3c

    jp $b700                                      ; $6c2c: $c3 $00 $b7


    ld bc, $0004                                  ; $6c2f: $01 $04 $00
    ld [bc], a                                    ; $6c32: $02
    db $dd                                        ; $6c33: $dd
    inc h                                         ; $6c34: $24
    nop                                           ; $6c35: $00
    db $db                                        ; $6c36: $db
    ld h, [hl]                                    ; $6c37: $66
    sbc c                                         ; $6c38: $99
    ld b, h                                       ; $6c39: $44
    sbc e                                         ; $6c3a: $9b
    ld h, d                                       ; $6c3b: $62
    sbc c                                         ; $6c3c: $99
    ld b, d                                       ; $6c3d: $42
    sbc [hl]                                      ; $6c3e: $9e
    ld [bc], a                                    ; $6c3f: $02
    nop                                           ; $6c40: $00
    add b                                         ; $6c41: $80
    dec de                                        ; $6c42: $1b
    ldh a, [rOBP0]                                ; $6c43: $f0 $48

jr_09f_6c45:
    db $fc                                        ; $6c45: $fc
    ld [$0834], sp                                ; $6c46: $08 $34 $08
    inc b                                         ; $6c49: $04
    jr c, jr_09f_6c4c                             ; $6c4a: $38 $00

jr_09f_6c4c:
    ld h, b                                       ; $6c4c: $60
    rst $38                                       ; $6c4d: $ff
    ld [hl], $18                                  ; $6c4e: $36 $18
    ld b, $28                                     ; $6c50: $06 $28
    nop                                           ; $6c52: $00
    rst $38                                       ; $6c53: $ff
    ret nz                                        ; $6c54: $c0

    dec de                                        ; $6c55: $1b
    add b                                         ; $6c56: $80
    nop                                           ; $6c57: $00
    dec de                                        ; $6c58: $1b
    and d                                         ; $6c59: $a2
    add hl, de                                    ; $6c5a: $19
    and d                                         ; $6c5b: $a2
    add hl, de                                    ; $6c5c: $19
    add d                                         ; $6c5d: $82
    add hl, sp                                    ; $6c5e: $39
    sub d                                         ; $6c5f: $92
    jr z, jr_09f_6c9b                             ; $6c60: $28 $39

    sub [hl]                                      ; $6c62: $96
    inc b                                         ; $6c63: $04
    nop                                           ; $6c64: $00

jr_09f_6c65:
    rst $38                                       ; $6c65: $ff
    sbc h                                         ; $6c66: $9c
    nop                                           ; $6c67: $00

jr_09f_6c68:
    ld d, l                                       ; $6c68: $55
    xor d                                         ; $6c69: $aa
    ld [hl], e                                    ; $6c6a: $73
    ld b, $88                                     ; $6c6b: $06 $88
    ld [hl], e                                    ; $6c6d: $73
    adc b                                         ; $6c6e: $88
    ld h, c                                       ; $6c6f: $61
    sbc b                                         ; $6c70: $98
    ld b, $08                                     ; $6c71: $06 $08
    db $10                                        ; $6c73: $10
    jr jr_09f_6c45                                ; $6c74: $18 $cf

    ld b, $20                                     ; $6c76: $06 $20
    rst $08                                       ; $6c78: $cf
    jr nz, jr_09f_6c01                            ; $6c79: $20 $86

    ld h, c                                       ; $6c7b: $61
    ld b, $08                                     ; $6c7c: $06 $08
    ld h, $08                                     ; $6c7e: $26 $08
    jp nc, Jump_000_2a80                          ; $6c80: $d2 $80 $2a

    nop                                           ; $6c83: $00
    nop                                           ; $6c84: $00
    cp e                                          ; $6c85: $bb
    add [hl]                                      ; $6c86: $86
    add hl, sp                                    ; $6c87: $39
    inc h                                         ; $6c88: $24
    sbc e                                         ; $6c89: $9b
    call z, Call_000_3b7f                         ; $6c8a: $cc $7f $3b
    ld a, [hl+]                                   ; $6c8d: $2a
    ld [$282c], sp                                ; $6c8e: $08 $2c $28
    ld [hl], $08                                  ; $6c91: $36 $08
    ld a, [hl+]                                   ; $6c93: $2a
    ld [$282c], sp                                ; $6c94: $08 $2c $28
    ld [hl], $08                                  ; $6c97: $36 $08
    ld h, b                                       ; $6c99: $60
    add hl, de                                    ; $6c9a: $19

jr_09f_6c9b:
    nop                                           ; $6c9b: $00
    sub b                                         ; $6c9c: $90
    ld a, h                                       ; $6c9d: $7c
    sub d                                         ; $6c9e: $92
    ld a, h                                       ; $6c9f: $7c
    sub b                                         ; $6ca0: $90
    ld a, h                                       ; $6ca1: $7c
    nop                                           ; $6ca2: $00
    ld a, h                                       ; $6ca3: $7c
    nop                                           ; $6ca4: $00
    db $10                                        ; $6ca5: $10
    ld a, h                                       ; $6ca6: $7c
    rst $38                                       ; $6ca7: $ff
    rst $38                                       ; $6ca8: $ff
    xor e                                         ; $6ca9: $ab
    rst $38                                       ; $6caa: $ff
    ld d, l                                       ; $6cab: $55
    xor e                                         ; $6cac: $ab
    inc b                                         ; $6cad: $04
    dec a                                         ; $6cae: $3d
    add e                                         ; $6caf: $83
    dec a                                         ; $6cb0: $3d
    add e                                         ; $6cb1: $83
    dec e                                         ; $6cb2: $1d
    inc b                                         ; $6cb3: $04
    nop                                           ; $6cb4: $00
    dec a                                         ; $6cb5: $3d
    add e                                         ; $6cb6: $83
    nop                                           ; $6cb7: $00
    ld d, h                                       ; $6cb8: $54
    jr c, jr_09f_6cfc                             ; $6cb9: $38 $41

    inc a                                         ; $6cbb: $3c
    sub h                                         ; $6cbc: $94
    add hl, sp                                    ; $6cbd: $39
    ret nc                                        ; $6cbe: $d0

    dec a                                         ; $6cbf: $3d
    nop                                           ; $6cc0: $00
    ld b, [hl]                                    ; $6cc1: $46
    cp c                                          ; $6cc2: $b9
    sub b                                         ; $6cc3: $90
    ld a, l                                       ; $6cc4: $7d
    ld b, d                                       ; $6cc5: $42
    cp l                                          ; $6cc6: $bd
    add h                                         ; $6cc7: $84
    ld a, e                                       ; $6cc8: $7b
    nop                                           ; $6cc9: $00
    nop                                           ; $6cca: $00
    rst $38                                       ; $6ccb: $ff
    ld [bc], a                                    ; $6ccc: $02
    rst $38                                       ; $6ccd: $ff
    ld b, b                                       ; $6cce: $40
    rst $38                                       ; $6ccf: $ff
    ld a, [hl]                                    ; $6cd0: $7e
    rst $38                                       ; $6cd1: $ff
    nop                                           ; $6cd2: $00
    db $db                                        ; $6cd3: $db
    sbc c                                         ; $6cd4: $99
    jp $e381                                      ; $6cd5: $c3 $81 $e3


    add c                                         ; $6cd8: $81
    cp l                                          ; $6cd9: $bd
    jp Jump_000_2ac0                              ; $6cda: $c3 $c0 $2a


    ld [$282c], sp                                ; $6cdd: $08 $2c $28
    dec l                                         ; $6ce0: $2d
    sub e                                         ; $6ce1: $93
    dec d                                         ; $6ce2: $15
    cp e                                          ; $6ce3: $bb
    ld b, c                                       ; $6ce4: $41
    cp a                                          ; $6ce5: $bf
    nop                                           ; $6ce6: $00
    jp nc, $963d                                  ; $6ce7: $d2 $3d $96

    add hl, sp                                    ; $6cea: $39
    inc d                                         ; $6ceb: $14
    add hl, sp                                    ; $6cec: $39
    ld d, d                                       ; $6ced: $52
    dec a                                         ; $6cee: $3d
    nop                                           ; $6cef: $00
    ld d, b                                       ; $6cf0: $50
    dec a                                         ; $6cf1: $3d
    dec b                                         ; $6cf2: $05
    ld a, b                                       ; $6cf3: $78
    dec d                                         ; $6cf4: $15
    ld a, b                                       ; $6cf5: $78
    ld e, d                                       ; $6cf6: $5a
    rst $20                                       ; $6cf7: $e7
    nop                                           ; $6cf8: $00
    inc h                                         ; $6cf9: $24
    rst $38                                       ; $6cfa: $ff
    ret c                                         ; $6cfb: $d8

jr_09f_6cfc:
    ld a, a                                       ; $6cfc: $7f
    ld e, b                                       ; $6cfd: $58
    rst $38                                       ; $6cfe: $ff
    sbc b                                         ; $6cff: $98
    ld a, a                                       ; $6d00: $7f
    ld d, c                                       ; $6d01: $51
    db $10                                        ; $6d02: $10
    add $02                                       ; $6d03: $c6 $02
    inc b                                         ; $6d05: $04
    ld e, a                                       ; $6d06: $5f
    inc h                                         ; $6d07: $24
    db $fc                                        ; $6d08: $fc
    rst $38                                       ; $6d09: $ff
    ld a, b                                       ; $6d0a: $78
    ld c, $02                                     ; $6d0b: $0e $02
    ld h, b                                       ; $6d0d: $60
    ld e, b                                       ; $6d0e: $58
    ld [de], a                                    ; $6d0f: $12
    ld [bc], a                                    ; $6d10: $02
    ld [hl], b                                    ; $6d11: $70
    inc c                                         ; $6d12: $0c
    ldh a, [rIE]                                  ; $6d13: $f0 $ff
    call nz, $66fb                                ; $6d15: $c4 $fb $66
    nop                                           ; $6d18: $00
    ld sp, hl                                     ; $6d19: $f9
    ld b, d                                       ; $6d1a: $42
    ld sp, hl                                     ; $6d1b: $f9
    ld b, h                                       ; $6d1c: $44
    ld sp, hl                                     ; $6d1d: $f9
    ld c, d                                       ; $6d1e: $4a
    pop af                                        ; $6d1f: $f1
    ld de, $fe10                                  ; $6d20: $11 $10 $fe
    inc sp                                        ; $6d23: $33
    db $fc                                        ; $6d24: $fc
    inc b                                         ; $6d25: $04
    ld [$fe10], sp                                ; $6d26: $08 $10 $fe
    ld d, d                                       ; $6d29: $52
    cp h                                          ; $6d2a: $bc
    nop                                           ; $6d2b: $00
    db $10                                        ; $6d2c: $10
    cp $42                                        ; $6d2d: $fe $42
    cp h                                          ; $6d2f: $bc
    ld b, [hl]                                    ; $6d30: $46
    ld sp, hl                                     ; $6d31: $f9
    ld c, c                                       ; $6d32: $49
    ld a, [c]                                     ; $6d33: $f2
    nop                                           ; $6d34: $00
    ld c, c                                       ; $6d35: $49
    ld a, [c]                                     ; $6d36: $f2
    ld bc, $14f2                                  ; $6d37: $01 $f2 $14
    ld [c], a                                     ; $6d3a: $e2
    nop                                           ; $6d3b: $00
    ld a, [c]                                     ; $6d3c: $f2
    nop                                           ; $6d3d: $00
    sub h                                         ; $6d3e: $94
    ld h, d                                       ; $6d3f: $62
    adc h                                         ; $6d40: $8c
    ld [hl], d                                    ; $6d41: $72
    ld [bc], a                                    ; $6d42: $02
    db $fc                                        ; $6d43: $fc
    ld d, b                                       ; $6d44: $50
    cp h                                          ; $6d45: $bc
    nop                                           ; $6d46: $00
    ld d, b                                       ; $6d47: $50
    cp h                                          ; $6d48: $bc
    nop                                           ; $6d49: $00
    cp h                                          ; $6d4a: $bc
    ld [$80bc], sp                                ; $6d4b: $08 $bc $80
    inc a                                         ; $6d4e: $3c
    nop                                           ; $6d4f: $00
    adc d                                         ; $6d50: $8a
    inc a                                         ; $6d51: $3c
    ld [bc], a                                    ; $6d52: $02
    inc a                                         ; $6d53: $3c
    ld de, $8866                                  ; $6d54: $11 $66 $88
    halt                                          ; $6d57: $76
    nop                                           ; $6d58: $00
    add hl, de                                    ; $6d59: $19
    ld h, [hl]                                    ; $6d5a: $66
    ld a, [bc]                                    ; $6d5b: $0a
    ld [hl], h                                    ; $6d5c: $74
    ld bc, $1a76                                  ; $6d5d: $01 $76 $1a
    ld h, h                                       ; $6d60: $64
    nop                                           ; $6d61: $00
    and c                                         ; $6d62: $a1
    ld d, [hl]                                    ; $6d63: $56
    ld a, [de]                                    ; $6d64: $1a
    ld h, h                                       ; $6d65: $64
    ld [bc], a                                    ; $6d66: $02
    inc a                                         ; $6d67: $3c

jr_09f_6d68:
    sub b                                         ; $6d68: $90
    ld a, $00                                     ; $6d69: $3e $00
    jp nc, $093c                                  ; $6d6b: $d2 $3c $09

    cp [hl]                                       ; $6d6e: $be
    ld d, c                                       ; $6d6f: $51
    cp [hl]                                       ; $6d70: $be
    ld de, $00fe                                  ; $6d71: $11 $fe $00
    ld a, d                                       ; $6d74: $7a
    cp h                                          ; $6d75: $bc
    ld e, d                                       ; $6d76: $5a
    cp h                                          ; $6d77: $bc
    and c                                         ; $6d78: $a1
    ld d, [hl]                                    ; $6d79: $56
    ld [de], a                                    ; $6d7a: $12
    push hl                                       ; $6d7b: $e5
    nop                                           ; $6d7c: $00
    xor c                                         ; $6d7d: $a9
    ld d, [hl]                                    ; $6d7e: $56
    inc e                                         ; $6d7f: $1c
    db $e3                                        ; $6d80: $e3
    add l                                         ; $6d81: $85
    ld [hl], d                                    ; $6d82: $72
    inc d                                         ; $6d83: $14
    db $e3                                        ; $6d84: $e3
    nop                                           ; $6d85: $00
    inc b                                         ; $6d86: $04
    di                                            ; $6d87: $f3
    db $10                                        ; $6d88: $10
    db $e3                                        ; $6d89: $e3
    add l                                         ; $6d8a: $85
    ld a, d                                       ; $6d8b: $7a
    ld b, d                                       ; $6d8c: $42
    dec a                                         ; $6d8d: $3d
    nop                                           ; $6d8e: $00
    dec c                                         ; $6d8f: $0d
    ld a, d                                       ; $6d90: $7a
    ld b, h                                       ; $6d91: $44
    ccf                                           ; $6d92: $3f
    ld c, b                                       ; $6d93: $48
    ccf                                           ; $6d94: $3f
    inc c                                         ; $6d95: $0c
    ccf                                           ; $6d96: $3f
    nop                                           ; $6d97: $00
    ld l, b                                       ; $6d98: $68
    rra                                           ; $6d99: $1f
    and h                                         ; $6d9a: $a4
    rra                                           ; $6d9b: $1f
    ld c, a                                       ; $6d9c: $4f
    nop                                           ; $6d9d: $00
    or a                                          ; $6d9e: $b7
    ld b, b                                       ; $6d9f: $40
    nop                                           ; $6da0: $00
    ld a, [hl+]                                   ; $6da1: $2a
    ld d, b                                       ; $6da2: $50
    sub d                                         ; $6da3: $92
    ld l, l                                       ; $6da4: $6d
    ld b, $f9                                     ; $6da5: $06 $f9
    sub d                                         ; $6da7: $92
    ld a, l                                       ; $6da8: $7d
    nop                                           ; $6da9: $00
    jr nz, @+$01                                  ; $6daa: $20 $ff

    sbc d                                         ; $6dac: $9a
    ld a, l                                       ; $6dad: $7d
    add sp, $07                                   ; $6dae: $e8 $07
    ld d, d                                       ; $6db0: $52
    daa                                           ; $6db1: $27
    nop                                           ; $6db2: $00
    sbc d                                         ; $6db3: $9a
    ld h, a                                       ; $6db4: $67
    ld [bc], a                                    ; $6db5: $02
    rst $30                                       ; $6db6: $f7
    sbc [hl]                                      ; $6db7: $9e
    rst $20                                       ; $6db8: $e7
    ld [bc], a                                    ; $6db9: $02
    rst $30                                       ; $6dba: $f7
    add hl, bc                                    ; $6dbb: $09
    adc a                                         ; $6dbc: $8f
    rst $30                                       ; $6dbd: $f7
    adc d                                         ; $6dbe: $8a
    rst $30                                       ; $6dbf: $f7
    and b                                         ; $6dc0: $a0
    ld a, [hl+]                                   ; $6dc1: $2a
    db $d3                                        ; $6dc2: $d3
    rst $28                                       ; $6dc3: $ef
    db $e4                                        ; $6dc4: $e4
    ld a, [bc]                                    ; $6dc5: $0a
    nop                                           ; $6dc6: $00
    add c                                         ; $6dc7: $81
    rst $38                                       ; $6dc8: $ff
    ld c, c                                       ; $6dc9: $49
    ccf                                           ; $6dca: $3f
    call $da3f                                    ; $6dcb: $cd $3f $da
    ccf                                           ; $6dce: $3f
    jr jr_09f_6d68                                ; $6dcf: $18 $97

    ld a, a                                       ; $6dd1: $7f
    dec sp                                        ; $6dd2: $3b
    ld h, h                                       ; $6dd3: $64
    ld a, [bc]                                    ; $6dd4: $0a
    dec l                                         ; $6dd5: $2d
    dec b                                         ; $6dd6: $05
    jr c, @+$01                                   ; $6dd7: $38 $ff

jr_09f_6dd9:
    ld a, [hl-]                                   ; $6dd9: $3a
    jr nc, jr_09f_6dd9                            ; $6dda: $30 $fd

    cp h                                          ; $6ddc: $bc
    sbc $02                                       ; $6ddd: $de $02
    reti                                          ; $6ddf: $d9


    ld [hl+], a                                   ; $6de0: $22
    rst $38                                       ; $6de1: $ff
    xor e                                         ; $6de2: $ab
    rst $30                                       ; $6de3: $f7
    adc e                                         ; $6de4: $8b
    jr nz, @-$07                                  ; $6de5: $20 $f7

    and e                                         ; $6de7: $a3
    ld b, $00                                     ; $6de8: $06 $00
    rst $20                                       ; $6dea: $e7
    rst $38                                       ; $6deb: $ff
    and e                                         ; $6dec: $a3
    rst $38                                       ; $6ded: $ff
    rst $30                                       ; $6dee: $f7
    add b                                         ; $6def: $80
    ld c, l                                       ; $6df0: $4d
    dec b                                         ; $6df1: $05
    call z, $f63f                                 ; $6df2: $cc $3f $f6
    rrca                                          ; $6df5: $0f
    rst $30                                       ; $6df6: $f7
    add hl, bc                                    ; $6df7: $09
    rst $28                                       ; $6df8: $ef
    nop                                           ; $6df9: $00
    db $10                                        ; $6dfa: $10
    rra                                           ; $6dfb: $1f
    ldh [$38], a                                  ; $6dfc: $e0 $38
    ldh [$1f], a                                  ; $6dfe: $e0 $1f
    ld hl, sp+$07                                 ; $6e00: $f8 $07
    add b                                         ; $6e02: $80
    ld d, b                                       ; $6e03: $50
    inc b                                         ; $6e04: $04
    cpl                                           ; $6e05: $2f
    ldh a, [$df]                                  ; $6e06: $f0 $df
    ldh [$df], a                                  ; $6e08: $e0 $df
    jr nz, jr_09f_6e7f                            ; $6e0a: $20 $73

    nop                                           ; $6e0c: $00
    jr nz, @-$02                                  ; $6e0d: $20 $fc

    ld [hl], b                                    ; $6e0f: $70
    db $fd                                        ; $6e10: $fd
    adc [hl]                                      ; $6e11: $8e

jr_09f_6e12:
    cp $01                                        ; $6e12: $fe $01
    add b                                         ; $6e14: $80
    nop                                           ; $6e15: $00
    ld a, a                                       ; $6e16: $7f
    adc $31                                       ; $6e17: $ce $31
    ldh [$1f], a                                  ; $6e19: $e0 $1f
    di                                            ; $6e1b: $f3
    rra                                           ; $6e1c: $1f
    cp a                                          ; $6e1d: $bf
    nop                                           ; $6e1e: $00
    inc e                                         ; $6e1f: $1c
    ld l, a                                       ; $6e20: $6f
    jr nc, jr_09f_6e12                            ; $6e21: $30 $ef

    ld d, b                                       ; $6e23: $50
    ld [hl], h                                    ; $6e24: $74
    adc b                                         ; $6e25: $88
    adc a                                         ; $6e26: $8f
    jr nz, jr_09f_6ea8                            ; $6e27: $20 $7f

    ccf                                           ; $6e29: $3f
    add e                                         ; $6e2a: $83
    dec d                                         ; $6e2b: $15
    daa                                           ; $6e2c: $27
    rst $38                                       ; $6e2d: $ff
    sub $39                                       ; $6e2e: $d6 $39
    db $db                                        ; $6e30: $db
    nop                                           ; $6e31: $00
    ccf                                           ; $6e32: $3f
    ld c, l                                       ; $6e33: $4d
    ld a, $07                                     ; $6e34: $3e $07
    ld hl, sp-$61                                 ; $6e36: $f8 $9f
    ld [hl], b                                    ; $6e38: $70
    rra                                           ; $6e39: $1f
    ld [bc], a                                    ; $6e3a: $02
    ldh a, [$c8]                                  ; $6e3b: $f0 $c8
    ldh a, [$b2]                                  ; $6e3d: $f0 $b2
    ld a, h                                       ; $6e3f: $7c
    ld a, l                                       ; $6e40: $7d
    halt                                          ; $6e41: $76
    ld bc, $00fe                                  ; $6e42: $01 $fe $00
    rst $38                                       ; $6e45: $ff
    ld h, d                                       ; $6e46: $62
    add e                                         ; $6e47: $83
    db $fc                                        ; $6e48: $fc
    ld h, a                                       ; $6e49: $67
    ld hl, sp+$1f                                 ; $6e4a: $f8 $1f
    jr nz, jr_09f_6e4e                            ; $6e4c: $20 $00

jr_09f_6e4e:
    rra                                           ; $6e4e: $1f
    rst $20                                       ; $6e4f: $e7
    ld a, b                                       ; $6e50: $78
    ld a, [c]                                     ; $6e51: $f2
    adc l                                         ; $6e52: $8d
    ei                                            ; $6e53: $fb
    rlca                                          ; $6e54: $07
    add l                                         ; $6e55: $85
    nop                                           ; $6e56: $00
    ld [bc], a                                    ; $6e57: $02
    scf                                           ; $6e58: $37
    call z, $eb37                                 ; $6e59: $cc $37 $eb
    rra                                           ; $6e5c: $1f
    ldh a, [$6c]                                  ; $6e5d: $f0 $6c
    nop                                           ; $6e5f: $00
    sbc b                                         ; $6e60: $98
    sub e                                         ; $6e61: $93
    ld a, h                                       ; $6e62: $7c
    ld a, h                                       ; $6e63: $7c
    db $e3                                        ; $6e64: $e3
    cp $81                                        ; $6e65: $fe $81
    ld a, e                                       ; $6e67: $7b
    nop                                           ; $6e68: $00
    add c                                         ; $6e69: $81
    cp d                                          ; $6e6a: $ba
    ld b, h                                       ; $6e6b: $44
    ld a, h                                       ; $6e6c: $7c
    add d                                         ; $6e6d: $82
    and l                                         ; $6e6e: $a5
    ld b, d                                       ; $6e6f: $42
    add b                                         ; $6e70: $80
    nop                                           ; $6e71: $00
    ld a, a                                       ; $6e72: $7f
    ld l, b                                       ; $6e73: $68
    sub a                                         ; $6e74: $97
    push de                                       ; $6e75: $d5
    dec hl                                        ; $6e76: $2b
    and e                                         ; $6e77: $a3
    ld e, [hl]                                    ; $6e78: $5e
    rst $00                                       ; $6e79: $c7
    nop                                           ; $6e7a: $00
    inc a                                         ; $6e7b: $3c
    ld h, h                                       ; $6e7c: $64
    sbc e                                         ; $6e7d: $9b
    adc c                                         ; $6e7e: $89

jr_09f_6e7f:
    ccf                                           ; $6e7f: $3f
    dec l                                         ; $6e80: $2d
    sbc e                                         ; $6e81: $9b
    dec hl                                        ; $6e82: $2b
    nop                                           ; $6e83: $00
    sbc a                                         ; $6e84: $9f
    ld l, $9b                                     ; $6e85: $2e $9b
    ld c, b                                       ; $6e87: $48
    sbc a                                         ; $6e88: $9f
    dec l                                         ; $6e89: $2d
    sbc e                                         ; $6e8a: $9b
    ld c, e                                       ; $6e8b: $4b
    ld a, b                                       ; $6e8c: $78
    sbc a                                         ; $6e8d: $9f
    inc c                                         ; $6e8e: $0c
    ld c, d                                       ; $6e8f: $4a
    ld b, h                                       ; $6e90: $44
    ld a, [bc]                                    ; $6e91: $0a
    inc c                                         ; $6e92: $0c
    ld c, d                                       ; $6e93: $4a
    ld b, h                                       ; $6e94: $44
    ld a, [bc]                                    ; $6e95: $0a
    ld hl, $699f                                  ; $6e96: $21 $9f $69
    nop                                           ; $6e99: $00
    sbc a                                         ; $6e9a: $9f
    ld l, e                                       ; $6e9b: $6b
    sbc a                                         ; $6e9c: $9f
    inc hl                                        ; $6e9d: $23
    rst $18                                       ; $6e9e: $df
    adc c                                         ; $6e9f: $89
    rst $38                                       ; $6ea0: $ff
    dec d                                         ; $6ea1: $15
    jr nc, @+$01                                  ; $6ea2: $30 $ff

    xor a                                         ; $6ea4: $af
    dec c                                         ; $6ea5: $0d
    ld b, $2c                                     ; $6ea6: $06 $2c

jr_09f_6ea8:
    ld c, b                                       ; $6ea8: $48
    ld [hl], e                                    ; $6ea9: $73
    adc b                                         ; $6eaa: $88
    inc b                                         ; $6eab: $04
    ei                                            ; $6eac: $fb
    add b                                         ; $6ead: $80
    inc l                                         ; $6eae: $2c
    ld c, b                                       ; $6eaf: $48
    rst $08                                       ; $6eb0: $cf
    jr nz, @+$12                                  ; $6eb1: $20 $10

    rst $28                                       ; $6eb3: $ef
    db $fc                                        ; $6eb4: $fc
    add e                                         ; $6eb5: $83
    db $e3                                        ; $6eb6: $e3
    nop                                           ; $6eb7: $00
    pop bc                                        ; $6eb8: $c1
    xor $f3                                       ; $6eb9: $ee $f3
    call nc, $b9ef                                ; $6ebb: $d4 $ef $b9
    add $be                                       ; $6ebe: $c6 $be
    nop                                           ; $6ec0: $00
    jp $8447                                      ; $6ec1: $c3 $47 $84


    cp a                                          ; $6ec4: $bf
    ld a, b                                       ; $6ec5: $78
    rla                                           ; $6ec6: $17
    ld [$0004], sp                                ; $6ec7: $08 $04 $00
    ld [$0f1f], sp                                ; $6eca: $08 $1f $0f
    add hl, de                                    ; $6ecd: $19

jr_09f_6ece:
    ldh a, [$f0]                                  ; $6ece: $f0 $f0
    ldh [rNR31], a                                ; $6ed0: $e0 $1b
    inc b                                         ; $6ed2: $04
    pop af                                        ; $6ed3: $f1
    xor $1f                                       ; $6ed4: $ee $1f
    db $f4                                        ; $6ed6: $f4
    rrca                                          ; $6ed7: $0f
    ldh a, [$0c]                                  ; $6ed8: $f0 $0c
    ld l, [hl]                                    ; $6eda: $6e
    sub a                                         ; $6edb: $97
    ld bc, $e19f                                  ; $6edc: $01 $9f $e1
    ld c, a                                       ; $6edf: $4f
    ldh a, [$95]                                  ; $6ee0: $f0 $95
    add sp, $0b                                   ; $6ee2: $e8 $0b
    jp z, Jump_000_0404                           ; $6ee4: $ca $04 $04

    dec a                                         ; $6ee7: $3d
    cp e                                          ; $6ee8: $bb
    dec a                                         ; $6ee9: $3d
    cp e                                          ; $6eea: $bb
    dec d                                         ; $6eeb: $15
    inc b                                         ; $6eec: $04
    nop                                           ; $6eed: $00
    dec a                                         ; $6eee: $3d
    cp e                                          ; $6eef: $bb
    ld b, b                                       ; $6ef0: $40
    dec b                                         ; $6ef1: $05
    ld h, h                                       ; $6ef2: $64
    ld [de], a                                    ; $6ef3: $12
    dec d                                         ; $6ef4: $15
    ld a, b                                       ; $6ef5: $78
    sub b                                         ; $6ef6: $90
    ld a, l                                       ; $6ef7: $7d
    ld [hl], $79                                  ; $6ef8: $36 $79
    db $10                                        ; $6efa: $10
    or d                                          ; $6efb: $b2
    ld a, l                                       ; $6efc: $7d
    ld d, $80                                     ; $6efd: $16 $80
    ld bc, $ff30                                  ; $6eff: $01 $30 $ff
    cp d                                          ; $6f02: $ba
    ld a, l                                       ; $6f03: $7d
    rlca                                          ; $6f04: $07
    jr z, jr_09f_6ece                             ; $6f05: $28 $c7

    ld [de], a                                    ; $6f07: $12
    rst $20                                       ; $6f08: $e7
    ld a, [de]                                    ; $6f09: $1a
    ld a, h                                       ; $6f0a: $7c
    ld bc, $2980                                  ; $6f0b: $01 $80 $29
    ld h, b                                       ; $6f0e: $60
    ld a, [de]                                    ; $6f0f: $1a

jr_09f_6f10:
    sub b                                         ; $6f10: $90
    sub b                                         ; $6f11: $90
    ld a, [hl+]                                   ; $6f12: $2a
    ld b, c                                       ; $6f13: $41
    cp a                                          ; $6f14: $bf
    ldh [rNR23], a                                ; $6f15: $e0 $18
    cp b                                          ; $6f17: $b8
    ld a, a                                       ; $6f18: $7f
    ld a, b                                       ; $6f19: $78
    add a                                         ; $6f1a: $87
    ld [bc], a                                    ; $6f1b: $02
    cp $03                                        ; $6f1c: $fe $03
    rst $38                                       ; $6f1e: $ff
    ld bc, $01f2                                  ; $6f1f: $01 $f2 $01
    ld [hl], b                                    ; $6f22: $70
    ld [$201b], sp                                ; $6f23: $08 $1b $20
    inc c                                         ; $6f26: $0c
    rst $18                                       ; $6f27: $df
    sbc h                                         ; $6f28: $9c
    inc b                                         ; $6f29: $04
    ccf                                           ; $6f2a: $3f
    rst $38                                       ; $6f2b: $ff
    cp a                                          ; $6f2c: $bf
    rst $38                                       ; $6f2d: $ff
    rst $10                                       ; $6f2e: $d7
    nop                                           ; $6f2f: $00
    ccf                                           ; $6f30: $3f
    ld a, c                                       ; $6f31: $79
    cp h                                          ; $6f32: $bc
    ld a, [de]                                    ; $6f33: $1a
    db $fc                                        ; $6f34: $fc
    add hl, de                                    ; $6f35: $19
    db $fc                                        ; $6f36: $fc
    ld a, c                                       ; $6f37: $79
    ld [bc], a                                    ; $6f38: $02
    db $fc                                        ; $6f39: $fc
    cp d                                          ; $6f3a: $ba
    ld a, l                                       ; $6f3b: $7d
    sbc d                                         ; $6f3c: $9a
    ld a, l                                       ; $6f3d: $7d
    jr c, jr_09f_6f10                             ; $6f3e: $38 $d0

    ld bc, $0006                                  ; $6f40: $01 $06 $00
    pop af                                        ; $6f43: $f1
    ld e, b                                       ; $6f44: $58
    db $e3                                        ; $6f45: $e3
    ld b, h                                       ; $6f46: $44
    di                                            ; $6f47: $f3
    ld d, d                                       ; $6f48: $52
    pop hl                                        ; $6f49: $e1
    ld c, b                                       ; $6f4a: $48
    nop                                           ; $6f4b: $00
    di                                            ; $6f4c: $f3
    ld b, d                                       ; $6f4d: $42
    pop af                                        ; $6f4e: $f1
    ld b, b                                       ; $6f4f: $40
    di                                            ; $6f50: $f3
    jp z, Jump_000_1cf1                           ; $6f51: $ca $f1 $1c

    ld [$3eff], sp                                ; $6f54: $08 $ff $3e
    db $fd                                        ; $6f57: $fd
    call c, $06ce                                 ; $6f58: $dc $ce $06
    xor h                                         ; $6f5b: $ac
    rst $38                                       ; $6f5c: $ff
    cp [hl]                                       ; $6f5d: $be
    add b                                         ; $6f5e: $80
    db $eb                                        ; $6f5f: $eb
    ld d, $4a                                     ; $6f60: $16 $4a
    pop af                                        ; $6f62: $f1
    set 6, b                                      ; $6f63: $cb $f0
    rst $28                                       ; $6f65: $ef
    ldh a, [$cb]                                  ; $6f66: $f0 $cb
    ld [$e1f4], sp                                ; $6f68: $08 $f4 $e1
    cp $e1                                        ; $6f6b: $fe $e1
    or $04                                        ; $6f6d: $f6 $04
    rst $38                                       ; $6f6f: $ff
    rst $38                                       ; $6f70: $ff
    sbc a                                         ; $6f71: $9f
    nop                                           ; $6f72: $00
    rst $38                                       ; $6f73: $ff
    ld b, e                                       ; $6f74: $43
    rst $38                                       ; $6f75: $ff
    ld a, $ff                                     ; $6f76: $3e $ff
    ccf                                           ; $6f78: $3f
    ret nz                                        ; $6f79: $c0

    ld a, a                                       ; $6f7a: $7f
    nop                                           ; $6f7b: $00
    add b                                         ; $6f7c: $80
    ld b, c                                       ; $6f7d: $41
    add b                                         ; $6f7e: $80
    daa                                           ; $6f7f: $27
    jp $3cde                                      ; $6f80: $c3 $de $3c


    ld e, e                                       ; $6f83: $5b
    nop                                           ; $6f84: $00
    adc h                                         ; $6f85: $8c
    rst $30                                       ; $6f86: $f7
    ld a, b                                       ; $6f87: $78
    rlca                                          ; $6f88: $07
    db $fc                                        ; $6f89: $fc
    ld [bc], a                                    ; $6f8a: $02
    rst $38                                       ; $6f8b: $ff
    add c                                         ; $6f8c: $81
    nop                                           ; $6f8d: $00
    cp $dc                                        ; $6f8e: $fe $dc
    cp h                                          ; $6f90: $bc
    ld l, b                                       ; $6f91: $68
    sub b                                         ; $6f92: $90
    db $10                                        ; $6f93: $10
    ld h, b                                       ; $6f94: $60
    and [hl]                                      ; $6f95: $a6
    nop                                           ; $6f96: $00
    ld b, e                                       ; $6f97: $43
    ret c                                         ; $6f98: $d8

    ccf                                           ; $6f99: $3f
    add b                                         ; $6f9a: $80
    ld a, a                                       ; $6f9b: $7f
    nop                                           ; $6f9c: $00
    rst $38                                       ; $6f9d: $ff
    ld b, $00                                     ; $6f9e: $06 $00
    ld sp, hl                                     ; $6fa0: $f9
    add hl, sp                                    ; $6fa1: $39
    ld b, a                                       ; $6fa2: $47
    inc sp                                        ; $6fa3: $33
    ld a, [hl]                                    ; $6fa4: $7e
    ld a, a                                       ; $6fa5: $7f
    adc [hl]                                      ; $6fa6: $8e
    add [hl]                                      ; $6fa7: $86
    ld [bc], a                                    ; $6fa8: $02
    ld a, h                                       ; $6fa9: $7c
    inc bc                                        ; $6faa: $03
    cp $21                                        ; $6fab: $fe $21
    rst $38                                       ; $6fad: $ff
    ld d, b                                       ; $6fae: $50
    ld [c], a                                     ; $6faf: $e2
    ld b, $60                                     ; $6fb0: $06 $60
    add b                                         ; $6fb2: $80
    and [hl]                                      ; $6fb3: $a6
    dec b                                         ; $6fb4: $05
    pop bc                                        ; $6fb5: $c1
    ccf                                           ; $6fb6: $3f
    add sp, $10                                   ; $6fb7: $e8 $10
    jr nc, @+$12                                  ; $6fb9: $30 $10

    add sp, $00                                   ; $6fbb: $e8 $00
    ldh a, [$f7]                                  ; $6fbd: $f0 $f7
    add hl, bc                                    ; $6fbf: $09
    ei                                            ; $6fc0: $fb
    ld b, $fb                                     ; $6fc1: $06 $fb
    inc b                                         ; $6fc3: $04
    ret z                                         ; $6fc4: $c8

    ld [bc], a                                    ; $6fc5: $02
    rlca                                          ; $6fc6: $07
    sub b                                         ; $6fc7: $90
    rrca                                          ; $6fc8: $0f
    ld de, $1e20                                  ; $6fc9: $11 $20 $1e
    ld h, d                                       ; $6fcc: $62
    dec b                                         ; $6fcd: $05
    or a                                          ; $6fce: $b7
    nop                                           ; $6fcf: $00
    rst $38                                       ; $6fd0: $ff
    pop hl                                        ; $6fd1: $e1
    ld a, a                                       ; $6fd2: $7f
    ld a, $ff                                     ; $6fd3: $3e $ff
    rlca                                          ; $6fd5: $07
    ld sp, hl                                     ; $6fd6: $f9
    rrca                                          ; $6fd7: $0f
    nop                                           ; $6fd8: $00
    ldh a, [$7d]                                  ; $6fd9: $f0 $7d
    add d                                         ; $6fdb: $82
    ld a, [$6301]                                 ; $6fdc: $fa $01 $63
    add c                                         ; $6fdf: $81
    rst $38                                       ; $6fe0: $ff
    ld [bc], a                                    ; $6fe1: $02
    add $db                                       ; $6fe2: $c6 $db
    db $fc                                        ; $6fe4: $fc
    ld b, c                                       ; $6fe5: $41
    cp $81                                        ; $6fe6: $fe $81
    jp c, $d205                                   ; $6fe8: $da $05 $d2

    nop                                           ; $6feb: $00
    cpl                                           ; $6fec: $2f
    and h                                         ; $6fed: $a4
    ld e, [hl]                                    ; $6fee: $5e
    ret c                                         ; $6fef: $d8

    inc l                                         ; $6ff0: $2c
    xor h                                         ; $6ff1: $ac
    ld e, b                                       ; $6ff2: $58
    call z, $3800                                 ; $6ff3: $cc $00 $38
    and a                                         ; $6ff6: $a7
    ld e, h                                       ; $6ff7: $5c
    jp nz, Jump_000_073f                          ; $6ff8: $c2 $3f $07

    rst $38                                       ; $6ffb: $ff
    ld e, b                                       ; $6ffc: $58
    nop                                           ; $6ffd: $00
    adc a                                         ; $6ffe: $8f
    cp e                                          ; $6fff: $bb
    call z, $fed9                                 ; $7000: $cc $d9 $fe
    cp h                                          ; $7003: $bc

jr_09f_7004:
    jp Jump_000_007d                              ; $7004: $c3 $7d $00


    add e                                         ; $7007: $83
    ld a, e                                       ; $7008: $7b
    db $fc                                        ; $7009: $fc
    scf                                           ; $700a: $37
    ld [$0407], sp                                ; $700b: $08 $07 $04
    rlca                                          ; $700e: $07
    nop                                           ; $700f: $00
    ld hl, sp+$08                                 ; $7010: $f8 $08
    rst $38                                       ; $7012: $ff
    rst $08                                       ; $7013: $cf
    jr c, jr_09f_7055                             ; $7014: $38 $3f

    ldh a, [$ec]                                  ; $7016: $f0 $ec
    nop                                           ; $7018: $00
    ret nc                                        ; $7019: $d0

    add $39                                       ; $701a: $c6 $39
    or $0f                                        ; $701c: $f6 $0f
    db $10                                        ; $701e: $10
    rrca                                          ; $701f: $0f
    ld b, $00                                     ; $7020: $06 $00
    ld sp, hl                                     ; $7022: $f9
    cp h                                          ; $7023: $bc
    jp Jump_09f_7fc3                              ; $7024: $c3 $c3 $7f


    rst $38                                       ; $7027: $ff
    jr c, jr_09f_7079                             ; $7028: $38 $4f

    nop                                           ; $702a: $00
    jr nc, jr_09f_7004                            ; $702b: $30 $d7

    ldh [$09], a                                  ; $702d: $e0 $09
    ldh a, [rDIV]                                 ; $702f: $f0 $04
    ld hl, sp-$74                                 ; $7031: $f8 $8c
    ld [bc], a                                    ; $7033: $02
    ld sp, hl                                     ; $7034: $f9
    sbc c                                         ; $7035: $99
    ldh a, [rNR11]                                ; $7036: $f0 $11
    ld sp, hl                                     ; $7038: $f9
    ld c, $22                                     ; $7039: $0e $22
    ld b, $d1                                     ; $703b: $06 $d1
    nop                                           ; $703d: $00
    ccf                                           ; $703e: $3f
    db $db                                        ; $703f: $db
    inc a                                         ; $7040: $3c
    cpl                                           ; $7041: $2f
    rra                                           ; $7042: $1f
    ld bc, $1707                                  ; $7043: $01 $07 $17
    ld [hl+], a                                   ; $7046: $22
    ld [$186f], sp                                ; $7047: $08 $6f $18
    nop                                           ; $704a: $00
    inc bc                                        ; $704b: $03
    rst $38                                       ; $704c: $ff
    rlca                                          ; $704d: $07
    or b                                          ; $704e: $b0
    dec b                                         ; $704f: $05
    cp a                                          ; $7050: $bf
    nop                                           ; $7051: $00
    ld a, a                                       ; $7052: $7f
    ret nz                                        ; $7053: $c0

    rst $38                                       ; $7054: $ff

jr_09f_7055:
    call nz, $a33b                                ; $7055: $c4 $3b $a3
    inc e                                         ; $7058: $1c
    ld a, h                                       ; $7059: $7c
    nop                                           ; $705a: $00
    inc hl                                        ; $705b: $23
    rst $18                                       ; $705c: $df
    ldh [$de], a                                  ; $705d: $e0 $de
    ldh [$f0], a                                  ; $705f: $e0 $f0
    ldh [$fc], a                                  ; $7061: $e0 $fc
    nop                                           ; $7063: $00
    di                                            ; $7064: $f3
    ld bc, $69ff                                  ; $7065: $01 $ff $69
    sbc b                                         ; $7068: $98
    ret nc                                        ; $7069: $d0

    jr nc, jr_09f_70d4                            ; $706a: $30 $68

    ld [bc], a                                    ; $706c: $02
    ldh a, [$f4]                                  ; $706d: $f0 $f4
    adc b                                         ; $706f: $88
    di                                            ; $7070: $f3
    ld c, a                                       ; $7071: $4f
    ret nz                                        ; $7072: $c0

    ret z                                         ; $7073: $c8

    nop                                           ; $7074: $00
    call c, $2300                                 ; $7075: $dc $00 $23
    db $fd                                        ; $7078: $fd

jr_09f_7079:
    jp nz, Jump_09f_44af                          ; $7079: $c2 $af $44

    ld l, [hl]                                    ; $707c: $6e
    ld e, a                                       ; $707d: $5f
    rst $18                                       ; $707e: $df
    nop                                           ; $707f: $00
    ld h, b                                       ; $7080: $60
    rst $38                                       ; $7081: $ff
    sub b                                         ; $7082: $90
    ld a, h                                       ; $7083: $7c
    adc b                                         ; $7084: $88
    jr nc, @-$2f                                  ; $7085: $30 $cf

    ld a, h                                       ; $7087: $7c
    nop                                           ; $7088: $00
    rlca                                          ; $7089: $07
    add hl, de                                    ; $708a: $19
    rrca                                          ; $708b: $0f
    ei                                            ; $708c: $fb
    cp $fe                                        ; $708d: $fe $fe
    db $fc                                        ; $708f: $fc
    adc $00                                       ; $7090: $ce $00
    db $fc                                        ; $7092: $fc
    ld a, l                                       ; $7093: $7d
    cp $c7                                        ; $7094: $fe $c7
    rst $38                                       ; $7096: $ff
    ld b, d                                       ; $7097: $42
    add c                                         ; $7098: $81
    ld [hl], b                                    ; $7099: $70
    nop                                           ; $709a: $00
    rst $38                                       ; $709b: $ff
    ret c                                         ; $709c: $d8

    adc a                                         ; $709d: $8f
    inc c                                         ; $709e: $0c
    rlca                                          ; $709f: $07
    inc c                                         ; $70a0: $0c
    rlca                                          ; $70a1: $07
    inc d                                         ; $70a2: $14
    nop                                           ; $70a3: $00
    rrca                                          ; $70a4: $0f
    ld a, [$201d]                                 ; $70a5: $fa $1d $20
    rst $38                                       ; $70a8: $ff
    pop bc                                        ; $70a9: $c1
    cp $00                                        ; $70aa: $fe $00
    add b                                         ; $70ac: $80
    ld bc, $0120                                  ; $70ad: $01 $20 $01
    nop                                           ; $70b0: $00
    rlca                                          ; $70b1: $07
    nop                                           ; $70b2: $00
    rst $20                                       ; $70b3: $e7
    rra                                           ; $70b4: $1f
    ccf                                           ; $70b5: $3f
    nop                                           ; $70b6: $00
    rst $38                                       ; $70b7: $ff
    ld b, a                                       ; $70b8: $47
    ld hl, sp+$4b                                 ; $70b9: $f8 $4b
    ld [hl], h                                    ; $70bb: $74
    inc h                                         ; $70bc: $24
    ld a, b                                       ; $70bd: $78
    ld l, d                                       ; $70be: $6a
    nop                                           ; $70bf: $00
    dec [hl]                                      ; $70c0: $35
    and c                                         ; $70c1: $a1
    ld a, [hl]                                    ; $70c2: $7e
    ld b, h                                       ; $70c3: $44
    rst $38                                       ; $70c4: $ff
    add d                                         ; $70c5: $82
    rst $38                                       ; $70c6: $ff
    db $e4                                        ; $70c7: $e4
    ld a, [bc]                                    ; $70c8: $0a
    rst $38                                       ; $70c9: $ff
    call $46ff                                    ; $70ca: $cd $ff $46
    db $10                                        ; $70cd: $10
    ld b, $00                                     ; $70ce: $06 $00
    sub h                                         ; $70d0: $94
    rlca                                          ; $70d1: $07
    rst $10                                       ; $70d2: $d7
    nop                                           ; $70d3: $00

jr_09f_70d4:
    ld hl, sp+$28                                 ; $70d4: $f8 $28
    ldh a, [$d0]                                  ; $70d6: $f0 $d0
    ldh [$f2], a                                  ; $70d8: $e0 $f2
    rst $38                                       ; $70da: $ff
    or c                                          ; $70db: $b1
    ld [bc], a                                    ; $70dc: $02
    rst $38                                       ; $70dd: $ff
    db $e3                                        ; $70de: $e3
    rst $38                                       ; $70df: $ff

jr_09f_70e0:
    inc bc                                        ; $70e0: $03
    rst $38                                       ; $70e1: $ff
    ld c, $60                                     ; $70e2: $0e $60
    ld h, $e8                                     ; $70e4: $26 $e8
    ld b, b                                       ; $70e6: $40
    db $10                                        ; $70e7: $10
    dec bc                                        ; $70e8: $0b
    nop                                           ; $70e9: $00
    ld bc, $009f                                  ; $70ea: $01 $9f $00
    ld b, d                                       ; $70ed: $42
    add c                                         ; $70ee: $81
    cp c                                          ; $70ef: $b9
    nop                                           ; $70f0: $00
    ld a, [hl]                                    ; $70f1: $7e
    or e                                          ; $70f2: $b3
    ld c, h                                       ; $70f3: $4c
    ld a, e                                       ; $70f4: $7b
    add h                                         ; $70f5: $84
    add a                                         ; $70f6: $87
    ld [bc], a                                    ; $70f7: $02
    ld a, l                                       ; $70f8: $7d
    ld [$3586], sp                                ; $70f9: $08 $86 $35
    cp $3e                                        ; $70fc: $fe $3e
    ld b, b                                       ; $70fe: $40
    inc bc                                        ; $70ff: $03
    ld l, l                                       ; $7100: $6d
    di                                            ; $7101: $f3
    or d                                          ; $7102: $b2

jr_09f_7103:
    nop                                           ; $7103: $00
    ld a, a                                       ; $7104: $7f

jr_09f_7105:
    call c, $d73f                                 ; $7105: $dc $3f $d7
    jr c, jr_09f_7103                             ; $7108: $38 $f9

    rra                                           ; $710a: $1f
    ld d, $80                                     ; $710b: $16 $80
    ld [hl], $02                                  ; $710d: $36 $02
    rst $18                                       ; $710f: $df
    ldh [rNR24], a                                ; $7110: $e0 $19
    ldh [rIF], a                                  ; $7112: $e0 $0f
    rst $38                                       ; $7114: $ff
    inc de                                        ; $7115: $13
    ld [bc], a                                    ; $7116: $02
    db $ec                                        ; $7117: $ec
    reti                                          ; $7118: $d9


    ld h, $fc                                     ; $7119: $26 $fc
    jp $e8fe                                      ; $711b: $c3 $fe $e8


    ld bc, $0006                                  ; $711e: $01 $06 $00
    inc bc                                        ; $7121: $03
    sbc h                                         ; $7122: $9c
    rlca                                          ; $7123: $07
    db $eb                                        ; $7124: $eb
    inc e                                         ; $7125: $1c
    db $10                                        ; $7126: $10
    rst $20                                       ; $7127: $e7
    rst $28                                       ; $7128: $ef
    ld [bc], a                                    ; $7129: $02
    jr jr_09f_714b                                ; $712a: $18 $1f

    ldh a, [$ec]                                  ; $712c: $f0 $ec
    ldh a, [rTAC]                                 ; $712e: $f0 $07
    ld c, d                                       ; $7130: $4a
    inc bc                                        ; $7131: $03
    ld d, b                                       ; $7132: $50
    nop                                           ; $7133: $00
    cp a                                          ; $7134: $bf
    and [hl]                                      ; $7135: $a6
    ld a, c                                       ; $7136: $79
    halt                                          ; $7137: $76
    rst $08                                       ; $7138: $cf
    jp $8f83                                      ; $7139: $c3 $83 $8f


    jr nc, jr_09f_7105                            ; $713c: $30 $c7

    ccf                                           ; $713e: $3f
    db $fc                                        ; $713f: $fc
    add hl, bc                                    ; $7140: $09
    nop                                           ; $7141: $00
    ld hl, $88f7                                  ; $7142: $21 $f7 $88
    xor a                                         ; $7145: $af
    ldh a, [rTMA]                                 ; $7146: $f0 $06
    jp hl                                         ; $7148: $e9


    ldh a, [$f4]                                  ; $7149: $f0 $f4

jr_09f_714b:
    ld hl, sp-$09                                 ; $714b: $f8 $f7
    add b                                         ; $714d: $80
    jr nz, jr_09f_70e0                            ; $714e: $20 $90

    ld e, $bf                                     ; $7150: $1e $bf
    add c                                         ; $7152: $81
    cp h                                          ; $7153: $bc
    ld b, $1e                                     ; $7154: $06 $1e
    rst $38                                       ; $7156: $ff
    ld c, [hl]                                    ; $7157: $4e
    cp a                                          ; $7158: $bf
    ld c, [hl]                                    ; $7159: $4e
    cp a                                          ; $715a: $bf
    add b                                         ; $715b: $80
    ld a, $00                                     ; $715c: $3e $00
    ld h, [hl]                                    ; $715e: $66
    pop bc                                        ; $715f: $c1
    nop                                           ; $7160: $00
    add b                                         ; $7161: $80
    jr z, jr_09f_7164                             ; $7162: $28 $00

jr_09f_7164:
    ld c, h                                       ; $7164: $4c
    cp a                                          ; $7165: $bf
    nop                                           ; $7166: $00
    ld c, l                                       ; $7167: $4d
    cp [hl]                                       ; $7168: $be
    ld c, h                                       ; $7169: $4c
    cp a                                          ; $716a: $bf
    push bc                                       ; $716b: $c5
    ld a, $0d                                     ; $716c: $3e $0d
    cp [hl]                                       ; $716e: $be
    nop                                           ; $716f: $00
    add a                                         ; $7170: $87
    inc a                                         ; $7171: $3c
    ld l, $9d                                     ; $7172: $2e $9d
    add l                                         ; $7174: $85
    inc a                                         ; $7175: $3c
    jp z, $10e7                                   ; $7176: $ca $e7 $10

    ld b, d                                       ; $7179: $42
    rst $28                                       ; $717a: $ef
    ld c, d                                       ; $717b: $4a
    add h                                         ; $717c: $84
    ld b, $08                                     ; $717d: $06 $08
    rst $20                                       ; $717f: $e7
    ld b, h                                       ; $7180: $44
    db $eb                                        ; $7181: $eb
    ld b, b                                       ; $7182: $40
    jr jr_09f_7191                                ; $7183: $18 $0c

    nop                                           ; $7185: $00
    jr nc, @+$01                                  ; $7186: $30 $ff

    or b                                          ; $7188: $b0
    ld a, a                                       ; $7189: $7f
    ld b, b                                       ; $718a: $40
    add c                                         ; $718b: $81
    inc b                                         ; $718c: $04
    cp a                                          ; $718d: $bf
    nop                                           ; $718e: $00
    add d                                         ; $718f: $82
    db $fd                                        ; $7190: $fd

jr_09f_7191:
    pop bc                                        ; $7191: $c1
    ld d, h                                       ; $7192: $54
    ld b, $81                                     ; $7193: $06 $81
    ld b, b                                       ; $7195: $40
    nop                                           ; $7196: $00
    ld a, [hl]                                    ; $7197: $7e
    nop                                           ; $7198: $00
    ld a, l                                       ; $7199: $7d
    ld [bc], a                                    ; $719a: $02
    ld [$4015], a                                 ; $719b: $ea $15 $40
    cp a                                          ; $719e: $bf
    inc b                                         ; $719f: $04
    add b                                         ; $71a0: $80
    rst $38                                       ; $71a1: $ff
    ret nc                                        ; $71a2: $d0

    rst $38                                       ; $71a3: $ff
    ld [$066c], a                                 ; $71a4: $ea $6c $06
    db $ec                                        ; $71a7: $ec
    dec e                                         ; $71a8: $1d
    nop                                           ; $71a9: $00
    and l                                         ; $71aa: $a5
    inc e                                         ; $71ab: $1c
    ld h, $1d                                     ; $71ac: $26 $1d
    ld [hl], h                                    ; $71ae: $74
    rrca                                          ; $71af: $0f
    and c                                         ; $71b0: $a1
    ld e, $00                                     ; $71b1: $1e $00
    call nc, $b10f                                ; $71b3: $d4 $0f $b1
    ld c, [hl]                                    ; $71b6: $4e
    ld de, $10ce                                  ; $71b7: $11 $ce $10
    rst $28                                       ; $71ba: $ef
    ld bc, $fe03                                  ; $71bb: $01 $03 $fe
    ld d, b                                       ; $71be: $50
    rst $28                                       ; $71bf: $ef
    ld [hl+], a                                   ; $71c0: $22
    rst $18                                       ; $71c1: $df
    ld h, e                                       ; $71c2: $63
    ld [bc], a                                    ; $71c3: $02
    nop                                           ; $71c4: $00
    nop                                           ; $71c5: $00
    ld b, a                                       ; $71c6: $47
    db $fc                                        ; $71c7: $fc
    ld h, h                                       ; $71c8: $64
    ret c                                         ; $71c9: $d8

    or h                                          ; $71ca: $b4
    nop                                           ; $71cb: $00
    ld a, a                                       ; $71cc: $7f
    nop                                           ; $71cd: $00
    nop                                           ; $71ce: $00
    cp a                                          ; $71cf: $bf
    ld b, b                                       ; $71d0: $40
    ld d, l                                       ; $71d1: $55
    xor d                                         ; $71d2: $aa
    ld [bc], a                                    ; $71d3: $02
    db $fd                                        ; $71d4: $fd
    and b                                         ; $71d5: $a0
    rst $38                                       ; $71d6: $ff
    nop                                           ; $71d7: $00
    ld d, h                                       ; $71d8: $54
    rst $38                                       ; $71d9: $ff
    cp d                                          ; $71da: $ba
    ld a, a                                       ; $71db: $7f
    cpl                                           ; $71dc: $2f
    rra                                           ; $71dd: $1f
    ld c, d                                       ; $71de: $4a
    dec b                                         ; $71df: $05
    nop                                           ; $71e0: $00
    and b                                         ; $71e1: $a0
    rlca                                          ; $71e2: $07
    ld a, [c]                                     ; $71e3: $f2
    dec b                                         ; $71e4: $05
    or l                                          ; $71e5: $b5
    ld c, d                                       ; $71e6: $4a
    ld e, b                                       ; $71e7: $58
    or b                                          ; $71e8: $b0
    nop                                           ; $71e9: $00
    ld [hl-], a                                   ; $71ea: $32
    ldh a, [$f5]                                  ; $71eb: $f0 $f5
    ldh [rNR10], a                                ; $71ed: $e0 $10
    adc $30                                       ; $71ef: $ce $30
    adc $00                                       ; $71f1: $ce $00
    inc d                                         ; $71f3: $14
    adc $50                                       ; $71f4: $ce $50
    adc [hl]                                      ; $71f6: $8e
    inc d                                         ; $71f7: $14
    adc $31                                       ; $71f8: $ce $31
    adc $00                                       ; $71fa: $ce $00
    ld [hl], h                                    ; $71fc: $74
    adc [hl]                                      ; $71fd: $8e
    dec d                                         ; $71fe: $15
    adc $4a                                       ; $71ff: $ce $4a
    ldh a, [$67]                                  ; $7201: $f0 $67
    ret c                                         ; $7203: $d8

    nop                                           ; $7204: $00
    ld [$ecff], sp                                ; $7205: $08 $ff $ec
    ld e, a                                       ; $7208: $5f
    ld b, a                                       ; $7209: $47
    rst $38                                       ; $720a: $ff
    add a                                         ; $720b: $87
    ld a, a                                       ; $720c: $7f
    nop                                           ; $720d: $00
    rlca                                          ; $720e: $07
    rst $38                                       ; $720f: $ff
    xor [hl]                                      ; $7210: $ae
    ld a, a                                       ; $7211: $7f
    rrca                                          ; $7212: $0f
    rra                                           ; $7213: $1f
    rst $08                                       ; $7214: $cf
    rrca                                          ; $7215: $0f
    nop                                           ; $7216: $00
    db $e4                                        ; $7217: $e4
    jr @+$1a                                      ; $7218: $18 $18

    ldh a, [$37]                                  ; $721a: $f0 $37
    ldh [$ea], a                                  ; $721c: $e0 $ea
    push af                                       ; $721e: $f5
    nop                                           ; $721f: $00
    pop af                                        ; $7220: $f1
    cp $18                                        ; $7221: $fe $18
    rst $38                                       ; $7223: $ff
    ld l, a                                       ; $7224: $6f
    ldh a, [$e5]                                  ; $7225: $f0 $e5
    ld a, [$3a00]                                 ; $7227: $fa $00 $3a
    dec e                                         ; $722a: $1d
    inc c                                         ; $722b: $0c
    rrca                                          ; $722c: $0f
    xor a                                         ; $722d: $af
    rlca                                          ; $722e: $07
    or $01                                        ; $722f: $f6 $01
    ld [$a058], sp                                ; $7231: $08 $58 $a0
    ld [$90f8], sp                                ; $7234: $08 $f8 $90
    ld a, $06                                     ; $7237: $3e $06
    db $fd                                        ; $7239: $fd
    ld h, b                                       ; $723a: $60
    nop                                           ; $723b: $00
    rra                                           ; $723c: $1f

jr_09f_723d:
    inc d                                         ; $723d: $14
    dec bc                                        ; $723e: $0b
    add d                                         ; $723f: $82
    dec c                                         ; $7240: $0d
    ret nz                                        ; $7241: $c0

    rrca                                          ; $7242: $0f
    and d                                         ; $7243: $a2
    nop                                           ; $7244: $00
    ld b, l                                       ; $7245: $45
    ld e, b                                       ; $7246: $58
    xor a                                         ; $7247: $af
    ld a, [bc]                                    ; $7248: $0a
    db $fd                                        ; $7249: $fd
    ld a, [de]                                    ; $724a: $1a
    db $fd                                        ; $724b: $fd
    ld [hl], d                                    ; $724c: $72
    nop                                           ; $724d: $00
    db $fd                                        ; $724e: $fd
    ret nz                                        ; $724f: $c0

    ei                                            ; $7250: $fb
    add b                                         ; $7251: $80
    ei                                            ; $7252: $fb
    jr nz, @-$23                                  ; $7253: $20 $db

    and d                                         ; $7255: $a2
    nop                                           ; $7256: $00
    ld e, c                                       ; $7257: $59
    ld [hl+], a                                   ; $7258: $22
    reti                                          ; $7259: $d9


    ld [bc], a                                    ; $725a: $02
    ld sp, hl                                     ; $725b: $f9
    sub h                                         ; $725c: $94
    ld a, e                                       ; $725d: $7b
    inc d                                         ; $725e: $14
    db $10                                        ; $725f: $10
    ld a, e                                       ; $7260: $7b
    db $10                                        ; $7261: $10
    ccf                                           ; $7262: $3f
    ld b, b                                       ; $7263: $40
    ld c, l                                       ; $7264: $4d
    ld c, d                                       ; $7265: $4a
    cp h                                          ; $7266: $bc
    ld [bc], a                                    ; $7267: $02
    db $fc                                        ; $7268: $fc
    nop                                           ; $7269: $00
    sbc h                                         ; $726a: $9c
    jr nc, jr_09f_723d                            ; $726b: $30 $d0

    jr nz, jr_09f_72d1                            ; $726d: $20 $62

    ret nz                                        ; $726f: $c0

    push de                                       ; $7270: $d5
    add b                                         ; $7271: $80
    nop                                           ; $7272: $00
    ccf                                           ; $7273: $3f
    add b                                         ; $7274: $80
    rst $10                                       ; $7275: $d7
    jr z, jr_09f_72a2                             ; $7276: $28 $2a

    push de                                       ; $7278: $d5
    inc b                                         ; $7279: $04
    ld a, e                                       ; $727a: $7b
    nop                                           ; $727b: $00
    add d                                         ; $727c: $82
    ld a, h                                       ; $727d: $7c
    ld d, b                                       ; $727e: $50
    ld a, $b2                                     ; $727f: $3e $b2
    inc e                                         ; $7281: $1c
    ld c, c                                       ; $7282: $49
    ld e, $01                                     ; $7283: $1e $01
    pop hl                                        ; $7285: $e1
    ld e, $71                                     ; $7286: $1e $71
    sbc [hl]                                      ; $7288: $9e
    sbc d                                         ; $7289: $9a
    ld a, h                                       ; $728a: $7c
    ld a, [hl-]                                   ; $728b: $3a
    inc de                                        ; $728c: $13
    dec bc                                        ; $728d: $0b
    add b                                         ; $728e: $80
    db $e3                                        ; $728f: $e3
    rlca                                          ; $7290: $07
    db $fd                                        ; $7291: $fd
    cp $7a                                        ; $7292: $fe $7a
    db $fc                                        ; $7294: $fc
    ld [hl], h                                    ; $7295: $74
    ld hl, sp+$3b                                 ; $7296: $f8 $3b
    db $10                                        ; $7298: $10
    ldh a, [rNR33]                                ; $7299: $f0 $1d
    ld a, [c]                                     ; $729b: $f2
    ldh a, [rIF]                                  ; $729c: $f0 $0f
    sbc c                                         ; $729e: $99
    ldh [$80], a                                  ; $729f: $e0 $80
    nop                                           ; $72a1: $00

jr_09f_72a2:
    nop                                           ; $72a2: $00
    inc d                                         ; $72a3: $14
    nop                                           ; $72a4: $00
    ld a, d                                       ; $72a5: $7a
    nop                                           ; $72a6: $00
    xor a                                         ; $72a7: $af
    ld d, b                                       ; $72a8: $50
    dec d                                         ; $72a9: $15
    ld [$c080], a                                 ; $72aa: $ea $80 $c0
    ld c, a                                       ; $72ad: $4f
    sub l                                         ; $72ae: $95
    db $eb                                        ; $72af: $eb
    add l                                         ; $72b0: $85
    ei                                            ; $72b1: $fb
    jp z, Jump_09f_44e7                           ; $72b2: $ca $e7 $44

    nop                                           ; $72b5: $00
    add sp, $5a                                   ; $72b6: $e8 $5a
    ldh [rOBP1], a                                ; $72b8: $e0 $49
    ldh [rNR13], a                                ; $72ba: $e0 $13
    ldh [rRP], a                                  ; $72bc: $e0 $56
    nop                                           ; $72be: $00
    pop hl                                        ; $72bf: $e1
    dec b                                         ; $72c0: $05
    ld a, [c]                                     ; $72c1: $f2
    ld c, b                                       ; $72c2: $48
    rst $30                                       ; $72c3: $f7
    jr z, @-$07                                   ; $72c4: $28 $f7

    ld [hl], b                                    ; $72c6: $70
    nop                                           ; $72c7: $00
    ccf                                           ; $72c8: $3f
    or b                                          ; $72c9: $b0
    rra                                           ; $72ca: $1f
    ld e, d                                       ; $72cb: $5a
    rrca                                          ; $72cc: $0f
    ld l, l                                       ; $72cd: $6d
    adc a                                         ; $72ce: $8f
    cp [hl]                                       ; $72cf: $be
    nop                                           ; $72d0: $00

jr_09f_72d1:
    ld c, a                                       ; $72d1: $4f
    ld [hl], a                                    ; $72d2: $77
    adc a                                         ; $72d3: $8f
    xor b                                         ; $72d4: $a8
    ld d, b                                       ; $72d5: $50
    ld [bc], a                                    ; $72d6: $02
    db $fd                                        ; $72d7: $fd
    ld bc, $fe40                                  ; $72d8: $01 $40 $fe
    dec de                                        ; $72db: $1b
    rra                                           ; $72dc: $1f
    and b                                         ; $72dd: $a0
    rst $38                                       ; $72de: $ff
    ld d, l                                       ; $72df: $55
    rst $38                                       ; $72e0: $ff
    ld a, [hl+]                                   ; $72e1: $2a
    ld a, a                                       ; $72e2: $7f
    ld [$cbb5], sp                                ; $72e3: $08 $b5 $cb
    push hl                                       ; $72e6: $e5
    adc e                                         ; $72e7: $8b
    inc d                                         ; $72e8: $14
    ld c, a                                       ; $72e9: $4f
    ld [$00f7], sp                                ; $72ea: $08 $f7 $00
    nop                                           ; $72ed: $00
    rst $38                                       ; $72ee: $ff
    ld l, b                                       ; $72ef: $68
    rst $08                                       ; $72f0: $cf
    ld c, l                                       ; $72f1: $4d
    adc a                                         ; $72f2: $8f
    ld a, $0f                                     ; $72f3: $3e $0f
    ld c, a                                       ; $72f5: $4f
    nop                                           ; $72f6: $00
    scf                                           ; $72f7: $37
    add d                                         ; $72f8: $82
    ld a, a                                       ; $72f9: $7f
    adc [hl]                                      ; $72fa: $8e
    rst $38                                       ; $72fb: $ff
    ld [bc], a                                    ; $72fc: $02
    ldh [rIF], a                                  ; $72fd: $e0 $0f
    nop                                           ; $72ff: $00
    ret nz                                        ; $7300: $c0

    dec [hl]                                      ; $7301: $35
    adc d                                         ; $7302: $8a
    ld [$c115], a                                 ; $7303: $ea $15 $c1
    cp [hl]                                       ; $7306: $be
    add b                                         ; $7307: $80
    add b                                         ; $7308: $80
    ld a, b                                       ; $7309: $78
    ld b, $e8                                     ; $730a: $06 $e8
    ld a, a                                       ; $730c: $7f
    sbc a                                         ; $730d: $9f
    ccf                                           ; $730e: $3f
    ld c, a                                       ; $730f: $4f
    rra                                           ; $7310: $1f
    xor $00                                       ; $7311: $ee $00
    rrca                                          ; $7313: $0f
    db $f4                                        ; $7314: $f4
    rlca                                          ; $7315: $07
    ld e, l                                       ; $7316: $5d
    and [hl]                                      ; $7317: $a6
    and [hl]                                      ; $7318: $a6
    ld e, l                                       ; $7319: $5d
    inc bc                                        ; $731a: $03
    nop                                           ; $731b: $00
    cp $06                                        ; $731c: $fe $06
    rst $38                                       ; $731e: $ff
    halt                                          ; $731f: $76
    rst $38                                       ; $7320: $ff
    ld b, d                                       ; $7321: $42
    rst $38                                       ; $7322: $ff
    ld h, $00                                     ; $7323: $26 $00
    rst $18                                       ; $7325: $df
    or $4e                                        ; $7326: $f6 $4e
    ld h, a                                       ; $7328: $67
    sbc $96                                       ; $7329: $de $96
    ld l, a                                       ; $732b: $6f
    dec b                                         ; $732c: $05
    nop                                           ; $732d: $00
    rst $38                                       ; $732e: $ff
    cp h                                          ; $732f: $bc
    ld l, a                                       ; $7330: $6f
    ld [hl], l                                    ; $7331: $75
    cp a                                          ; $7332: $bf
    add [hl]                                      ; $7333: $86
    rlca                                          ; $7334: $07
    ld h, e                                       ; $7335: $63
    nop                                           ; $7336: $00
    inc bc                                        ; $7337: $03
    db $fd                                        ; $7338: $fd
    ld bc, $d52a                                  ; $7339: $01 $2a $d5
    sub b                                         ; $733c: $90
    rst $28                                       ; $733d: $ef
    ld d, [hl]                                    ; $733e: $56
    nop                                           ; $733f: $00
    rst $38                                       ; $7340: $ff
    cp h                                          ; $7341: $bc
    cp $56                                        ; $7342: $fe $56
    db $fc                                        ; $7344: $fc
    cp l                                          ; $7345: $bd
    ld hl, sp-$06                                 ; $7346: $f8 $fa
    nop                                           ; $7348: $00
    push af                                       ; $7349: $f5
    ldh a, [rIE]                                  ; $734a: $f0 $ff

jr_09f_734c:
    jr jr_09f_734c                                ; $734c: $18 $fe

    xor l                                         ; $734e: $ad
    inc e                                         ; $734f: $1c
    ld [bc], a                                    ; $7350: $02
    db $10                                        ; $7351: $10
    dec c                                         ; $7352: $0d
    ld h, e                                       ; $7353: $63
    ld b, $e0                                     ; $7354: $06 $e0
    rrca                                          ; $7356: $0f
    sbc a                                         ; $7357: $9f
    ld a, a                                       ; $7358: $7f
    dec [hl]                                      ; $7359: $35
    rrca                                          ; $735a: $0f
    inc b                                         ; $735b: $04
    jr jr_09f_7365                                ; $735c: $18 $07

    inc c                                         ; $735e: $0c
    inc bc                                        ; $735f: $03
    ld b, [hl]                                    ; $7360: $46
    ld b, b                                       ; $7361: $40
    inc b                                         ; $7362: $04
    cp [hl]                                       ; $7363: $be
    ld b, c                                       ; $7364: $41

jr_09f_7365:
    nop                                           ; $7365: $00
    ld d, [hl]                                    ; $7366: $56
    xor c                                         ; $7367: $a9
    ld a, [hl+]                                   ; $7368: $2a
    rst $10                                       ; $7369: $d7
    ld [bc], a                                    ; $736a: $02
    rst $38                                       ; $736b: $ff
    ld b, $ff                                     ; $736c: $06 $ff
    nop                                           ; $736e: $00
    inc c                                         ; $736f: $0c
    rst $38                                       ; $7370: $ff
    ld e, d                                       ; $7371: $5a
    db $fd                                        ; $7372: $fd
    ldh a, [rIE]                                  ; $7373: $f0 $ff
    db $e4                                        ; $7375: $e4
    ei                                            ; $7376: $fb
    inc b                                         ; $7377: $04
    ret nz                                        ; $7378: $c0

    ei                                            ; $7379: $fb
    ld [hl+], a                                   ; $737a: $22
    reti                                          ; $737b: $d9


    ld [c], a                                     ; $737c: $e2
    ld [hl], b                                    ; $737d: $70
    scf                                           ; $737e: $37
    ld [de], a                                    ; $737f: $12
    add hl, sp                                    ; $7380: $39
    ld b, b                                       ; $7381: $40
    ld d, [hl]                                    ; $7382: $56
    ld d, b                                       ; $7383: $50
    rlca                                          ; $7384: $07
    ld d, $f9                                     ; $7385: $16 $f9
    nop                                           ; $7387: $00
    rrca                                          ; $7388: $0f
    db $f4                                        ; $7389: $f4
    inc bc                                        ; $738a: $03
    nop                                           ; $738b: $00
    ret c                                         ; $738c: $d8

    inc hl                                        ; $738d: $23
    inc b                                         ; $738e: $04
    rst $38                                       ; $738f: $ff
    ld h, l                                       ; $7390: $65
    sbc [hl]                                      ; $7391: $9e
    inc b                                         ; $7392: $04
    rst $18                                       ; $7393: $df
    nop                                           ; $7394: $00
    push hl                                       ; $7395: $e5
    sbc [hl]                                      ; $7396: $9e
    call nz, $ed9f                                ; $7397: $c4 $9f $ed
    sbc [hl]                                      ; $739a: $9e
    xor h                                         ; $739b: $ac
    rst $18                                       ; $739c: $df
    nop                                           ; $739d: $00
    add $bf                                       ; $739e: $c6 $bf
    and h                                         ; $73a0: $a4
    rst $18                                       ; $73a1: $df
    xor l                                         ; $73a2: $ad
    ld a, [hl]                                    ; $73a3: $7e
    ld b, [hl]                                    ; $73a4: $46
    inc a                                         ; $73a5: $3c
    ld bc, $7c09                                  ; $73a6: $01 $09 $7c
    ld b, h                                       ; $73a9: $44
    ccf                                           ; $73aa: $3f
    ld c, d                                       ; $73ab: $4a
    ccf                                           ; $73ac: $3f
    dec c                                         ; $73ad: $0d
    ld d, b                                       ; $73ae: $50
    ld d, $00                                     ; $73af: $16 $00
    inc a                                         ; $73b1: $3c
    rra                                           ; $73b2: $1f
    rrca                                          ; $73b3: $0f
    rlca                                          ; $73b4: $07
    rst $38                                       ; $73b5: $ff
    inc bc                                        ; $73b6: $03
    db $f4                                        ; $73b7: $f4
    rrca                                          ; $73b8: $0f
    db $10                                        ; $73b9: $10
    inc c                                         ; $73ba: $0c
    rst $38                                       ; $73bb: $ff
    cp b                                          ; $73bc: $b8
    inc d                                         ; $73bd: $14
    inc b                                         ; $73be: $04
    cp d                                          ; $73bf: $ba
    ld a, l                                       ; $73c0: $7d
    dec de                                        ; $73c1: $1b
    ld hl, sp+$01                                 ; $73c2: $f8 $01
    or a                                          ; $73c4: $b7
    ld hl, sp-$2d                                 ; $73c5: $f8 $d3
    db $fc                                        ; $73c7: $fc
    ld [$87ff], sp                                ; $73c8: $08 $ff $87
    inc b                                         ; $73cb: $04
    inc bc                                        ; $73cc: $03
    nop                                           ; $73cd: $00
    add [hl]                                      ; $73ce: $86
    cp $8a                                        ; $73cf: $fe $8a
    db $f4                                        ; $73d1: $f4
    adc [hl]                                      ; $73d2: $8e
    rst $38                                       ; $73d3: $ff
    or h                                          ; $73d4: $b4
    rst $18                                       ; $73d5: $df
    ld bc, $ffce                                  ; $73d6: $01 $ce $ff
    call c, $eeff                                 ; $73d9: $dc $ff $ee
    rst $38                                       ; $73dc: $ff
    sbc $30                                       ; $73dd: $de $30
    ld e, $30                                     ; $73df: $1e $30
    or $8a                                        ; $73e1: $f6 $8a
    jr nc, jr_09f_743b                            ; $73e3: $30 $56

    ldh [$2d], a                                  ; $73e5: $e0 $2d
    and $79                                       ; $73e7: $e6 $79
    ld a, [c]                                     ; $73e9: $f2
    adc l                                         ; $73ea: $8d
    nop                                           ; $73eb: $00
    ldh [$1f], a                                  ; $73ec: $e0 $1f
    nop                                           ; $73ee: $00
    rst $38                                       ; $73ef: $ff
    ld b, b                                       ; $73f0: $40
    ld a, a                                       ; $73f1: $7f
    ld sp, hl                                     ; $73f2: $f9
    ccf                                           ; $73f3: $3f
    nop                                           ; $73f4: $00
    rra                                           ; $73f5: $1f
    rst $20                                       ; $73f6: $e7
    ld b, c                                       ; $73f7: $41
    add b                                         ; $73f8: $80
    add b                                         ; $73f9: $80
    nop                                           ; $73fa: $00

jr_09f_73fb:
    ld a, [hl+]                                   ; $73fb: $2a
    nop                                           ; $73fc: $00
    ld b, h                                       ; $73fd: $44
    ld a, l                                       ; $73fe: $7d
    add hl, sp                                    ; $73ff: $39
    ld bc, $fc79                                  ; $7400: $01 $79 $fc
    sbc d                                         ; $7403: $9a
    ldh [rDIV], a                                 ; $7404: $e0 $04
    ld sp, hl                                     ; $7406: $f9
    ld a, h                                       ; $7407: $7c
    nop                                           ; $7408: $00
    ld a, d                                       ; $7409: $7a
    dec a                                         ; $740a: $3d
    ld a, [hl-]                                   ; $740b: $3a
    dec e                                         ; $740c: $1d
    jr jr_09f_741e                                ; $740d: $18 $0f

    xor d                                         ; $740f: $aa
    dec c                                         ; $7410: $0d
    nop                                           ; $7411: $00
    ld a, a                                       ; $7412: $7f
    add b                                         ; $7413: $80
    ld a, [hl+]                                   ; $7414: $2a
    push de                                       ; $7415: $d5
    dec d                                         ; $7416: $15
    ld [$ff40], a                                 ; $7417: $ea $40 $ff
    db $10                                        ; $741a: $10
    xor d                                         ; $741b: $aa
    rst $38                                       ; $741c: $ff
    db $dd                                        ; $741d: $dd

jr_09f_741e:
    ld e, d                                       ; $741e: $5a
    rra                                           ; $741f: $1f
    rlca                                          ; $7420: $07
    xor [hl]                                      ; $7421: $ae
    ld d, l                                       ; $7422: $55
    inc b                                         ; $7423: $04
    cp b                                          ; $7424: $b8
    ld l, [hl]                                    ; $7425: $6e
    inc bc                                        ; $7426: $03
    sbc h                                         ; $7427: $9c
    and h                                         ; $7428: $a4
    rlca                                          ; $7429: $07
    ld l, l                                       ; $742a: $6d
    rrca                                          ; $742b: $0f
    ld h, b                                       ; $742c: $60
    ld c, [hl]                                    ; $742d: $4e
    call nz, Call_000_0078                        ; $742e: $c4 $78 $00
    ld b, b                                       ; $7431: $40
    rst $38                                       ; $7432: $ff
    ld h, b                                       ; $7433: $60
    ld c, [hl]                                    ; $7434: $4e
    ld c, a                                       ; $7435: $4f
    ccf                                           ; $7436: $3f
    ld bc, $1ffe                                  ; $7437: $01 $fe $1f
    rst $38                                       ; $743a: $ff

jr_09f_743b:
    nop                                           ; $743b: $00
    ld l, c                                       ; $743c: $69
    ldh a, [$a0]                                  ; $743d: $f0 $a0
    ret nz                                        ; $743f: $c0

    ret nz                                        ; $7440: $c0

    add b                                         ; $7441: $80
    ld [hl], c                                    ; $7442: $71
    ret nz                                        ; $7443: $c0

    inc b                                         ; $7444: $04
    ccf                                           ; $7445: $3f
    di                                            ; $7446: $f3
    rrca                                          ; $7447: $0f
    rst $38                                       ; $7448: $ff
    ld [$13ba], sp                                ; $7449: $08 $ba $13
    call c, $007f                                 ; $744c: $dc $7f $00
    cp $43                                        ; $744f: $fe $43
    cp a                                          ; $7451: $bf
    pop bc                                        ; $7452: $c1
    ld b, e                                       ; $7453: $43
    add c                                         ; $7454: $81
    xor $c3                                       ; $7455: $ee $c3
    nop                                           ; $7457: $00
    inc a                                         ; $7458: $3c
    rst $38                                       ; $7459: $ff
    sub a                                         ; $745a: $97
    ld [$0884], sp                                ; $745b: $08 $84 $08
    ld a, e                                       ; $745e: $7b
    adc h                                         ; $745f: $8c
    ld b, h                                       ; $7460: $44
    rra                                           ; $7461: $1f
    ld h, b                                       ; $7462: $60
    dec b                                         ; $7463: $05
    rra                                           ; $7464: $1f
    rst $38                                       ; $7465: $ff
    rrca                                          ; $7466: $0f
    ld d, h                                       ; $7467: $54
    inc b                                         ; $7468: $04
    and e                                         ; $7469: $a3
    rst $08                                       ; $746a: $cf
    nop                                           ; $746b: $00
    and l                                         ; $746c: $a5
    rst $08                                       ; $746d: $cf
    xor c                                         ; $746e: $a9
    rst $18                                       ; $746f: $df
    or l                                          ; $7470: $b5
    ei                                            ; $7471: $fb
    add l                                         ; $7472: $85
    ei                                            ; $7473: $fb
    jr nz, jr_09f_73fb                            ; $7474: $20 $85

    db $eb                                        ; $7476: $eb
    inc e                                         ; $7477: $1c
    rrca                                          ; $7478: $0f
    xor h                                         ; $7479: $ac
    ld a, a                                       ; $747a: $7f
    ld b, h                                       ; $747b: $44
    ccf                                           ; $747c: $3f
    ld [$04c0], sp                                ; $747d: $08 $c0 $04
    nop                                           ; $7480: $00
    ld d, b                                       ; $7481: $50
    cpl                                           ; $7482: $2f
    ld a, c                                       ; $7483: $79
    db $fc                                        ; $7484: $fc
    sub l                                         ; $7485: $95
    ld a, d                                       ; $7486: $7a
    jr nc, @+$81                                  ; $7487: $30 $7f

    inc d                                         ; $7489: $14
    or b                                          ; $748a: $b0
    ld a, a                                       ; $748b: $7f
    ld a, [de]                                    ; $748c: $1a
    ld h, [hl]                                    ; $748d: $66
    ld bc, $d033                                  ; $748e: $01 $33 $d0
    dec b                                         ; $7491: $05
    xor c                                         ; $7492: $a9
    ld d, e                                       ; $7493: $53
    ld de, $bb45                                  ; $7494: $11 $45 $bb
    ld bc, $0400                                  ; $7497: $01 $00 $04
    ld d, [hl]                                    ; $749a: $56
    rst $38                                       ; $749b: $ff
    xor [hl]                                      ; $749c: $ae
    db $fc                                        ; $749d: $fc
    rlca                                          ; $749e: $07
    nop                                           ; $749f: $00
    ld a, [$5cf7]                                 ; $74a0: $fa $f7 $5c
    rst $38                                       ; $74a3: $ff
    ld sp, hl                                     ; $74a4: $f9
    rst $38                                       ; $74a5: $ff
    dec c                                         ; $74a6: $0d
    ei                                            ; $74a7: $fb
    jr nz, jr_09f_74f5                            ; $74a8: $20 $4b

    cp a                                          ; $74aa: $bf
    sub b                                         ; $74ab: $90
    ld l, $0e                                     ; $74ac: $2e $0e
    rst $38                                       ; $74ae: $ff
    ccf                                           ; $74af: $3f
    pop af                                        ; $74b0: $f1
    ld a, a                                       ; $74b1: $7f
    ld b, b                                       ; $74b2: $40
    ret nz                                        ; $74b3: $c0

    add hl, sp                                    ; $74b4: $39
    dec b                                         ; $74b5: $05
    cp $1e                                        ; $74b6: $fe $1e
    cp $33                                        ; $74b8: $fe $33
    db $ed                                        ; $74ba: $ed
    ld h, b                                       ; $74bb: $60
    nop                                           ; $74bc: $00
    rst $18                                       ; $74bd: $df
    ld c, b                                       ; $74be: $48
    rst $20                                       ; $74bf: $e7
    ld h, d                                       ; $74c0: $62
    pop bc                                        ; $74c1: $c1
    ld d, b                                       ; $74c2: $50

jr_09f_74c3:
    ldh [$3b], a                                  ; $74c3: $e0 $3b
    jr nc, jr_09f_74c3                            ; $74c5: $30 $fc

    rlca                                          ; $74c7: $07
    inc h                                         ; $74c8: $24
    ld [de], a                                    ; $74c9: $12
    nop                                           ; $74ca: $00
    ld bc, $88bf                                  ; $74cb: $01 $bf $88
    ld a, a                                       ; $74ce: $7f
    call z, Call_000_3b04                         ; $74cf: $cc $04 $3b
    ld a, $f1                                     ; $74d2: $3e $f1
    db $ec                                        ; $74d4: $ec
    pop de                                        ; $74d5: $d1
    nop                                           ; $74d6: $00
    dec e                                         ; $74d7: $1d
    db $10                                        ; $74d8: $10
    rst $38                                       ; $74d9: $ff
    nop                                           ; $74da: $00
    push af                                       ; $74db: $f5
    ld a, [$f1fa]                                 ; $74dc: $fa $fa $f1
    db $f4                                        ; $74df: $f4
    ld hl, sp+$1d                                 ; $74e0: $f8 $1d
    ld c, $20                                     ; $74e2: $0e $20
    rrca                                          ; $74e4: $0f
    inc bc                                        ; $74e5: $03
    ld l, d                                       ; $74e6: $6a
    ld bc, $08c8                                  ; $74e7: $01 $c8 $08
    rst $38                                       ; $74ea: $ff
    ld b, l                                       ; $74eb: $45
    cp a                                          ; $74ec: $bf
    nop                                           ; $74ed: $00
    cp a                                          ; $74ee: $bf
    ld b, [hl]                                    ; $74ef: $46
    rla                                           ; $74f0: $17

jr_09f_74f1:
    inc c                                         ; $74f1: $0c
    rst $28                                       ; $74f2: $ef
    jr jr_09f_74f1                                ; $74f3: $18 $fc

jr_09f_74f5:
    ld hl, sp+$0a                                 ; $74f5: $f8 $0a
    adc a                                         ; $74f7: $8f
    rlca                                          ; $74f8: $07
    add [hl]                                      ; $74f9: $86
    add e                                         ; $74fa: $83
    ld a, d                                       ; $74fb: $7a
    inc c                                         ; $74fc: $0c
    db $fc                                        ; $74fd: $fc
    xor a                                         ; $74fe: $af
    nop                                           ; $74ff: $00
    cp [hl]                                       ; $7500: $be
    ld [$701f], sp                                ; $7501: $08 $1f $70
    ccf                                           ; $7504: $3f
    ldh [rSVBK], a                                ; $7505: $e0 $70
    ld b, $c0                                     ; $7507: $06 $c0
    rst $38                                       ; $7509: $ff
    add b                                         ; $750a: $80
    add b                                         ; $750b: $80
    ld [bc], a                                    ; $750c: $02
    db $10                                        ; $750d: $10
    ld b, b                                       ; $750e: $40
    rst $38                                       ; $750f: $ff
    ld l, [hl]                                    ; $7510: $6e
    pop af                                        ; $7511: $f1
    jr nc, @+$01                                  ; $7512: $30 $ff

    ld a, l                                       ; $7514: $7d
    nop                                           ; $7515: $00
    sbc [hl]                                      ; $7516: $9e
    ld a, a                                       ; $7517: $7f
    or b                                          ; $7518: $b0
    rra                                           ; $7519: $1f
    ldh a, [$7f]                                  ; $751a: $f0 $7f
    rra                                           ; $751c: $1f
    ld a, [hl]                                    ; $751d: $7e
    nop                                           ; $751e: $00
    ld a, [c]                                     ; $751f: $f2
    rst $38                                       ; $7520: $ff
    add d                                         ; $7521: $82
    ld a, a                                       ; $7522: $7f
    rst $00                                       ; $7523: $c7
    jr c, @+$01                                   ; $7524: $38 $ff

    jr nz, jr_09f_7528                            ; $7526: $20 $00

jr_09f_7528:
    rst $38                                       ; $7528: $ff
    call z, $fc87                                 ; $7529: $cc $87 $fc
    rst $38                                       ; $752c: $ff
    adc [hl]                                      ; $752d: $8e
    rlca                                          ; $752e: $07
    ld b, $00                                     ; $752f: $06 $00
    inc bc                                        ; $7531: $03
    ld b, $03                                     ; $7532: $06 $03
    adc [hl]                                      ; $7534: $8e
    rlca                                          ; $7535: $07
    ld hl, sp-$01                                 ; $7536: $f8 $ff
    db $10                                        ; $7538: $10
    add b                                         ; $7539: $80
    and d                                         ; $753a: $a2
    ld b, $77                                     ; $753b: $06 $77

jr_09f_753d:
    ld hl, sp-$04                                 ; $753d: $f8 $fc
    ldh a, [$e7]                                  ; $753f: $f0 $e7
    ld hl, sp+$37                                 ; $7541: $f8 $37
    adc b                                         ; $7543: $88
    inc c                                         ; $7544: $0c
    nop                                           ; $7545: $00
    ld b, $f9                                     ; $7546: $06 $f9
    nop                                           ; $7548: $00
    ld [hl+], a                                   ; $7549: $22
    nop                                           ; $754a: $00

jr_09f_754b:
    jr z, jr_09f_753d                             ; $754b: $28 $f0

    ld d, $00                                     ; $754d: $16 $00
    ld sp, hl                                     ; $754f: $f9
    ccf                                           ; $7550: $3f

jr_09f_7551:
    rst $38                                       ; $7551: $ff
    ld a, a                                       ; $7552: $7f
    jp nz, $87cf                                  ; $7553: $c2 $cf $87

    ld hl, sp+$00                                 ; $7556: $f8 $00
    sbc a                                         ; $7558: $9f
    ld h, b                                       ; $7559: $60
    rst $38                                       ; $755a: $ff
    ld d, b                                       ; $755b: $50
    ccf                                           ; $755c: $3f
    cp b                                          ; $755d: $b8
    ld a, a                                       ; $755e: $7f
    db $fc                                        ; $755f: $fc
    nop                                           ; $7560: $00
    rst $00                                       ; $7561: $c7
    add a                                         ; $7562: $87
    inc bc                                        ; $7563: $03
    ld bc, $8301                                  ; $7564: $01 $01 $83
    ld bc, $82fe                                  ; $7567: $01 $fe $82
    ld b, d                                       ; $756a: $42
    nop                                           ; $756b: $00
    nop                                           ; $756c: $00
    rst $38                                       ; $756d: $ff
    ld a, b                                       ; $756e: $78
    rst $38                                       ; $756f: $ff
    db $fc                                        ; $7570: $fc
    adc h                                         ; $7571: $8c
    ld b, $fc                                     ; $7572: $06 $fc
    and d                                         ; $7574: $a2
    ld a, [c]                                     ; $7575: $f2
    inc b                                         ; $7576: $04
    ret nz                                        ; $7577: $c0

    ldh [rTMA], a                                 ; $7578: $e0 $06
    ld c, h                                       ; $757a: $4c
    cp a                                          ; $757b: $bf
    ccf                                           ; $757c: $3f

jr_09f_757d:
    cp h                                          ; $757d: $bc
    rlca                                          ; $757e: $07
    inc de                                        ; $757f: $13
    add b                                         ; $7580: $80
    ldh a, [rDIV]                                 ; $7581: $f0 $04
    ld d, $ef                                     ; $7583: $16 $ef
    jr c, jr_09f_754b                             ; $7585: $38 $c4

    jr nc, jr_09f_7551                            ; $7587: $30 $c8

    ret c                                         ; $7589: $d8

    ld l, b                                       ; $758a: $68
    daa                                           ; $758b: $27
    ld h, b                                       ; $758c: $60
    ld e, l                                       ; $758d: $5d
    add d                                         ; $758e: $82
    ld bc, $007e                                  ; $758f: $01 $7e $00
    ld c, l                                       ; $7592: $4d
    ld d, b                                       ; $7593: $50
    rst $28                                       ; $7594: $ef
    ld c, d                                       ; $7595: $4a
    jr nz, jr_09f_757d                            ; $7596: $20 $e5

    nop                                           ; $7598: $00
    inc b                                         ; $7599: $04
    nop                                           ; $759a: $00
    ld b, c                                       ; $759b: $41
    xor $ca                                       ; $759c: $ee $ca
    push hl                                       ; $759e: $e5
    ret                                           ; $759f: $c9


    nop                                           ; $75a0: $00
    and $ca                                       ; $75a1: $e6 $ca
    push hl                                       ; $75a3: $e5
    pop bc                                        ; $75a4: $c1
    and $80                                       ; $75a5: $e6 $80
    rst $20                                       ; $75a7: $e7
    sub b                                         ; $75a8: $90
    add b                                         ; $75a9: $80
    ld [bc], a                                    ; $75aa: $02
    nop                                           ; $75ab: $00
    ld [hl+], a                                   ; $75ac: $22
    rst $00                                       ; $75ad: $c7
    xor b                                         ; $75ae: $a8
    rst $00                                       ; $75af: $c7
    ld a, [hl+]                                   ; $75b0: $2a
    rst $00                                       ; $75b1: $c7
    sub d                                         ; $75b2: $92
    ld [hl], c                                    ; $75b3: $71
    rst $20                                       ; $75b4: $e7
    ret nz                                        ; $75b5: $c0

    inc e                                         ; $75b6: $1c
    ld a, e                                       ; $75b7: $7b
    inc b                                         ; $75b8: $04
    ld [bc], a                                    ; $75b9: $02
    nop                                           ; $75ba: $00
    or a                                          ; $75bb: $b7
    rst $38                                       ; $75bc: $ff
    ld d, e                                       ; $75bd: $53
    cp b                                          ; $75be: $b8
    ld bc, $4700                                  ; $75bf: $01 $00 $47
    rst $38                                       ; $75c2: $ff
    rla                                           ; $75c3: $17
    rst $28                                       ; $75c4: $ef
    ld d, $ef                                     ; $75c5: $16 $ef
    and a                                         ; $75c7: $a7
    ld c, a                                       ; $75c8: $4f
    inc bc                                        ; $75c9: $03
    ld a, $4f                                     ; $75ca: $3e $4f
    call $ae1f                                    ; $75cc: $cd $1f $ae
    rra                                           ; $75cf: $1f
    jr nz, jr_09f_75fa                            ; $75d0: $20 $28

    call Call_000_000e                            ; $75d2: $cd $0e $00
    adc a                                         ; $75d5: $8f
    rst $38                                       ; $75d6: $ff
    rst $08                                       ; $75d7: $cf
    rst $38                                       ; $75d8: $ff
    ld l, c                                       ; $75d9: $69
    sbc a                                         ; $75da: $9f
    ld d, d                                       ; $75db: $52
    cp l                                          ; $75dc: $bd
    nop                                           ; $75dd: $00
    push bc                                       ; $75de: $c5
    dec sp                                        ; $75df: $3b
    ld h, a                                       ; $75e0: $67
    sbc e                                         ; $75e1: $9b
    or c                                          ; $75e2: $b1
    rlca                                          ; $75e3: $07
    db $eb                                        ; $75e4: $eb
    rlca                                          ; $75e5: $07
    ld bc, $0f57                                  ; $75e6: $01 $57 $0f
    rst $30                                       ; $75e9: $f7
    rrca                                          ; $75ea: $0f
    rst $18                                       ; $75eb: $df
    rst $38                                       ; $75ec: $ff
    rst $18                                       ; $75ed: $df
    call nc, Call_000_0006                        ; $75ee: $d4 $06 $00
    rst $18                                       ; $75f1: $df
    cp a                                          ; $75f2: $bf
    rst $18                                       ; $75f3: $df
    cp a                                          ; $75f4: $bf
    rrca                                          ; $75f5: $0f
    rst $38                                       ; $75f6: $ff
    cpl                                           ; $75f7: $2f
    rst $18                                       ; $75f8: $df
    nop                                           ; $75f9: $00

jr_09f_75fa:
    rst $28                                       ; $75fa: $ef
    rra                                           ; $75fb: $1f
    xor a                                         ; $75fc: $af
    rra                                           ; $75fd: $1f
    ld e, [hl]                                    ; $75fe: $5e
    cp a                                          ; $75ff: $bf
    dec c                                         ; $7600: $0d
    cp [hl]                                       ; $7601: $be
    nop                                           ; $7602: $00
    ld a, $9d                                     ; $7603: $3e $9d
    ld l, c                                       ; $7605: $69
    sbc [hl]                                      ; $7606: $9e
    ld a, [de]                                    ; $7607: $1a
    cp h                                          ; $7608: $bc
    rst $10                                       ; $7609: $d7
    jr c, jr_09f_760c                             ; $760a: $38 $00

jr_09f_760c:
    ld b, a                                       ; $760c: $47
    cp b                                          ; $760d: $b8
    rst $08                                       ; $760e: $cf
    rra                                           ; $760f: $1f
    sbc a                                         ; $7610: $9f
    ccf                                           ; $7611: $3f
    ld e, a                                       ; $7612: $5f
    ccf                                           ; $7613: $3f
    inc b                                         ; $7614: $04
    sbc a                                         ; $7615: $9f
    ccf                                           ; $7616: $3f
    ld a, a                                       ; $7617: $7f
    ccf                                           ; $7618: $3f
    rst $18                                       ; $7619: $df
    ld a, [de]                                    ; $761a: $1a
    ld [bc], a                                    ; $761b: $02
    ld a, a                                       ; $761c: $7f
    rst $38                                       ; $761d: $ff
    nop                                           ; $761e: $00
    ld d, d                                       ; $761f: $52
    cp l                                          ; $7620: $bd
    add e                                         ; $7621: $83
    ld a, l                                       ; $7622: $7d
    ld d, l                                       ; $7623: $55
    cp e                                          ; $7624: $bb
    ld a, [hl+]                                   ; $7625: $2a
    rst $30                                       ; $7626: $f7
    nop                                           ; $7627: $00
    ld b, l                                       ; $7628: $45
    rst $38                                       ; $7629: $ff
    ld h, e                                       ; $762a: $63
    rst $38                                       ; $762b: $ff
    ld a, [c]                                     ; $762c: $f2
    rst $38                                       ; $762d: $ff
    push hl                                       ; $762e: $e5
    cp $00                                        ; $762f: $fe $00
    rst $30                                       ; $7631: $f7
    rst $38                                       ; $7632: $ff
    set 7, a                                      ; $7633: $cb $ff
    and a                                         ; $7635: $a7
    rst $18                                       ; $7636: $df
    xor a                                         ; $7637: $af
    rst $18                                       ; $7638: $df
    nop                                           ; $7639: $00
    cpl                                           ; $763a: $2f
    rst $18                                       ; $763b: $df
    ld a, a                                       ; $763c: $7f
    sbc a                                         ; $763d: $9f
    rst $28                                       ; $763e: $ef
    rra                                           ; $763f: $1f
    ld [hl], a                                    ; $7640: $77
    adc a                                         ; $7641: $8f
    nop                                           ; $7642: $00
    db $e4                                        ; $7643: $e4
    rst $38                                       ; $7644: $ff
    ld b, c                                       ; $7645: $41
    cp $ca                                        ; $7646: $fe $ca
    db $fd                                        ; $7648: $fd
    sub c                                         ; $7649: $91
    cp $00                                        ; $764a: $fe $00
    ld h, d                                       ; $764c: $62
    db $fc                                        ; $764d: $fc
    db $e4                                        ; $764e: $e4
    ld hl, sp-$37                                 ; $764f: $f8 $c9
    ldh a, [$97]                                  ; $7651: $f0 $97
    ldh [rP1], a                                  ; $7653: $e0 $00
    rst $30                                       ; $7655: $f7
    rrca                                          ; $7656: $0f
    ld c, a                                       ; $7657: $4f
    rra                                           ; $7658: $1f
    rst $28                                       ; $7659: $ef
    rra                                           ; $765a: $1f
    adc a                                         ; $765b: $8f
    ld a, a                                       ; $765c: $7f
    nop                                           ; $765d: $00
    rst $18                                       ; $765e: $df
    ccf                                           ; $765f: $3f
    rst $18                                       ; $7660: $df
    ccf                                           ; $7661: $3f
    rra                                           ; $7662: $1f
    ld a, a                                       ; $7663: $7f
    adc a                                         ; $7664: $8f
    ld a, a                                       ; $7665: $7f
    nop                                           ; $7666: $00
    di                                            ; $7667: $f3
    db $fc                                        ; $7668: $fc
    ld sp, hl                                     ; $7669: $f9
    cp $f8                                        ; $766a: $fe $f8
    rst $38                                       ; $766c: $ff
    db $fc                                        ; $766d: $fc
    rst $38                                       ; $766e: $ff
    nop                                           ; $766f: $00
    or $ff                                        ; $7670: $f6 $ff
    ld [c], a                                     ; $7672: $e2
    rst $38                                       ; $7673: $ff
    add hl, hl                                    ; $7674: $29
    rst $30                                       ; $7675: $f7
    ld h, h                                       ; $7676: $64
    ei                                            ; $7677: $fb
    nop                                           ; $7678: $00
    ld c, d                                       ; $7679: $4a
    pop af                                        ; $767a: $f1
    ld b, l                                       ; $767b: $45
    ld hl, sp-$75                                 ; $767c: $f8 $8b
    ld [hl], h                                    ; $767e: $74
    ld h, l                                       ; $767f: $65
    ret c                                         ; $7680: $d8

    nop                                           ; $7681: $00
    sub b                                         ; $7682: $90
    ld l, h                                       ; $7683: $6c
    and l                                         ; $7684: $a5
    ld e, b                                       ; $7685: $58
    sub d                                         ; $7686: $92
    ld c, h                                       ; $7687: $4c
    ld hl, $00ce                                  ; $7688: $21 $ce $00
    ld a, [hl+]                                   ; $768b: $2a
    push bc                                       ; $768c: $c5
    ld de, $50ee                                  ; $768d: $11 $ee $50
    and a                                         ; $7690: $a7
    dec c                                         ; $7691: $0d
    ld a, [c]                                     ; $7692: $f2
    nop                                           ; $7693: $00
    ld b, b                                       ; $7694: $40
    cp a                                          ; $7695: $bf
    xor c                                         ; $7696: $a9
    sub $5a                                       ; $7697: $d6 $5a
    rst $20                                       ; $7699: $e7
    and c                                         ; $769a: $a1
    rst $38                                       ; $769b: $ff
    nop                                           ; $769c: $00
    ld d, c                                       ; $769d: $51
    cp [hl]                                       ; $769e: $be
    ld e, $b9                                     ; $769f: $1e $b9
    add hl, hl                                    ; $76a1: $29
    sbc h                                         ; $76a2: $9c
    ld b, h                                       ; $76a3: $44
    sbc [hl]                                      ; $76a4: $9e
    nop                                           ; $76a5: $00
    ld [hl], l                                    ; $76a6: $75
    adc d                                         ; $76a7: $8a
    inc h                                         ; $76a8: $24
    reti                                          ; $76a9: $d9


    ld a, d                                       ; $76aa: $7a
    adc h                                         ; $76ab: $8c
    sub l                                         ; $76ac: $95
    adc $00                                       ; $76ad: $ce $00
    ld [$a5c7], sp                                ; $76af: $08 $c7 $a5
    jp nz, $e354                                  ; $76b2: $c2 $54 $e3

    add [hl]                                      ; $76b5: $86
    ld sp, hl                                     ; $76b6: $f9
    nop                                           ; $76b7: $00
    ld d, c                                       ; $76b8: $51
    xor $c8                                       ; $76b9: $ee $c8
    rst $30                                       ; $76bb: $f7
    ld c, d                                       ; $76bc: $4a
    pop af                                        ; $76bd: $f1
    push hl                                       ; $76be: $e5
    ld hl, sp+$00                                 ; $76bf: $f8 $00
    ld b, l                                       ; $76c1: $45
    ccf                                           ; $76c2: $3f
    inc hl                                        ; $76c3: $23
    rra                                           ; $76c4: $1f
    pop de                                        ; $76c5: $d1
    rrca                                          ; $76c6: $0f
    ld l, e                                       ; $76c7: $6b
    add a                                         ; $76c8: $87
    nop                                           ; $76c9: $00
    dec hl                                        ; $76ca: $2b
    rst $10                                       ; $76cb: $d7
    push de                                       ; $76cc: $d5

jr_09f_76cd:
    rst $28                                       ; $76cd: $ef
    ld h, e                                       ; $76ce: $63
    rst $38                                       ; $76cf: $ff
    dec de                                        ; $76d0: $1b
    rst $38                                       ; $76d1: $ff
    add h                                         ; $76d2: $84
    ld h, b                                       ; $76d3: $60
    ld c, a                                       ; $76d4: $4f
    ldh [$1f], a                                  ; $76d5: $e0 $1f
    call c, $603f                                 ; $76d7: $dc $3f $60
    ccf                                           ; $76da: $3f
    dec b                                         ; $76db: $05
    ld a, [$0060]                                 ; $76dc: $fa $60 $00
    and d                                         ; $76df: $a2
    ld [bc], a                                    ; $76e0: $02
    ld h, b                                       ; $76e1: $60
    cpl                                           ; $76e2: $2f
    ld e, e                                       ; $76e3: $5b
    db $fc                                        ; $76e4: $fc
    ld d, c                                       ; $76e5: $51
    xor [hl]                                      ; $76e6: $ae
    xor e                                         ; $76e7: $ab

jr_09f_76e8:
    nop                                           ; $76e8: $00
    ld d, l                                       ; $76e9: $55
    dec b                                         ; $76ea: $05
    ld a, [$f8e6]                                 ; $76eb: $fa $e6 $f8
    jp nc, $e9fd                                  ; $76ee: $d2 $fd $e9

    ld [hl+], a                                   ; $76f1: $22
    cp $f4                                        ; $76f2: $fe $f4
    adc [hl]                                      ; $76f4: $8e
    nop                                           ; $76f5: $00
    rst $30                                       ; $76f6: $f7
    rst $38                                       ; $76f7: $ff
    ei                                            ; $76f8: $fb
    ld a, [c]                                     ; $76f9: $f2
    rlca                                          ; $76fa: $07
    rst $08                                       ; $76fb: $cf
    ld b, $3f                                     ; $76fc: $06 $3f
    or a                                          ; $76fe: $b7
    rrca                                          ; $76ff: $0f
    ld e, a                                       ; $7700: $5f
    and a                                         ; $7701: $a7
    db $ed                                        ; $7702: $ed
    nop                                           ; $7703: $00
    add hl, sp                                    ; $7704: $39
    ld sp, $00f4                                  ; $7705: $31 $f4 $00
    rst $38                                       ; $7708: $ff
    rst $00                                       ; $7709: $c7
    ld hl, sp-$44                                 ; $770a: $f8 $bc
    db $e3                                        ; $770c: $e3
    adc l                                         ; $770d: $8d
    ld a, [c]                                     ; $770e: $f2
    cp e                                          ; $770f: $bb
    nop                                           ; $7710: $00
    call nz, $d9e6                                ; $7711: $c4 $e6 $d9
    adc h                                         ; $7714: $8c
    di                                            ; $7715: $f3
    sub a                                         ; $7716: $97
    rst $38                                       ; $7717: $ff
    ld [bc], a                                    ; $7718: $02
    nop                                           ; $7719: $00
    rst $38                                       ; $771a: $ff
    jr nc, @-$2f                                  ; $771b: $30 $cf

    ld [de], a                                    ; $771d: $12
    db $ed                                        ; $771e: $ed
    jr c, jr_09f_76e8                             ; $771f: $38 $c7

    inc de                                        ; $7721: $13
    ld [$5fef], sp                                ; $7722: $08 $ef $5f
    cp a                                          ; $7725: $bf
    xor a                                         ; $7726: $af
    daa                                           ; $7727: $27
    nop                                           ; $7728: $00
    ld d, $ff                                     ; $7729: $16 $ff
    ld a, b                                       ; $772b: $78
    ld bc, $2df7                                  ; $772c: $01 $f7 $2d
    di                                            ; $772f: $f3
    add hl, bc                                    ; $7730: $09
    rst $30                                       ; $7731: $f7
    sbc e                                         ; $7732: $9b
    rst $20                                       ; $7733: $e7
    adc l                                         ; $7734: $8d
    add hl, bc                                    ; $7735: $09
    nop                                           ; $7736: $00
    cp a                                          ; $7737: $bf
    rst $38                                       ; $7738: $ff
    ld e, a                                       ; $7739: $5f

jr_09f_773a:
    cp a                                          ; $773a: $bf
    db $dd                                        ; $773b: $dd
    ccf                                           ; $773c: $3f
    ld l, [hl]                                    ; $773d: $6e
    sbc a                                         ; $773e: $9f
    jr jr_09f_76cd                                ; $773f: $18 $8c

    rst $38                                       ; $7741: $ff
    call nz, Call_000_00e6                        ; $7742: $c4 $e6 $00
    rra                                           ; $7745: $1f
    dec c                                         ; $7746: $0d
    rst $28                                       ; $7747: $ef
    rst $38                                       ; $7748: $ff
    rst $20                                       ; $7749: $e7
    ld [bc], a                                    ; $774a: $02
    rst $38                                       ; $774b: $ff
    jp nc, $58ef                                  ; $774c: $d2 $ef $58

    rst $20                                       ; $774f: $e7
    ld b, d                                       ; $7750: $42
    ld b, h                                       ; $7751: $44
    inc b                                         ; $7752: $04
    rst $38                                       ; $7753: $ff
    and b                                         ; $7754: $a0
    sbc $02                                       ; $7755: $de $02
    ld a, [c]                                     ; $7757: $f2
    ld a, b                                       ; $7758: $78
    dec b                                         ; $7759: $05
    or [hl]                                       ; $775a: $b6
    ld a, c                                       ; $775b: $79
    or h                                          ; $775c: $b4
    ld a, e                                       ; $775d: $7b
    sub c                                         ; $775e: $91
    jr nz, @+$81                                  ; $775f: $20 $7f

    rra                                           ; $7761: $1f
    ld a, h                                       ; $7762: $7c
    ld bc, $ffff                                  ; $7763: $01 $ff $ff
    ld h, a                                       ; $7766: $67
    rst $38                                       ; $7767: $ff
    ld e, d                                       ; $7768: $5a
    ld [bc], a                                    ; $7769: $02
    rst $20                                       ; $776a: $e7
    ret c                                         ; $776b: $d8

    rst $20                                       ; $776c: $e7
    add $f9                                       ; $776d: $c6 $f9
    cp $cb                                        ; $776f: $fe $cb
    ld hl, $008c                                  ; $7771: $21 $8c $00
    rst $38                                       ; $7774: $ff
    inc sp                                        ; $7775: $33
    call z, $dc23                                 ; $7776: $cc $23 $dc
    ld [hl], l                                    ; $7779: $75
    rst $38                                       ; $777a: $ff
    xor e                                         ; $777b: $ab
    pop de                                        ; $777c: $d1
    or b                                          ; $777d: $b0
    dec de                                        ; $777e: $1b
    inc l                                         ; $777f: $2c
    ld bc, $3433                                  ; $7780: $01 $33 $34
    inc bc                                        ; $7783: $03
    ld b, c                                       ; $7784: $41
    cp $f0                                        ; $7785: $fe $f0
    xor e                                         ; $7787: $ab
    ld d, $40                                     ; $7788: $16 $40
    jp hl                                         ; $778a: $e9


    and $04                                       ; $778b: $e6 $04
    inc c                                         ; $778d: $0c
    di                                            ; $778e: $f3
    ld c, b                                       ; $778f: $48
    or a                                          ; $7790: $b7
    inc c                                         ; $7791: $0c
    di                                            ; $7792: $f3
    ld [hl+], a                                   ; $7793: $22
    ret z                                         ; $7794: $c8

    rst $30                                       ; $7795: $f7
    ld [hl-], a                                   ; $7796: $32
    ld [$bf7f], sp                                ; $7797: $08 $7f $bf
    cp a                                          ; $779a: $bf
    cp [hl]                                       ; $779b: $be
    ld b, $9f                                     ; $779c: $06 $9f
    nop                                           ; $779e: $00
    rst $38                                       ; $779f: $ff
    dec l                                         ; $77a0: $2d
    di                                            ; $77a1: $f3
    ld a, $e1                                     ; $77a2: $3e $e1
    or c                                          ; $77a4: $b1
    ld h, b                                       ; $77a5: $60
    ld e, a                                       ; $77a6: $5f
    nop                                           ; $77a7: $00
    ccf                                           ; $77a8: $3f
    ld l, d                                       ; $77a9: $6a
    push af                                       ; $77aa: $f5
    cp a                                          ; $77ab: $bf
    ret nz                                        ; $77ac: $c0

    xor e                                         ; $77ad: $ab
    nop                                           ; $77ae: $00
    ld b, c                                       ; $77af: $41
    nop                                           ; $77b0: $00
    nop                                           ; $77b1: $00
    add b                                         ; $77b2: $80
    nop                                           ; $77b3: $00
    ret nz                                        ; $77b4: $c0

    add b                                         ; $77b5: $80
    ldh a, [$e0]                                  ; $77b6: $f0 $e0
    jr jr_09f_773a                                ; $77b8: $18 $80

    ldh [rSC], a                                  ; $77ba: $e0 $02
    ld d, b                                       ; $77bc: $50
    cp a                                          ; $77bd: $bf
    jp hl                                         ; $77be: $e9


    rra                                           ; $77bf: $1f
    ld e, l                                       ; $77c0: $5d
    ld b, $2d                                     ; $77c1: $06 $2d
    nop                                           ; $77c3: $00
    ld b, $1b                                     ; $77c4: $06 $1b
    inc c                                         ; $77c6: $0c
    ld a, c                                       ; $77c7: $79
    ld a, $c5                                     ; $77c8: $3e $c5
    cp $22                                        ; $77ca: $fe $22
    nop                                           ; $77cc: $00
    rra                                           ; $77cd: $1f
    ld h, a                                       ; $77ce: $67
    inc e                                         ; $77cf: $1c
    ld h, l                                       ; $77d0: $65
    cp $2b                                        ; $77d1: $fe $2b
    rst $10                                       ; $77d3: $d7
    ld d, h                                       ; $77d4: $54
    jr nz, @-$53                                  ; $77d5: $20 $ab

    nop                                           ; $77d7: $00
    db $f4                                        ; $77d8: $f4
    ld b, $bf                                     ; $77d9: $06 $bf
    ld a, a                                       ; $77db: $7f
    rst $30                                       ; $77dc: $f7
    rrca                                          ; $77dd: $0f
    ld a, [$0702]                                 ; $77de: $fa $02 $07
    rst $30                                       ; $77e1: $f7
    ld c, $69                                     ; $77e2: $0e $69
    sbc a                                         ; $77e4: $9f
    ldh a, [$ce]                                  ; $77e5: $f0 $ce
    ld [bc], a                                    ; $77e7: $02
    stop                                          ; $77e8: $10 $00
    ldh [$fc], a                                  ; $77ea: $e0 $fc
    di                                            ; $77ec: $f3
    ld d, h                                       ; $77ed: $54
    xor a                                         ; $77ee: $af
    ld a, [c]                                     ; $77ef: $f2
    rrca                                          ; $77f0: $0f
    ld a, [bc]                                    ; $77f1: $0a
    nop                                           ; $77f2: $00
    rlca                                          ; $77f3: $07
    ld e, h                                       ; $77f4: $5c
    cp a                                          ; $77f5: $bf
    add sp, -$09                                  ; $77f6: $e8 $f7
    inc de                                        ; $77f8: $13
    rst $28                                       ; $77f9: $ef
    add b                                         ; $77fa: $80

jr_09f_77fb:
    ld l, $7f                                     ; $77fb: $2e $7f
    nop                                           ; $77fd: $00
    ld c, [hl]                                    ; $77fe: $4e
    inc bc                                        ; $77ff: $03
    add sp, $02                                   ; $7800: $e8 $02
    ld bc, $0f26                                  ; $7802: $01 $26 $0f
    and b                                         ; $7805: $a0
    jr jr_09f_77fb                                ; $7806: $18 $f3

    nop                                           ; $7808: $00
    rrca                                          ; $7809: $0f
    sbc b                                         ; $780a: $98
    ld h, a                                       ; $780b: $67
    add hl, sp                                    ; $780c: $39
    add $42                                       ; $780d: $c6 $42
    cp a                                          ; $780f: $bf
    daa                                           ; $7810: $27

jr_09f_7811:
    xor b                                         ; $7811: $a8
    sub $00                                       ; $7812: $d6 $00
    rst $28                                       ; $7814: $ef
    dec a                                         ; $7815: $3d
    rlca                                          ; $7816: $07
    jp z, Jump_000_070c                           ; $7817: $ca $0c $07

    ld c, d                                       ; $781a: $4a
    rst $20                                       ; $781b: $e7
    ld c, [hl]                                    ; $781c: $4e
    nop                                           ; $781d: $00
    db $e3                                        ; $781e: $e3
    nop                                           ; $781f: $00
    rst $20                                       ; $7820: $e7
    ld b, h                                       ; $7821: $44
    db $e3                                        ; $7822: $e3
    db $10                                        ; $7823: $10
    rst $20                                       ; $7824: $e7
    ld c, d                                       ; $7825: $4a
    nop                                           ; $7826: $00
    rst $20                                       ; $7827: $e7
    jr jr_09f_7811                                ; $7828: $18 $e7

    ld [bc], a                                    ; $782a: $02
    rst $28                                       ; $782b: $ef
    ld [hl], b                                    ; $782c: $70
    rst $08                                       ; $782d: $cf
    ld [hl-], a                                   ; $782e: $32
    ld [bc], a                                    ; $782f: $02
    rst $08                                       ; $7830: $cf
    ld h, d                                       ; $7831: $62
    rst $18                                       ; $7832: $df
    ld d, d                                       ; $7833: $52
    rst $08                                       ; $7834: $cf
    ld h, [hl]                                    ; $7835: $66
    inc b                                         ; $7836: $04
    nop                                           ; $7837: $00
    ld b, [hl]                                    ; $7838: $46
    ret nz                                        ; $7839: $c0

    ld [$8000], sp                                ; $783a: $08 $00 $80

Jump_09f_783d:
    dec b                                         ; $783d: $05
    ld c, a                                       ; $783e: $4f
    ld h, h                                       ; $783f: $64
    rst $18                                       ; $7840: $df
    sub [hl]                                      ; $7841: $96
    ld l, a                                       ; $7842: $6f
    inc b                                         ; $7843: $04
    add b                                         ; $7844: $80
    add b                                         ; $7845: $80
    dec b                                         ; $7846: $05
    ret                                           ; $7847: $c9


    ldh a, [$d2]                                  ; $7848: $f0 $d2
    pop hl                                        ; $784a: $e1
    jp z, $81f5                                   ; $784b: $ca $f5 $81

    nop                                           ; $784e: $00
    cp $c4                                        ; $784f: $fe $c4
    rst $38                                       ; $7851: $ff
    pop de                                        ; $7852: $d1
    cp $eb                                        ; $7853: $fe $eb
    db $fc                                        ; $7855: $fc
    push de                                       ; $7856: $d5
    ld b, b                                       ; $7857: $40
    ld a, [$3a40]                                 ; $7858: $fa $40 $3a
    ld b, a                                       ; $785b: $47
    rst $38                                       ; $785c: $ff
    sub h                                         ; $785d: $94
    ld l, a                                       ; $785e: $6f
    ld h, $df                                     ; $785f: $26 $df
    nop                                           ; $7861: $00
    jp nc, Jump_000_220f                          ; $7862: $d2 $0f $22

    rra                                           ; $7865: $1f
    pop de                                        ; $7866: $d1
    ld l, $a6                                     ; $7867: $2e $a6
    dec de                                        ; $7869: $1b
    nop                                           ; $786a: $00
    adc c                                         ; $786b: $89
    ld [hl], $a5                                  ; $786c: $36 $a5
    ld a, [de]                                    ; $786e: $1a
    ld c, c                                       ; $786f: $49
    ld [hl-], a                                   ; $7870: $32
    add h                                         ; $7871: $84
    ld [hl], e                                    ; $7872: $73
    nop                                           ; $7873: $00
    call nc, $8823                                ; $7874: $d4 $23 $88
    ld [hl], a                                    ; $7877: $77
    ld c, d                                       ; $7878: $4a
    push hl                                       ; $7879: $e5
    cp b                                          ; $787a: $b8
    rst $08                                       ; $787b: $cf
    nop                                           ; $787c: $00
    ld [de], a                                    ; $787d: $12
    db $fd                                        ; $787e: $fd
    ld [hl], l                                    ; $787f: $75
    db $eb                                        ; $7880: $eb
    jp c, $25e7                                   ; $7881: $da $e7 $25

    rst $38                                       ; $7884: $ff
    nop                                           ; $7885: $00
    ld c, d                                       ; $7886: $4a
    db $fd                                        ; $7887: $fd
    ld a, b                                       ; $7888: $78
    sbc l                                         ; $7889: $9d
    sub h                                         ; $788a: $94
    add hl, sp                                    ; $788b: $39
    ld [hl+], a                                   ; $788c: $22
    ld a, c                                       ; $788d: $79
    nop                                           ; $788e: $00
    xor [hl]                                      ; $788f: $ae
    ld d, c                                       ; $7890: $51
    inc h                                         ; $7891: $24
    sbc e                                         ; $7892: $9b
    ld e, [hl]                                    ; $7893: $5e

jr_09f_7894:
    ld sp, $73a9                                  ; $7894: $31 $a9 $73
    jr nz, @-$22                                  ; $7897: $20 $dc

    inc hl                                        ; $7899: $23
    ld b, b                                       ; $789a: $40
    dec hl                                        ; $789b: $2b
    cp l                                          ; $789c: $bd
    ret nc                                        ; $789d: $d0

    ld a, b                                       ; $789e: $78
    add b                                         ; $789f: $80
    inc [hl]                                      ; $78a0: $34
    jr @-$3e                                      ; $78a1: $18 $c0

    add sp, $10                                   ; $78a3: $e8 $10
    db $dd                                        ; $78a5: $dd
    inc b                                         ; $78a6: $04
    ld b, b                                       ; $78a7: $40
    inc bc                                        ; $78a8: $03
    ld a, a                                       ; $78a9: $7f
    add b                                         ; $78aa: $80
    ld d, l                                       ; $78ab: $55
    ld b, b                                       ; $78ac: $40
    nop                                           ; $78ad: $00
    ld bc, $3408                                  ; $78ae: $01 $08 $34
    jr jr_09f_7894                                ; $78b1: $18 $e1

    ld a, $c0                                     ; $78b3: $3e $c0
    rst $38                                       ; $78b5: $ff
    ld [$ff01], sp                                ; $78b6: $08 $01 $ff
    cp $01                                        ; $78b9: $fe $01
    db $10                                        ; $78bb: $10
    jr jr_09f_78bf                                ; $78bc: $18 $01

    rlca                                          ; $78be: $07

jr_09f_78bf:
    rla                                           ; $78bf: $17
    nop                                           ; $78c0: $00
    ld [$f06f], sp                                ; $78c1: $08 $6f $f0
    inc b                                         ; $78c4: $04
    ld hl, sp+$03                                 ; $78c5: $f8 $03
    rst $38                                       ; $78c7: $ff
    and a                                         ; $78c8: $a7
    nop                                           ; $78c9: $00
    ld e, a                                       ; $78ca: $5f
    ld d, a                                       ; $78cb: $57
    rrca                                          ; $78cc: $0f
    dec hl                                        ; $78cd: $2b
    rlca                                          ; $78ce: $07
    rrca                                          ; $78cf: $0f
    nop                                           ; $78d0: $00
    nop                                           ; $78d1: $00
    dec d                                         ; $78d2: $15
    nop                                           ; $78d3: $00
    ld bc, $002d                                  ; $78d4: $01 $2d $00
    dec b                                         ; $78d7: $05
    dec l                                         ; $78d8: $2d
    nop                                           ; $78d9: $00
    dec b                                         ; $78da: $05
    inc sp                                        ; $78db: $33
    nop                                           ; $78dc: $00
    ld b, $02                                     ; $78dd: $06 $02
    nop                                           ; $78df: $00
    daa                                           ; $78e0: $27
    nop                                           ; $78e1: $00
    dec e                                         ; $78e2: $1d
    ld bc, $030b                                  ; $78e3: $01 $0b $03
    ld b, b                                       ; $78e6: $40
    nop                                           ; $78e7: $00
    ld c, h                                       ; $78e8: $4c
    ld bc, $020b                                  ; $78e9: $01 $0b $02
    ld b, c                                       ; $78ec: $41
    nop                                           ; $78ed: $00
    daa                                           ; $78ee: $27
    ld bc, $010b                                  ; $78ef: $01 $0b $01
    ld h, l                                       ; $78f2: $65
    nop                                           ; $78f3: $00
    add sp, $00                                   ; $78f4: $e8 $00
    dec bc                                        ; $78f6: $0b
    ld bc, $0079                                  ; $78f7: $01 $79 $00
    add sp, $00                                   ; $78fa: $e8 $00
    rlca                                          ; $78fc: $07
    nop                                           ; $78fd: $00
    db $d3                                        ; $78fe: $d3
    nop                                           ; $78ff: $00
    ld a, $00                                     ; $7900: $3e $00
    ld a, [bc]                                    ; $7902: $0a
    add hl, bc                                    ; $7903: $09
    ld [de], a                                    ; $7904: $12
    ld bc, $0096                                  ; $7905: $01 $96 $00
    rst $38                                       ; $7908: $ff
    rst $38                                       ; $7909: $ff
    rst $38                                       ; $790a: $ff
    rst $38                                       ; $790b: $ff
    rst $38                                       ; $790c: $ff
    rst $38                                       ; $790d: $ff
    daa                                           ; $790e: $27
    nop                                           ; $790f: $00
    nop                                           ; $7910: $00
    dec l                                         ; $7911: $2d
    nop                                           ; $7912: $00
    ld bc, $0045                                  ; $7913: $01 $45 $00
    dec b                                         ; $7916: $05
    ld d, a                                       ; $7917: $57
    nop                                           ; $7918: $00
    ld [$005d], sp                                ; $7919: $08 $5d $00
    add hl, bc                                    ; $791c: $09
    ld l, c                                       ; $791d: $69
    nop                                           ; $791e: $00
    dec bc                                        ; $791f: $0b
    ld [hl], l                                    ; $7920: $75
    nop                                           ; $7921: $00
    dec c                                         ; $7922: $0d
    add c                                         ; $7923: $81
    nop                                           ; $7924: $00
    rrca                                          ; $7925: $0f
    adc l                                         ; $7926: $8d
    nop                                           ; $7927: $00
    ld de, $009f                                  ; $7928: $11 $9f $00
    inc d                                         ; $792b: $14
    and l                                         ; $792c: $a5
    nop                                           ; $792d: $00
    dec d                                         ; $792e: $15
    and l                                         ; $792f: $a5
    nop                                           ; $7930: $00
    dec d                                         ; $7931: $15
    xor e                                         ; $7932: $ab
    nop                                           ; $7933: $00
    ld d, $07                                     ; $7934: $16 $07
    nop                                           ; $7936: $00
    inc de                                        ; $7937: $13
    nop                                           ; $7938: $00
    sub b                                         ; $7939: $90
    ld bc, $0102                                  ; $793a: $01 $02 $01
    ld c, b                                       ; $793d: $48
    nop                                           ; $793e: $00
    jr c, jr_09f_7941                             ; $793f: $38 $00

jr_09f_7941:
    ld [hl], b                                    ; $7941: $70
    nop                                           ; $7942: $00
    ld d, b                                       ; $7943: $50
    nop                                           ; $7944: $00
    pop af                                        ; $7945: $f1
    nop                                           ; $7946: $00
    ld [hl], b                                    ; $7947: $70
    ld bc, $0050                                  ; $7948: $01 $50 $00
    jr nz, jr_09f_794f                            ; $794b: $20 $02

    inc c                                         ; $794d: $0c
    inc b                                         ; $794e: $04

jr_09f_794f:
    ld d, [hl]                                    ; $794f: $56
    nop                                           ; $7950: $00
    ld c, l                                       ; $7951: $4d
    nop                                           ; $7952: $00
    ld [bc], a                                    ; $7953: $02
    ld [bc], a                                    ; $7954: $02
    and d                                         ; $7955: $a2
    nop                                           ; $7956: $00
    ld [hl], c                                    ; $7957: $71
    ld [bc], a                                    ; $7958: $02
    ld [bc], a                                    ; $7959: $02
    ld b, $a8                                     ; $795a: $06 $a8
    nop                                           ; $795c: $00
    jr c, jr_09f_795f                             ; $795d: $38 $00

jr_09f_795f:
    inc c                                         ; $795f: $0c
    ld bc, $00a9                                  ; $7960: $01 $a9 $00
    ld a, b                                       ; $7963: $78
    ld bc, $010c                                  ; $7964: $01 $0c $01
    push hl                                       ; $7967: $e5
    nop                                           ; $7968: $00
    add h                                         ; $7969: $84
    nop                                           ; $796a: $00
    rlca                                          ; $796b: $07
    ld [bc], a                                    ; $796c: $02
    ld bc, $6401                                  ; $796d: $01 $01 $64
    nop                                           ; $7970: $00
    inc c                                         ; $7971: $0c
    rlca                                          ; $7972: $07
    rla                                           ; $7973: $17
    ld bc, $0039                                  ; $7974: $01 $39 $00
    inc c                                         ; $7977: $0c
    ld [bc], a                                    ; $7978: $02
    ld b, e                                       ; $7979: $43
    ld bc, $009d                                  ; $797a: $01 $9d $00
    inc c                                         ; $797d: $0c
    ld bc, $017f                                  ; $797e: $01 $7f $01
    ld [de], a                                    ; $7981: $12
    ld [bc], a                                    ; $7982: $02
    rlca                                          ; $7983: $07
    inc bc                                        ; $7984: $03
    sub b                                         ; $7985: $90
    ld bc, $0113                                  ; $7986: $01 $13 $01
    rlca                                          ; $7989: $07
    ld bc, $01ad                                  ; $798a: $01 $ad $01
    add hl, sp                                    ; $798d: $39
    nop                                           ; $798e: $00
    ld [bc], a                                    ; $798f: $02
    inc bc                                        ; $7990: $03
    sbc $01                                       ; $7991: $de $01
    ld [hl], l                                    ; $7993: $75
    ld [bc], a                                    ; $7994: $02
    ld [bc], a                                    ; $7995: $02
    nop                                           ; $7996: $00
    and $01                                       ; $7997: $e6 $01
    ld [de], a                                    ; $7999: $12
    nop                                           ; $799a: $00
    ld [hl], b                                    ; $799b: $70
    ld [bc], a                                    ; $799c: $02
    jr z, jr_09f_79a1                             ; $799d: $28 $02

    sub e                                         ; $799f: $93
    nop                                           ; $79a0: $00

jr_09f_79a1:
    inc c                                         ; $79a1: $0c
    nop                                           ; $79a2: $00
    ld sp, $3e02                                  ; $79a3: $31 $02 $3e
    nop                                           ; $79a6: $00
    inc c                                         ; $79a7: $0c
    ld bc, $0239                                  ; $79a8: $01 $39 $02
    ld [c], a                                     ; $79ab: $e2
    ld bc, $0370                                  ; $79ac: $01 $70 $03
    ld h, b                                       ; $79af: $60
    ld [bc], a                                    ; $79b0: $02
    db $fc                                        ; $79b1: $fc
    ld bc, $010c                                  ; $79b2: $01 $0c $01
    ld a, [$3c02]                                 ; $79b5: $fa $02 $3c
    nop                                           ; $79b8: $00
    ld [bc], a                                    ; $79b9: $02
    dec b                                         ; $79ba: $05
    rrca                                          ; $79bb: $0f
    inc bc                                        ; $79bc: $03
    or d                                          ; $79bd: $b2
    nop                                           ; $79be: $00
    ld [bc], a                                    ; $79bf: $02
    inc b                                         ; $79c0: $04
    ld [de], a                                    ; $79c1: $12
    inc bc                                        ; $79c2: $03
    ret nc                                        ; $79c3: $d0

    ld bc, $ffff                                  ; $79c4: $01 $ff $ff
    rst $38                                       ; $79c7: $ff
    rst $38                                       ; $79c8: $ff
    rst $38                                       ; $79c9: $ff
    rst $38                                       ; $79ca: $ff
    inc c                                         ; $79cb: $0c
    nop                                           ; $79cc: $00
    nop                                           ; $79cd: $00
    ld [de], a                                    ; $79ce: $12
    nop                                           ; $79cf: $00
    ld bc, $0024                                  ; $79d0: $01 $24 $00
    inc b                                         ; $79d3: $04
    ld [hl], $00                                  ; $79d4: $36 $00
    rlca                                          ; $79d6: $07
    rlca                                          ; $79d7: $07
    nop                                           ; $79d8: $00
    jr nz, jr_09f_79db                            ; $79d9: $20 $00

jr_09f_79db:
    ld l, c                                       ; $79db: $69
    nop                                           ; $79dc: $00
    inc bc                                        ; $79dd: $03
    ld b, $53                                     ; $79de: $06 $53
    nop                                           ; $79e0: $00
    ld a, [bc]                                    ; $79e1: $0a
    nop                                           ; $79e2: $00
    ld [bc], a                                    ; $79e3: $02
    nop                                           ; $79e4: $00
    ld e, a                                       ; $79e5: $5f
    nop                                           ; $79e6: $00
    rst $30                                       ; $79e7: $f7
    nop                                           ; $79e8: $00
    inc c                                         ; $79e9: $0c
    inc bc                                        ; $79ea: $03
    ld a, b                                       ; $79eb: $78
    nop                                           ; $79ec: $00
    ld h, d                                       ; $79ed: $62
    nop                                           ; $79ee: $00
    inc c                                         ; $79ef: $0c
    ld bc, $0088                                  ; $79f0: $01 $88 $00
    ld b, [hl]                                    ; $79f3: $46
    nop                                           ; $79f4: $00
    inc c                                         ; $79f5: $0c
    ld [bc], a                                    ; $79f6: $02
    sbc l                                         ; $79f7: $9d
    nop                                           ; $79f8: $00
    ld h, c                                       ; $79f9: $61
    nop                                           ; $79fa: $00
    rlca                                          ; $79fb: $07
    ld bc, $00a7                                  ; $79fc: $01 $a7 $00
    sbc [hl]                                      ; $79ff: $9e
    nop                                           ; $7a00: $00
    inc bc                                        ; $7a01: $03
    rlca                                          ; $7a02: $07
    add $00                                       ; $7a03: $c6 $00
    adc h                                         ; $7a05: $8c
    nop                                           ; $7a06: $00
    rst $38                                       ; $7a07: $ff
    rst $38                                       ; $7a08: $ff
    rst $38                                       ; $7a09: $ff
    rst $38                                       ; $7a0a: $ff
    rst $38                                       ; $7a0b: $ff
    rst $38                                       ; $7a0c: $ff
    rrca                                          ; $7a0d: $0f
    nop                                           ; $7a0e: $00
    nop                                           ; $7a0f: $00
    ccf                                           ; $7a10: $3f
    nop                                           ; $7a11: $00
    ld [$005d], sp                                ; $7a12: $08 $5d $00
    dec c                                         ; $7a15: $0d
    add c                                         ; $7a16: $81
    nop                                           ; $7a17: $00
    inc de                                        ; $7a18: $13
    sbc a                                         ; $7a19: $9f
    nop                                           ; $7a1a: $00
    jr @+$04                                      ; $7a1b: $18 $02

    ld bc, $0010                                  ; $7a1d: $01 $10 $00
    xor l                                         ; $7a20: $ad
    nop                                           ; $7a21: $00
    ld [bc], a                                    ; $7a22: $02
    ld [bc], a                                    ; $7a23: $02
    stop                                          ; $7a24: $10 $00
    ld [$0201], sp                                ; $7a26: $08 $01 $02
    inc bc                                        ; $7a29: $03
    stop                                          ; $7a2a: $10 $00
    add b                                         ; $7a2c: $80
    ld bc, $0402                                  ; $7a2d: $01 $02 $04
    jr nz, jr_09f_7a32                            ; $7a30: $20 $00

jr_09f_7a32:
    sbc $01                                       ; $7a32: $de $01
    dec bc                                        ; $7a34: $0b
    ld [bc], a                                    ; $7a35: $02
    add hl, hl                                    ; $7a36: $29
    nop                                           ; $7a37: $00
    or a                                          ; $7a38: $b7
    nop                                           ; $7a39: $00
    rlca                                          ; $7a3a: $07
    nop                                           ; $7a3b: $00
    jr nc, jr_09f_7a3e                            ; $7a3c: $30 $00

jr_09f_7a3e:
    ld d, e                                       ; $7a3e: $53
    nop                                           ; $7a3f: $00
    dec bc                                        ; $7a40: $0b
    ld [$0031], sp                                ; $7a41: $08 $31 $00
    pop hl                                        ; $7a44: $e1
    nop                                           ; $7a45: $00
    rlca                                          ; $7a46: $07
    ld [bc], a                                    ; $7a47: $02
    inc sp                                        ; $7a48: $33
    nop                                           ; $7a49: $00
    ld a, [hl-]                                   ; $7a4a: $3a
    ld bc, $080b                                  ; $7a4b: $01 $0b $08
    ld b, a                                       ; $7a4e: $47
    nop                                           ; $7a4f: $00
    pop hl                                        ; $7a50: $e1
    nop                                           ; $7a51: $00
    dec bc                                        ; $7a52: $0b
    ld [$005e], sp                                ; $7a53: $08 $5e $00
    pop hl                                        ; $7a56: $e1
    nop                                           ; $7a57: $00
    ld [bc], a                                    ; $7a58: $02
    nop                                           ; $7a59: $00
    ld l, c                                       ; $7a5a: $69
    nop                                           ; $7a5b: $00
    ld l, l                                       ; $7a5c: $6d
    nop                                           ; $7a5d: $00
    dec bc                                        ; $7a5e: $0b
    ld [$0073], sp                                ; $7a5f: $08 $73 $00
    ldh [rP1], a                                  ; $7a62: $e0 $00
    dec bc                                        ; $7a64: $0b
    ld a, [bc]                                    ; $7a65: $0a
    ld a, [hl]                                    ; $7a66: $7e
    nop                                           ; $7a67: $00
    ld [hl+], a                                   ; $7a68: $22
    ld [bc], a                                    ; $7a69: $02
    dec bc                                        ; $7a6a: $0b
    ld a, [bc]                                    ; $7a6b: $0a
    adc [hl]                                      ; $7a6c: $8e
    nop                                           ; $7a6d: $00
    ld [hl+], a                                   ; $7a6e: $22
    ld [bc], a                                    ; $7a6f: $02
    dec bc                                        ; $7a70: $0b
    nop                                           ; $7a71: $00

Call_09f_7a72:
    sub b                                         ; $7a72: $90
    nop                                           ; $7a73: $00
    ld c, a                                       ; $7a74: $4f
    nop                                           ; $7a75: $00
    inc c                                         ; $7a76: $0c
    rlca                                          ; $7a77: $07
    sub h                                         ; $7a78: $94
    nop                                           ; $7a79: $00
    ei                                            ; $7a7a: $fb
    ld bc, $0a0b                                  ; $7a7b: $01 $0b $0a
    sbc a                                         ; $7a7e: $9f
    nop                                           ; $7a7f: $00
    ld [hl+], a                                   ; $7a80: $22
    ld [bc], a                                    ; $7a81: $02
    rlca                                          ; $7a82: $07
    ld bc, $00a2                                  ; $7a83: $01 $a2 $00
    call nc, $0b01                                ; $7a86: $d4 $01 $0b
    add hl, bc                                    ; $7a89: $09
    xor h                                         ; $7a8a: $ac
    nop                                           ; $7a8b: $00
    ldh [rP1], a                                  ; $7a8c: $e0 $00
    dec bc                                        ; $7a8e: $0b
    add hl, bc                                    ; $7a8f: $09
    jp $e000                                      ; $7a90: $c3 $00 $e0


    nop                                           ; $7a93: $00
    ld [bc], a                                    ; $7a94: $02
    dec b                                         ; $7a95: $05
    reti                                          ; $7a96: $d9


    nop                                           ; $7a97: $00
    rst $18                                       ; $7a98: $df
    ld bc, $090b                                  ; $7a99: $01 $0b $09
    db $db                                        ; $7a9c: $db
    nop                                           ; $7a9d: $00
    ldh [rP1], a                                  ; $7a9e: $e0 $00
    rlca                                          ; $7aa0: $07
    inc bc                                        ; $7aa1: $03
    and $00                                       ; $7aa2: $e6 $00
    dec [hl]                                      ; $7aa4: $35
    ld bc, $090b                                  ; $7aa5: $01 $0b $09
    rst $28                                       ; $7aa8: $ef
    nop                                           ; $7aa9: $00
    ldh [rP1], a                                  ; $7aaa: $e0 $00
    ld [bc], a                                    ; $7aac: $02
    ld b, $07                                     ; $7aad: $06 $07
    ld bc, $017f                                  ; $7aaf: $01 $7f $01
    ld [bc], a                                    ; $7ab2: $02
    rlca                                          ; $7ab3: $07
    rlca                                          ; $7ab4: $07
    ld bc, $00ad                                  ; $7ab5: $01 $ad $00
    rst $38                                       ; $7ab8: $ff
    rst $38                                       ; $7ab9: $ff
    rst $38                                       ; $7aba: $ff
    rst $38                                       ; $7abb: $ff
    rst $38                                       ; $7abc: $ff
    rst $38                                       ; $7abd: $ff
    rrca                                          ; $7abe: $0f
    nop                                           ; $7abf: $00
    nop                                           ; $7ac0: $00
    daa                                           ; $7ac1: $27
    nop                                           ; $7ac2: $00
    inc b                                         ; $7ac3: $04
    dec l                                         ; $7ac4: $2d
    nop                                           ; $7ac5: $00
    dec b                                         ; $7ac6: $05
    ld c, e                                       ; $7ac7: $4b
    nop                                           ; $7ac8: $00
    ld a, [bc]                                    ; $7ac9: $0a
    ld e, l                                       ; $7aca: $5d
    nop                                           ; $7acb: $00
    dec c                                         ; $7acc: $0d
    ld [bc], a                                    ; $7acd: $02
    inc b                                         ; $7ace: $04
    stop                                          ; $7acf: $10 $00
    ld d, a                                       ; $7ad1: $57
    nop                                           ; $7ad2: $00
    inc c                                         ; $7ad3: $0c
    ld [$0010], sp                                ; $7ad4: $08 $10 $00
    ld [hl], a                                    ; $7ad7: $77
    ld bc, $0002                                  ; $7ad8: $01 $02 $00
    jr nz, jr_09f_7add                            ; $7adb: $20 $00

jr_09f_7add:
    di                                            ; $7add: $f3
    ld bc, $0202                                  ; $7ade: $01 $02 $02
    jr nz, jr_09f_7ae3                            ; $7ae1: $20 $00

jr_09f_7ae3:
    sub $00                                       ; $7ae3: $d6 $00
    rlca                                          ; $7ae5: $07
    ld bc, $0078                                  ; $7ae6: $01 $78 $00
    dec hl                                        ; $7ae9: $2b
    nop                                           ; $7aea: $00
    ld [bc], a                                    ; $7aeb: $02
    dec b                                         ; $7aec: $05
    sub b                                         ; $7aed: $90
    nop                                           ; $7aee: $00
    inc e                                         ; $7aef: $1c
    nop                                           ; $7af0: $00
    rlca                                          ; $7af1: $07
    ld [bc], a                                    ; $7af2: $02
    sbc a                                         ; $7af3: $9f
    nop                                           ; $7af4: $00
    jp c, Jump_000_0c01                           ; $7af5: $da $01 $0c

    ld a, [bc]                                    ; $7af8: $0a
    sbc a                                         ; $7af9: $9f
    nop                                           ; $7afa: $00
    ld a, [$0700]                                 ; $7afb: $fa $00 $07
    nop                                           ; $7afe: $00
    and b                                         ; $7aff: $a0
    nop                                           ; $7b00: $00
    dec hl                                        ; $7b01: $2b
    ld bc, $000c                                  ; $7b02: $01 $0c $00
    cp l                                          ; $7b05: $bd
    nop                                           ; $7b06: $00
    ccf                                           ; $7b07: $3f
    nop                                           ; $7b08: $00
    inc c                                         ; $7b09: $0c
    add hl, bc                                    ; $7b0a: $09
    rst $28                                       ; $7b0b: $ef
    nop                                           ; $7b0c: $00
    rra                                           ; $7b0d: $1f
    nop                                           ; $7b0e: $00
    ld [bc], a                                    ; $7b0f: $02
    ld bc, $00f4                                  ; $7b10: $01 $f4 $00
    di                                            ; $7b13: $f3
    ld bc, $0302                                  ; $7b14: $01 $02 $03
    ld sp, hl                                     ; $7b17: $f9
    nop                                           ; $7b18: $00
    push de                                       ; $7b19: $d5
    nop                                           ; $7b1a: $00
    dec bc                                        ; $7b1b: $0b
    inc bc                                        ; $7b1c: $03
    inc de                                        ; $7b1d: $13
    ld bc, $0061                                  ; $7b1e: $01 $61 $00
    dec bc                                        ; $7b21: $0b
    inc bc                                        ; $7b22: $03
    inc de                                        ; $7b23: $13
    ld bc, $0177                                  ; $7b24: $01 $77 $01
    ld [bc], a                                    ; $7b27: $02
    rlca                                          ; $7b28: $07
    add hl, hl                                    ; $7b29: $29
    ld bc, $0057                                  ; $7b2a: $01 $57 $00
    ld [bc], a                                    ; $7b2d: $02
    ld [$0129], sp                                ; $7b2e: $08 $29 $01
    ld l, a                                       ; $7b31: $6f
    ld bc, $ffff                                  ; $7b32: $01 $ff $ff
    rst $38                                       ; $7b35: $ff
    rst $38                                       ; $7b36: $ff
    rst $38                                       ; $7b37: $ff
    rst $38                                       ; $7b38: $ff
    rrca                                          ; $7b39: $0f
    nop                                           ; $7b3a: $00
    nop                                           ; $7b3b: $00
    add hl, sp                                    ; $7b3c: $39
    nop                                           ; $7b3d: $00
    rlca                                          ; $7b3e: $07
    ld c, e                                       ; $7b3f: $4b
    nop                                           ; $7b40: $00
    ld a, [bc]                                    ; $7b41: $0a
    ld [hl], l                                    ; $7b42: $75
    nop                                           ; $7b43: $00
    ld de, $0081                                  ; $7b44: $11 $81 $00
    inc de                                        ; $7b47: $13
    ld [bc], a                                    ; $7b48: $02
    inc b                                         ; $7b49: $04
    stop                                          ; $7b4a: $10 $00
    ld e, b                                       ; $7b4c: $58
    nop                                           ; $7b4d: $00
    ld [bc], a                                    ; $7b4e: $02
    ld [$0014], sp                                ; $7b4f: $08 $14 $00
    ld l, a                                       ; $7b52: $6f
    ld bc, $0202                                  ; $7b53: $01 $02 $02
    rra                                           ; $7b56: $1f
    nop                                           ; $7b57: $00
    db $e3                                        ; $7b58: $e3
    ld bc, $0002                                  ; $7b59: $01 $02 $00
    jr nz, jr_09f_7b5e                            ; $7b5c: $20 $00

jr_09f_7b5e:
    pop de                                        ; $7b5e: $d1
    nop                                           ; $7b5f: $00
    dec bc                                        ; $7b60: $0b
    ld a, [bc]                                    ; $7b61: $0a
    dec h                                         ; $7b62: $25
    nop                                           ; $7b63: $00
    ld d, c                                       ; $7b64: $51
    nop                                           ; $7b65: $00
    dec bc                                        ; $7b66: $0b
    ld a, [bc]                                    ; $7b67: $0a
    ld h, $00                                     ; $7b68: $26 $00
    ld l, l                                       ; $7b6a: $6d
    nop                                           ; $7b6b: $00
    dec bc                                        ; $7b6c: $0b
    ld a, [bc]                                    ; $7b6d: $0a
    ld [hl], $00                                  ; $7b6e: $36 $00
    ld e, a                                       ; $7b70: $5f
    nop                                           ; $7b71: $00
    inc c                                         ; $7b72: $0c
    dec bc                                        ; $7b73: $0b
    ld c, [hl]                                    ; $7b74: $4e
    nop                                           ; $7b75: $00
    jr nz, jr_09f_7b78                            ; $7b76: $20 $00

jr_09f_7b78:
    dec bc                                        ; $7b78: $0b
    rlca                                          ; $7b79: $07
    ld e, a                                       ; $7b7a: $5f
    nop                                           ; $7b7b: $00
    ld [c], a                                     ; $7b7c: $e2
    ld bc, $090b                                  ; $7b7d: $01 $0b $09
    ld a, h                                       ; $7b80: $7c
    nop                                           ; $7b81: $00
    ld sp, hl                                     ; $7b82: $f9
    nop                                           ; $7b83: $00
    ld [bc], a                                    ; $7b84: $02
    dec b                                         ; $7b85: $05
    adc b                                         ; $7b86: $88
    nop                                           ; $7b87: $00
    jr c, @+$04                                   ; $7b88: $38 $02

    rlca                                          ; $7b8a: $07
    ld bc, $0099                                  ; $7b8b: $01 $99 $00
    or d                                          ; $7b8e: $b2
    ld bc, $090b                                  ; $7b8f: $01 $0b $09
    sbc l                                         ; $7b92: $9d
    nop                                           ; $7b93: $00
    rst $18                                       ; $7b94: $df
    nop                                           ; $7b95: $00
    dec bc                                        ; $7b96: $0b
    ld b, $9e                                     ; $7b97: $06 $9e
    nop                                           ; $7b99: $00
    ld l, $02                                     ; $7b9a: $2e $02
    rlca                                          ; $7b9c: $07
    inc bc                                        ; $7b9d: $03
    and b                                         ; $7b9e: $a0
    nop                                           ; $7b9f: $00
    ld h, c                                       ; $7ba0: $61
    nop                                           ; $7ba1: $00
    rlca                                          ; $7ba2: $07
    nop                                           ; $7ba3: $00
    and [hl]                                      ; $7ba4: $a6
    nop                                           ; $7ba5: $00
    jr z, jr_09f_7ba9                             ; $7ba6: $28 $01

    inc c                                         ; $7ba8: $0c

jr_09f_7ba9:
    ld bc, $00bd                                  ; $7ba9: $01 $bd $00
    dec [hl]                                      ; $7bac: $35
    nop                                           ; $7bad: $00
    dec bc                                        ; $7bae: $0b
    add hl, bc                                    ; $7baf: $09
    add $00                                       ; $7bb0: $c6 $00
    ld sp, hl                                     ; $7bb2: $f9
    nop                                           ; $7bb3: $00
    ld [bc], a                                    ; $7bb4: $02
    ld bc, $00f2                                  ; $7bb5: $01 $f2 $00
    pop de                                        ; $7bb8: $d1
    nop                                           ; $7bb9: $00
    dec bc                                        ; $7bba: $0b
    dec c                                         ; $7bbb: $0d
    ld d, $01                                     ; $7bbc: $16 $01
    ld e, a                                       ; $7bbe: $5f
    nop                                           ; $7bbf: $00
    rlca                                          ; $7bc0: $07
    ld [bc], a                                    ; $7bc1: $02
    rla                                           ; $7bc2: $17
    ld bc, $017b                                  ; $7bc3: $01 $7b $01
    dec bc                                        ; $7bc6: $0b
    ld [$011a], sp                                ; $7bc7: $08 $1a $01
    rrca                                          ; $7bca: $0f
    ld [bc], a                                    ; $7bcb: $02
    ld [bc], a                                    ; $7bcc: $02
    ld b, $27                                     ; $7bcd: $06 $27
    ld bc, $0208                                  ; $7bcf: $01 $08 $02
    ld [bc], a                                    ; $7bd2: $02
    rlca                                          ; $7bd3: $07
    daa                                           ; $7bd4: $27
    ld bc, $0057                                  ; $7bd5: $01 $57 $00
    rst $38                                       ; $7bd8: $ff
    rst $38                                       ; $7bd9: $ff
    rst $38                                       ; $7bda: $ff
    rst $38                                       ; $7bdb: $ff
    rst $38                                       ; $7bdc: $ff
    rst $38                                       ; $7bdd: $ff
    ld [de], a                                    ; $7bde: $12
    nop                                           ; $7bdf: $00
    nop                                           ; $7be0: $00
    ld e, $00                                     ; $7be1: $1e $00
    ld [bc], a                                    ; $7be3: $02
    jr nc, jr_09f_7be6                            ; $7be4: $30 $00

jr_09f_7be6:
    dec b                                         ; $7be6: $05
    ld b, d                                       ; $7be7: $42
    nop                                           ; $7be8: $00
    ld [$0072], sp                                ; $7be9: $08 $72 $00
    db $10                                        ; $7bec: $10
    adc d                                         ; $7bed: $8a
    nop                                           ; $7bee: $00
    inc d                                         ; $7bef: $14
    ld [bc], a                                    ; $7bf0: $02
    ld [$0018], sp                                ; $7bf1: $08 $18 $00
    ld l, a                                       ; $7bf4: $6f
    ld bc, $0602                                  ; $7bf5: $01 $02 $06
    jr nc, jr_09f_7bfa                            ; $7bf8: $30 $00

jr_09f_7bfa:
    ld e, b                                       ; $7bfa: $58
    nop                                           ; $7bfb: $00
    ld [bc], a                                    ; $7bfc: $02
    nop                                           ; $7bfd: $00
    ld b, b                                       ; $7bfe: $40
    nop                                           ; $7bff: $00
    rst $18                                       ; $7c00: $df
    ld bc, $0102                                  ; $7c01: $01 $02 $01
    ld b, b                                       ; $7c04: $40
    nop                                           ; $7c05: $00
    rst $00                                       ; $7c06: $c7
    nop                                           ; $7c07: $00
    dec bc                                        ; $7c08: $0b
    ld [bc], a                                    ; $7c09: $02
    ld c, h                                       ; $7c0a: $4c
    nop                                           ; $7c0b: $00
    ld e, a                                       ; $7c0c: $5f
    nop                                           ; $7c0d: $00
    inc c                                         ; $7c0e: $0c
    ld a, [bc]                                    ; $7c0f: $0a
    xor l                                         ; $7c10: $ad
    nop                                           ; $7c11: $00
    dec a                                         ; $7c12: $3d
    ld [bc], a                                    ; $7c13: $02
    ld [bc], a                                    ; $7c14: $02
    ld [bc], a                                    ; $7c15: $02
    or b                                          ; $7c16: $b0
    nop                                           ; $7c17: $00
    ld e, $00                                     ; $7c18: $1e $00
    dec bc                                        ; $7c1a: $0b
    inc c                                         ; $7c1b: $0c
    cp a                                          ; $7c1c: $bf
    nop                                           ; $7c1d: $00
    scf                                           ; $7c1e: $37
    nop                                           ; $7c1f: $00
    inc c                                         ; $7c20: $0c
    dec bc                                        ; $7c21: $0b
    call nz, Call_09f_5c00                        ; $7c22: $c4 $00 $5c
    ld bc, $0a0c                                  ; $7c25: $01 $0c $0a
    call z, $3d00                                 ; $7c28: $cc $00 $3d
    ld [bc], a                                    ; $7c2b: $02
    inc c                                         ; $7c2c: $0c
    dec bc                                        ; $7c2d: $0b
    rst $08                                       ; $7c2e: $cf
    nop                                           ; $7c2f: $00
    ld c, a                                       ; $7c30: $4f
    ld bc, $0b0c                                  ; $7c31: $01 $0c $0b
    reti                                          ; $7c34: $d9


    nop                                           ; $7c35: $00
    ld e, [hl]                                    ; $7c36: $5e
    ld bc, $0307                                  ; $7c37: $01 $07 $03
    and $00                                       ; $7c3a: $e6 $00
    ld b, $01                                     ; $7c3c: $06 $01
    rlca                                          ; $7c3e: $07
    nop                                           ; $7c3f: $00
    db $ec                                        ; $7c40: $ec
    nop                                           ; $7c41: $00
    pop bc                                        ; $7c42: $c1
    ld bc, $000c                                  ; $7c43: $01 $0c $00
    ldh a, [rP1]                                  ; $7c46: $f0 $00
    ld b, h                                       ; $7c48: $44
    nop                                           ; $7c49: $00
    dec bc                                        ; $7c4a: $0b
    rlca                                          ; $7c4b: $07
    rst $38                                       ; $7c4c: $ff
    nop                                           ; $7c4d: $00
    inc [hl]                                      ; $7c4e: $34
    nop                                           ; $7c4f: $00
    inc c                                         ; $7c50: $0c
    ld [$010f], sp                                ; $7c51: $08 $0f $01
    rra                                           ; $7c54: $1f
    nop                                           ; $7c55: $00
    dec bc                                        ; $7c56: $0b
    rlca                                          ; $7c57: $07
    rla                                           ; $7c58: $17
    ld bc, $003b                                  ; $7c59: $01 $3b $00
    rlca                                          ; $7c5c: $07
    ld [bc], a                                    ; $7c5d: $02
    inc l                                         ; $7c5e: $2c
    ld bc, $00b6                                  ; $7c5f: $01 $b6 $00
    rlca                                          ; $7c62: $07
    ld bc, $012d                                  ; $7c63: $01 $2d $01
    ld [hl-], a                                   ; $7c66: $32
    nop                                           ; $7c67: $00
    inc c                                         ; $7c68: $0c
    add hl, bc                                    ; $7c69: $09
    ld c, [hl]                                    ; $7c6a: $4e
    ld bc, $00df                                  ; $7c6b: $01 $df $00
    rst $38                                       ; $7c6e: $ff
    rst $38                                       ; $7c6f: $ff
    rst $38                                       ; $7c70: $ff
    rst $38                                       ; $7c71: $ff
    rst $38                                       ; $7c72: $ff
    rst $38                                       ; $7c73: $ff
    ld e, $00                                     ; $7c74: $1e $00
    nop                                           ; $7c76: $00
    inc h                                         ; $7c77: $24
    nop                                           ; $7c78: $00
    ld bc, $002a                                  ; $7c79: $01 $2a $00
    ld [bc], a                                    ; $7c7c: $02
    ld c, [hl]                                    ; $7c7d: $4e
    nop                                           ; $7c7e: $00
    ld [$0066], sp                                ; $7c7f: $08 $66 $00
    inc c                                         ; $7c82: $0c
    ld [hl], d                                    ; $7c83: $72
    nop                                           ; $7c84: $00
    ld c, $78                                     ; $7c85: $0e $78
    nop                                           ; $7c87: $00
    rrca                                          ; $7c88: $0f
    sbc h                                         ; $7c89: $9c
    nop                                           ; $7c8a: $00
    dec d                                         ; $7c8b: $15
    sbc h                                         ; $7c8c: $9c
    nop                                           ; $7c8d: $00
    dec d                                         ; $7c8e: $15
    and d                                         ; $7c8f: $a2
    nop                                           ; $7c90: $00
    ld d, $02                                     ; $7c91: $16 $02
    rlca                                          ; $7c93: $07
    jr jr_09f_7c96                                ; $7c94: $18 $00

jr_09f_7c96:
    dec c                                         ; $7c96: $0d
    ld [bc], a                                    ; $7c97: $02
    ld [bc], a                                    ; $7c98: $02
    ld [bc], a                                    ; $7c99: $02
    ld a, a                                       ; $7c9a: $7f
    nop                                           ; $7c9b: $00
    sub a                                         ; $7c9c: $97
    nop                                           ; $7c9d: $00
    ld [bc], a                                    ; $7c9e: $02
    add hl, bc                                    ; $7c9f: $09
    add b                                         ; $7ca0: $80
    nop                                           ; $7ca1: $00
    ld b, a                                       ; $7ca2: $47
    ld bc, $0102                                  ; $7ca3: $01 $02 $01
    sub b                                         ; $7ca6: $90
    nop                                           ; $7ca7: $00
    jr nz, jr_09f_7cac                            ; $7ca8: $20 $02

    ld [bc], a                                    ; $7caa: $02
    nop                                           ; $7cab: $00

jr_09f_7cac:
    sub b                                         ; $7cac: $90
    nop                                           ; $7cad: $00
    rlca                                          ; $7cae: $07
    ld bc, $060b                                  ; $7caf: $01 $0b $06
    sbc c                                         ; $7cb2: $99
    nop                                           ; $7cb3: $00
    ld [$0702], sp                                ; $7cb4: $08 $02 $07
    ld [bc], a                                    ; $7cb7: $02
    or c                                          ; $7cb8: $b1
    nop                                           ; $7cb9: $00
    ld h, c                                       ; $7cba: $61
    ld [bc], a                                    ; $7cbb: $02
    dec bc                                        ; $7cbc: $0b
    ld b, $b1                                     ; $7cbd: $06 $b1
    nop                                           ; $7cbf: $00
    ld [$0c02], sp                                ; $7cc0: $08 $02 $0c
    dec b                                         ; $7cc3: $05
    rst $00                                       ; $7cc4: $c7
    nop                                           ; $7cc5: $00
    rlc c                                         ; $7cc6: $cb $01
    inc c                                         ; $7cc8: $0c
    dec bc                                        ; $7cc9: $0b
    rst $10                                       ; $7cca: $d7
    nop                                           ; $7ccb: $00
    and l                                         ; $7ccc: $a5
    nop                                           ; $7ccd: $00
    inc c                                         ; $7cce: $0c
    dec bc                                        ; $7ccf: $0b
    rst $20                                       ; $7cd0: $e7
    nop                                           ; $7cd1: $00
    xor d                                         ; $7cd2: $aa
    nop                                           ; $7cd3: $00
    inc c                                         ; $7cd4: $0c
    ld a, [bc]                                    ; $7cd5: $0a
    db $fc                                        ; $7cd6: $fc
    nop                                           ; $7cd7: $00
    ld a, l                                       ; $7cd8: $7d
    ld [bc], a                                    ; $7cd9: $02
    rlca                                          ; $7cda: $07
    ld bc, $0113                                  ; $7cdb: $01 $13 $01
    sbc [hl]                                      ; $7cde: $9e
    ld bc, $0a0c                                  ; $7cdf: $01 $0c $0a
    dec de                                        ; $7ce2: $1b
    ld bc, $027d                                  ; $7ce3: $01 $7d $02
    inc c                                         ; $7ce6: $0c
    add hl, bc                                    ; $7ce7: $09
    ld [hl], d                                    ; $7ce8: $72
    ld bc, $01e6                                  ; $7ce9: $01 $e6 $01
    dec bc                                        ; $7cec: $0b
    ld [$018c], sp                                ; $7ced: $08 $8c $01
    sub b                                         ; $7cf0: $90
    ld bc, $080b                                  ; $7cf1: $01 $0b $08
    adc h                                         ; $7cf4: $8c
    ld bc, $0179                                  ; $7cf5: $01 $79 $01
    ld [bc], a                                    ; $7cf8: $02
    ld b, $98                                     ; $7cf9: $06 $98
    ld bc, $0227                                  ; $7cfb: $01 $27 $02
    ld [bc], a                                    ; $7cfe: $02
    ld [$0198], sp                                ; $7cff: $08 $98 $01
    ld l, $01                                     ; $7d02: $2e $01
    dec bc                                        ; $7d04: $0b
    rlca                                          ; $7d05: $07
    and a                                         ; $7d06: $a7
    ld bc, $0187                                  ; $7d07: $01 $87 $01
    rlca                                          ; $7d0a: $07
    nop                                           ; $7d0b: $00
    xor e                                         ; $7d0c: $ab
    ld bc, $0070                                  ; $7d0d: $01 $70 $00
    ld [bc], a                                    ; $7d10: $02
    inc bc                                        ; $7d11: $03
    inc sp                                        ; $7d12: $33
    ld [bc], a                                    ; $7d13: $02
    scf                                           ; $7d14: $37
    ld bc, $ffff                                  ; $7d15: $01 $ff $ff
    rst $38                                       ; $7d18: $ff
    rst $38                                       ; $7d19: $ff
    rst $38                                       ; $7d1a: $ff
    rst $38                                       ; $7d1b: $ff
    ld [de], a                                    ; $7d1c: $12
    nop                                           ; $7d1d: $00
    nop                                           ; $7d1e: $00
    ld e, $00                                     ; $7d1f: $1e $00
    ld [bc], a                                    ; $7d21: $02
    ld a, [hl+]                                   ; $7d22: $2a
    nop                                           ; $7d23: $00
    inc b                                         ; $7d24: $04
    ld [hl], $00                                  ; $7d25: $36 $00
    ld b, $48                                     ; $7d27: $06 $48
    nop                                           ; $7d29: $00
    add hl, bc                                    ; $7d2a: $09
    ld d, h                                       ; $7d2b: $54
    nop                                           ; $7d2c: $00
    dec bc                                        ; $7d2d: $0b
    ld [bc], a                                    ; $7d2e: $02

Call_09f_7d2f:
    ld b, $35                                     ; $7d2f: $06 $35
    nop                                           ; $7d31: $00
    ld d, a                                       ; $7d32: $57
    ld bc, $0502                                  ; $7d33: $01 $02 $05
    ld [hl], $00                                  ; $7d36: $36 $00
    ld l, [hl]                                    ; $7d38: $6e
    nop                                           ; $7d39: $00
    ld [bc], a                                    ; $7d3a: $02
    nop                                           ; $7d3b: $00
    ld b, b                                       ; $7d3c: $40
    nop                                           ; $7d3d: $00
    ldh [rSB], a                                  ; $7d3e: $e0 $01
    rlca                                          ; $7d40: $07
    nop                                           ; $7d41: $00
    ld d, [hl]                                    ; $7d42: $56
    nop                                           ; $7d43: $00
    add hl, de                                    ; $7d44: $19
    ld bc, $000c                                  ; $7d45: $01 $0c $00
    adc [hl]                                      ; $7d48: $8e
    nop                                           ; $7d49: $00
    ld [hl], l                                    ; $7d4a: $75
    ld bc, $050c                                  ; $7d4b: $01 $0c $05
    cp e                                          ; $7d4e: $bb
    nop                                           ; $7d4f: $00
    jp hl                                         ; $7d50: $e9


    ld bc, $0307                                  ; $7d51: $01 $07 $03
    ret nz                                        ; $7d54: $c0

    nop                                           ; $7d55: $00
    ld l, e                                       ; $7d56: $6b
    ld bc, $0107                                  ; $7d57: $01 $07 $01
    pop bc                                        ; $7d5a: $c1
    nop                                           ; $7d5b: $00
    adc d                                         ; $7d5c: $8a
    nop                                           ; $7d5d: $00
    inc c                                         ; $7d5e: $0c
    dec b                                         ; $7d5f: $05
    rst $08                                       ; $7d60: $cf
    nop                                           ; $7d61: $00
    ldh [rSB], a                                  ; $7d62: $e0 $01
    rlca                                          ; $7d64: $07
    ld [bc], a                                    ; $7d65: $02
    ld de, $1f01                                  ; $7d66: $11 $01 $1f
    nop                                           ; $7d69: $00
    ld [bc], a                                    ; $7d6a: $02
    ld bc, $0118                                  ; $7d6b: $01 $18 $01
    db $d3                                        ; $7d6e: $d3
    ld bc, $0402                                  ; $7d6f: $01 $02 $04
    ld c, b                                       ; $7d72: $48
    ld bc, $004f                                  ; $7d73: $01 $4f $00
    ld [bc], a                                    ; $7d76: $02
    inc bc                                        ; $7d77: $03
    ld c, b                                       ; $7d78: $48
    ld bc, $014f                                  ; $7d79: $01 $4f $01
    inc c                                         ; $7d7c: $0c
    inc bc                                        ; $7d7d: $03
    ld c, a                                       ; $7d7e: $4f
    ld bc, $00de                                  ; $7d7f: $01 $de $00
    rst $38                                       ; $7d82: $ff
    rst $38                                       ; $7d83: $ff
    rst $38                                       ; $7d84: $ff
    rst $38                                       ; $7d85: $ff
    rst $38                                       ; $7d86: $ff
    rst $38                                       ; $7d87: $ff
    dec de                                        ; $7d88: $1b
    nop                                           ; $7d89: $00
    nop                                           ; $7d8a: $00
    dec de                                        ; $7d8b: $1b
    nop                                           ; $7d8c: $00
    nop                                           ; $7d8d: $00
    daa                                           ; $7d8e: $27
    nop                                           ; $7d8f: $00
    ld [bc], a                                    ; $7d90: $02
    dec l                                         ; $7d91: $2d
    nop                                           ; $7d92: $00
    inc bc                                        ; $7d93: $03
    ccf                                           ; $7d94: $3f
    nop                                           ; $7d95: $00
    ld b, $45                                     ; $7d96: $06 $45
    nop                                           ; $7d98: $00
    rlca                                          ; $7d99: $07
    ld h, e                                       ; $7d9a: $63
    nop                                           ; $7d9b: $00
    inc c                                         ; $7d9c: $0c
    ld l, a                                       ; $7d9d: $6f
    nop                                           ; $7d9e: $00
    ld c, $7b                                     ; $7d9f: $0e $7b
    nop                                           ; $7da1: $00
    db $10                                        ; $7da2: $10
    inc c                                         ; $7da3: $0c
    nop                                           ; $7da4: $00
    ld d, d                                       ; $7da5: $52
    nop                                           ; $7da6: $00
    inc c                                         ; $7da7: $0c
    ld bc, $050b                                  ; $7da8: $01 $0b $05
    ld d, d                                       ; $7dab: $52
    nop                                           ; $7dac: $00
    add hl, hl                                    ; $7dad: $29
    ld bc, $0503                                  ; $7dae: $01 $03 $05
    sub c                                         ; $7db1: $91
    nop                                           ; $7db2: $00
    push af                                       ; $7db3: $f5
    nop                                           ; $7db4: $00
    ld [bc], a                                    ; $7db5: $02
    ld bc, $00d5                                  ; $7db6: $01 $d5 $00
    ld [hl], a                                    ; $7db9: $77
    nop                                           ; $7dba: $00
    rlca                                          ; $7dbb: $07
    ld [bc], a                                    ; $7dbc: $02
    push hl                                       ; $7dbd: $e5
    nop                                           ; $7dbe: $00
    pop de                                        ; $7dbf: $d1
    nop                                           ; $7dc0: $00
    dec bc                                        ; $7dc1: $0b
    rlca                                          ; $7dc2: $07
    db $ec                                        ; $7dc3: $ec
    nop                                           ; $7dc4: $00
    ld a, a                                       ; $7dc5: $7f
    nop                                           ; $7dc6: $00
    rlca                                          ; $7dc7: $07
    inc bc                                        ; $7dc8: $03
    ld [de], a                                    ; $7dc9: $12
    ld bc, $0018                                  ; $7dca: $01 $18 $00
    inc c                                         ; $7dcd: $0c
    add hl, bc                                    ; $7dce: $09
    ld c, h                                       ; $7dcf: $4c
    ld bc, $023d                                  ; $7dd0: $01 $3d $02
    inc bc                                        ; $7dd3: $03
    inc bc                                        ; $7dd4: $03
    ld d, d                                       ; $7dd5: $52
    ld bc, $00cf                                  ; $7dd6: $01 $cf $00
    inc bc                                        ; $7dd9: $03
    dec bc                                        ; $7dda: $0b
    ld d, e                                       ; $7ddb: $53
    ld bc, $010e                                  ; $7ddc: $01 $0e $01
    inc c                                         ; $7ddf: $0c
    add hl, bc                                    ; $7de0: $09
    ld l, d                                       ; $7de1: $6a
    ld bc, $023d                                  ; $7de2: $01 $3d $02
    rlca                                          ; $7de5: $07
    nop                                           ; $7de6: $00
    ld l, [hl]                                    ; $7de7: $6e
    ld bc, $001d                                  ; $7de8: $01 $1d $00
    inc bc                                        ; $7deb: $03
    inc c                                         ; $7dec: $0c
    adc l                                         ; $7ded: $8d
    ld bc, $0111                                  ; $7dee: $01 $11 $01
    inc bc                                        ; $7df1: $03
    ld a, [bc]                                    ; $7df2: $0a
    adc [hl]                                      ; $7df3: $8e
    ld bc, $00cc                                  ; $7df4: $01 $cc $00
    ld [bc], a                                    ; $7df7: $02
    nop                                           ; $7df8: $00
    call nc, $ec01                                ; $7df9: $d4 $01 $ec
    ld bc, $0107                                  ; $7dfc: $01 $07 $01
    db $ec                                        ; $7dff: $ec
    ld bc, $0179                                  ; $7e00: $01 $79 $01
    inc c                                         ; $7e03: $0c
    ld [$020a], sp                                ; $7e04: $08 $0a $02
    db $10                                        ; $7e07: $10
    ld bc, $0402                                  ; $7e08: $01 $02 $04
    dec bc                                        ; $7e0b: $0b
    ld [bc], a                                    ; $7e0c: $02
    sub a                                         ; $7e0d: $97
    ld bc, $ffff                                  ; $7e0e: $01 $ff $ff
    rst $38                                       ; $7e11: $ff
    rst $38                                       ; $7e12: $ff
    rst $38                                       ; $7e13: $ff
    rst $38                                       ; $7e14: $ff

    db $09, $00, $00

    add hl, bc                                    ; $7e18: $09
    nop                                           ; $7e19: $00
    nop                                           ; $7e1a: $00
    dec d                                         ; $7e1b: $15
    nop                                           ; $7e1c: $00
    ld [bc], a                                    ; $7e1d: $02

    db $02, $00, $47, $00, $79, $00, $08, $06, $7e, $00, $41, $00, $0c, $00, $85, $00
    db $4c, $00, $ff, $ff, $ff, $ff, $ff, $ff

    inc c                                         ; $7e36: $0c
    nop                                           ; $7e37: $00
    nop                                           ; $7e38: $00
    ld [de], a                                    ; $7e39: $12
    nop                                           ; $7e3a: $00
    ld bc, $0018                                  ; $7e3b: $01 $18 $00
    ld [bc], a                                    ; $7e3e: $02
    ld a, [hl+]                                   ; $7e3f: $2a
    nop                                           ; $7e40: $00
    dec b                                         ; $7e41: $05
    rlca                                          ; $7e42: $07
    nop                                           ; $7e43: $00
    inc [hl]                                      ; $7e44: $34
    nop                                           ; $7e45: $00
    and $00                                       ; $7e46: $e6 $00
    inc c                                         ; $7e48: $0c
    nop                                           ; $7e49: $00
    ld l, h                                       ; $7e4a: $6c
    nop                                           ; $7e4b: $00
    ld e, c                                       ; $7e4c: $59
    nop                                           ; $7e4d: $00
    inc c                                         ; $7e4e: $0c
    ld b, $87                                     ; $7e4f: $06 $87
    nop                                           ; $7e51: $00
    ld l, e                                       ; $7e52: $6b
    nop                                           ; $7e53: $00
    inc c                                         ; $7e54: $0c
    ld [bc], a                                    ; $7e55: $02
    sub e                                         ; $7e56: $93
    nop                                           ; $7e57: $00
    ld b, c                                       ; $7e58: $41
    nop                                           ; $7e59: $00
    inc c                                         ; $7e5a: $0c
    dec b                                         ; $7e5b: $05
    and c                                         ; $7e5c: $a1
    nop                                           ; $7e5d: $00
    ld e, c                                       ; $7e5e: $59
    nop                                           ; $7e5f: $00
    rlca                                          ; $7e60: $07
    ld bc, $00c0                                  ; $7e61: $01 $c0 $00
    rra                                           ; $7e64: $1f
    nop                                           ; $7e65: $00
    ld [bc], a                                    ; $7e66: $02
    nop                                           ; $7e67: $00
    db $e3                                        ; $7e68: $e3
    nop                                           ; $7e69: $00
    rst $18                                       ; $7e6a: $df
    nop                                           ; $7e6b: $00
    rst $38                                       ; $7e6c: $ff
    rst $38                                       ; $7e6d: $ff
    rst $38                                       ; $7e6e: $ff
    rst $38                                       ; $7e6f: $ff
    rst $38                                       ; $7e70: $ff
    rst $38                                       ; $7e71: $ff
    inc c                                         ; $7e72: $0c
    nop                                           ; $7e73: $00
    nop                                           ; $7e74: $00
    ld [de], a                                    ; $7e75: $12
    nop                                           ; $7e76: $00
    ld bc, $002a                                  ; $7e77: $01 $2a $00
    dec b                                         ; $7e7a: $05
    jr nc, jr_09f_7e7d                            ; $7e7b: $30 $00

jr_09f_7e7d:
    ld b, $0a                                     ; $7e7d: $06 $0a
    ld [de], a                                    ; $7e7f: $12
    dec a                                         ; $7e80: $3d
    nop                                           ; $7e81: $00
    jr jr_09f_7e85                                ; $7e82: $18 $01

    ld [bc], a                                    ; $7e84: $02

jr_09f_7e85:
    nop                                           ; $7e85: $00
    ld l, b                                       ; $7e86: $68
    nop                                           ; $7e87: $00
    adc b                                         ; $7e88: $88
    ld bc, $0102                                  ; $7e89: $01 $02 $01
    ld l, a                                       ; $7e8c: $6f
    nop                                           ; $7e8d: $00
    ld hl, $3a00                                  ; $7e8e: $21 $00 $3a
    nop                                           ; $7e91: $00
    ld [hl], h                                    ; $7e92: $74

jr_09f_7e93:
    nop                                           ; $7e93: $00
    ld e, a                                       ; $7e94: $5f
    nop                                           ; $7e95: $00
    inc c                                         ; $7e96: $0c
    nop                                           ; $7e97: $00
    halt                                          ; $7e98: $76
    nop                                           ; $7e99: $00
    ld h, d                                       ; $7e9a: $62
    nop                                           ; $7e9b: $00
    rlca                                          ; $7e9c: $07
    nop                                           ; $7e9d: $00
    adc d                                         ; $7e9e: $8a
    nop                                           ; $7e9f: $00
    ld d, b                                       ; $7ea0: $50
    ld bc, $0207                                  ; $7ea1: $01 $07 $02
    db $d3                                        ; $7ea4: $d3
    nop                                           ; $7ea5: $00
    rlc b                                         ; $7ea6: $cb $00
    rlca                                          ; $7ea8: $07
    ld bc, $00d3                                  ; $7ea9: $01 $d3 $00
    dec [hl]                                      ; $7eac: $35
    nop                                           ; $7ead: $00
    ld [bc], a                                    ; $7eae: $02
    ld [bc], a                                    ; $7eaf: $02
    ld [$5600], a                                 ; $7eb0: $ea $00 $56
    nop                                           ; $7eb3: $00
    rst $38                                       ; $7eb4: $ff
    rst $38                                       ; $7eb5: $ff
    rst $38                                       ; $7eb6: $ff
    rst $38                                       ; $7eb7: $ff
    rst $38                                       ; $7eb8: $ff
    rst $38                                       ; $7eb9: $ff
    jr jr_09f_7ebc                                ; $7eba: $18 $00

jr_09f_7ebc:
    nop                                           ; $7ebc: $00
    ld c, [hl]                                    ; $7ebd: $4e
    nop                                           ; $7ebe: $00
    add hl, bc                                    ; $7ebf: $09
    ld h, b                                       ; $7ec0: $60
    nop                                           ; $7ec1: $00
    inc c                                         ; $7ec2: $0c
    ld [hl], d                                    ; $7ec3: $72
    nop                                           ; $7ec4: $00
    rrca                                          ; $7ec5: $0f
    sub [hl]                                      ; $7ec6: $96
    nop                                           ; $7ec7: $00
    dec d                                         ; $7ec8: $15
    xor b                                         ; $7ec9: $a8
    nop                                           ; $7eca: $00
    jr jr_09f_7e93                                ; $7ecb: $18 $c6

    nop                                           ; $7ecd: $00
    dec e                                         ; $7ece: $1d
    jp nc, $1f00                                  ; $7ecf: $d2 $00 $1f

    ld [bc], a                                    ; $7ed2: $02
    ld bc, $0016                                  ; $7ed3: $01 $16 $00
    sub [hl]                                      ; $7ed6: $96
    ld bc, $0002                                  ; $7ed7: $01 $02 $00
    ld d, $00                                     ; $7eda: $16 $00
    ld a, a                                       ; $7edc: $7f
    nop                                           ; $7edd: $00
    dec bc                                        ; $7ede: $0b
    ld b, $24                                     ; $7edf: $06 $24
    nop                                           ; $7ee1: $00
    sbc a                                         ; $7ee2: $9f
    ld bc, $050b                                  ; $7ee3: $01 $0b $05
    daa                                           ; $7ee6: $27
    nop                                           ; $7ee7: $00
    add a                                         ; $7ee8: $87
    nop                                           ; $7ee9: $00
    rlca                                          ; $7eea: $07
    inc bc                                        ; $7eeb: $03
    dec hl                                        ; $7eec: $2b
    nop                                           ; $7eed: $00
    ld l, $03                                     ; $7eee: $2e $03
    inc c                                         ; $7ef0: $0c
    dec bc                                        ; $7ef1: $0b
    dec hl                                        ; $7ef2: $2b
    nop                                           ; $7ef3: $00
    ld hl, sp+$00                                 ; $7ef4: $f8 $00
    ld [bc], a                                    ; $7ef6: $02
    ld [bc], a                                    ; $7ef7: $02
    dec l                                         ; $7ef8: $2d
    nop                                           ; $7ef9: $00
    ld e, a                                       ; $7efa: $5f
    nop                                           ; $7efb: $00
    dec bc                                        ; $7efc: $0b
    ld b, $36                                     ; $7efd: $06 $36
    nop                                           ; $7eff: $00
    or h                                          ; $7f00: $b4
    ld bc, $060b                                  ; $7f01: $01 $0b $06
    ld a, $00                                     ; $7f04: $3e $00
    sub a                                         ; $7f06: $97
    ld bc, $0007                                  ; $7f07: $01 $07 $00
    ld h, d                                       ; $7f0a: $62
    nop                                           ; $7f0b: $00
    and c                                         ; $7f0c: $a1
    ld [bc], a                                    ; $7f0d: $02
    inc c                                         ; $7f0e: $0c
    ld a, [bc]                                    ; $7f0f: $0a
    ld l, a                                       ; $7f10: $6f
    nop                                           ; $7f11: $00
    ld e, b                                       ; $7f12: $58
    ld [bc], a                                    ; $7f13: $02
    inc c                                         ; $7f14: $0c
    ld bc, $007e                                  ; $7f15: $01 $7e $00
    ld c, a                                       ; $7f18: $4f
    nop                                           ; $7f19: $00
    inc c                                         ; $7f1a: $0c
    inc b                                         ; $7f1b: $04
    add l                                         ; $7f1c: $85
    nop                                           ; $7f1d: $00
    adc [hl]                                      ; $7f1e: $8e
    nop                                           ; $7f1f: $00
    inc c                                         ; $7f20: $0c
    ld [bc], a                                    ; $7f21: $02
    xor d                                         ; $7f22: $aa
    nop                                           ; $7f23: $00
    sub b                                         ; $7f24: $90
    nop                                           ; $7f25: $00
    inc c                                         ; $7f26: $0c
    inc b                                         ; $7f27: $04
    cp [hl]                                       ; $7f28: $be
    nop                                           ; $7f29: $00
    ld c, a                                       ; $7f2a: $4f
    nop                                           ; $7f2b: $00
    inc c                                         ; $7f2c: $0c
    dec bc                                        ; $7f2d: $0b
    adc $00                                       ; $7f2e: $ce $00
    ld a, [hl]                                    ; $7f30: $7e
    ld bc, $000c                                  ; $7f31: $01 $0c $00
    db $e4                                        ; $7f34: $e4
    nop                                           ; $7f35: $00
    ld a, [$0b02]                                 ; $7f36: $fa $02 $0b
    add hl, bc                                    ; $7f39: $09
    db $eb                                        ; $7f3a: $eb
    nop                                           ; $7f3b: $00
    or [hl]                                       ; $7f3c: $b6
    nop                                           ; $7f3d: $00
    inc c                                         ; $7f3e: $0c
    nop                                           ; $7f3f: $00
    pop af                                        ; $7f40: $f1
    nop                                           ; $7f41: $00
    xor $02                                       ; $7f42: $ee $02
    inc c                                         ; $7f44: $0c
    nop                                           ; $7f45: $00
    db $fc                                        ; $7f46: $fc
    nop                                           ; $7f47: $00
    db $fc                                        ; $7f48: $fc
    ld [bc], a                                    ; $7f49: $02
    dec bc                                        ; $7f4a: $0b
    add hl, bc                                    ; $7f4b: $09
    db $fd                                        ; $7f4c: $fd
    nop                                           ; $7f4d: $00
    or [hl]                                       ; $7f4e: $b6
    nop                                           ; $7f4f: $00
    inc c                                         ; $7f50: $0c
    inc bc                                        ; $7f51: $03
    rla                                           ; $7f52: $17
    ld bc, $008f                                  ; $7f53: $01 $8f $00
    inc c                                         ; $7f56: $0c
    inc c                                         ; $7f57: $0c
    inc e                                         ; $7f58: $1c
    ld bc, $0210                                  ; $7f59: $01 $10 $02
    rlca                                          ; $7f5c: $07
    ld bc, $013c                                  ; $7f5d: $01 $3c $01
    pop af                                        ; $7f60: $f1
    ld [bc], a                                    ; $7f61: $02
    inc c                                         ; $7f62: $0c
    inc b                                         ; $7f63: $04
    ld b, e                                       ; $7f64: $43
    ld bc, $0027                                  ; $7f65: $01 $27 $00
    rlca                                          ; $7f68: $07
    ld [bc], a                                    ; $7f69: $02
    ld b, [hl]                                    ; $7f6a: $46
    ld bc, $0180                                  ; $7f6b: $01 $80 $01
    inc c                                         ; $7f6e: $0c
    ld a, [bc]                                    ; $7f6f: $0a
    ld h, c                                       ; $7f70: $61
    ld bc, $00f7                                  ; $7f71: $01 $f7 $00
    ld a, [bc]                                    ; $7f74: $0a
    inc c                                         ; $7f75: $0c
    ld h, e                                       ; $7f76: $63
    ld bc, $025a                                  ; $7f77: $01 $5a $02
    inc c                                         ; $7f7a: $0c
    inc b                                         ; $7f7b: $04
    ld h, [hl]                                    ; $7f7c: $66
    ld bc, $008f                                  ; $7f7d: $01 $8f $00
    ld a, [bc]                                    ; $7f80: $0a
    dec c                                         ; $7f81: $0d
    sub a                                         ; $7f82: $97
    ld bc, $0140                                  ; $7f83: $01 $40 $01
    ld [bc], a                                    ; $7f86: $02
    inc bc                                        ; $7f87: $03
    sbc h                                         ; $7f88: $9c
    ld bc, $0060                                  ; $7f89: $01 $60 $00
    rst $38                                       ; $7f8c: $ff
    rst $38                                       ; $7f8d: $ff
    rst $38                                       ; $7f8e: $ff
    rst $38                                       ; $7f8f: $ff
    rst $38                                       ; $7f90: $ff
    rst $38                                       ; $7f91: $ff
    jr jr_09f_7f94                                ; $7f92: $18 $00

jr_09f_7f94:
    nop                                           ; $7f94: $00
    ld a, [hl+]                                   ; $7f95: $2a
    nop                                           ; $7f96: $00
    inc bc                                        ; $7f97: $03
    ld a, [hl+]                                   ; $7f98: $2a
    nop                                           ; $7f99: $00
    inc bc                                        ; $7f9a: $03
    jr nc, jr_09f_7f9d                            ; $7f9b: $30 $00

jr_09f_7f9d:
    inc b                                         ; $7f9d: $04
    jr nc, jr_09f_7fa0                            ; $7f9e: $30 $00

jr_09f_7fa0:
    inc b                                         ; $7fa0: $04
    ld c, b                                       ; $7fa1: $48
    nop                                           ; $7fa2: $00
    ld [$0054], sp                                ; $7fa3: $08 $54 $00
    ld a, [bc]                                    ; $7fa6: $0a
    ld h, [hl]                                    ; $7fa7: $66
    nop                                           ; $7fa8: $00
    dec c                                         ; $7fa9: $0d
    ld [bc], a                                    ; $7faa: $02
    nop                                           ; $7fab: $00
    ld d, $00                                     ; $7fac: $16 $00
    ld a, [hl]                                    ; $7fae: $7e
    nop                                           ; $7faf: $00
    dec bc                                        ; $7fb0: $0b
    nop                                           ; $7fb1: $00
    dec h                                         ; $7fb2: $25
    nop                                           ; $7fb3: $00
    add a                                         ; $7fb4: $87
    nop                                           ; $7fb5: $00
    ld [bc], a                                    ; $7fb6: $02
    ld bc, $0028                                  ; $7fb7: $01 $28 $00
    jr nc, jr_09f_7fbc                            ; $7fba: $30 $00

jr_09f_7fbc:
    ld a, [bc]                                    ; $7fbc: $0a
    dec b                                         ; $7fbd: $05
    sub b                                         ; $7fbe: $90
    nop                                           ; $7fbf: $00
    sub b                                         ; $7fc0: $90
    nop                                           ; $7fc1: $00
    inc c                                         ; $7fc2: $0c

Jump_09f_7fc3:
    ld bc, $0105                                  ; $7fc3: $01 $05 $01
    or [hl]                                       ; $7fc6: $b6
    nop                                           ; $7fc7: $00
    rlca                                          ; $7fc8: $07
    inc bc                                        ; $7fc9: $03
    add hl, bc                                    ; $7fca: $09
    ld bc, HeaderCartridgeType                    ; $7fcb: $01 $47 $01
    ld a, [bc]                                    ; $7fce: $0a
    ld c, $0a                                     ; $7fcf: $0e $0a
    ld bc, $0200                                  ; $7fd1: $01 $00 $02
    rlca                                          ; $7fd4: $07
    nop                                           ; $7fd5: $00
    ld [de], a                                    ; $7fd6: $12
    ld bc, $002f                                  ; $7fd7: $01 $2f $00
    rlca                                          ; $7fda: $07
    ld bc, $016f                                  ; $7fdb: $01 $6f $01
    add a                                         ; $7fde: $87
    ld [bc], a                                    ; $7fdf: $02
    inc c                                         ; $7fe0: $0c
    ld bc, $017c                                  ; $7fe1: $01 $7c $01
    ccf                                           ; $7fe4: $3f
    ld [bc], a                                    ; $7fe5: $02
    ld [bc], a                                    ; $7fe6: $02
    ld [bc], a                                    ; $7fe7: $02
    sbc d                                         ; $7fe8: $9a
    ld bc, $0030                                  ; $7fe9: $01 $30 $00
    inc c                                         ; $7fec: $0c
    ld [bc], a                                    ; $7fed: $02
    xor b                                         ; $7fee: $a8
    ld bc, $0171                                  ; $7fef: $01 $71 $01
    rlca                                          ; $7ff2: $07
    ld [bc], a                                    ; $7ff3: $02
    or a                                          ; $7ff4: $b7
    ld bc, $009f                                  ; $7ff5: $01 $9f $00
    rst $38                                       ; $7ff8: $ff
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
