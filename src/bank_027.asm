; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $027", ROMX[$4000], BANK[$27]

    daa                                           ; $4000: $27
    dec a                                         ; $4001: $3d
    adc d                                         ; $4002: $8a
    ld a, d                                       ; $4003: $7a
    dec c                                         ; $4004: $0d
    and $e5                                       ; $4005: $e6 $e5
    rst $00                                       ; $4007: $c7
    ld l, e                                       ; $4008: $6b
    inc sp                                        ; $4009: $33
    rst $08                                       ; $400a: $cf
    cp c                                          ; $400b: $b9
    cp h                                          ; $400c: $bc
    ld a, [$6d74]                                 ; $400d: $fa $74 $6d
    inc de                                        ; $4010: $13
    ld h, e                                       ; $4011: $63
    db $d3                                        ; $4012: $d3
    dec b                                         ; $4013: $05
    inc bc                                        ; $4014: $03
    and a                                         ; $4015: $a7
    call c, $97ea                                 ; $4016: $dc $ea $97
    db $f4                                        ; $4019: $f4
    call c, $aab5                                 ; $401a: $dc $b5 $aa
    ld c, b                                       ; $401d: $48
    add e                                         ; $401e: $83
    jr nc, @+$2f                                  ; $401f: $30 $2d

    rst $38                                       ; $4021: $ff
    ld hl, $de2c                                  ; $4022: $21 $2c $de
    ld a, [$174f]                                 ; $4025: $fa $4f $17
    db $d3                                        ; $4028: $d3
    sub a                                         ; $4029: $97
    or $6c                                        ; $402a: $f6 $6c

jr_027_402c:
    inc bc                                        ; $402c: $03
    or b                                          ; $402d: $b0
    or h                                          ; $402e: $b4
    cp [hl]                                       ; $402f: $be
    inc c                                         ; $4030: $0c
    ld hl, sp+$7f                                 ; $4031: $f8 $7f
    rlca                                          ; $4033: $07
    add h                                         ; $4034: $84
    ld bc, $67c7                                  ; $4035: $01 $c7 $67
    or d                                          ; $4038: $b2
    reti                                          ; $4039: $d9


    add hl, hl                                    ; $403a: $29
    ld l, e                                       ; $403b: $6b
    jp nc, $d770                                  ; $403c: $d2 $70 $d7

    xor d                                         ; $403f: $aa
    ld [hl+], a                                   ; $4040: $22
    dec c                                         ; $4041: $0d
    ld [hl], a                                    ; $4042: $77
    push hl                                       ; $4043: $e5
    ld d, a                                       ; $4044: $57
    sub h                                         ; $4045: $94
    db $ed                                        ; $4046: $ed
    ld a, [$0caa]                                 ; $4047: $fa $aa $0c
    cpl                                           ; $404a: $2f
    dec b                                         ; $404b: $05
    ld [$a703], sp                                ; $404c: $08 $03 $a7
    inc h                                         ; $404f: $24
    cp a                                          ; $4050: $bf
    ld a, [c]                                     ; $4051: $f2
    or l                                          ; $4052: $b5
    jr jr_027_402c                                ; $4053: $18 $d7

    cp $bd                                        ; $4055: $fe $bd
    push af                                       ; $4057: $f5
    ld l, c                                       ; $4058: $69
    ld a, h                                       ; $4059: $7c
    ld a, [bc]                                    ; $405a: $0a
    inc a                                         ; $405b: $3c
    ld [hl], a                                    ; $405c: $77
    ld e, [hl]                                    ; $405d: $5e
    sub h                                         ; $405e: $94
    ld [$cf30], a                                 ; $405f: $ea $30 $cf
    dec [hl]                                      ; $4062: $35
    ld l, c                                       ; $4063: $69
    cp d                                          ; $4064: $ba
    ld h, b                                       ; $4065: $60
    daa                                           ; $4066: $27
    ld l, e                                       ; $4067: $6b
    db $d3                                        ; $4068: $d3
    cp $35                                        ; $4069: $fe $35
    ld l, c                                       ; $406b: $69
    ld l, d                                       ; $406c: $6a
    ld a, [c]                                     ; $406d: $f2
    and e                                         ; $406e: $a3
    db $f4                                        ; $406f: $f4
    ld l, c                                       ; $4070: $69
    adc h                                         ; $4071: $8c
    di                                            ; $4072: $f3
    ld a, [c]                                     ; $4073: $f2
    call $9b40                                    ; $4074: $cd $40 $9b
    dec [hl]                                      ; $4077: $35
    ld l, c                                       ; $4078: $69
    and [hl]                                      ; $4079: $a6
    ld a, [c]                                     ; $407a: $f2
    ld [$a703], sp                                ; $407b: $08 $03 $a7
    inc h                                         ; $407e: $24
    ccf                                           ; $407f: $3f
    dec d                                         ; $4080: $15
    cp c                                          ; $4081: $b9
    sub $4b                                       ; $4082: $d6 $4b
    pop bc                                        ; $4084: $c1
    call nc, $9ad7                                ; $4085: $d4 $d7 $9a
    ld bc, $e2af                                  ; $4088: $01 $af $e2
    add b                                         ; $408b: $80
    sub $3d                                       ; $408c: $d6 $3d
    cp [hl]                                       ; $408e: $be
    jp nz, Jump_027_63af                          ; $408f: $c2 $af $63

    ld a, h                                       ; $4092: $7c
    ld c, c                                       ; $4093: $49
    ld l, e                                       ; $4094: $6b
    jp nc, Jump_027_5ac8                          ; $4095: $d2 $c8 $5a

    inc sp                                        ; $4098: $33
    ldh [rHDMA5], a                               ; $4099: $e0 $55
    inc e                                         ; $409b: $1c
    ld h, $d9                                     ; $409c: $26 $d9
    ld a, [hl]                                    ; $409e: $7e
    ld e, b                                       ; $409f: $58
    ei                                            ; $40a0: $fb
    db $ed                                        ; $40a1: $ed
    sub h                                         ; $40a2: $94
    rra                                           ; $40a3: $1f
    cp e                                          ; $40a4: $bb
    ldh a, [$61]                                  ; $40a5: $f0 $61
    ld e, e                                       ; $40a7: $5b
    and l                                         ; $40a8: $a5
    ld a, [hl]                                    ; $40a9: $7e
    add hl, hl                                    ; $40aa: $29
    ld b, b                                       ; $40ab: $40
    jr @-$37                                      ; $40ac: $18 $c7

    ld e, d                                       ; $40ae: $5a
    ld e, a                                       ; $40af: $5f
    sbc d                                         ; $40b0: $9a
    and h                                         ; $40b1: $a4
    ld e, a                                       ; $40b2: $5f
    cp e                                          ; $40b3: $bb
    ld e, c                                       ; $40b4: $59
    ld hl, sp-$24                                 ; $40b5: $f8 $dc
    ld a, c                                       ; $40b7: $79
    ld a, c                                       ; $40b8: $79
    ld b, d                                       ; $40b9: $42
    jr jr_027_40f9                                ; $40ba: $18 $3d

    cp a                                          ; $40bc: $bf
    ld d, $e3                                     ; $40bd: $16 $e3
    jp c, $d73f                                   ; $40bf: $da $3f $d7

    ld a, [$60a5]                                 ; $40c2: $fa $a5 $60
    db $ed                                        ; $40c5: $ed
    ld d, h                                       ; $40c6: $54
    add a                                         ; $40c7: $87
    reti                                          ; $40c8: $d9


    sub d                                         ; $40c9: $92
    pop hl                                        ; $40ca: $e1
    jp z, Jump_027_4fcb                           ; $40cb: $ca $cb $4f

    ld l, e                                       ; $40ce: $6b
    sub l                                         ; $40cf: $95
    inc h                                         ; $40d0: $24
    ld hl, sp-$44                                 ; $40d1: $f8 $bc
    db $fc                                        ; $40d3: $fc
    and d                                         ; $40d4: $a2
    sub $7f                                       ; $40d5: $d6 $7f
    sbc [hl]                                      ; $40d7: $9e
    ld l, e                                       ; $40d8: $6b
    call Call_027_5780                            ; $40d9: $cd $80 $57
    ld [hl], c                                    ; $40dc: $71
    ld b, b                                       ; $40dd: $40
    dec sp                                        ; $40de: $3b
    dec h                                         ; $40df: $25
    ld sp, hl                                     ; $40e0: $f9
    push de                                       ; $40e1: $d5
    rst $38                                       ; $40e2: $ff
    dec sp                                        ; $40e3: $3b
    ld l, e                                       ; $40e4: $6b
    ld e, [hl]                                    ; $40e5: $5e
    ld d, [hl]                                    ; $40e6: $56
    sub h                                         ; $40e7: $94
    jr jr_027_4136                                ; $40e8: $18 $4c

    xor c                                         ; $40ea: $a9
    ld [hl], $fb                                  ; $40eb: $36 $fb
    rst $18                                       ; $40ed: $df
    ld [hl], a                                    ; $40ee: $77
    add hl, bc                                    ; $40ef: $09
    ld l, $fb                                     ; $40f0: $2e $fb
    ld a, c                                       ; $40f2: $79
    ld sp, hl                                     ; $40f3: $f9
    or l                                          ; $40f4: $b5
    ld d, e                                       ; $40f5: $53
    sbc l                                         ; $40f6: $9d
    dec sp                                        ; $40f7: $3b
    dec h                                         ; $40f8: $25

jr_027_40f9:
    ld [hl], $96                                  ; $40f9: $36 $96
    ld d, h                                       ; $40fb: $54
    di                                            ; $40fc: $f3
    or l                                          ; $40fd: $b5
    ld a, a                                       ; $40fe: $7f
    ld c, h                                       ; $40ff: $4c
    inc [hl]                                      ; $4100: $34
    ld [$d52e], sp                                ; $4101: $08 $2e $d5
    sub $bc                                       ; $4104: $d6 $bc
    adc h                                         ; $4106: $8c
    ld d, a                                       ; $4107: $57
    ld h, d                                       ; $4108: $62
    or b                                          ; $4109: $b0
    ld c, e                                       ; $410a: $4b
    di                                            ; $410b: $f3
    ld d, d                                       ; $410c: $52
    dec de                                        ; $410d: $1b
    xor a                                         ; $410e: $af
    cp $82                                        ; $410f: $fe $82
    halt                                          ; $4111: $76
    ld l, d                                       ; $4112: $6a
    pop hl                                        ; $4113: $e1
    ld c, [hl]                                    ; $4114: $4e
    adc c                                         ; $4115: $89
    dec l                                         ; $4116: $2d
    cp h                                          ; $4117: $bc
    call nz, $e5e6                                ; $4118: $c4 $e6 $e5
    rla                                           ; $411b: $17
    ld e, h                                       ; $411c: $5c
    dec h                                         ; $411d: $25
    rra                                           ; $411e: $1f
    sbc h                                         ; $411f: $9c
    ld l, a                                       ; $4120: $6f
    ld l, $9b                                     ; $4121: $2e $9b
    ld [de], a                                    ; $4123: $12
    ld e, e                                       ; $4124: $5b
    ld a, d                                       ; $4125: $7a
    ld a, c                                       ; $4126: $79
    ld e, c                                       ; $4127: $59
    ld sp, $2fc1                                  ; $4128: $31 $c1 $2f
    ld c, h                                       ; $412b: $4c
    ld [bc], a                                    ; $412c: $02
    ld a, a                                       ; $412d: $7f
    ld bc, $0184                                  ; $412e: $01 $84 $01
    xor l                                         ; $4131: $ad
    ld h, $f8                                     ; $4132: $26 $f8
    add l                                         ; $4134: $85
    ld c, c                                       ; $4135: $49

jr_027_4136:
    ldh [$2f], a                                  ; $4136: $e0 $2f
    ret nc                                        ; $4138: $d0

    dec d                                         ; $4139: $15
    inc bc                                        ; $413a: $03
    sub [hl]                                      ; $413b: $96
    pop af                                        ; $413c: $f1
    rla                                           ; $413d: $17
    jp z, $ab2c                                   ; $413e: $ca $2c $ab

    db $d3                                        ; $4141: $d3
    di                                            ; $4142: $f3
    db $d3                                        ; $4143: $d3
    reti                                          ; $4144: $d9


    rst $08                                       ; $4145: $cf
    rrca                                          ; $4146: $0f
    ld a, [hl-]                                   ; $4147: $3a
    rra                                           ; $4148: $1f
    inc hl                                        ; $4149: $23
    jr nz, @+$0e                                  ; $414a: $20 $0c

    and a                                         ; $414c: $a7
    jp c, $5cf6                                   ; $414d: $da $f6 $5c

    rst $20                                       ; $4150: $e7
    push hl                                       ; $4151: $e5
    rst $10                                       ; $4152: $d7
    ld c, [hl]                                    ; $4153: $4e
    ld [hl], l                                    ; $4154: $75
    ldh [$ce], a                                  ; $4155: $e0 $ce
    rl e                                          ; $4157: $cb $13
    jp nz, $3f3d                                  ; $4159: $c2 $3d $3f

jr_027_415c:
    ld b, [hl]                                    ; $415c: $46
    xor $bc                                       ; $415d: $ee $bc
    ld l, b                                       ; $415f: $68
    ld l, l                                       ; $4160: $6d
    cp h                                          ; $4161: $bc
    jp nz, $592e                                  ; $4162: $c2 $2e $59

    ld l, a                                       ; $4165: $6f
    sub b                                         ; $4166: $90
    and d                                         ; $4167: $a2
    ld a, [hl]                                    ; $4168: $7e
    xor c                                         ; $4169: $a9
    add [hl]                                      ; $416a: $86
    halt                                          ; $416b: $76
    ld a, h                                       ; $416c: $7c
    ld h, $1b                                     ; $416d: $26 $1b
    sbc a                                         ; $416f: $9f
    ld d, d                                       ; $4170: $52
    rst $20                                       ; $4171: $e7
    xor [hl]                                      ; $4172: $ae
    ld d, l                                       ; $4173: $55
    ld b, l                                       ; $4174: $45
    ld a, [de]                                    ; $4175: $1a
    add h                                         ; $4176: $84
    ld bc, $f196                                  ; $4177: $01 $96 $f1

jr_027_417a:
    ld a, [bc]                                    ; $417a: $0a
    dec sp                                        ; $417b: $3b
    rst $08                                       ; $417c: $cf
    add b                                         ; $417d: $80
    inc hl                                        ; $417e: $23
    add h                                         ; $417f: $84
    ld c, h                                       ; $4180: $4c
    jr jr_027_41a5                                ; $4181: $18 $22

    add h                                         ; $4183: $84
    cp h                                          ; $4184: $bc
    jr z, jr_027_415c                             ; $4185: $28 $d5

    ld bc, $a761                                  ; $4187: $01 $61 $a7
    inc h                                         ; $418a: $24
    ccf                                           ; $418b: $3f
    dec sp                                        ; $418c: $3b
    ld h, l                                       ; $418d: $65
    cp d                                          ; $418e: $ba
    or [hl]                                       ; $418f: $b6
    ld e, h                                       ; $4190: $5c
    xor b                                         ; $4191: $a8
    adc a                                         ; $4192: $8f
    rst $10                                       ; $4193: $d7

Call_027_4194:
    ld e, b                                       ; $4194: $58
    sbc a                                         ; $4195: $9f
    rla                                           ; $4196: $17
    ld c, c                                       ; $4197: $49
    inc de                                        ; $4198: $13
    sub h                                         ; $4199: $94
    ld a, c                                       ; $419a: $79
    ld sp, hl                                     ; $419b: $f9
    ld sp, $c143                                  ; $419c: $31 $43 $c1
    daa                                           ; $419f: $27

Call_027_41a0:
    ld c, l                                       ; $41a0: $4d
    adc c                                         ; $41a1: $89
    call $e674                                    ; $41a2: $cd $74 $e6

jr_027_41a5:
    cp c                                          ; $41a5: $b9
    sub $0c                                       ; $41a6: $d6 $0c
    ld a, b                                       ; $41a8: $78
    dec d                                         ; $41a9: $15
    rlca                                          ; $41aa: $07
    add h                                         ; $41ab: $84
    ld bc, $d2bd                                  ; $41ac: $01 $bd $d2
    call z, $cbcb                                 ; $41af: $cc $cb $cb
    ld [hl], e                                    ; $41b2: $73
    rla                                           ; $41b3: $17
    and h                                         ; $41b4: $a4
    xor a                                         ; $41b5: $af
    ld a, c                                       ; $41b6: $79
    sbc c                                         ; $41b7: $99
    and a                                         ; $41b8: $a7
    or d                                          ; $41b9: $b2
    xor [hl]                                      ; $41ba: $ae
    jr jr_027_417a                                ; $41bb: $18 $bd

    ld e, $b8                                     ; $41bd: $1e $b8
    db $eb                                        ; $41bf: $eb
    ld hl, $4d6f                                  ; $41c0: $21 $6f $4d
    reti                                          ; $41c3: $d9


    add l                                         ; $41c4: $85
    ret                                           ; $41c5: $c9


    dec c                                         ; $41c6: $0d
    adc d                                         ; $41c7: $8a
    xor a                                         ; $41c8: $af
    cp h                                          ; $41c9: $bc
    inc a                                         ; $41ca: $3c
    ld [hl], a                                    ; $41cb: $77
    ld e, [hl]                                    ; $41cc: $5e
    sub h                                         ; $41cd: $94
    ld [$d26b], a                                 ; $41ce: $ea $6b $d2
    jr nz, @+$0e                                  ; $41d1: $20 $0c

    rst $00                                       ; $41d3: $c7
    ld h, a                                       ; $41d4: $67
    ld [hl-], a                                   ; $41d5: $32
    or h                                          ; $41d6: $b4
    ld d, e                                       ; $41d7: $53
    sub d                                         ; $41d8: $92
    rst $20                                       ; $41d9: $e7
    ld c, $5c                                     ; $41da: $0e $5c

jr_027_41dc:
    sbc e                                         ; $41dc: $9b
    ld d, l                                       ; $41dd: $55
    ld sp, $a7e1                                  ; $41de: $31 $e1 $a7
    call nz, $92c6                                ; $41e1: $c4 $c6 $92
    ld l, d                                       ; $41e4: $6a
    ld a, $5e                                     ; $41e5: $3e $5e
    adc c                                         ; $41e7: $89
    cp l                                          ; $41e8: $bd
    inc l                                         ; $41e9: $2c
    ld l, l                                       ; $41ea: $6d
    ei                                            ; $41eb: $fb
    adc b                                         ; $41ec: $88
    ld a, c                                       ; $41ed: $79
    ld a, c                                       ; $41ee: $79
    ld sp, hl                                     ; $41ef: $f9
    ld a, [de]                                    ; $41f0: $1a
    inc c                                         ; $41f1: $0c
    ld [hl-], a                                   ; $41f2: $32
    db $fc                                        ; $41f3: $fc
    ld d, l                                       ; $41f4: $55
    ld a, [c]                                     ; $41f5: $f2
    rst $18                                       ; $41f6: $df
    cp c                                          ; $41f7: $b9
    ld d, h                                       ; $41f8: $54
    ld e, e                                       ; $41f9: $5b
    dec h                                         ; $41fa: $25
    jp z, $4bc7                                   ; $41fb: $ca $c7 $4b

    or l                                          ; $41fe: $b5
    sub c                                         ; $41ff: $91
    add d                                         ; $4200: $82
    rst $18                                       ; $4201: $df
    add a                                         ; $4202: $87
    and l                                         ; $4203: $a5
    ld l, l                                       ; $4204: $6d
    rst $08                                       ; $4205: $cf
    sra a                                         ; $4206: $cb $2f
    call nc, $eb4b                                ; $4208: $d4 $4b $eb
    xor b                                         ; $420b: $a8
    rla                                           ; $420c: $17
    or h                                          ; $420d: $b4
    ld d, e                                       ; $420e: $53
    sbc $fa                                       ; $420f: $de $fa
    or d                                          ; $4211: $b2
    ldh a, [rNR12]                                ; $4212: $f0 $12
    sbc e                                         ; $4214: $9b
    rla                                           ; $4215: $17
    push af                                       ; $4216: $f5
    ld a, c                                       ; $4217: $79
    ld a, c                                       ; $4218: $79
    ld sp, hl                                     ; $4219: $f9
    add l                                         ; $421a: $85
    scf                                           ; $421b: $37
    jr z, jr_027_41dc                             ; $421c: $28 $be

    or $cf                                        ; $421e: $f6 $cf
    push hl                                       ; $4220: $e5
    dec d                                         ; $4221: $15
    adc h                                         ; $4222: $8c
    db $fc                                        ; $4223: $fc
    ld l, $cd                                     ; $4224: $2e $cd
    rrc a                                         ; $4226: $cb $0f
    ld l, $fb                                     ; $4228: $2e $fb
    ld d, l                                       ; $422a: $55
    add hl, hl                                    ; $422b: $29
    ld [hl], d                                    ; $422c: $72
    ld e, c                                       ; $422d: $59
    ld a, [bc]                                    ; $422e: $0a
    and b                                         ; $422f: $a0
    sbc l                                         ; $4230: $9d
    ld l, d                                       ; $4231: $6a
    db $db                                        ; $4232: $db
    db $e3                                        ; $4233: $e3
    ld a, a                                       ; $4234: $7f
    ld b, c                                       ; $4235: $41
    ld [hl], d                                    ; $4236: $72
    rst $20                                       ; $4237: $e7
    push hl                                       ; $4238: $e5
    add hl, bc                                    ; $4239: $09
    ld h, c                                       ; $423a: $61
    dec a                                         ; $423b: $3d
    jp z, $afcb                                   ; $423c: $ca $cb $af

    ld sp, hl                                     ; $423f: $f9
    ld [hl-], a                                   ; $4240: $32
    sub l                                         ; $4241: $95
    rst $28                                       ; $4242: $ef
    or d                                          ; $4243: $b2

jr_027_4244:
    ld e, $d2                                     ; $4244: $1e $d2
    ld c, h                                       ; $4246: $4c
    adc c                                         ; $4247: $89
    xor l                                         ; $4248: $ad
    cp $df                                        ; $4249: $fe $df
    sbc c                                         ; $424b: $99
    jp hl                                         ; $424c: $e9


    ld [hl], h                                    ; $424d: $74
    pop bc                                        ; $424e: $c1
    dec a                                         ; $424f: $3d
    ld l, d                                       ; $4250: $6a
    rla                                           ; $4251: $17
    xor b                                         ; $4252: $a8
    and $03                                       ; $4253: $e6 $03
    or l                                          ; $4255: $b5
    ld a, a                                       ; $4256: $7f
    ld l, c                                       ; $4257: $69
    db $db                                        ; $4258: $db
    ld l, e                                       ; $4259: $6b
    scf                                           ; $425a: $37
    ld l, e                                       ; $425b: $6b
    jp nc, Jump_027_7c08                          ; $425c: $d2 $08 $7c

    or h                                          ; $425f: $b4
    cp c                                          ; $4260: $b9
    ld l, e                                       ; $4261: $6b
    ld d, l                                       ; $4262: $55
    sub c                                         ; $4263: $91
    ld b, $61                                     ; $4264: $06 $61
    dec l                                         ; $4266: $2d
    cp $9d                                        ; $4267: $fe $9d
    push bc                                       ; $4269: $c5
    ld l, e                                       ; $426a: $6b
    db $fd                                        ; $426b: $fd
    ret c                                         ; $426c: $d8

    ld [hl], b                                    ; $426d: $70
    ld h, a                                       ; $426e: $67
    add hl, de                                    ; $426f: $19
    ld c, e                                       ; $4270: $4b
    xor d                                         ; $4271: $aa
    ld sp, hl                                     ; $4272: $f9
    ld a, b                                       ; $4273: $78
    dec h                                         ; $4274: $25
    sbc a                                         ; $4275: $9f
    rst $20                                       ; $4276: $e7
    adc d                                         ; $4277: $8a
    ld e, d                                       ; $4278: $5a
    ld a, a                                       ; $4279: $7f
    ld b, c                                       ; $427a: $41
    xor [hl]                                      ; $427b: $ae
    xor l                                         ; $427c: $ad
    ld d, l                                       ; $427d: $55
    ld a, l                                       ; $427e: $7d
    halt                                          ; $427f: $76
    jp z, Jump_027_45c0                           ; $4280: $ca $c0 $45

    add e                                         ; $4283: $83
    jr nz, jr_027_4244                            ; $4284: $20 $be

    nop                                           ; $4286: $00
    jp nz, $f196                                  ; $4287: $c2 $96 $f1

    ld a, [bc]                                    ; $428a: $0a
    db $e3                                        ; $428b: $e3
    ld d, e                                       ; $428c: $53
    db $e4                                        ; $428d: $e4
    ld a, $9b                                     ; $428e: $3e $9b
    or [hl]                                       ; $4290: $b6
    db $d3                                        ; $4291: $d3
    ld hl, sp-$66                                 ; $4292: $f8 $9a
    inc [hl]                                      ; $4294: $34
    call c, $aab5                                 ; $4295: $dc $b5 $aa
    ld c, b                                       ; $4298: $48
    add e                                         ; $4299: $83
    jr nc, jr_027_42d9                            ; $429a: $30 $3d

    ld l, d                                       ; $429c: $6a
    rla                                           ; $429d: $17
    xor b                                         ; $429e: $a8
    and $b3                                       ; $429f: $e6 $b3
    push af                                       ; $42a1: $f5
    jp z, Jump_027_5ed2                           ; $42a2: $ca $d2 $5e

    di                                            ; $42a5: $f3
    ld h, l                                       ; $42a6: $65
    xor [hl]                                      ; $42a7: $ae
    inc bc                                        ; $42a8: $03
    dec [hl]                                      ; $42a9: $35
    db $e4                                        ; $42aa: $e4
    cpl                                           ; $42ab: $2f
    ld c, e                                       ; $42ac: $4b
    db $db                                        ; $42ad: $db
    sbc [hl]                                      ; $42ae: $9e
    ld [de], a                                    ; $42af: $12
    ld e, e                                       ; $42b0: $5b
    xor b                                         ; $42b1: $a8
    push af                                       ; $42b2: $f5
    ld e, a                                       ; $42b3: $5f
    add $da                                       ; $42b4: $c6 $da
    ld e, d                                       ; $42b6: $5a
    dec [hl]                                      ; $42b7: $35
    sub b                                         ; $42b8: $90
    bit 4, [hl]                                   ; $42b9: $cb $66
    srl e                                         ; $42bb: $cb $3b
    ld [hl], a                                    ; $42bd: $77
    xor l                                         ; $42be: $ad
    ld a, [hl+]                                   ; $42bf: $2a
    jp nc, $0c20                                  ; $42c0: $d2 $20 $0c

    rst $00                                       ; $42c3: $c7
    ld e, d                                       ; $42c4: $5a
    ld e, a                                       ; $42c5: $5f
    sbc d                                         ; $42c6: $9a
    and h                                         ; $42c7: $a4
    rst $18                                       ; $42c8: $df
    ld b, a                                       ; $42c9: $47
    ld hl, sp+$69                                 ; $42ca: $f8 $69
    sub h                                         ; $42cc: $94
    ld d, a                                       ; $42cd: $57
    sub $2c                                       ; $42ce: $d6 $2c
    ld d, h                                       ; $42d0: $54
    or $bb                                        ; $42d1: $f6 $bb

Jump_027_42d3:
    cp [hl]                                       ; $42d3: $be
    ld c, e                                       ; $42d4: $4b
    ld [hl], b                                    ; $42d5: $70
    reti                                          ; $42d6: $d9


    inc hl                                        ; $42d7: $23
    inc c                                         ; $42d8: $0c

jr_027_42d9:
    cp l                                          ; $42d9: $bd
    ld e, [hl]                                    ; $42da: $5e
    add $a7                                       ; $42db: $c6 $a7
    ret nz                                        ; $42dd: $c0

    rst $08                                       ; $42de: $cf
    adc e                                         ; $42df: $8b
    jp nc, Jump_027_794e                          ; $42e0: $d2 $4e $79

    db $eb                                        ; $42e3: $eb
    adc l                                         ; $42e4: $8d
    pop af                                        ; $42e5: $f1
    ld l, e                                       ; $42e6: $6b
    jr nc, jr_027_4338                            ; $42e7: $30 $4f

    ld h, l                                       ; $42e9: $65
    or e                                          ; $42ea: $b3
    ld d, e                                       ; $42eb: $53
    ld d, $bc                                     ; $42ec: $16 $bc
    ei                                            ; $42ee: $fb
    and l                                         ; $42ef: $a5
    jp c, $8262                                   ; $42f0: $da $62 $82

    ld [hl], e                                    ; $42f3: $73
    rst $10                                       ; $42f4: $d7
    xor d                                         ; $42f5: $aa
    ld [hl+], a                                   ; $42f6: $22
    ld c, l                                       ; $42f7: $4d
    rla                                           ; $42f8: $17
    inc c                                         ; $42f9: $0c
    dec a                                         ; $42fa: $3d
    cp a                                          ; $42fb: $bf
    ld d, $e3                                     ; $42fc: $16 $e3
    jp c, Jump_000_2f3f                           ; $42fe: $da $3f $2f

    cpl                                           ; $4301: $2f
    ccf                                           ; $4302: $3f
    ret z                                         ; $4303: $c8

    inc h                                         ; $4304: $24
    add h                                         ; $4305: $84
    ret nc                                        ; $4306: $d0

    or l                                          ; $4307: $b5
    rst $30                                       ; $4308: $f7
    sub $97                                       ; $4309: $d6 $97
    ld h, $e9                                     ; $430b: $26 $e9
    rlca                                          ; $430d: $07
    xor [hl]                                      ; $430e: $ae
    dec c                                         ; $430f: $0d
    call z, Call_027_7833                         ; $4310: $cc $33 $78
    cpl                                           ; $4313: $2f
    cpl                                           ; $4314: $2f
    ld [$c703], sp                                ; $4315: $08 $03 $c7
    inc h                                         ; $4318: $24
    push de                                       ; $4319: $d5
    ld a, h                                       ; $431a: $7c
    ld c, h                                       ; $431b: $4c
    inc [hl]                                      ; $431c: $34
    ld e, b                                       ; $431d: $58
    di                                            ; $431e: $f3
    ld [hl-], a                                   ; $431f: $32
    ei                                            ; $4320: $fb
    rst $18                                       ; $4321: $df
    ld de, $9042                                  ; $4322: $11 $42 $90
    pop hl                                        ; $4325: $e1
    ld a, e                                       ; $4326: $7b
    cp c                                          ; $4327: $b9
    ld d, h                                       ; $4328: $54
    ld e, e                                       ; $4329: $5b
    ld a, b                                       ; $432a: $78
    add e                                         ; $432b: $83
    ld [c], a                                     ; $432c: $e2
    dec bc                                        ; $432d: $0b
    ld b, h                                       ; $432e: $44
    db $db                                        ; $432f: $db
    xor e                                         ; $4330: $ab
    ld a, l                                       ; $4331: $7d
    adc b                                         ; $4332: $88
    jr nc, jr_027_439c                            ; $4333: $30 $67

    ld [hl], h                                    ; $4335: $74
    and $e5                                       ; $4336: $e6 $e5

jr_027_4338:
    pop hl                                        ; $4338: $e1
    rlca                                          ; $4339: $07
    xor [hl]                                      ; $433a: $ae
    ld d, a                                       ; $433b: $57
    add b                                         ; $433c: $80
    dec sp                                        ; $433d: $3b
    dec h                                         ; $433e: $25
    ld [hl], $fe                                  ; $433f: $36 $fe
    ld l, e                                       ; $4341: $6b
    ld sp, $fdae                                  ; $4342: $31 $ae $fd
    cp e                                          ; $4345: $bb
    or h                                          ; $4346: $b4
    sub $0c                                       ; $4347: $d6 $0c
    ld a, b                                       ; $4349: $78
    dec d                                         ; $434a: $15
    add a                                         ; $434b: $87
    ld [hl], l                                    ; $434c: $75
    inc h                                         ; $434d: $24

Call_027_434e:
    dec sp                                        ; $434e: $3b
    cpl                                           ; $434f: $2f
    ld [$3d03], sp                                ; $4350: $08 $03 $3d
    jp z, $becf                                   ; $4353: $ca $cf $be

    ld [bc], a                                    ; $4356: $02
    or l                                          ; $4357: $b5
    dec [hl]                                      ; $4358: $35
    xor a                                         ; $4359: $af
    ld [hl-], a                                   ; $435a: $32
    ld [hl], b                                    ; $435b: $70
    jp $1c9e                                      ; $435c: $c3 $9e $1c


    cp b                                          ; $435f: $b8
    db $eb                                        ; $4360: $eb
    ld l, $69                                     ; $4361: $2e $69
    ccf                                           ; $4363: $3f
    ld b, b                                       ; $4364: $40
    jp z, $ae4e                                   ; $4365: $ca $4e $ae

    adc [hl]                                      ; $4368: $8e
    ld c, a                                       ; $4369: $4f
    jp nc, Jump_027_6340                          ; $436a: $d2 $40 $63

    ld b, h                                       ; $436d: $44
    jr @+$3f                                      ; $436e: $18 $3d

    ccf                                           ; $4370: $3f
    ld d, [hl]                                    ; $4371: $56
    add hl, de                                    ; $4372: $19
    cp $3c                                        ; $4373: $fe $3c
    rst $10                                       ; $4375: $d7
    sbc d                                         ; $4376: $9a
    ld bc, $e2af                                  ; $4377: $01 $af $e2
    add b                                         ; $437a: $80
    sub $a3                                       ; $437b: $d6 $a3
    db $fc                                        ; $437d: $fc
    ld e, d                                       ; $437e: $5a
    ld d, d                                       ; $437f: $52
    db $fc                                        ; $4380: $fc
    ld d, d                                       ; $4381: $52
    or b                                          ; $4382: $b0
    ld l, [hl]                                    ; $4383: $6e
    cpl                                           ; $4384: $2f
    rra                                           ; $4385: $1f
    ld h, $35                                     ; $4386: $26 $35
    ld l, e                                       ; $4388: $6b
    ld a, a                                       ; $4389: $7f
    ld [hl], b                                    ; $438a: $70
    add hl, bc                                    ; $438b: $09
    ld b, $99                                     ; $438c: $06 $99
    call nz, $5f1d                                ; $438e: $c4 $1d $5f
    ld e, [hl]                                    ; $4391: $5e
    ld a, [hl]                                    ; $4392: $7e
    ld c, l                                       ; $4393: $4d
    sbc d                                         ; $4394: $9a
    ld e, d                                       ; $4395: $5a
    adc h                                         ; $4396: $8c
    ld l, e                                       ; $4397: $6b
    rst $38                                       ; $4398: $ff
    inc d                                         ; $4399: $14
    ldh [rTMA], a                                 ; $439a: $e0 $06

jr_027_439c:
    db $f4                                        ; $439c: $f4
    ld l, h                                       ; $439d: $6c
    sbc [hl]                                      ; $439e: $9e
    ld c, e                                       ; $439f: $4b
    ld a, [$bda5]                                 ; $43a0: $fa $a5 $bd
    inc [hl]                                      ; $43a3: $34
    or d                                          ; $43a4: $b2
    sub d                                         ; $43a5: $92
    ld b, $1e                                     ; $43a6: $06 $1e
    ld c, $df                                     ; $43a8: $0e $df
    pop af                                        ; $43aa: $f1
    jp nc, $f6d8                                  ; $43ab: $d2 $d8 $f6

    dec h                                         ; $43ae: $25
    sub [hl]                                      ; $43af: $96
    jp nz, $ab5d                                  ; $43b0: $c2 $5d $ab

    or c                                          ; $43b3: $b1
    db $ed                                        ; $43b4: $ed
    ld hl, sp+$1d                                 ; $43b5: $f8 $1d
    ld h, e                                       ; $43b7: $63
    db $db                                        ; $43b8: $db
    call c, $ae9d                                 ; $43b9: $dc $9d $ae
    sub $a7                                       ; $43bc: $d6 $a7
    ld a, [hl+]                                   ; $43be: $2a
    ld a, [hl+]                                   ; $43bf: $2a
    rst $08                                       ; $43c0: $cf
    ld e, l                                       ; $43c1: $5d
    jp z, Jump_027_625a                           ; $43c2: $ca $5a $62

    db $e3                                        ; $43c5: $e3
    push hl                                       ; $43c6: $e5
    push hl                                       ; $43c7: $e5
    ld [de], a                                    ; $43c8: $12
    ld e, d                                       ; $43c9: $5a
    xor a                                         ; $43ca: $af
    inc [hl]                                      ; $43cb: $34
    or d                                          ; $43cc: $b2
    sub d                                         ; $43cd: $92
    ld b, $7e                                     ; $43ce: $06 $7e
    db $fc                                        ; $43d0: $fc
    adc l                                         ; $43d1: $8d
    ld [hl], c                                    ; $43d2: $71
    db $ed                                        ; $43d3: $ed
    rra                                           ; $43d4: $1f
    ld e, a                                       ; $43d5: $5f
    ld e, [hl]                                    ; $43d6: $5e
    ld a, [hl]                                    ; $43d7: $7e
    ld c, l                                       ; $43d8: $4d
    sbc d                                         ; $43d9: $9a
    ld b, c                                       ; $43da: $41
    db $fc                                        ; $43db: $fc
    rst $28                                       ; $43dc: $ef
    ld c, h                                       ; $43dd: $4c
    adc c                                         ; $43de: $89
    dec c                                         ; $43df: $0d
    call c, Call_000_06b0                         ; $43e0: $dc $b0 $06
    db $ed                                        ; $43e3: $ed
    jr z, @+$64                                   ; $43e4: $28 $62

    di                                            ; $43e6: $f3
    ld a, [c]                                     ; $43e7: $f2
    dec hl                                        ; $43e8: $2b
    ld l, c                                       ; $43e9: $69
    ldh [$d7], a                                  ; $43ea: $e0 $d7
    ret                                           ; $43ec: $c9


    ld c, e                                       ; $43ed: $4b
    ld c, $6b                                     ; $43ee: $0e $6b
    jp nc, $55ec                                  ; $43f0: $d2 $ec $55

    ld l, b                                       ; $43f3: $68
    and c                                         ; $43f4: $a1
    ld [hl], $e3                                  ; $43f5: $36 $e3
    cpl                                           ; $43f7: $2f
    call $afcb                                    ; $43f8: $cd $cb $af
    dec [hl]                                      ; $43fb: $35
    dec c                                         ; $43fc: $0d
    db $fc                                        ; $43fd: $fc
    cp d                                          ; $43fe: $ba
    sbc c                                         ; $43ff: $99
    ld c, $c2                                     ; $4400: $0e $c2
    db $dd                                        ; $4402: $dd
    ld bc, $211c                                  ; $4403: $01 $1c $21
    call nz, $f517                                ; $4406: $c4 $17 $f5
    xor c                                         ; $4409: $a9
    db $fc                                        ; $440a: $fc
    ld c, d                                       ; $440b: $4a
    ld a, [de]                                    ; $440c: $1a
    ld hl, sp+$75                                 ; $440d: $f8 $75
    ld a, [c]                                     ; $440f: $f2
    sub d                                         ; $4410: $92
    ld b, e                                       ; $4411: $43
    ld d, a                                       ; $4412: $57
    inc c                                         ; $4413: $0c
    cp l                                          ; $4414: $bd
    jp nc, $55ec                                  ; $4415: $d2 $ec $55

    ld l, b                                       ; $4418: $68
    ld e, [hl]                                    ; $4419: $5e
    ld a, $5c                                     ; $441a: $3e $5c
    cp e                                          ; $441c: $bb
    add hl, de                                    ; $441d: $19
    bit 1, e                                      ; $441e: $cb $4b
    pop bc                                        ; $4420: $c1
    ld hl, sp-$71                                 ; $4421: $f8 $8f
    sub c                                         ; $4423: $91
    cp e                                          ; $4424: $bb
    sub h                                         ; $4425: $94
    push bc                                       ; $4426: $c5
    add h                                         ; $4427: $84
    sbc a                                         ; $4428: $9f
    sub a                                         ; $4429: $97
    rrca                                          ; $442a: $0f
    rst $10                                       ; $442b: $d7
    ld l, [hl]                                    ; $442c: $6e
    sub $96                                       ; $442d: $d6 $96
    rst $10                                       ; $442f: $d7
    ld a, [$60a5]                                 ; $4430: $fa $a5 $60
    ld e, [hl]                                    ; $4433: $5e
    ld a, [hl]                                    ; $4434: $7e
    ld h, d                                       ; $4435: $62

Call_027_4436:
    ld [c], a                                     ; $4436: $e2
    inc bc                                        ; $4437: $03
    ld e, d                                       ; $4438: $5a
    adc a                                         ; $4439: $8f
    ld a, [c]                                     ; $443a: $f2
    ld c, l                                       ; $443b: $4d
    ld c, l                                       ; $443c: $4d
    ld a, [hl]                                    ; $443d: $7e
    jp z, $b3d8                                   ; $443e: $ca $d8 $b3

    sbc c                                         ; $4441: $99
    adc $d4                                       ; $4442: $ce $d4
    rst $20                                       ; $4444: $e7
    push hl                                       ; $4445: $e5
    rst $30                                       ; $4446: $f7
    call nz, $f696                                ; $4447: $c4 $96 $f6
    cp h                                          ; $444a: $bc
    db $fc                                        ; $444b: $fc
    sbc d                                         ; $444c: $9a
    ld d, a                                       ; $444d: $57
    sbc c                                         ; $444e: $99
    ld [de], a                                    ; $444f: $12
    sbc e                                         ; $4450: $9b
    sub a                                         ; $4451: $97
    ld e, a                                       ; $4452: $5f

jr_027_4453:
    ld c, c                                       ; $4453: $49
    inc bc                                        ; $4454: $03
    ccf                                           ; $4455: $3f
    cp $7a                                        ; $4456: $fe $7a
    sbc c                                         ; $4458: $99
    sub a                                         ; $4459: $97
    ld e, a                                       ; $445a: $5f
    sbc b                                         ; $445b: $98
    ldh [$eb], a                                  ; $445c: $e0 $eb
    db $e4                                        ; $445e: $e4
    dec h                                         ; $445f: $25
    add a                                         ; $4460: $87
    pop af                                        ; $4461: $f1
    sub a                                         ; $4462: $97
    ld h, b                                       ; $4463: $60
    ld e, [hl]                                    ; $4464: $5e
    ld a, [hl]                                    ; $4465: $7e
    db $dd                                        ; $4466: $dd
    ld c, h                                       ; $4467: $4c
    rlca                                          ; $4468: $07
    ld h, c                                       ; $4469: $61
    xor l                                         ; $446a: $ad
    ret                                           ; $446b: $c9


    ld c, a                                       ; $446c: $4f
    push hl                                       ; $446d: $e5
    rst $00                                       ; $446e: $c7
    rst $38                                       ; $446f: $ff
    ld l, d                                       ; $4470: $6a
    sub b                                         ; $4471: $90
    ld [c], a                                     ; $4472: $e2
    rst $08                                       ; $4473: $cf
    ld l, d                                       ; $4474: $6a
    ld e, l                                       ; $4475: $5d
    ld sp, $7996                                  ; $4476: $31 $96 $79
    cp c                                          ; $4479: $b9
    ld d, h                                       ; $447a: $54
    rra                                           ; $447b: $1f
    rst $38                                       ; $447c: $ff
    dec hl                                        ; $447d: $2b
    ld l, d                                       ; $447e: $6a
    db $fd                                        ; $447f: $fd
    ld a, c                                       ; $4480: $79
    adc [hl]                                      ; $4481: $8e
    sub a                                         ; $4482: $97
    rlca                                          ; $4483: $07
    adc a                                         ; $4484: $8f
    ccf                                           ; $4485: $3f
    sbc l                                         ; $4486: $9d
    ld c, e                                       ; $4487: $4b
    add $88                                       ; $4488: $c6 $88
    jr nc, jr_027_4453                            ; $448a: $30 $c7

    ld h, l                                       ; $448c: $65
    adc h                                         ; $448d: $8c
    ret                                           ; $448e: $c9


    cpl                                           ; $448f: $2f
    ld a, h                                       ; $4490: $7c
    xor $3a                                       ; $4491: $ee $3a
    pop af                                        ; $4493: $f1
    dec d                                         ; $4494: $15
    ld e, $61                                     ; $4495: $1e $61
    sub [hl]                                      ; $4497: $96
    sub l                                         ; $4498: $95
    db $ec                                        ; $4499: $ec
    db $fc                                        ; $449a: $fc
    cp h                                          ; $449b: $bc
    ld a, h                                       ; $449c: $7c
    or e                                          ; $449d: $b3
    adc [hl]                                      ; $449e: $8e
    pop af                                        ; $449f: $f1
    add hl, de                                    ; $44a0: $19
    ret c                                         ; $44a1: $d8

    and l                                         ; $44a2: $a5
    ld a, c                                       ; $44a3: $79
    ld sp, hl                                     ; $44a4: $f9
    add c                                         ; $44a5: $81
    add [hl]                                      ; $44a6: $86
    cp a                                          ; $44a7: $bf
    sub d                                         ; $44a8: $92
    ld b, $9e                                     ; $44a9: $06 $9e
    dec sp                                        ; $44ab: $3b
    dec h                                         ; $44ac: $25
    or [hl]                                       ; $44ad: $b6
    ld d, e                                       ; $44ae: $53
    ld c, [hl]                                    ; $44af: $4e
    db $ed                                        ; $44b0: $ed
    or c                                          ; $44b1: $b1
    sub [hl]                                      ; $44b2: $96
    ret c                                         ; $44b3: $d8

    ld a, b                                       ; $44b4: $78
    ld a, c                                       ; $44b5: $79
    cp c                                          ; $44b6: $b9
    add h                                         ; $44b7: $84
    sub $a3                                       ; $44b8: $d6 $a3
    ld a, h                                       ; $44ba: $7c
    inc sp                                        ; $44bb: $33
    sub l                                         ; $44bc: $95
    and a                                         ; $44bd: $a7
    sbc d                                         ; $44be: $9a
    ld c, a                                       ; $44bf: $4f
    ld h, e                                       ; $44c0: $63
    ld e, h                                       ; $44c1: $5c
    ld e, e                                       ; $44c2: $5b
    add hl, de                                    ; $44c3: $19
    ld [hl], a                                    ; $44c4: $77
    ld l, l                                       ; $44c5: $6d
    db $e3                                        ; $44c6: $e3
    add e                                         ; $44c7: $83
    inc c                                         ; $44c8: $0c
    ld a, a                                       ; $44c9: $7f
    and h                                         ; $44ca: $a4
    ldh [$cd], a                                  ; $44cb: $e0 $cd
    xor d                                         ; $44cd: $aa
    and d                                         ; $44ce: $a2
    and d                                         ; $44cf: $a2
    sub l                                         ; $44d0: $95
    cp a                                          ; $44d1: $bf
    ret nz                                        ; $44d2: $c0

    ld [c], a                                     ; $44d3: $e2
    or l                                          ; $44d4: $b5
    cp $bc                                        ; $44d5: $fe $bc
    cp h                                          ; $44d7: $bc
    inc a                                         ; $44d8: $3c
    jp nz, $cbc7                                  ; $44d9: $c2 $c7 $cb

    cp a                                          ; $44dc: $bf
    ld e, a                                       ; $44dd: $5f
    ld a, [bc]                                    ; $44de: $0a
    add b                                         ; $44df: $80
    dec sp                                        ; $44e0: $3b
    ei                                            ; $44e1: $fb
    ld a, [bc]                                    ; $44e2: $0a
    ld hl, sp-$66                                 ; $44e3: $f8 $9a
    ld d, a                                       ; $44e5: $57
    add hl, de                                    ; $44e6: $19
    cp b                                          ; $44e7: $b8
    ld h, c                                       ; $44e8: $61
    ld c, a                                       ; $44e9: $4f
    ld c, $68                                     ; $44ea: $0e $68
    sub [hl]                                      ; $44ec: $96
    ld l, c                                       ; $44ed: $69
    cp b                                          ; $44ee: $b8
    and e                                         ; $44ef: $a3
    ld h, d                                       ; $44f0: $62
    db $db                                        ; $44f1: $db
    ret nz                                        ; $44f2: $c0

    adc [hl]                                      ; $44f3: $8e
    ld sp, $3b61                                  ; $44f4: $31 $61 $3b
    ld a, $4b                                     ; $44f7: $3e $4b
    ld a, c                                       ; $44f9: $79
    xor $5a                                       ; $44fa: $ee $5a
    ld e, a                                       ; $44fc: $5f
    ld e, c                                       ; $44fd: $59
    xor b                                         ; $44fe: $a8
    ldh [$2f], a                                  ; $44ff: $e0 $2f
    ld c, e                                       ; $4501: $4b
    ld a, e                                       ; $4502: $7b
    xor l                                         ; $4503: $ad
    add hl, de                                    ; $4504: $19
    ldh a, [$2a]                                  ; $4505: $f0 $2a
    ld c, $68                                     ; $4507: $0e $68
    db $dd                                        ; $4509: $dd
    db $e3                                        ; $450a: $e3
    dec hl                                        ; $450b: $2b
    db $fc                                        ; $450c: $fc
    db $ec                                        ; $450d: $ec
    ld c, e                                       ; $450e: $4b
    ld l, h                                       ; $450f: $6c
    ld c, l                                       ; $4510: $4d
    ld a, [de]                                    ; $4511: $1a
    sbc c                                         ; $4512: $99
    ld l, e                                       ; $4513: $6b
    dec sp                                        ; $4514: $3b
    cp $14                                        ; $4515: $fe $14
    ld b, $99                                     ; $4517: $06 $99
    inc [hl]                                      ; $4519: $34
    add l                                         ; $451a: $85
    dec [hl]                                      ; $451b: $35
    ld l, c                                       ; $451c: $69
    and [hl]                                      ; $451d: $a6
    ld a, [c]                                     ; $451e: $f2
    add e                                         ; $451f: $83
    inc d                                         ; $4520: $14
    ld a, a                                       ; $4521: $7f
    or [hl]                                       ; $4522: $b6
    ld c, e                                       ; $4523: $4b
    sbc [hl]                                      ; $4524: $9e
    ld l, e                                       ; $4525: $6b
    jp nc, Jump_027_4ac8                          ; $4526: $d2 $c8 $4a

    ld a, [de]                                    ; $4529: $1a
    ld a, b                                       ; $452a: $78
    add h                                         ; $452b: $84
    ld bc, $c07d                                  ; $452c: $01 $7d $c0
    and l                                         ; $452f: $a5
    ldh [rHDMA2], a                               ; $4530: $e0 $52
    ret nc                                        ; $4532: $d0

    rst $20                                       ; $4533: $e7
    adc $ed                                       ; $4534: $ce $ed
    sub l                                         ; $4536: $95
    ld h, [hl]                                    ; $4537: $66
    sub l                                         ; $4538: $95
    jp nc, $ffea                                  ; $4539: $d2 $ea $ff

    sbc l                                         ; $453c: $9d
    dec [hl]                                      ; $453d: $35
    ld l, c                                       ; $453e: $69
    ld h, h                                       ; $453f: $64
    db $ed                                        ; $4540: $ed
    db $e4                                        ; $4541: $e4
    db $e3                                        ; $4542: $e3
    dec bc                                        ; $4543: $0b
    xor h                                         ; $4544: $ac
    dec e                                         ; $4545: $1d
    or l                                          ; $4546: $b5
    xor d                                         ; $4547: $aa
    ld [hl], e                                    ; $4548: $73
    ld sp, $d2bd                                  ; $4549: $31 $bd $d2
    ret z                                         ; $454c: $c8

    inc a                                         ; $454d: $3c
    dec sp                                        ; $454e: $3b
    dec hl                                        ; $454f: $2b
    ld [$8830], a                                 ; $4550: $ea $30 $88
    rst $38                                       ; $4553: $ff
    push af                                       ; $4554: $f5
    add hl, hl                                    ; $4555: $29
    or c                                          ; $4556: $b1
    cp c                                          ; $4557: $b9
    add $c8                                       ; $4558: $c6 $c8
    push bc                                       ; $455a: $c5
    rst $00                                       ; $455b: $c7
    and l                                         ; $455c: $a5
    call z, $0b52                                 ; $455d: $cc $52 $0b
    rst $20                                       ; $4560: $e7
    push hl                                       ; $4561: $e5
    rst $10                                       ; $4562: $d7
    sbc d                                         ; $4563: $9a
    ld bc, $e2af                                  ; $4564: $01 $af $e2
    or b                                          ; $4567: $b0
    sub [hl]                                      ; $4568: $96
    inc d                                         ; $4569: $14
    cp a                                          ; $456a: $bf
    inc d                                         ; $456b: $14
    xor h                                         ; $456c: $ac
    ld d, l                                       ; $456d: $55
    dec e                                         ; $456e: $1d
    inc bc                                        ; $456f: $03
    ld b, a                                       ; $4570: $47
    ld de, $659b                                  ; $4571: $11 $9b $65
    sub l                                         ; $4574: $95
    jp nc, $ed2a                                  ; $4575: $d2 $2a $ed

    call z, $87cb                                 ; $4578: $cc $cb $87
    db $d3                                        ; $457b: $d3
    jr jr_027_458f                                ; $457c: $18 $11

    ld b, $3d                                     ; $457e: $06 $3d
    jp z, $d7cb                                   ; $4580: $ca $cb $d7

    ld h, b                                       ; $4583: $60
    sub h                                         ; $4584: $94
    ld e, [hl]                                    ; $4585: $5e
    ld l, $05                                     ; $4586: $2e $05
    dec hl                                        ; $4588: $2b
    sub a                                         ; $4589: $97
    or c                                          ; $458a: $b1
    and a                                         ; $458b: $a7
    ld e, l                                       ; $458c: $5d
    ld e, d                                       ; $458d: $5a
    sub e                                         ; $458e: $93

jr_027_458f:
    ld b, [hl]                                    ; $458f: $46
    ld d, [hl]                                    ; $4590: $56
    ld e, [hl]                                    ; $4591: $5e
    add hl, de                                    ; $4592: $19
    ld b, $3d                                     ; $4593: $06 $3d
    jp z, Jump_000_25af                           ; $4595: $ca $af $25

    push bc                                       ; $4598: $c5
    cpl                                           ; $4599: $2f
    dec b                                         ; $459a: $05
    ld l, e                                       ; $459b: $6b
    ld d, l                                       ; $459c: $55
    ld e, a                                       ; $459d: $5f
    and l                                         ; $459e: $a5
    ld d, h                                       ; $459f: $54
    di                                            ; $45a0: $f3
    pop bc                                        ; $45a1: $c1
    ccf                                           ; $45a2: $3f
    rla                                           ; $45a3: $17
    inc bc                                        ; $45a4: $03
    dec l                                         ; $45a5: $2d
    add hl, sp                                    ; $45a6: $39
    sub a                                         ; $45a7: $97
    ld h, [hl]                                    ; $45a8: $66
    pop hl                                        ; $45a9: $e1
    cpl                                           ; $45aa: $2f
    ld l, c                                       ; $45ab: $69
    ld c, d                                       ; $45ac: $4a
    ld l, h                                       ; $45ad: $6c
    sub [hl]                                      ; $45ae: $96
    ld e, d                                       ; $45af: $5a
    adc h                                         ; $45b0: $8c
    di                                            ; $45b1: $f3
    adc a                                         ; $45b2: $8f
    ld [hl], c                                    ; $45b3: $71
    ld c, l                                       ; $45b4: $4d
    ld a, [de]                                    ; $45b5: $1a
    inc c                                         ; $45b6: $0c
    dec a                                         ; $45b7: $3d
    set 1, e                                      ; $45b8: $cb $cb
    xor a                                         ; $45ba: $af
    ld c, c                                       ; $45bb: $49
    or e                                          ; $45bc: $b3
    inc [hl]                                      ; $45bd: $34
    ld b, c                                       ; $45be: $41
    pop af                                        ; $45bf: $f1

Jump_027_45c0:
    ld a, c                                       ; $45c0: $79
    xor [hl]                                      ; $45c1: $ae
    db $fd                                        ; $45c2: $fd
    xor b                                         ; $45c3: $a8
    add [hl]                                      ; $45c4: $86
    ld bc, $8bc7                                  ; $45c5: $01 $c7 $8b
    ld d, d                                       ; $45c8: $52
    ldh a, [$c2]                                  ; $45c9: $f0 $c2
    ld e, l                                       ; $45cb: $5d
    db $eb                                        ; $45cc: $eb
    ld c, e                                       ; $45cd: $4b
    ld a, b                                       ; $45ce: $78
    sub e                                         ; $45cf: $93
    cp [hl]                                       ; $45d0: $be
    dec bc                                        ; $45d1: $0b
    ld b, $c7                                     ; $45d2: $06 $c7
    ld c, e                                       ; $45d4: $4b
    ld h, e                                       ; $45d5: $63
    db $db                                        ; $45d6: $db
    sub a                                         ; $45d7: $97
    ld e, b                                       ; $45d8: $58
    ld c, d                                       ; $45d9: $4a
    rla                                           ; $45da: $17
    inc c                                         ; $45db: $0c
    db $dd                                        ; $45dc: $dd
    db $d3                                        ; $45dd: $d3
    db $fd                                        ; $45de: $fd
    add l                                         ; $45df: $85
    cp e                                          ; $45e0: $bb
    ld d, [hl]                                    ; $45e1: $56
    dec d                                         ; $45e2: $15

jr_027_45e3:
    ld l, c                                       ; $45e3: $69
    cp d                                          ; $45e4: $ba
    ld h, b                                       ; $45e5: $60
    and a                                         ; $45e6: $a7

jr_027_45e7:
    and h                                         ; $45e7: $a4
    xor a                                         ; $45e8: $af
    dec h                                         ; $45e9: $25
    ld [hl], $5e                                  ; $45ea: $36 $5e
    ld e, [hl]                                    ; $45ec: $5e
    ld l, $71                                     ; $45ed: $2e $71
    ld b, a                                       ; $45ef: $47
    jp hl                                         ; $45f0: $e9


Call_027_45f1:
    ld l, e                                       ; $45f1: $6b

jr_027_45f2:
    adc c                                         ; $45f2: $89
    adc l                                         ; $45f3: $8d
    sub a                                         ; $45f4: $97
    sub a                                         ; $45f5: $97
    ld c, e                                       ; $45f6: $4b
    ld [$0c21], sp                                ; $45f7: $08 $21 $0c
    dec a                                         ; $45fa: $3d
    ccf                                           ; $45fb: $3f
    ld b, [hl]                                    ; $45fc: $46
    xor $ae                                       ; $45fd: $ee $ae
    cp l                                          ; $45ff: $bd
    ld h, $4d                                     ; $4600: $26 $4d
    ld c, l                                       ; $4602: $4d
    ld a, [hl]                                    ; $4603: $7e
    ld h, b                                       ; $4604: $60
    db $e4                                        ; $4605: $e4
    ld de, $ed42                                  ; $4606: $11 $42 $ed
    ld [hl], a                                    ; $4609: $77
    ld a, a                                       ; $460a: $7f
    ld e, c                                       ; $460b: $59
    ei                                            ; $460c: $fb
    ld [hl], a                                    ; $460d: $77
    db $fc                                        ; $460e: $fc
    jp hl                                         ; $460f: $e9


    cp l                                          ; $4610: $bd
    adc [hl]                                      ; $4611: $8e

jr_027_4612:
    dec sp                                        ; $4612: $3b
    adc $72                                       ; $4613: $ce $72
    jp z, $a731                                   ; $4615: $ca $31 $a7

    sbc [hl]                                      ; $4618: $9e
    adc [hl]                                      ; $4619: $8e
    jr nc, jr_027_45e3                            ; $461a: $30 $c7

    ld c, e                                       ; $461c: $4b
    ld h, e                                       ; $461d: $63
    db $db                                        ; $461e: $db
    sub a                                         ; $461f: $97
    ld e, b                                       ; $4620: $58
    ld c, d                                       ; $4621: $4a
    dec c                                         ; $4622: $0d
    and $e5                                       ; $4623: $e6 $e5
    daa                                           ; $4625: $27
    scf                                           ; $4626: $37
    jr z, jr_027_45e7                             ; $4627: $28 $be

    sub d                                         ; $4629: $92
    ld b, $7e                                     ; $462a: $06 $7e
    or $cb                                        ; $462c: $f6 $cb
    sbc d                                         ; $462e: $9a
    cpl                                           ; $462f: $2f
    call c, $aab5                                 ; $4630: $dc $b5 $aa
    ld c, b                                       ; $4633: $48
    add e                                         ; $4634: $83
    halt                                          ; $4635: $76
    db $f4                                        ; $4636: $f4
    add e                                         ; $4637: $83
    rst $08                                       ; $4638: $cf
    cp [hl]                                       ; $4639: $be
    call nz, $bcd6                                ; $463a: $c4 $d6 $bc
    call z, $1db5                                 ; $463d: $cc $b5 $1d
    rra                                           ; $4640: $1f
    ld h, c                                       ; $4641: $61
    rst $00                                       ; $4642: $c7
    ld e, l                                       ; $4643: $5d
    ld h, d                                       ; $4644: $62
    ld l, e                                       ; $4645: $6b
    jp nc, Jump_027_5cc8                          ; $4646: $d2 $c8 $5c

    db $db                                        ; $4649: $db
    pop af                                        ; $464a: $f1
    cp c                                          ; $464b: $b9
    db $eb                                        ; $464c: $eb
    sbc [hl]                                      ; $464d: $9e
    xor $2f                                       ; $464e: $ee $2f
    call c, $8ca5                                 ; $4650: $dc $a5 $8c
    push hl                                       ; $4653: $e5
    sbc d                                         ; $4654: $9a
    inc [hl]                                      ; $4655: $34
    db $e3                                        ; $4656: $e3
    sub l                                         ; $4657: $95
    ld a, h                                       ; $4658: $7c
    sbc [hl]                                      ; $4659: $9e
    adc e                                         ; $465a: $8b
    add hl, bc                                    ; $465b: $09
    cp a                                          ; $465c: $bf
    sub d                                         ; $465d: $92
    ld b, $7e                                     ; $465e: $06 $7e
    sbc l                                         ; $4660: $9d
    cp h                                          ; $4661: $bc
    db $e4                                        ; $4662: $e4
    jr nc, jr_027_45f2                            ; $4663: $30 $8d

    ld a, [c]                                     ; $4665: $f2
    jp z, $ae9a                                   ; $4666: $ca $9a $ae

    jr jr_027_4612                                ; $4669: $18 $a7

    ld a, [c]                                     ; $466b: $f2
    inc a                                         ; $466c: $3c
    ld b, d                                       ; $466d: $42
    jr z, jr_027_46dc                             ; $466e: $28 $6c

    ld d, [hl]                                    ; $4670: $56
    ld e, [hl]                                    ; $4671: $5e
    add hl, de                                    ; $4672: $19
    ld b, d                                       ; $4673: $42
    ld [$c703], sp                                ; $4674: $08 $03 $c7
    ld e, l                                       ; $4677: $5d
    ld h, d                                       ; $4678: $62
    ld l, e                                       ; $4679: $6b
    jp nc, Jump_027_5cc8                          ; $467a: $d2 $c8 $5c

    db $db                                        ; $467d: $db
    pop af                                        ; $467e: $f1
    cp c                                          ; $467f: $b9
    ld l, e                                       ; $4680: $6b
    ld d, l                                       ; $4681: $55
    sub c                                         ; $4682: $91
    add [hl]                                      ; $4683: $86
    dec sp                                        ; $4684: $3b
    res 1, d                                      ; $4685: $cb $8a
    ld e, d                                       ; $4687: $5a
    ld a, a                                       ; $4688: $7f
    sbc [hl]                                      ; $4689: $9e
    db $e3                                        ; $468a: $e3
    push de                                       ; $468b: $d5
    xor e                                         ; $468c: $ab
    ld [hl-], a                                   ; $468d: $32
    cpl                                           ; $468e: $2f
    cp a                                          ; $468f: $bf
    ld [$c3e5], a                                 ; $4690: $ea $e5 $c3
    and h                                         ; $4693: $a4
    ld b, $61                                     ; $4694: $06 $61
    ld b, a                                       ; $4696: $47
    rst $30                                       ; $4697: $f7
    db $dd                                        ; $4698: $dd
    xor $bb                                       ; $4699: $ee $bb
    db $fd                                        ; $469b: $fd
    ldh [$b3], a                                  ; $469c: $e0 $b3
    cpl                                           ; $469e: $2f
    or c                                          ; $469f: $b1
    dec [hl]                                      ; $46a0: $35
    ld l, c                                       ; $46a1: $69
    ld h, h                                       ; $46a2: $64
    sbc $b7                                       ; $46a3: $de $b7
    rst $30                                       ; $46a5: $f7
    db $ed                                        ; $46a6: $ed
    jp c, $8f8e                                   ; $46a7: $da $8e $8f

    db $10                                        ; $46aa: $10
    ld l, d                                       ; $46ab: $6a
    jp nc, $de8c                                  ; $46ac: $d2 $8c $de

    ld a, [$3ab2]                                 ; $46af: $fa $b2 $3a
    dec h                                         ; $46b2: $25
    ccf                                           ; $46b3: $3f
    cp [hl]                                       ; $46b4: $be
    ld h, h                                       ; $46b5: $64
    dec c                                         ; $46b6: $0d
    add $ab                                       ; $46b7: $c6 $ab
    ld d, a                                       ; $46b9: $57
    push hl                                       ; $46ba: $e5
    ld d, d                                       ; $46bb: $52
    add b                                         ; $46bc: $80
    jr nc, jr_027_46ec                            ; $46bd: $30 $2d

    add hl, de                                    ; $46bf: $19
    cp $3a                                        ; $46c0: $fe $3a
    ld d, c                                       ; $46c2: $51
    xor e                                         ; $46c3: $ab
    add a                                         ; $46c4: $87
    ld e, l                                       ; $46c5: $5d
    ld e, d                                       ; $46c6: $5a
    ld l, e                                       ; $46c7: $6b
    ld b, $bc                                     ; $46c8: $06 $bc
    adc d                                         ; $46ca: $8a
    jp $7e54                                      ; $46cb: $c3 $54 $7e


    ldh [$37], a                                  ; $46ce: $e0 $37
    add $d9                                       ; $46d0: $c6 $d9
    add hl, hl                                    ; $46d2: $29
    db $ed                                        ; $46d3: $ed
    set 3, b                                      ; $46d4: $cb $d8
    db $d3                                        ; $46d6: $d3
    inc a                                         ; $46d7: $3c
    rst $10                                       ; $46d8: $d7
    and h                                         ; $46d9: $a4
    pop hl                                        ; $46da: $e1
    xor [hl]                                      ; $46db: $ae

jr_027_46dc:
    ld d, l                                       ; $46dc: $55
    ld b, l                                       ; $46dd: $45
    ld a, [de]                                    ; $46de: $1a
    add h                                         ; $46df: $84
    ld bc, $9816                                  ; $46e0: $01 $16 $98
    sub a                                         ; $46e3: $97
    dec bc                                        ; $46e4: $0b
    di                                            ; $46e5: $f3
    ld a, [c]                                     ; $46e6: $f2
    dec sp                                        ; $46e7: $3b
    ld e, [hl]                                    ; $46e8: $5e
    ld a, [de]                                    ; $46e9: $1a
    db $db                                        ; $46ea: $db
    cp [hl]                                       ; $46eb: $be

jr_027_46ec:
    call nz, $e652                                ; $46ec: $c4 $52 $e6
    jp c, $df8e                                   ; $46ef: $da $8e $df

    dec d                                         ; $46f2: $15
    inc bc                                        ; $46f3: $03
    and a                                         ; $46f4: $a7
    inc h                                         ; $46f5: $24
    ld [hl], a                                    ; $46f6: $77
    db $fc                                        ; $46f7: $fc
    rst $10                                       ; $46f8: $d7
    db $e4                                        ; $46f9: $e4
    rst $10                                       ; $46fa: $d7
    ld l, d                                       ; $46fb: $6a
    ld l, h                                       ; $46fc: $6c
    dec sp                                        ; $46fd: $3b
    ld a, [hl]                                    ; $46fe: $7e
    rst $00                                       ; $46ff: $c7
    ret c                                         ; $4700: $d8

    ld [hl], $c2                                  ; $4701: $36 $c2
    xor l                                         ; $4703: $ad
    add $b6                                       ; $4704: $c6 $b6
    db $e3                                        ; $4706: $e3
    ld [hl], a                                    ; $4707: $77
    adc h                                         ; $4708: $8c
    ld l, l                                       ; $4709: $6d
    rst $28                                       ; $470a: $ef
    jp nz, Jump_000_0fda                          ; $470b: $c2 $da $0f

    sbc $05                                       ; $470e: $de $05
    inc bc                                        ; $4710: $03
    dec l                                         ; $4711: $2d
    add hl, hl                                    ; $4712: $29
    jp nc, $e770                                  ; $4713: $d2 $70 $e7

    push hl                                       ; $4716: $e5
    jp nz, $ec2e                                  ; $4717: $c2 $2e $ec

    ld [hl], h                                    ; $471a: $74
    or l                                          ; $471b: $b5
    ld a, $55                                     ; $471c: $3e $55
    ld d, c                                       ; $471e: $51
    ld a, c                                       ; $471f: $79
    add h                                         ; $4720: $84
    ld bc, $a4a7                                  ; $4721: $01 $a7 $a4
    sub a                                         ; $4724: $97
    ld c, e                                       ; $4725: $4b
    pop bc                                        ; $4726: $c1
    jp c, Jump_000_0eaf                           ; $4727: $da $af $0e

    dec sp                                        ; $472a: $3b
    ld e, l                                       ; $472b: $5d
    xor l                                         ; $472c: $ad
    ld c, a                                       ; $472d: $4f
    ld d, l                                       ; $472e: $55
    ld d, h                                       ; $472f: $54
    cp [hl]                                       ; $4730: $be
    dec bc                                        ; $4731: $0b
    ld b, $16                                     ; $4732: $06 $16
    sbc b                                         ; $4734: $98
    sub a                                         ; $4735: $97
    ld e, a                                       ; $4736: $5f
    ld c, c                                       ; $4737: $49
    inc bc                                        ; $4738: $03
    ccf                                           ; $4739: $3f
    add l                                         ; $473a: $85
    add l                                         ; $473b: $85
    rrca                                          ; $473c: $0f
    ret nc                                        ; $473d: $d0

    ld c, h                                       ; $473e: $4c
    ld h, c                                       ; $473f: $61
    ld e, [hl]                                    ; $4740: $5e
    ld l, $cc                                     ; $4741: $2e $cc
    or l                                          ; $4743: $b5
    dec e                                         ; $4744: $1d
    cp a                                          ; $4745: $bf
    dec hl                                        ; $4746: $2b
    ld b, $3d                                     ; $4747: $06 $3d
    jp z, Jump_027_5d85                           ; $4749: $ca $85 $5d

    ld e, b                                       ; $474c: $58
    ld c, e                                       ; $474d: $4b
    ld l, h                                       ; $474e: $6c
    cp h                                          ; $474f: $bc
    cp h                                          ; $4750: $bc
    ld e, h                                       ; $4751: $5c
    ld [$0182], a                                 ; $4752: $ea $82 $01
    dec l                                         ; $4755: $2d
    or c                                          ; $4756: $b1
    pop af                                        ; $4757: $f1
    ld a, [c]                                     ; $4758: $f2
    ld [hl], d                                    ; $4759: $72
    ld l, c                                       ; $475a: $69
    jp c, $eb4e                                   ; $475b: $da $4e $eb

    ld c, a                                       ; $475e: $4f
    ld h, e                                       ; $475f: $63
    db $ec                                        ; $4760: $ec
    add d                                         ; $4761: $82
    ld bc, $8a3d                                  ; $4762: $01 $3d $8a
    ld a, d                                       ; $4765: $7a
    dec c                                         ; $4766: $0d
    ld d, [hl]                                    ; $4767: $56
    ld l, [hl]                                    ; $4768: $6e
    ret z                                         ; $4769: $c8

    ld e, l                                       ; $476a: $5d
    adc a                                         ; $476b: $8f
    sub $63                                       ; $476c: $d6 $63
    rst $10                                       ; $476e: $d7
    xor d                                         ; $476f: $aa

Jump_027_4770:
    ld [hl+], a                                   ; $4770: $22
    call $a7ba                                    ; $4771: $cd $ba $a7
    ei                                            ; $4774: $fb
    ld c, e                                       ; $4775: $4b
    rla                                           ; $4776: $17
    inc c                                         ; $4777: $0c
    dec a                                         ; $4778: $3d
    ld [hl-], a                                   ; $4779: $32
    rst $10                                       ; $477a: $d7
    ld d, [hl]                                    ; $477b: $56
    ld [hl], $2f                                  ; $477c: $36 $2f
    cpl                                           ; $477e: $2f
    cp a                                          ; $477f: $bf
    dec bc                                        ; $4780: $0b
    ld d, h                                       ; $4781: $54
    di                                            ; $4782: $f3
    jp hl                                         ; $4783: $e9


    ld c, [hl]                                    ; $4784: $4e
    ld [hl], $41                                  ; $4785: $36 $41
    db $10                                        ; $4787: $10
    ld a, a                                       ; $4788: $7f
    xor [hl]                                      ; $4789: $ae
    db $ed                                        ; $478a: $ed
    ld hl, sp-$4d                                 ; $478b: $f8 $b3
    ld d, e                                       ; $478d: $53
    sub $a4                                       ; $478e: $d6 $a4
    pop hl                                        ; $4790: $e1
    xor [hl]                                      ; $4791: $ae
    ld a, e                                       ; $4792: $7b
    cp d                                          ; $4793: $ba
    cp a                                          ; $4794: $bf
    jr nz, jr_027_47a3                            ; $4795: $20 $0c

    dec l                                         ; $4797: $2d
    ld d, a                                       ; $4798: $57
    halt                                          ; $4799: $76
    jp z, Jump_027_4aad                           ; $479a: $ca $ad $4a

    ld b, [hl]                                    ; $479d: $46
    add l                                         ; $479e: $85
    or c                                          ; $479f: $b1
    rst $18                                       ; $47a0: $df
    ret                                           ; $47a1: $c9


    scf                                           ; $47a2: $37

jr_027_47a3:
    add h                                         ; $47a3: $84
    and [hl]                                      ; $47a4: $a6
    rst $28                                       ; $47a5: $ef
    xor $29                                       ; $47a6: $ee $29
    sbc l                                         ; $47a8: $9d
    ld c, e                                       ; $47a9: $4b
    add c                                         ; $47aa: $81
    daa                                           ; $47ab: $27
    ld [hl], c                                    ; $47ac: $71
    daa                                           ; $47ad: $27
    rrca                                          ; $47ae: $0f
    sub a                                         ; $47af: $97
    dec a                                         ; $47b0: $3d
    ld sp, hl                                     ; $47b1: $f9
    add d                                         ; $47b2: $82
    sub d                                         ; $47b3: $92
    ldh [rWX], a                                  ; $47b4: $e0 $4b
    ld a, e                                       ; $47b6: $7b
    rst $00                                       ; $47b7: $c7
    ld c, e                                       ; $47b8: $4b
    ld h, e                                       ; $47b9: $63
    db $db                                        ; $47ba: $db
    sub a                                         ; $47bb: $97
    ld e, b                                       ; $47bc: $58
    jp z, $f93c                                   ; $47bd: $ca $3c $f9

    rla                                           ; $47c0: $17
    or h                                          ; $47c1: $b4
    or l                                          ; $47c2: $b5
    ld h, $bf                                     ; $47c3: $26 $bf
    ld d, b                                       ; $47c5: $50
    sbc e                                         ; $47c6: $9b
    ld e, c                                       ; $47c7: $59
    sub $fe                                       ; $47c8: $d6 $fe
    and l                                         ; $47ca: $a5
    dec a                                         ; $47cb: $3d
    ld a, b                                       ; $47cc: $78
    or c                                          ; $47cd: $b1
    sbc $ea                                       ; $47ce: $de $ea
    cp e                                          ; $47d0: $bb
    ld h, d                                       ; $47d1: $62
    ld d, $62                                     ; $47d2: $16 $62
    rst $38                                       ; $47d4: $ff
    ld l, h                                       ; $47d5: $6c
    rst $10                                       ; $47d6: $d7
    ld [hl], a                                    ; $47d7: $77
    ld bc, $f8ed                                  ; $47d8: $01 $ed $f8
    xor b                                         ; $47db: $a8
    ld l, h                                       ; $47dc: $6c
    sbc [hl]                                      ; $47dd: $9e
    dec hl                                        ; $47de: $2b
    ld l, d                                       ; $47df: $6a
    db $fd                                        ; $47e0: $fd
    dec [hl]                                      ; $47e1: $35
    ld l, c                                       ; $47e2: $69
    add $5f                                       ; $47e3: $c6 $5f
    cpl                                           ; $47e5: $2f
    inc sp                                        ; $47e6: $33
    add b                                         ; $47e7: $80
    jr nc, jr_027_47f2                            ; $47e8: $30 $08

    ld hl, $bd0c                                  ; $47ea: $21 $0c $bd
    jp nc, Jump_027_662c                          ; $47ed: $d2 $2c $66

    sub $17                                       ; $47f0: $d6 $17

jr_027_47f2:
    ld l, a                                       ; $47f2: $6f
    db $fd                                        ; $47f3: $fd
    and a                                         ; $47f4: $a7
    or e                                          ; $47f5: $b3
    cpl                                           ; $47f6: $2f

Call_027_47f7:
    db $fd                                        ; $47f7: $fd
    sbc d                                         ; $47f8: $9a
    inc [hl]                                      ; $47f9: $34
    inc d                                         ; $47fa: $14
    xor h                                         ; $47fb: $ac
    ld a, [hl+]                                   ; $47fc: $2a
    jp c, $aee1                                   ; $47fd: $da $e1 $ae

    ld l, l                                       ; $4800: $6d
    ld a, h                                       ; $4801: $7c
    ld e, [hl]                                    ; $4802: $5e
    ld l, $ec                                     ; $4803: $2e $ec
    ld [bc], a                                    ; $4805: $02
    push de                                       ; $4806: $d5
    ld a, h                                       ; $4807: $7c
    ld c, l                                       ; $4808: $4d
    ld a, [de]                                    ; $4809: $1a
    sbc c                                         ; $480a: $99
    ld l, e                                       ; $480b: $6b
    dec sp                                        ; $480c: $3b
    ld a, $c2                                     ; $480d: $3e $c2
    and a                                         ; $480f: $a7
    and h                                         ; $4810: $a4
    xor a                                         ; $4811: $af
    ld c, c                                       ; $4812: $49
    inc hl                                        ; $4813: $23
    ld [hl], e                                    ; $4814: $73
    ld l, l                                       ; $4815: $6d
    rst $00                                       ; $4816: $c7
    ld b, a                                       ; $4817: $47
    ld [$0e41], sp                                ; $4818: $08 $41 $0e
    sub h                                         ; $481b: $94
    ld hl, $3084                                  ; $481c: $21 $84 $30
    cp l                                          ; $481f: $bd
    ld e, $76                                     ; $4820: $1e $76
    ld a, l                                       ; $4822: $7d
    rla                                           ; $4823: $17
    cp d                                          ; $4824: $ba
    xor h                                         ; $4825: $ac
    rst $20                                       ; $4826: $e7
    rst $10                                       ; $4827: $d7
    db $e4                                        ; $4828: $e4
    rlca                                          ; $4829: $07
    cp c                                          ; $482a: $b9
    jr nz, jr_027_4857                            ; $482b: $20 $2a

    ld e, e                                       ; $482d: $5b
    sub e                                         ; $482e: $93
    and [hl]                                      ; $482f: $a6
    ld h, $bf                                     ; $4830: $26 $bf
    and h                                         ; $4832: $a4
    ld e, a                                       ; $4833: $5f
    jp c, $d033                                   ; $4834: $da $33 $d0

    dec b                                         ; $4837: $05
    inc bc                                        ; $4838: $03
    xor l                                         ; $4839: $ad
    ld a, [hl+]                                   ; $483a: $2a
    jp nc, $d974                                  ; $483b: $d2 $74 $d9

    xor c                                         ; $483e: $a9
    sub $97                                       ; $483f: $d6 $97
    sub l                                         ; $4841: $95
    sub a                                         ; $4842: $97
    rst $28                                       ; $4843: $ef
    add d                                         ; $4844: $82
    ld bc, $8a3d                                  ; $4845: $01 $3d $8a
    ld d, d                                       ; $4848: $52
    dec e                                         ; $4849: $1d
    ret nc                                        ; $484a: $d0

    inc l                                         ; $484b: $2c
    db $e3                                        ; $484c: $e3
    dec d                                         ; $484d: $15
    ld h, [hl]                                    ; $484e: $66
    rst $38                                       ; $484f: $ff
    rst $00                                       ; $4850: $c7
    ld c, e                                       ; $4851: $4b
    pop bc                                        ; $4852: $c1
    ld [hl], h                                    ; $4853: $74
    db $ed                                        ; $4854: $ed
    db $eb                                        ; $4855: $eb
    adc e                                         ; $4856: $8b

jr_027_4857:
    add hl, bc                                    ; $4857: $09
    adc [hl]                                      ; $4858: $8e
    jr nc, @+$3f                                  ; $4859: $30 $3d

    ld c, e                                       ; $485b: $4b
    xor $c2                                       ; $485c: $ee $c2
    cp h                                          ; $485e: $bc
    xor b                                         ; $485f: $a8
    rrca                                          ; $4860: $0f
    adc d                                         ; $4861: $8a
    ld c, d                                       ; $4862: $4a
    and a                                         ; $4863: $a7
    ld l, a                                       ; $4864: $6f
    ld e, e                                       ; $4865: $5b
    xor e                                         ; $4866: $ab
    ld h, a                                       ; $4867: $67
    dec bc                                        ; $4868: $0b
    sub l                                         ; $4869: $95
    ld h, [hl]                                    ; $486a: $66
    ld a, [hl-]                                   ; $486b: $3a
    di                                            ; $486c: $f3
    ld a, [c]                                     ; $486d: $f2
    ld a, [c]                                     ; $486e: $f2
    ld e, l                                       ; $486f: $5d
    rst $10                                       ; $4870: $d7
    ld a, [$998b]                                 ; $4871: $fa $8b $99
    ld [hl], l                                    ; $4874: $75
    ld e, b                                       ; $4875: $58
    cp h                                          ; $4876: $bc
    push af                                       ; $4877: $f5
    ld e, a                                       ; $4878: $5f
    ld sp, hl                                     ; $4879: $f9
    dec d                                         ; $487a: $15
    push af                                       ; $487b: $f5
    add a                                         ; $487c: $87
    add l                                         ; $487d: $85
    adc a                                         ; $487e: $8f
    jr nc, jr_027_48be                            ; $487f: $30 $3d

    adc d                                         ; $4881: $8a
    ld a, d                                       ; $4882: $7a
    dec c                                         ; $4883: $0d
    sub $42                                       ; $4884: $d6 $42
    jp c, $ee79                                   ; $4886: $da $79 $ee

    cp h                                          ; $4889: $bc
    db $fc                                        ; $488a: $fc
    ld a, [hl-]                                   ; $488b: $3a
    jp hl                                         ; $488c: $e9


    scf                                           ; $488d: $37
    add hl, bc                                    ; $488e: $09
    and $af                                       ; $488f: $e6 $af
    ld d, l                                       ; $4891: $55
    ld a, c                                       ; $4892: $79
    sbc c                                         ; $4893: $99
    ld [de], a                                    ; $4894: $12
    ld e, e                                       ; $4895: $5b
    xor b                                         ; $4896: $a8
    ldh [$2f], a                                  ; $4897: $e0 $2f
    ld c, e                                       ; $4899: $4b
    ld a, e                                       ; $489a: $7b
    dec l                                         ; $489b: $2d
    or c                                          ; $489c: $b1
    pop af                                        ; $489d: $f1
    ld a, [c]                                     ; $489e: $f2
    ld [hl], d                                    ; $489f: $72
    add hl, bc                                    ; $48a0: $09
    xor l                                         ; $48a1: $ad
    and a                                         ; $48a2: $a7
    ld a, d                                       ; $48a3: $7a
    ld d, l                                       ; $48a4: $55
    sub [hl]                                      ; $48a5: $96
    add $67                                       ; $48a6: $c6 $67
    and a                                         ; $48a8: $a7
    xor h                                         ; $48a9: $ac
    call c, $ad10                                 ; $48aa: $dc $10 $ad
    ld b, a                                       ; $48ad: $47

jr_027_48ae:
    ld sp, hl                                     ; $48ae: $f9
    dec h                                         ; $48af: $25
    db $fd                                        ; $48b0: $fd
    ld l, $cd                                     ; $48b1: $2e $cd
    set 1, a                                      ; $48b3: $cb $cf
    adc l                                         ; $48b5: $8d
    or h                                          ; $48b6: $b4
    sub l                                         ; $48b7: $95
    halt                                          ; $48b8: $76
    ld h, c                                       ; $48b9: $61
    and a                                         ; $48ba: $a7
    sbc c                                         ; $48bb: $99

Jump_027_48bc:
    dec hl                                        ; $48bc: $2b
    ld a, [c]                                     ; $48bd: $f2

jr_027_48be:
    ld sp, $b11e                                  ; $48be: $31 $1e $b1
    ld a, [c]                                     ; $48c1: $f2
    di                                            ; $48c2: $f3
    rst $10                                       ; $48c3: $d7
    xor d                                         ; $48c4: $aa
    inc a                                         ; $48c5: $3c
    db $ec                                        ; $48c6: $ec
    sbc b                                         ; $48c7: $98
    or a                                          ; $48c8: $b7
    sbc a                                         ; $48c9: $9f
    xor d                                         ; $48ca: $aa
    rst $18                                       ; $48cb: $df
    ld d, c                                       ; $48cc: $51
    add c                                         ; $48cd: $81
    ld e, [hl]                                    ; $48ce: $5e
    ld [bc], a                                    ; $48cf: $02
    rst $18                                       ; $48d0: $df
    ld sp, $f52a                                  ; $48d1: $31 $2a $f5
    dec e                                         ; $48d4: $1d
    dec h                                         ; $48d5: $25
    ld c, $68                                     ; $48d6: $0e $68
    dec a                                         ; $48d8: $3d
    jp z, $0337                                   ; $48d9: $ca $37 $03

    ld l, l                                       ; $48dc: $6d
    sub $42                                       ; $48dd: $d6 $42
    jp c, $f1f9                                   ; $48df: $da $f9 $f1

    ld c, d                                       ; $48e2: $4a
    ld c, $2b                                     ; $48e3: $0e $2b
    rla                                           ; $48e5: $17
    halt                                          ; $48e6: $76
    ld e, [hl]                                    ; $48e7: $5e
    or [hl]                                       ; $48e8: $b6
    ld de, $9606                                  ; $48e9: $11 $06 $96
    sbc d                                         ; $48ec: $9a
    push af                                       ; $48ed: $f5
    rst $10                                       ; $48ee: $d7
    cp $a7                                        ; $48ef: $fe $a7
    ld b, c                                       ; $48f1: $41
    adc d                                         ; $48f2: $8a
    ccf                                           ; $48f3: $3f
    db $db                                        ; $48f4: $db
    dec h                                         ; $48f5: $25
    rst $08                                       ; $48f6: $cf
    dec e                                         ; $48f7: $1d
    cpl                                           ; $48f8: $2f
    adc l                                         ; $48f9: $8d
    ld l, l                                       ; $48fa: $6d
    ld e, a                                       ; $48fb: $5f
    ld h, d                                       ; $48fc: $62
    add hl, hl                                    ; $48fd: $29
    ld e, l                                       ; $48fe: $5d
    jr nc, jr_027_493e                            ; $48ff: $30 $3d

    ccf                                           ; $4901: $3f
    add $b1                                       ; $4902: $c6 $b1
    and h                                         ; $4904: $a4
    rst $20                                       ; $4905: $e7
    xor $f4                                       ; $4906: $ee $f4
    and h                                         ; $4908: $a4
    ld l, $18                                     ; $4909: $2e $18
    cp l                                          ; $490b: $bd

jr_027_490c:
    jp nc, $62d4                                  ; $490c: $d2 $d4 $62

    ld e, h                                       ; $490f: $5c
    ei                                            ; $4910: $fb
    rst $00                                       ; $4911: $c7
    ld e, a                                       ; $4912: $5f
    cpl                                           ; $4913: $2f
    db $d3                                        ; $4914: $d3
    jr jr_027_48ae                                ; $4915: $18 $97

    or $0c                                        ; $4917: $f6 $0c
    ld [hl], h                                    ; $4919: $74
    pop bc                                        ; $491a: $c1
    ld b, a                                       ; $491b: $47
    push bc                                       ; $491c: $c5
    ret c                                         ; $491d: $d8

    ld [hl], l                                    ; $491e: $75
    dec a                                         ; $491f: $3d
    ccf                                           ; $4920: $3f
    ld b, [hl]                                    ; $4921: $46
    add h                                         ; $4922: $84
    sub b                                         ; $4923: $90
    add hl, bc                                    ; $4924: $09
    ld de, $a842                                  ; $4925: $11 $42 $a8
    add h                                         ; $4928: $84
    ld hl, $0842                                  ; $4929: $21 $42 $08
    inc bc                                        ; $492c: $03
    dec a                                         ; $492d: $3d
    jp z, Jump_027_520f                           ; $492e: $ca $0f $52

    db $fc                                        ; $4931: $fc
    ld d, d                                       ; $4932: $52
    or b                                          ; $4933: $b0
    dec bc                                        ; $4934: $0b
    xor e                                         ; $4935: $ab
    ld [hl-], a                                   ; $4936: $32
    db $ec                                        ; $4937: $ec
    call nz, Call_027_47f7                        ; $4938: $c4 $f7 $47
    db $eb                                        ; $493b: $eb
    ld sp, hl                                     ; $493c: $f9
    or c                                          ; $493d: $b1

jr_027_493e:
    jp z, $e7f0                                   ; $493e: $ca $f0 $e7

Jump_027_4941:
    add hl, sp                                    ; $4941: $39
    dec e                                         ; $4942: $1d
    dec a                                         ; $4943: $3d
    cp a                                          ; $4944: $bf
    and $55                                       ; $4945: $e6 $55
    and [hl]                                      ; $4947: $a6
    cp [hl]                                       ; $4948: $be

Jump_027_4949:
    sub $0c                                       ; $4949: $d6 $0c
    ld a, b                                       ; $494b: $78
    dec d                                         ; $494c: $15
    add a                                         ; $494d: $87
    ld l, $3b                                     ; $494e: $2e $3b
    jp hl                                         ; $4950: $e9


    ld a, l                                       ; $4951: $7d
    ld e, [hl]                                    ; $4952: $5e
    ld a, [hl]                                    ; $4953: $7e
    ld l, l                                       ; $4954: $6d
    and l                                         ; $4955: $a5
    di                                            ; $4956: $f3
    call $dafb                                    ; $4957: $cd $fb $da
    rra                                           ; $495a: $1f
    ld e, h                                       ; $495b: $5c
    ld b, d                                       ; $495c: $42
    jr jr_027_490c                                ; $495d: $18 $ad

    ld b, [hl]                                    ; $495f: $46
    and h                                         ; $4960: $a4
    reti                                          ; $4961: $d9


    dec h                                         ; $4962: $25
    rst $08                                       ; $4963: $cf
    ld a, c                                       ; $4964: $79
    ld sp, hl                                     ; $4965: $f9
    dec e                                         ; $4966: $1d
    cpl                                           ; $4967: $2f
    xor a                                         ; $4968: $af
    cp [hl]                                       ; $4969: $be
    ld d, [hl]                                    ; $496a: $56
    adc l                                         ; $496b: $8d
    ld [hl], c                                    ; $496c: $71
    add hl, hl                                    ; $496d: $29
    ld l, e                                       ; $496e: $6b
    jp nc, Jump_027_4f8c                          ; $496f: $d2 $8c $4f

    xor d                                         ; $4972: $aa
    ld sp, hl                                     ; $4973: $f9
    add d                                         ; $4974: $82
    rst $30                                       ; $4975: $f7
    ld b, c                                       ; $4976: $41
    adc d                                         ; $4977: $8a
    ccf                                           ; $4978: $3f
    db $eb                                        ; $4979: $eb
    add d                                         ; $497a: $82
    ld bc, $e4a7                                  ; $497b: $01 $a7 $e4
    db $fc                                        ; $497e: $fc
    add [hl]                                      ; $497f: $86
    ccf                                           ; $4980: $3f
    rst $08                                       ; $4981: $cf
    cp c                                          ; $4982: $b9
    add $3a                                       ; $4983: $c6 $3a
    ld [hl], a                                    ; $4985: $77
    sub [hl]                                      ; $4986: $96
    dec d                                         ; $4987: $15
    or l                                          ; $4988: $b5
    cp $3c                                        ; $4989: $fe $3c
    rla                                           ; $498b: $17
    db $e4                                        ; $498c: $e4
    add d                                         ; $498d: $82
    rst $30                                       ; $498e: $f7
    ld b, c                                       ; $498f: $41
    adc d                                         ; $4990: $8a
    ccf                                           ; $4991: $3f
    ld b, e                                       ; $4992: $43
    jr jr_027_49d2                                ; $4993: $18 $3d

    jp z, $d7cb                                   ; $4995: $ca $cb $d7

    ld h, b                                       ; $4998: $60
    sub h                                         ; $4999: $94
    ld e, [hl]                                    ; $499a: $5e
    ld l, $05                                     ; $499b: $2e $05
    di                                            ; $499d: $f3
    inc e                                         ; $499e: $1c
    res 4, l                                      ; $499f: $cb $a5
    pop af                                        ; $49a1: $f1
    sub l                                         ; $49a2: $95
    sub a                                         ; $49a3: $97

Jump_027_49a4:
    ld b, a                                       ; $49a4: $47
    dec sp                                        ; $49a5: $3b
    ld a, [hl+]                                   ; $49a6: $2a
    add $79                                       ; $49a7: $c6 $79
    ld sp, hl                                     ; $49a9: $f9
    ld l, c                                       ; $49aa: $69
    push hl                                       ; $49ab: $e5

Jump_027_49ac:
    scf                                           ; $49ac: $37
    ld l, c                                       ; $49ad: $69
    rla                                           ; $49ae: $17

Jump_027_49af:
    halt                                          ; $49af: $76
    ld l, c                                       ; $49b0: $69
    ld e, [hl]                                    ; $49b1: $5e
    ld a, [hl]                                    ; $49b2: $7e
    rst $00                                       ; $49b3: $c7
    res 5, e                                      ; $49b4: $cb $ab
    xor a                                         ; $49b6: $af
    ld d, l                                       ; $49b7: $55
    ld h, e                                       ; $49b8: $63
    ld b, h                                       ; $49b9: $44
    jr jr_027_49d2                                ; $49ba: $18 $16

    ld a, e                                       ; $49bc: $7b
    ld c, l                                       ; $49bd: $4d
    sbc d                                         ; $49be: $9a
    pop de                                        ; $49bf: $d1
    ccf                                           ; $49c0: $3f
    sbc e                                         ; $49c1: $9b
    xor $7c                                       ; $49c2: $ee $7c
    ld [hl], e                                    ; $49c4: $73
    xor e                                         ; $49c5: $ab
    ld a, [$b5e2]                                 ; $49c6: $fa $e2 $b5
    ld a, l                                       ; $49c9: $7d
    sbc [hl]                                      ; $49ca: $9e
    di                                            ; $49cb: $f3
    ld a, [c]                                     ; $49cc: $f2
    or e                                          ; $49cd: $b3

jr_027_49ce:
    xor a                                         ; $49ce: $af
    db $ed                                        ; $49cf: $ed
    ld h, l                                       ; $49d0: $65
    halt                                          ; $49d1: $76

jr_027_49d2:
    call z, $ee14                                 ; $49d2: $cc $14 $ee
    cp h                                          ; $49d5: $bc
    cp h                                          ; $49d6: $bc
    ld a, h                                       ; $49d7: $7c
    dec c                                         ; $49d8: $0d
    and [hl]                                      ; $49d9: $a6
    dec bc                                        ; $49da: $0b
    dec [hl]                                      ; $49db: $35
    cp b                                          ; $49dc: $b8
    push de                                       ; $49dd: $d5
    ld e, b                                       ; $49de: $58
    and [hl]                                      ; $49df: $a6
    db $ec                                        ; $49e0: $ec
    jp nc, Jump_027_5cbc                          ; $49e1: $d2 $bc $5c

    ld e, b                                       ; $49e4: $58
    pop de                                        ; $49e5: $d1
    jr jr_027_4a61                                ; $49e6: $18 $79

    ld l, l                                       ; $49e8: $6d
    and $45                                       ; $49e9: $e6 $45
    cp l                                          ; $49eb: $bd
    ld d, $e3                                     ; $49ec: $16 $e3
    ld e, h                                       ; $49ee: $5c
    db $eb                                        ; $49ef: $eb
    cp a                                          ; $49f0: $bf
    ld h, $cd                                     ; $49f1: $26 $cd
    cp h                                          ; $49f3: $bc
    cp h                                          ; $49f4: $bc
    inc a                                         ; $49f5: $3c
    jp nz, $a42d                                  ; $49f6: $c2 $2d $a4

    sbc l                                         ; $49f9: $9d
    rra                                           ; $49fa: $1f
    db $fc                                        ; $49fb: $fc
    add a                                         ; $49fc: $87
    jr nc, jr_027_49ce                            ; $49fd: $30 $cf

    or l                                          ; $49ff: $b5
    ld a, a                                       ; $4a00: $7f
    ld l, a                                       ; $4a01: $6f
    ld a, l                                       ; $4a02: $7d
    ld l, c                                       ; $4a03: $69
    ld hl, sp-$0e                                 ; $4a04: $f8 $f2
    ld a, [c]                                     ; $4a06: $f2
    ld l, e                                       ; $4a07: $6b
    ld a, a                                       ; $4a08: $7f
    and l                                         ; $4a09: $a5
    ld b, $7e                                     ; $4a0a: $06 $7e

Jump_027_4a0c:
    push hl                                       ; $4a0c: $e5
    ld d, a                                       ; $4a0d: $57
    and a                                         ; $4a0e: $a7
    db $e4                                        ; $4a0f: $e4
    ld h, c                                       ; $4a10: $61
    ld a, h                                       ; $4a11: $7c
    ld a, c                                       ; $4a12: $79
    ld sp, hl                                     ; $4a13: $f9
    ld a, c                                       ; $4a14: $79
    ld sp, hl                                     ; $4a15: $f9
    add l                                         ; $4a16: $85
    ld a, [de]                                    ; $4a17: $1a
    call c, Call_000_2c6a                         ; $4a18: $dc $6a $2c
    ld d, e                                       ; $4a1b: $53
    ld h, b                                       ; $4a1c: $60
    ld a, [hl+]                                   ; $4a1d: $2a
    adc a                                         ; $4a1e: $8f
    sub $fa                                       ; $4a1f: $d6 $fa
    inc sp                                        ; $4a21: $33
    ldh a, [$30]                                  ; $4a22: $f0 $30
    cpl                                           ; $4a24: $2f
    cp a                                          ; $4a25: $bf
    and h                                         ; $4a26: $a4
    rst $18                                       ; $4a27: $df
    and l                                         ; $4a28: $a5
    ld a, c                                       ; $4a29: $79
    cp c                                          ; $4a2a: $b9
    or b                                          ; $4a2b: $b0
    and d                                         ; $4a2c: $a2
    ld sp, $cbce                                  ; $4a2d: $31 $ce $cb
    cpl                                           ; $4a30: $2f
    ld c, h                                       ; $4a31: $4c
    ld [hl], b                                    ; $4a32: $70
    add h                                         ; $4a33: $84
    ld bc, $a42d                                  ; $4a34: $01 $2d $a4
    sbc l                                         ; $4a37: $9d
    xor a                                         ; $4a38: $af
    pop bc                                        ; $4a39: $c1
    xor d                                         ; $4a3a: $aa
    xor b                                         ; $4a3b: $a8
    nop                                           ; $4a3c: $00
    sub d                                         ; $4a3d: $92
    add hl, de                                    ; $4a3e: $19
    ld c, [hl]                                    ; $4a3f: $4e
    adc c                                         ; $4a40: $89
    dec l                                         ; $4a41: $2d
    ld l, l                                       ; $4a42: $6d
    ei                                            ; $4a43: $fb
    ld d, [hl]                                    ; $4a44: $56
    ccf                                           ; $4a45: $3f
    sub l                                         ; $4a46: $95
    rra                                           ; $4a47: $1f
    ld c, e                                       ; $4a48: $4b
    sbc [hl]                                      ; $4a49: $9e
    ld d, [hl]                                    ; $4a4a: $56
    ld e, [hl]                                    ; $4a4b: $5e
    ld e, $ad                                     ; $4a4c: $1e $ad
    push af                                       ; $4a4e: $f5
    ld l, e                                       ; $4a4f: $6b
    jr nc, jr_027_4a81                            ; $4a50: $30 $2f

    ccf                                           ; $4a52: $3f
    xor b                                         ; $4a53: $a8
    ld d, h                                       ; $4a54: $54
    xor $83                                       ; $4a55: $ee $83
    rst $08                                       ; $4a57: $cf
    ld e, a                                       ; $4a58: $5f
    xor e                                         ; $4a59: $ab
    ld a, [c]                                     ; $4a5a: $f2
    or d                                          ; $4a5b: $b2
    ld a, [c]                                     ; $4a5c: $f2
    ld a, [c]                                     ; $4a5d: $f2
    ld [$2703], sp                                ; $4a5e: $08 $03 $27

jr_027_4a61:
    ld d, a                                       ; $4a61: $57
    rst $00                                       ; $4a62: $c7
    daa                                           ; $4a63: $27
    ld l, c                                       ; $4a64: $69
    and b                                         ; $4a65: $a0
    ld sp, $60d6                                  ; $4a66: $31 $d6 $60
    ld l, c                                       ; $4a69: $69
    db $db                                        ; $4a6a: $db
    or a                                          ; $4a6b: $b7
    ld a, [$585d]                                 ; $4a6c: $fa $5d $58
    jp nc, Jump_027_5cbc                          ; $4a6f: $d2 $bc $5c

    sbc b                                         ; $4a72: $98
    dec e                                         ; $4a73: $1d
    inc sp                                        ; $4a74: $33
    dec b                                         ; $4a75: $05
    xor l                                         ; $4a76: $ad
    ld d, a                                       ; $4a77: $57
    sbc d                                         ; $4a78: $9a
    or c                                          ; $4a79: $b1
    and h                                         ; $4a7a: $a4
    sbc d                                         ; $4a7b: $9a
    adc a                                         ; $4a7c: $8f
    ld d, a                                       ; $4a7d: $57
    ld a, [c]                                     ; $4a7e: $f2
    ld a, c                                       ; $4a7f: $79
    xor [hl]                                      ; $4a80: $ae

jr_027_4a81:
    db $fd                                        ; $4a81: $fd
    adc e                                         ; $4a82: $8b
    ld [$3b3f], a                                 ; $4a83: $ea $3f $3b
    ld h, l                                       ; $4a86: $65
    push hl                                       ; $4a87: $e5
    ld h, l                                       ; $4a88: $65
    ld d, l                                       ; $4a89: $55
    ld d, h                                       ; $4a8a: $54
    add b                                         ; $4a8b: $80
    add a                                         ; $4a8c: $87
    ld l, $18                                     ; $4a8d: $2e $18
    ld b, a                                       ; $4a8f: $47
    rst $38                                       ; $4a90: $ff
    ld a, [hl+]                                   ; $4a91: $2a
    sub l                                         ; $4a92: $95
    or a                                          ; $4a93: $b7
    ld c, l                                       ; $4a94: $4d
    ld b, h                                       ; $4a95: $44
    dec sp                                        ; $4a96: $3b
    add e                                         ; $4a97: $83
    inc c                                         ; $4a98: $0c
    inc a                                         ; $4a99: $3c
    ld e, e                                       ; $4a9a: $5b
    dec d                                         ; $4a9b: $15
    dec d                                         ; $4a9c: $15
    ld b, b                                       ; $4a9d: $40
    ld [hl-], a                                   ; $4a9e: $32
    ld b, e                                       ; $4a9f: $43
    sbc b                                         ; $4aa0: $98
    ld [de], a                                    ; $4aa1: $12
    ld e, e                                       ; $4aa2: $5b
    jp c, $adf6                                   ; $4aa3: $da $f6 $ad

    ld e, $56                                     ; $4aa6: $1e $56
    add hl, hl                                    ; $4aa8: $29
    dec c                                         ; $4aa9: $0d
    ld [hl-], a                                   ; $4aaa: $32
    ld a, h                                       ; $4aab: $7c

Jump_027_4aac:
    cp a                                          ; $4aac: $bf

Jump_027_4aad:
    pop hl                                        ; $4aad: $e1
    jp $65ca                                      ; $4aae: $c3 $ca $65


    cp a                                          ; $4ab1: $bf

Call_027_4ab2:
    ld c, d                                       ; $4ab2: $4a
    cp $3b                                        ; $4ab3: $fe $3b
    call Call_027_5cbc                            ; $4ab5: $cd $bc $5c
    ld a, [bc]                                    ; $4ab8: $0a
    nop                                           ; $4ab9: $00
    ld h, c                                       ; $4aba: $61
    sub [hl]                                      ; $4abb: $96
    or c                                          ; $4abc: $b1
    and h                                         ; $4abd: $a4
    sbc d                                         ; $4abe: $9a
    rst $28                                       ; $4abf: $ef
    inc a                                         ; $4ac0: $3c
    inc bc                                        ; $4ac1: $03
    ld a, $5e                                     ; $4ac2: $3e $5e
    cp l                                          ; $4ac4: $bd
    ld a, [hl+]                                   ; $4ac5: $2a
    di                                            ; $4ac6: $f3
    ld a, [c]                                     ; $4ac7: $f2

Jump_027_4ac8:
    dec hl                                        ; $4ac8: $2b
    ld l, c                                       ; $4ac9: $69
    inc h                                         ; $4aca: $24
    adc b                                         ; $4acb: $88
    ld a, [bc]                                    ; $4acc: $0a
    ldh a, [$30]                                  ; $4acd: $f0 $30
    rst $08                                       ; $4acf: $cf
    pop bc                                        ; $4ad0: $c1
    rst $38                                       ; $4ad1: $ff
    ld hl, sp+$72                                 ; $4ad2: $f8 $72
    xor e                                         ; $4ad4: $ab
    or d                                          ; $4ad5: $b2
    sub d                                         ; $4ad6: $92
    ld b, $7e                                     ; $4ad7: $06 $7e
    rla                                           ; $4ad9: $17
    and [hl]                                      ; $4ada: $a6
    push hl                                       ; $4adb: $e5
    sub l                                         ; $4adc: $95
    dec l                                         ; $4add: $2d
    ld l, c                                       ; $4ade: $69
    dec h                                         ; $4adf: $25
    dec c                                         ; $4ae0: $0d
    db $fc                                        ; $4ae1: $fc
    ld a, [hl-]                                   ; $4ae2: $3a
    ld a, c                                       ; $4ae3: $79
    ret                                           ; $4ae4: $c9


    ld bc, $32cd                                  ; $4ae5: $01 $cd $32
    ld e, [hl]                                    ; $4ae8: $5e
    cp l                                          ; $4ae9: $bd
    ld a, [hl+]                                   ; $4aea: $2a
    di                                            ; $4aeb: $f3
    ld a, [c]                                     ; $4aec: $f2
    pop hl                                        ; $4aed: $e1
    jp c, $a95f                                   ; $4aee: $da $5f $a9

    add c                                         ; $4af1: $81
    sbc a                                         ; $4af2: $9f
    sub a                                         ; $4af3: $97
    ld l, a                                       ; $4af4: $6f
    ld l, d                                       ; $4af5: $6a
    ld a, [c]                                     ; $4af6: $f2
    add e                                         ; $4af7: $83
    adc [hl]                                      ; $4af8: $8e
    ld c, d                                       ; $4af9: $4a
    dec a                                         ; $4afa: $3d
    ld [hl], $08                                  ; $4afb: $36 $08
    inc bc                                        ; $4afd: $03
    dec a                                         ; $4afe: $3d
    jp z, $d7cb                                   ; $4aff: $ca $cb $d7

    ld h, b                                       ; $4b02: $60
    sub b                                         ; $4b03: $90
    pop hl                                        ; $4b04: $e1
    ld a, e                                       ; $4b05: $7b
    cp c                                          ; $4b06: $b9
    inc d                                         ; $4b07: $14
    call z, Call_027_4436                         ; $4b08: $cc $36 $44
    call $9db4                                    ; $4b0b: $cd $b4 $9d
    add $77                                       ; $4b0e: $c6 $77
    call c, Call_027_558d                         ; $4b10: $dc $8d $55
    xor c                                         ; $4b13: $a9
    pop bc                                        ; $4b14: $c1
    jp c, Jump_000_1992                           ; $4b15: $da $92 $19

    xor [hl]                                      ; $4b18: $ae
    ld [hl-], a                                   ; $4b19: $32
    sbc l                                         ; $4b1a: $9d
    halt                                          ; $4b1b: $76
    xor d                                         ; $4b1c: $aa
    jr nc, jr_027_4b53                            ; $4b1d: $30 $34

    set 4, b                                      ; $4b1f: $cb $e0
    ld a, a                                       ; $4b21: $7f
    push hl                                       ; $4b22: $e5
    add [hl]                                      ; $4b23: $86
    dec bc                                        ; $4b24: $0b
    ld [hl], d                                    ; $4b25: $72
    sub a                                         ; $4b26: $97
    cp b                                          ; $4b27: $b8
    ld l, e                                       ; $4b28: $6b

jr_027_4b29:
    dec de                                        ; $4b29: $1b
    rra                                           ; $4b2a: $1f
    and l                                         ; $4b2b: $a5
    xor a                                         ; $4b2c: $af
    jp z, $97f0                                   ; $4b2d: $ca $f0 $97

    add $11                                       ; $4b30: $c6 $11
    ld b, $3d                                     ; $4b32: $06 $3d
    jp z, Jump_027_502f                           ; $4b34: $ca $2f $50

    add hl, bc                                    ; $4b37: $09
    or d                                          ; $4b38: $b2
    adc c                                         ; $4b39: $89
    rrca                                          ; $4b3a: $0f
    ld l, e                                       ; $4b3b: $6b
    scf                                           ; $4b3c: $37
    di                                            ; $4b3d: $f3
    ld a, [c]                                     ; $4b3e: $f2
    di                                            ; $4b3f: $f3
    rst $10                                       ; $4b40: $d7
    xor d                                         ; $4b41: $aa
    cp h                                          ; $4b42: $bc
    call nc, Call_027_5560                        ; $4b43: $d4 $60 $55
    add [hl]                                      ; $4b46: $86
    ld h, c                                       ; $4b47: $61
    jp nc, $3324                                  ; $4b48: $d2 $24 $33

    ld e, h                                       ; $4b4b: $5c
    ld h, b                                       ; $4b4c: $60
    ld d, h                                       ; $4b4d: $54
    ret c                                         ; $4b4e: $d8

    cp h                                          ; $4b4f: $bc
    db $fc                                        ; $4b50: $fc
    ld e, b                                       ; $4b51: $58
    and [hl]                                      ; $4b52: $a6

jr_027_4b53:
    ld c, h                                       ; $4b53: $4c
    ld h, e                                       ; $4b54: $63
    inc e                                         ; $4b55: $1c
    db $d3                                        ; $4b56: $d3
    add [hl]                                      ; $4b57: $86
    cp e                                          ; $4b58: $bb
    or [hl]                                       ; $4b59: $b6
    pop af                                        ; $4b5a: $f1
    ld a, c                                       ; $4b5b: $79
    ld sp, hl                                     ; $4b5c: $f9
    ld h, [hl]                                    ; $4b5d: $66
    db $10                                        ; $4b5e: $10
    rst $38                                       ; $4b5f: $ff
    dec sp                                        ; $4b60: $3b
    ld d, e                                       ; $4b61: $53
    rra                                           ; $4b62: $1f
    db $dd                                        ; $4b63: $dd
    and b                                         ; $4b64: $a0
    jr c, jr_027_4b29                             ; $4b65: $38 $c2

    dec a                                         ; $4b67: $3d
    jp z, $d7cb                                   ; $4b68: $ca $cb $d7

    ld h, b                                       ; $4b6b: $60
    ld h, b                                       ; $4b6c: $60
    ld a, [hl-]                                   ; $4b6d: $3a
    sbc l                                         ; $4b6e: $9d
    add h                                         ; $4b6f: $84
    ld h, a                                       ; $4b70: $67
    di                                            ; $4b71: $f3
    ld e, h                                       ; $4b72: $5c
    ei                                            ; $4b73: $fb
    and a                                         ; $4b74: $a7
    dec hl                                        ; $4b75: $2b
    sub a                                         ; $4b76: $97
    or c                                          ; $4b77: $b1
    and a                                         ; $4b78: $a7
    add c                                         ; $4b79: $81
    db $eb                                        ; $4b7a: $eb
    dec d                                         ; $4b7b: $15
    ld e, [hl]                                    ; $4b7c: $5e
    sbc e                                         ; $4b7d: $9b
    ld a, c                                       ; $4b7e: $79
    adc $cb                                       ; $4b7f: $ce $cb
    rst $08                                       ; $4b81: $cf
    ld c, [hl]                                    ; $4b82: $4e
    inc hl                                        ; $4b83: $23
    ld e, [hl]                                    ; $4b84: $5e
    ld h, [hl]                                    ; $4b85: $66
    rst $00                                       ; $4b86: $c7
    ld c, h                                       ; $4b87: $4c
    reti                                          ; $4b88: $d9


    and l                                         ; $4b89: $a5
    ld a, c                                       ; $4b8a: $79
    cp c                                          ; $4b8b: $b9
    or b                                          ; $4b8c: $b0
    and d                                         ; $4b8d: $a2
    ld sp, $daf2                                  ; $4b8e: $31 $f2 $da
    ld [hl], b                                    ; $4b91: $70
    rst $10                                       ; $4b92: $d7
    ld [hl], $3e                                  ; $4b93: $36 $3e
    bit 3, b                                      ; $4b95: $cb $58
    ld d, d                                       ; $4b97: $52
    call $a757                                    ; $4b98: $cd $57 $a7
    db $e4                                        ; $4b9b: $e4
    rst $00                                       ; $4b9c: $c7
    rla                                           ; $4b9d: $17
    push af                                       ; $4b9e: $f5
    ld a, [de]                                    ; $4b9f: $1a
    xor h                                         ; $4ba0: $ac
    ld e, h                                       ; $4ba1: $5c
    halt                                          ; $4ba2: $76
    add hl, hl                                    ; $4ba3: $29
    ret c                                         ; $4ba4: $d8

    ld [hl], l                                    ; $4ba5: $75
    add h                                         ; $4ba6: $84
    ld bc, $6527                                  ; $4ba7: $01 $27 $65
    sub $97                                       ; $4baa: $d6 $97
    add $77                                       ; $4bac: $c6 $77
    db $ed                                        ; $4bae: $ed
    dec [hl]                                      ; $4baf: $35
    ld l, c                                       ; $4bb0: $69
    ld l, d                                       ; $4bb1: $6a
    ld a, [c]                                     ; $4bb2: $f2
    dec bc                                        ; $4bb3: $0b
    ld a, [c]                                     ; $4bb4: $f2
    ld d, d                                       ; $4bb5: $52
    or b                                          ; $4bb6: $b0
    ld c, e                                       ; $4bb7: $4b
    sbc [hl]                                      ; $4bb8: $9e
    dec sp                                        ; $4bb9: $3b
    ld l, $5e                                     ; $4bba: $2e $5e
    rst $20                                       ; $4bbc: $e7
    ld l, a                                       ; $4bbd: $6f
    ld d, l                                       ; $4bbe: $55
    xor a                                         ; $4bbf: $af
    pop bc                                        ; $4bc0: $c1
    jp nc, Jump_027_6fb6                          ; $4bc1: $d2 $b6 $6f

    push af                                       ; $4bc4: $f5
    ld b, a                                       ; $4bc5: $47
    call z, $cbcb                                 ; $4bc6: $cc $cb $cb
    rst $10                                       ; $4bc9: $d7
    ld h, b                                       ; $4bca: $60
    cp d                                          ; $4bcb: $ba
    xor d                                         ; $4bcc: $aa
    jr @+$01                                      ; $4bcd: $18 $ff

    reti                                          ; $4bcf: $d9


    sub d                                         ; $4bd0: $92
    pop hl                                        ; $4bd1: $e1
    cp h                                          ; $4bd2: $bc
    db $fc                                        ; $4bd3: $fc
    ld c, $10                                     ; $4bd4: $0e $10
    ld [hl], $3b                                  ; $4bd6: $36 $3b
    ld h, [hl]                                    ; $4bd8: $66
    jp z, $06e4                                   ; $4bd9: $ca $e4 $06

    push bc                                       ; $4bdc: $c5
    rst $10                                       ; $4bdd: $d7
    ld l, [hl]                                    ; $4bde: $6e
    ld d, [hl]                                    ; $4bdf: $56
    ld l, $8c                                     ; $4be0: $2e $8c
    ld h, l                                       ; $4be2: $65
    ld a, [bc]                                    ; $4be3: $0a
    jp nz, $d2a7                                  ; $4be4: $c2 $a7 $d2

    cpl                                           ; $4be7: $2f
    db $ed                                        ; $4be8: $ed
    ld a, c                                       ; $4be9: $79
    ld c, c                                       ; $4bea: $49
    ld hl, sp+$05                                 ; $4beb: $f8 $05
    ld [hl], d                                    ; $4bed: $72
    ld l, l                                       ; $4bee: $6d
    ei                                            ; $4bef: $fb
    jp nc, $d5c0                                  ; $4bf0: $d2 $c0 $d5

    call $2ec3                                    ; $4bf3: $cd $c3 $2e
    inc c                                         ; $4bf6: $0c
    ld c, h                                       ; $4bf7: $4c
    and a                                         ; $4bf8: $a7
    sub e                                         ; $4bf9: $93
    ldh a, [$6c]                                  ; $4bfa: $f0 $6c
    sbc [hl]                                      ; $4bfc: $9e
    adc e                                         ; $4bfd: $8b
    xor a                                         ; $4bfe: $af
    ld l, h                                       ; $4bff: $6c
    sbc [hl]                                      ; $4c00: $9e
    ld d, e                                       ; $4c01: $53
    ld c, d                                       ; $4c02: $4a
    cpl                                           ; $4c03: $2f
    cpl                                           ; $4c04: $2f
    dec hl                                        ; $4c05: $2b
    ld a, [de]                                    ; $4c06: $1a
    inc hl                                        ; $4c07: $23
    xor a                                         ; $4c08: $af
    call $c320                                    ; $4c09: $cd $20 $c3
    cpl                                           ; $4c0c: $2f
    ret                                           ; $4c0d: $c9


    inc hl                                        ; $4c0e: $23
    inc c                                         ; $4c0f: $0c
    and a                                         ; $4c10: $a7
    jp nc, $ed2f                                  ; $4c11: $d2 $2f $ed

    ld a, c                                       ; $4c14: $79
    ld sp, hl                                     ; $4c15: $f9
    dec b                                         ; $4c16: $05
    ld [hl], d                                    ; $4c17: $72
    ld l, l                                       ; $4c18: $6d
    ei                                            ; $4c19: $fb
    ld [de], a                                    ; $4c1a: $12
    xor h                                         ; $4c1b: $ac
    ld d, d                                       ; $4c1c: $52
    ld e, d                                       ; $4c1d: $5a
    ld [hl], b                                    ; $4c1e: $70
    xor l                                         ; $4c1f: $ad
    cp a                                          ; $4c20: $bf
    ld h, $cd                                     ; $4c21: $26 $cd
    ld [hl], h                                    ; $4c23: $74
    ld [hl], d                                    ; $4c24: $72
    reti                                          ; $4c25: $d9


    rst $08                                       ; $4c26: $cf
    ld [hl], e                                    ; $4c27: $73
    ld c, d                                       ; $4c28: $4a
    jp hl                                         ; $4c29: $e9


    push hl                                       ; $4c2a: $e5
    ld h, l                                       ; $4c2b: $65
    halt                                          ; $4c2c: $76
    call z, $8414                                 ; $4c2d: $cc $14 $84
    db $10                                        ; $4c30: $10
    ld a, a                                       ; $4c31: $7f
    cp l                                          ; $4c32: $bd
    and h                                         ; $4c33: $a4
    pop af                                        ; $4c34: $f1
    cp l                                          ; $4c35: $bd
    push af                                       ; $4c36: $f5
    ld l, c                                       ; $4c37: $69
    ld h, c                                       ; $4c38: $61
    ld e, d                                       ; $4c39: $5a
    cpl                                           ; $4c3a: $2f
    dec b                                         ; $4c3b: $05
    ld [$9603], sp                                ; $4c3c: $08 $03 $96
    sbc d                                         ; $4c3f: $9a
    push af                                       ; $4c40: $f5
    ld b, a                                       ; $4c41: $47
    ld l, a                                       ; $4c42: $6f
    ld a, l                                       ; $4c43: $7d
    add hl, de                                    ; $4c44: $19
    db $fc                                        ; $4c45: $fc
    db $d3                                        ; $4c46: $d3
    sub h                                         ; $4c47: $94
    sbc d                                         ; $4c48: $9a
    and h                                         ; $4c49: $a4
    ld e, a                                       ; $4c4a: $5f
    sub b                                         ; $4c4b: $90
    cp e                                          ; $4c4c: $bb
    db $e4                                        ; $4c4d: $e4
    add hl, sp                                    ; $4c4e: $39
    cpl                                           ; $4c4f: $2f
    ld [$598b], a                                 ; $4c50: $ea $8b $59
    push de                                       ; $4c53: $d5
    sbc a                                         ; $4c54: $9f
    adc l                                         ; $4c55: $8d
    ld h, l                                       ; $4c56: $65
    jp z, $cdda                                   ; $4c57: $ca $da $cd

    cp h                                          ; $4c5a: $bc
    db $fc                                        ; $4c5b: $fc
    ld a, [hl-]                                   ; $4c5c: $3a
    add [hl]                                      ; $4c5d: $86
    or c                                          ; $4c5e: $b1
    ld hl, sp+$08                                 ; $4c5f: $f8 $08
    inc bc                                        ; $4c61: $03
    rst $00                                       ; $4c62: $c7
    inc h                                         ; $4c63: $24
    push de                                       ; $4c64: $d5
    ld a, h                                       ; $4c65: $7c
    cp h                                          ; $4c66: $bc
    add $fa                                       ; $4c67: $c6 $fa
    ld l, $2d                                     ; $4c69: $2e $2d
    ld l, c                                       ; $4c6b: $69
    ld d, l                                       ; $4c6c: $55
    ld d, h                                       ; $4c6d: $54
    add b                                         ; $4c6e: $80
    add a                                         ; $4c6f: $87
    ld a, c                                       ; $4c70: $79
    ld d, c                                       ; $4c71: $51
    sbc a                                         ; $4c72: $9f
    jp z, $d2ef                                   ; $4c73: $ca $ef $d2

    ldh [rSB], a                                  ; $4c76: $e0 $01
    ld l, [hl]                                    ; $4c78: $6e
    ld [de], a                                    ; $4c79: $12
    jp c, Jump_000_09c9                           ; $4c7a: $da $c9 $09

    cp [hl]                                       ; $4c7d: $be
    or h                                          ; $4c7e: $b4
    rst $20                                       ; $4c7f: $e7
    push hl                                       ; $4c80: $e5
    rst $20                                       ; $4c81: $e7
    xor a                                         ; $4c82: $af
    ld d, l                                       ; $4c83: $55
    ld a, c                                       ; $4c84: $79
    add c                                         ; $4c85: $81
    cp c                                          ; $4c86: $b9
    sub $7f                                       ; $4c87: $d6 $7f
    jp z, $b36b                                   ; $4c89: $ca $6b $b3

    sub d                                         ; $4c8c: $92
    ld b, $7e                                     ; $4c8d: $06 $7e
    sbc l                                         ; $4c8f: $9d
    cp h                                          ; $4c90: $bc
    db $e4                                        ; $4c91: $e4
    or b                                          ; $4c92: $b0
    ld l, e                                       ; $4c93: $6b
    xor a                                         ; $4c94: $af
    ld c, c                                       ; $4c95: $49
    or e                                          ; $4c96: $b3
    ld c, e                                       ; $4c97: $4b
    cp $22                                        ; $4c98: $fe $22
    and [hl]                                      ; $4c9a: $a6
    db $e3                                        ; $4c9b: $e3
    di                                            ; $4c9c: $f3
    ld a, [c]                                     ; $4c9d: $f2
    ld hl, $47c2                                  ; $4c9e: $21 $c2 $47
    db $ed                                        ; $4ca1: $ed
    ld a, h                                       ; $4ca2: $7c

jr_027_4ca3:
    ld [hl], e                                    ; $4ca3: $73
    xor e                                         ; $4ca4: $ab
    ld a, [$6d78]                                 ; $4ca5: $fa $78 $6d
    add $92                                       ; $4ca8: $c6 $92
    and a                                         ; $4caa: $a7
    ld a, c                                       ; $4cab: $79
    adc $cb                                       ; $4cac: $ce $cb
    rrca                                          ; $4cae: $0f
    cp [hl]                                       ; $4caf: $be
    ld c, d                                       ; $4cb0: $4a
    ld h, d                                       ; $4cb1: $62
    or e                                          ; $4cb2: $b3
    ld h, e                                       ; $4cb3: $63
    and [hl]                                      ; $4cb4: $a6
    db $ec                                        ; $4cb5: $ec
    jp nz, Jump_027_48bc                          ; $4cb6: $c2 $bc $48

    sbc d                                         ; $4cb9: $9a
    and b                                         ; $4cba: $a0
    call z, $afcb                                 ; $4cbb: $cc $cb $af
    ld e, h                                       ; $4cbe: $5c
    add $9e                                       ; $4cbf: $c6 $9e
    ld d, [hl]                                    ; $4cc1: $56
    dec d                                         ; $4cc2: $15
    db $e3                                        ; $4cc3: $e3
    ccf                                           ; $4cc4: $3f
    push af                                       ; $4cc5: $f5
    ld a, c                                       ; $4cc6: $79
    ld sp, hl                                     ; $4cc7: $f9
    dec a                                         ; $4cc8: $3d
    or c                                          ; $4cc9: $b1
    and l                                         ; $4cca: $a5
    dec a                                         ; $4ccb: $3d
    cpl                                           ; $4ccc: $2f
    cp a                                          ; $4ccd: $bf
    and d                                         ; $4cce: $a2
    ld sp, $0c22                                  ; $4ccf: $31 $22 $0c
    ld b, a                                       ; $4cd2: $47
    rst $38                                       ; $4cd3: $ff
    ld a, [hl+]                                   ; $4cd4: $2a
    sub l                                         ; $4cd5: $95
    or a                                          ; $4cd6: $b7
    ld c, l                                       ; $4cd7: $4d
    sbc h                                         ; $4cd8: $9c
    ld a, [$fcbc]                                 ; $4cd9: $fa $bc $fc
    jr z, jr_027_4ca3                             ; $4cdc: $28 $c5

    res 3, [hl]                                   ; $4cde: $cb $9e
    ret c                                         ; $4ce0: $d8

    jp nc, $979e                                  ; $4ce1: $d2 $9e $97

    dec bc                                        ; $4ce4: $0b
    dec hl                                        ; $4ce5: $2b
    ld a, [de]                                    ; $4ce6: $1a
    inc hl                                        ; $4ce7: $23
    ld e, d                                       ; $4ce8: $5a
    xor a                                         ; $4ce9: $af
    inc [hl]                                      ; $4cea: $34
    xor e                                         ; $4ceb: $ab
    sub h                                         ; $4cec: $94
    or $c4                                        ; $4ced: $f6 $c4
    ld h, [hl]                                    ; $4cef: $66
    ld a, [hl-]                                   ; $4cf0: $3a
    ld c, e                                       ; $4cf1: $4b
    sbc d                                         ; $4cf2: $9a
    ld d, d                                       ; $4cf3: $52
    ld a, d                                       ; $4cf4: $7a
    ld a, c                                       ; $4cf5: $79
    sbc c                                         ; $4cf6: $99
    dec e                                         ; $4cf7: $1d
    inc sp                                        ; $4cf8: $33
    ld h, l                                       ; $4cf9: $65
    rst $10                                       ; $4cfa: $d7
    ld e, [hl]                                    ; $4cfb: $5e
    sub e                                         ; $4cfc: $93
    ld h, [hl]                                    ; $4cfd: $66
    inc l                                         ; $4cfe: $2c
    xor c                                         ; $4cff: $a9
    and $e3                                       ; $4d00: $e6 $e3
    push de                                       ; $4d02: $d5
    xor e                                         ; $4d03: $ab
    or d                                          ; $4d04: $b2
    ld h, $8d                                     ; $4d05: $26 $8d
    inc c                                         ; $4d07: $0c
    db $fc                                        ; $4d08: $fc
    dec sp                                        ; $4d09: $3b
    ld [$2703], sp                                ; $4d0a: $08 $03 $27
    ld h, l                                       ; $4d0d: $65
    sub $a7                                       ; $4d0e: $d6 $a7
    sub d                                         ; $4d10: $92
    add [hl]                                      ; $4d11: $86
    ret c                                         ; $4d12: $d8

    db $ec                                        ; $4d13: $ec
    sub h                                         ; $4d14: $94
    ld d, l                                       ; $4d15: $55
    and [hl]                                      ; $4d16: $a6
    db $dd                                        ; $4d17: $dd
    ld l, [hl]                                    ; $4d18: $6e
    ld c, d                                       ; $4d19: $4a
    add $87                                       ; $4d1a: $c6 $87
    xor c                                         ; $4d1c: $a9
    and h                                         ; $4d1d: $a4
    ld hl, $2f36                                  ; $4d1e: $21 $36 $2f
    ccf                                           ; $4d21: $3f
    xor b                                         ; $4d22: $a8
    ld c, d                                       ; $4d23: $4a
    ld h, [hl]                                    ; $4d24: $66
    ld b, h                                       ; $4d25: $44
    ld l, e                                       ; $4d26: $6b
    ld [hl], c                                    ; $4d27: $71
    jp $1c9e                                      ; $4d28: $c3 $9e $1c


    ld d, [hl]                                    ; $4d2b: $56
    call nc, Call_027_6bfa                        ; $4d2c: $d4 $fa $6b
    rst $38                                       ; $4d2f: $ff
    db $d3                                        ; $4d30: $d3
    jp z, $9765                                   ; $4d31: $ca $65 $97

    add d                                         ; $4d34: $82
    ld a, c                                       ; $4d35: $79
    cp c                                          ; $4d36: $b9
    inc d                                         ; $4d37: $14
    ret nz                                        ; $4d38: $c0

    ld l, $cd                                     ; $4d39: $2e $cd
    res 0, a                                      ; $4d3b: $cb $87
    ld d, e                                       ; $4d3d: $53
    ld e, b                                       ; $4d3e: $58
    ld c, h                                       ; $4d3f: $4c
    ld a, [bc]                                    ; $4d40: $0a
    and [hl]                                      ; $4d41: $a6
    or b                                          ; $4d42: $b0
    sub $0c                                       ; $4d43: $d6 $0c
    ld a, b                                       ; $4d45: $78
    dec d                                         ; $4d46: $15
    add a                                         ; $4d47: $87
    dec d                                         ; $4d48: $15
    add l                                         ; $4d49: $85
    or l                                          ; $4d4a: $b5
    rst $38                                       ; $4d4b: $ff
    ld l, c                                       ; $4d4c: $69
    push hl                                       ; $4d4d: $e5
    push hl                                       ; $4d4e: $e5
    ld de, $9606                                  ; $4d4f: $11 $06 $96
    pop af                                        ; $4d52: $f1
    ld c, c                                       ; $4d53: $49
    db $ec                                        ; $4d54: $ec
    ld h, l                                       ; $4d55: $65
    ld a, h                                       ; $4d56: $7c
    ld d, c                                       ; $4d57: $51
    xor a                                         ; $4d58: $af
    pop bc                                        ; $4d59: $c1
    ld l, $cd                                     ; $4d5a: $2e $cd
    adc e                                         ; $4d5c: $8b
    ld a, [$b2e0]                                 ; $4d5d: $fa $e0 $b2
    ld e, a                                       ; $4d60: $5f
    pop de                                        ; $4d61: $d1
    jr jr_027_4ddd                                ; $4d62: $18 $79

    ld l, l                                       ; $4d64: $6d
    and $45                                       ; $4d65: $e6 $45
    ld a, l                                       ; $4d67: $7d
    rst $00                                       ; $4d68: $c7
    sbc b                                         ; $4d69: $98
    or b                                          ; $4d6a: $b0
    dec e                                         ; $4d6b: $1d
    sbc a                                         ; $4d6c: $9f
    and l                                         ; $4d6d: $a5
    db $fc                                        ; $4d6e: $fc
    inc a                                         ; $4d6f: $3c
    inc hl                                        ; $4d70: $23
    sbc e                                         ; $4d71: $9b
    add c                                         ; $4d72: $81
    ld a, c                                       ; $4d73: $79
    ld c, $5c                                     ; $4d74: $0e $5c
    sbc e                                         ; $4d76: $9b
    add hl, hl                                    ; $4d77: $29
    xor a                                         ; $4d78: $af
    call $c96c                                    ; $4d79: $cd $6c $c9
    or b                                          ; $4d7c: $b0
    dec hl                                        ; $4d7d: $2b
    ld b, $a7                                     ; $4d7e: $06 $a7
    sbc c                                         ; $4d80: $99
    dec hl                                        ; $4d81: $2b
    ld a, [c]                                     ; $4d82: $f2
    ld sp, $2b4e                                  ; $4d83: $31 $4e $2b
    add a                                         ; $4d86: $87
    ld b, c                                       ; $4d87: $41
    and l                                         ; $4d88: $a5
    ld a, [c]                                     ; $4d89: $f2
    ld l, h                                       ; $4d8a: $6c
    ld l, c                                       ; $4d8b: $69
    rst $28                                       ; $4d8c: $ef
    xor l                                         ; $4d8d: $ad
    cpl                                           ; $4d8e: $2f
    adc l                                         ; $4d8f: $8d
    sub a                                         ; $4d90: $97
    ld c, e                                       ; $4d91: $4b
    ld bc, $d1da                                  ; $4d92: $01 $da $d1
    add $67                                       ; $4d95: $c6 $67
    add hl, de                                    ; $4d97: $19
    xor a                                         ; $4d98: $af
    or b                                          ; $4d99: $b0
    ld c, e                                       ; $4d9a: $4b
    dec hl                                        ; $4d9b: $2b
    rla                                           ; $4d9c: $17
    sub [hl]                                      ; $4d9d: $96
    or [hl]                                       ; $4d9e: $b6
    ld a, l                                       ; $4d9f: $7d
    xor e                                         ; $4da0: $ab
    ld e, a                                       ; $4da1: $5f
    ld d, d                                       ; $4da2: $52
    push af                                       ; $4da3: $f5
    ld d, e                                       ; $4da4: $53
    ld h, d                                       ; $4da5: $62
    cp e                                          ; $4da6: $bb
    ld a, $a8                                     ; $4da7: $3e $a8
    ld d, h                                       ; $4da9: $54
    sbc [hl]                                      ; $4daa: $9e
    dec l                                         ; $4dab: $2d
    ld a, h                                       ; $4dac: $7c
    add h                                         ; $4dad: $84
    ld bc, $5ac7                                  ; $4dae: $01 $c7 $5a
    ld e, a                                       ; $4db1: $5f
    sub $fe                                       ; $4db2: $d6 $fe
    and a                                         ; $4db4: $a7
    ld e, l                                       ; $4db5: $5d
    sbc d                                         ; $4db6: $9a
    sub a                                         ; $4db7: $97
    ld e, a                                       ; $4db8: $5f
    rrca                                          ; $4db9: $0f
    ret                                           ; $4dba: $c9


    ld c, [hl]                                    ; $4dbb: $4e
    ld l, c                                       ; $4dbc: $69
    halt                                          ; $4dbd: $76
    ld a, d                                       ; $4dbe: $7a
    ld h, [hl]                                    ; $4dbf: $66
    ret c                                         ; $4dc0: $d8

    ld [hl], l                                    ; $4dc1: $75
    cp l                                          ; $4dc2: $bd
    jp nc, Jump_027_4aac                          ; $4dc3: $d2 $ac $4a

    inc de                                        ; $4dc6: $13
    reti                                          ; $4dc7: $d9


    add b                                         ; $4dc8: $80
    ld a, a                                       ; $4dc9: $7f
    sub l                                         ; $4dca: $95
    ld a, c                                       ; $4dcb: $79
    ld sp, hl                                     ; $4dcc: $f9
    add c                                         ; $4dcd: $81
    cp c                                          ; $4dce: $b9
    ld c, $4b                                     ; $4dcf: $0e $4b
    ld a, e                                       ; $4dd1: $7b
    ld a, [hl+]                                   ; $4dd2: $2a
    ld h, c                                       ; $4dd3: $61
    ld a, [de]                                    ; $4dd4: $1a
    ld e, c                                       ; $4dd5: $59
    sbc b                                         ; $4dd6: $98
    sub $1f                                       ; $4dd7: $d6 $1f
    ld e, a                                       ; $4dd9: $5f
    sbc [hl]                                      ; $4dda: $9e
    sub $a4                                       ; $4ddb: $d6 $a4

jr_027_4ddd:
    xor c                                         ; $4ddd: $a9
    ret                                           ; $4dde: $c9


    adc a                                         ; $4ddf: $8f
    jp nc, Jump_000_3317                          ; $4de0: $d2 $17 $33

    db $eb                                        ; $4de3: $eb
    sub a                                         ; $4de4: $97
    ld [bc], a                                    ; $4de5: $02
    add h                                         ; $4de6: $84
    ld bc, $ca3d                                  ; $4de7: $01 $3d $ca
    set 2, a                                      ; $4dea: $cb $d7
    ld h, b                                       ; $4dec: $60
    cp d                                          ; $4ded: $ba
    di                                            ; $4dee: $f3
    call $eaad                                    ; $4def: $cd $ad $ea
    db $e3                                        ; $4df2: $e3
    or l                                          ; $4df3: $b5
    sbc c                                         ; $4df4: $99
    rst $20                                       ; $4df5: $e7
    cp h                                          ; $4df6: $bc
    db $fc                                        ; $4df7: $fc
    ldh [$ad], a                                  ; $4df8: $e0 $ad
    ld c, a                                       ; $4dfa: $4f
    ld e, [hl]                                    ; $4dfb: $5e
    ld h, [hl]                                    ; $4dfc: $66
    rst $00                                       ; $4dfd: $c7
    ld c, h                                       ; $4dfe: $4c
    sbc c                                         ; $4dff: $99
    ld a, [$fcbc]                                 ; $4e00: $fa $bc $fc
    sbc [hl]                                      ; $4e03: $9e
    ret c                                         ; $4e04: $d8

    jp nc, $979e                                  ; $4e05: $d2 $9e $97

    dec bc                                        ; $4e08: $0b
    dec hl                                        ; $4e09: $2b
    ld a, [de]                                    ; $4e0a: $1a
    inc hl                                        ; $4e0b: $23
    jp nz, $ca3d                                  ; $4e0c: $c2 $3d $ca

    rst $28                                       ; $4e0f: $ef
    ld a, h                                       ; $4e10: $7c
    ld [hl], e                                    ; $4e11: $73
    xor e                                         ; $4e12: $ab
    ld a, [$8f83]                                 ; $4e13: $fa $83 $8f
    rst $10                                       ; $4e16: $d7
    ld h, [hl]                                    ; $4e17: $66
    sbc [hl]                                      ; $4e18: $9e
    dec sp                                        ; $4e19: $3b
    ld e, [hl]                                    ; $4e1a: $5e
    ld a, [de]                                    ; $4e1b: $1a
    db $db                                        ; $4e1c: $db
    cp [hl]                                       ; $4e1d: $be
    call nz, Call_027_6652                        ; $4e1e: $c4 $52 $66
    ld c, e                                       ; $4e21: $4b
    add [hl]                                      ; $4e22: $86
    dec hl                                        ; $4e23: $2b
    cpl                                           ; $4e24: $2f
    cp a                                          ; $4e25: $bf
    dec bc                                        ; $4e26: $0b
    di                                            ; $4e27: $f3
    ld [hl+], a                                   ; $4e28: $22
    ld l, c                                       ; $4e29: $69
    add d                                         ; $4e2a: $82
    ld [hl-], a                                   ; $4e2b: $32
    cpl                                           ; $4e2c: $2f
    cp a                                          ; $4e2d: $bf
    ld d, b                                       ; $4e2e: $50
    add e                                         ; $4e2f: $83
    ld e, e                                       ; $4e30: $5b
    adc l                                         ; $4e31: $8d
    ld h, l                                       ; $4e32: $65
    jp z, $e7d4                                   ; $4e33: $ca $d4 $e7

    push hl                                       ; $4e36: $e5
    rst $30                                       ; $4e37: $f7
    call nz, $f696                                ; $4e38: $c4 $96 $f6
    cp h                                          ; $4e3b: $bc
    db $fc                                        ; $4e3c: $fc
    adc d                                         ; $4e3d: $8a
    add $88                                       ; $4e3e: $c6 $88
    jr nc, @-$68                                  ; $4e40: $30 $96

    sbc d                                         ; $4e42: $9a
    push af                                       ; $4e43: $f5
    ld d, a                                       ; $4e44: $57
    ld e, [hl]                                    ; $4e45: $5e
    add l                                         ; $4e46: $85
    call $cbcb                                    ; $4e47: $cd $cb $cb
    rst $10                                       ; $4e4a: $d7
    ld h, b                                       ; $4e4b: $60
    ld a, [hl-]                                   ; $4e4c: $3a
    jr z, jr_027_4e78                             ; $4e4d: $28 $29

    ld e, [hl]                                    ; $4e4f: $5e
    add hl, de                                    ; $4e50: $19
    sbc a                                         ; $4e51: $9f
    rst $20                                       ; $4e52: $e7
    cp h                                          ; $4e53: $bc
    db $fc                                        ; $4e54: $fc
    ldh [$72], a                                  ; $4e55: $e0 $72
    ldh a, [$32]                                  ; $4e57: $f0 $32
    dec sp                                        ; $4e59: $3b
    ld h, [hl]                                    ; $4e5a: $66
    jp z, $e692                                   ; $4e5b: $ca $92 $e6

    push hl                                       ; $4e5e: $e5
    rst $30                                       ; $4e5f: $f7
    ld a, [bc]                                    ; $4e60: $0a
    cp $42                                        ; $4e61: $fe $42
    add e                                         ; $4e63: $83
    bit 7, [hl]                                   ; $4e64: $cb $7e
    ld l, c                                       ; $4e66: $69
    rst $08                                       ; $4e67: $cf
    res 0, l                                      ; $4e68: $cb $85
    dec d                                         ; $4e6a: $15
    adc l                                         ; $4e6b: $8d
    sub c                                         ; $4e6c: $91
    rst $10                                       ; $4e6d: $d7
    ld b, $61                                     ; $4e6e: $06 $61
    dec a                                         ; $4e70: $3d
    jp z, $bc2f                                   ; $4e71: $ca $2f $bc

    ld [hl+], a                                   ; $4e74: $22
    add hl, hl                                    ; $4e75: $29
    ld l, e                                       ; $4e76: $6b
    scf                                           ; $4e77: $37

jr_027_4e78:
    di                                            ; $4e78: $f3
    ld a, [c]                                     ; $4e79: $f2
    ld h, e                                       ; $4e7a: $63
    sbc c                                         ; $4e7b: $99
    ld [hl-], a                                   ; $4e7c: $32
    rst $08                                       ; $4e7d: $cf
    ld a, c                                       ; $4e7e: $79
    ld sp, hl                                     ; $4e7f: $f9
    ld e, c                                       ; $4e80: $59
    ret z                                         ; $4e81: $c8

    cp [hl]                                       ; $4e82: $be
    ld [de], a                                    ; $4e83: $12
    xor d                                         ; $4e84: $aa
    inc [hl]                                      ; $4e85: $34
    cp e                                          ; $4e86: $bb
    jr nc, jr_027_4eb9                            ; $4e87: $30 $30

    sbc l                                         ; $4e89: $9d
    ld c, [hl]                                    ; $4e8a: $4e
    jp nz, Jump_027_79b3                          ; $4e8b: $c2 $b3 $79

    ld l, $be                                     ; $4e8e: $2e $be
    or d                                          ; $4e90: $b2
    ld b, c                                       ; $4e91: $41
    add [hl]                                      ; $4e92: $86
    rst $08                                       ; $4e93: $cf
    sub a                                         ; $4e94: $97
    sub a                                         ; $4e95: $97
    ld b, a                                       ; $4e96: $47
    jr jr_027_4ec0                                ; $4e97: $18 $27

    scf                                           ; $4e99: $37
    ld h, e                                       ; $4e9a: $63
    jp z, Jump_000_19e6                           ; $4e9b: $ca $e6 $19

    reti                                          ; $4e9e: $d9


    jp nz, $979f                                  ; $4e9f: $c2 $9f $97

    sub a                                         ; $4ea2: $97
    sbc a                                         ; $4ea3: $9f
    add c                                         ; $4ea4: $81
    ld h, a                                       ; $4ea5: $67
    di                                            ; $4ea6: $f3
    ld e, h                                       ; $4ea7: $5c
    ei                                            ; $4ea8: $fb
    and a                                         ; $4ea9: $a7
    add e                                         ; $4eaa: $83
    xor a                                         ; $4eab: $af
    db $e4                                        ; $4eac: $e4
    ld a, l                                       ; $4ead: $7d
    dec e                                         ; $4eae: $1d
    dec b                                         ; $4eaf: $05
    ret nc                                        ; $4eb0: $d0

    ldh [$d7], a                                  ; $4eb1: $e0 $d7
    cp $72                                        ; $4eb3: $fe $72
    adc c                                         ; $4eb5: $89
    call $2fcb                                    ; $4eb6: $cd $cb $2f

jr_027_4eb9:
    cp h                                          ; $4eb9: $bc
    ld [hl+], a                                   ; $4eba: $22
    add hl, hl                                    ; $4ebb: $29
    cp e                                          ; $4ebc: $bb
    inc [hl]                                      ; $4ebd: $34
    cpl                                           ; $4ebe: $2f
    cp a                                          ; $4ebf: $bf

jr_027_4ec0:
    ld a, [hl+]                                   ; $4ec0: $2a
    add l                                         ; $4ec1: $85
    ld e, [hl]                                    ; $4ec2: $5e
    sub [hl]                                      ; $4ec3: $96
    or $bc                                        ; $4ec4: $f6 $bc
    ld e, h                                       ; $4ec6: $5c
    ld e, b                                       ; $4ec7: $58
    pop de                                        ; $4ec8: $d1
    jr jr_027_4edc                                ; $4ec9: $18 $11

    ld b, $47                                     ; $4ecb: $06 $47
    ld e, a                                       ; $4ecd: $5f
    ld [hl+], a                                   ; $4ece: $22

Jump_027_4ecf:
    sbc b                                         ; $4ecf: $98
    cp a                                          ; $4ed0: $bf
    ld d, [hl]                                    ; $4ed1: $56
    push hl                                       ; $4ed2: $e5
    ld h, c                                       ; $4ed3: $61
    xor l                                         ; $4ed4: $ad
    rla                                           ; $4ed5: $17
    inc a                                         ; $4ed6: $3c
    and l                                         ; $4ed7: $a5
    ld e, c                                       ; $4ed8: $59
    jp c, Jump_027_593b                           ; $4ed9: $da $3b $59

jr_027_4edc:
    add e                                         ; $4edc: $83
    ld e, e                                       ; $4edd: $5b
    dec l                                         ; $4ede: $2d
    ld l, c                                       ; $4edf: $69
    ld e, [hl]                                    ; $4ee0: $5e
    ld l, $cc                                     ; $4ee1: $2e $cc
    adc [hl]                                      ; $4ee3: $8e
    sbc c                                         ; $4ee4: $99
    add d                                         ; $4ee5: $82
    db $10                                        ; $4ee6: $10
    cp d                                          ; $4ee7: $ba
    or $9a                                        ; $4ee8: $f6 $9a
    inc [hl]                                      ; $4eea: $34
    db $e3                                        ; $4eeb: $e3
    sub l                                         ; $4eec: $95
    ld a, h                                       ; $4eed: $7c
    sbc [hl]                                      ; $4eee: $9e
    xor e                                         ; $4eef: $ab
    inc [hl]                                      ; $4ef0: $34
    add $f1                                       ; $4ef1: $c6 $f1
    ld b, l                                       ; $4ef3: $45
    ld a, l                                       ; $4ef4: $7d
    push hl                                       ; $4ef5: $e5
    rst $00                                       ; $4ef6: $c7
    ld a, [c]                                     ; $4ef7: $f2
    ld h, c                                       ; $4ef8: $61
    cp $5a                                        ; $4ef9: $fe $5a
    sub l                                         ; $4efb: $95
    ld c, e                                       ; $4efc: $4b
    ld bc, $96c2                                  ; $4efd: $01 $c2 $96
    ld a, c                                       ; $4f00: $79
    cp c                                          ; $4f01: $b9
    ld d, h                                       ; $4f02: $54
    rst $18                                       ; $4f03: $df
    pop de                                        ; $4f04: $d1
    sub a                                         ; $4f05: $97
    ld [$e066], sp                                ; $4f06: $08 $66 $e0
    reti                                          ; $4f09: $d9


    inc a                                         ; $4f0a: $3c
    ld d, a                                       ; $4f0b: $57
    call nc, Call_027_53fa                        ; $4f0c: $d4 $fa $53
    ld e, d                                       ; $4f0f: $5a
    jp c, $adf6                                   ; $4f10: $da $f6 $ad

    ld a, [hl]                                    ; $4f13: $7e
    ld c, c                                       ; $4f14: $49
    di                                            ; $4f15: $f3
    ld [hl], d                                    ; $4f16: $72
    ld h, c                                       ; $4f17: $61
    halt                                          ; $4f18: $76

jr_027_4f19:
    call z, $b594                                 ; $4f19: $cc $94 $b5
    rst $18                                       ; $4f1c: $df
    ld c, [hl]                                    ; $4f1d: $4e
    ld sp, hl                                     ; $4f1e: $f9
    sub l                                         ; $4f1f: $95
    rra                                           ; $4f20: $1f
    cp e                                          ; $4f21: $bb
    rst $08                                       ; $4f22: $cf
    and [hl]                                      ; $4f23: $a6
    call nz, $fed6                                ; $4f24: $c4 $d6 $fe
    ld b, b                                       ; $4f27: $40
    ld l, c                                       ; $4f28: $69
    sbc [hl]                                      ; $4f29: $9e
    add e                                         ; $4f2a: $83
    adc $13                                       ; $4f2b: $ce $13
    ld e, e                                       ; $4f2d: $5b
    cp c                                          ; $4f2e: $b9
    jr nc, jr_027_4f19                            ; $4f2f: $30 $e8

    xor b                                         ; $4f31: $a8
    db $fc                                        ; $4f32: $fc
    db $fc                                        ; $4f33: $fc
    add [hl]                                      ; $4f34: $86
    cp a                                          ; $4f35: $bf
    ld c, e                                       ; $4f36: $4b
    di                                            ; $4f37: $f3
    ld a, [c]                                     ; $4f38: $f2
    di                                            ; $4f39: $f3
    rst $10                                       ; $4f3a: $d7
    xor d                                         ; $4f3b: $aa
    cp h                                          ; $4f3c: $bc
    ld b, b                                       ; $4f3d: $40
    ld l, l                                       ; $4f3e: $6d
    ld d, l                                       ; $4f3f: $55
    add [hl]                                      ; $4f40: $86
    ld h, c                                       ; $4f41: $61
    jp nc, $3324                                  ; $4f42: $d2 $24 $33

    ld b, h                                       ; $4f45: $44
    jr @+$3f                                      ; $4f46: $18 $3d

    jp z, $42cf                                   ; $4f48: $ca $cf $42

    or $95                                        ; $4f4b: $f6 $95
    ld d, b                                       ; $4f4d: $50
    and l                                         ; $4f4e: $a5
    reti                                          ; $4f4f: $d9


    add l                                         ; $4f50: $85
    dec h                                         ; $4f51: $25
    call $85cb                                    ; $4f52: $cd $cb $85
    reti                                          ; $4f55: $d9


    ld sp, $d053                                  ; $4f56: $31 $53 $d0
    inc l                                         ; $4f59: $2c
    ld l, e                                       ; $4f5a: $6b
    cp a                                          ; $4f5b: $bf
    xor a                                         ; $4f5c: $af
    ld a, e                                       ; $4f5d: $7b
    add [hl]                                      ; $4f5e: $86
    or [hl]                                       ; $4f5f: $b6
    ld a, h                                       ; $4f60: $7c
    inc sp                                        ; $4f61: $33
    cpl                                           ; $4f62: $2f
    ccf                                           ; $4f63: $3f
    ld [hl-], a                                   ; $4f64: $32
    ld [bc], a                                    ; $4f65: $02
    cp a                                          ; $4f66: $bf
    ld a, [$077f]                                 ; $4f67: $fa $7f $07
    and [hl]                                      ; $4f6a: $a6
    adc e                                         ; $4f6b: $8b
    jp hl                                         ; $4f6c: $e9


    ld c, e                                       ; $4f6d: $4b
    ld a, e                                       ; $4f6e: $7b
    push hl                                       ; $4f6f: $e5
    dec [hl]                                      ; $4f70: $35
    ld e, [hl]                                    ; $4f71: $5e
    ld a, [bc]                                    ; $4f72: $0a
    sub $f3                                       ; $4f73: $d6 $f3

Call_027_4f75:
    ld b, $c1                                     ; $4f75: $06 $c1
    inc de                                        ; $4f77: $13
    rst $38                                       ; $4f78: $ff
    sub c                                         ; $4f79: $91
    xor l                                         ; $4f7a: $ad
    ld a, e                                       ; $4f7b: $7b
    ld a, [$da4d]                                 ; $4f7c: $fa $4d $da
    and l                                         ; $4f7f: $a5
    ld a, c                                       ; $4f80: $79
    ld a, c                                       ; $4f81: $79
    ld a, c                                       ; $4f82: $79
    add h                                         ; $4f83: $84
    ld bc, $ca3d                                  ; $4f84: $01 $3d $ca
    set 2, a                                      ; $4f87: $cb $d7
    ld h, b                                       ; $4f89: $60
    cp d                                          ; $4f8a: $ba
    ld d, b                                       ; $4f8b: $50

Jump_027_4f8c:
    add e                                         ; $4f8c: $83
    ld e, e                                       ; $4f8d: $5b
    adc l                                         ; $4f8e: $8d
    ld h, l                                       ; $4f8f: $65
    jp z, $cd2e                                   ; $4f90: $ca $2e $cd

    res 0, l                                      ; $4f93: $cb $85
    dec d                                         ; $4f95: $15
    adc l                                         ; $4f96: $8d
    sub c                                         ; $4f97: $91
    rst $10                                       ; $4f98: $d7
    ld h, [hl]                                    ; $4f99: $66
    ld e, [hl]                                    ; $4f9a: $5e
    call nc, $e417                                ; $4f9b: $d4 $17 $e4
    jp $c634                                      ; $4f9e: $c3 $34 $c6


    ld a, c                                       ; $4fa1: $79
    ld sp, hl                                     ; $4fa2: $f9
    pop af                                        ; $4fa3: $f1
    jp c, Jump_000_258c                           ; $4fa4: $da $8c $25

    ld c, a                                       ; $4fa7: $4f
    di                                            ; $4fa8: $f3
    sbc h                                         ; $4fa9: $9c
    sub a                                         ; $4faa: $97
    rra                                           ; $4fab: $1f

Call_027_4fac:
Jump_027_4fac:
    inc sp                                        ; $4fac: $33
    inc d                                         ; $4fad: $14
    ld a, h                                       ; $4fae: $7c
    ld [de], a                                    ; $4faf: $12
    and b                                         ; $4fb0: $a0
    ld e, c                                       ; $4fb1: $59
    cp h                                          ; $4fb2: $bc
    ld b, $2b                                     ; $4fb3: $06 $2b
    ld c, d                                       ; $4fb5: $4a
    xor h                                         ; $4fb6: $ac
    reti                                          ; $4fb7: $d9


    or l                                          ; $4fb8: $b5
    rst $10                                       ; $4fb9: $d7
    and h                                         ; $4fba: $a4
    xor c                                         ; $4fbb: $a9
    ret                                           ; $4fbc: $c9


    ld c, a                                       ; $4fbd: $4f
    inc c                                         ; $4fbe: $0c
    pop de                                        ; $4fbf: $d1
    and l                                         ; $4fc0: $a5
    ld h, b                                       ; $4fc1: $60
    ld d, c                                       ; $4fc2: $51

Jump_027_4fc3:
    db $fd                                        ; $4fc3: $fd
    ld h, a                                       ; $4fc4: $67
    and a                                         ; $4fc5: $a7
    xor h                                         ; $4fc6: $ac
    add l                                         ; $4fc7: $85
    or h                                          ; $4fc8: $b4
    di                                            ; $4fc9: $f3
    dec [hl]                                      ; $4fca: $35

Call_027_4fcb:
Jump_027_4fcb:
    ld e, b                                       ; $4fcb: $58
    dec d                                         ; $4fcc: $15
    dec d                                         ; $4fcd: $15
    nop                                           ; $4fce: $00
    ld h, c                                       ; $4fcf: $61
    ld b, a                                       ; $4fd0: $47
    push bc                                       ; $4fd1: $c5
    cp b                                          ; $4fd2: $b8
    or h                                          ; $4fd3: $b4
    rst $20                                       ; $4fd4: $e7
    push hl                                       ; $4fd5: $e5
    ld [hl], a                                    ; $4fd6: $77
    or d                                          ; $4fd7: $b2
    add hl, bc                                    ; $4fd8: $09
    add d                                         ; $4fd9: $82

jr_027_4fda:
    ld hl, sp-$55                                 ; $4fda: $f8 $ab
    and d                                         ; $4fdc: $a2
    ld [bc], a                                    ; $4fdd: $02
    inc a                                         ; $4fde: $3c
    ld c, h                                       ; $4fdf: $4c
    push hl                                       ; $4fe0: $e5
    sub a                                         ; $4fe1: $97
    inc [hl]                                      ; $4fe2: $34

jr_027_4fe3:
    cpl                                           ; $4fe3: $2f
    rla                                           ; $4fe4: $17
    ld h, [hl]                                    ; $4fe5: $66
    rst $00                                       ; $4fe6: $c7
    ld c, h                                       ; $4fe7: $4c
    pop hl                                        ; $4fe8: $e1
    xor $52                                       ; $4fe9: $ee $52
    dec d                                         ; $4feb: $15
    dec c                                         ; $4fec: $0d
    cp e                                          ; $4fed: $bb
    inc d                                         ; $4fee: $14
    db $ec                                        ; $4fef: $ec
    jr z, jr_027_4fe3                             ; $4ff0: $28 $f1

    add hl, hl                                    ; $4ff2: $29
    or c                                          ; $4ff3: $b1
    sbc l                                         ; $4ff4: $9d
    ld l, h                                       ; $4ff5: $6c
    ldh [rRP], a                                  ; $4ff6: $e0 $56
    ld [$3d03], sp                                ; $4ff8: $08 $03 $3d
    jp z, $d7cb                                   ; $4ffb: $ca $cb $d7

    ld h, b                                       ; $4ffe: $60
    cp d                                          ; $4fff: $ba
    ld d, b                                       ; $5000: $50
    add e                                         ; $5001: $83
    ld e, e                                       ; $5002: $5b
    adc l                                         ; $5003: $8d
    ld h, l                                       ; $5004: $65
    jp z, $cd2e                                   ; $5005: $ca $2e $cd

    res 0, l                                      ; $5008: $cb $85
    dec d                                         ; $500a: $15
    adc l                                         ; $500b: $8d
    sub c                                         ; $500c: $91
    rst $10                                       ; $500d: $d7
    ld h, [hl]                                    ; $500e: $66
    ld e, [hl]                                    ; $500f: $5e
    call nc, $dfc7                                ; $5010: $d4 $c7 $df
    jr @-$17                                      ; $5013: $18 $e7

    ld e, d                                       ; $5015: $5a
    rst $38                                       ; $5016: $ff
    dec [hl]                                      ; $5017: $35
    ld l, c                                       ; $5018: $69
    ld d, [hl]                                    ; $5019: $56
    push bc                                       ; $501a: $c5
    add h                                         ; $501b: $84
    sbc a                                         ; $501c: $9f
    rst $20                                       ; $501d: $e7
    adc [hl]                                      ; $501e: $8e
    adc e                                         ; $501f: $8b
    rst $10                                       ; $5020: $d7
    ld sp, hl                                     ; $5021: $f9
    ld e, e                                       ; $5022: $5b
    push de                                       ; $5023: $d5
    ld l, e                                       ; $5024: $6b
    or b                                          ; $5025: $b0
    ld a, [hl+]                                   ; $5026: $2a
    ld a, [hl+]                                   ; $5027: $2a
    nop                                           ; $5028: $00
    jp nz, $ff47                                  ; $5029: $c2 $47 $ff

    ld a, [hl+]                                   ; $502c: $2a
    sub l                                         ; $502d: $95
    or a                                          ; $502e: $b7

Jump_027_502f:
    ld c, l                                       ; $502f: $4d
    call c, $d7b5                                 ; $5030: $dc $b5 $d7
    and h                                         ; $5033: $a4
    ld e, c                                       ; $5034: $59
    sub b                                         ; $5035: $90
    cp e                                          ; $5036: $bb
    db $e4                                        ; $5037: $e4
    add hl, sp                                    ; $5038: $39
    ld b, e                                       ; $5039: $43
    ld b, $9e                                     ; $503a: $06 $9e
    xor l                                         ; $503c: $ad
    adc d                                         ; $503d: $8a
    ld a, [bc]                                    ; $503e: $0a
    jr nz, jr_027_4fda                            ; $503f: $20 $99

    ld hl, $8420                                  ; $5041: $21 $20 $84
    sub $a4                                       ; $5044: $d6 $a4
    ld e, c                                       ; $5046: $59
    sub l                                         ; $5047: $95
    ld h, $b2                                     ; $5048: $26 $b2
    add l                                         ; $504a: $85
    rst $38                                       ; $504b: $ff
    ld a, $c8                                     ; $504c: $3e $c8
    ldh a, [$bd]                                  ; $504e: $f0 $bd
    ld e, h                                       ; $5050: $5c
    ld a, [bc]                                    ; $5051: $0a
    ld b, [hl]                                    ; $5052: $46
    ld a, [bc]                                    ; $5053: $0a
    sbc $20                                       ; $5054: $de $20
    inc c                                         ; $5056: $0c
    dec a                                         ; $5057: $3d
    jp z, Jump_000_38ef                           ; $5058: $ca $ef $38

    dec c                                         ; $505b: $0d
    db $d3                                        ; $505c: $d3
    ret nz                                        ; $505d: $c0

    ld a, d                                       ; $505e: $7a
    ld e, [hl]                                    ; $505f: $5e
    xor a                                         ; $5060: $af
    jp z, $94c3                                   ; $5061: $ca $c3 $94

    ret c                                         ; $5064: $d8

    ld a, d                                       ; $5065: $7a
    ld e, [hl]                                    ; $5066: $5e
    adc [hl]                                      ; $5067: $8e
    ld a, [hl+]                                   ; $5068: $2a
    inc c                                         ; $5069: $0c
    sub $4d                                       ; $506a: $d6 $4d
    add l                                         ; $506c: $85
    xor l                                         ; $506d: $ad
    ld e, e                                       ; $506e: $5b
    inc [hl]                                      ; $506f: $34
    db $ed                                        ; $5070: $ed
    ld e, l                                       ; $5071: $5d
    sbc b                                         ; $5072: $98
    ld l, $c8                                     ; $5073: $2e $c8
    ld h, h                                       ; $5075: $64
    db $eb                                        ; $5076: $eb
    ld b, h                                       ; $5077: $44
    xor l                                         ; $5078: $ad
    ld a, [hl]                                    ; $5079: $7e
    sbc [hl]                                      ; $507a: $9e
    ld [hl], e                                    ; $507b: $73
    ld l, c                                       ; $507c: $69
    sub [hl]                                      ; $507d: $96
    add $57                                       ; $507e: $c6 $57
    xor c                                         ; $5080: $a9
    or b                                          ; $5081: $b0
    ld d, l                                       ; $5082: $55
    add hl, de                                    ; $5083: $19
    or [hl]                                       ; $5084: $b6
    cpl                                           ; $5085: $2f

jr_027_5086:
    xor c                                         ; $5086: $a9
    rst $18                                       ; $5087: $df
    inc h                                         ; $5088: $24
    ld b, b                                       ; $5089: $40
    jr jr_027_50f3                                ; $508a: $18 $67

    ret nz                                        ; $508c: $c0

    rst $08                                       ; $508d: $cf
    sra a                                         ; $508e: $cb $2f
    call nc, Call_027_56e0                        ; $5090: $d4 $e0 $56
    ld h, e                                       ; $5093: $63
    sbc c                                         ; $5094: $99
    or d                                          ; $5095: $b2
    and h                                         ; $5096: $a4
    ld a, c                                       ; $5097: $79
    ld sp, hl                                     ; $5098: $f9
    cp l                                          ; $5099: $bd
    add d                                         ; $509a: $82
    adc a                                         ; $509b: $8f
    rst $10                                       ; $509c: $d7
    jr jr_027_5086                                ; $509d: $18 $e7

    cp c                                          ; $509f: $b9
    ldh [$7d], a                                  ; $50a0: $e0 $7d
    sbc [hl]                                      ; $50a2: $9e
    di                                            ; $50a3: $f3
    ld a, [c]                                     ; $50a4: $f2
    or e                                          ; $50a5: $b3
    db $d3                                        ; $50a6: $d3
    adc b                                         ; $50a7: $88
    sub a                                         ; $50a8: $97
    reti                                          ; $50a9: $d9


    ld sp, $d053                                  ; $50aa: $31 $53 $d0
    inc l                                         ; $50ad: $2c
    ld e, [hl]                                    ; $50ae: $5e
    adc e                                         ; $50af: $8b
    ld [hl], c                                    ; $50b0: $71
    pop bc                                        ; $50b1: $c1
    ei                                            ; $50b2: $fb
    sbc d                                         ; $50b3: $9a
    inc [hl]                                      ; $50b4: $34
    xor e                                         ; $50b5: $ab
    ld h, d                                       ; $50b6: $62
    jp nz, Jump_027_73cf                          ; $50b7: $c2 $cf $73

    ld e, [hl]                                    ; $50ba: $5e
    ld a, [hl]                                    ; $50bb: $7e
    ld d, $b2                                     ; $50bc: $16 $b2
    xor a                                         ; $50be: $af
    add h                                         ; $50bf: $84
    ld a, [hl+]                                   ; $50c0: $2a
    call Call_000_37ce                            ; $50c1: $cd $ce $37
    or a                                          ; $50c4: $b7
    xor d                                         ; $50c5: $aa
    ld [hl], e                                    ; $50c6: $73
    ld [hl], a                                    ; $50c7: $77
    ld l, c                                       ; $50c8: $69
    sub l                                         ; $50c9: $95
    jp nz, Jump_027_49af                          ; $50ca: $c2 $af $49

    ld d, e                                       ; $50cd: $53
    sub e                                         ; $50ce: $93
    ld e, a                                       ; $50cf: $5f
    ld sp, $08e2                                  ; $50d0: $31 $e2 $08
    inc bc                                        ; $50d3: $03
    rst $00                                       ; $50d4: $c7
    db $dd                                        ; $50d5: $dd
    ld e, b                                       ; $50d6: $58
    sub l                                         ; $50d7: $95
    dec b                                         ; $50d8: $05
    rst $28                                       ; $50d9: $ef
    jr nc, @+$5d                                  ; $50da: $30 $5b

    ld [hl-], a                                   ; $50dc: $32
    sbc h                                         ; $50dd: $9c
    sub a                                         ; $50de: $97
    ld e, a                                       ; $50df: $5f
    jr nz, jr_027_514b                            ; $50e0: $20 $69

    adc b                                         ; $50e2: $88
    call $998e                                    ; $50e3: $cd $8e $99
    ld [hl-], a                                   ; $50e6: $32
    rst $08                                       ; $50e7: $cf
    ld a, c                                       ; $50e8: $79
    cp c                                          ; $50e9: $b9
    jr nc, jr_027_5127                            ; $50ea: $30 $3b

    ld h, [hl]                                    ; $50ec: $66
    jp z, $f23a                                   ; $50ed: $ca $3a $f2

    xor $cd                                       ; $50f0: $ee $cd
    ld l, h                                       ; $50f2: $6c

jr_027_50f3:
    dec b                                         ; $50f3: $05
    ld b, a                                       ; $50f4: $47
    or e                                          ; $50f5: $b3
    call z, $a5cb                                 ; $50f6: $cc $cb $a5
    ld a, [$afca]                                 ; $50f9: $fa $ca $af
    jr z, jr_027_514a                             ; $50fc: $28 $4c

    rla                                           ; $50fe: $17
    ld l, d                                       ; $50ff: $6a
    ld [hl], b                                    ; $5100: $70
    xor e                                         ; $5101: $ab
    or c                                          ; $5102: $b1
    ld c, h                                       ; $5103: $4c
    reti                                          ; $5104: $d9


    and l                                         ; $5105: $a5
    sub l                                         ; $5106: $95
    dec bc                                        ; $5107: $0b
    ld c, e                                       ; $5108: $4b
    db $db                                        ; $5109: $db
    cp [hl]                                       ; $510a: $be
    push de                                       ; $510b: $d5
    cpl                                           ; $510c: $2f
    ld h, l                                       ; $510d: $65
    push hl                                       ; $510e: $e5
    jp nz, $92da                                  ; $510f: $c2 $da $92

    add hl, de                                    ; $5112: $19
    xor [hl]                                      ; $5113: $ae
    ld [hl-], a                                   ; $5114: $32
    sbc l                                         ; $5115: $9d
    halt                                          ; $5116: $76
    xor d                                         ; $5117: $aa
    or b                                          ; $5118: $b0
    ld a, c                                       ; $5119: $79
    ld d, c                                       ; $511a: $51
    ld e, a                                       ; $511b: $5f
    ld a, h                                       ; $511c: $7c
    ld h, l                                       ; $511d: $65
    jr nc, jr_027_50f3                            ; $511e: $30 $d3

jr_027_5120:
    ld e, c                                       ; $5120: $59
    ld a, c                                       ; $5121: $79
    ld a, c                                       ; $5122: $79
    add h                                         ; $5123: $84
    ld bc, $7b16                                  ; $5124: $01 $16 $7b

jr_027_5127:
    ld c, l                                       ; $5127: $4d
    sbc d                                         ; $5128: $9a
    pop af                                        ; $5129: $f1
    ld c, d                                       ; $512a: $4a
    ld a, $cf                                     ; $512b: $3e $cf
    dec b                                         ; $512d: $05
    rst $28                                       ; $512e: $ef
    di                                            ; $512f: $f3
    sbc h                                         ; $5130: $9c
    sub a                                         ; $5131: $97
    sbc a                                         ; $5132: $9f
    sbc l                                         ; $5133: $9d
    ld b, [hl]                                    ; $5134: $46
    cp h                                          ; $5135: $bc
    call z, $998e                                 ; $5136: $cc $8e $99
    ld [hl-], a                                   ; $5139: $32
    ld e, e                                       ; $513a: $5b
    pop bc                                        ; $513b: $c1
    cp c                                          ; $513c: $b9
    adc e                                         ; $513d: $8b

jr_027_513e:
    sbc c                                         ; $513e: $99
    push af                                       ; $513f: $f5
    reti                                          ; $5140: $d9


    add hl, hl                                    ; $5141: $29
    di                                            ; $5142: $f3
    ld a, [c]                                     ; $5143: $f2
    inc bc                                        ; $5144: $03
    rst $10                                       ; $5145: $d7
    dec hl                                        ; $5146: $2b
    jr nc, jr_027_513e                            ; $5147: $30 $f5

    ld a, c                                       ; $5149: $79

jr_027_514a:
    ld sp, hl                                     ; $514a: $f9

jr_027_514b:
    ld b, c                                       ; $514b: $41
    ld a, [de]                                    ; $514c: $1a
    cpl                                           ; $514d: $2f
    ld a, e                                       ; $514e: $7b
    ld h, d                                       ; $514f: $62
    ld c, e                                       ; $5150: $4b
    ld a, e                                       ; $5151: $7b
    ld e, [hl]                                    ; $5152: $5e
    ld a, [hl]                                    ; $5153: $7e
    ld b, l                                       ; $5154: $45
    ld h, e                                       ; $5155: $63
    ld b, h                                       ; $5156: $44
    jr jr_027_5120                                ; $5157: $18 $c7

    db $dd                                        ; $5159: $dd
    ld e, b                                       ; $515a: $58
    sub l                                         ; $515b: $95
    ld a, [de]                                    ; $515c: $1a
    inc c                                         ; $515d: $0c
    inc a                                         ; $515e: $3c
    push hl                                       ; $515f: $e5
    dec h                                         ; $5160: $25
    inc sp                                        ; $5161: $33
    call c, $2585                                 ; $5162: $dc $85 $25
    call $85cb                                    ; $5165: $cd $cb $85
    reti                                          ; $5168: $d9


    ld sp, $d053                                  ; $5169: $31 $53 $d0
    ld a, d                                       ; $516c: $7a
    sub h                                         ; $516d: $94
    ld l, a                                       ; $516e: $6f
    ld b, $da                                     ; $516f: $06 $da
    call z, $cbcb                                 ; $5171: $cc $cb $cb
    ld c, a                                       ; $5174: $4f
    push hl                                       ; $5175: $e5
    rlca                                          ; $5176: $07
    add hl, de                                    ; $5177: $19
    cp $48                                        ; $5178: $fe $48
    pop bc                                        ; $517a: $c1
    sbc e                                         ; $517b: $9b
    add c                                         ; $517c: $81
    sub c                                         ; $517d: $91
    adc [hl]                                      ; $517e: $8e
    ld e, h                                       ; $517f: $5c
    ld a, b                                       ; $5180: $78
    ret c                                         ; $5181: $d8

    and l                                         ; $5182: $a5
    ld e, l                                       ; $5183: $5d
    ld b, a                                       ; $5184: $47
    jr jr_027_51c4                                ; $5185: $18 $3d

    jp z, $d7cb                                   ; $5187: $ca $cb $d7

    ld h, b                                       ; $518a: $60
    ld a, [hl-]                                   ; $518b: $3a
    ld e, [hl]                                    ; $518c: $5e
    xor [hl]                                      ; $518d: $ae
    ld e, a                                       ; $518e: $5f
    ld a, [bc]                                    ; $518f: $0a
    ld b, $a6                                     ; $5190: $06 $a6
    db $d3                                        ; $5192: $d3
    adc c                                         ; $5193: $89
    rst $30                                       ; $5194: $f7
    ld h, c                                       ; $5195: $61
    ldh [$29], a                                  ; $5196: $e0 $29
    cp a                                          ; $5198: $bf
    jp z, $da74                                   ; $5199: $ca $74 $da

    xor c                                         ; $519c: $a9
    jp nz, Jump_000_3a66                          ; $519d: $c2 $66 $3a

    cp e                                          ; $51a0: $bb
    inc [hl]                                      ; $51a1: $34
    cpl                                           ; $51a2: $2f
    cp a                                          ; $51a3: $bf
    ld a, [hl+]                                   ; $51a4: $2a
    add l                                         ; $51a5: $85
    ld e, [hl]                                    ; $51a6: $5e
    ret nc                                        ; $51a7: $d0

    inc l                                         ; $51a8: $2c
    dec hl                                        ; $51a9: $2b
    xor a                                         ; $51aa: $af
    jp nz, $1906                                  ; $51ab: $c2 $06 $19

    cp $3a                                        ; $51ae: $fe $3a
    ld e, a                                       ; $51b0: $5f
    sbc c                                         ; $51b1: $99
    ld a, b                                       ; $51b2: $78
    ld d, l                                       ; $51b3: $55
    ld b, [hl]                                    ; $51b4: $46
    ld a, c                                       ; $51b5: $79
    pop hl                                        ; $51b6: $e1
    ld h, c                                       ; $51b7: $61
    ld d, l                                       ; $51b8: $55
    add [hl]                                      ; $51b9: $86
    sub a                                         ; $51ba: $97
    add d                                         ; $51bb: $82
    reti                                          ; $51bc: $d9


    sub d                                         ; $51bd: $92
    pop hl                                        ; $51be: $e1
    xor [hl]                                      ; $51bf: $ae
    cpl                                           ; $51c0: $2f
    xor c                                         ; $51c1: $a9

Call_027_51c2:
    ld a, d                                       ; $51c2: $7a
    add h                                         ; $51c3: $84

jr_027_51c4:
    ld bc, $5596                                  ; $51c4: $01 $96 $55
    ld c, d                                       ; $51c7: $4a
    dec [hl]                                      ; $51c8: $35
    rra                                           ; $51c9: $1f
    xor a                                         ; $51ca: $af
    rst $10                                       ; $51cb: $d7
    ld h, a                                       ; $51cc: $67
    ret z                                         ; $51cd: $c8

    ld l, a                                       ; $51ce: $6f
    sbc h                                         ; $51cf: $9c
    ld h, l                                       ; $51d0: $65
    sub l                                         ; $51d1: $95
    jp nc, $eb5c                                  ; $51d2: $d2 $5c $eb

    ccf                                           ; $51d5: $3f
    dec b                                         ; $51d6: $05
    sub a                                         ; $51d7: $97
    and h                                         ; $51d8: $a4
    inc c                                         ; $51d9: $0c
    dec de                                        ; $51da: $1b
    or h                                          ; $51db: $b4
    ld e, $e5                                     ; $51dc: $1e $e5
    rst $00                                       ; $51de: $c7
    ld [hl-], a                                   ; $51df: $32
    ld h, l                                       ; $51e0: $65

jr_027_51e1:
    sbc [hl]                                      ; $51e1: $9e
    di                                            ; $51e2: $f3
    ld a, [c]                                     ; $51e3: $f2
    ld d, e                                       ; $51e4: $53
    ld [hl], b                                    ; $51e5: $70
    ld c, c                                       ; $51e6: $49
    jp z, $99b0                                   ; $51e7: $ca $b0 $99

    daa                                           ; $51ea: $27
    rst $38                                       ; $51eb: $ff
    or d                                          ; $51ec: $b2
    or h                                          ; $51ed: $b4
    cp [hl]                                       ; $51ee: $be
    call z, $cbcb                                 ; $51ef: $cc $cb $cb
    rst $28                                       ; $51f2: $ef
    jp nz, $e720                                  ; $51f3: $c2 $20 $e7

    rra                                           ; $51f6: $1f
    halt                                          ; $51f7: $76
    db $fc                                        ; $51f8: $fc
    ld d, d                                       ; $51f9: $52
    add b                                         ; $51fa: $80
    jr nc, @+$3f                                  ; $51fb: $30 $3d

    adc d                                         ; $51fd: $8a
    ld a, [$293a]                                 ; $51fe: $fa $3a $29
    ld l, $7a                                     ; $5201: $2e $7a
    ld a, l                                       ; $5203: $7d
    ld c, c                                       ; $5204: $49
    di                                            ; $5205: $f3
    ld a, [c]                                     ; $5206: $f2
    and e                                         ; $5207: $a3
    inc d                                         ; $5208: $14
    cpl                                           ; $5209: $2f
    db $e3                                        ; $520a: $e3
    dec [hl]                                      ; $520b: $35
    ld b, [hl]                                    ; $520c: $46
    add h                                         ; $520d: $84
    sub b                                         ; $520e: $90

Jump_027_520f:
    ld h, l                                       ; $520f: $65
    push hl                                       ; $5210: $e5
    ld d, l                                       ; $5211: $55
    halt                                          ; $5212: $76
    ld a, l                                       ; $5213: $7d
    and c                                         ; $5214: $a1
    ld [hl], c                                    ; $5215: $71
    ld a, a                                       ; $5216: $7f
    cp c                                          ; $5217: $b9
    inc d                                         ; $5218: $14
    inc c                                         ; $5219: $0c
    ld [hl-], a                                   ; $521a: $32
    ld a, h                                       ; $521b: $7c
    cp a                                          ; $521c: $bf
    pop hl                                        ; $521d: $e1
    inc bc                                        ; $521e: $03
    jp nz, $d596                                  ; $521f: $c2 $96 $d5

    rst $38                                       ; $5222: $ff
    dec sp                                        ; $5223: $3b
    adc e                                         ; $5224: $8b
    sbc c                                         ; $5225: $99
    push af                                       ; $5226: $f5
    ld c, e                                       ; $5227: $4b
    pop bc                                        ; $5228: $c1
    ld l, $cd                                     ; $5229: $2e $cd
    adc e                                         ; $522b: $8b
    ld a, [$37da]                                 ; $522c: $fa $da $37
    ld e, b                                       ; $522f: $58
    dec h                                         ; $5230: $25
    dec c                                         ; $5231: $0d
    cp b                                          ; $5232: $b8
    add $b5                                       ; $5233: $c6 $b5
    dec [hl]                                      ; $5235: $35
    ld b, [hl]                                    ; $5236: $46
    xor $da                                       ; $5237: $ee $da
    add $67                                       ; $5239: $c6 $67
    ld e, c                                       ; $523b: $59
    and l                                         ; $523c: $a5
    inc [hl]                                      ; $523d: $34
    ld a, d                                       ; $523e: $7a
    db $eb                                        ; $523f: $eb
    set 4, b                                      ; $5240: $cb $e0
    ld a, a                                       ; $5242: $7f
    ld e, [hl]                                    ; $5243: $5e
    ld a, [hl]                                    ; $5244: $7e
    or [hl]                                       ; $5245: $b6
    ld [hl], c                                    ; $5246: $71
    inc hl                                        ; $5247: $23
    adc a                                         ; $5248: $8f
    jr nc, jr_027_51e1                            ; $5249: $30 $96

    sub l                                         ; $524b: $95
    db $ec                                        ; $524c: $ec
    db $fc                                        ; $524d: $fc
    sbc d                                         ; $524e: $9a
    inc [hl]                                      ; $524f: $34
    db $d3                                        ; $5250: $d3
    jr @-$07                                      ; $5251: $18 $f7

    ld [hl], h                                    ; $5253: $74
    ld e, [hl]                                    ; $5254: $5e
    ld [hl], $cf                                  ; $5255: $36 $cf
    and $e5                                       ; $5257: $e6 $e5
    rst $00                                       ; $5259: $c7
    ld a, a                                       ; $525a: $7f
    xor h                                         ; $525b: $ac
    ld [hl-], a                                   ; $525c: $32
    cp h                                          ; $525d: $bc
    inc d                                         ; $525e: $14
    xor h                                         ; $525f: $ac
    xor l                                         ; $5260: $ad
    ld [hl], h                                    ; $5261: $74
    cp [hl]                                       ; $5262: $be
    ld a, c                                       ; $5263: $79
    ld b, a                                       ; $5264: $47
    dec sp                                        ; $5265: $3b
    push de                                       ; $5266: $d5
    or [hl]                                       ; $5267: $b6
    rst $20                                       ; $5268: $e7
    add hl, sp                                    ; $5269: $39
    ei                                            ; $526a: $fb
    ld [de], a                                    ; $526b: $12
    ld e, e                                       ; $526c: $5b
    sub e                                         ; $526d: $93

jr_027_526e:
    ld b, [hl]                                    ; $526e: $46
    ld d, [hl]                                    ; $526f: $56
    jp nc, $c3c0                                  ; $5270: $d2 $c0 $c3

    jr z, jr_027_526e                             ; $5273: $28 $f9

    ld l, $18                                     ; $5275: $2e $18
    dec a                                         ; $5277: $3d
    set 1, e                                      ; $5278: $cb $cb
    rst $28                                       ; $527a: $ef
    jp nz, $978e                                  ; $527b: $c2 $8e $97

    add $b6                                       ; $527e: $c6 $b6
    cpl                                           ; $5280: $2f
    or c                                          ; $5281: $b1
    sub h                                         ; $5282: $94
    xor [hl]                                      ; $5283: $ae
    jr @+$49                                      ; $5284: $18 $47

    ld b, l                                       ; $5286: $45
    ld a, c                                       ; $5287: $79
    ld h, l                                       ; $5288: $65

jr_027_5289:
    call $2d2e                                    ; $5289: $cd $2e $2d
    ld a, [hl+]                                   ; $528c: $2a
    ld hl, sp+$3a                                 ; $528d: $f8 $3a
    ld d, c                                       ; $528f: $51
    xor e                                         ; $5290: $ab
    rst $20                                       ; $5291: $e7
    xor $da                                       ; $5292: $ee $da
    or e                                          ; $5294: $b3
    call nc, Call_027_51c2                        ; $5295: $d4 $c2 $51
    ld a, [$0bc2]                                 ; $5298: $fa $c2 $0b
    xor [hl]                                      ; $529b: $ae
    push af                                       ; $529c: $f5
    daa                                           ; $529d: $27
    add h                                         ; $529e: $84
    ld bc, $292d                                  ; $529f: $01 $2d $29
    jp nc, Jump_027_4770                          ; $52a2: $d2 $70 $47

    jp hl                                         ; $52a5: $e9


    dec bc                                        ; $52a6: $0b
    sbc e                                         ; $52a7: $9b
    sub l                                         ; $52a8: $95
    inc [hl]                                      ; $52a9: $34
    ldh a, [$08]                                  ; $52aa: $f0 $08

Jump_027_52ac:
    inc bc                                        ; $52ac: $03
    rst $00                                       ; $52ad: $c7
    ld [hl], d                                    ; $52ae: $72
    xor b                                         ; $52af: $a8
    inc c                                         ; $52b0: $0c
    db $fc                                        ; $52b1: $fc
    jp nz, $aee7                                  ; $52b2: $c2 $e7 $ae

    inc hl                                        ; $52b5: $23
    ld l, c                                       ; $52b6: $69
    ccf                                           ; $52b7: $3f
    ld b, b                                       ; $52b8: $40
    ld a, [bc]                                    ; $52b9: $0a
    ld [hl], a                                    ; $52ba: $77
    ld l, l                                       ; $52bb: $6d
    db $e3                                        ; $52bc: $e3
    db $e3                                        ; $52bd: $e3
    set 1, e                                      ; $52be: $cb $cb
    rst $28                                       ; $52c0: $ef
    jp nz, $978e                                  ; $52c1: $c2 $8e $97

    add $b6                                       ; $52c4: $c6 $b6
    cpl                                           ; $52c6: $2f
    or c                                          ; $52c7: $b1
    sub h                                         ; $52c8: $94
    xor [hl]                                      ; $52c9: $ae
    jr jr_027_5289                                ; $52ca: $18 $bd

    jp nc, $d8d4                                  ; $52cc: $d2 $d4 $d8

    jp c, $feef                                   ; $52cf: $da $ef $fe

    ld [hl-], a                                   ; $52d2: $32
    ei                                            ; $52d3: $fb
    ld [de], a                                    ; $52d4: $12
    db $db                                        ; $52d5: $db
    push af                                       ; $52d6: $f5
    or l                                          ; $52d7: $b5
    rst $18                                       ; $52d8: $df
    ld c, [hl]                                    ; $52d9: $4e
    ld sp, hl                                     ; $52da: $f9
    push bc                                       ; $52db: $c5
    dec de                                        ; $52dc: $1b
    inc d                                         ; $52dd: $14
    add a                                         ; $52de: $87
    and l                                         ; $52df: $a5
    ld [hl], c                                    ; $52e0: $71
    xor $ba                                       ; $52e1: $ee $ba
    and a                                         ; $52e3: $a7
    ei                                            ; $52e4: $fb
    dec bc                                        ; $52e5: $0b
    jp nz, $b196                                  ; $52e6: $c2 $96 $b1

    and h                                         ; $52e9: $a4
    sbc d                                         ; $52ea: $9a
    xor a                                         ; $52eb: $af
    ld c, [hl]                                    ; $52ec: $4e
    ret                                           ; $52ed: $c9


    inc hl                                        ; $52ee: $23
    inc c                                         ; $52ef: $0c
    ld d, $5f                                     ; $52f0: $16 $5f
    sub l                                         ; $52f2: $95
    ld h, $b2                                     ; $52f3: $26 $b2
    or l                                          ; $52f5: $b5
    ld a, a                                       ; $52f6: $7f
    ld c, d                                       ; $52f7: $4a
    dec c                                         ; $52f8: $0d
    ld e, a                                       ; $52f9: $5f
    ld e, [hl]                                    ; $52fa: $5e
    ld e, $61                                     ; $52fb: $1e $61
    daa                                           ; $52fd: $27
    daa                                           ; $52fe: $27
    cpl                                           ; $52ff: $2f
    ld [$c703], sp                                ; $5300: $08 $03 $c7
    inc h                                         ; $5303: $24
    push de                                       ; $5304: $d5
    ld a, h                                       ; $5305: $7c
    ld c, l                                       ; $5306: $4d
    sbc d                                         ; $5307: $9a
    or l                                          ; $5308: $b5
    ld a, a                                       ; $5309: $7f
    db $ed                                        ; $530a: $ed
    db $f4                                        ; $530b: $f4
    ld a, [c]                                     ; $530c: $f2
    ld [hl], d                                    ; $530d: $72
    add hl, hl                                    ; $530e: $29
    ld e, b                                       ; $530f: $58
    daa                                           ; $5310: $27
    ld d, e                                       ; $5311: $53
    sub [hl]                                      ; $5312: $96
    sub c                                         ; $5313: $91
    db $ed                                        ; $5314: $ed
    ld h, h                                       ; $5315: $64
    ld bc, $53b4                                  ; $5316: $01 $b4 $53
    ld d, d                                       ; $5319: $52
    db $e4                                        ; $531a: $e4
    ld b, d                                       ; $531b: $42
    sub a                                         ; $531c: $97
    ld e, c                                       ; $531d: $59
    ld l, d                                       ; $531e: $6a
    sub $5f                                       ; $531f: $d6 $5f
    sub b                                         ; $5321: $90
    cp [hl]                                       ; $5322: $be
    or b                                          ; $5323: $b0
    reti                                          ; $5324: $d9


    scf                                           ; $5325: $37
    cp a                                          ; $5326: $bf
    and h                                         ; $5327: $a4
    ld l, c                                       ; $5328: $69
    adc h                                         ; $5329: $8c
    ld c, e                                       ; $532a: $4b
    ld a, e                                       ; $532b: $7b
    ld c, l                                       ; $532c: $4d
    sbc d                                         ; $532d: $9a
    ld l, $18                                     ; $532e: $2e $18
    sub [hl]                                      ; $5330: $96
    ld e, d                                       ; $5331: $5a
    jr c, jr_027_537e                             ; $5332: $38 $4a

    rra                                           ; $5334: $1f
    jr jr_027_53b0                                ; $5335: $18 $79

    add h                                         ; $5337: $84
    ld d, b                                       ; $5338: $50
    cp c                                          ; $5339: $b9
    ld b, c                                       ; $533a: $41
    ld a, c                                       ; $533b: $79
    sbc c                                         ; $533c: $99
    jp hl                                         ; $533d: $e9


    call z, $d28b                                 ; $533e: $cc $8b $d2
    cp h                                          ; $5341: $bc
    ld e, h                                       ; $5342: $5c
    ldh [$ce], a                                  ; $5343: $e0 $ce
    ld c, e                                       ; $5345: $4b
    sbc d                                         ; $5346: $9a
    and b                                         ; $5347: $a0
    jr nz, @-$7a                                  ; $5348: $20 $84

    db $10                                        ; $534a: $10
    ld b, $a7                                     ; $534b: $06 $a7
    ld h, [hl]                                    ; $534d: $66
    ld [hl], d                                    ; $534e: $72
    ld [hl], a                                    ; $534f: $77
    xor e                                         ; $5350: $ab
    ld a, d                                       ; $5351: $7a
    db $fc                                        ; $5352: $fc
    reti                                          ; $5353: $d9


    ld d, a                                       ; $5354: $57
    ret nz                                        ; $5355: $c0

    rst $28                                       ; $5356: $ef
    inc bc                                        ; $5357: $03
    ld [hl], a                                    ; $5358: $77
    ld l, a                                       ; $5359: $6f
    ld a, l                                       ; $535a: $7d
    ld l, c                                       ; $535b: $69
    ld hl, sp-$0e                                 ; $535c: $f8 $f2
    ld a, [c]                                     ; $535e: $f2
    ld l, e                                       ; $535f: $6b
    jp nc, Jump_027_662c                          ; $5360: $d2 $2c $66

    sub $11                                       ; $5363: $d6 $11
    ld b, $47                                     ; $5365: $06 $47
    ld a, a                                       ; $5367: $7f
    ld d, c                                       ; $5368: $51
    db $eb                                        ; $5369: $eb
    ld [hl], e                                    ; $536a: $73
    rst $10                                       ; $536b: $d7
    db $fd                                        ; $536c: $fd
    rst $18                                       ; $536d: $df
    ld a, [$1080]                                 ; $536e: $fa $80 $10
    ld c, d                                       ; $5371: $4a
    add hl, de                                    ; $5372: $19
    sub h                                         ; $5373: $94
    inc [hl]                                      ; $5374: $34
    sub c                                         ; $5375: $91
    call Call_027_4ab2                            ; $5376: $cd $b2 $4a
    ld h, e                                       ; $5379: $63

jr_027_537a:
    sbc h                                         ; $537a: $9c
    sub a                                         ; $537b: $97
    rst $18                                       ; $537c: $df
    pop de                                        ; $537d: $d1

jr_027_537e:
    ld sp, $3593                                  ; $537e: $31 $93 $35
    dec sp                                        ; $5381: $3b
    ld e, d                                       ; $5382: $5a
    dec h                                         ; $5383: $25
    xor c                                         ; $5384: $a9
    dec hl                                        ; $5385: $2b
    ld b, $27                                     ; $5386: $06 $27
    jr jr_027_537a                                ; $5388: $18 $f0

    cp c                                          ; $538a: $b9
    inc [hl]                                      ; $538b: $34
    sub a                                         ; $538c: $97
    add d                                         ; $538d: $82
    ld a, c                                       ; $538e: $79
    xor [hl]                                      ; $538f: $ae
    xor b                                         ; $5390: $a8
    push af                                       ; $5391: $f5
    ld h, a                                       ; $5392: $67
    dec de                                        ; $5393: $1b
    ld b, d                                       ; $5394: $42
    ld [$3d61], sp                                ; $5395: $08 $61 $3d
    ld c, e                                       ; $5398: $4b
    adc [hl]                                      ; $5399: $8e
    ld d, a                                       ; $539a: $57
    sbc b                                         ; $539b: $98
    rla                                           ; $539c: $17
    push af                                       ; $539d: $f5
    xor [hl]                                      ; $539e: $ae
    jr jr_027_537e                                ; $539f: $18 $dd

    rst $38                                       ; $53a1: $ff
    xor l                                         ; $53a2: $ad
    rrca                                          ; $53a3: $0f
    di                                            ; $53a4: $f3
    ld a, [c]                                     ; $53a5: $f2
    db $eb                                        ; $53a6: $eb
    sbc [hl]                                      ; $53a7: $9e
    pop de                                        ; $53a8: $d1
    ld e, a                                       ; $53a9: $5f
    add d                                         ; $53aa: $82
    cp a                                          ; $53ab: $bf
    ldh [rBCPS], a                                ; $53ac: $e0 $68
    ld b, a                                       ; $53ae: $47
    rst $38                                       ; $53af: $ff

jr_027_53b0:
    ld a, [hl+]                                   ; $53b0: $2a
    sub l                                         ; $53b1: $95
    or a                                          ; $53b2: $b7
    ld c, l                                       ; $53b3: $4d
    ld e, h                                       ; $53b4: $5c
    jp c, $372b                                   ; $53b5: $da $2b $37

    db $ec                                        ; $53b8: $ec
    or d                                          ; $53b9: $b2
    ld e, $e5                                     ; $53ba: $1e $e5
    ld [hl], a                                    ; $53bc: $77
    ld [hl], h                                    ; $53bd: $74
    call z, $cd64                                 ; $53be: $cc $64 $cd
    adc [hl]                                      ; $53c1: $8e
    ld d, [hl]                                    ; $53c2: $56
    ld c, c                                       ; $53c3: $49
    ld [c], a                                     ; $53c4: $e2
    adc $cb                                       ; $53c5: $ce $cb
    xor a                                         ; $53c7: $af
    dec h                                         ; $53c8: $25
    ld [hl], $5e                                  ; $53c9: $36 $5e
    ld e, [hl]                                    ; $53cb: $5e
    ld l, $ad                                     ; $53cc: $2e $ad
    and h                                         ; $53ce: $a4
    add c                                         ; $53cf: $81
    ld e, a                                       ; $53d0: $5f
    ld d, b                                       ; $53d1: $50
    ld [de], a                                    ; $53d2: $12
    sbc h                                         ; $53d3: $9c
    cp e                                          ; $53d4: $bb
    ld e, l                                       ; $53d5: $5d
    sbc b                                         ; $53d6: $98
    sub a                                         ; $53d7: $97

jr_027_53d8:
    ld e, a                                       ; $53d8: $5f
    ld d, d                                       ; $53d9: $52
    ld l, h                                       ; $53da: $6c
    sub [hl]                                      ; $53db: $96
    db $f4                                        ; $53dc: $f4
    db $e3                                        ; $53dd: $e3
    ld c, e                                       ; $53de: $4b
    xor [hl]                                      ; $53df: $ae
    ld d, d                                       ; $53e0: $52
    ld e, d                                       ; $53e1: $5a
    sub l                                         ; $53e2: $95
    db $e4                                        ; $53e3: $e4
    sub d                                         ; $53e4: $92
    ld [hl], c                                    ; $53e5: $71
    push hl                                       ; $53e6: $e5
    add [hl]                                      ; $53e7: $86
    ld [$2703], sp                                ; $53e8: $08 $03 $27
    ld h, l                                       ; $53eb: $65
    sub $67                                       ; $53ec: $d6 $67
    and a                                         ; $53ee: $a7
    ld c, h                                       ; $53ef: $4c
    ld h, a                                       ; $53f0: $67
    xor e                                         ; $53f1: $ab
    cpl                                           ; $53f2: $2f
    ld a, [hl+]                                   ; $53f3: $2a
    ld l, e                                       ; $53f4: $6b
    halt                                          ; $53f5: $76
    ld l, c                                       ; $53f6: $69
    cp d                                          ; $53f7: $ba
    adc $a5                                       ; $53f8: $ce $a5

Call_027_53fa:
    ld a, [$3c98]                                 ; $53fa: $fa $98 $3c
    nop                                           ; $53fd: $00
    ld b, d                                       ; $53fe: $42
    ret z                                         ; $53ff: $c8

    adc e                                         ; $5400: $8b
    ld a, d                                       ; $5401: $7a
    dec c                                         ; $5402: $0d
    and [hl]                                      ; $5403: $a6
    ld sp, $b2ce                                  ; $5404: $31 $ce $b2
    ld a, [hl-]                                   ; $5407: $3a
    dec h                                         ; $5408: $25
    adc a                                         ; $5409: $8f
    jr nc, jr_027_5422                            ; $540a: $30 $16

    xor a                                         ; $540c: $af
    pop bc                                        ; $540d: $c1
    ret nz                                        ; $540e: $c0

jr_027_540f:
    ld [hl], h                                    ; $540f: $74
    ld a, [hl-]                                   ; $5410: $3a
    add hl, bc                                    ; $5411: $09
    rst $08                                       ; $5412: $cf
    and $b9                                       ; $5413: $e6 $b9
    or $ef                                        ; $5415: $f6 $ef
    jp nc, $9e74                                  ; $5417: $d2 $74 $9e

    db $fc                                        ; $541a: $fc
    dec bc                                        ; $541b: $0b
    jp c, $dac9                                   ; $541c: $da $c9 $da

    or h                                          ; $541f: $b4
    ld a, a                                       ; $5420: $7f
    ld c, l                                       ; $5421: $4d

jr_027_5422:
    sbc d                                         ; $5422: $9a
    ld b, c                                       ; $5423: $41
    ld c, c                                       ; $5424: $49
    inc de                                        ; $5425: $13
    reti                                          ; $5426: $d9


    ld h, d                                       ; $5427: $62
    ld h, [hl]                                    ; $5428: $66
    ld a, l                                       ; $5429: $7d
    ld c, c                                       ; $542a: $49
    ld d, e                                       ; $542b: $53
    sbc d                                         ; $542c: $9a
    jp hl                                         ; $542d: $e9


    ld [hl], h                                    ; $542e: $74
    ld e, [hl]                                    ; $542f: $5e
    ld h, [hl]                                    ; $5430: $66
    rst $00                                       ; $5431: $c7
    ld c, h                                       ; $5432: $4c
    ld b, c                                       ; $5433: $41
    jr @+$29                                      ; $5434: $18 $27

    ld h, l                                       ; $5436: $65
    sub $67                                       ; $5437: $d6 $67
    ld a, [hl-]                                   ; $5439: $3a
    call c, $fa51                                 ; $543a: $dc $51 $fa
    ld e, b                                       ; $543d: $58
    ld a, [c]                                     ; $543e: $f2
    add h                                         ; $543f: $84
    jr nc, jr_027_53d8                            ; $5440: $30 $96

    sbc d                                         ; $5442: $9a
    push af                                       ; $5443: $f5
    ld d, a                                       ; $5444: $57
    ld e, [hl]                                    ; $5445: $5e
    add l                                         ; $5446: $85
    db $ed                                        ; $5447: $ed
    ld a, [$8578]                                 ; $5448: $fa $78 $85
    pop de                                        ; $544b: $d1
    xor e                                         ; $544c: $ab
    ld c, h                                       ; $544d: $4c
    rst $10                                       ; $544e: $d7
    cp [hl]                                       ; $544f: $be
    pop bc                                        ; $5450: $c1
    jp c, Jump_000_231a                           ; $5451: $da $1a $23

    jp nz, Jump_027_5f16                          ; $5454: $c2 $16 $5f

    ld a, b                                       ; $5457: $78
    add e                                         ; $5458: $83
    ld [c], a                                     ; $5459: $e2
    ld l, e                                       ; $545a: $6b
    rst $38                                       ; $545b: $ff
    jp c, $2e5f                                   ; $545c: $da $5f $2e

    or c                                          ; $545f: $b1
    jp hl                                         ; $5460: $e9


    ld a, [hl-]                                   ; $5461: $3a
    or a                                          ; $5462: $b7
    ld [hl], d                                    ; $5463: $72
    inc hl                                        ; $5464: $23
    adc a                                         ; $5465: $8f
    jr nc, jr_027_540f                            ; $5466: $30 $a7

    and h                                         ; $5468: $a4

jr_027_5469:
    rst $08                                       ; $5469: $cf
    ld d, [hl]                                    ; $546a: $56
    sbc c                                         ; $546b: $99
    ld a, [c]                                     ; $546c: $f2
    jp c, $8420                                   ; $546d: $da $20 $84

    jr z, jr_027_54ef                             ; $5470: $28 $7d

    or [hl]                                       ; $5472: $b6
    jp z, $a7d4                                   ; $5473: $ca $d4 $a7

    ld sp, $0c22                                  ; $5476: $31 $22 $0c
    db $dd                                        ; $5479: $dd
    sub h                                         ; $547a: $94
    sub $a4                                       ; $547b: $d6 $a4
    sbc c                                         ; $547d: $99
    ld l, e                                       ; $547e: $6b
    xor h                                         ; $547f: $ac
    ld [hl], a                                    ; $5480: $77
    push bc                                       ; $5481: $c5
    dec a                                         ; $5482: $3d
    ld c, e                                       ; $5483: $4b
    inc sp                                        ; $5484: $33
    ld a, $4d                                     ; $5485: $3e $4d
    ld h, h                                       ; $5487: $64
    ld d, h                                       ; $5488: $54
    di                                            ; $5489: $f3
    ld e, c                                       ; $548a: $59
    sub $fe                                       ; $548b: $d6 $fe
    ld l, c                                       ; $548d: $69
    dec sp                                        ; $548e: $3b
    cp $3c                                        ; $548f: $fe $3c
    rst $20                                       ; $5491: $e7
    ld a, [de]                                    ; $5492: $1a
    db $eb                                        ; $5493: $eb
    ld e, l                                       ; $5494: $5d
    ld sp, $e4c7                                  ; $5495: $31 $c7 $e4
    sbc d                                         ; $5498: $9a
    inc [hl]                                      ; $5499: $34
    xor e                                         ; $549a: $ab
    ld d, e                                       ; $549b: $53
    ld a, [c]                                     ; $549c: $f2
    db $e3                                        ; $549d: $e3
    set 1, e                                      ; $549e: $cb $cb
    rst $28                                       ; $54a0: $ef
    ld a, b                                       ; $54a1: $78
    ld l, c                                       ; $54a2: $69
    ld l, h                                       ; $54a3: $6c
    ei                                            ; $54a4: $fb
    ld [de], a                                    ; $54a5: $12
    ld c, e                                       ; $54a6: $4b
    reti                                          ; $54a7: $d9


    add l                                         ; $54a8: $85
    xor [hl]                                      ; $54a9: $ae
    jr jr_027_54c2                                ; $54aa: $18 $16

    ld h, d                                       ; $54ac: $62
    rst $38                                       ; $54ad: $ff
    ld l, h                                       ; $54ae: $6c
    sub [hl]                                      ; $54af: $96
    or c                                          ; $54b0: $b1
    ld b, h                                       ; $54b1: $44
    or e                                          ; $54b2: $b3
    call nc, $79c2                                ; $54b3: $d4 $c2 $79
    ld sp, hl                                     ; $54b6: $f9
    dec b                                         ; $54b7: $05
    ld b, [hl]                                    ; $54b8: $46
    add l                                         ; $54b9: $85
    ld e, l                                       ; $54ba: $5d
    and l                                         ; $54bb: $a5
    and l                                         ; $54bc: $a5
    cp l                                          ; $54bd: $bd
    db $e3                                        ; $54be: $e3
    and l                                         ; $54bf: $a5
    or c                                          ; $54c0: $b1
    db $ed                                        ; $54c1: $ed

jr_027_54c2:
    ld c, e                                       ; $54c2: $4b
    inc l                                         ; $54c3: $2c
    dec b                                         ; $54c4: $05
    ld h, c                                       ; $54c5: $61
    xor l                                         ; $54c6: $ad
    ret                                           ; $54c7: $c9


    adc a                                         ; $54c8: $8f
    push hl                                       ; $54c9: $e5
    inc l                                         ; $54ca: $2c
    dec bc                                        ; $54cb: $0b
    sbc $77                                       ; $54cc: $de $77
    xor c                                         ; $54ce: $a9
    dec hl                                        ; $54cf: $2b
    ld b, $47                                     ; $54d0: $06 $47
    scf                                           ; $54d2: $37
    dec bc                                        ; $54d3: $0b
    xor [hl]                                      ; $54d4: $ae
    push af                                       ; $54d5: $f5
    ld d, d                                       ; $54d6: $52
    or b                                          ; $54d7: $b0
    ldh a, [$e7]                                  ; $54d8: $f0 $e7
    push hl                                       ; $54da: $e5
    rlca                                          ; $54db: $07
    ld e, a                                       ; $54dc: $5f
    ret                                           ; $54dd: $c9


    ei                                            ; $54de: $fb
    ld a, [hl-]                                   ; $54df: $3a
    ld a, [bc]                                    ; $54e0: $0a
    ret nz                                        ; $54e1: $c0

    and a                                         ; $54e2: $a7
    jr nc, jr_027_5469                            ; $54e3: $30 $84

    ld bc, $1b47                                  ; $54e5: $01 $47 $1b
    rra                                           ; $54e8: $1f
    ld e, a                                       ; $54e9: $5f
    call nc, $6967                                ; $54ea: $d4 $67 $69
    sbc c                                         ; $54ed: $99
    sub a                                         ; $54ee: $97

jr_027_54ef:
    rra                                           ; $54ef: $1f
    ld a, h                                       ; $54f0: $7c
    dec h                                         ; $54f1: $25
    rst $28                                       ; $54f2: $ef
    db $eb                                        ; $54f3: $eb
    jr z, jr_027_54f6                             ; $54f4: $28 $00

jr_027_54f6:
    sbc a                                         ; $54f6: $9f
    jp nz, Jump_027_62ba                          ; $54f7: $c2 $ba $62

    ld d, $1f                                     ; $54fa: $16 $1f
    sbc a                                         ; $54fc: $9f
    ld h, $32                                     ; $54fd: $26 $32
    xor d                                         ; $54ff: $aa
    ld sp, hl                                     ; $5500: $f9
    jp c, $d0bf                                   ; $5501: $da $bf $d0

    ld d, h                                       ; $5504: $54
    ld h, l                                       ; $5505: $65
    ld l, c                                       ; $5506: $69
    ld c, a                                       ; $5507: $4f
    rlca                                          ; $5508: $07
    ld e, a                                       ; $5509: $5f
    ret                                           ; $550a: $c9


    ei                                            ; $550b: $fb
    xor [hl]                                      ; $550c: $ae
    dec a                                         ; $550d: $3d
    srl h                                         ; $550e: $cb $3c
    inc hl                                        ; $5510: $23
    ld e, e                                       ; $5511: $5b
    sub e                                         ; $5512: $93
    add [hl]                                      ; $5513: $86
    dec sp                                        ; $5514: $3b
    cp b                                          ; $5515: $b8
    ld sp, $6836                                  ; $5516: $31 $36 $68
    cp l                                          ; $5519: $bd
    jp nc, $a8ac                                  ; $551a: $d2 $ac $a8

    push af                                       ; $551d: $f5
    rst $20                                       ; $551e: $e7
    add hl, sp                                    ; $551f: $39
    ei                                            ; $5520: $fb
    ld [de], a                                    ; $5521: $12
    db $db                                        ; $5522: $db
    push af                                       ; $5523: $f5
    dec [hl]                                      ; $5524: $35
    ld l, c                                       ; $5525: $69
    inc b                                         ; $5526: $04
    ld a, $da                                     ; $5527: $3e $da
    ld [$c703], sp                                ; $5529: $08 $03 $c7
    db $e4                                        ; $552c: $e4
    sbc d                                         ; $552d: $9a
    inc [hl]                                      ; $552e: $34
    xor e                                         ; $552f: $ab
    ld d, e                                       ; $5530: $53
    ld a, [c]                                     ; $5531: $f2
    di                                            ; $5532: $f3
    ld a, [c]                                     ; $5533: $f2
    dec sp                                        ; $5534: $3b
    ld e, [hl]                                    ; $5535: $5e
    ld a, [de]                                    ; $5536: $1a
    db $db                                        ; $5537: $db
    cp [hl]                                       ; $5538: $be
    call nz, $d652                                ; $5539: $c4 $52 $d6
    ld d, c                                       ; $553c: $51
    nop                                           ; $553d: $00
    ld a, $85                                     ; $553e: $3e $85
    ld [hl], l                                    ; $5540: $75
    push bc                                       ; $5541: $c5
    ld b, a                                       ; $5542: $47
    ld b, c                                       ; $5543: $41
    ld a, l                                       ; $5544: $7d
    sub b                                         ; $5545: $90
    pop hl                                        ; $5546: $e1
    daa                                           ; $5547: $27
    db $fd                                        ; $5548: $fd
    ld l, h                                       ; $5549: $6c
    ret                                           ; $554a: $c9


    ld [hl], b                                    ; $554b: $70
    rst $00                                       ; $554c: $c7
    ld c, e                                       ; $554d: $4b
    ld h, e                                       ; $554e: $63
    db $db                                        ; $554f: $db
    sub a                                         ; $5550: $97
    ld e, b                                       ; $5551: $58
    ld a, [bc]                                    ; $5552: $0a
    jp nz, $b196                                  ; $5553: $c2 $96 $b1

    and h                                         ; $5556: $a4
    sbc d                                         ; $5557: $9a
    rst $28                                       ; $5558: $ef
    xor l                                         ; $5559: $ad
    ld c, a                                       ; $555a: $4f
    xor e                                         ; $555b: $ab
    ld d, e                                       ; $555c: $53
    ld a, [c]                                     ; $555d: $f2
    dec bc                                        ; $555e: $0b
    sbc e                                         ; $555f: $9b

Call_027_5560:
    dec h                                         ; $5560: $25

Call_027_5561:
    ld c, a                                       ; $5561: $4f
    db $eb                                        ; $5562: $eb
    jr z, jr_027_5565                             ; $5563: $28 $00

jr_027_5565:
    sbc a                                         ; $5565: $9f
    jp nz, $0610                                  ; $5566: $c2 $10 $06

Call_027_5569:
    rst $00                                       ; $5569: $c7
    db $e4                                        ; $556a: $e4
    sbc d                                         ; $556b: $9a
    inc [hl]                                      ; $556c: $34
    xor e                                         ; $556d: $ab
    ld d, e                                       ; $556e: $53
    ld a, [c]                                     ; $556f: $f2
    di                                            ; $5570: $f3
    ld a, [c]                                     ; $5571: $f2
    db $eb                                        ; $5572: $eb
    jr z, jr_027_5575                             ; $5573: $28 $00

jr_027_5575:
    sbc a                                         ; $5575: $9f
    jp nz, $b9e6                                  ; $5576: $c2 $e6 $b9

    ldh [$7d], a                                  ; $5579: $e0 $7d
    sub a                                         ; $557b: $97
    inc a                                         ; $557c: $3c
    ld [hl], a                                    ; $557d: $77
    cp h                                          ; $557e: $bc
    inc [hl]                                      ; $557f: $34
    or [hl]                                       ; $5580: $b6
    ld a, l                                       ; $5581: $7d
    adc c                                         ; $5582: $89
    and l                                         ; $5583: $a5
    ld [hl], h                                    ; $5584: $74
    push bc                                       ; $5585: $c5
    sub [hl]                                      ; $5586: $96
    ld a, [de]                                    ; $5587: $1a
    ld e, e                                       ; $5588: $5b
    ei                                            ; $5589: $fb
    and a                                         ; $558a: $a7
    db $eb                                        ; $558b: $eb
    ld h, h                                       ; $558c: $64

Call_027_558d:
    jp z, $b6d2                                   ; $558d: $ca $d2 $b6

    ld l, a                                       ; $5590: $6f
    ld [hl], l                                    ; $5591: $75
    dec [hl]                                      ; $5592: $35
    xor [hl]                                      ; $5593: $ae
    and h                                         ; $5594: $a4
    add c                                         ; $5595: $81
    ld e, a                                       ; $5596: $5f
    ld d, b                                       ; $5597: $50
    ld [de], a                                    ; $5598: $12
    ld a, h                                       ; $5599: $7c
    rst $10                                       ; $559a: $d7
    sbc [hl]                                      ; $559b: $9e
    ld h, l                                       ; $559c: $65
    db $ec                                        ; $559d: $ec
    ld [hl-], a                                   ; $559e: $32
    xor d                                         ; $559f: $aa
    ld a, c                                       ; $55a0: $79
    rla                                           ; $55a1: $17
    inc c                                         ; $55a2: $0c
    dec a                                         ; $55a3: $3d
    adc e                                         ; $55a4: $8b
    ld a, [$ec2e]                                 ; $55a5: $fa $2e $ec
    ld a, d                                       ; $55a8: $7a
    ld d, a                                       ; $55a9: $57
    inc c                                         ; $55aa: $0c
    rst $00                                       ; $55ab: $c7
    ld e, l                                       ; $55ac: $5d
    ld bc, $0847                                  ; $55ad: $01 $47 $08
    ld [hl], l                                    ; $55b0: $75
    ld e, [hl]                                    ; $55b1: $5e
    adc d                                         ; $55b2: $8a
    halt                                          ; $55b3: $76
    ld h, b                                       ; $55b4: $60
    ld c, l                                       ; $55b5: $4d
    sbc d                                         ; $55b6: $9a
    ld d, l                                       ; $55b7: $55
    ld l, c                                       ; $55b8: $69
    ld [hl+], a                                   ; $55b9: $22
    dec de                                        ; $55ba: $1b
    res 0, l                                      ; $55bb: $cb $85
    ccf                                           ; $55bd: $3f
    sbc l                                         ; $55be: $9d
    xor l                                         ; $55bf: $ad
    sub $34                                       ; $55c0: $d6 $34
    add d                                         ; $55c2: $82
    db $10                                        ; $55c3: $10
    jp nz, $8b3d                                  ; $55c4: $c2 $3d $8b

    ld a, [$97ea]                                 ; $55c7: $fa $ea $97
    ret c                                         ; $55ca: $d8

    jp nc, $ad9e                                  ; $55cb: $d2 $9e $ad

    sub $34                                       ; $55ce: $d6 $34
    jp nc, $0315                                  ; $55d0: $d2 $15 $03

    dec a                                         ; $55d3: $3d
    jp z, $afc3                                   ; $55d4: $ca $c3 $af

    ld l, b                                       ; $55d7: $68
    adc h                                         ; $55d8: $8c
    cp h                                          ; $55d9: $bc
    ld [hl], $b0                                  ; $55da: $36 $b0
    ld c, d                                       ; $55dc: $4a
    ld l, c                                       ; $55dd: $69
    pop bc                                        ; $55de: $c1
    ei                                            ; $55df: $fb
    jp c, $cff2                                   ; $55e0: $da $f2 $cf

    or c                                          ; $55e3: $b1
    add hl, de                                    ; $55e4: $19
    ld b, d                                       ; $55e5: $42
    jr z, @-$15                                   ; $55e6: $28 $e9

    ld l, e                                       ; $55e8: $6b
    or b                                          ; $55e9: $b0
    ld a, [c]                                     ; $55ea: $f2
    jp z, Jump_000_2956                           ; $55eb: $ca $56 $29

    call $d98e                                    ; $55ee: $cd $8e $d9
    sbc c                                         ; $55f1: $99
    or [hl]                                       ; $55f2: $b6
    db $d3                                        ; $55f3: $d3
    ld hl, sp-$08                                 ; $55f4: $f8 $f8
    ld a, [c]                                     ; $55f6: $f2
    or h                                          ; $55f7: $b4
    and h                                         ; $55f8: $a4
    ld e, a                                       ; $55f9: $5f
    ld a, h                                       ; $55fa: $7c
    dec b                                         ; $55fb: $05
    rst $18                                       ; $55fc: $df
    ld [hl], e                                    ; $55fd: $73
    add sp, $7c                                   ; $55fe: $e8 $7c
    push hl                                       ; $5600: $e5
    or b                                          ; $5601: $b0
    db $eb                                        ; $5602: $eb
    ld [$dd03], sp                                ; $5603: $08 $03 $dd
    ld e, a                                       ; $5606: $5f
    adc d                                         ; $5607: $8a
    halt                                          ; $5608: $76
    ld h, b                                       ; $5609: $60
    ld c, l                                       ; $560a: $4d
    sbc d                                         ; $560b: $9a
    ld d, l                                       ; $560c: $55
    ld l, c                                       ; $560d: $69
    ld [hl+], a                                   ; $560e: $22
    sbc e                                         ; $560f: $9b
    ld a, l                                       ; $5610: $7d
    adc c                                         ; $5611: $89
    dec c                                         ; $5612: $0d
    ld [hl-], a                                   ; $5613: $32
    ld a, h                                       ; $5614: $7c
    cpl                                           ; $5615: $2f
    sub a                                         ; $5616: $97
    add d                                         ; $5617: $82
    ld a, c                                       ; $5618: $79
    xor [hl]                                      ; $5619: $ae
    cp $df                                        ; $561a: $fe $df
    reti                                          ; $561c: $d9


    push af                                       ; $561d: $f5
    add l                                         ; $561e: $85
    add hl, hl                                    ; $561f: $29
    ccf                                           ; $5620: $3f
    ld hl, sp-$36                                 ; $5621: $f8 $ca
    ret z                                         ; $5623: $c8

    inc hl                                        ; $5624: $23
    inc c                                         ; $5625: $0c
    daa                                           ; $5626: $27
    db $dd                                        ; $5627: $dd
    ld a, [$2f8f]                                 ; $5628: $fa $8f $2f
    ld [$315d], a                                 ; $562b: $ea $5d $31
    ld b, a                                       ; $562e: $47
    pop de                                        ; $562f: $d1
    ld [hl-], a                                   ; $5630: $32
    or d                                          ; $5631: $b2
    ld b, c                                       ; $5632: $41
    ld d, l                                       ; $5633: $55
    ld [hl-], a                                   ; $5634: $32
    db $e3                                        ; $5635: $e3
    db $fc                                        ; $5636: $fc
    cp $f8                                        ; $5637: $fe $f8
    inc [hl]                                      ; $5639: $34
    sub c                                         ; $563a: $91
    adc l                                         ; $563b: $8d
    push hl                                       ; $563c: $e5
    add sp, $56                                   ; $563d: $e8 $56
    rra                                           ; $563f: $1f
    dec de                                        ; $5640: $1b
    add h                                         ; $5641: $84
    ld bc, $6996                                  ; $5642: $01 $96 $69
    sub h                                         ; $5645: $94
    ld d, a                                       ; $5646: $57
    sub $ac                                       ; $5647: $d6 $ac
    xor b                                         ; $5649: $a8
    push af                                       ; $564a: $f5
    sub a                                         ; $564b: $97
    db $f4                                        ; $564c: $f4
    ld e, l                                       ; $564d: $5d

jr_027_564e:
    jr nc, jr_027_567d                            ; $564e: $30 $2d

    and c                                         ; $5650: $a1
    ld b, d                                       ; $5651: $42
    cp c                                          ; $5652: $b9
    inc d                                         ; $5653: $14
    ld [hl], h                                    ; $5654: $74
    ld e, c                                       ; $5655: $59
    adc a                                         ; $5656: $8f
    ld [hl], d                                    ; $5657: $72
    ld h, c                                       ; $5658: $61
    db $fc                                        ; $5659: $fc
    adc l                                         ; $565a: $8d
    ld [hl], c                                    ; $565b: $71
    push af                                       ; $565c: $f5
    rst $38                                       ; $565d: $ff
    adc $bc                                       ; $565e: $ce $bc
    db $fc                                        ; $5660: $fc
    ld [hl-], a                                   ; $5661: $32
    or d                                          ; $5662: $b2
    add l                                         ; $5663: $85
    rra                                           ; $5664: $1f
    sub e                                         ; $5665: $93
    ld h, [hl]                                    ; $5666: $66
    ld a, [hl-]                                   ; $5667: $3a
    ld [hl], d                                    ; $5668: $72
    add e                                         ; $5669: $83
    ld [c], a                                     ; $566a: $e2
    ld e, l                                       ; $566b: $5d
    sub $a3                                       ; $566c: $d6 $a3
    db $fc                                        ; $566e: $fc
    ld a, [hl-]                                   ; $566f: $3a
    ld a, [bc]                                    ; $5670: $0a
    ret nz                                        ; $5671: $c0

    and a                                         ; $5672: $a7
    or b                                          ; $5673: $b0
    ld e, l                                       ; $5674: $5d
    ld e, b                                       ; $5675: $58
    xor l                                         ; $5676: $ad
    sbc e                                         ; $5677: $9b
    halt                                          ; $5678: $76
    adc h                                         ; $5679: $8c
    rst $28                                       ; $567a: $ef
    jr jr_027_564e                                ; $567b: $18 $d1

jr_027_567d:
    ld a, [hl+]                                   ; $567d: $2a
    jp hl                                         ; $567e: $e9


    ld b, d                                       ; $567f: $42
    dec c                                         ; $5680: $0d
    xor l                                         ; $5681: $ad
    push hl                                       ; $5682: $e5
    ld a, a                                       ; $5683: $7f
    ld c, l                                       ; $5684: $4d
    sbc d                                         ; $5685: $9a
    ld b, l                                       ; $5686: $45
    push af                                       ; $5687: $f5
    sub a                                         ; $5688: $97
    ld l, $18                                     ; $5689: $2e $18
    dec a                                         ; $568b: $3d
    set 1, e                                      ; $568c: $cb $cb
    adc a                                         ; $568e: $8f
    ld c, a                                       ; $568f: $4f
    inc de                                        ; $5690: $13
    reti                                          ; $5691: $d9


    inc l                                         ; $5692: $2c
    or e                                          ; $5693: $b3
    cpl                                           ; $5694: $2f
    or c                                          ; $5695: $b1
    dec h                                         ; $5696: $25
    ld a, l                                       ; $5697: $7d
    ld d, a                                       ; $5698: $57
    inc c                                         ; $5699: $0c
    sub [hl]                                      ; $569a: $96
    ld a, c                                       ; $569b: $79
    cp c                                          ; $569c: $b9
    ld d, h                                       ; $569d: $54
    sbc a                                         ; $569e: $9f
    ld h, l                                       ; $569f: $65
    and b                                         ; $56a0: $a0
    db $fc                                        ; $56a1: $fc
    sub d                                         ; $56a2: $92
    ld a, [hl]                                    ; $56a3: $7e
    sub a                                         ; $56a4: $97
    and $e5                                       ; $56a5: $e6 $e5
    ld [hl], a                                    ; $56a7: $77
    inc l                                         ; $56a8: $2c
    cp c                                          ; $56a9: $b9
    jr z, jr_027_5701                             ; $56aa: $28 $55

    cp a                                          ; $56ac: $bf
    ld d, [hl]                                    ; $56ad: $56
    adc l                                         ; $56ae: $8d
    ld de, $1661                                  ; $56af: $11 $61 $16
    sbc b                                         ; $56b2: $98
    sub a                                         ; $56b3: $97
    dec bc                                        ; $56b4: $0b
    di                                            ; $56b5: $f3
    ld a, [c]                                     ; $56b6: $f2
    xor e                                         ; $56b7: $ab
    ld e, a                                       ; $56b8: $5f
    ld h, d                                       ; $56b9: $62
    ld c, e                                       ; $56ba: $4b
    ld a, e                                       ; $56bb: $7b
    ld a, [hl]                                    ; $56bc: $7e
    ld a, a                                       ; $56bd: $7f
    ld c, l                                       ; $56be: $4d
    sbc d                                         ; $56bf: $9a
    pop af                                        ; $56c0: $f1
    ld c, d                                       ; $56c1: $4a
    sbc $15                                       ; $56c2: $de $15
    inc bc                                        ; $56c4: $03
    sub [hl]                                      ; $56c5: $96
    ld d, l                                       ; $56c6: $55
    ld l, c                                       ; $56c7: $69
    ld [hl+], a                                   ; $56c8: $22
    and e                                         ; $56c9: $a3
    sbc d                                         ; $56ca: $9a
    rst $08                                       ; $56cb: $cf
    cp [hl]                                       ; $56cc: $be
    call nz, $f496                                ; $56cd: $c4 $96 $f4
    ld [$c703], sp                                ; $56d0: $08 $03 $c7
    ld e, h                                       ; $56d3: $5c
    or [hl]                                       ; $56d4: $b6
    ld h, $cd                                     ; $56d5: $26 $cd
    ld h, d                                       ; $56d7: $62
    ld h, [hl]                                    ; $56d8: $66
    ld a, l                                       ; $56d9: $7d
    sub a                                         ; $56da: $97
    and $e5                                       ; $56db: $e6 $e5
    ld [hl], a                                    ; $56dd: $77
    inc l                                         ; $56de: $2c
    cp c                                          ; $56df: $b9

Call_027_56e0:
    jr z, jr_027_5737                             ; $56e0: $28 $55

    cp a                                          ; $56e2: $bf
    ld d, [hl]                                    ; $56e3: $56
    adc l                                         ; $56e4: $8d
    or c                                          ; $56e5: $b1
    db $eb                                        ; $56e6: $eb
    inc l                                         ; $56e7: $2c
    di                                            ; $56e8: $f3
    ld [hl], d                                    ; $56e9: $72
    xor c                                         ; $56ea: $a9
    ld a, $5d                                     ; $56eb: $3e $5d
    and b                                         ; $56ed: $a0
    ld [de], a                                    ; $56ee: $12
    ld h, h                                       ; $56ef: $64
    inc de                                        ; $56f0: $13
    ld a, a                                       ; $56f1: $7f
    cp h                                          ; $56f2: $bc
    jp nz, Jump_027_57f8                          ; $56f3: $c2 $f8 $57

    cp c                                          ; $56f6: $b9
    inc d                                         ; $56f7: $14
    inc c                                         ; $56f8: $0c
    ld [hl-], a                                   ; $56f9: $32
    ld a, h                                       ; $56fa: $7c
    cpl                                           ; $56fb: $2f
    sub a                                         ; $56fc: $97
    add d                                         ; $56fd: $82
    ld a, c                                       ; $56fe: $79
    ld d, c                                       ; $56ff: $51
    sbc a                                         ; $5700: $9f

jr_027_5701:
    push af                                       ; $5701: $f5
    and l                                         ; $5702: $a5
    ld e, c                                       ; $5703: $59
    ld l, b                                       ; $5704: $68
    xor d                                         ; $5705: $aa
    or d                                          ; $5706: $b2
    sbc b                                         ; $5707: $98
    ld e, c                                       ; $5708: $59
    ld a, a                                       ; $5709: $7f
    or [hl]                                       ; $570a: $b6
    ld a, b                                       ; $570b: $78
    db $eb                                        ; $570c: $eb
    ccf                                           ; $570d: $3f
    sbc l                                         ; $570e: $9d
    rst $18                                       ; $570f: $df
    ld b, a                                       ; $5710: $47
    db $eb                                        ; $5711: $eb
    cp $52                                        ; $5712: $fe $52
    or h                                          ; $5714: $b4
    inc bc                                        ; $5715: $03
    ld l, e                                       ; $5716: $6b
    jp nc, Jump_027_4a0c                          ; $5717: $d2 $0c $4a

    sbc d                                         ; $571a: $9a
    ret z                                         ; $571b: $c8

    ld d, $33                                     ; $571c: $16 $33
    db $eb                                        ; $571e: $eb
    db $d3                                        ; $571f: $d3
    ld b, b                                       ; $5720: $40
    cpl                                           ; $5721: $2f
    ld hl, $3d0c                                  ; $5722: $21 $0c $3d
    adc e                                         ; $5725: $8b
    ld a, d                                       ; $5726: $7a
    dec c                                         ; $5727: $0d
    and [hl]                                      ; $5728: $a6
    dec sp                                        ; $5729: $3b
    or a                                          ; $572a: $b7
    and e                                         ; $572b: $a3
    nop                                           ; $572c: $00
    ld a, h                                       ; $572d: $7c
    ld a, [bc]                                    ; $572e: $0a
    xor e                                         ; $572f: $ab
    ld [hl], l                                    ; $5730: $75
    push bc                                       ; $5731: $c5
    sub [hl]                                      ; $5732: $96
    push de                                       ; $5733: $d5
    add hl, hl                                    ; $5734: $29
    ld sp, hl                                     ; $5735: $f9
    add l                                         ; $5736: $85

jr_027_5737:
    sub a                                         ; $5737: $97
    sbc [hl]                                      ; $5738: $9e
    cp e                                          ; $5739: $bb
    or [hl]                                       ; $573a: $b6
    pop af                                        ; $573b: $f1
    ld d, c                                       ; $573c: $51
    ld a, [$349a]                                 ; $573d: $fa $9a $34
    ld [bc], a                                    ; $5740: $02
    ld [$a703], sp                                ; $5741: $08 $03 $a7
    inc h                                         ; $5744: $24
    ld [hl], a                                    ; $5745: $77
    sub b                                         ; $5746: $90
    ld [hl+], a                                   ; $5747: $22
    dec c                                         ; $5748: $0d
    jp nz, $d2dd                                  ; $5749: $c2 $dd $d2

    ld b, h                                       ; $574c: $44
    ld b, [hl]                                    ; $574d: $46
    dec [hl]                                      ; $574e: $35
    rra                                           ; $574f: $1f
    ld l, b                                       ; $5750: $68
    add e                                         ; $5751: $83
    jr nc, jr_027_5791                            ; $5752: $30 $3d

    and h                                         ; $5754: $a4
    reti                                          ; $5755: $d9


    cp c                                          ; $5756: $b9
    dec l                                         ; $5757: $2d

jr_027_5758:
    ld e, a                                       ; $5758: $5f
    dec h                                         ; $5759: $25
    or c                                          ; $575a: $b1
    sbc l                                         ; $575b: $9d
    xor [hl]                                      ; $575c: $ae
    cp $35                                        ; $575d: $fe $35
    inc [hl]                                      ; $575f: $34
    adc e                                         ; $5760: $8b
    xor a                                         ; $5761: $af
    ld a, d                                       ; $5762: $7a
    ld [hl], c                                    ; $5763: $71
    cp l                                          ; $5764: $bd
    inc d                                         ; $5765: $14
    sbc e                                         ; $5766: $9b
    reti                                          ; $5767: $d9


    rst $10                                       ; $5768: $d7
    ld bc, $4761                                  ; $5769: $01 $61 $47
    cp a                                          ; $576c: $bf
    ld a, [hl-]                                   ; $576d: $3a
    inc l                                         ; $576e: $2c
    ld a, h                                       ; $576f: $7c
    add h                                         ; $5770: $84
    ld bc, $1fad                                  ; $5771: $01 $ad $1f
    ld h, e                                       ; $5774: $63
    ld c, [hl]                                    ; $5775: $4e
    inc bc                                        ; $5776: $03
    cp l                                          ; $5777: $bd
    add h                                         ; $5778: $84
    jr nc, jr_027_5758                            ; $5779: $30 $dd

    or h                                          ; $577b: $b4
    ld h, e                                       ; $577c: $63
    ld a, h                                       ; $577d: $7c
    rst $00                                       ; $577e: $c7
    adc b                                         ; $577f: $88

Call_027_5780:
    ld d, [hl]                                    ; $5780: $56
    ld c, c                                       ; $5781: $49
    rla                                           ; $5782: $17
    cp d                                          ; $5783: $ba
    ld h, b                                       ; $5784: $60
    dec a                                         ; $5785: $3d
    ccf                                           ; $5786: $3f

jr_027_5787:
    ld d, [hl]                                    ; $5787: $56
    add hl, de                                    ; $5788: $19
    cp $3c                                        ; $5789: $fe $3c
    ld [hl], a                                    ; $578b: $77
    cp h                                          ; $578c: $bc
    inc [hl]                                      ; $578d: $34
    or [hl]                                       ; $578e: $b6
    ld a, l                                       ; $578f: $7d
    adc c                                         ; $5790: $89

jr_027_5791:
    and l                                         ; $5791: $a5
    ld [hl], b                                    ; $5792: $70
    rst $00                                       ; $5793: $c7
    ld e, [hl]                                    ; $5794: $5e
    dec b                                         ; $5795: $05
    call Call_027_6b42                            ; $5796: $cd $42 $6b
    jp nc, $482c                                  ; $5799: $d2 $2c $48

    add h                                         ; $579c: $84
    ld bc, $1fad                                  ; $579d: $01 $ad $1f
    ld h, e                                       ; $57a0: $63
    ld [hl+], a                                   ; $57a1: $22
    inc c                                         ; $57a2: $0c
    dec a                                         ; $57a3: $3d
    ccf                                           ; $57a4: $3f
    ld d, [hl]                                    ; $57a5: $56
    add hl, de                                    ; $57a6: $19
    cp $3c                                        ; $57a7: $fe $3c
    ld [hl], a                                    ; $57a9: $77
    cp h                                          ; $57aa: $bc
    inc [hl]                                      ; $57ab: $34
    or [hl]                                       ; $57ac: $b6
    ld a, l                                       ; $57ad: $7d
    adc c                                         ; $57ae: $89
    and l                                         ; $57af: $a5
    xor h                                         ; $57b0: $ac

Call_027_57b1:
    dec [hl]                                      ; $57b1: $35
    dec c                                         ; $57b2: $0d
    inc a                                         ; $57b3: $3c
    sbc d                                         ; $57b4: $9a
    add l                                         ; $57b5: $85
    sub $a4                                       ; $57b6: $d6 $a4
    ld e, c                                       ; $57b8: $59
    sub b                                         ; $57b9: $90
    call c, Call_027_57b1                         ; $57ba: $dc $b1 $57
    ld b, c                                       ; $57bd: $41
    jr jr_027_5787                                ; $57be: $18 $c7

    inc h                                         ; $57c0: $24
    push de                                       ; $57c1: $d5
    ld a, h                                       ; $57c2: $7c
    halt                                          ; $57c3: $76
    ld c, d                                       ; $57c4: $4a
    ldh a, [$de]                                  ; $57c5: $f0 $de
    ld h, l                                       ; $57c7: $65
    db $eb                                        ; $57c8: $eb
    ld d, c                                       ; $57c9: $51
    ld a, [hl]                                    ; $57ca: $7e
    dec e                                         ; $57cb: $1d
    dec b                                         ; $57cc: $05
    ldh [rHDMA3], a                               ; $57cd: $e0 $53
    ret c                                         ; $57cf: $d8

    ld l, $ac                                     ; $57d0: $2e $ac
    sub $4d                                       ; $57d2: $d6 $4d
    dec sp                                        ; $57d4: $3b
    add $77                                       ; $57d5: $c6 $77
    adc h                                         ; $57d7: $8c
    ld l, b                                       ; $57d8: $68
    sub l                                         ; $57d9: $95
    ld [hl], h                                    ; $57da: $74
    and c                                         ; $57db: $a1
    add [hl]                                      ; $57dc: $86
    jr nc, jr_027_57f5                            ; $57dd: $30 $16

    ld e, d                                       ; $57df: $5a
    sub e                                         ; $57e0: $93
    ld h, [hl]                                    ; $57e1: $66
    ld b, c                                       ; $57e2: $41
    ld [hl], d                                    ; $57e3: $72
    rst $00                                       ; $57e4: $c7
    ld e, [hl]                                    ; $57e5: $5e
    dec b                                         ; $57e6: $05
    ld h, c                                       ; $57e7: $61
    dec a                                         ; $57e8: $3d
    ccf                                           ; $57e9: $3f
    ld d, [hl]                                    ; $57ea: $56
    add hl, de                                    ; $57eb: $19
    cp $3c                                        ; $57ec: $fe $3c
    ld [hl], a                                    ; $57ee: $77
    cp h                                          ; $57ef: $bc
    inc [hl]                                      ; $57f0: $34
    or [hl]                                       ; $57f1: $b6
    ld a, l                                       ; $57f2: $7d
    adc c                                         ; $57f3: $89
    and l                                         ; $57f4: $a5

jr_027_57f5:
    ld [hl], b                                    ; $57f5: $70
    rst $10                                       ; $57f6: $d7
    xor d                                         ; $57f7: $aa

Jump_027_57f8:
    ld [hl+], a                                   ; $57f8: $22
    ld c, l                                       ; $57f9: $4d
    sub a                                         ; $57fa: $97
    xor l                                         ; $57fb: $ad
    ld d, l                                       ; $57fc: $55
    xor l                                         ; $57fd: $ad
    ccf                                           ; $57fe: $3f
    ld e, l                                       ; $57ff: $5d
    call z, Call_027_4fac                         ; $5800: $cc $ac $4f
    dec h                                         ; $5803: $25
    dec c                                         ; $5804: $0d
    ld sp, $0184                                  ; $5805: $31 $84 $01
    sub [hl]                                      ; $5808: $96
    ld e, d                                       ; $5809: $5a
    cp b                                          ; $580a: $b8
    jr nz, jr_027_5837                            ; $580b: $20 $2a

    sbc e                                         ; $580d: $9b
    and l                                         ; $580e: $a5
    ld d, $ce                                     ; $580f: $16 $ce
    cp [hl]                                       ; $5811: $be
    and h                                         ; $5812: $a4
    ld sp, $2b36                                  ; $5813: $31 $36 $2b

Jump_027_5816:
    cpl                                           ; $5816: $2f
    adc a                                         ; $5817: $8f
    jr nc, @+$3f                                  ; $5818: $30 $3d

    set 1, e                                      ; $581a: $cb $cb
    ld c, a                                       ; $581c: $4f
    push hl                                       ; $581d: $e5
    rst $10                                       ; $581e: $d7
    and h                                         ; $581f: $a4
    ld e, c                                       ; $5820: $59
    sub b                                         ; $5821: $90
    sub a                                         ; $5822: $97
    add d                                         ; $5823: $82

jr_027_5824:
    xor [hl]                                      ; $5824: $ae
    ld e, e                                       ; $5825: $5b
    adc a                                         ; $5826: $8f
    ld a, [c]                                     ; $5827: $f2
    dec bc                                        ; $5828: $0b
    xor [hl]                                      ; $5829: $ae
    ld b, h                                       ; $582a: $44
    xor b                                         ; $582b: $a8
    adc l                                         ; $582c: $8d
    and l                                         ; $582d: $a5
    add h                                         ; $582e: $84
    cp e                                          ; $582f: $bb
    jr nc, jr_027_5861                            ; $5830: $30 $2f

    sub d                                         ; $5832: $92
    ld h, $28                                     ; $5833: $26 $28
    di                                            ; $5835: $f3
    ld a, [c]                                     ; $5836: $f2

jr_027_5837:
    ld a, [c]                                     ; $5837: $f2
    ld e, l                                       ; $5838: $5d
    or [hl]                                       ; $5839: $b6
    and e                                         ; $583a: $a3
    or e                                          ; $583b: $b3
    add c                                         ; $583c: $81
    xor c                                         ; $583d: $a9
    db $fc                                        ; $583e: $fc
    ld c, [hl]                                    ; $583f: $4e
    add hl, sp                                    ; $5840: $39
    or $cc                                        ; $5841: $f6 $cc
    ld h, e                                       ; $5843: $63
    ld c, a                                       ; $5844: $4f
    sbc a                                         ; $5845: $9f
    add $98                                       ; $5846: $c6 $98
    db $fc                                        ; $5848: $fc
    or e                                          ; $5849: $b3
    ld l, $18                                     ; $584a: $2e $18
    daa                                           ; $584c: $27
    ld l, e                                       ; $584d: $6b
    db $fd                                        ; $584e: $fd
    rlca                                          ; $584f: $07
    ld b, [hl]                                    ; $5850: $46
    ld a, [hl]                                    ; $5851: $7e
    ld c, l                                       ; $5852: $4d
    sbc d                                         ; $5853: $9a
    push bc                                       ; $5854: $c5
    call z, $d4fa                                 ; $5855: $cc $fa $d4

jr_027_5858:
    rst $20                                       ; $5858: $e7
    push hl                                       ; $5859: $e5
    and a                                         ; $585a: $a7
    ld b, h                                       ; $585b: $44
    ld l, c                                       ; $585c: $69
    xor b                                         ; $585d: $a8
    ld a, [$c9f0]                                 ; $585e: $fa $f0 $c9

jr_027_5861:
    rst $10                                       ; $5861: $d7
    ld c, [hl]                                    ; $5862: $4e
    dec d                                         ; $5863: $15
    add [hl]                                      ; $5864: $86
    jr nc, jr_027_5824                            ; $5865: $30 $bd

    jp nc, Jump_027_52ac                          ; $5867: $d2 $ac $52

    ld e, d                                       ; $586a: $5a
    ldh a, [$be]                                  ; $586b: $f0 $be
    ld c, e                                       ; $586d: $4b
    sbc [hl]                                      ; $586e: $9e
    ld [hl], e                                    ; $586f: $73
    ld c, c                                       ; $5870: $49
    db $d3                                        ; $5871: $d3
    adc [hl]                                      ; $5872: $8e
    cp a                                          ; $5873: $bf
    ld l, e                                       ; $5874: $6b
    xor a                                         ; $5875: $af
    ld c, c                                       ; $5876: $49
    or e                                          ; $5877: $b3
    ld hl, sp+$6a                                 ; $5878: $f8 $6a
    db $fd                                        ; $587a: $fd
    dec e                                         ; $587b: $1d
    cpl                                           ; $587c: $2f
    adc l                                         ; $587d: $8d
    ld l, l                                       ; $587e: $6d
    ld e, a                                       ; $587f: $5f
    ld h, d                                       ; $5880: $62
    add hl, hl                                    ; $5881: $29
    ld d, e                                       ; $5882: $53
    rra                                           ; $5883: $1f
    db $dd                                        ; $5884: $dd
    and b                                         ; $5885: $a0
    jr c, @+$44                                   ; $5886: $38 $42

    xor b                                         ; $5888: $a8
    ld l, l                                       ; $5889: $6d
    ld a, h                                       ; $588a: $7c
    ld c, c                                       ; $588b: $49
    or c                                          ; $588c: $b1
    reti                                          ; $588d: $d9


    or l                                          ; $588e: $b5
    rst $10                                       ; $588f: $d7
    and h                                         ; $5890: $a4
    ld e, c                                       ; $5891: $59
    ldh a, [$be]                                  ; $5892: $f0 $be
    ld c, d                                       ; $5894: $4a
    ld c, l                                       ; $5895: $4d
    ld d, b                                       ; $5896: $50
    inc e                                         ; $5897: $1c
    ld h, c                                       ; $5898: $61
    sub [hl]                                      ; $5899: $96
    sub l                                         ; $589a: $95
    db $ec                                        ; $589b: $ec
    db $fc                                        ; $589c: $fc
    ld hl, sp+$1f                                 ; $589d: $f8 $1f
    ld a, a                                       ; $589f: $7f
    ld l, c                                       ; $58a0: $69
    ld e, [hl]                                    ; $58a1: $5e
    ld a, [hl]                                    ; $58a2: $7e
    xor l                                         ; $58a3: $ad
    ld l, c                                       ; $58a4: $69
    ldh [$d7], a                                  ; $58a5: $e0 $d7
    call $e674                                    ; $58a7: $cd $74 $e6
    push hl                                       ; $58aa: $e5
    jp nz, $579a                                  ; $58ab: $c2 $9a $57

    ld b, c                                       ; $58ae: $41
    ld e, e                                       ; $58af: $5b
    ld c, e                                       ; $58b0: $4b
    ld l, h                                       ; $58b1: $6c
    cp h                                          ; $58b2: $bc
    cp h                                          ; $58b3: $bc
    ld e, h                                       ; $58b4: $5c
    ld e, d                                       ; $58b5: $5a
    ld d, c                                       ; $58b6: $51
    jr jr_027_5858                                ; $58b7: $18 $9f

    or h                                          ; $58b9: $b4
    db $eb                                        ; $58ba: $eb
    add e                                         ; $58bb: $83
    bit 4, c                                      ; $58bc: $cb $61
    call $c0ab                                    ; $58be: $cd $ab $c0
    ld l, $4d                                     ; $58c1: $2e $4d
    daa                                           ; $58c3: $27
    ret                                           ; $58c4: $c9


    ld [hl], a                                    ; $58c5: $77
    pop bc                                        ; $58c6: $c1
    cp l                                          ; $58c7: $bd
    jp nc, Jump_027_52ac                          ; $58c8: $d2 $ac $52

    ld e, d                                       ; $58cb: $5a
    ld d, l                                       ; $58cc: $55
    cp [hl]                                       ; $58cd: $be
    xor d                                         ; $58ce: $aa
    rst $08                                       ; $58cf: $cf
    res 5, a                                      ; $58d0: $cb $af
    ld [hl-], a                                   ; $58d2: $32
    ld [hl+], a                                   ; $58d3: $22
    ld c, a                                       ; $58d4: $4f
    cp [hl]                                       ; $58d5: $be
    sub $34                                       ; $58d6: $d6 $34
    ldh a, [$eb]                                  ; $58d8: $f0 $eb
    sbc [hl]                                      ; $58da: $9e
    sub a                                         ; $58db: $97
    ld a, h                                       ; $58dc: $7c

jr_027_58dd:
    ld d, b                                       ; $58dd: $50
    and l                                         ; $58de: $a5
    db $fc                                        ; $58df: $fc
    jp c, Jump_027_62cd                           ; $58e0: $da $cd $62

    ld h, [hl]                                    ; $58e3: $66
    db $fd                                        ; $58e4: $fd
    ld d, d                                       ; $58e5: $52
    jr nc, jr_027_58dd                            ; $58e6: $30 $f5

    ld a, c                                       ; $58e8: $79
    ld sp, hl                                     ; $58e9: $f9
    sub l                                         ; $58ea: $95
    inc [hl]                                      ; $58eb: $34
    ld [de], a                                    ; $58ec: $12
    ld b, h                                       ; $58ed: $44
    dec b                                         ; $58ee: $05
    ld a, b                                       ; $58ef: $78
    ret c                                         ; $58f0: $d8

    and l                                         ; $58f1: $a5
    ld a, c                                       ; $58f2: $79
    ld sp, hl                                     ; $58f3: $f9
    dec e                                         ; $58f4: $1d
    ld c, e                                       ; $58f5: $4b
    ld l, $cd                                     ; $58f6: $2e $cd
    ld e, d                                       ; $58f8: $5a
    dec [hl]                                      ; $58f9: $35
    ld b, [hl]                                    ; $58fa: $46
    add h                                         ; $58fb: $84
    ld bc, $ca3d                                  ; $58fc: $01 $3d $ca
    set 2, a                                      ; $58ff: $cb $d7
    ld h, b                                       ; $5901: $60
    ld h, b                                       ; $5902: $60
    ld a, [hl-]                                   ; $5903: $3a
    sbc l                                         ; $5904: $9d
    add h                                         ; $5905: $84
    ld h, a                                       ; $5906: $67
    di                                            ; $5907: $f3
    ld e, h                                       ; $5908: $5c
    ei                                            ; $5909: $fb
    and a                                         ; $590a: $a7
    ld l, e                                       ; $590b: $6b
    daa                                           ; $590c: $27
    add a                                         ; $590d: $87
    and l                                         ; $590e: $a5
    cp l                                          ; $590f: $bd
    ld a, [hl+]                                   ; $5910: $2a
    ret                                           ; $5911: $c9


    cp [hl]                                       ; $5912: $be
    ld d, b                                       ; $5913: $50
    xor c                                         ; $5914: $a9
    ccf                                           ; $5915: $3f
    db $db                                        ; $5916: $db
    push af                                       ; $5917: $f5
    rrca                                          ; $5918: $0f
    ld h, c                                       ; $5919: $61
    sub a                                         ; $591a: $97
    and $e5                                       ; $591b: $e6 $e5
    rst $20                                       ; $591d: $e7
    xor a                                         ; $591e: $af
    ld d, l                                       ; $591f: $55
    ld a, c                                       ; $5920: $79
    add c                                         ; $5921: $81
    jp c, $0caa                                   ; $5922: $da $aa $0c

    jp Jump_027_49a4                              ; $5925: $c3 $a4 $49


    ld h, [hl]                                    ; $5928: $66
    adc b                                         ; $5929: $88
    ld [hl], $cb                                  ; $592a: $36 $cb
    jp c, $f3ef                                   ; $592c: $da $ef $f3

    ld a, [c]                                     ; $592f: $f2
    ld a, [c]                                     ; $5930: $f2
    dec [hl]                                      ; $5931: $35
    jr jr_027_5998                                ; $5932: $18 $64

    ld hl, sp-$15                                 ; $5934: $f8 $eb
    ret z                                         ; $5936: $c8

    cp e                                          ; $5937: $bb
    scf                                           ; $5938: $37
    and e                                         ; $5939: $a3
    ld e, e                                       ; $593a: $5b

Jump_027_593b:
    db $fd                                        ; $593b: $fd
    ret nz                                        ; $593c: $c0

    adc l                                         ; $593d: $8d
    ld l, l                                       ; $593e: $6d
    rst $28                                       ; $593f: $ef
    jp nc, $bcbc                                  ; $5940: $d2 $bc $bc

    inc a                                         ; $5943: $3c
    jp nz, $1aa7                                  ; $5944: $c2 $a7 $1a

    sbc c                                         ; $5947: $99
    ld a, l                                       ; $5948: $7d
    dec b                                         ; $5949: $05
    ld a, h                                       ; $594a: $7c
    ld d, l                                       ; $594b: $55
    ld d, h                                       ; $594c: $54
    add b                                         ; $594d: $80

Call_027_594e:
    ld e, l                                       ; $594e: $5d
    ld e, b                                       ; $594f: $58
    rst $30                                       ; $5950: $f7
    db $f4                                        ; $5951: $f4
    sbc e                                         ; $5952: $9b
    inc b                                         ; $5953: $04
    db $e3                                        ; $5954: $e3
    xor a                                         ; $5955: $af
    sub a                                         ; $5956: $97
    ld [hl], l                                    ; $5957: $75
    sub a                                         ; $5958: $97
    or h                                          ; $5959: $b4
    rra                                           ; $595a: $1f
    jr nz, jr_027_59c2                            ; $595b: $20 $65

    dec l                                         ; $595d: $2d
    and h                                         ; $595e: $a4
    sbc l                                         ; $595f: $9d
    ld b, a                                       ; $5960: $47
    ld [$b129], sp                                ; $5961: $08 $29 $b1
    ld a, c                                       ; $5964: $79
    ld sp, hl                                     ; $5965: $f9
    or l                                          ; $5966: $b5
    call nz, $cbc6                                ; $5967: $c4 $c6 $cb
    sla l                                         ; $596a: $cb $25
    add sp, -$7e                                  ; $596c: $e8 $82
    ld bc, $fc2d                                  ; $596e: $01 $2d $fc
    cp a                                          ; $5971: $bf
    jp $94ec                                      ; $5972: $c3 $ec $94


    add c                                         ; $5975: $81
    add $47                                       ; $5976: $c6 $47
    db $db                                        ; $5978: $db
    jp hl                                         ; $5979: $e9


    xor a                                         ; $597a: $af
    sub b                                         ; $597b: $90
    and h                                         ; $597c: $a4
    db $ed                                        ; $597d: $ed
    ld hl, sp-$15                                 ; $597e: $f8 $eb
    ret z                                         ; $5980: $c8

    xor l                                         ; $5981: $ad
    ld e, $d0                                     ; $5982: $1e $d0
    sub $72                                       ; $5984: $d6 $72
    inc bc                                        ; $5986: $03
    ld a, d                                       ; $5987: $7a
    add $dd                                       ; $5988: $c6 $dd
    ld [hl], c                                    ; $598a: $71
    ld a, [c]                                     ; $598b: $f2
    ld l, h                                       ; $598c: $6c
    ld c, d                                       ; $598d: $4a
    ld l, h                                       ; $598e: $6c
    rst $00                                       ; $598f: $c7
    ld a, a                                       ; $5990: $7f
    ld c, d                                       ; $5991: $4a
    ldh a, [$eb]                                  ; $5992: $f0 $eb
    ld sp, hl                                     ; $5994: $f9
    ld a, [bc]                                    ; $5995: $0a
    pop af                                        ; $5996: $f1
    dec de                                        ; $5997: $1b

jr_027_5998:
    inc c                                         ; $5998: $0c
    daa                                           ; $5999: $27
    dec bc                                        ; $599a: $0b
    jp c, $3771                                   ; $599b: $da $71 $37

    ld d, [hl]                                    ; $599e: $56
    add l                                         ; $599f: $85
    dec sp                                        ; $59a0: $3b
    cpl                                           ; $59a1: $2f
    cp a                                          ; $59a2: $bf
    ld c, d                                       ; $59a3: $4a
    push hl                                       ; $59a4: $e5
    ld e, l                                       ; $59a5: $5d
    db $eb                                        ; $59a6: $eb
    cpl                                           ; $59a7: $2f
    sub e                                         ; $59a8: $93
    rrca                                          ; $59a9: $0f
    cpl                                           ; $59aa: $2f
    ld sp, $9358                                  ; $59ab: $31 $58 $93
    ld h, [hl]                                    ; $59ae: $66
    ld a, [de]                                    ; $59af: $1a
    db $e3                                        ; $59b0: $e3
    cp h                                          ; $59b1: $bc
    xor b                                         ; $59b2: $a8
    adc a                                         ; $59b3: $8f
    ld [hl], d                                    ; $59b4: $72
    and c                                         ; $59b5: $a1
    ld b, $b7                                     ; $59b6: $06 $b7
    ld a, [de]                                    ; $59b8: $1a
    sub h                                         ; $59b9: $94
    inc [hl]                                      ; $59ba: $34
    sub c                                         ; $59bb: $91
    xor l                                         ; $59bc: $ad
    db $fd                                        ; $59bd: $fd
    inc sp                                        ; $59be: $33
    ldh a, [$6c]                                  ; $59bf: $f0 $6c
    sub a                                         ; $59c1: $97

jr_027_59c2:
    ld b, $55                                     ; $59c2: $06 $55
    ret                                           ; $59c4: $c9


    adc h                                         ; $59c5: $8c
    xor e                                         ; $59c6: $ab
    ld d, d                                       ; $59c7: $52
    db $e4                                        ; $59c8: $e4
    or d                                          ; $59c9: $b2
    inc d                                         ; $59ca: $14
    ld e, b                                       ; $59cb: $58
    ei                                            ; $59cc: $fb
    sbc l                                         ; $59cd: $9d
    rst $38                                       ; $59ce: $ff
    and a                                         ; $59cf: $a7
    ld d, l                                       ; $59d0: $55
    ld d, c                                       ; $59d1: $51
    ld bc, $d01e                                  ; $59d2: $01 $1e $d0
    halt                                          ; $59d5: $76
    and $cd                                       ; $59d6: $e6 $cd
    xor b                                         ; $59d8: $a8
    sbc [hl]                                      ; $59d9: $9e
    ld [bc], a                                    ; $59da: $02
    ld d, e                                       ; $59db: $53
    ld sp, hl                                     ; $59dc: $f9
    add c                                         ; $59dd: $81
    ld l, c                                       ; $59de: $69
    sbc a                                         ; $59df: $9f
    rst $30                                       ; $59e0: $f7
    sub l                                         ; $59e1: $95
    rst $08                                       ; $59e2: $cf
    ld [hl], e                                    ; $59e3: $73
    xor l                                         ; $59e4: $ad
    ld l, c                                       ; $59e5: $69
    ldh [$d7], a                                  ; $59e6: $e0 $d7
    dec a                                         ; $59e8: $3d
    cpl                                           ; $59e9: $2f
    ld sp, hl                                     ; $59ea: $f9
    ld a, [hl-]                                   ; $59eb: $3a
    ld c, a                                       ; $59ec: $4f
    ld a, [de]                                    ; $59ed: $1a
    db $fd                                        ; $59ee: $fd
    ld a, $20                                     ; $59ef: $3e $20
    inc c                                         ; $59f1: $0c
    dec a                                         ; $59f2: $3d
    jp z, Jump_027_4ecf                           ; $59f3: $ca $cf $4e

    ld a, c                                       ; $59f6: $79
    ldh a, [rNR51]                                ; $59f7: $f0 $25
    call $2fcb                                    ; $59f9: $cd $cb $2f
    sub b                                         ; $59fc: $90
    inc [hl]                                      ; $59fd: $34
    call nz, Call_000_1760                        ; $59fe: $c4 $60 $17
    ld h, [hl]                                    ; $5a01: $66
    and a                                         ; $5a02: $a7
    or h                                          ; $5a03: $b4
    cpl                                           ; $5a04: $2f
    ld h, e                                       ; $5a05: $63
    ld c, a                                       ; $5a06: $4f
    di                                            ; $5a07: $f3
    sbc h                                         ; $5a08: $9c
    add $38                                       ; $5a09: $c6 $38
    ld [hl], b                                    ; $5a0b: $70
    jp $1c9e                                      ; $5a0c: $c3 $9e $1c


    and [hl]                                      ; $5a0f: $a6
    ld a, $8d                                     ; $5a10: $3e $8d
    ld [hl], c                                    ; $5a12: $71
    ld a, [hl]                                    ; $5a13: $7e
    jp $8407                                      ; $5a14: $c3 $07 $84


    ld bc, $ca3d                                  ; $5a17: $01 $3d $ca
    rst $08                                       ; $5a1a: $cf
    rl l                                          ; $5a1b: $cb $15
    sub $b7                                       ; $5a1d: $d6 $b7
    dec e                                         ; $5a1f: $1d
    inc sp                                        ; $5a20: $33
    ld h, l                                       ; $5a21: $65
    ld d, l                                       ; $5a22: $55
    adc d                                         ; $5a23: $8a
    ld e, h                                       ; $5a24: $5c
    sub [hl]                                      ; $5a25: $96
    or d                                          ; $5a26: $b2
    and h                                         ; $5a27: $a4
    ld a, c                                       ; $5a28: $79
    ld sp, hl                                     ; $5a29: $f9
    ret                                           ; $5a2a: $c9


    dec c                                         ; $5a2b: $0d
    adc d                                         ; $5a2c: $8a
    rst $30                                       ; $5a2d: $f7
    ld e, l                                       ; $5a2e: $5d
    sub h                                         ; $5a2f: $94
    ret c                                         ; $5a30: $d8

    ldh [$b2], a                                  ; $5a31: $e0 $b2
    rst $18                                       ; $5a33: $df
    add l                                         ; $5a34: $85
    and l                                         ; $5a35: $a5
    pop af                                        ; $5a36: $f1
    and l                                         ; $5a37: $a5
    cp l                                          ; $5a38: $bd
    halt                                          ; $5a39: $76
    ld a, [de]                                    ; $5a3a: $1a
    ld h, d                                       ; $5a3b: $62
    jr nc, @-$2f                                  ; $5a3c: $30 $cf

    cp l                                          ; $5a3e: $bd
    push af                                       ; $5a3f: $f5
    and l                                         ; $5a40: $a5
    ld c, c                                       ; $5a41: $49
    ld a, [$25f1]                                 ; $5a42: $fa $f1 $25
    rst $00                                       ; $5a45: $c7
    ld a, [c]                                     ; $5a46: $f2
    ld h, c                                       ; $5a47: $61
    sub h                                         ; $5a48: $94
    ld a, $fe                                     ; $5a49: $3e $fe
    ld b, d                                       ; $5a4b: $42
    sbc c                                         ; $5a4c: $99
    rst $20                                       ; $5a4d: $e7
    ret c                                         ; $5a4e: $d8

    db $fd                                        ; $5a4f: $fd
    jp hl                                         ; $5a50: $e9


    xor h                                         ; $5a51: $ac
    cpl                                           ; $5a52: $2f
    call Call_027_7a3a                            ; $5a53: $cd $3a $7a
    ret                                           ; $5a56: $c9


    ld [hl], $71                                  ; $5a57: $36 $71
    db $ec                                        ; $5a59: $ec
    push de                                       ; $5a5a: $d5
    dec bc                                        ; $5a5b: $0b
    jp c, Jump_027_6e5a                           ; $5a5c: $da $5a $6e

    ld b, b                                       ; $5a5f: $40
    rst $08                                       ; $5a60: $cf
    cp b                                          ; $5a61: $b8
    dec sp                                        ; $5a62: $3b
    ld a, [hl+]                                   ; $5a63: $2a
    or [hl]                                       ; $5a64: $b6
    dec c                                         ; $5a65: $0d
    db $ec                                        ; $5a66: $ec
    jr jr_027_5a7c                                ; $5a67: $18 $13

    or [hl]                                       ; $5a69: $b6
    db $e3                                        ; $5a6a: $e3
    or e                                          ; $5a6b: $b3
    sub h                                         ; $5a6c: $94
    rst $00                                       ; $5a6d: $c7
    dec a                                         ; $5a6e: $3d
    jp z, $a3af                                   ; $5a6f: $ca $af $a3

    nop                                           ; $5a72: $00
    ld a, h                                       ; $5a73: $7c
    ld a, [bc]                                    ; $5a74: $0a
    dec sp                                        ; $5a75: $3b
    ld a, h                                       ; $5a76: $7c
    db $eb                                        ; $5a77: $eb
    and [hl]                                      ; $5a78: $a6
    dec e                                         ; $5a79: $1d
    db $e3                                        ; $5a7a: $e3
    dec sp                                        ; $5a7b: $3b

jr_027_5a7c:
    ld b, [hl]                                    ; $5a7c: $46
    or h                                          ; $5a7d: $b4
    ld c, d                                       ; $5a7e: $4a
    cp d                                          ; $5a7f: $ba
    add b                                         ; $5a80: $80
    ld bc, $8a3d                                  ; $5a81: $01 $3d $8a
    ld a, d                                       ; $5a84: $7a
    dec c                                         ; $5a85: $0d
    and $e5                                       ; $5a86: $e6 $e5
    rst $10                                       ; $5a88: $d7
    adc $06                                       ; $5a89: $ce $06
    ld l, d                                       ; $5a8b: $6a
    ld h, e                                       ; $5a8c: $63
    add hl, hl                                    ; $5a8d: $29
    ld hl, $8eda                                  ; $5a8e: $21 $da $8e
    cp e                                          ; $5a91: $bb
    ld [bc], a                                    ; $5a92: $02
    cp [hl]                                       ; $5a93: $be
    and $55                                       ; $5a94: $e6 $55

Jump_027_5a96:
    ld b, $6e                                     ; $5a96: $06 $6e
    ret c                                         ; $5a98: $d8

    sub e                                         ; $5a99: $93
    jp $fe20                                      ; $5a9a: $c3 $20 $fe


    ld [hl], a                                    ; $5a9d: $77
    sub [hl]                                      ; $5a9e: $96
    inc [hl]                                      ; $5a9f: $34
    cpl                                           ; $5aa0: $2f
    ccf                                           ; $5aa1: $3f
    ei                                            ; $5aa2: $fb
    ld a, [bc]                                    ; $5aa3: $0a
    ld hl, sp-$1e                                 ; $5aa4: $f8 $e2
    ld e, e                                       ; $5aa6: $5b
    ccf                                           ; $5aa7: $3f
    ld [hl+], a                                   ; $5aa8: $22
    inc c                                         ; $5aa9: $0c
    ld d, $b2                                     ; $5aaa: $16 $b2
    ld a, $f8                                     ; $5aac: $3e $f8
    dec c                                         ; $5aae: $0d
    call nc, Call_000_126f                        ; $5aaf: $d4 $6f $12
    xor h                                         ; $5ab2: $ac
    ld c, d                                       ; $5ab3: $4a
    ld a, [c]                                     ; $5ab4: $f2
    ld c, e                                       ; $5ab5: $4b
    and $77                                       ; $5ab6: $e6 $77
    ret                                           ; $5ab8: $c9


    ld [hl], e                                    ; $5ab9: $73
    ld e, [hl]                                    ; $5aba: $5e
    ld a, [hl]                                    ; $5abb: $7e
    ld l, l                                       ; $5abc: $6d
    ld a, c                                       ; $5abd: $79
    xor l                                         ; $5abe: $ad
    rst $30                                       ; $5abf: $f7
    ld a, l                                       ; $5ac0: $7d
    ld l, c                                       ; $5ac1: $69
    ld [$5e3b], a                                 ; $5ac2: $ea $3b $5e
    ld l, $05                                     ; $5ac5: $2e $05
    jp hl                                         ; $5ac7: $e9


Jump_027_5ac8:
    ld c, $dc                                     ; $5ac8: $0e $dc
    or l                                          ; $5aca: $b5
    ccf                                           ; $5acb: $3f
    sbc $b7                                       ; $5acc: $de $b7
    ld a, $9b                                     ; $5ace: $3e $9b
    rst $20                                       ; $5ad0: $e7
    jp c, Jump_000_2f3f                           ; $5ad1: $da $3f $2f

    ccf                                           ; $5ad4: $3f
    ld a, $a5                                     ; $5ad5: $3e $a5
    cp [hl]                                       ; $5ad7: $be
    or h                                          ; $5ad8: $b4
    rst $00                                       ; $5ad9: $c7
    ld d, h                                       ; $5ada: $54
    ld [$2fe3], a                                 ; $5adb: $ea $e3 $2f
    ld b, a                                       ; $5ade: $47
    dec d                                         ; $5adf: $15
    ld b, $4b                                     ; $5ae0: $06 $4b
    add hl, de                                    ; $5ae2: $19
    ld a, a                                       ; $5ae3: $7f
    cp l                                          ; $5ae4: $bd
    ld a, [hl+]                                   ; $5ae5: $2a
    rrca                                          ; $5ae6: $0f
    ld l, b                                       ; $5ae7: $68
    dec sp                                        ; $5ae8: $3b
    dec h                                         ; $5ae9: $25
    cp l                                          ; $5aea: $bd
    ld e, h                                       ; $5aeb: $5c
    ld a, [bc]                                    ; $5aec: $0a
    add $2b                                       ; $5aed: $c6 $2b
    call z, $feb5                                 ; $5aef: $cc $b5 $fe
    ld [hl], h                                    ; $5af2: $74
    call nz, $fcbc                                ; $5af3: $c4 $bc $fc
    xor h                                         ; $5af6: $ac
    ld l, d                                       ; $5af7: $6a
    and d                                         ; $5af8: $a2
    rst $08                                       ; $5af9: $cf
    adc e                                         ; $5afa: $8b
    ld a, [$8578]                                 ; $5afb: $fa $78 $85
    or l                                          ; $5afe: $b5
    dec h                                         ; $5aff: $25
    db $eb                                        ; $5b00: $eb
    ld c, a                                       ; $5b01: $4f
    cp e                                          ; $5b02: $bb
    db $e4                                        ; $5b03: $e4
    cp c                                          ; $5b04: $b9
    and d                                         ; $5b05: $a2
    ld l, h                                       ; $5b06: $6c
    db $ed                                        ; $5b07: $ed
    ld a, a                                       ; $5b08: $7f
    jp c, $1d87                                   ; $5b09: $da $87 $1d

    cp a                                          ; $5b0c: $bf
    rst $08                                       ; $5b0d: $cf
    sub [hl]                                      ; $5b0e: $96
    or $ac                                        ; $5b0f: $f6 $ac
    ld a, [de]                                    ; $5b11: $1a
    adc l                                         ; $5b12: $8d
    or [hl]                                       ; $5b13: $b6
    db $e3                                        ; $5b14: $e3
    jp $fcbc                                      ; $5b15: $c3 $bc $fc


    ld b, b                                       ; $5b18: $40
    jp $d31f                                      ; $5b19: $c3 $1f $d3


    ld b, $6d                                     ; $5b1c: $06 $6d
    or l                                          ; $5b1e: $b5
    and e                                         ; $5b1f: $a3
    adc l                                         ; $5b20: $8d
    adc a                                         ; $5b21: $8f
    rst $38                                       ; $5b22: $ff
    sbc d                                         ; $5b23: $9a
    db $fc                                        ; $5b24: $fc
    jr z, jr_027_5ba4                             ; $5b25: $28 $7d

    cp $31                                        ; $5b27: $fe $31
    ld e, [hl]                                    ; $5b29: $5e
    ld a, [bc]                                    ; $5b2a: $0a
    sub $a4                                       ; $5b2b: $d6 $a4
    add hl, de                                    ; $5b2d: $19
    ld e, a                                       ; $5b2e: $5f
    call nc, Call_000_2bc7                        ; $5b2f: $d4 $c7 $2b
    db $ec                                        ; $5b32: $ec

jr_027_5b33:
    jp nc, $bcbc                                  ; $5b33: $d2 $bc $bc

    inc a                                         ; $5b36: $3c
    ld [hl], a                                    ; $5b37: $77
    sub b                                         ; $5b38: $90
    xor e                                         ; $5b39: $ab
    rst $38                                       ; $5b3a: $ff
    ld [hl], a                                    ; $5b3b: $77
    sub $a4                                       ; $5b3c: $d6 $a4
    sub c                                         ; $5b3e: $91
    ld d, c                                       ; $5b3f: $51
    jp nz, $d2c3                                  ; $5b40: $c2 $c3 $d2

    ld hl, sp-$52                                 ; $5b43: $f8 $ae
    cp l                                          ; $5b45: $bd
    ld h, $cd                                     ; $5b46: $26 $cd
    ld [$fc94], a                                 ; $5b48: $ea $94 $fc
    ld hl, sp-$5e                                 ; $5b4b: $f8 $a2
    ld e, [hl]                                    ; $5b4d: $5e
    add e                                         ; $5b4e: $83
    dec b                                         ; $5b4f: $05
    sbc c                                         ; $5b50: $99
    ld l, h                                       ; $5b51: $6c
    halt                                          ; $5b52: $76
    jp z, $349a                                   ; $5b53: $ca $9a $34

    call c, $40da                                 ; $5b56: $dc $da $40
    cpl                                           ; $5b59: $2f
    sbc e                                         ; $5b5a: $9b
    xor $78                                       ; $5b5b: $ee $78
    cp c                                          ; $5b5d: $b9
    inc d                                         ; $5b5e: $14
    and h                                         ; $5b5f: $a4
    dec sp                                        ; $5b60: $3b
    inc c                                         ; $5b61: $0c

jr_027_5b62:
    ld a, [hl-]                                   ; $5b62: $3a
    ld e, c                                       ; $5b63: $59
    ld a, a                                       ; $5b64: $7f
    ld [$1db2], sp                                ; $5b65: $08 $b2 $1d
    cpl                                           ; $5b68: $2f
    ld hl, $3d0c                                  ; $5b69: $21 $0c $3d
    cp a                                          ; $5b6c: $bf
    add $d6                                       ; $5b6d: $c6 $d6
    ld a, [hl]                                    ; $5b6f: $7e
    rst $30                                       ; $5b70: $f7
    sub a                                         ; $5b71: $97
    cp c                                          ; $5b72: $b9
    ld de, $a5da                                  ; $5b73: $11 $da $a5
    ld b, c                                       ; $5b76: $41
    ld h, $71                                     ; $5b77: $26 $71
    rst $10                                       ; $5b79: $d7

jr_027_5b7a:
    xor d                                         ; $5b7a: $aa
    ld [hl+], a                                   ; $5b7b: $22
    dec c                                         ; $5b7c: $0d
    jp c, Jump_027_647a                           ; $5b7d: $da $7a $64

    sbc b                                         ; $5b80: $98
    ld [hl+], a                                   ; $5b81: $22
    ret                                           ; $5b82: $c9


    adc a                                         ; $5b83: $8f

jr_027_5b84:
    cp a                                          ; $5b84: $bf
    ld sp, $fdae                                  ; $5b85: $31 $ae $fd
    db $d3                                        ; $5b88: $d3
    or l                                          ; $5b89: $b5
    ld l, a                                       ; $5b8a: $6f
    jr nc, jr_027_5b33                            ; $5b8b: $30 $a6

    dec c                                         ; $5b8d: $0d
    jp nz, Jump_027_5a96                          ; $5b8e: $c2 $96 $5a

    jr c, jr_027_5b62                             ; $5b91: $38 $cf

    sbc h                                         ; $5b93: $9c
    ld e, a                                       ; $5b94: $5f
    ld a, c                                       ; $5b95: $79
    ld [hl], $cf                                  ; $5b96: $36 $cf
    cp c                                          ; $5b98: $b9
    add $fa                                       ; $5b99: $c6 $fa
    sub h                                         ; $5b9b: $94
    sbc d                                         ; $5b9c: $9a
    jr nc, jr_027_5b84                            ; $5b9d: $30 $e5

    ld de, $3d06                                  ; $5b9f: $11 $06 $3d
    db $e4                                        ; $5ba2: $e4
    xor l                                         ; $5ba3: $ad

jr_027_5ba4:
    add hl, hl                                    ; $5ba4: $29
    ld d, e                                       ; $5ba5: $53
    ld h, d                                       ; $5ba6: $62
    or e                                          ; $5ba7: $b3
    ld c, h                                       ; $5ba8: $4c
    push hl                                       ; $5ba9: $e5
    rla                                           ; $5baa: $17
    db $e4                                        ; $5bab: $e4
    and l                                         ; $5bac: $a5
    ld h, b                                       ; $5bad: $60
    sbc [hl]                                      ; $5bae: $9e

Jump_027_5baf:
    ld l, e                                       ; $5baf: $6b
    ccf                                           ; $5bb0: $3f
    db $e3                                        ; $5bb1: $e3
    xor $02                                       ; $5bb2: $ee $02
    push de                                       ; $5bb4: $d5
    ld a, h                                       ; $5bb5: $7c
    ld e, [hl]                                    ; $5bb6: $5e
    call nc, $3727                                ; $5bb7: $d4 $27 $37
    jr z, jr_027_5b7a                             ; $5bba: $28 $be

    ld e, $f2                                     ; $5bbc: $1e $f2
    sub $94                                       ; $5bbe: $d6 $94
    xor [hl]                                      ; $5bc0: $ae
    db $eb                                        ; $5bc1: $eb
    ld hl, $4d6f                                  ; $5bc2: $21 $6f $4d
    ld b, c                                       ; $5bc5: $41
    ld [$aea1], sp                                ; $5bc6: $08 $a1 $ae
    jr @-$37                                      ; $5bc9: $18 $c7

    ld h, a                                       ; $5bcb: $67
    or d                                          ; $5bcc: $b2
    pop de                                        ; $5bcd: $d1
    dec c                                         ; $5bce: $0d
    adc d                                         ; $5bcf: $8a
    ld [hl], e                                    ; $5bd0: $73
    rst $10                                       ; $5bd1: $d7
    xor d                                         ; $5bd2: $aa
    ld [hl+], a                                   ; $5bd3: $22
    dec c                                         ; $5bd4: $0d
    ld [hl], a                                    ; $5bd5: $77
    or e                                          ; $5bd6: $b3
    ld a, b                                       ; $5bd7: $78
    dec c                                         ; $5bd8: $0d
    and [hl]                                      ; $5bd9: $a6
    or h                                          ; $5bda: $b4
    sub d                                         ; $5bdb: $92
    sub h                                         ; $5bdc: $94

Jump_027_5bdd:
    ld b, [hl]                                    ; $5bdd: $46
    and $39                                       ; $5bde: $e6 $39
    jr z, jr_027_5c0c                             ; $5be0: $28 $2a

    ccf                                           ; $5be2: $3f
    cpl                                           ; $5be3: $2f
    rla                                           ; $5be4: $17
    ld d, [hl]                                    ; $5be5: $56
    jp nc, $8fc0                                  ; $5be6: $d2 $c0 $8f

    cp a                                          ; $5be9: $bf
    ld e, [hl]                                    ; $5bea: $5e
    sub $a4                                       ; $5beb: $d6 $a4
    ld b, c                                       ; $5bed: $41
    jr @+$3f                                      ; $5bee: $18 $3d

    ld [hl-], a                                   ; $5bf0: $32
    rst $20                                       ; $5bf1: $e7
    ld d, a                                       ; $5bf2: $57
    sbc [hl]                                      ; $5bf3: $9e
    call $ae73                                    ; $5bf4: $cd $73 $ae
    or c                                          ; $5bf7: $b1
    adc [hl]                                      ; $5bf8: $8e
    or [hl]                                       ; $5bf9: $b6
    ld d, e                                       ; $5bfa: $53
    ld l, [hl]                                    ; $5bfb: $6e
    ld d, b                                       ; $5bfc: $50
    inc e                                         ; $5bfd: $1c
    ld h, c                                       ; $5bfe: $61
    rst $00                                       ; $5bff: $c7
    ld h, a                                       ; $5c00: $67
    ld [hl-], a                                   ; $5c01: $32
    cp d                                          ; $5c02: $ba
    ld b, c                                       ; $5c03: $41
    ld [hl], c                                    ; $5c04: $71
    xor $5a                                       ; $5c05: $ee $5a
    ld d, l                                       ; $5c07: $55
    and h                                         ; $5c08: $a4
    ld b, c                                       ; $5c09: $41
    jr @-$51                                      ; $5c0a: $18 $ad

jr_027_5c0c:
    ld b, [hl]                                    ; $5c0c: $46
    and h                                         ; $5c0d: $a4
    pop hl                                        ; $5c0e: $e1
    xor [hl]                                      ; $5c0f: $ae
    ld d, l                                       ; $5c10: $55
    ld b, l                                       ; $5c11: $45
    ld a, [de]                                    ; $5c12: $1a
    or h                                          ; $5c13: $b4
    push af                                       ; $5c14: $f5
    db $fc                                        ; $5c15: $fc
    dec d                                         ; $5c16: $15
    or l                                          ; $5c17: $b5
    cp $3c                                        ; $5c18: $fe $3c
    rla                                           ; $5c1a: $17
    cp h                                          ; $5c1b: $bc
    rst $08                                       ; $5c1c: $cf
    ld [hl], e                                    ; $5c1d: $73
    db $dd                                        ; $5c1e: $dd
    db $d3                                        ; $5c1f: $d3
    ld l, a                                       ; $5c20: $6f
    ld [de], a                                    ; $5c21: $12
    xor h                                         ; $5c22: $ac
    adc d                                         ; $5c23: $8a
    ld a, [bc]                                    ; $5c24: $0a
    ret nc                                        ; $5c25: $d0

    ld h, l                                       ; $5c26: $65
    ld l, e                                       ; $5c27: $6b
    ld hl, $fced                                  ; $5c28: $21 $ed $fc
    ld e, b                                       ; $5c2b: $58
    ld a, $50                                     ; $5c2c: $3e $50
    call Call_027_6f17                            ; $5c2e: $cd $17 $6f
    db $fd                                        ; $5c31: $fd
    ld [hl], a                                    ; $5c32: $77
    ld a, l                                       ; $5c33: $7d
    ld a, h                                       ; $5c34: $7c
    ld a, c                                       ; $5c35: $79
    ld e, d                                       ; $5c36: $5a
    sub e                                         ; $5c37: $93
    and [hl]                                      ; $5c38: $a6
    ld h, $bf                                     ; $5c39: $26 $bf
    xor b                                         ; $5c3b: $a8
    cp $5d                                        ; $5c3c: $fe $5d
    jr nc, jr_027_5c67                            ; $5c3e: $30 $27

    ld h, l                                       ; $5c40: $65
    ld d, l                                       ; $5c41: $55
    ld a, a                                       ; $5c42: $7f
    add [hl]                                      ; $5c43: $86
    jr nc, jr_027_5c83                            ; $5c44: $30 $3d

    set 1, e                                      ; $5c46: $cb $cb
    rst $28                                       ; $5c48: $ef
    jp nz, $fcbc                                  ; $5c49: $c2 $bc $fc

    cp d                                          ; $5c4c: $ba
    and a                                         ; $5c4d: $a7
    rst $18                                       ; $5c4e: $df
    inc h                                         ; $5c4f: $24
    ld e, b                                       ; $5c50: $58
    dec d                                         ; $5c51: $15
    dec d                                         ; $5c52: $15
    ld b, b                                       ; $5c53: $40
    ld [hl-], a                                   ; $5c54: $32
    jp Jump_000_18ae                              ; $5c55: $c3 $ae $18


    ld b, a                                       ; $5c58: $47
    pop bc                                        ; $5c59: $c1
    ld l, h                                       ; $5c5a: $6c
    sub l                                         ; $5c5b: $95
    reti                                          ; $5c5c: $d9


    sub d                                         ; $5c5d: $92
    pop hl                                        ; $5c5e: $e1
    jp z, Jump_027_4fcb                           ; $5c5f: $ca $cb $4f

    ld h, c                                       ; $5c62: $61
    ld c, l                                       ; $5c63: $4d
    sbc d                                         ; $5c64: $9a
    ld d, l                                       ; $5c65: $55
    ld c, d                                       ; $5c66: $4a

jr_027_5c67:
    dec bc                                        ; $5c67: $0b
    sbc $a7                                       ; $5c68: $de $a7
    call nz, Call_027_7e06                        ; $5c6a: $c4 $06 $7e
    ld h, e                                       ; $5c6d: $63
    ld e, h                                       ; $5c6e: $5c
    ei                                            ; $5c6f: $fb
    ld [hl], a                                    ; $5c70: $77
    ld l, c                                       ; $5c71: $69
    ld e, [hl]                                    ; $5c72: $5e
    ld a, [hl]                                    ; $5c73: $7e
    ld l, l                                       ; $5c74: $6d
    ld [hl], e                                    ; $5c75: $73
    inc hl                                        ; $5c76: $23
    cp e                                          ; $5c77: $bb
    inc d                                         ; $5c78: $14
    and b                                         ; $5c79: $a0
    xor l                                         ; $5c7a: $ad
    ld b, a                                       ; $5c7b: $47
    ld a, c                                       ; $5c7c: $79
    ld sp, hl                                     ; $5c7d: $f9
    xor c                                         ; $5c7e: $a9
    db $fc                                        ; $5c7f: $fc
    ld a, b                                       ; $5c80: $78
    ld l, l                                       ; $5c81: $6d
    ld h, b                                       ; $5c82: $60

jr_027_5c83:
    sbc [hl]                                      ; $5c83: $9e
    dec bc                                        ; $5c84: $0b
    sbc $e7                                       ; $5c85: $de $e7
    push hl                                       ; $5c87: $e5
    push hl                                       ; $5c88: $e5
    ld h, a                                       ; $5c89: $67
    dec hl                                        ; $5c8a: $2b
    ld hl, sp-$35                                 ; $5c8b: $f8 $cb
    xor [hl]                                      ; $5c8d: $ae
    cp l                                          ; $5c8e: $bd
    ld h, $cd                                     ; $5c8f: $26 $cd
    ld h, d                                       ; $5c91: $62
    ld h, [hl]                                    ; $5c92: $66
    ld a, l                                       ; $5c93: $7d
    halt                                          ; $5c94: $76
    jp z, $7cbc                                   ; $5c95: $ca $bc $7c

    adc b                                         ; $5c98: $88
    jr nc, jr_027_5cb1                            ; $5c99: $30 $16

    sbc d                                         ; $5c9b: $9a
    adc [hl]                                      ; $5c9c: $8e
    db $fd                                        ; $5c9d: $fd
    ld [hl], a                                    ; $5c9e: $77
    cp b                                          ; $5c9f: $b8

jr_027_5ca0:
    ld h, e                                       ; $5ca0: $63
    ld a, [hl+]                                   ; $5ca1: $2a
    ld [hl], l                                    ; $5ca2: $75
    xor $98                                       ; $5ca3: $ee $98
    ld d, d                                       ; $5ca5: $52
    ld a, l                                       ; $5ca6: $7d
    sbc l                                         ; $5ca7: $9d
    xor b                                         ; $5ca8: $a8
    push de                                       ; $5ca9: $d5
    inc hl                                        ; $5caa: $23
    add h                                         ; $5cab: $84
    adc $33                                       ; $5cac: $ce $33
    ldh [$f3], a                                  ; $5cae: $e0 $f3
    ld a, [c]                                     ; $5cb0: $f2

jr_027_5cb1:
    db $e3                                        ; $5cb1: $e3
    or l                                          ; $5cb2: $b5
    ld e, c                                       ; $5cb3: $59
    dec bc                                        ; $5cb4: $0b
    ld l, c                                       ; $5cb5: $69
    rst $20                                       ; $5cb6: $e7
    rla                                           ; $5cb7: $17
    ld l, a                                       ; $5cb8: $6f
    db $fd                                        ; $5cb9: $fd
    ld h, c                                       ; $5cba: $61
    rst $10                                       ; $5cbb: $d7

Call_027_5cbc:
Jump_027_5cbc:
    ld de, $b506                                  ; $5cbc: $11 $06 $b5
    xor $e9                                       ; $5cbf: $ee $e9
    scf                                           ; $5cc1: $37
    ld l, c                                       ; $5cc2: $69
    db $dd                                        ; $5cc3: $dd
    push hl                                       ; $5cc4: $e5
    ld d, [hl]                                    ; $5cc5: $56
    rrca                                          ; $5cc6: $0f
    ld l, e                                       ; $5cc7: $6b

Jump_027_5cc8:
jr_027_5cc8:
    adc c                                         ; $5cc8: $89
    or a                                          ; $5cc9: $b7
    jp $c9dd                                      ; $5cca: $c3 $dd $c9


    jp c, $e8ec                                   ; $5ccd: $da $ec $e8

    ld e, a                                       ; $5cd0: $5f
    db $eb                                        ; $5cd1: $eb
    dec hl                                        ; $5cd2: $2b
    ld a, e                                       ; $5cd3: $7b
    or [hl]                                       ; $5cd4: $b6
    db $e3                                        ; $5cd5: $e3
    ld d, d                                       ; $5cd6: $52
    sub $a3                                       ; $5cd7: $d6 $a3
    db $fc                                        ; $5cd9: $fc
    adc [hl]                                      ; $5cda: $8e
    ld sp, $7c14                                  ; $5cdb: $31 $14 $7c
    ld [de], a                                    ; $5cde: $12
    call nc, $bd30                                ; $5cdf: $d4 $30 $bd
    jp nc, $a8ac                                  ; $5ce2: $d2 $ac $a8

    push af                                       ; $5ce5: $f5
    and a                                         ; $5ce6: $a7
    adc e                                         ; $5ce7: $8b
    ld c, c                                       ; $5ce8: $49
    pop bc                                        ; $5ce9: $c1
    ld a, b                                       ; $5cea: $78
    ld l, l                                       ; $5ceb: $6d
    and $b9                                       ; $5cec: $e6 $b9
    jr nz, jr_027_5d01                            ; $5cee: $20 $11

    ld b, $96                                     ; $5cf0: $06 $96
    ld e, d                                       ; $5cf2: $5a
    jr c, @-$67                                   ; $5cf3: $38 $97

    and $52                                       ; $5cf5: $e6 $52
    jr nc, jr_027_5cc8                            ; $5cf7: $30 $cf

    reti                                          ; $5cf9: $d9


    sub a                                         ; $5cfa: $97
    ret c                                         ; $5cfb: $d8

    cp h                                          ; $5cfc: $bc
    db $fc                                        ; $5cfd: $fc
    inc l                                         ; $5cfe: $2c
    ld h, h                                       ; $5cff: $64
    ld e, a                                       ; $5d00: $5f

jr_027_5d01:
    add hl, bc                                    ; $5d01: $09
    ld d, l                                       ; $5d02: $55
    ld a, [de]                                    ; $5d03: $1a
    add h                                         ; $5d04: $84
    sub b                                         ; $5d05: $90
    ld h, l                                       ; $5d06: $65
    ld [$cf3f], a                                 ; $5d07: $ea $3f $cf
    ld e, h                                       ; $5d0a: $5c
    ld l, b                                       ; $5d0b: $68
    xor d                                         ; $5d0c: $aa
    or d                                          ; $5d0d: $b2
    xor b                                         ; $5d0e: $a8
    ldh [$a3], a                                  ; $5d0f: $e0 $a3
    dec de                                        ; $5d11: $1b
    inc d                                         ; $5d12: $14
    ld b, a                                       ; $5d13: $47
    jr jr_027_5d5d                                ; $5d14: $18 $47

    pop bc                                        ; $5d16: $c1
    ld h, d                                       ; $5d17: $62
    ld d, d                                       ; $5d18: $52
    jr nc, jr_027_5ca0                            ; $5d19: $30 $85

    dec [hl]                                      ; $5d1b: $35
    ld l, c                                       ; $5d1c: $69
    ld l, d                                       ; $5d1d: $6a
    ld a, [c]                                     ; $5d1e: $f2
    and e                                         ; $5d1f: $a3
    db $f4                                        ; $5d20: $f4
    dec b                                         ; $5d21: $05
    ld a, c                                       ; $5d22: $79
    add hl, hl                                    ; $5d23: $29
    sbc b                                         ; $5d24: $98
    jp hl                                         ; $5d25: $e9


    inc l                                         ; $5d26: $2c
    ld h, l                                       ; $5d27: $65
    ldh [$da], a                                  ; $5d28: $e0 $da
    ld e, h                                       ; $5d2a: $5c
    ld a, [bc]                                    ; $5d2b: $0a
    sub $31                                       ; $5d2c: $d6 $31
    adc $5d                                       ; $5d2e: $ce $5d
    sub e                                         ; $5d30: $93
    and [hl]                                      ; $5d31: $a6
    ld h, $bf                                     ; $5d32: $26 $bf
    jr nz, jr_027_5d65                            ; $5d34: $20 $2f

    dec b                                         ; $5d36: $05
    di                                            ; $5d37: $f3
    ld a, [c]                                     ; $5d38: $f2
    sub e                                         ; $5d39: $93
    dec de                                        ; $5d3a: $1b
    inc d                                         ; $5d3b: $14
    rra                                           ; $5d3c: $1f
    cp e                                          ; $5d3d: $bb
    ld a, [c]                                     ; $5d3e: $f2
    sub l                                         ; $5d3f: $95
    rst $18                                       ; $5d40: $df
    inc h                                         ; $5d41: $24
    add h                                         ; $5d42: $84
    ld bc, $1596                                  ; $5d43: $01 $96 $15
    or l                                          ; $5d46: $b5

jr_027_5d47:
    cp $c2                                        ; $5d47: $fe $c2
    ld h, [hl]                                    ; $5d49: $66
    ret                                           ; $5d4a: $c9


    db $d3                                        ; $5d4b: $d3
    and b                                         ; $5d4c: $a0
    ld a, [hl+]                                   ; $5d4d: $2a
    rst $08                                       ; $5d4e: $cf
    ld c, h                                       ; $5d4f: $4c
    db $fc                                        ; $5d50: $fc
    ld a, c                                       ; $5d51: $79
    adc [hl]                                      ; $5d52: $8e
    ld c, a                                       ; $5d53: $4f
    sub c                                         ; $5d54: $91
    ld h, [hl]                                    ; $5d55: $66
    jp c, $e34e                                   ; $5d56: $da $4e $e3

    ld e, l                                       ; $5d59: $5d
    jr nc, jr_027_5d89                            ; $5d5a: $30 $2d

    and h                                         ; $5d5c: $a4

jr_027_5d5d:
    sbc l                                         ; $5d5d: $9d
    xor a                                         ; $5d5e: $af
    pop bc                                        ; $5d5f: $c1
    jp nc, Jump_027_6fb6                          ; $5d60: $d2 $b6 $6f

    push af                                       ; $5d63: $f5
    cp e                                          ; $5d64: $bb

jr_027_5d65:
    or b                                          ; $5d65: $b0
    ld c, e                                       ; $5d66: $4b
    di                                            ; $5d67: $f3
    ld a, [c]                                     ; $5d68: $f2
    ld h, e                                       ; $5d69: $63
    add [hl]                                      ; $5d6a: $86
    add d                                         ; $5d6b: $82
    ld c, a                                       ; $5d6c: $4f
    ld [bc], a                                    ; $5d6d: $02
    or h                                          ; $5d6e: $b4
    or l                                          ; $5d6f: $b5
    ld e, [hl]                                    ; $5d70: $5e
    ld e, b                                       ; $5d71: $58
    dec d                                         ; $5d72: $15
    dec d                                         ; $5d73: $15
    ld b, b                                       ; $5d74: $40

jr_027_5d75:
    ld [hl-], a                                   ; $5d75: $32
    jp Jump_027_4941                              ; $5d76: $c3 $41 $49


    inc de                                        ; $5d79: $13
    reti                                          ; $5d7a: $d9


    jp c, Jump_027_7a3f                           ; $5d7b: $da $3f $7a

    sub l                                         ; $5d7e: $95
    halt                                          ; $5d7f: $76
    add e                                         ; $5d80: $83
    jr nc, @+$29                                  ; $5d81: $30 $27

jr_027_5d83:
    jr jr_027_5d75                                ; $5d83: $18 $f0

Jump_027_5d85:
    push bc                                       ; $5d85: $c5
    ld e, e                                       ; $5d86: $5b
    rst $38                                       ; $5d87: $ff
    jp hl                                         ; $5d88: $e9


jr_027_5d89:
    adc [hl]                                      ; $5d89: $8e
    sub a                                         ; $5d8a: $97
    add $b6                                       ; $5d8b: $c6 $b6
    cpl                                           ; $5d8d: $2f
    or c                                          ; $5d8e: $b1
    sub h                                         ; $5d8f: $94
    ld a, c                                       ; $5d90: $79
    xor [hl]                                      ; $5d91: $ae
    db $fd                                        ; $5d92: $fd
    adc e                                         ; $5d93: $8b
    add hl, bc                                    ; $5d94: $09
    sbc $05                                       ; $5d95: $de $05
    inc bc                                        ; $5d97: $03
    cp l                                          ; $5d98: $bd
    jp nc, $d974                                  ; $5d99: $d2 $74 $d9

    ld a, d                                       ; $5d9c: $7a
    sub [hl]                                      ; $5d9d: $96
    ld h, [hl]                                    ; $5d9e: $66
    ld a, [hl+]                                   ; $5d9f: $2a
    ld c, a                                       ; $5da0: $4f
    dec [hl]                                      ; $5da1: $35
    ld e, a                                       ; $5da2: $5f
    sub e                                         ; $5da3: $93
    ld h, [hl]                                    ; $5da4: $66
    sub a                                         ; $5da5: $97
    ld d, [hl]                                    ; $5da6: $56
    ld b, l                                       ; $5da7: $45
    dec b                                         ; $5da8: $05
    add sp, -$76                                  ; $5da9: $e8 $8a
    ld bc, $5a96                                  ; $5dab: $01 $96 $5a
    jr c, jr_027_5d47                             ; $5dae: $38 $97

    and $52                                       ; $5db0: $e6 $52
    jr nc, jr_027_5d83                            ; $5db2: $30 $cf

    reti                                          ; $5db4: $d9


    sub a                                         ; $5db5: $97
    ret c                                         ; $5db6: $d8

    cp h                                          ; $5db7: $bc
    db $fc                                        ; $5db8: $fc
    cp d                                          ; $5db9: $ba
    and a                                         ; $5dba: $a7
    rst $18                                       ; $5dbb: $df
    inc h                                         ; $5dbc: $24
    ld e, b                                       ; $5dbd: $58
    dec d                                         ; $5dbe: $15
    dec d                                         ; $5dbf: $15
    ld b, b                                       ; $5dc0: $40
    ld [hl-], a                                   ; $5dc1: $32
    ld b, e                                       ; $5dc2: $43
    add h                                         ; $5dc3: $84
    ld bc, $af16                                  ; $5dc4: $01 $16 $af
    pop bc                                        ; $5dc7: $c1
    ld l, $cd                                     ; $5dc8: $2e $cd
    res 1, a                                      ; $5dca: $cb $8f
    add hl, de                                    ; $5dcc: $19
    ld a, [bc]                                    ; $5dcd: $0a
    ld a, $09                                     ; $5dce: $3e $09
    cp d                                          ; $5dd0: $ba
    ld l, h                                       ; $5dd1: $6c
    rst $00                                       ; $5dd2: $c7
    ld e, d                                       ; $5dd3: $5a
    sbc a                                         ; $5dd4: $9f
    and [hl]                                      ; $5dd5: $a6
    or e                                          ; $5dd6: $b3
    xor a                                         ; $5dd7: $af
    add b                                         ; $5dd8: $80
    xor a                                         ; $5dd9: $af
    ld a, c                                       ; $5dda: $79
    sub l                                         ; $5ddb: $95
    ld b, c                                       ; $5ddc: $41
    ld c, c                                       ; $5ddd: $49
    inc de                                        ; $5dde: $13
    reti                                          ; $5ddf: $d9


    ld [$fc94], a                                 ; $5de0: $ea $94 $fc
    cp h                                          ; $5de3: $bc
    xor b                                         ; $5de4: $a8

jr_027_5de5:
    ld [hl], a                                    ; $5de5: $77
    pop bc                                        ; $5de6: $c1
    rst $00                                       ; $5de7: $c7
    cp a                                          ; $5de8: $bf
    rst $08                                       ; $5de9: $cf
    ld [hl], e                                    ; $5dea: $73
    ld d, l                                       ; $5deb: $55
    ld d, h                                       ; $5dec: $54
    nop                                           ; $5ded: $00
    xor $ba                                       ; $5dee: $ee $ba
    and a                                         ; $5df0: $a7
    ei                                            ; $5df1: $fb
    ld c, e                                       ; $5df2: $4b
    rla                                           ; $5df3: $17
    inc c                                         ; $5df4: $0c
    dec a                                         ; $5df5: $3d
    ccf                                           ; $5df6: $3f
    ld b, [hl]                                    ; $5df7: $46
    xor $5a                                       ; $5df8: $ee $5a
    ld d, l                                       ; $5dfa: $55
    and h                                         ; $5dfb: $a4
    ld e, c                                       ; $5dfc: $59
    rst $30                                       ; $5dfd: $f7
    ld [hl], h                                    ; $5dfe: $74
    ld a, a                                       ; $5dff: $7f
    ld b, c                                       ; $5e00: $41
    db $db                                        ; $5e01: $db
    xor c                                         ; $5e02: $a9
    ld b, [hl]                                    ; $5e03: $46
    ld b, [hl]                                    ; $5e04: $46
    rst $08                                       ; $5e05: $cf
    inc hl                                        ; $5e06: $23
    add h                                         ; $5e07: $84
    xor d                                         ; $5e08: $aa
    adc a                                         ; $5e09: $8f
    rst $18                                       ; $5e0a: $df
    sub [hl]                                      ; $5e0b: $96
    db $eb                                        ; $5e0c: $eb
    dec c                                         ; $5e0d: $0d
    jp c, $c7ba                                   ; $5e0e: $da $ba $c7

    ld d, a                                       ; $5e11: $57
    ld hl, sp-$27                                 ; $5e12: $f8 $d9
    sub a                                         ; $5e14: $97
    ret c                                         ; $5e15: $d8

    ld [hl], h                                    ; $5e16: $74
    ldh a, [$ea]                                  ; $5e17: $f0 $ea
    ld [$dd03], sp                                ; $5e19: $08 $03 $dd
    db $d3                                        ; $5e1c: $d3
    db $fd                                        ; $5e1d: $fd
    add l                                         ; $5e1e: $85
    dec sp                                        ; $5e1f: $3b
    cp [hl]                                       ; $5e20: $be
    cp h                                          ; $5e21: $bc
    db $fc                                        ; $5e22: $fc
    ld hl, sp+$34                                 ; $5e23: $f8 $34
    sub c                                         ; $5e25: $91
    xor l                                         ; $5e26: $ad
    ld c, c                                       ; $5e27: $49
    or e                                          ; $5e28: $b3
    sbc b                                         ; $5e29: $98
    ld e, c                                       ; $5e2a: $59
    rst $18                                       ; $5e2b: $df
    or l                                          ; $5e2c: $b5
    ld h, a                                       ; $5e2d: $67
    sbc c                                         ; $5e2e: $99
    ld b, d                                       ; $5e2f: $42
    db $fd                                        ; $5e30: $fd
    reti                                          ; $5e31: $d9


    sbc d                                         ; $5e32: $9a
    inc [hl]                                      ; $5e33: $34
    di                                            ; $5e34: $f3
    sbc h                                         ; $5e35: $9c
    ld a, l                                       ; $5e36: $7d
    adc c                                         ; $5e37: $89
    ld c, l                                       ; $5e38: $4d
    rst $10                                       ; $5e39: $d7
    ld a, [hl]                                    ; $5e3a: $7e
    adc [hl]                                      ; $5e3b: $8e
    xor c                                         ; $5e3c: $a9

jr_027_5e3d:
    ld [hl-], a                                   ; $5e3d: $32
    ldh a, [$a4]                                  ; $5e3e: $f0 $a4
    rst $28                                       ; $5e40: $ef
    adc d                                         ; $5e41: $8a
    ld bc, $d596                                  ; $5e42: $01 $96 $d5
    add hl, hl                                    ; $5e45: $29
    ld a, c                                       ; $5e46: $79
    xor $2c                                       ; $5e47: $ee $2c
    xor e                                         ; $5e49: $ab
    ld d, e                                       ; $5e4a: $53
    ld a, [c]                                     ; $5e4b: $f2
    ld e, l                                       ; $5e4c: $5d
    jr nc, jr_027_5de5                            ; $5e4d: $30 $96

    or c                                          ; $5e4f: $b1
    and h                                         ; $5e50: $a4
    sbc d                                         ; $5e51: $9a
    xor a                                         ; $5e52: $af
    ld c, [hl]                                    ; $5e53: $4e
    ret                                           ; $5e54: $c9


    ld [hl], e                                    ; $5e55: $73

Call_027_5e56:
    rlca                                          ; $5e56: $07
    ld d, a                                       ; $5e57: $57
    ret nc                                        ; $5e58: $d0

    sub $fd                                       ; $5e59: $d6 $fd
    and l                                         ; $5e5b: $a5

jr_027_5e5c:
    ld l, b                                       ; $5e5c: $68
    rlca                                          ; $5e5d: $07
    sub $a4                                       ; $5e5e: $d6 $a4
    add hl, de                                    ; $5e60: $19
    sub h                                         ; $5e61: $94
    inc [hl]                                      ; $5e62: $34
    sub c                                         ; $5e63: $91
    ld c, l                                       ; $5e64: $4d
    and c                                         ; $5e65: $a1
    cp [hl]                                       ; $5e66: $be
    sub $97                                       ; $5e67: $d6 $97
    ldh a, [rNR52]                                ; $5e69: $f0 $26
    dec a                                         ; $5e6b: $3d
    ld [hl], a                                    ; $5e6c: $77
    sub [hl]                                      ; $5e6d: $96
    ld a, c                                       ; $5e6e: $79
    cp c                                          ; $5e6f: $b9
    ld d, h                                       ; $5e70: $54
    rra                                           ; $5e71: $1f
    sub h                                         ; $5e72: $94
    rra                                           ; $5e73: $1f
    rlc a                                         ; $5e74: $cb $07
    add h                                         ; $5e76: $84
    ld bc, $8a3d                                  ; $5e77: $01 $3d $8a
    ld a, d                                       ; $5e7a: $7a
    dec c                                         ; $5e7b: $0d
    sub [hl]                                      ; $5e7c: $96
    db $f4                                        ; $5e7d: $f4
    dec hl                                        ; $5e7e: $2b
    ld l, c                                       ; $5e7f: $69
    ldh [$d7], a                                  ; $5e80: $e0 $d7

jr_027_5e82:
    ret                                           ; $5e82: $c9


    ld c, e                                       ; $5e83: $4b
    ld a, $5b                                     ; $5e84: $3e $5b
    ld [hl-], a                                   ; $5e86: $32
    call c, $d2f1                                 ; $5e87: $dc $f1 $d2
    ret c                                         ; $5e8a: $d8

    or $25                                        ; $5e8b: $f6 $25
    sub [hl]                                      ; $5e8d: $96
    jp nz, $f75d                                  ; $5e8e: $c2 $5d $f7

    ld [hl], h                                    ; $5e91: $74
    ld a, a                                       ; $5e92: $7f
    ld b, c                                       ; $5e93: $41
    jr jr_027_5e3d                                ; $5e94: $18 $a7

    ld a, [c]                                     ; $5e96: $f2
    call c, $cf25                                 ; $5e97: $dc $25 $cf
    ld e, l                                       ; $5e9a: $5d
    ld a, [c]                                     ; $5e9b: $f2
    ld e, l                                       ; $5e9c: $5d
    jr nc, jr_027_5e5c                            ; $5e9d: $30 $bd

    jp nc, Jump_027_6cc8                          ; $5e9f: $d2 $c8 $6c

    cp c                                          ; $5ea2: $b9
    ld c, a                                       ; $5ea3: $4f
    ld l, h                                       ; $5ea4: $6c
    daa                                           ; $5ea5: $27
    dec bc                                        ; $5ea6: $0b
    jp c, Jump_027_4949                           ; $5ea7: $da $49 $49

    ld b, c                                       ; $5eaa: $41
    dec sp                                        ; $5eab: $3b
    db $dd                                        ; $5eac: $dd
    inc sp                                        ; $5ead: $33
    inc e                                         ; $5eae: $1c
    db $fc                                        ; $5eaf: $fc
    add a                                         ; $5eb0: $87
    jr nc, jr_027_5e82                            ; $5eb1: $30 $cf

    dec d                                         ; $5eb3: $15
    or l                                          ; $5eb4: $b5
    cp $8a                                        ; $5eb5: $fe $8a
    ld de, $b95f                                  ; $5eb7: $11 $5f $b9
    ld hl, $b47c                                  ; $5eba: $21 $7c $b4
    pop de                                        ; $5ebd: $d1
    ld h, [hl]                                    ; $5ebe: $66
    xor c                                         ; $5ebf: $a9
    push bc                                       ; $5ec0: $c5
    cp b                                          ; $5ec1: $b8
    ld hl, sp-$42                                 ; $5ec2: $f8 $be
    ld h, $cd                                     ; $5ec4: $26 $cd
    ld [bc], a                                    ; $5ec6: $02
    push af                                       ; $5ec7: $f5
    ld a, [c]                                     ; $5ec8: $f2
    ld [hl-], a                                   ; $5ec9: $32

jr_027_5eca:
    cpl                                           ; $5eca: $2f
    cp a                                          ; $5ecb: $bf
    ld c, [hl]                                    ; $5ecc: $4e
    ld a, [$da4d]                                 ; $5ecd: $fa $4d $da
    and l                                         ; $5ed0: $a5
    ld b, b                                       ; $5ed1: $40

Jump_027_5ed2:
    sbc [hl]                                      ; $5ed2: $9e
    db $dd                                        ; $5ed3: $dd
    daa                                           ; $5ed4: $27
    add a                                         ; $5ed5: $87
    ld a, c                                       ; $5ed6: $79
    xor [hl]                                      ; $5ed7: $ae
    cp h                                          ; $5ed8: $bc
    add $95                                       ; $5ed9: $c6 $95
    dec de                                        ; $5edb: $1b
    ld [hl], d                                    ; $5edc: $72
    rst $10                                       ; $5edd: $d7
    dec a                                         ; $5ede: $3d
    db $dd                                        ; $5edf: $dd
    ld e, a                                       ; $5ee0: $5f
    db $10                                        ; $5ee1: $10
    ld b, $47                                     ; $5ee2: $06 $47

jr_027_5ee4:
    dec de                                        ; $5ee4: $1b
    ld b, a                                       ; $5ee5: $47
    ld [$bd61], sp                                ; $5ee6: $08 $61 $bd
    jp nc, $fe8c                                  ; $5ee9: $d2 $8c $fe

    reti                                          ; $5eec: $d9


    inc a                                         ; $5eed: $3c
    ld h, a                                       ; $5eee: $67
    ld e, a                                       ; $5eef: $5f
    ld h, d                                       ; $5ef0: $62
    db $eb                                        ; $5ef1: $eb
    ld a, a                                       ; $5ef2: $7f
    sbc l                                         ; $5ef3: $9d
    inc d                                         ; $5ef4: $14
    cp a                                          ; $5ef5: $bf
    ld c, c                                       ; $5ef6: $49
    or b                                          ; $5ef7: $b0
    or h                                          ; $5ef8: $b4
    rst $10                                       ; $5ef9: $d7
    cp $f7                                        ; $5efa: $fe $f7
    ld hl, sp+$50                                 ; $5efc: $f8 $50
    db $db                                        ; $5efe: $db
    scf                                           ; $5eff: $37
    rrca                                          ; $5f00: $0f
    call c, $b7f5                                 ; $5f01: $dc $f5 $b7

Jump_027_5f04:
    ld c, [hl]                                    ; $5f04: $4e
    adc d                                         ; $5f05: $8a
    rst $18                                       ; $5f06: $df
    and h                                         ; $5f07: $a4
    and l                                         ; $5f08: $a5
    dec a                                         ; $5f09: $3d
    jr nz, @-$51                                  ; $5f0a: $20 $ad

    rst $38                                       ; $5f0c: $ff
    ld l, h                                       ; $5f0d: $6c
    and l                                         ; $5f0e: $a5
    nop                                           ; $5f0f: $00
    cp b                                          ; $5f10: $b8
    ld d, e                                       ; $5f11: $53
    ld h, d                                       ; $5f12: $62
    db $eb                                        ; $5f13: $eb
    ld l, a                                       ; $5f14: $6f
    sbc l                                         ; $5f15: $9d

Jump_027_5f16:
    inc d                                         ; $5f16: $14
    cp a                                          ; $5f17: $bf
    ld c, c                                       ; $5f18: $49
    ld c, e                                       ; $5f19: $4b
    ld a, e                                       ; $5f1a: $7b
    db $ed                                        ; $5f1b: $ed
    call z, $a210                                 ; $5f1c: $cc $10 $a2
    ld d, d                                       ; $5f1f: $52
    jr nc, jr_027_5eca                            ; $5f20: $30 $a8

    ld e, a                                       ; $5f22: $5f
    ld b, d                                       ; $5f23: $42
    ld e, e                                       ; $5f24: $5b
    res 5, e                                      ; $5f25: $cb $ab
    ld d, h                                       ; $5f27: $54
    ld h, l                                       ; $5f28: $65
    halt                                          ; $5f29: $76
    jp z, $7cbc                                   ; $5f2a: $ca $bc $7c

    cp b                                          ; $5f2d: $b8
    ld c, e                                       ; $5f2e: $4b
    ld c, e                                       ; $5f2f: $4b

jr_027_5f30:
    sbc c                                         ; $5f30: $99

jr_027_5f31:
    ld c, d                                       ; $5f31: $4a
    ld a, [de]                                    ; $5f32: $1a
    ld h, d                                       ; $5f33: $62
    ld l, e                                       ; $5f34: $6b
    call Call_027_5780                            ; $5f35: $cd $80 $57
    ld [hl], c                                    ; $5f38: $71
    ld b, b                                       ; $5f39: $40
    ld e, e                                       ; $5f3a: $5b
    xor a                                         ; $5f3b: $af
    inc [hl]                                      ; $5f3c: $34
    dec bc                                        ; $5f3d: $0b
    ld l, a                                       ; $5f3e: $6f
    ld d, b                                       ; $5f3f: $50
    ld a, h                                       ; $5f40: $7c
    cp h                                          ; $5f41: $bc
    sub d                                         ; $5f42: $92
    rst $08                                       ; $5f43: $cf
    ld [hl], e                                    ; $5f44: $73
    xor [hl]                                      ; $5f45: $ae
    or c                                          ; $5f46: $b1
    ld a, $cf                                     ; $5f47: $3e $cf
    or l                                          ; $5f49: $b5
    ld l, d                                       ; $5f4a: $6a
    jr nz, jr_027_5ee4                            ; $5f4b: $20 $97

    call $2fcb                                    ; $5f4d: $cd $cb $2f
    ret nc                                        ; $5f50: $d0

    ldh a, [$eb]                                  ; $5f51: $f0 $eb
    rst $38                                       ; $5f53: $ff
    sbc l                                         ; $5f54: $9d
    sub a                                         ; $5f55: $97
    ld l, c                                       ; $5f56: $69
    dec sp                                        ; $5f57: $3b

jr_027_5f58:
    adc l                                         ; $5f58: $8d
    adc a                                         ; $5f59: $8f
    cpl                                           ; $5f5a: $2f
    cpl                                           ; $5f5b: $2f
    ccf                                           ; $5f5c: $3f
    rst $08                                       ; $5f5d: $cf
    push bc                                       ; $5f5e: $c5
    call z, $da3a                                 ; $5f5f: $cc $3a $da
    ld d, c                                       ; $5f62: $51
    call nz, $fed6                                ; $5f63: $c4 $d6 $fe
    sbc l                                         ; $5f66: $9d
    ld l, a                                       ; $5f67: $6f
    ld l, [hl]                                    ; $5f68: $6e
    ld d, l                                       ; $5f69: $55
    ld b, a                                       ; $5f6a: $47
    sbc e                                         ; $5f6b: $9b
    ld h, l                                       ; $5f6c: $65
    db $fc                                        ; $5f6d: $fc
    adc l                                         ; $5f6e: $8d
    ld [hl], c                                    ; $5f6f: $71
    db $ec                                        ; $5f70: $ec
    sbc c                                         ; $5f71: $99
    xor c                                         ; $5f72: $a9
    ld a, h                                       ; $5f73: $7c
    dec h                                         ; $5f74: $25
    dec c                                         ; $5f75: $0d
    db $fc                                        ; $5f76: $fc
    ld a, [hl-]                                   ; $5f77: $3a
    ld a, c                                       ; $5f78: $79
    ret                                           ; $5f79: $c9


    ld h, c                                       ; $5f7a: $61
    halt                                          ; $5f7b: $76
    jp z, Jump_000_2620                           ; $5f7c: $ca $20 $26

    ld c, a                                       ; $5f7f: $4f
    rrca                                          ; $5f80: $0f
    add b                                         ; $5f81: $80
    jr nc, jr_027_5f31                            ; $5f82: $30 $ad

    ld b, [hl]                                    ; $5f84: $46
    and h                                         ; $5f85: $a4
    pop hl                                        ; $5f86: $e1
    xor [hl]                                      ; $5f87: $ae
    ld d, l                                       ; $5f88: $55
    ld b, l                                       ; $5f89: $45
    ld a, [de]                                    ; $5f8a: $1a
    add h                                         ; $5f8b: $84
    db $10                                        ; $5f8c: $10
    ld b, $08                                     ; $5f8d: $06 $08
    and c                                         ; $5f8f: $a1
    db $eb                                        ; $5f90: $eb
    sub e                                         ; $5f91: $93
    rst $10                                       ; $5f92: $d7
    jr jr_027_5f30                                ; $5f93: $18 $9b

    dec d                                         ; $5f95: $15
    inc hl                                        ; $5f96: $23
    ld c, $5d                                     ; $5f97: $0e $5d
    jr nc, jr_027_5f58                            ; $5f99: $30 $bd

    jp nc, Jump_027_4f8c                          ; $5f9b: $d2 $8c $4f

    xor d                                         ; $5f9e: $aa
    ld sp, hl                                     ; $5f9f: $f9
    db $ec                                        ; $5fa0: $ec
    ld c, e                                       ; $5fa1: $4b
    ld l, h                                       ; $5fa2: $6c
    ld a, h                                       ; $5fa3: $7c
    ld d, c                                       ; $5fa4: $51
    ld e, a                                       ; $5fa5: $5f
    sub e                                         ; $5fa6: $93
    ld h, [hl]                                    ; $5fa7: $66
    ld a, [hl+]                                   ; $5fa8: $2a
    cp a                                          ; $5fa9: $bf
    sbc b                                         ; $5faa: $98
    ld e, c                                       ; $5fab: $59
    cp a                                          ; $5fac: $bf
    inc d                                         ; $5fad: $14
    call z, $d94e                                 ; $5fae: $cc $4e $d9
    and l                                         ; $5fb1: $a5
    sub l                                         ; $5fb2: $95
    sub a                                         ; $5fb3: $97
    rst $20                                       ; $5fb4: $e7
    xor $64                                       ; $5fb5: $ee $64
    ld b, c                                       ; $5fb7: $41
    db $eb                                        ; $5fb8: $eb
    sbc [hl]                                      ; $5fb9: $9e
    xor $2f                                       ; $5fba: $ee $2f
    ld [$3d03], sp                                ; $5fbc: $08 $03 $3d
    adc d                                         ; $5fbf: $8a
    ld a, [$3324]                                 ; $5fc0: $fa $24 $33
    call c, $d985                                 ; $5fc3: $dc $85 $d9
    add hl, hl                                    ; $5fc6: $29
    ld d, e                                       ; $5fc7: $53
    ld h, [hl]                                    ; $5fc8: $66
    ld d, l                                       ; $5fc9: $55
    xor d                                         ; $5fca: $aa
    sbc [hl]                                      ; $5fcb: $9e
    dec c                                         ; $5fcc: $0d
    call c, Call_000_27b0                         ; $5fcd: $dc $b0 $27
    add a                                         ; $5fd0: $87
    sbc l                                         ; $5fd1: $9d
    ld a, d                                       ; $5fd2: $7a
    jp z, $bd49                                   ; $5fd3: $ca $49 $bd

    cp b                                          ; $5fd6: $b8
    db $eb                                        ; $5fd7: $eb
    sbc [hl]                                      ; $5fd8: $9e
    xor $2f                                       ; $5fd9: $ee $2f
    ld [$ad03], sp                                ; $5fdb: $08 $03 $ad
    ld a, [hl+]                                   ; $5fde: $2a
    jp nc, $c770                                  ; $5fdf: $d2 $70 $c7

    rla                                           ; $5fe2: $17
    push af                                       ; $5fe3: $f5
    xor c                                         ; $5fe4: $a9
    db $fc                                        ; $5fe5: $fc
    sbc d                                         ; $5fe6: $9a
    inc [hl]                                      ; $5fe7: $34
    ld h, e                                       ; $5fe8: $63
    ld a, c                                       ; $5fe9: $79
    add hl, hl                                    ; $5fea: $29
    ld e, b                                       ; $5feb: $58
    ld a, [de]                                    ; $5fec: $1a
    ld e, a                                       ; $5fed: $5f
    jp c, $a2ab                                   ; $5fee: $da $ab $a2

    ld [bc], a                                    ; $5ff1: $02
    ld [hl], h                                    ; $5ff2: $74
    db $dd                                        ; $5ff3: $dd
    inc l                                         ; $5ff4: $2c
    or l                                          ; $5ff5: $b5
    ld [hl], b                                    ; $5ff6: $70
    cp d                                          ; $5ff7: $ba
    adc [hl]                                      ; $5ff8: $8e
    cp h                                          ; $5ff9: $bc
    db $fd                                        ; $5ffa: $fd
    sub l                                         ; $5ffb: $95
    ld [hl], e                                    ; $5ffc: $73
    rlca                                          ; $5ffd: $07
    add hl, sp                                    ; $5ffe: $39
    res 1, d                                      ; $5fff: $cb $8a
    ld e, d                                       ; $6001: $5a
    ld a, a                                       ; $6002: $7f
    sbc [hl]                                      ; $6003: $9e
    ld d, e                                       ; $6004: $53

jr_027_6005:
    xor b                                         ; $6005: $a8
    inc hl                                        ; $6006: $23
    inc c                                         ; $6007: $0c
    and a                                         ; $6008: $a7
    cp h                                          ; $6009: $bc
    push af                                       ; $600a: $f5
    add $f8                                       ; $600b: $c6 $f8
    dec bc                                        ; $600d: $0b
    jp nc, $8c57                                  ; $600e: $d2 $57 $8c

    ld hl, sp+$2e                                 ; $6011: $f8 $2e
    ld c, l                                       ; $6013: $4d
    ld l, c                                       ; $6014: $69
    ld e, d                                       ; $6015: $5a
    ld d, l                                       ; $6016: $55
    sub a                                         ; $6017: $97
    dec a                                         ; $6018: $3d
    add hl, sp                                    ; $6019: $39
    ld [hl], a                                    ; $601a: $77
    sub b                                         ; $601b: $90
    ld l, e                                       ; $601c: $6b
    ld hl, $fced                                  ; $601d: $21 $ed $fc
    ldh [$c9], a                                  ; $6020: $e0 $c9
    rla                                           ; $6022: $17
    cp $3c                                        ; $6023: $fe $3c
    rla                                           ; $6025: $17
    inc sp                                        ; $6026: $33
    db $eb                                        ; $6027: $eb
    or e                                          ; $6028: $b3
    ld d, e                                       ; $6029: $53
    sub $49                                       ; $602a: $d6 $49
    cp a                                          ; $602c: $bf
    ld c, c                                       ; $602d: $49
    cp e                                          ; $602e: $bb
    inc d                                         ; $602f: $14
    ret z                                         ; $6030: $c8

    or e                                          ; $6031: $b3
    ei                                            ; $6032: $fb
    db $e4                                        ; $6033: $e4
    jr nc, jr_027_6005                            ; $6034: $30 $cf

    cp c                                          ; $6036: $b9
    cp h                                          ; $6037: $bc
    ld a, [$0dca]                                 ; $6038: $fa $ca $0d
    ld de, $3d06                                  ; $603b: $11 $06 $3d
    inc [hl]                                      ; $603e: $34
    sub $e7                                       ; $603f: $d6 $e7
    cp c                                          ; $6041: $b9
    ld d, [hl]                                    ; $6042: $56
    dec c                                         ; $6043: $0d
    db $e4                                        ; $6044: $e4
    ld [hl-], a                                   ; $6045: $32
    or h                                          ; $6046: $b4
    sub $9f                                       ; $6047: $d6 $9f
    ld bc, $31a3                                  ; $6049: $01 $a3 $31
    ld [hl], $ab                                  ; $604c: $36 $ab
    ld d, e                                       ; $604e: $53
    ld a, [c]                                     ; $604f: $f2
    jr nc, @-$40                                  ; $6050: $30 $be

    xor b                                         ; $6052: $a8
    rst $10                                       ; $6053: $d7
    ld h, b                                       ; $6054: $60
    or c                                          ; $6055: $b1
    cp c                                          ; $6056: $b9
    inc d                                         ; $6057: $14
    ld c, h                                       ; $6058: $4c
    db $db                                        ; $6059: $db
    ld l, c                                       ; $605a: $69
    ld a, h                                       ; $605b: $7c
    ld sp, $1e13                                  ; $605c: $31 $13 $1e
    ld h, c                                       ; $605f: $61
    dec a                                         ; $6060: $3d
    adc e                                         ; $6061: $8b
    ld a, [$72da]                                 ; $6062: $fa $da $72
    add hl, hl                                    ; $6065: $29
    add b                                         ; $6066: $80
    dec [hl]                                      ; $6067: $35
    cpl                                           ; $6068: $2f
    ld c, e                                       ; $6069: $4b
    db $e3                                        ; $606a: $e3
    dec hl                                        ; $606b: $2b
    cpl                                           ; $606c: $2f
    ccf                                           ; $606d: $3f
    ld h, [hl]                                    ; $606e: $66
    db $e4                                        ; $606f: $e4
    ld d, d                                       ; $6070: $52
    or b                                          ; $6071: $b0
    ld a, [hl+]                                   ; $6072: $2a
    ld a, [hl+]                                   ; $6073: $2a
    ret nz                                        ; $6074: $c0

    db $fc                                        ; $6075: $fc
    add [hl]                                      ; $6076: $86
    rst $08                                       ; $6077: $cf
    ld e, l                                       ; $6078: $5d
    xor e                                         ; $6079: $ab
    adc d                                         ; $607a: $8a
    inc [hl]                                      ; $607b: $34
    ld e, l                                       ; $607c: $5d
    ld sp, $25dd                                  ; $607d: $31 $dd $25
    db $ed                                        ; $6080: $ed
    rlca                                          ; $6081: $07
    ld c, b                                       ; $6082: $48
    ld e, c                                       ; $6083: $59
    dec bc                                        ; $6084: $0b
    ld l, c                                       ; $6085: $69
    rst $20                                       ; $6086: $e7
    rlca                                          ; $6087: $07
    ld c, a                                       ; $6088: $4f
    cp [hl]                                       ; $6089: $be
    ldh a, [$e7]                                  ; $608a: $f0 $e7
    cp c                                          ; $608c: $b9
    sbc b                                         ; $608d: $98
    ld e, c                                       ; $608e: $59
    sbc a                                         ; $608f: $9f
    sbc l                                         ; $6090: $9d
    or d                                          ; $6091: $b2
    ld c, [hl]                                    ; $6092: $4e
    ld a, [$da4d]                                 ; $6093: $fa $4d $da
    and l                                         ; $6096: $a5
    ld b, b                                       ; $6097: $40
    sbc [hl]                                      ; $6098: $9e
    db $dd                                        ; $6099: $dd
    daa                                           ; $609a: $27
    add a                                         ; $609b: $87
    jp $f477                                      ; $609c: $c3 $77 $f4


    cp a                                          ; $609f: $bf
    rst $00                                       ; $60a0: $c7
    add a                                         ; $60a1: $87
    jp c, Jump_027_79be                           ; $60a2: $da $be $79

Jump_027_60a5:
    ldh [$ae], a                                  ; $60a5: $e0 $ae
    sbc l                                         ; $60a7: $9d
    add hl, de                                    ; $60a8: $19
    ld b, d                                       ; $60a9: $42
    ld d, h                                       ; $60aa: $54
    ld a, [bc]                                    ; $60ab: $0a
    ld b, $f5                                     ; $60ac: $06 $f5
    ld c, e                                       ; $60ae: $4b
    call c, $b129                                 ; $60af: $dc $29 $b1
    ld bc, $fd69                                  ; $60b2: $01 $69 $fd
    ld h, a                                       ; $60b5: $67
    dec hl                                        ; $60b6: $2b
    dec b                                         ; $60b7: $05
    add b                                         ; $60b8: $80
    jr nc, jr_027_60e8                            ; $60b9: $30 $2d

    add hl, de                                    ; $60bb: $19
    cp [hl]                                       ; $60bc: $be
    rst $18                                       ; $60bd: $df
    ldh a, [$61]                                  ; $60be: $f0 $61
    call $2acb                                    ; $60c0: $cd $cb $2a
    and l                                         ; $60c3: $a5
    reti                                          ; $60c4: $d9


    sub a                                         ; $60c5: $97
    ret c                                         ; $60c6: $d8

    ret nz                                        ; $60c7: $c0

    ld d, h                                       ; $60c8: $54
    ld h, l                                       ; $60c9: $65
    pop af                                        ; $60ca: $f1
    sub $7f                                       ; $60cb: $d6 $7f
    ld sp, $7e13                                  ; $60cd: $31 $13 $7e
    ld a, [hl+]                                   ; $60d0: $2a
    ld l, c                                       ; $60d1: $69
    adc b                                         ; $60d2: $88
    call $0fcb                                    ; $60d3: $cd $cb $0f
    xor d                                         ; $60d6: $aa
    sub d                                         ; $60d7: $92
    add hl, de                                    ; $60d8: $19
    rla                                           ; $60d9: $17
    ld c, b                                       ; $60da: $48
    ld a, [de]                                    ; $60db: $1a
    xor d                                         ; $60dc: $aa
    ld bc, $8eda                                  ; $60dd: $01 $da $8e
    add d                                         ; $60e0: $82
    reti                                          ; $60e1: $d9


    cpl                                           ; $60e2: $2f
    ld l, e                                       ; $60e3: $6b
    ld h, a                                       ; $60e4: $67

jr_027_60e5:
    add [hl]                                      ; $60e5: $86
    db $10                                        ; $60e6: $10
    sub l                                         ; $60e7: $95

jr_027_60e8:
    add d                                         ; $60e8: $82
    ld b, c                                       ; $60e9: $41
    db $fd                                        ; $60ea: $fd
    ld [de], a                                    ; $60eb: $12
    ld [hl], a                                    ; $60ec: $77
    dec [hl]                                      ; $60ed: $35
    xor a                                         ; $60ee: $af
    pop af                                        ; $60ef: $f1
    ld l, c                                       ; $60f0: $69
    ld [hl+], a                                   ; $60f1: $22
    and e                                         ; $60f2: $a3
    sbc d                                         ; $60f3: $9a
    rrca                                          ; $60f4: $0f
    adc h                                         ; $60f5: $8c
    ld [hl], h                                    ; $60f6: $74
    db $e4                                        ; $60f7: $e4
    jp nz, $fc2f                                  ; $60f8: $c2 $2f $fc

    jp hl                                         ; $60fb: $e9


    jp c, Jump_027_77d7                           ; $60fc: $da $d7 $77

    db $ed                                        ; $60ff: $ed
    or l                                          ; $6100: $b5
    sub b                                         ; $6101: $90
    halt                                          ; $6102: $76
    ld a, [hl]                                    ; $6103: $7e
    ld b, l                                       ; $6104: $45
    ld h, c                                       ; $6105: $61
    sub b                                         ; $6106: $90
    pop hl                                        ; $6107: $e1
    rst $28                                       ; $6108: $ef
    jp nc, $85ca                                  ; $6109: $d2 $ca $85

    and l                                         ; $610c: $a5
    ld l, l                                       ; $610d: $6d
    rst $18                                       ; $610e: $df
    ld [$2bb9], a                                 ; $610f: $ea $b9 $2b
    ld e, a                                       ; $6112: $5f
    add e                                         ; $6113: $83
    ld b, c                                       ; $6114: $41
    adc $4e                                       ; $6115: $ce $4e
    ld h, d                                       ; $6117: $62
    set 3, d                                      ; $6118: $cb $da
    ldh [$a5], a                                  ; $611a: $e0 $a5
    di                                            ; $611c: $f3
    db $e4                                        ; $611d: $e4
    jr nc, jr_027_6145                            ; $611e: $30 $25

    ld [hl], $2f                                  ; $6120: $36 $2f
    cp a                                          ; $6122: $bf
    ld a, b                                       ; $6123: $78
    db $eb                                        ; $6124: $eb
    adc a                                         ; $6125: $8f
    jr nc, jr_027_60e5                            ; $6126: $30 $bd

    jp nc, $e4d4                                  ; $6128: $d2 $d4 $e4

    ld [hl], a                                    ; $612b: $77
    ret                                           ; $612c: $c9


    ld e, a                                       ; $612d: $5f
    call nz, $fc74                                ; $612e: $c4 $74 $fc
    ld d, d                                       ; $6131: $52
    jr nc, @+$5f                                  ; $6132: $30 $5d

    dec d                                         ; $6134: $15
    dec d                                         ; $6135: $15
    and b                                         ; $6136: $a0
    set 2, [hl]                                   ; $6137: $cb $d6
    and e                                         ; $6139: $a3
    xor b                                         ; $613a: $a8
    rst $10                                       ; $613b: $d7
    ld h, b                                       ; $613c: $60
    cp d                                          ; $613d: $ba
    add e                                         ; $613e: $83
    sub $9a                                       ; $613f: $d6 $9a
    ld b, $7e                                     ; $6141: $06 $7e
    db $dd                                        ; $6143: $dd
    di                                            ; $6144: $f3

jr_027_6145:
    sub d                                         ; $6145: $92
    xor a                                         ; $6146: $af
    di                                            ; $6147: $f3
    and h                                         ; $6148: $a4
    pop de                                        ; $6149: $d1
    sbc e                                         ; $614a: $9b
    dec h                                         ; $614b: $25
    db $ed                                        ; $614c: $ed
    ld a, b                                       ; $614d: $78
    ld l, c                                       ; $614e: $69
    ld l, h                                       ; $614f: $6c
    ei                                            ; $6150: $fb
    ld [de], a                                    ; $6151: $12
    ld c, e                                       ; $6152: $4b
    jp hl                                         ; $6153: $e9


    add d                                         ; $6154: $82
    ld bc, $f53d                                  ; $6155: $01 $3d $f5
    ld a, [$e174]                                 ; $6158: $fa $74 $e1
    dec h                                         ; $615b: $25
    db $e3                                        ; $615c: $e3
    adc a                                         ; $615d: $8f
    db $10                                        ; $615e: $10
    ld l, d                                       ; $615f: $6a
    push de                                       ; $6160: $d5
    ld b, b                                       ; $6161: $40
    ld l, $1b                                     ; $6162: $2e $1b
    add sp, $65                                   ; $6164: $e8 $65
    dec hl                                        ; $6166: $2b
    ccf                                           ; $6167: $3f
    ld e, [hl]                                    ; $6168: $5e
    ld h, c                                       ; $6169: $61
    ret nc                                        ; $616a: $d0

    ld de, $2e6d                                  ; $616b: $11 $6d $2e
    dec b                                         ; $616e: $05
    ld l, e                                       ; $616f: $6b
    rst $38                                       ; $6170: $ff
    ld a, e                                       ; $6171: $7b
    ld a, h                                       ; $6172: $7c
    ld e, b                                       ; $6173: $58
    ld e, e                                       ; $6174: $5b
    xor e                                         ; $6175: $ab
    ld a, [$cbca]                                 ; $6176: $fa $ca $cb
    ld [hl], a                                    ; $6179: $77
    pop bc                                        ; $617a: $c1
    dec a                                         ; $617b: $3d
    jp z, Jump_027_4fc3                           ; $617c: $ca $c3 $4f

    push hl                                       ; $617f: $e5
    rst $10                                       ; $6180: $d7
    cp $f7                                        ; $6181: $fe $f7
    ld hl, sp+$50                                 ; $6183: $f8 $50
    db $db                                        ; $6185: $db
    scf                                           ; $6186: $37
    rrca                                          ; $6187: $0f
    call c, $8c69                                 ; $6188: $dc $69 $8c
    sub e                                         ; $618b: $93
    dec de                                        ; $618c: $1b
    inc d                                         ; $618d: $14
    rst $28                                       ; $618e: $ef
    add d                                         ; $618f: $82
    ld bc, $ca3d                                  ; $6190: $01 $3d $ca
    jp Jump_027_662f                              ; $6193: $c3 $2f $66


    sub $17                                       ; $6196: $d6 $17
    ld l, a                                       ; $6198: $6f

jr_027_6199:
    db $fd                                        ; $6199: $fd
    ld [hl], a                                    ; $619a: $77
    add hl, bc                                    ; $619b: $09
    cp [hl]                                       ; $619c: $be
    ld a, [c]                                     ; $619d: $f2
    ld a, l                                       ; $619e: $7d
    di                                            ; $619f: $f3
    add b                                         ; $61a0: $80
    db $10                                        ; $61a1: $10
    adc d                                         ; $61a2: $8a
    or a                                          ; $61a3: $b7
    cp $b3                                        ; $61a4: $fe $b3
    dec h                                         ; $61a6: $25
    jp $dae9                                      ; $61a7: $c3 $e9 $da


    rst $38                                       ; $61aa: $ff
    ld e, $bf                                     ; $61ab: $1e $bf
    dec bc                                        ; $61ad: $0b
    ld b, $dd                                     ; $61ae: $06 $dd
    ld d, l                                       ; $61b0: $55
    ld a, h                                       ; $61b1: $7c
    ld l, c                                       ; $61b2: $69
    rst $08                                       ; $61b3: $cf
    res 0, l                                      ; $61b4: $cb $85
    ld bc, $fd69                                  ; $61b6: $01 $69 $fd
    rla                                           ; $61b9: $17
    inc sp                                        ; $61ba: $33
    db $eb                                        ; $61bb: $eb
    jr nc, jr_027_6199                            ; $61bc: $30 $db

    db $10                                        ; $61be: $10
    dec [hl]                                      ; $61bf: $35
    ld [$0c21], sp                                ; $61c0: $08 $21 $0c
    dec a                                         ; $61c3: $3d
    jp z, Jump_027_5d85                           ; $61c4: $ca $85 $5d

    sbc b                                         ; $61c7: $98
    ld c, [hl]                                    ; $61c8: $4e
    ld e, [hl]                                    ; $61c9: $5e
    db $e3                                        ; $61ca: $e3
    add b                                         ; $61cb: $80
    or h                                          ; $61cc: $b4
    cp $83                                        ; $61cd: $fe $83
    ld a, [$b425]                                 ; $61cf: $fa $25 $b4
    push af                                       ; $61d2: $f5
    call nc, $d3eb                                ; $61d3: $d4 $eb $d3
    add l                                         ; $61d6: $85
    sub a                                         ; $61d7: $97
    adc h                                         ; $61d8: $8c
    ccf                                           ; $61d9: $3f
    ld b, d                                       ; $61da: $42
    ld c, b                                       ; $61db: $48
    rst $10                                       ; $61dc: $d7

jr_027_61dd:
    adc $0c                                       ; $61dd: $ce $0c
    ld hl, $052a                                  ; $61df: $21 $2a $05
    cp e                                          ; $61e2: $bb
    jr nc, @+$1f                                  ; $61e3: $30 $1d

    sub b                                         ; $61e5: $90
    sub $bf                                       ; $61e6: $d6 $bf
    dec bc                                        ; $61e8: $0b
    ld b, $3d                                     ; $61e9: $06 $3d
    adc e                                         ; $61eb: $8b
    ld a, [$7e54]                                 ; $61ec: $fa $54 $7e
    db $ed                                        ; $61ef: $ed
    ld [hl], a                                    ; $61f0: $77
    cp $9f                                        ; $61f1: $fe $9f
    and $e5                                       ; $61f3: $e6 $e5
    rla                                           ; $61f5: $17
    ret z                                         ; $61f6: $c8

    or l                                          ; $61f7: $b5
    db $ed                                        ; $61f8: $ed
    ld c, e                                       ; $61f9: $4b
    dec [hl]                                      ; $61fa: $35
    ld e, b                                       ; $61fb: $58
    ld b, a                                       ; $61fc: $47
    ld a, c                                       ; $61fd: $79
    add sp, -$76                                  ; $61fe: $e8 $8a
    ld bc, $ca3d                                  ; $6200: $01 $3d $ca
    jp $342f                                      ; $6203: $c3 $2f $34


    ldh [rOCPD], a                                ; $6206: $e0 $6b
    rst $38                                       ; $6208: $ff
    add b                                         ; $6209: $80
    or h                                          ; $620a: $b4
    cp $b3                                        ; $620b: $fe $b3
    sub l                                         ; $620d: $95
    ld [bc], a                                    ; $620e: $02
    ld b, b                                       ; $620f: $40
    sbc e                                         ; $6210: $9b
    ld h, l                                       ; $6211: $65
    dec h                                         ; $6212: $25
    dec sp                                        ; $6213: $3b
    ccf                                           ; $6214: $3f
    cpl                                           ; $6215: $2f
    rst $18                                       ; $6216: $df
    call nc, $e7e4                                ; $6217: $d4 $e4 $e7
    push hl                                       ; $621a: $e5
    daa                                           ; $621b: $27
    scf                                           ; $621c: $37
    jr z, jr_027_61dd                             ; $621d: $28 $be

    ld a, [$8625]                                 ; $621f: $fa $25 $86
    jr nc, jr_027_623a                            ; $6222: $30 $16

    ld d, d                                       ; $6224: $52
    or $e7                                        ; $6225: $f6 $e7
    dec de                                        ; $6227: $1b
    push af                                       ; $6228: $f5
    ld b, a                                       ; $6229: $47
    db $db                                        ; $622a: $db
    xor c                                         ; $622b: $a9
    db $f4                                        ; $622c: $f4
    db $eb                                        ; $622d: $eb
    db $e4                                        ; $622e: $e4
    dec h                                         ; $622f: $25
    rra                                           ; $6230: $1f
    ld a, e                                       ; $6231: $7b
    ld h, [hl]                                    ; $6232: $66
    ld a, [hl+]                                   ; $6233: $2a
    cp a                                          ; $6234: $bf
    ld c, c                                       ; $6235: $49
    ld l, b                                       ; $6236: $68
    or e                                          ; $6237: $b3
    ld hl, sp-$20                                 ; $6238: $f8 $e0

jr_027_623a:
    ccf                                           ; $623a: $3f
    add h                                         ; $623b: $84
    ld d, l                                       ; $623c: $55
    rra                                           ; $623d: $1f
    cp a                                          ; $623e: $bf
    dec l                                         ; $623f: $2d
    rst $10                                       ; $6240: $d7
    sbc e                                         ; $6241: $9b
    ld e, l                                       ; $6242: $5d
    and b                                         ; $6243: $a0
    sbc d                                         ; $6244: $9a
    rst $28                                       ; $6245: $ef
    xor l                                         ; $6246: $ad
    cpl                                           ; $6247: $2f
    adc l                                         ; $6248: $8d
    sub a                                         ; $6249: $97
    ld c, e                                       ; $624a: $4b
    ld bc, $4eda                                  ; $624b: $01 $da $4e
    db $fc                                        ; $624e: $fc
    rst $28                                       ; $624f: $ef
    inc l                                         ; $6250: $2c
    ld h, [hl]                                    ; $6251: $66
    sub $2f                                       ; $6252: $d6 $2f
    dec b                                         ; $6254: $05
    ld [$1603], sp                                ; $6255: $08 $03 $16
    xor d                                         ; $6258: $aa
    ld [hl-], a                                   ; $6259: $32

Jump_027_625a:
    db $ec                                        ; $625a: $ec
    call nz, Call_027_47f7                        ; $625b: $c4 $f7 $47
    db $db                                        ; $625e: $db
    xor c                                         ; $625f: $a9
    db $f4                                        ; $6260: $f4
    db $eb                                        ; $6261: $eb
    db $e4                                        ; $6262: $e4
    dec h                                         ; $6263: $25
    rra                                           ; $6264: $1f

jr_027_6265:
    ld a, e                                       ; $6265: $7b
    ld h, [hl]                                    ; $6266: $66
    ld a, [hl+]                                   ; $6267: $2a
    cp a                                          ; $6268: $bf
    ld c, c                                       ; $6269: $49
    ld l, b                                       ; $626a: $68
    db $eb                                        ; $626b: $eb
    sub l                                         ; $626c: $95
    and [hl]                                      ; $626d: $a6
    ld h, $bf                                     ; $626e: $26 $bf
    ld hl, sp-$12                                 ; $6270: $f8 $ee
    sub a                                         ; $6272: $97
    add d                                         ; $6273: $82
    or c                                          ; $6274: $b1
    db $e4                                        ; $6275: $e4
    ld l, c                                       ; $6276: $69
    ld c, l                                       ; $6277: $4d
    ld a, [de]                                    ; $6278: $1a
    sbc c                                         ; $6279: $99
    dec l                                         ; $627a: $2d
    rst $30                                       ; $627b: $f7
    adc c                                         ; $627c: $89
    db $ed                                        ; $627d: $ed
    ld h, h                                       ; $627e: $64
    ld b, c                                       ; $627f: $41
    dec sp                                        ; $6280: $3b
    add hl, hl                                    ; $6281: $29
    add hl, hl                                    ; $6282: $29
    ld l, b                                       ; $6283: $68
    and a                                         ; $6284: $a7
    ld a, e                                       ; $6285: $7b
    add [hl]                                      ; $6286: $86
    ld [$3d03], sp                                ; $6287: $08 $03 $3d
    ld [hl-], a                                   ; $628a: $32
    ld h, a                                       ; $628b: $67
    ccf                                           ; $628c: $3f
    cp a                                          ; $628d: $bf
    ld c, e                                       ; $628e: $4b
    add c                                         ; $628f: $81
    inc a                                         ; $6290: $3c
    cp e                                          ; $6291: $bb
    ld c, a                                       ; $6292: $4f
    ld c, $dc                                     ; $6293: $0e $dc
    ld [hl], l                                    ; $6295: $75
    ld c, a                                       ; $6296: $4f
    rst $30                                       ; $6297: $f7
    rla                                           ; $6298: $17
    or h                                          ; $6299: $b4
    dec e                                         ; $629a: $1d
    xor l                                         ; $629b: $ad
    ld d, l                                       ; $629c: $55
    ld a, l                                       ; $629d: $7d
    sbc [hl]                                      ; $629e: $9e
    ld l, e                                       ; $629f: $6b
    jp nc, $e0c8                                  ; $62a0: $d2 $c8 $e0

    ld d, l                                       ; $62a3: $55
    xor d                                         ; $62a4: $aa
    add d                                         ; $62a5: $82
    jr nc, jr_027_6265                            ; $62a6: $30 $bd

    jp nc, Jump_027_6cc8                          ; $62a8: $d2 $c8 $6c

    cp c                                          ; $62ab: $b9
    ld c, a                                       ; $62ac: $4f
    ld l, h                                       ; $62ad: $6c
    ld d, l                                       ; $62ae: $55
    sbc d                                         ; $62af: $9a
    ret z                                         ; $62b0: $c8

    xor b                                         ; $62b1: $a8
    and $e3                                       ; $62b2: $e6 $e3
    push af                                       ; $62b4: $f5
    ld a, [$d894]                                 ; $62b5: $fa $94 $d8
    adc d                                         ; $62b8: $8a
    or d                                          ; $62b9: $b2

Jump_027_62ba:
    ld a, c                                       ; $62ba: $79

Call_027_62bb:
    ld l, $c8                                     ; $62bb: $2e $c8
    ld a, c                                       ; $62bd: $79
    adc $cb                                       ; $62be: $ce $cb
    rst $08                                       ; $62c0: $cf
    ld b, d                                       ; $62c1: $42
    or $95                                        ; $62c2: $f6 $95
    ld d, b                                       ; $62c4: $50
    and l                                         ; $62c5: $a5
    ld b, c                                       ; $62c6: $41
    ld e, e                                       ; $62c7: $5b
    rst $30                                       ; $62c8: $f7
    ld c, h                                       ; $62c9: $4c
    add hl, de                                    ; $62ca: $19
    sbc a                                         ; $62cb: $9f

jr_027_62cc:
    ld d, d                                       ; $62cc: $52

Jump_027_62cd:
    rst $20                                       ; $62cd: $e7
    xor $64                                       ; $62ce: $ee $64
    ld b, c                                       ; $62d0: $41
    db $eb                                        ; $62d1: $eb
    sbc [hl]                                      ; $62d2: $9e
    xor $2f                                       ; $62d3: $ee $2f
    ld l, b                                       ; $62d5: $68
    dec sp                                        ; $62d6: $3b
    ld l, b                                       ; $62d7: $68
    sbc l                                         ; $62d8: $9d
    cp h                                          ; $62d9: $bc
    db $e4                                        ; $62da: $e4
    jr nc, jr_027_6338                            ; $62db: $30 $5b

    ld [hl-], a                                   ; $62dd: $32
    call c, $d2f1                                 ; $62de: $dc $f1 $d2
    ret c                                         ; $62e1: $d8

    or $25                                        ; $62e2: $f6 $25
    sub [hl]                                      ; $62e4: $96
    add d                                         ; $62e5: $82
    or [hl]                                       ; $62e6: $b6
    ld l, [hl]                                    ; $62e7: $6e
    ld d, c                                       ; $62e8: $51
    ld bc, $2ec6                                  ; $62e9: $01 $c6 $2e
    add h                                         ; $62ec: $84
    rla                                           ; $62ed: $17
    ldh [rNR24], a                                ; $62ee: $e0 $19
    jp nz, $ca3d                                  ; $62f0: $c2 $3d $ca

    bit 6, e                                      ; $62f3: $cb $73
    ld h, a                                       ; $62f5: $67
    xor c                                         ; $62f6: $a9
    add l                                         ; $62f7: $85
    or e                                          ; $62f8: $b3
    cpl                                           ; $62f9: $2f
    ld e, l                                       ; $62fa: $5d
    jr z, jr_027_62cc                             ; $62fb: $28 $cf

    ret nc                                        ; $62fd: $d0

    halt                                          ; $62fe: $76
    jp nc, $0d7b                                  ; $62ff: $d2 $7b $0d

    ld b, $ff                                     ; $6302: $06 $ff
    ld l, e                                       ; $6304: $6b
    ld hl, $fced                                  ; $6305: $21 $ed $fc
    ld e, h                                       ; $6308: $5c
    db $eb                                        ; $6309: $eb
    cp a                                          ; $630a: $bf
    ld c, [hl]                                    ; $630b: $4e
    ld e, [hl]                                    ; $630c: $5e
    ld [hl], d                                    ; $630d: $72
    sbc b                                         ; $630e: $98
    ld a, [c]                                     ; $630f: $f2
    jp c, $96cc                                   ; $6310: $da $cc $96

    inc c                                         ; $6313: $0c
    rla                                           ; $6314: $17
    cp $28                                        ; $6315: $fe $28
    ld sp, hl                                     ; $6317: $f9
    ld l, $18                                     ; $6318: $2e $18
    dec l                                         ; $631a: $2d
    sub a                                         ; $631b: $97
    jp Jump_000_1a4a                              ; $631c: $c3 $4a $1a


    ld hl, sp+$75                                 ; $631f: $f8 $75
    ld a, [c]                                     ; $6321: $f2
    sub d                                         ; $6322: $92
    jp $94ec                                      ; $6323: $c3 $ec $94


    reti                                          ; $6326: $d9


    sub a                                         ; $6327: $97
    ret c                                         ; $6328: $d8

    and l                                         ; $6329: $a5
    ld h, b                                       ; $632a: $60
    ld e, [hl]                                    ; $632b: $5e
    ld a, [hl]                                    ; $632c: $7e
    sub a                                         ; $632d: $97
    ld [bc], a                                    ; $632e: $02
    ld a, c                                       ; $632f: $79
    halt                                          ; $6330: $76
    sbc a                                         ; $6331: $9f
    inc e                                         ; $6332: $1c
    cp b                                          ; $6333: $b8
    ld l, e                                       ; $6334: $6b
    dec de                                        ; $6335: $1b
    sbc a                                         ; $6336: $9f
    and l                                         ; $6337: $a5

jr_027_6338:
    ld d, $e3                                     ; $6338: $16 $e3
    ret c                                         ; $633a: $d8

    inc sp                                        ; $633b: $33
    ld d, e                                       ; $633c: $53
    ld sp, hl                                     ; $633d: $f9
    sub d                                         ; $633e: $92
    ld a, [hl]                                    ; $633f: $7e

Jump_027_6340:
    ld [hl], b                                    ; $6340: $70
    xor c                                         ; $6341: $a9
    ld a, [$6935]                                 ; $6342: $fa $35 $69
    and $99                                       ; $6345: $e6 $99
    push af                                       ; $6347: $f5
    ld b, c                                       ; $6348: $41
    ld l, $26                                     ; $6349: $2e $26
    dec b                                         ; $634b: $05
    ld l, b                                       ; $634c: $68
    dec sp                                        ; $634d: $3b
    dec h                                         ; $634e: $25
    ld sp, hl                                     ; $634f: $f9

jr_027_6350:
    dec d                                         ; $6350: $15
    inc hl                                        ; $6351: $23
    jp nc, Jump_027_73cc                          ; $6352: $d2 $cc $73

    ld c, l                                       ; $6355: $4d
    ld a, [de]                                    ; $6356: $1a
    add hl, de                                    ; $6357: $19
    dec a                                         ; $6358: $3d
    rlca                                          ; $6359: $07
    ld e, a                                       ; $635a: $5f
    dec d                                         ; $635b: $15
    dec d                                         ; $635c: $15
    nop                                           ; $635d: $00
    ld hl, $2864                                  ; $635e: $21 $64 $28
    ld a, $c0                                     ; $6361: $3e $c0
    sbc d                                         ; $6363: $9a
    inc [hl]                                      ; $6364: $34
    db $e3                                        ; $6365: $e3
    sub l                                         ; $6366: $95
    ld a, h                                       ; $6367: $7c
    sbc [hl]                                      ; $6368: $9e
    adc e                                         ; $6369: $8b
    add hl, bc                                    ; $636a: $09
    cp a                                          ; $636b: $bf
    jr nc, @-$19                                  ; $636c: $30 $e5

    ld d, a                                       ; $636e: $57
    jp nc, $afc0                                  ; $636f: $d2 $c0 $af

    sub e                                         ; $6372: $93
    sub a                                         ; $6373: $97
    inc e                                         ; $6374: $1c
    db $10                                        ; $6375: $10
    ld b, $27                                     ; $6376: $06 $27
    cp $77                                        ; $6378: $fe $77
    and [hl]                                      ; $637a: $a6
    or h                                          ; $637b: $b4
    ld l, a                                       ; $637c: $6f
    ld a, [hl]                                    ; $637d: $7e
    ld c, c                                       ; $637e: $49
    di                                            ; $637f: $f3
    ld a, [c]                                     ; $6380: $f2
    dec sp                                        ; $6381: $3b
    ld e, [hl]                                    ; $6382: $5e
    dec h                                         ; $6383: $25
    ret z                                         ; $6384: $c8

    ld h, $3e                                     ; $6385: $26 $3e
    db $ec                                        ; $6387: $ec
    jp nc, $fcbc                                  ; $6388: $d2 $bc $fc

    adc [hl]                                      ; $638b: $8e
    dec h                                         ; $638c: $25
    sub a                                         ; $638d: $97
    ld h, [hl]                                    ; $638e: $66

jr_027_638f:
    xor l                                         ; $638f: $ad
    ld a, [de]                                    ; $6390: $1a
    inc hl                                        ; $6391: $23
    ld e, d                                       ; $6392: $5a
    ld c, e                                       ; $6393: $4b
    add [hl]                                      ; $6394: $86
    rst $18                                       ; $6395: $df
    ld c, [hl]                                    ; $6396: $4e
    sub $ec                                       ; $6397: $d6 $ec
    inc hl                                        ; $6399: $23
    db $fc                                        ; $639a: $fc
    ld [$1dff], a                                 ; $639b: $ea $ff $1d

jr_027_639e:
    ret c                                         ; $639e: $d8

    scf                                           ; $639f: $37
    rrca                                          ; $63a0: $0f
    ld c, e                                       ; $63a1: $4b
    sbc d                                         ; $63a2: $9a
    sub a                                         ; $63a3: $97
    rrca                                          ; $63a4: $0f
    ld de, $2706                                  ; $63a5: $11 $06 $27
    ld h, l                                       ; $63a8: $65
    sub $47                                       ; $63a9: $d6 $47
    xor a                                         ; $63ab: $af
    or d                                          ; $63ac: $b2
    ld d, [hl]                                    ; $63ad: $56
    dec c                                         ; $63ae: $0d

Jump_027_63af:
    db $e4                                        ; $63af: $e4
    or d                                          ; $63b0: $b2
    ld a, [de]                                    ; $63b1: $1a
    xor h                                         ; $63b2: $ac
    push de                                       ; $63b3: $d5
    jr c, jr_027_6350                             ; $63b4: $38 $9a

    and l                                         ; $63b6: $a5
    ld h, [hl]                                    ; $63b7: $66
    db $fd                                        ; $63b8: $fd
    reti                                          ; $63b9: $d9


    ld l, c                                       ; $63ba: $69
    adc b                                         ; $63bb: $88
    db $ed                                        ; $63bc: $ed
    ld d, d                                       ; $63bd: $52
    jr nz, jr_027_638f                            ; $63be: $20 $cf

    xor $93                                       ; $63c0: $ee $93
    jp $ad2e                                      ; $63c2: $c3 $2e $ad


    ld e, h                                       ; $63c5: $5c
    ld e, b                                       ; $63c6: $58
    and b                                         ; $63c7: $a0
    jp nz, $d69e                                  ; $63c8: $c2 $9e $d6

    ld a, [hl]                                    ; $63cb: $7e
    dec sp                                        ; $63cc: $3b
    push hl                                       ; $63cd: $e5
    ld de, $9606                                  ; $63ce: $11 $06 $96
    ld a, c                                       ; $63d1: $79
    ld c, c                                       ; $63d2: $49
    inc de                                        ; $63d3: $13
    inc d                                         ; $63d4: $14
    sbc a                                         ; $63d5: $9f
    ld h, l                                       ; $63d6: $65
    and b                                         ; $63d7: $a0
    db $fc                                        ; $63d8: $fc
    jr nz, jr_027_639e                            ; $63d9: $20 $c3

    ld e, a                                       ; $63db: $5f
    jp nc, $fcbc                                  ; $63dc: $d2 $bc $fc

    ld e, [hl]                                    ; $63df: $5e
    add e                                         ; $63e0: $83
    ld hl, sp+$7d                                 ; $63e1: $f8 $7d
    sub a                                         ; $63e3: $97
    ld d, a                                       ; $63e4: $57
    or $6c                                        ; $63e5: $f6 $6c
    pop af                                        ; $63e7: $f1
    ld h, $cd                                     ; $63e8: $26 $cd
    res 4, l                                      ; $63ea: $cb $a5
    nop                                           ; $63ec: $00
    sub [hl]                                      ; $63ed: $96
    inc [hl]                                      ; $63ee: $34
    cpl                                           ; $63ef: $2f
    ccf                                           ; $63f0: $3f
    ld hl, sp+$2a                                 ; $63f1: $f8 $2a
    adc c                                         ; $63f3: $89
    call $998e                                    ; $63f4: $cd $8e $99
    add d                                         ; $63f7: $82
    jr nc, jr_027_6437                            ; $63f8: $30 $3d

    jp z, Jump_027_4fcb                           ; $63fa: $ca $cb $4f

    push hl                                       ; $63fd: $e5
    ld h, a                                       ; $63fe: $67
    ret nz                                        ; $63ff: $c0

    ld l, b                                       ; $6400: $68
    adc h                                         ; $6401: $8c
    call Call_000_052e                            ; $6402: $cd $2e $05
    ld a, [c]                                     ; $6405: $f2
    db $ec                                        ; $6406: $ec
    ld a, $39                                     ; $6407: $3e $39
    db $ec                                        ; $6409: $ec
    jp nc, $485a                                  ; $640a: $d2 $5a $48

    dec sp                                        ; $640d: $3b
    ld e, a                                       ; $640e: $5f
    add e                                         ; $640f: $83
    and l                                         ; $6410: $a5
    ld l, l                                       ; $6411: $6d
    rst $18                                       ; $6412: $df
    ld [$7ad1], a                                 ; $6413: $ea $d1 $7a
    sub h                                         ; $6416: $94
    ld l, a                                       ; $6417: $6f
    ld d, [hl]                                    ; $6418: $56
    and l                                         ; $6419: $a5
    adc c                                         ; $641a: $89
    ld l, h                                       ; $641b: $6c
    db $ed                                        ; $641c: $ed
    sbc a                                         ; $641d: $9f
    ld d, d                                       ; $641e: $52
    jp $9797                                      ; $641f: $c3 $97 $97


    rst $20                                       ; $6422: $e7
    xor $ad                                       ; $6423: $ee $ad
    ld c, a                                       ; $6425: $4f
    ld c, e                                       ; $6426: $4b
    sbc d                                         ; $6427: $9a
    sub a                                         ; $6428: $97
    rra                                           ; $6429: $1f
    xor a                                         ; $642a: $af
    ld sp, $c202                                  ; $642b: $31 $02 $c2
    xor l                                         ; $642e: $ad
    ld l, d                                       ; $642f: $6a
    db $fd                                        ; $6430: $fd
    dec [hl]                                      ; $6431: $35
    ld l, c                                       ; $6432: $69
    ld b, $ff                                     ; $6433: $06 $ff
    inc [hl]                                      ; $6435: $34
    and l                                         ; $6436: $a5

jr_027_6437:
    ld h, [hl]                                    ; $6437: $66
    sbc l                                         ; $6438: $9d
    db $f4                                        ; $6439: $f4
    sbc e                                         ; $643a: $9b
    or h                                          ; $643b: $b4
    ld c, e                                       ; $643c: $4b
    add c                                         ; $643d: $81
    inc a                                         ; $643e: $3c
    cp e                                          ; $643f: $bb
    ld c, a                                       ; $6440: $4f
    ld c, $53                                     ; $6441: $0e $53
    ld c, c                                       ; $6443: $49
    ld b, e                                       ; $6444: $43
    xor h                                         ; $6445: $ac
    dec hl                                        ; $6446: $2b
    ld b, $a7                                     ; $6447: $06 $a7
    db $e4                                        ; $6449: $e4
    ld a, [hl-]                                   ; $644a: $3a
    jp hl                                         ; $644b: $e9


    scf                                           ; $644c: $37
    ld l, c                                       ; $644d: $69
    sub l                                         ; $644e: $95
    jp nc, $232a                                  ; $644f: $d2 $2a $23

    ccf                                           ; $6452: $3f
    cp [hl]                                       ; $6453: $be
    xor b                                         ; $6454: $a8
    xor a                                         ; $6455: $af
    ld c, c                                       ; $6456: $49
    inc sp                                        ; $6457: $33
    sub l                                         ; $6458: $95
    rst $20                                       ; $6459: $e7
    xor [hl]                                      ; $645a: $ae
    ld a, e                                       ; $645b: $7b
    cp d                                          ; $645c: $ba
    cp a                                          ; $645d: $bf
    jr nz, jr_027_646c                            ; $645e: $20 $0c

    db $dd                                        ; $6460: $dd
    ld d, h                                       ; $6461: $54
    sbc $36                                       ; $6462: $de $36
    ld [hl], c                                    ; $6464: $71
    ld c, l                                       ; $6465: $4d
    sbc d                                         ; $6466: $9a
    or c                                          ; $6467: $b1
    and h                                         ; $6468: $a4
    sbc d                                         ; $6469: $9a
    xor a                                         ; $646a: $af
    ld h, [hl]                                    ; $646b: $66

jr_027_646c:
    ld l, e                                       ; $646c: $6b
    adc h                                         ; $646d: $8c
    or l                                          ; $646e: $b5
    ld e, l                                       ; $646f: $5d
    ld a, [c]                                     ; $6470: $f2
    sbc h                                         ; $6471: $9c
    xor [hl]                                      ; $6472: $ae
    ld d, d                                       ; $6473: $52
    inc de                                        ; $6474: $13
    sbc c                                         ; $6475: $99
    inc h                                         ; $6476: $24
    ld [hl], c                                    ; $6477: $71
    rst $10                                       ; $6478: $d7
    dec a                                         ; $6479: $3d

Jump_027_647a:
    db $dd                                        ; $647a: $dd
    ld e, a                                       ; $647b: $5f
    db $10                                        ; $647c: $10
    ld b, $3d                                     ; $647d: $06 $3d
    jp z, $0337                                   ; $647f: $ca $37 $03

    ld l, l                                       ; $6482: $6d
    sub $42                                       ; $6483: $d6 $42
    jp c, $b1f9                                   ; $6485: $da $f9 $b1

    ld a, h                                       ; $6488: $7c
    and b                                         ; $6489: $a0
    sbc d                                         ; $648a: $9a
    cpl                                           ; $648b: $2f
    sbc $fa                                       ; $648c: $de $fa
    ld c, a                                       ; $648e: $4f
    xor c                                         ; $648f: $a9
    ld c, c                                       ; $6490: $49
    ld a, [$8db5]                                 ; $6491: $fa $b5 $8d
    xor a                                         ; $6494: $af
    dec h                                         ; $6495: $25
    ld [hl], $5e                                  ; $6496: $36 $5e
    ld e, [hl]                                    ; $6498: $5e
    ld l, $01                                     ; $6499: $2e $01
    ld [hl], a                                    ; $649b: $77
    ld [hl], b                                    ; $649c: $70
    xor c                                         ; $649d: $a9
    ld a, [$af95]                                 ; $649e: $fa $95 $af
    pop bc                                        ; $64a1: $c1
    cp h                                          ; $64a2: $bc
    db $fc                                        ; $64a3: $fc
    sub l                                         ; $64a4: $95
    sub l                                         ; $64a5: $95
    inc [hl]                                      ; $64a6: $34
    ldh a, [$0b]                                  ; $64a7: $f0 $0b
    dec d                                         ; $64a9: $15
    db $fc                                        ; $64aa: $fc
    dec b                                         ; $64ab: $05
    ld h, c                                       ; $64ac: $61
    dec l                                         ; $64ad: $2d
    and h                                         ; $64ae: $a4
    sbc l                                         ; $64af: $9d
    ld e, a                                       ; $64b0: $5f

jr_027_64b1:
    ld [hl], b                                    ; $64b1: $70
    xor l                                         ; $64b2: $ad
    rrca                                          ; $64b3: $0f
    dec bc                                        ; $64b4: $0b
    ld a, a                                       ; $64b5: $7f
    ld e, [hl]                                    ; $64b6: $5e
    ld a, [hl]                                    ; $64b7: $7e
    sub l                                         ; $64b8: $95
    db $fc                                        ; $64b9: $fc
    ld [hl], a                                    ; $64ba: $77
    nop                                           ; $64bb: $00
    ld h, c                                       ; $64bc: $61
    sub [hl]                                      ; $64bd: $96
    ld a, [de]                                    ; $64be: $1a
    ld e, e                                       ; $64bf: $5b
    cp h                                          ; $64c0: $bc
    push af                                       ; $64c1: $f5
    sbc a                                         ; $64c2: $9f
    rst $20                                       ; $64c3: $e7
    ld [c], a                                     ; $64c4: $e2
    xor e                                         ; $64c5: $ab
    ret nc                                        ; $64c6: $d0

    inc a                                         ; $64c7: $3c
    rla                                           ; $64c8: $17
    ld l, d                                       ; $64c9: $6a
    db $fd                                        ; $64ca: $fd
    ld h, a                                       ; $64cb: $67
    ld e, a                                       ; $64cc: $5f
    adc [hl]                                      ; $64cd: $8e
    inc e                                         ; $64ce: $1c
    sbc e                                         ; $64cf: $9b
    ld sp, $54b9                                  ; $64d0: $31 $b9 $54
    rlca                                          ; $64d3: $07
    add h                                         ; $64d4: $84
    ld bc, $1f16                                  ; $64d5: $01 $16 $1f
    add h                                         ; $64d8: $84
    rra                                           ; $64d9: $1f
    inc hl                                        ; $64da: $23
    inc l                                         ; $64db: $2c
    sbc $fa                                       ; $64dc: $de $fa
    ld c, a                                       ; $64de: $4f
    jp nc, $69fd                                  ; $64df: $d2 $fd $69

    rra                                           ; $64e2: $1f
    inc b                                         ; $64e3: $04
    or b                                          ; $64e4: $b0
    ld c, e                                       ; $64e5: $4b
    dec hl                                        ; $64e6: $2b
    cpl                                           ; $64e7: $2f
    adc a                                         ; $64e8: $8f
    jr nc, jr_027_6512                            ; $64e9: $30 $27

    scf                                           ; $64eb: $37
    ld l, e                                       ; $64ec: $6b
    ld c, e                                       ; $64ed: $4b
    ld a, d                                       ; $64ee: $7a
    ld a, c                                       ; $64ef: $79
    sbc c                                         ; $64f0: $99
    ld h, a                                       ; $64f1: $67
    ld h, h                                       ; $64f2: $64
    dec bc                                        ; $64f3: $0b
    ld a, a                                       ; $64f4: $7f
    rst $10                                       ; $64f5: $d7
    sbc [hl]                                      ; $64f6: $9e
    ld h, l                                       ; $64f7: $65
    ld d, b                                       ; $64f8: $50
    or h                                          ; $64f9: $b4
    cp $33                                        ; $64fa: $fe $33
    sbc l                                         ; $64fc: $9d
    jp hl                                         ; $64fd: $e9


    ld l, h                                       ; $64fe: $6c
    inc de                                        ; $64ff: $13
    db $e3                                        ; $6500: $e3
    ld a, [hl-]                                   ; $6501: $3a
    jp hl                                         ; $6502: $e9


    scf                                           ; $6503: $37
    ld l, c                                       ; $6504: $69
    db $ed                                        ; $6505: $ed
    ld [hl], h                                    ; $6506: $74
    adc a                                         ; $6507: $8f
    rst $08                                       ; $6508: $cf
    dec e                                         ; $6509: $1d
    ld h, h                                       ; $650a: $64
    ld hl, sp+$5e                                 ; $650b: $f8 $5e
    ld l, $05                                     ; $650d: $2e $05
    or e                                          ; $650f: $b3
    dec c                                         ; $6510: $0d
    adc l                                         ; $6511: $8d

jr_027_6512:
    cp a                                          ; $6512: $bf
    ld sp, $68ae                                  ; $6513: $31 $ae $68
    and a                                         ; $6516: $a7
    di                                            ; $6517: $f3
    add h                                         ; $6518: $84
    jr nc, jr_027_64b1                            ; $6519: $30 $96

    pop af                                        ; $651b: $f1
    ld c, d                                       ; $651c: $4a
    ld a, $cf                                     ; $651d: $3e $cf
    push bc                                       ; $651f: $c5
    ld d, a                                       ; $6520: $57
    and c                                         ; $6521: $a1
    ld a, c                                       ; $6522: $79
    ld l, $d4                                     ; $6523: $2e $d4
    ld a, [$574f]                                 ; $6525: $fa $4f $57
    ld e, [hl]                                    ; $6528: $5e
    db $e3                                        ; $6529: $e3
    and l                                         ; $652a: $a5
    ld h, b                                       ; $652b: $60
    sbc l                                         ; $652c: $9d
    db $f4                                        ; $652d: $f4
    sbc e                                         ; $652e: $9b
    or h                                          ; $652f: $b4
    or $57                                        ; $6530: $f6 $57
    ld l, d                                       ; $6532: $6a
    ldh [$e7], a                                  ; $6533: $e0 $e7
    push hl                                       ; $6535: $e5
    rst $10                                       ; $6536: $d7
    ld [de], a                                    ; $6537: $12
    dec de                                        ; $6538: $1b
    cpl                                           ; $6539: $2f
    cpl                                           ; $653a: $2f
    sub a                                         ; $653b: $97
    ld h, b                                       ; $653c: $60
    push af                                       ; $653d: $f5
    rst $38                                       ; $653e: $ff
    adc $5c                                       ; $653f: $ce $5c
    ld l, [hl]                                    ; $6541: $6e
    and a                                         ; $6542: $a7
    ld [hl], e                                    ; $6543: $73
    add hl, hl                                    ; $6544: $29
    ld e, b                                       ; $6545: $58
    ld hl, sp-$45                                 ; $6546: $f8 $bb
    inc [hl]                                      ; $6548: $34
    cpl                                           ; $6549: $2f
    cp a                                          ; $654a: $bf
    and d                                         ; $654b: $a2
    ld sp, $0c22                                  ; $654c: $31 $22 $0c
    dec a                                         ; $654f: $3d
    and h                                         ; $6550: $a4
    add hl, de                                    ; $6551: $19
    and l                                         ; $6552: $a5
    rst $08                                       ; $6553: $cf
    ld [hl], e                                    ; $6554: $73
    and c                                         ; $6555: $a1
    sub $7f                                       ; $6556: $d6 $7f
    sbc [hl]                                      ; $6558: $9e
    cp c                                          ; $6559: $b9
    or $0d                                        ; $655a: $f6 $0d
    sub [hl]                                      ; $655c: $96
    or $74                                        ; $655d: $f6 $74
    pop hl                                        ; $655f: $e1
    inc bc                                        ; $6560: $03
    ld [hl], b                                    ; $6561: $70
    rst $10                                       ; $6562: $d7
    dec a                                         ; $6563: $3d
    db $dd                                        ; $6564: $dd
    ld e, a                                       ; $6565: $5f
    db $10                                        ; $6566: $10
    ld b, $96                                     ; $6567: $06 $96
    sub l                                         ; $6569: $95
    db $ec                                        ; $656a: $ec
    db $fc                                        ; $656b: $fc
    inc l                                         ; $656c: $2c
    ld h, e                                       ; $656d: $63
    ld c, c                                       ; $656e: $49
    dec [hl]                                      ; $656f: $35
    rra                                           ; $6570: $1f
    ld [hl], h                                    ; $6571: $74
    ld l, [hl]                                    ; $6572: $6e
    adc h                                         ; $6573: $8c
    ld d, e                                       ; $6574: $53
    ld l, d                                       ; $6575: $6a
    cp h                                          ; $6576: $bc
    ld e, h                                       ; $6577: $5c
    ld a, [bc]                                    ; $6578: $0a
    ld d, $6f                                     ; $6579: $16 $6f
    db $fd                                        ; $657b: $fd
    ld h, a                                       ; $657c: $67
    sbc c                                         ; $657d: $99
    ld bc, $31a3                                  ; $657e: $01 $a3 $31
    ld [hl], $63                                  ; $6581: $36 $63
    adc c                                         ; $6583: $89
    jr nc, @+$29                                  ; $6584: $30 $27

    scf                                           ; $6586: $37
    xor e                                         ; $6587: $ab
    call nc, Call_000_2644                        ; $6588: $d4 $44 $26
    ld c, c                                       ; $658b: $49
    cp e                                          ; $658c: $bb
    jr nc, jr_027_65b7                            ; $658d: $30 $28

Jump_027_658f:
    sub a                                         ; $658f: $97
    xor $cb                                       ; $6590: $ee $cb

jr_027_6592:
    cp h                                          ; $6592: $bc
    jr z, @+$4f                                   ; $6593: $28 $4d

    xor c                                         ; $6595: $a9
    ld e, c                                       ; $6596: $59
    jp c, $f2f3                                   ; $6597: $da $f3 $f2

    ld c, e                                       ; $659a: $4b
    cpl                                           ; $659b: $2f
    cpl                                           ; $659c: $2f
    add b                                         ; $659d: $80
    sub $2b                                       ; $659e: $d6 $2b
    call $a4a0                                    ; $65a0: $cd $a0 $a4
    adc c                                         ; $65a3: $89
    ld l, h                                       ; $65a4: $6c
    sbc l                                         ; $65a5: $9d
    adc h                                         ; $65a6: $8c
    rla                                           ; $65a7: $17
    jp z, $349a                                   ; $65a8: $ca $9a $34

    ld [bc], a                                    ; $65ab: $02
    call c, $2679                                 ; $65ac: $dc $79 $26
    jp nz, $3727                                  ; $65af: $c2 $27 $37

    ld l, e                                       ; $65b2: $6b
    ld c, e                                       ; $65b3: $4b
    ld a, d                                       ; $65b4: $7a
    ld a, c                                       ; $65b5: $79
    add c                                         ; $65b6: $81

jr_027_65b7:
    add c                                         ; $65b7: $81
    ld [hl], $6b                                  ; $65b8: $36 $6b
    ld hl, $fced                                  ; $65ba: $21 $ed $fc
    ld l, $4c                                     ; $65bd: $2e $4c
    ld h, c                                       ; $65bf: $61
    pop hl                                        ; $65c0: $e1
    dec hl                                        ; $65c1: $2b
    ld c, l                                       ; $65c2: $4d
    ld h, c                                       ; $65c3: $61
    push hl                                       ; $65c4: $e5
    rla                                           ; $65c5: $17
    inc sp                                        ; $65c6: $33
    db $eb                                        ; $65c7: $eb
    add b                                         ; $65c8: $80
    jr nc, jr_027_6592                            ; $65c9: $30 $c7

    ld e, l                                       ; $65cb: $5d
    ld bc, $af5f                                  ; $65cc: $01 $5f $af
    ld d, a                                       ; $65cf: $57
    ld e, c                                       ; $65d0: $59
    or a                                          ; $65d1: $b7
    xor b                                         ; $65d2: $a8
    nop                                           ; $65d3: $00
    rrca                                          ; $65d4: $0f
    add a                                         ; $65d5: $87
    ld l, a                                       ; $65d6: $6f
    dec a                                         ; $65d7: $3d
    ld b, h                                       ; $65d8: $44
    add hl, bc                                    ; $65d9: $09
    db $ec                                        ; $65da: $ec
    dec de                                        ; $65db: $1b
    jr jr_027_662f                                ; $65dc: $18 $51

    cp a                                          ; $65de: $bf
    ld c, c                                       ; $65df: $49
    call c, Call_027_4f75                         ; $65e0: $dc $75 $4f
    cp a                                          ; $65e3: $bf
    ld c, c                                       ; $65e4: $49
    ret nz                                        ; $65e5: $c0

    ld e, l                                       ; $65e6: $5d
    or a                                          ; $65e7: $b7
    and d                                         ; $65e8: $a2
    ld [de], a                                    ; $65e9: $12
    ld [bc], a                                    ; $65ea: $02
    ld [hl], a                                    ; $65eb: $77
    xor l                                         ; $65ec: $ad
    rla                                           ; $65ed: $17
    inc a                                         ; $65ee: $3c
    and l                                         ; $65ef: $a5
    ld e, c                                       ; $65f0: $59
    jp c, Jump_027_593b                           ; $65f1: $da $3b $59

    add e                                         ; $65f4: $83
    ld e, e                                       ; $65f5: $5b
    ld [hl], c                                    ; $65f6: $71
    rst $10                                       ; $65f7: $d7
    ld a, [$ced2]                                 ; $65f8: $fa $d2 $ce
    sbc b                                         ; $65fb: $98
    ld b, c                                       ; $65fc: $41
    jp Jump_000_31dd                              ; $65fd: $c3 $dd $31


    ld l, a                                       ; $6600: $6f
    ccf                                           ; $6601: $3f
    ld d, l                                       ; $6602: $55
    cp a                                          ; $6603: $bf
    and e                                         ; $6604: $a3
    ld [bc], a                                    ; $6605: $02
    cp l                                          ; $6606: $bd
    inc b                                         ; $6607: $04
    cp [hl]                                       ; $6608: $be
    ld h, e                                       ; $6609: $63
    ld d, h                                       ; $660a: $54
    ld [$4a3b], a                                 ; $660b: $ea $3b $4a
    inc e                                         ; $660e: $1c
    cp b                                          ; $660f: $b8
    ld d, e                                       ; $6610: $53
    ld h, d                                       ; $6611: $62
    dec sp                                        ; $6612: $3b
    ld l, $36                                     ; $6613: $2e $36
    sub a                                         ; $6615: $97
    ld [bc], a                                    ; $6616: $02
    add h                                         ; $6617: $84
    ld bc, $d2bd                                  ; $6618: $01 $bd $d2
    inc c                                         ; $661b: $0c
    ld c, d                                       ; $661c: $4a
    sbc d                                         ; $661d: $9a
    ret z                                         ; $661e: $c8

    ld d, [hl]                                    ; $661f: $56
    adc h                                         ; $6620: $8c
    ld c, b                                       ; $6621: $48
    inc sp                                        ; $6622: $33
    dec h                                         ; $6623: $25
    ld [hl], $fb                                  ; $6624: $36 $fb
    ld [de], a                                    ; $6626: $12
    ld e, e                                       ; $6627: $5b
    sub e                                         ; $6628: $93
    ld b, [hl]                                    ; $6629: $46
    ld b, [hl]                                    ; $662a: $46
    rst $08                                       ; $662b: $cf

Jump_027_662c:
    pop bc                                        ; $662c: $c1
    ld d, a                                       ; $662d: $57
    ld b, l                                       ; $662e: $45

Jump_027_662f:
jr_027_662f:
    dec b                                         ; $662f: $05
    ld b, b                                       ; $6630: $40
    jr jr_027_6649                                ; $6631: $18 $16

    ld a, e                                       ; $6633: $7b
    ld c, l                                       ; $6634: $4d
    sbc d                                         ; $6635: $9a
    or c                                          ; $6636: $b1
    and h                                         ; $6637: $a4
    sbc d                                         ; $6638: $9a
    xor a                                         ; $6639: $af
    ld c, [hl]                                    ; $663a: $4e
    ret                                           ; $663b: $c9


    adc a                                         ; $663c: $8f
    cpl                                           ; $663d: $2f
    ld [$a2ab], a                                 ; $663e: $ea $ab $a2
    ld [bc], a                                    ; $6641: $02
    inc a                                         ; $6642: $3c
    xor h                                         ; $6643: $ac
    ld c, c                                       ; $6644: $49
    or e                                          ; $6645: $b3
    and d                                         ; $6646: $a2
    sub $e7                                       ; $6647: $d6 $e7

jr_027_6649:
    xor [hl]                                      ; $6649: $ae
    ld a, [hl+]                                   ; $664a: $2a
    ld e, a                                       ; $664b: $5f
    push de                                       ; $664c: $d5
    rst $20                                       ; $664d: $e7
    push hl                                       ; $664e: $e5
    ld [hl], a                                    ; $664f: $77
    inc d                                         ; $6650: $14
    ld d, c                                       ; $6651: $51

Call_027_6652:
    ld a, [de]                                    ; $6652: $1a
    xor d                                         ; $6653: $aa
    ld a, $7c                                     ; $6654: $3e $7c
    ld a, [c]                                     ; $6656: $f2
    dec e                                         ; $6657: $1d
    sbc l                                         ; $6658: $9d
    ld a, [hl+]                                   ; $6659: $2a
    ld l, h                                       ; $665a: $6c
    sub a                                         ; $665b: $97
    sub $a4                                       ; $665c: $d6 $a4
    sub c                                         ; $665e: $91
    sub l                                         ; $665f: $95
    inc [hl]                                      ; $6660: $34
    ldh a, [$ab]                                  ; $6661: $f0 $ab
    ld [hl-], a                                   ; $6663: $32
    inc c                                         ; $6664: $0c
    sub e                                         ; $6665: $93
    ld h, $99                                     ; $6666: $26 $99
    ld hl, $96c2                                  ; $6668: $21 $c2 $96
    ld e, d                                       ; $666b: $5a
    cp b                                          ; $666c: $b8
    and h                                         ; $666d: $a4
    add l                                         ; $666e: $85
    call Call_027_6d78                            ; $666f: $cd $78 $6d
    and $b9                                       ; $6672: $e6 $b9
    sub $97                                       ; $6674: $d6 $97
    halt                                          ; $6676: $76
    add $0c                                       ; $6677: $c6 $0c
    sbc d                                         ; $6679: $9a
    ld d, l                                       ; $667a: $55
    ld d, c                                       ; $667b: $51
    ld bc, $2cd0                                  ; $667c: $01 $d0 $2c
    ld e, [hl]                                    ; $667f: $5e
    add e                                         ; $6680: $83
    cp c                                          ; $6681: $b9
    sbc d                                         ; $6682: $9a
    and b                                         ; $6683: $a0
    ld hl, sp-$2e                                 ; $6684: $f8 $d2
    jr c, @+$5e                                   ; $6686: $38 $5c

    or $bb                                        ; $6688: $f6 $bb
    inc [hl]                                      ; $668a: $34
    cpl                                           ; $668b: $2f
    cp a                                          ; $668c: $bf
    ld b, b                                       ; $668d: $40
    cp $a9                                        ; $668e: $fe $a9
    and h                                         ; $6690: $a4
    add c                                         ; $6691: $81
    rlca                                          ; $6692: $07
    add h                                         ; $6693: $84
    ld bc, $5a96                                  ; $6694: $01 $96 $5a
    cp b                                          ; $6697: $b8
    sbc b                                         ; $6698: $98
    ld e, c                                       ; $6699: $59
    cp a                                          ; $669a: $bf
    inc d                                         ; $669b: $14
    call z, Call_027_594e                         ; $669c: $cc $4e $59
    or a                                          ; $669f: $b7
    and d                                         ; $66a0: $a2
    ld [de], a                                    ; $66a1: $12
    jp nz, $a8aa                                  ; $66a2: $c2 $aa $a8

    nop                                           ; $66a5: $00
    ld l, b                                       ; $66a6: $68

Jump_027_66a7:
    sub [hl]                                      ; $66a7: $96
    ld a, c                                       ; $66a8: $79
    cp c                                          ; $66a9: $b9
    ld d, h                                       ; $66aa: $54
    rst $18                                       ; $66ab: $df
    push af                                       ; $66ac: $f5
    ld a, [de]                                    ; $66ad: $1a
    inc l                                         ; $66ae: $2c
    ld l, c                                       ; $66af: $69
    ld e, [hl]                                    ; $66b0: $5e
    ld a, [hl]                                    ; $66b1: $7e
    ldh a, [rHDMA5]                               ; $66b2: $f0 $55
    ld [de], a                                    ; $66b4: $12
    sbc e                                         ; $66b5: $9b
    dec e                                         ; $66b6: $1d
    inc sp                                        ; $66b7: $33
    dec b                                         ; $66b8: $05
    ld h, c                                       ; $66b9: $61
    rst $00                                       ; $66ba: $c7

jr_027_66bb:
    cp h                                          ; $66bb: $bc
    db $fd                                        ; $66bc: $fd
    ld d, h                                       ; $66bd: $54
    db $fd                                        ; $66be: $fd
    adc [hl]                                      ; $66bf: $8e
    ld a, [bc]                                    ; $66c0: $0a
    db $f4                                        ; $66c1: $f4
    ld [de], a                                    ; $66c2: $12
    ld hl, sp-$72                                 ; $66c3: $f8 $8e
    ld d, c                                       ; $66c5: $51
    xor c                                         ; $66c6: $a9
    rst $28                                       ; $66c7: $ef
    jr z, @+$73                                   ; $66c8: $28 $71

    ld e, b                                       ; $66ca: $58

jr_027_66cb:
    dec d                                         ; $66cb: $15
    dec d                                         ; $66cc: $15
    ld h, b                                       ; $66cd: $60
    sub b                                         ; $66ce: $90
    add [hl]                                      ; $66cf: $86
    jr jr_027_66de                                ; $66d0: $18 $0c

    ld a, [hl-]                                   ; $66d2: $3a
    sbc c                                         ; $66d3: $99
    push af                                       ; $66d4: $f5
    ld b, $cd                                     ; $66d5: $06 $cd
    ld [c], a                                     ; $66d7: $e2
    dec [hl]                                      ; $66d8: $35
    ld e, b                                       ; $66d9: $58
    jp nc, $fcbc                                  ; $66da: $d2 $bc $fc

    cp h                                          ; $66dd: $bc

jr_027_66de:
    ld e, h                                       ; $66de: $5c
    ld h, c                                       ; $66df: $61
    or e                                          ; $66e0: $b3
    ld h, e                                       ; $66e1: $63
    and [hl]                                      ; $66e2: $a6
    jr nz, jr_027_66f1                            ; $66e3: $20 $0c

    dec a                                         ; $66e5: $3d
    jp z, Jump_027_4fcb                           ; $66e6: $ca $cb $4f

    push hl                                       ; $66e9: $e5
    xor c                                         ; $66ea: $a9
    and $53                                       ; $66eb: $e6 $53
    ld l, d                                       ; $66ed: $6a
    ld d, [hl]                                    ; $66ee: $56
    ld b, l                                       ; $66ef: $45
    dec b                                         ; $66f0: $05

jr_027_66f1:
    ld a, b                                       ; $66f1: $78
    sbc b                                         ; $66f2: $98
    ld a, [$c634]                                 ; $66f3: $fa $34 $c6
    dec h                                         ; $66f6: $25
    call $efcb                                    ; $66f7: $cd $cb $ef
    ld a, b                                       ; $66fa: $78
    ld c, c                                       ; $66fb: $49
    ld b, e                                       ; $66fc: $43
    ld l, h                                       ; $66fd: $6c
    rst $00                                       ; $66fe: $c7
    push bc                                       ; $66ff: $c5
    ld c, h                                       ; $6700: $4c
    ld b, c                                       ; $6701: $41
    jr jr_027_66cb                                ; $6702: $18 $c7

    ld e, l                                       ; $6704: $5d
    ld bc, $f35f                                  ; $6705: $01 $5f $f3
    ld a, [hl+]                                   ; $6708: $2a
    xor e                                         ; $6709: $ab
    and d                                         ; $670a: $a2
    ld [bc], a                                    ; $670b: $02
    inc a                                         ; $670c: $3c
    ld c, h                                       ; $670d: $4c
    push hl                                       ; $670e: $e5
    rla                                           ; $670f: $17
    cpl                                           ; $6710: $2f
    ld hl, sp-$4d                                 ; $6711: $f8 $b3
    dec h                                         ; $6713: $25
    call $efcb                                    ; $6714: $cd $cb $ef
    jr z, jr_027_66bb                             ; $6717: $28 $a2

    inc [hl]                                      ; $6719: $34
    ld d, h                                       ; $671a: $54
    ld a, l                                       ; $671b: $7d
    ld hl, sp-$1c                                 ; $671c: $f8 $e4
    dec sp                                        ; $671e: $3b
    ld a, [hl-]                                   ; $671f: $3a
    ld d, l                                       ; $6720: $55
    ret c                                         ; $6721: $d8

    ld l, $cd                                     ; $6722: $2e $cd
    set 5, a                                      ; $6724: $cb $ef
    ld a, b                                       ; $6726: $78
    ld l, c                                       ; $6727: $69
    ld l, h                                       ; $6728: $6c
    ei                                            ; $6729: $fb
    ld [de], a                                    ; $672a: $12
    ld c, e                                       ; $672b: $4b
    ld e, c                                       ; $672c: $59
    sub l                                         ; $672d: $95
    ld h, c                                       ; $672e: $61
    sbc b                                         ; $672f: $98
    inc [hl]                                      ; $6730: $34
    ret                                           ; $6731: $c9


    inc c                                         ; $6732: $0c
    ld de, $dd06                                  ; $6733: $11 $06 $dd
    db $d3                                        ; $6736: $d3
    ld l, a                                       ; $6737: $6f
    ld [de], a                                    ; $6738: $12
    db $ec                                        ; $6739: $ec
    jp nz, $fcbc                                  ; $673a: $c2 $bc $fc

    sub d                                         ; $673d: $92
    ld h, d                                       ; $673e: $62
    or e                                          ; $673f: $b3
    ld a, [hl+]                                   ; $6740: $2a
    ld a, [hl+]                                   ; $6741: $2a
    ret nz                                        ; $6742: $c0

    jp z, Jump_000_3647                           ; $6743: $ca $47 $36

    sub [hl]                                      ; $6746: $96
    inc a                                         ; $6747: $3c
    xor l                                         ; $6748: $ad
    cp h                                          ; $6749: $bc
    inc a                                         ; $674a: $3c
    jp nz, $f196                                  ; $674b: $c2 $96 $f1

    rla                                           ; $674e: $17
    jp z, Jump_000_2b2c                           ; $674f: $ca $2c $2b

    jp z, $a616                                   ; $6752: $ca $16 $a6

    db $fc                                        ; $6755: $fc
    cp h                                          ; $6756: $bc
    jr z, jr_027_6786                             ; $6757: $28 $2d

    jp hl                                         ; $6759: $e9


    ld d, a                                       ; $675a: $57
    ld b, l                                       ; $675b: $45
    dec b                                         ; $675c: $05
    ret c                                         ; $675d: $d8

    and l                                         ; $675e: $a5
    ld a, c                                       ; $675f: $79
    ld sp, hl                                     ; $6760: $f9
    ld sp, $c143                                  ; $6761: $31 $43 $c1
    daa                                           ; $6764: $27
    ld bc, $c59a                                  ; $6765: $01 $9a $c5
    ld l, e                                       ; $6768: $6b
    or b                                          ; $6769: $b0
    ld a, [hl+]                                   ; $676a: $2a
    ld h, $fc                                     ; $676b: $26 $fc
    inc a                                         ; $676d: $3c
    rla                                           ; $676e: $17
    ld [hl], $2b                                  ; $676f: $36 $2b
    ld l, c                                       ; $6771: $69
    ldh [rNR11], a                                ; $6772: $e0 $11
    ld b, $3d                                     ; $6774: $06 $3d
    jp z, Jump_027_4fcb                           ; $6776: $ca $cb $4f

    push hl                                       ; $6779: $e5
    ld b, a                                       ; $677a: $47
    cp c                                          ; $677b: $b9
    ld a, [hl+]                                   ; $677c: $2a
    ld a, [hl+]                                   ; $677d: $2a
    ret nz                                        ; $677e: $c0

    jp $e692                                      ; $677f: $c3 $92 $e6


    push hl                                       ; $6782: $e5
    jp nz, $98ec                                  ; $6783: $c2 $ec $98

jr_027_6786:
    add hl, hl                                    ; $6786: $29
    ld [$2703], sp                                ; $6787: $08 $03 $27
    daa                                           ; $678a: $27
    ld hl, sp-$14                                 ; $678b: $f8 $ec
    dec hl                                        ; $678d: $2b
    ldh [rOCPD], a                                ; $678e: $e0 $6b
    ld e, [hl]                                    ; $6790: $5e
    ld h, l                                       ; $6791: $65
    ld d, l                                       ; $6792: $55
    ld d, h                                       ; $6793: $54
    add b                                         ; $6794: $80
    add a                                         ; $6795: $87
    xor c                                         ; $6796: $a9
    db $fc                                        ; $6797: $fc
    ld c, h                                       ; $6798: $4c
    rlca                                          ; $6799: $07
    ld e, h                                       ; $679a: $5c
    xor a                                         ; $679b: $af
    nop                                           ; $679c: $00
    ld [hl], a                                    ; $679d: $77
    rst $08                                       ; $679e: $cf
    and c                                         ; $679f: $a1
    ld a, [$cf8e]                                 ; $67a0: $fa $8e $cf
    ld c, [hl]                                    ; $67a3: $4e
    ld e, c                                       ; $67a4: $59
    rst $30                                       ; $67a5: $f7
    db $f4                                        ; $67a6: $f4
    sbc e                                         ; $67a7: $9b
    inc b                                         ; $67a8: $04
    ld d, e                                       ; $67a9: $53
    ld h, d                                       ; $67aa: $62
    ld l, e                                       ; $67ab: $6b
    ld a, l                                       ; $67ac: $7d
    ld l, c                                       ; $67ad: $69
    ld h, a                                       ; $67ae: $67
    call z, Call_027_41a0                         ; $67af: $cc $a0 $41
    jr jr_027_67f1                                ; $67b2: $18 $3d

    jp z, $5fcf                                   ; $67b4: $ca $cf $5f

    xor e                                         ; $67b7: $ab
    ld a, [c]                                     ; $67b8: $f2
    ld [bc], a                                    ; $67b9: $02
    or l                                          ; $67ba: $b5
    ld [hl], l                                    ; $67bb: $75
    swap b                                        ; $67bc: $cb $30
    ld c, h                                       ; $67be: $4c
    jp c, $99e9                                   ; $67bf: $da $e9 $99

    pop hl                                        ; $67c2: $e1
    ld l, $2c                                     ; $67c3: $2e $2c
    ld l, c                                       ; $67c5: $69
    ld e, [hl]                                    ; $67c6: $5e
    ld a, [hl]                                    ; $67c7: $7e
    halt                                          ; $67c8: $76
    call z, $ee14                                 ; $67c9: $cc $14 $ee
    jp c, $e7c6                                   ; $67cc: $da $c6 $e7

    push hl                                       ; $67cf: $e5
    push hl                                       ; $67d0: $e5
    and a                                         ; $67d1: $a7
    ld a, [c]                                     ; $67d2: $f2
    and e                                         ; $67d3: $a3
    ld e, h                                       ; $67d4: $5c
    dec d                                         ; $67d5: $15
    dec d                                         ; $67d6: $15
    ld b, b                                       ; $67d7: $40
    ld [hl-], a                                   ; $67d8: $32
    ld b, e                                       ; $67d9: $43
    ld e, b                                       ; $67da: $58
    ld a, c                                       ; $67db: $79
    ld a, c                                       ; $67dc: $79
    add h                                         ; $67dd: $84
    ld bc, $b196                                  ; $67de: $01 $96 $b1
    and h                                         ; $67e1: $a4
    sbc d                                         ; $67e2: $9a

jr_027_67e3:
    xor a                                         ; $67e3: $af
    ld c, [hl]                                    ; $67e4: $4e
    ret                                           ; $67e5: $c9


    adc a                                         ; $67e6: $8f
    cpl                                           ; $67e7: $2f
    cpl                                           ; $67e8: $2f
    ccf                                           ; $67e9: $3f
    ld c, e                                       ; $67ea: $4b
    dec l                                         ; $67eb: $2d
    inc e                                         ; $67ec: $1c
    sbc b                                         ; $67ed: $98
    ld c, [hl]                                    ; $67ee: $4e
    daa                                           ; $67ef: $27
    pop hl                                        ; $67f0: $e1

jr_027_67f1:
    reti                                          ; $67f1: $d9


    inc a                                         ; $67f2: $3c
    rla                                           ; $67f3: $17
    inc h                                         ; $67f4: $24
    jp nz, Jump_027_5816                          ; $67f5: $c2 $16 $58

    rrca                                          ; $67f8: $0f
    ld d, c                                       ; $67f9: $51
    ld [bc], a                                    ; $67fa: $02
    ei                                            ; $67fb: $fb
    ld b, $46                                     ; $67fc: $06 $46
    call nc, $d26f                                ; $67fe: $d4 $6f $d2
    xor d                                         ; $6801: $aa
    xor b                                         ; $6802: $a8
    nop                                           ; $6803: $00
    ld c, e                                       ; $6804: $4b
    sbc d                                         ; $6805: $9a
    sub a                                         ; $6806: $97
    dec bc                                        ; $6807: $0b
    or e                                          ; $6808: $b3
    ld h, e                                       ; $6809: $63
    and [hl]                                      ; $680a: $a6
    ld [hl], h                                    ; $680b: $74
    ld e, l                                       ; $680c: $5d
    ld c, e                                       ; $680d: $4b
    add [hl]                                      ; $680e: $86
    sbc a                                         ; $680f: $9f
    db $f4                                        ; $6810: $f4
    di                                            ; $6811: $f3
    adc h                                         ; $6812: $8c
    ld l, h                                       ; $6813: $6c
    pop hl                                        ; $6814: $e1
    rst $28                                       ; $6815: $ef
    ld a, [$202e]                                 ; $6816: $fa $2e $20
    inc c                                         ; $6819: $0c
    db $dd                                        ; $681a: $dd
    dec h                                         ; $681b: $25
    db $ed                                        ; $681c: $ed
    rlca                                          ; $681d: $07
    ld c, b                                       ; $681e: $48
    reti                                          ; $681f: $d9


    ret                                           ; $6820: $c9


    push de                                       ; $6821: $d5
    pop af                                        ; $6822: $f1
    ld c, c                                       ; $6823: $49
    ld a, [de]                                    ; $6824: $1a
    ld l, b                                       ; $6825: $68
    adc h                                         ; $6826: $8c
    dec [hl]                                      ; $6827: $35
    ld e, b                                       ; $6828: $58
    rrca                                          ; $6829: $0f
    ld d, c                                       ; $682a: $51
    ld [bc], a                                    ; $682b: $02
    ei                                            ; $682c: $fb
    ld b, $46                                     ; $682d: $06 $46
    call nc, $d26f                                ; $682f: $d4 $6f $d2
    xor d                                         ; $6832: $aa
    xor b                                         ; $6833: $a8
    nop                                           ; $6834: $00
    cp e                                          ; $6835: $bb
    jr nc, @-$69                                  ; $6836: $30 $95

    inc [hl]                                      ; $6838: $34
    call nz, Call_027_5e56                        ; $6839: $c4 $56 $5e
    ld a, [hl]                                    ; $683c: $7e
    sub b                                         ; $683d: $90
    pop hl                                        ; $683e: $e1
    di                                            ; $683f: $f3
    push hl                                       ; $6840: $e5
    push hl                                       ; $6841: $e5
    ld de, $9606                                  ; $6842: $11 $06 $96
    pop af                                        ; $6845: $f1
    ld c, c                                       ; $6846: $49
    db $ec                                        ; $6847: $ec
    ld h, l                                       ; $6848: $65
    dec h                                         ; $6849: $25
    ld sp, hl                                     ; $684a: $f9
    add l                                         ; $684b: $85
    ld c, d                                       ; $684c: $4a
    call Call_000_0dc0                            ; $684d: $cd $c0 $0d
    ld a, e                                       ; $6850: $7b
    ld [hl], d                                    ; $6851: $72
    sbc b                                         ; $6852: $98
    jp z, $96cf                                   ; $6853: $ca $cf $96

    inc c                                         ; $6856: $0c
    rla                                           ; $6857: $17
    sbc d                                         ; $6858: $9a
    jr nz, jr_027_67e3                            ; $6859: $20 $88

    ccf                                           ; $685b: $3f
    ld e, e                                       ; $685c: $5b
    jp $ef1b                                      ; $685d: $c3 $1b $ef


    ld b, e                                       ; $6860: $43
    ld d, a                                       ; $6861: $57
    inc c                                         ; $6862: $0c
    ld d, $7b                                     ; $6863: $16 $7b
    ld c, l                                       ; $6865: $4d
    sbc d                                         ; $6866: $9a
    sbc d                                         ; $6867: $9a
    db $fc                                        ; $6868: $fc
    ld h, d                                       ; $6869: $62
    ld h, [hl]                                    ; $686a: $66
    db $fd                                        ; $686b: $fd
    ld d, d                                       ; $686c: $52
    jr nc, jr_027_68aa                            ; $686d: $30 $3b

    ld h, l                                       ; $686f: $65
    db $dd                                        ; $6870: $dd
    adc d                                         ; $6871: $8a
    ld c, d                                       ; $6872: $4a
    ld [$a2ab], sp                                ; $6873: $08 $ab $a2
    ld [bc], a                                    ; $6876: $02
    ld [hl], b                                    ; $6877: $70
    ld [hl], a                                    ; $6878: $77
    cp l                                          ; $6879: $bd
    ld b, $53                                     ; $687a: $06 $53
    sbc a                                         ; $687c: $9f
    sub a                                         ; $687d: $97
    rra                                           ; $687e: $1f
    and l                                         ; $687f: $a5
    ld a, b                                       ; $6880: $78
    reti                                          ; $6881: $d9


    inc de                                        ; $6882: $13
    ld e, e                                       ; $6883: $5b
    jp c, Jump_027_72f3                           ; $6884: $da $f3 $72

    ld h, c                                       ; $6887: $61
    ld b, l                                       ; $6888: $45
    ld h, e                                       ; $6889: $63
    db $e4                                        ; $688a: $e4
    or l                                          ; $688b: $b5
    ld b, c                                       ; $688c: $41
    jr jr_027_68cc                                ; $688d: $18 $3d

    jp z, $d7cb                                   ; $688f: $ca $cb $d7

    ld h, b                                       ; $6892: $60
    cp d                                          ; $6893: $ba
    or $0d                                        ; $6894: $f6 $0d
    ld h, $99                                     ; $6896: $26 $99
    pop hl                                        ; $6898: $e1
    ld l, h                                       ; $6899: $6c
    inc de                                        ; $689a: $13
    db $e3                                        ; $689b: $e3
    jp nc, Jump_000_3b5e                          ; $689c: $d2 $5e $3b

    or e                                          ; $689f: $b3
    ld c, $4b                                     ; $68a0: $0e $4b
    sbc d                                         ; $68a2: $9a
    sub a                                         ; $68a3: $97
    dec bc                                        ; $68a4: $0b
    or e                                          ; $68a5: $b3
    ld h, e                                       ; $68a6: $63
    and [hl]                                      ; $68a7: $a6
    and b                                         ; $68a8: $a0
    ld e, c                                       ; $68a9: $59

jr_027_68aa:
    sub $7e                                       ; $68aa: $d6 $7e
    rst $18                                       ; $68ac: $df
    push af                                       ; $68ad: $f5
    ld a, [de]                                    ; $68ae: $1a
    call z, $2fcb                                 ; $68af: $cc $cb $2f
    sbc $b6                                       ; $68b2: $de $b6
    xor b                                         ; $68b4: $a8
    inc [hl]                                      ; $68b5: $34
    ld [$3d03], sp                                ; $68b6: $08 $03 $3d
    jp z, Jump_027_5baf                           ; $68b9: $ca $af $5b

    ld d, c                                       ; $68bc: $51
    add hl, bc                                    ; $68bd: $09
    ld h, c                                       ; $68be: $61
    ld d, l                                       ; $68bf: $55
    ld d, h                                       ; $68c0: $54
    nop                                           ; $68c1: $00
    ret                                           ; $68c2: $c9


    inc c                                         ; $68c3: $0c
    ld [hl], a                                    ; $68c4: $77
    ld h, c                                       ; $68c5: $61
    db $ed                                        ; $68c6: $ed
    ld [hl], a                                    ; $68c7: $77
    cp $9f                                        ; $68c8: $fe $9f
    and $e5                                       ; $68ca: $e6 $e5

jr_027_68cc:
    rst $20                                       ; $68cc: $e7
    ld a, h                                       ; $68cd: $7c
    adc $b5                                       ; $68ce: $ce $b5
    di                                            ; $68d0: $f3
    ldh [$72], a                                  ; $68d1: $e0 $72
    rra                                           ; $68d3: $1f
    and [hl]                                      ; $68d4: $a6
    ld a, $2f                                     ; $68d5: $3e $2f
    cp a                                          ; $68d7: $bf
    daa                                           ; $68d8: $27
    or [hl]                                       ; $68d9: $b6
    or h                                          ; $68da: $b4
    rst $20                                       ; $68db: $e7
    push hl                                       ; $68dc: $e5
    ld d, a                                       ; $68dd: $57
    inc [hl]                                      ; $68de: $34
    ld b, [hl]                                    ; $68df: $46
    add h                                         ; $68e0: $84
    ld bc, $bcc7                                  ; $68e1: $01 $c7 $bc
    db $fd                                        ; $68e4: $fd
    ld d, h                                       ; $68e5: $54
    db $fd                                        ; $68e6: $fd
    adc [hl]                                      ; $68e7: $8e
    ld a, [bc]                                    ; $68e8: $0a
    db $f4                                        ; $68e9: $f4
    ld [de], a                                    ; $68ea: $12
    ld hl, sp-$72                                 ; $68eb: $f8 $8e
    ld d, c                                       ; $68ed: $51
    xor c                                         ; $68ee: $a9
    rst $28                                       ; $68ef: $ef
    jr z, @+$73                                   ; $68f0: $28 $71

    ret c                                         ; $68f2: $d8

    add l                                         ; $68f3: $85
    cp c                                          ; $68f4: $b9
    sbc d                                         ; $68f5: $9a
    and b                                         ; $68f6: $a0
    ld hl, sp-$6e                                 ; $68f7: $f8 $92
    and $e5                                       ; $68f9: $e6 $e5
    jp nz, $98ec                                  ; $68fb: $c2 $ec $98

    add hl, hl                                    ; $68fe: $29
    ld [$dd03], sp                                ; $68ff: $08 $03 $dd
    dec h                                         ; $6902: $25
    db $ed                                        ; $6903: $ed
    rlca                                          ; $6904: $07
    ld c, b                                       ; $6905: $48
    reti                                          ; $6906: $d9


    ld l, c                                       ; $6907: $69
    and $8a                                       ; $6908: $e6 $8a
    ld a, h                                       ; $690a: $7c
    adc h                                         ; $690b: $8c
    dec [hl]                                      ; $690c: $35
    ld e, b                                       ; $690d: $58
    jp c, $adf6                                   ; $690e: $da $f6 $ad

    ld a, [hl]                                    ; $6911: $7e
    rla                                           ; $6912: $17
    sub [hl]                                      ; $6913: $96
    sub $97                                       ; $6914: $d6 $97
    ld a, c                                       ; $6916: $79
    ld a, c                                       ; $6917: $79
    ld a, c                                       ; $6918: $79
    or h                                          ; $6919: $b4
    sub $0b                                       ; $691a: $d6 $0b
    dec sp                                        ; $691c: $3b
    and $ed                                       ; $691d: $e6 $ed
    and a                                         ; $691f: $a7
    ld [$5477], a                                 ; $6920: $ea $77 $54
    and b                                         ; $6923: $a0
    sub a                                         ; $6924: $97
    ret nz                                        ; $6925: $c0

    ld [hl], a                                    ; $6926: $77
    adc h                                         ; $6927: $8c
    ld c, d                                       ; $6928: $4a
    ld a, l                                       ; $6929: $7d
    ld b, a                                       ; $692a: $47
    adc c                                         ; $692b: $89
    jp $a8aa                                      ; $692c: $c3 $aa $a8


jr_027_692f:
    nop                                           ; $692f: $00
    dec bc                                        ; $6930: $0b
    dec c                                         ; $6931: $0d
    ld hl, sp-$26                                 ; $6932: $f8 $da
    ccf                                           ; $6934: $3f
    ld a, d                                       ; $6935: $7a
    sub l                                         ; $6936: $95
    halt                                          ; $6937: $76
    add e                                         ; $6938: $83
    jr nc, jr_027_6978                            ; $6939: $30 $3d

    jp z, Jump_027_658f                           ; $693b: $ca $8f $65

    jp z, $e73c                                   ; $693e: $ca $3c $e7

    push hl                                       ; $6941: $e5
    ld h, a                                       ; $6942: $67
    ld a, [hl-]                                   ; $6943: $3a
    sbc l                                         ; $6944: $9d
    sub a                                         ; $6945: $97
    push bc                                       ; $6946: $c5
    or a                                          ; $6947: $b7
    ld a, [hl]                                    ; $6948: $7e
    ld e, h                                       ; $6949: $5c
    jp c, $f2f3                                   ; $694a: $da $f3 $f2

    adc e                                         ; $694d: $8b
    or a                                          ; $694e: $b7
    dec l                                         ; $694f: $2d
    ld a, [hl+]                                   ; $6950: $2a
    call $4c2e                                    ; $6951: $cd $2e $4c
    ld l, [hl]                                    ; $6954: $6e
    ld d, b                                       ; $6955: $50
    ld a, h                                       ; $6956: $7c
    ld e, d                                       ; $6957: $5a
    ld c, c                                       ; $6958: $49
    ld [bc], a                                    ; $6959: $02
    call z, $afcb                                 ; $695a: $cc $cb $af
    ld l, b                                       ; $695d: $68
    adc h                                         ; $695e: $8c
    or e                                          ; $695f: $b3
    dec h                                         ; $6960: $25
    jp $f979                                      ; $6961: $c3 $79 $f9


    dec e                                         ; $6964: $1d
    di                                            ; $6965: $f3
    or $53                                        ; $6966: $f6 $53
    push af                                       ; $6968: $f5
    dec sp                                        ; $6969: $3b
    ld a, [hl+]                                   ; $696a: $2a
    ret nc                                        ; $696b: $d0

    ld c, e                                       ; $696c: $4b
    ldh [$3b], a                                  ; $696d: $e0 $3b
    ld b, [hl]                                    ; $696f: $46
    and l                                         ; $6970: $a5
    cp [hl]                                       ; $6971: $be
    and e                                         ; $6972: $a3
    call nz, Call_027_5561                        ; $6973: $c4 $61 $55
    ld d, h                                       ; $6976: $54
    nop                                           ; $6977: $00

jr_027_6978:
    add h                                         ; $6978: $84
    ld bc, $4b3d                                  ; $6979: $01 $3d $4b
    inc sp                                        ; $697c: $33
    jr z, @+$6b                                   ; $697d: $28 $69

    ld [hl+], a                                   ; $697f: $22
    sbc e                                         ; $6980: $9b
    ld h, l                                       ; $6981: $65
    ldh [$da], a                                  ; $6982: $e0 $da
    ld c, h                                       ; $6984: $4c
    ld a, c                                       ; $6985: $79
    xor l                                         ; $6986: $ad
    rst $38                                       ; $6987: $ff
    cp h                                          ; $6988: $bc
    ld c, b                                       ; $6989: $48
    sbc d                                         ; $698a: $9a
    and b                                         ; $698b: $a0
    call z, $afcb                                 ; $698c: $cc $cb $af
    push af                                       ; $698f: $f5
    add d                                         ; $6990: $82
    and a                                         ; $6991: $a7
    inc [hl]                                      ; $6992: $34
    ld c, e                                       ; $6993: $4b
    ld a, e                                       ; $6994: $7b
    daa                                           ; $6995: $27
    ld l, e                                       ; $6996: $6b
    ld [hl], b                                    ; $6997: $70
    xor e                                         ; $6998: $ab
    ld d, l                                       ; $6999: $55
    ld d, c                                       ; $699a: $51
    ld bc, $97c6                                  ; $699b: $01 $c6 $97
    and a                                         ; $699e: $a7
    ld a, c                                       ; $699f: $79
    ld sp, hl                                     ; $69a0: $f9
    ld sp, hl                                     ; $69a1: $f9
    ld l, e                                       ; $69a2: $6b
    ld d, l                                       ; $69a3: $55
    ld e, [hl]                                    ; $69a4: $5e
    ld h, [hl]                                    ; $69a5: $66
    ld l, e                                       ; $69a6: $6b
    adc h                                         ; $69a7: $8c
    jr nc, jr_027_692f                            ; $69a8: $30 $85

    ld hl, sp-$21                                 ; $69aa: $f8 $df
    add hl, de                                    ; $69ac: $19
    db $e4                                        ; $69ad: $e4
    jp nc, $a7f6                                  ; $69ae: $d2 $f6 $a7

    xor [hl]                                      ; $69b1: $ae
    jr jr_027_69ca                                ; $69b2: $18 $16

    ld a, e                                       ; $69b4: $7b
    ld c, l                                       ; $69b5: $4d
    sbc d                                         ; $69b6: $9a
    sbc d                                         ; $69b7: $9a
    db $fc                                        ; $69b8: $fc
    ld h, d                                       ; $69b9: $62
    ld h, [hl]                                    ; $69ba: $66
    db $fd                                        ; $69bb: $fd
    ld d, d                                       ; $69bc: $52
    jr nc, jr_027_69fa                            ; $69bd: $30 $3b

    ld h, l                                       ; $69bf: $65
    xor l                                         ; $69c0: $ad

jr_027_69c1:
    rla                                           ; $69c1: $17
    inc a                                         ; $69c2: $3c
    and l                                         ; $69c3: $a5
    ld e, c                                       ; $69c4: $59
    jp c, Jump_027_593b                           ; $69c5: $da $3b $59

    add e                                         ; $69c8: $83
    ld e, e                                       ; $69c9: $5b

jr_027_69ca:
    ld [hl], c                                    ; $69ca: $71
    ld [hl], a                                    ; $69cb: $77
    cp l                                          ; $69cc: $bd
    ld b, $73                                     ; $69cd: $06 $73
    dec [hl]                                      ; $69cf: $35
    ld b, c                                       ; $69d0: $41
    pop af                                        ; $69d1: $f1
    dec h                                         ; $69d2: $25
    call $85cb                                    ; $69d3: $cd $cb $85
    reti                                          ; $69d6: $d9


    ld sp, $1053                                  ; $69d7: $31 $53 $10
    ld b, $3d                                     ; $69da: $06 $3d
    jp z, Jump_027_74cf                           ; $69dc: $ca $cf $74

    ld a, [hl-]                                   ; $69df: $3a
    cpl                                           ; $69e0: $2f
    adc e                                         ; $69e1: $8b
    ld l, a                                       ; $69e2: $6f
    db $fd                                        ; $69e3: $fd
    jr c, jr_027_6a56                             ; $69e4: $38 $70

    jp $1c9e                                      ; $69e6: $c3 $9e $1c


    and $19                                       ; $69e9: $e6 $19
    reti                                          ; $69eb: $d9


    jp nz, $e79f                                  ; $69ec: $c2 $9f $e7

    xor d                                         ; $69ef: $aa
    inc c                                         ; $69f0: $0c
    ld a, a                                       ; $69f1: $7f
    inc l                                         ; $69f2: $2c
    ld a, c                                       ; $69f3: $79
    ld e, d                                       ; $69f4: $5a
    ld a, c                                       ; $69f5: $79
    ld a, c                                       ; $69f6: $79
    or h                                          ; $69f7: $b4
    ld d, e                                       ; $69f8: $53
    sub d                                         ; $69f9: $92

jr_027_69fa:
    rra                                           ; $69fa: $1f
    ld e, a                                       ; $69fb: $5f
    call nc, Call_027_62bb                        ; $69fc: $d4 $bb $62
    dec a                                         ; $69ff: $3d
    jp z, Jump_027_4fcb                           ; $6a00: $ca $cb $4f

    push hl                                       ; $6a03: $e5
    ld b, a                                       ; $6a04: $47
    add hl, sp                                    ; $6a05: $39
    ei                                            ; $6a06: $fb
    ld a, [bc]                                    ; $6a07: $0a
    ld hl, sp-$66                                 ; $6a08: $f8 $9a
    ld d, a                                       ; $6a0a: $57
    ld e, c                                       ; $6a0b: $59
    dec d                                         ; $6a0c: $15
    dec d                                         ; $6a0d: $15
    ldh [$61], a                                  ; $6a0e: $e0 $61
    and [hl]                                      ; $6a10: $a6
    or e                                          ; $6a11: $b3
    ld a, [c]                                     ; $6a12: $f2
    ld a, [c]                                     ; $6a13: $f2
    ld d, e                                       ; $6a14: $53
    sbc a                                         ; $6a15: $9f
    add $88                                       ; $6a16: $c6 $88
    jr nc, jr_027_69c1                            ; $6a18: $30 $a7

    inc h                                         ; $6a1a: $24
    db $fd                                        ; $6a1b: $fd
    jp nc, $979e                                  ; $6a1c: $d2 $9e $97

    ld e, a                                       ; $6a1f: $5f
    dec d                                         ; $6a20: $15
    dec d                                         ; $6a21: $15
    ldh [$61], a                                  ; $6a22: $e0 $61
    ld c, c                                       ; $6a24: $49
    di                                            ; $6a25: $f3
    ld [hl], d                                    ; $6a26: $72
    ld h, c                                       ; $6a27: $61
    halt                                          ; $6a28: $76
    call z, $a994                                 ; $6a29: $cc $94 $a9
    db $fc                                        ; $6a2c: $fc
    sub d                                         ; $6a2d: $92
    ld d, $36                                     ; $6a2e: $16 $36
    di                                            ; $6a30: $f3
    dec de                                        ; $6a31: $1b
    cp [hl]                                       ; $6a32: $be
    ld l, e                                       ; $6a33: $6b
    dec sp                                        ; $6a34: $3b
    ld a, $c2                                     ; $6a35: $3e $c2
    dec l                                         ; $6a37: $2d
    add hl, de                                    ; $6a38: $19
    ld a, [hl]                                    ; $6a39: $7e
    jp nc, $33cf                                  ; $6a3a: $d2 $cf $33

    or d                                          ; $6a3d: $b2
    add l                                         ; $6a3e: $85
    ccf                                           ; $6a3f: $3f
    adc l                                         ; $6a40: $8d
    ld [hl], c                                    ; $6a41: $71
    ld e, [hl]                                    ; $6a42: $5e
    ld a, [hl]                                    ; $6a43: $7e
    or $15                                        ; $6a44: $f6 $15
    ldh a, [$35]                                  ; $6a46: $f0 $35
    xor a                                         ; $6a48: $af
    or d                                          ; $6a49: $b2
    ld a, [hl+]                                   ; $6a4a: $2a
    ld a, [hl+]                                   ; $6a4b: $2a
    ret nz                                        ; $6a4c: $c0

    jp $7e54                                      ; $6a4d: $c3 $54 $7e


    ld c, c                                       ; $6a50: $49
    di                                            ; $6a51: $f3
    ld a, [c]                                     ; $6a52: $f2
    or e                                          ; $6a53: $b3
    db $d3                                        ; $6a54: $d3
    adc b                                         ; $6a55: $88

jr_027_6a56:
    sub a                                         ; $6a56: $97
    reti                                          ; $6a57: $d9


    ld sp, $9653                                  ; $6a58: $31 $53 $96
    or d                                          ; $6a5b: $b2
    sbc b                                         ; $6a5c: $98
    db $fc                                        ; $6a5d: $fc
    dec bc                                        ; $6a5e: $0b
    jp nz, $c547                                  ; $6a5f: $c2 $47 $c5

    jr c, jr_027_6a93                             ; $6a62: $38 $2f

    ccf                                           ; $6a64: $3f
    ei                                            ; $6a65: $fb
    ld a, [bc]                                    ; $6a66: $0a
    ld hl, sp-$66                                 ; $6a67: $f8 $9a
    ld d, a                                       ; $6a69: $57
    ld e, c                                       ; $6a6a: $59
    dec d                                         ; $6a6b: $15
    dec d                                         ; $6a6c: $15
    ldh [$61], a                                  ; $6a6d: $e0 $61
    ld a, [hl+]                                   ; $6a6f: $2a
    ccf                                           ; $6a70: $3f
    ld d, a                                       ; $6a71: $57
    inc de                                        ; $6a72: $13
    inc d                                         ; $6a73: $14
    ld e, a                                       ; $6a74: $5f
    jp nc, $f262                                  ; $6a75: $d2 $62 $f2

    cpl                                           ; $6a78: $2f
    or e                                          ; $6a79: $b3
    ld h, e                                       ; $6a7a: $63
    and [hl]                                      ; $6a7b: $a6
    nop                                           ; $6a7c: $00
    jp nz, $d996                                  ; $6a7d: $c2 $96 $d9

    ld l, c                                       ; $6a80: $69
    adc b                                         ; $6a81: $88
    dec l                                         ; $6a82: $2d
    adc l                                         ; $6a83: $8d
    adc a                                         ; $6a84: $8f
    cpl                                           ; $6a85: $2f
    ld [$9b0b], a                                 ; $6a86: $ea $0b $9b
    ld d, l                                       ; $6a89: $55
    ld d, c                                       ; $6a8a: $51
    ld bc, $c61e                                  ; $6a8b: $01 $1e $c6
    cp a                                          ; $6a8e: $bf
    db $fc                                        ; $6a8f: $fc
    jp c, Jump_027_62cd                           ; $6a90: $da $cd $62

jr_027_6a93:
    ld h, [hl]                                    ; $6a93: $66
    db $fd                                        ; $6a94: $fd
    ld d, d                                       ; $6a95: $52
    jr nc, @-$09                                  ; $6a96: $30 $f5

    ld a, c                                       ; $6a98: $79
    ld sp, hl                                     ; $6a99: $f9
    dec e                                         ; $6a9a: $1d
    ld b, l                                       ; $6a9b: $45
    sub h                                         ; $6a9c: $94
    add [hl]                                      ; $6a9d: $86
    xor d                                         ; $6a9e: $aa
    rrca                                          ; $6a9f: $0f
    sbc a                                         ; $6aa0: $9f
    ld a, h                                       ; $6aa1: $7c
    ld b, a                                       ; $6aa2: $47
    and a                                         ; $6aa3: $a7
    ld a, [bc]                                    ; $6aa4: $0a
    db $db                                        ; $6aa5: $db
    and l                                         ; $6aa6: $a5
    ld a, c                                       ; $6aa7: $79
    ld sp, hl                                     ; $6aa8: $f9
    sub l                                         ; $6aa9: $95
    inc [hl]                                      ; $6aaa: $34
    ldh a, [$eb]                                  ; $6aab: $f0 $eb
    sub [hl]                                      ; $6aad: $96
    ld h, c                                       ; $6aae: $61
    sbc b                                         ; $6aaf: $98
    or h                                          ; $6ab0: $b4
    db $d3                                        ; $6ab1: $d3
    inc sp                                        ; $6ab2: $33
    ld b, e                                       ; $6ab3: $43
    add h                                         ; $6ab4: $84
    ld bc, $24a7                                  ; $6ab5: $01 $a7 $24
    db $fd                                        ; $6ab8: $fd
    jp nc, $979e                                  ; $6ab9: $d2 $9e $97

    ld e, a                                       ; $6abc: $5f
    dec d                                         ; $6abd: $15
    dec d                                         ; $6abe: $15
    ldh [$61], a                                  ; $6abf: $e0 $61
    ld c, c                                       ; $6ac1: $49
    di                                            ; $6ac2: $f3
    ld [hl], d                                    ; $6ac3: $72
    ld h, c                                       ; $6ac4: $61
    halt                                          ; $6ac5: $76
    call z, Call_027_4194                         ; $6ac6: $cc $94 $41
    ld a, [de]                                    ; $6ac9: $1a
    ld h, d                                       ; $6aca: $62
    or e                                          ; $6acb: $b3
    dec [hl]                                      ; $6acc: $35
    cp h                                          ; $6acd: $bc
    pop af                                        ; $6ace: $f1
    xor d                                         ; $6acf: $aa
    jr nz, jr_027_6ade                            ; $6ad0: $20 $0c

    sub [hl]                                      ; $6ad2: $96
    add c                                         ; $6ad3: $81
    jp hl                                         ; $6ad4: $e9


    ld [hl], h                                    ; $6ad5: $74
    ld [de], a                                    ; $6ad6: $12
    ld a, [hl]                                    ; $6ad7: $7e
    sub h                                         ; $6ad8: $94
    or e                                          ; $6ad9: $b3
    xor a                                         ; $6ada: $af
    add b                                         ; $6adb: $80
    xor a                                         ; $6adc: $af
    ld a, c                                       ; $6add: $79

jr_027_6ade:
    sub l                                         ; $6ade: $95
    ld d, l                                       ; $6adf: $55
    ld d, c                                       ; $6ae0: $51
    ld bc, $a61e                                  ; $6ae1: $01 $1e $a6
    ld a, [c]                                     ; $6ae4: $f2
    ld [hl], e                                    ; $6ae5: $73
    dec [hl]                                      ; $6ae6: $35
    ld b, c                                       ; $6ae7: $41
    pop af                                        ; $6ae8: $f1
    sbc c                                         ; $6ae9: $99
    adc $ca                                       ; $6aea: $ce $ca
    sla e                                         ; $6aec: $cb $23
    inc c                                         ; $6aee: $0c
    daa                                           ; $6aef: $27
    scf                                           ; $6af0: $37
    dec hl                                        ; $6af1: $2b
    ld l, c                                       ; $6af2: $69
    ldh [$d7], a                                  ; $6af3: $e0 $d7
    sub c                                         ; $6af5: $91
    or a                                          ; $6af6: $b7
    cp a                                          ; $6af7: $bf
    ld a, [c]                                     ; $6af8: $f2
    ld a, c                                       ; $6af9: $79
    ld b, [hl]                                    ; $6afa: $46
    or [hl]                                       ; $6afb: $b6
    ldh a, [$e7]                                  ; $6afc: $f0 $e7
    cp c                                          ; $6afe: $b9
    jr nz, @-$37                                  ; $6aff: $20 $c7

    sub d                                         ; $6b01: $92
    and a                                         ; $6b02: $a7
    ld a, c                                       ; $6b03: $79
    xor [hl]                                      ; $6b04: $ae
    adc d                                         ; $6b05: $8a
    ld a, [bc]                                    ; $6b06: $0a
    add b                                         ; $6b07: $80
    sub $a3                                       ; $6b08: $d6 $a3
    xor b                                         ; $6b0a: $a8
    cpl                                           ; $6b0b: $2f
    inc [hl]                                      ; $6b0c: $34
    ldh [$0b], a                                  ; $6b0d: $e0 $0b
    ld e, a                                       ; $6b0f: $5f
    ld l, c                                       ; $6b10: $69
    inc l                                         ; $6b11: $2c
    ld a, c                                       ; $6b12: $79
    ld [bc], a                                    ; $6b13: $02
    rst $10                                       ; $6b14: $d7
    dec hl                                        ; $6b15: $2b
    add b                                         ; $6b16: $80
    jr nc, jr_027_6b56                            ; $6b17: $30 $3d

    ld a, a                                       ; $6b19: $7f
    or $15                                        ; $6b1a: $f6 $15
    ldh a, [$35]                                  ; $6b1c: $f0 $35
    xor a                                         ; $6b1e: $af
    ld [bc], a                                    ; $6b1f: $02
    db $e3                                        ; $6b20: $e3
    sub e                                         ; $6b21: $93
    ld l, d                                       ; $6b22: $6a
    cp [hl]                                       ; $6b23: $be
    and d                                         ; $6b24: $a2
    sub $5f                                       ; $6b25: $d6 $5f
    dec d                                         ; $6b27: $15
    dec d                                         ; $6b28: $15
    ldh [$61], a                                  ; $6b29: $e0 $61
    ld c, c                                       ; $6b2b: $49
    di                                            ; $6b2c: $f3
    ld [hl], d                                    ; $6b2d: $72
    ld h, c                                       ; $6b2e: $61
    halt                                          ; $6b2f: $76
    call z, $d994                                 ; $6b30: $cc $94 $d9
    add hl, hl                                    ; $6b33: $29
    db $d3                                        ; $6b34: $d3
    push bc                                       ; $6b35: $c5
    and h                                         ; $6b36: $a4
    ld h, b                                       ; $6b37: $60
    ld a, [hl]                                    ; $6b38: $7e
    jp Jump_000_1847                              ; $6b39: $c3 $47 $18


    and a                                         ; $6b3c: $a7
    ld a, [de]                                    ; $6b3d: $1a
    ld e, a                                       ; $6b3e: $5f
    jp c, $553b                                   ; $6b3f: $da $3b $55

Call_027_6b42:
    ret c                                         ; $6b42: $d8

    dec bc                                        ; $6b43: $0b
    jp nz, Jump_027_66a7                          ; $6b44: $c2 $a7 $66

    ld [hl], d                                    ; $6b47: $72
    and a                                         ; $6b48: $a7
    or h                                          ; $6b49: $b4
    ld e, e                                       ; $6b4a: $5b
    push de                                       ; $6b4b: $d5
    db $e3                                        ; $6b4c: $e3
    rst $08                                       ; $6b4d: $cf
    cp [hl]                                       ; $6b4e: $be
    ld [bc], a                                    ; $6b4f: $02
    ld a, [hl]                                    ; $6b50: $7e
    sbc a                                         ; $6b51: $9f
    cp e                                          ; $6b52: $bb
    and h                                         ; $6b53: $a4
    sub l                                         ; $6b54: $95
    dec bc                                        ; $6b55: $0b

jr_027_6b56:
    db $e3                                        ; $6b56: $e3
    or l                                          ; $6b57: $b5
    sbc c                                         ; $6b58: $99
    rst $20                                       ; $6b59: $e7
    xor d                                         ; $6b5a: $aa
    xor b                                         ; $6b5b: $a8
    nop                                           ; $6b5c: $00
    ld e, l                                       ; $6b5d: $5d
    sub $b3                                       ; $6b5e: $d6 $b3
    cp h                                          ; $6b60: $bc
    ld a, h                                       ; $6b61: $7c
    dec c                                         ; $6b62: $0d
    ld d, [hl]                                    ; $6b63: $56
    ld a, [hl]                                    ; $6b64: $7e
    ld b, c                                       ; $6b65: $41
    ld e, [hl]                                    ; $6b66: $5e
    ld a, [bc]                                    ; $6b67: $0a
    cp d                                          ; $6b68: $ba
    ld h, d                                       ; $6b69: $62
    sub [hl]                                      ; $6b6a: $96
    ld e, d                                       ; $6b6b: $5a
    cp b                                          ; $6b6c: $b8
    dec de                                        ; $6b6d: $1b
    ld d, b                                       ; $6b6e: $50
    jp z, Jump_027_60a5                           ; $6b6f: $ca $a5 $60

    ld c, l                                       ; $6b72: $4d
    ld a, [de]                                    ; $6b73: $1a
    xor $ba                                       ; $6b74: $ee $ba
    rst $38                                       ; $6b76: $ff
    ld e, e                                       ; $6b77: $5b
    rra                                           ; $6b78: $1f
    db $10                                        ; $6b79: $10
    ld b, $3d                                     ; $6b7a: $06 $3d
    jp z, Jump_027_42d3                           ; $6b7c: $ca $d3 $42

    ld l, l                                       ; $6b7f: $6d

jr_027_6b80:
    jp c, $cb3f                                   ; $6b80: $da $3f $cb

    and b                                         ; $6b83: $a0
    and h                                         ; $6b84: $a4
    adc c                                         ; $6b85: $89
    ld l, h                                       ; $6b86: $6c
    pop bc                                        ; $6b87: $c1
    or l                                          ; $6b88: $b5
    cp $9a                                        ; $6b89: $fe $9a
    inc [hl]                                      ; $6b8b: $34
    add e                                         ; $6b8c: $83
    inc c                                         ; $6b8d: $0c
    rst $18                                       ; $6b8e: $df
    res 4, l                                      ; $6b8f: $cb $a5
    ld h, b                                       ; $6b91: $60
    ld c, l                                       ; $6b92: $4d
    sbc d                                         ; $6b93: $9a
    ld d, l                                       ; $6b94: $55
    ld c, d                                       ; $6b95: $4a
    dec [hl]                                      ; $6b96: $35
    rst $18                                       ; $6b97: $df
    dec c                                         ; $6b98: $0d
    jr z, jr_027_6b80                             ; $6b99: $28 $e5

    ld de, $4706                                  ; $6b9b: $11 $06 $47
    ld d, l                                       ; $6b9e: $55
    dec h                                         ; $6b9f: $25
    inc de                                        ; $6ba0: $13
    ld hl, $9254                                  ; $6ba1: $21 $54 $92
    ld [$2108], a                                 ; $6ba4: $ea $08 $21
    xor l                                         ; $6ba7: $ad
    ld c, d                                       ; $6ba8: $4a
    ld h, $42                                     ; $6ba9: $26 $42
    ld [$ad03], sp                                ; $6bab: $08 $03 $ad
    rst $38                                       ; $6bae: $ff
    dec hl                                        ; $6baf: $2b
    rst $38                                       ; $6bb0: $ff
    dec hl                                        ; $6bb1: $2b
    rst $38                                       ; $6bb2: $ff
    dec hl                                        ; $6bb3: $2b
    rst $38                                       ; $6bb4: $ff
    ld [$8421], sp                                ; $6bb5: $08 $21 $84
    ld bc, $5547                                  ; $6bb8: $01 $47 $55
    dec h                                         ; $6bbb: $25
    sub e                                         ; $6bbc: $93
    dec sp                                        ; $6bbd: $3b
    and b                                         ; $6bbe: $a0
    inc d                                         ; $6bbf: $14
    rst $20                                       ; $6bc0: $e7
    ld c, $28                                     ; $6bc1: $0e $28
    push bc                                       ; $6bc3: $c5
    ld de, $1842                                  ; $6bc4: $11 $42 $18
    daa                                           ; $6bc7: $27
    rst $30                                       ; $6bc8: $f7
    ld a, l                                       ; $6bc9: $7d
    ld [hl], d                                    ; $6bca: $72
    rst $18                                       ; $6bcb: $df
    daa                                           ; $6bcc: $27
    dec bc                                        ; $6bcd: $0b
    ld e, d                                       ; $6bce: $5a
    rst $30                                       ; $6bcf: $f7
    ld [hl], h                                    ; $6bd0: $74
    ld a, a                                       ; $6bd1: $7f
    pop hl                                        ; $6bd2: $e1
    ld c, [hl]                                    ; $6bd3: $4e
    push hl                                       ; $6bd4: $e5
    rst $10                                       ; $6bd5: $d7
    and h                                         ; $6bd6: $a4
    reti                                          ; $6bd7: $d9


    adc l                                         ; $6bd8: $8d
    or c                                          ; $6bd9: $b1
    dec hl                                        ; $6bda: $2b
    ld b, $a7                                     ; $6bdb: $06 $a7
    inc h                                         ; $6bdd: $24
    ld [hl], a                                    ; $6bde: $77
    db $dd                                        ; $6bdf: $dd
    rst $38                                       ; $6be0: $ff
    xor l                                         ; $6be1: $ad
    rrca                                          ; $6be2: $0f
    dec sp                                        ; $6be3: $3b
    rst $08                                       ; $6be4: $cf
    add b                                         ; $6be5: $80
    xor a                                         ; $6be6: $af
    ld d, d                                       ; $6be7: $52
    ldh a, [$e9]                                  ; $6be8: $f0 $e9
    and b                                         ; $6bea: $a0
    di                                            ; $6beb: $f3
    ld sp, $692e                                  ; $6bec: $31 $2e $69
    pop hl                                        ; $6bef: $e1
    and e                                         ; $6bf0: $a3
    dec e                                         ; $6bf1: $1d
    ld d, l                                       ; $6bf2: $55
    sub l                                         ; $6bf3: $95
    ld c, h                                       ; $6bf4: $4c
    xor $80                                       ; $6bf5: $ee $80

jr_027_6bf7:
    xor [hl]                                      ; $6bf7: $ae
    ld l, l                                       ; $6bf8: $6d
    rst $00                                       ; $6bf9: $c7

Call_027_6bfa:
    ld b, a                                       ; $6bfa: $47
    ld [$2761], sp                                ; $6bfb: $08 $61 $27
    db $f4                                        ; $6bfe: $f4
    ld a, l                                       ; $6bff: $7d
    ld b, d                                       ; $6c00: $42
    rst $18                                       ; $6c01: $df
    daa                                           ; $6c02: $27
    jr jr_027_6c1b                                ; $6c03: $18 $16

    ld e, h                                       ; $6c05: $5c
    ld a, [bc]                                    ; $6c06: $0a
    ld h, [hl]                                    ; $6c07: $66
    ld c, e                                       ; $6c08: $4b
    add [hl]                                      ; $6c09: $86
    di                                            ; $6c0a: $f3
    ld a, [c]                                     ; $6c0b: $f2
    add e                                         ; $6c0c: $83
    ld h, $ec                                     ; $6c0d: $26 $ec
    ld a, b                                       ; $6c0f: $78
    add [hl]                                      ; $6c10: $86
    ret nz                                        ; $6c11: $c0

    sbc l                                         ; $6c12: $9d

jr_027_6c13:
    and l                                         ; $6c13: $a5
    add $06                                       ; $6c14: $c6 $06
    jp c, Jump_027_49ac                           ; $6c16: $da $ac $49

    inc sp                                        ; $6c19: $33
    sub l                                         ; $6c1a: $95

jr_027_6c1b:
    sbc a                                         ; $6c1b: $9f
    ld hl, $32f6                                  ; $6c1c: $21 $f6 $32
    cpl                                           ; $6c1f: $2f
    cp a                                          ; $6c20: $bf
    or a                                          ; $6c21: $b7
    db $ed                                        ; $6c22: $ed
    xor a                                         ; $6c23: $af
    inc e                                         ; $6c24: $1c
    sub [hl]                                      ; $6c25: $96
    or $4e                                        ; $6c26: $f6 $4e
    ld [hl], $95                                  ; $6c28: $36 $95
    add c                                         ; $6c2a: $81
    dec e                                         ; $6c2b: $1d
    push bc                                       ; $6c2c: $c5
    halt                                          ; $6c2d: $76
    adc d                                         ; $6c2e: $8a
    ld a, [de]                                    ; $6c2f: $1a
    ld a, b                                       ; $6c30: $78
    inc de                                        ; $6c31: $13
    ld [hl+], a                                   ; $6c32: $22
    add h                                         ; $6c33: $84
    ld a, d                                       ; $6c34: $7a
    sub h                                         ; $6c35: $94
    ld e, a                                       ; $6c36: $5f
    or a                                          ; $6c37: $b7
    cp [hl]                                       ; $6c38: $be
    cp e                                          ; $6c39: $bb
    push af                                       ; $6c3a: $f5
    db $dd                                        ; $6c3b: $dd
    call $fc08                                    ; $6c3c: $cd $08 $fc
    jp nc, $979e                                  ; $6c3f: $d2 $9e $97

    rst $18                                       ; $6c42: $df
    pop de                                        ; $6c43: $d1
    add hl, de                                    ; $6c44: $19
    call c, Call_000_2e87                         ; $6c45: $dc $87 $2e
    jr jr_027_6bf7                                ; $6c48: $18 $ad

    ld c, c                                       ; $6c4a: $49
    push af                                       ; $6c4b: $f5
    ld l, $18                                     ; $6c4c: $2e $18
    rst $00                                       ; $6c4e: $c7
    ld [hl], d                                    ; $6c4f: $72
    ret nc                                        ; $6c50: $d0

    jp z, $8363                                   ; $6c51: $ca $63 $83

    sub $a3                                       ; $6c54: $d6 $a3
    db $f4                                        ; $6c56: $f4
    db $dd                                        ; $6c57: $dd
    and e                                         ; $6c58: $a3
    db $f4                                        ; $6c59: $f4
    db $dd                                        ; $6c5a: $dd

jr_027_6c5b:
    and e                                         ; $6c5b: $a3
    ld e, h                                       ; $6c5c: $5c
    ld e, b                                       ; $6c5d: $58
    and l                                         ; $6c5e: $a5
    ld sp, $ecc2                                  ; $6c5f: $31 $c2 $ec
    sub h                                         ; $6c62: $94
    jp hl                                         ; $6c63: $e9


    and b                                         ; $6c64: $a0
    di                                            ; $6c65: $f3
    push de                                       ; $6c66: $d5
    push de                                       ; $6c67: $d5
    jr c, @+$07                                   ; $6c68: $38 $05

    cp b                                          ; $6c6a: $b8
    ld bc, $4f85                                  ; $6c6b: $01 $85 $4f
    ld a, $cb                                     ; $6c6e: $3e $cb
    ld hl, sp+$34                                 ; $6c70: $f8 $34
    sub c                                         ; $6c72: $91
    call $d180                                    ; $6c73: $cd $80 $d1
    jr jr_027_6c13                                ; $6c76: $18 $9b

    dec b                                         ; $6c78: $05
    rst $10                                       ; $6c79: $d7
    ld a, [$8a4b]                                 ; $6c7a: $fa $4b $8a
    call $a73c                                    ; $6c7d: $cd $3c $a7
    dec bc                                        ; $6c80: $0b
    ld d, e                                       ; $6c81: $53
    ld a, [hl]                                    ; $6c82: $7e
    sbc l                                         ; $6c83: $9d
    cp [hl]                                       ; $6c84: $be
    dec sp                                        ; $6c85: $3b
    ld a, l                                       ; $6c86: $7d
    ld [hl], a                                    ; $6c87: $77
    ld [hl-], a                                   ; $6c88: $32
    ld e, [hl]                                    ; $6c89: $5e
    jr z, jr_027_6c5b                             ; $6c8a: $28 $cf

    ld b, $6e                                     ; $6c8c: $06 $6e
    ret c                                         ; $6c8e: $d8

    sub e                                         ; $6c8f: $93
    ld [hl], e                                    ; $6c90: $73
    rst $10                                       ; $6c91: $d7
    ld [hl], $3e                                  ; $6c92: $36 $3e
    cp b                                          ; $6c94: $b8
    ld d, h                                       ; $6c95: $54
    db $fd                                        ; $6c96: $fd
    sbc d                                         ; $6c97: $9a
    inc [hl]                                      ; $6c98: $34
    dec [hl]                                      ; $6c99: $35
    ld sp, hl                                     ; $6c9a: $f9
    or l                                          ; $6c9b: $b5
    or $dd                                        ; $6c9c: $f6 $dd
    jp c, $ab77                                   ; $6c9e: $da $77 $ab

    adc d                                         ; $6ca1: $8a
    inc [hl]                                      ; $6ca2: $34
    db $eb                                        ; $6ca3: $eb
    sbc [hl]                                      ; $6ca4: $9e
    xor $2f                                       ; $6ca5: $ee $2f
    ld [$0c21], sp                                ; $6ca7: $08 $21 $0c
    dec a                                         ; $6caa: $3d
    adc e                                         ; $6cab: $8b
    ld a, [$ec2e]                                 ; $6cac: $fa $2e $ec
    ld a, d                                       ; $6caf: $7a
    rst $10                                       ; $6cb0: $d7
    or l                                          ; $6cb1: $b5
    ret nc                                        ; $6cb2: $d0

    or l                                          ; $6cb3: $b5
    db $ed                                        ; $6cb4: $ed
    ld hl, sp+$08                                 ; $6cb5: $f8 $08
    inc bc                                        ; $6cb7: $03
    rst $00                                       ; $6cb8: $c7
    ld e, l                                       ; $6cb9: $5d
    ld h, d                                       ; $6cba: $62
    di                                            ; $6cbb: $f3
    ld a, [c]                                     ; $6cbc: $f2
    xor e                                         ; $6cbd: $ab
    ld a, [$faae]                                 ; $6cbe: $fa $ae $fa
    xor [hl]                                      ; $6cc1: $ae
    jp nc, $bf90                                  ; $6cc2: $d2 $90 $bf

    db $f4                                        ; $6cc5: $f4
    ld e, l                                       ; $6cc6: $5d
    add hl, de                                    ; $6cc7: $19

Jump_027_6cc8:
    add c                                         ; $6cc8: $81
    ld b, a                                       ; $6cc9: $47
    dec sp                                        ; $6cca: $3b
    adc d                                         ; $6ccb: $8a
    ret c                                         ; $6ccc: $d8

    adc d                                         ; $6ccd: $8a
    ld de, $1069                                  ; $6cce: $11 $69 $10
    ld b, d                                       ; $6cd1: $42
    db $dd                                        ; $6cd2: $dd
    adc h                                         ; $6cd3: $8c
    ret nz                                        ; $6cd4: $c0

    cpl                                           ; $6cd5: $2f
    db $ed                                        ; $6cd6: $ed
    ld a, c                                       ; $6cd7: $79
    ld sp, hl                                     ; $6cd8: $f9
    dec e                                         ; $6cd9: $1d
    sbc l                                         ; $6cda: $9d
    pop bc                                        ; $6cdb: $c1
    ld a, l                                       ; $6cdc: $7d
    jr @+$81                                      ; $6cdd: $18 $7f

    ld h, e                                       ; $6cdf: $63
    ld e, h                                       ; $6ce0: $5c
    xor b                                         ; $6ce1: $a8
    push af                                       ; $6ce2: $f5
    ld e, a                                       ; $6ce3: $5f
    sub e                                         ; $6ce4: $93
    ld h, [hl]                                    ; $6ce5: $66
    ld a, h                                       ; $6ce6: $7c
    rst $18                                       ; $6ce7: $df
    ld a, h                                       ; $6ce8: $7c
    rst $18                                       ; $6ce9: $df
    db $fc                                        ; $6cea: $fc
    ld l, e                                       ; $6ceb: $6b
    db $fd                                        ; $6cec: $fd
    ld h, l                                       ; $6ced: $65
    ld c, d                                       ; $6cee: $4a
    ld l, h                                       ; $6cef: $6c
    db $fc                                        ; $6cf0: $fc
    ld l, e                                       ; $6cf1: $6b
    db $fd                                        ; $6cf2: $fd
    ld h, l                                       ; $6cf3: $65
    add [hl]                                      ; $6cf4: $86
    db $fc                                        ; $6cf5: $fc
    add $35                                       ; $6cf6: $c6 $35
    ld l, c                                       ; $6cf8: $69
    ld l, d                                       ; $6cf9: $6a
    ld sp, $a8ae                                  ; $6cfa: $31 $ae $a8
    push af                                       ; $6cfd: $f5

jr_027_6cfe:
    rst $20                                       ; $6cfe: $e7
    cp c                                          ; $6cff: $b9
    or $af                                        ; $6d00: $f6 $af
    db $d3                                        ; $6d02: $d3
    ld [hl], a                                    ; $6d03: $77
    and a                                         ; $6d04: $a7
    rst $28                                       ; $6d05: $ef
    adc [hl]                                      ; $6d06: $8e
    pop af                                        ; $6d07: $f1
    ld a, c                                       ; $6d08: $79
    xor [hl]                                      ; $6d09: $ae
    db $fd                                        ; $6d0a: $fd
    inc c                                         ; $6d0b: $0c
    ld h, c                                       ; $6d0c: $61
    cp l                                          ; $6d0d: $bd
    jp nc, Jump_027_4f8c                          ; $6d0e: $d2 $8c $4f

    xor d                                         ; $6d11: $aa
    ld sp, hl                                     ; $6d12: $f9
    db $ec                                        ; $6d13: $ec
    ld c, e                                       ; $6d14: $4b
    ld l, h                                       ; $6d15: $6c
    ld e, [hl]                                    ; $6d16: $5e
    ld a, [hl]                                    ; $6d17: $7e
    ld d, l                                       ; $6d18: $55
    rst $18                                       ; $6d19: $df
    ld d, l                                       ; $6d1a: $55
    rst $18                                       ; $6d1b: $df
    ld d, l                                       ; $6d1c: $55
    ld a, [de]                                    ; $6d1d: $1a
    ld a, [c]                                     ; $6d1e: $f2
    sub a                                         ; $6d1f: $97
    cp [hl]                                       ; $6d20: $be
    dec hl                                        ; $6d21: $2b
    inc hl                                        ; $6d22: $23
    ldh a, [$bb]                                  ; $6d23: $f0 $bb
    or h                                          ; $6d25: $b4
    ld a, [c]                                     ; $6d26: $f2
    ld a, [c]                                     ; $6d27: $f2
    call c, $aab5                                 ; $6d28: $dc $b5 $aa
    ld c, b                                       ; $6d2b: $48
    db $d3                                        ; $6d2c: $d3
    dec b                                         ; $6d2d: $05
    inc bc                                        ; $6d2e: $03
    ld d, $84                                     ; $6d2f: $16 $84
    db $10                                        ; $6d31: $10
    ld c, e                                       ; $6d32: $4b
    xor d                                         ; $6d33: $aa
    ld sp, hl                                     ; $6d34: $f9
    db $ec                                        ; $6d35: $ec
    rst $38                                       ; $6d36: $ff
    adc b                                         ; $6d37: $88
    db $10                                        ; $6d38: $10
    or d                                          ; $6d39: $b2
    cp [hl]                                       ; $6d3a: $be
    inc [hl]                                      ; $6d3b: $34
    db $e3                                        ; $6d3c: $e3
    ccf                                           ; $6d3d: $3f
    ld b, [hl]                                    ; $6d3e: $46
    add h                                         ; $6d3f: $84
    db $10                                        ; $6d40: $10
    ld b, $c7                                     ; $6d41: $06 $c7
    db $fd                                        ; $6d43: $fd
    rst $00                                       ; $6d44: $c7
    ld c, e                                       ; $6d45: $4b
    pop bc                                        ; $6d46: $c1
    jp c, $feef                                   ; $6d47: $da $ef $fe

    jp nc, $bd75                                  ; $6d4a: $d2 $75 $bd

    jp nc, Jump_027_662c                          ; $6d4d: $d2 $2c $66

    sub $9f                                       ; $6d50: $d6 $9f
    call $d2fa                                    ; $6d52: $cd $fa $d2
    db $ec                                        ; $6d55: $ec
    add $38                                       ; $6d56: $c6 $38
    cp [hl]                                       ; $6d58: $be
    inc a                                         ; $6d59: $3c
    xor l                                         ; $6d5a: $ad
    ld c, c                                       ; $6d5b: $49
    inc sp                                        ; $6d5c: $33
    cp $e5                                        ; $6d5d: $fe $e5
    rst $10                                       ; $6d5f: $d7
    sub [hl]                                      ; $6d60: $96
    inc [hl]                                      ; $6d61: $34
    ld b, c                                       ; $6d62: $41
    pop af                                        ; $6d63: $f1
    ld e, l                                       ; $6d64: $5d
    ld b, d                                       ; $6d65: $42
    jr jr_027_6cfe                                ; $6d66: $18 $96

    dec d                                         ; $6d68: $15
    or l                                          ; $6d69: $b5
    cp $bc                                        ; $6d6a: $fe $bc
    db $fc                                        ; $6d6c: $fc
    cp d                                          ; $6d6d: $ba
    add hl, de                                    ; $6d6e: $19
    add c                                         ; $6d6f: $81
    ld e, a                                       ; $6d70: $5f
    jp c, $f2f3                                   ; $6d71: $da $f3 $f2

    dec sp                                        ; $6d74: $3b
    ld a, [hl-]                                   ; $6d75: $3a
    add e                                         ; $6d76: $83
    ei                                            ; $6d77: $fb

Call_027_6d78:
    add b                                         ; $6d78: $80
    sub $42                                       ; $6d79: $d6 $42
    rst $10                                       ; $6d7b: $d7
    or [hl]                                       ; $6d7c: $b6
    db $e3                                        ; $6d7d: $e3
    and e                                         ; $6d7e: $a3
    ld [hl], l                                    ; $6d7f: $75
    sub a                                         ; $6d80: $97
    or h                                          ; $6d81: $b4
    pop de                                        ; $6d82: $d1
    ld c, [hl]                                    ; $6d83: $4e
    inc sp                                        ; $6d84: $33
    ld d, a                                       ; $6d85: $57
    db $e4                                        ; $6d86: $e4
    ld h, e                                       ; $6d87: $63
    inc e                                         ; $6d88: $1c
    inc a                                         ; $6d89: $3c
    ld sp, hl                                     ; $6d8a: $f9
    jp nz, $e79f                                  ; $6d8b: $c2 $9f $e7

    db $ec                                        ; $6d8e: $ec
    ld c, e                                       ; $6d8f: $4b
    ld l, h                                       ; $6d90: $6c
    cp d                                          ; $6d91: $ba
    ld a, [hl+]                                   ; $6d92: $2a
    dec c                                         ; $6d93: $0d
    ld sp, hl                                     ; $6d94: $f9
    ld c, e                                       ; $6d95: $4b
    rst $18                                       ; $6d96: $df
    sub l                                         ; $6d97: $95
    ld de, $b478                                  ; $6d98: $11 $78 $b4

jr_027_6d9b:
    sub $a4                                       ; $6d9b: $d6 $a4
    ld a, [hl-]                                   ; $6d9d: $3a
    ld e, d                                       ; $6d9e: $5a
    scf                                           ; $6d9f: $37
    and l                                         ; $6da0: $a5
    dec [hl]                                      ; $6da1: $35
    ld l, c                                       ; $6da2: $69
    ld d, [hl]                                    ; $6da3: $56
    ld a, $76                                     ; $6da4: $3e $76
    ld d, $7e                                     ; $6da6: $16 $7e
    ld d, a                                       ; $6da8: $57
    inc c                                         ; $6da9: $0c
    dec a                                         ; $6daa: $3d
    or h                                          ; $6dab: $b4
    cp $f3                                        ; $6dac: $fe $f3
    ld [hl], d                                    ; $6dae: $72
    ld h, c                                       ; $6daf: $61
    dec a                                         ; $6db0: $3d
    ld l, a                                       ; $6db1: $6f
    db $10                                        ; $6db2: $10
    inc a                                         ; $6db3: $3c
    pop af                                        ; $6db4: $f1
    rra                                           ; $6db5: $1f
    reti                                          ; $6db6: $d9


    cp d                                          ; $6db7: $ba
    and a                                         ; $6db8: $a7
    rst $18                                       ; $6db9: $df
    and h                                         ; $6dba: $a4
    inc hl                                        ; $6dbb: $23
    halt                                          ; $6dbc: $76
    ld a, l                                       ; $6dbd: $7d
    ld a, h                                       ; $6dbe: $7c
    ld d, d                                       ; $6dbf: $52
    call $1f27                                    ; $6dc0: $cd $27 $1f
    and [hl]                                      ; $6dc3: $a6
    push af                                       ; $6dc4: $f5
    rst $20                                       ; $6dc5: $e7
    push hl                                       ; $6dc6: $e5
    ld d, a                                       ; $6dc7: $57
    add hl, de                                    ; $6dc8: $19
    add c                                         ; $6dc9: $81
    rst $20                                       ; $6dca: $e7
    xor [hl]                                      ; $6dcb: $ae
    ld l, l                                       ; $6dcc: $6d
    ld a, h                                       ; $6dcd: $7c
    rst $10                                       ; $6dce: $d7
    rst $00                                       ; $6dcf: $c7
    rst $18                                       ; $6dd0: $df
    jr jr_027_6dea                                ; $6dd1: $18 $17

    ld l, d                                       ; $6dd3: $6a
    db $fd                                        ; $6dd4: $fd
    rst $10                                       ; $6dd5: $d7
    and h                                         ; $6dd6: $a4
    sbc c                                         ; $6dd7: $99
    db $fd                                        ; $6dd8: $fd
    rra                                           ; $6dd9: $1f
    rst $10                                       ; $6dda: $d7
    ld a, [hl]                                    ; $6ddb: $7e
    rst $30                                       ; $6ddc: $f7
    rla                                           ; $6ddd: $17
    add h                                         ; $6dde: $84
    ld bc, $8a3d                                  ; $6ddf: $01 $3d $8a
    ld d, d                                       ; $6de2: $52
    ld a, l                                       ; $6de3: $7d
    ld c, l                                       ; $6de4: $4d
    ld a, [de]                                    ; $6de5: $1a
    xor $4e                                       ; $6de6: $ee $4e
    ld d, [hl]                                    ; $6de8: $56
    and [hl]                                      ; $6de9: $a6

jr_027_6dea:
    pop hl                                        ; $6dea: $e1
    cp d                                          ; $6deb: $ba
    ld h, a                                       ; $6dec: $67
    ld l, b                                       ; $6ded: $68
    swap a                                        ; $6dee: $cb $37
    ld [$9603], sp                                ; $6df0: $08 $03 $96
    ld a, c                                       ; $6df3: $79
    ld b, [hl]                                    ; $6df4: $46
    or [hl]                                       ; $6df5: $b6
    ld h, $cd                                     ; $6df6: $26 $cd
    cp h                                          ; $6df8: $bc
    ld e, h                                       ; $6df9: $5c
    jr jr_027_6d9b                                ; $6dfa: $18 $9f

    ld h, $b2                                     ; $6dfc: $26 $b2
    dec d                                         ; $6dfe: $15
    db $ed                                        ; $6dff: $ed
    ld [hl], h                                    ; $6e00: $74
    sbc [hl]                                      ; $6e01: $9e
    db $10                                        ; $6e02: $10
    ld b, $c7                                     ; $6e03: $06 $c7
    db $e4                                        ; $6e05: $e4
    sbc d                                         ; $6e06: $9a
    inc [hl]                                      ; $6e07: $34
    xor e                                         ; $6e08: $ab
    ld d, e                                       ; $6e09: $53
    ld a, [c]                                     ; $6e0a: $f2
    dec hl                                        ; $6e0b: $2b
    ret                                           ; $6e0c: $c9


    rst $08                                       ; $6e0d: $cf
    ld [hl-], a                                   ; $6e0e: $32
    ld a, $4d                                     ; $6e0f: $3e $4d
    ld h, h                                       ; $6e11: $64
    sub e                                         ; $6e12: $93
    rrca                                          ; $6e13: $0f
    db $d3                                        ; $6e14: $d3
    ld a, [$55d3]                                 ; $6e15: $fa $d3 $55
    ld b, [hl]                                    ; $6e18: $46
    ldh [$bb], a                                  ; $6e19: $e0 $bb
    ld h, d                                       ; $6e1b: $62
    cp l                                          ; $6e1c: $bd
    jp nc, $a8ec                                  ; $6e1d: $d2 $ec $a8

    db $d3                                        ; $6e20: $d3
    adc a                                         ; $6e21: $8f
    sbc l                                         ; $6e22: $9d
    xor [hl]                                      ; $6e23: $ae
    ld [hl-], a                                   ; $6e24: $32
    ld [bc], a                                    ; $6e25: $02
    rst $08                                       ; $6e26: $cf
    ld e, l                                       ; $6e27: $5d
    rst $30                                       ; $6e28: $f7
    ld [hl], h                                    ; $6e29: $74
    ld a, a                                       ; $6e2a: $7f
    pop hl                                        ; $6e2b: $e1
    ld c, [hl]                                    ; $6e2c: $4e
    adc c                                         ; $6e2d: $89
    call $9eb2                                    ; $6e2e: $cd $b2 $9e
    sub [hl]                                      ; $6e31: $96
    sub [hl]                                      ; $6e32: $96
    sub $59                                       ; $6e33: $d6 $59
    ld d, [hl]                                    ; $6e35: $56
    and a                                         ; $6e36: $a7
    rst $20                                       ; $6e37: $e7
    ld d, a                                       ; $6e38: $57
    sub d                                         ; $6e39: $92
    sbc a                                         ; $6e3a: $9f
    rst $20                                       ; $6e3b: $e7
    db $e4                                        ; $6e3c: $e4
    jp $feb4                                      ; $6e3d: $c3 $b4 $fe


    sbc d                                         ; $6e40: $9a
    inc [hl]                                      ; $6e41: $34
    ld [$bd03], sp                                ; $6e42: $08 $03 $bd
    jp nc, $e4d4                                  ; $6e45: $d2 $d4 $e4

    rlca                                          ; $6e48: $07
    sbc l                                         ; $6e49: $9d
    daa                                           ; $6e4a: $27
    halt                                          ; $6e4b: $76
    add hl, hl                                    ; $6e4c: $29
    sbc b                                         ; $6e4d: $98
    ld l, $a6                                     ; $6e4e: $2e $a6
    cpl                                           ; $6e50: $2f
    db $ed                                        ; $6e51: $ed
    ld sp, hl                                     ; $6e52: $f9
    dec c                                         ; $6e53: $0d
    ld a, a                                       ; $6e54: $7f
    ld l, c                                       ; $6e55: $69
    ld a, h                                       ; $6e56: $7c
    ld l, c                                       ; $6e57: $69
    xor a                                         ; $6e58: $af
    adc d                                         ; $6e59: $8a

Jump_027_6e5a:
    ld a, [bc]                                    ; $6e5a: $0a
    ret nz                                        ; $6e5b: $c0

    ld e, l                                       ; $6e5c: $5d
    xor e                                         ; $6e5d: $ab
    adc d                                         ; $6e5e: $8a
    inc [hl]                                      ; $6e5f: $34
    ld [$9603], sp                                ; $6e60: $08 $03 $96
    sbc d                                         ; $6e63: $9a
    push af                                       ; $6e64: $f5
    rst $10                                       ; $6e65: $d7
    cp $a7                                        ; $6e66: $fe $a7
    ld d, l                                       ; $6e68: $55
    ld b, [hl]                                    ; $6e69: $46
    ldh [rNR24], a                                ; $6e6a: $e0 $19
    ld [hl], a                                    ; $6e6c: $77
    ld b, b                                       ; $6e6d: $40
    rst $10                                       ; $6e6e: $d7
    or [hl]                                       ; $6e6f: $b6
    db $e3                                        ; $6e70: $e3
    inc hl                                        ; $6e71: $23
    inc c                                         ; $6e72: $0c
    dec a                                         ; $6e73: $3d
    ld c, e                                       ; $6e74: $4b
    xor [hl]                                      ; $6e75: $ae
    ld [hl-], a                                   ; $6e76: $32
    ld [bc], a                                    ; $6e77: $02
    rst $08                                       ; $6e78: $cf
    sub $a4                                       ; $6e79: $d6 $a4
    jp hl                                         ; $6e7b: $e9


    adc d                                         ; $6e7c: $8a
    ld bc, $ffdd                                  ; $6e7d: $01 $dd $ff
    xor l                                         ; $6e80: $ad
    rrca                                          ; $6e81: $0f
    ld l, b                                       ; $6e82: $68
    xor l                                         ; $6e83: $ad
    cp a                                          ; $6e84: $bf
    adc [hl]                                      ; $6e85: $8e
    pop af                                        ; $6e86: $f1
    ld a, c                                       ; $6e87: $79
    ld sp, hl                                     ; $6e88: $f9
    ld [hl], l                                    ; $6e89: $75
    inc sp                                        ; $6e8a: $33
    ld [bc], a                                    ; $6e8b: $02
    cp a                                          ; $6e8c: $bf
    or h                                          ; $6e8d: $b4
    rst $20                                       ; $6e8e: $e7
    push hl                                       ; $6e8f: $e5
    ld [hl], a                                    ; $6e90: $77
    ld [hl], h                                    ; $6e91: $74
    ld b, $f7                                     ; $6e92: $06 $f7
    ld h, c                                       ; $6e94: $61
    ld c, c                                       ; $6e95: $49
    dec bc                                        ; $6e96: $0b
    sbc a                                         ; $6e97: $9f
    dec sp                                        ; $6e98: $3b
    dec h                                         ; $6e99: $25
    or [hl]                                       ; $6e9a: $b6
    db $d3                                        ; $6e9b: $d3
    call z, $f915                                 ; $6e9c: $cc $15 $f9
    jr jr_027_6ea8                                ; $6e9f: $18 $07

    ld c, a                                       ; $6ea1: $4f
    cp [hl]                                       ; $6ea2: $be
    ldh a, [$e7]                                  ; $6ea3: $f0 $e7
    add hl, sp                                    ; $6ea5: $39
    ei                                            ; $6ea6: $fb
    ld [de], a                                    ; $6ea7: $12

jr_027_6ea8:
    sbc e                                         ; $6ea8: $9b
    xor [hl]                                      ; $6ea9: $ae
    ld [hl-], a                                   ; $6eaa: $32
    ld a, [c]                                     ; $6eab: $f2
    ld l, b                                       ; $6eac: $68
    dec l                                         ; $6ead: $2d
    sub h                                         ; $6eae: $94
    ld [c], a                                     ; $6eaf: $e2
    ld [$3d03], sp                                ; $6eb0: $08 $03 $3d
    adc d                                         ; $6eb3: $8a
    ld a, [$232a]                                 ; $6eb4: $fa $2a $23
    ldh a, [$e3]                                  ; $6eb7: $f0 $e3
    ld l, a                                       ; $6eb9: $6f
    adc h                                         ; $6eba: $8c
    dec bc                                        ; $6ebb: $0b
    or l                                          ; $6ebc: $b5
    cp $6b                                        ; $6ebd: $fe $6b
    jp nc, $7f8c                                  ; $6ebf: $d2 $8c $7f

    xor l                                         ; $6ec2: $ad
    cp a                                          ; $6ec3: $bf
    ld c, h                                       ; $6ec4: $4c
    adc c                                         ; $6ec5: $89
    adc l                                         ; $6ec6: $8d
    ld a, a                                       ; $6ec7: $7f
    xor l                                         ; $6ec8: $ad
    cp a                                          ; $6ec9: $bf
    and b                                         ; $6eca: $a0
    ld e, c                                       ; $6ecb: $59
    sub $7e                                       ; $6ecc: $d6 $7e
    sbc a                                         ; $6ece: $9f
    sub a                                         ; $6ecf: $97
    ld e, a                                       ; $6ed0: $5f
    cp h                                          ; $6ed1: $bc
    ld l, l                                       ; $6ed2: $6d
    ld d, c                                       ; $6ed3: $51
    ld l, c                                       ; $6ed4: $69
    add $a7                                       ; $6ed5: $c6 $a7
    adc c                                         ; $6ed7: $89
    ld l, h                                       ; $6ed8: $6c
    ld b, l                                       ; $6ed9: $45
    xor l                                         ; $6eda: $ad
    ccf                                           ; $6edb: $3f
    ret z                                         ; $6edc: $c8

    ldh a, [$bd]                                  ; $6edd: $f0 $bd
    ld e, h                                       ; $6edf: $5c
    ld a, [bc]                                    ; $6ee0: $0a
    and $45                                       ; $6ee1: $e6 $45
    ld a, l                                       ; $6ee3: $7d
    ld d, l                                       ; $6ee4: $55
    sbc d                                         ; $6ee5: $9a
    ret z                                         ; $6ee6: $c8

    ld d, [hl]                                    ; $6ee7: $56
    ld a, $76                                     ; $6ee8: $3e $76
    db $10                                        ; $6eea: $10
    ld b, $ad                                     ; $6eeb: $06 $ad
    ld a, [hl+]                                   ; $6eed: $2a
    jp nc, $5974                                  ; $6eee: $d2 $74 $59

    rst $08                                       ; $6ef1: $cf
    jp nc, $e54c                                  ; $6ef2: $d2 $4c $e5

    xor c                                         ; $6ef5: $a9
    and $6b                                       ; $6ef6: $e6 $6b
    jp nc, $d2ec                                  ; $6ef8: $d2 $ec $d2

    xor d                                         ; $6efb: $aa
    xor b                                         ; $6efc: $a8
    nop                                           ; $6efd: $00
    ld e, l                                       ; $6efe: $5d
    ld sp, $25dd                                  ; $6eff: $31 $dd $25
    db $ed                                        ; $6f02: $ed
    rlca                                          ; $6f03: $07
    ld c, b                                       ; $6f04: $48
    reti                                          ; $6f05: $d9


    ld l, c                                       ; $6f06: $69
    and $8a                                       ; $6f07: $e6 $8a
    ld a, h                                       ; $6f09: $7c
    adc h                                         ; $6f0a: $8c
    dec hl                                        ; $6f0b: $2b
    ld a, [bc]                                    ; $6f0c: $0a
    add e                                         ; $6f0d: $83
    daa                                           ; $6f0e: $27
    ld e, a                                       ; $6f0f: $5f
    ld hl, sp-$0d                                 ; $6f10: $f8 $f3
    ld e, h                                       ; $6f12: $5c
    ld a, h                                       ; $6f13: $7c
    dec d                                         ; $6f14: $15
    ld e, d                                       ; $6f15: $5a
    ld c, c                                       ; $6f16: $49

Call_027_6f17:
    ld a, [hl]                                    ; $6f17: $7e
    sbc [hl]                                      ; $6f18: $9e
    sub e                                         ; $6f19: $93
    rrca                                          ; $6f1a: $0f
    db $d3                                        ; $6f1b: $d3
    ld a, [$f2f3]                                 ; $6f1c: $fa $f3 $f2
    xor e                                         ; $6f1f: $ab
    adc h                                         ; $6f20: $8c
    ret nz                                        ; $6f21: $c0

    rst $08                                       ; $6f22: $cf
    ld d, d                                       ; $6f23: $52
    dec bc                                        ; $6f24: $0b
    ld h, a                                       ; $6f25: $67
    adc b                                         ; $6f26: $88
    cp l                                          ; $6f27: $bd
    and b                                         ; $6f28: $a0
    or l                                          ; $6f29: $b5
    ld h, $d5                                     ; $6f2a: $26 $d5
    ld sp, $4147                                  ; $6f2c: $31 $47 $41
    ld a, l                                       ; $6f2f: $7d
    daa                                           ; $6f30: $27
    dec hl                                        ; $6f31: $2b
    db $d3                                        ; $6f32: $d3
    ld [hl], b                                    ; $6f33: $70
    db $dd                                        ; $6f34: $dd
    cpl                                           ; $6f35: $2f
    ld d, l                                       ; $6f36: $55
    cp a                                          ; $6f37: $bf
    ld c, e                                       ; $6f38: $4b
    di                                            ; $6f39: $f3
    ld a, [c]                                     ; $6f3a: $f2
    adc e                                         ; $6f3b: $8b
    or a                                          ; $6f3c: $b7
    dec l                                         ; $6f3d: $2d
    ld a, [hl+]                                   ; $6f3e: $2a
    dec c                                         ; $6f3f: $0d
    ld e, d                                       ; $6f40: $5a
    adc a                                         ; $6f41: $8f
    ld a, [c]                                     ; $6f42: $f2
    sub e                                         ; $6f43: $93
    or a                                          ; $6f44: $b7
    ld e, a                                       ; $6f45: $5f
    sbc [hl]                                      ; $6f46: $9e
    xor d                                         ; $6f47: $aa
    rra                                           ; $6f48: $1f
    ld a, h                                       ; $6f49: $7c
    push hl                                       ; $6f4a: $e5
    scf                                           ; $6f4b: $37
    ld l, c                                       ; $6f4c: $69
    ld d, l                                       ; $6f4d: $55
    ld e, d                                       ; $6f4e: $5a
    ld e, a                                       ; $6f4f: $5f
    ld h, b                                       ; $6f50: $60
    ld d, l                                       ; $6f51: $55
    ld a, [de]                                    ; $6f52: $1a
    ld a, [c]                                     ; $6f53: $f2
    sub a                                         ; $6f54: $97
    cp [hl]                                       ; $6f55: $be
    dec hl                                        ; $6f56: $2b
    inc hl                                        ; $6f57: $23
    ldh a, [$b0]                                  ; $6f58: $f0 $b0
    di                                            ; $6f5a: $f3

Jump_027_6f5b:
    call $1ff5                                    ; $6f5b: $cd $f5 $1f
    rst $38                                       ; $6f5e: $ff
    ld sp, $0c22                                  ; $6f5f: $31 $22 $0c
    rst $00                                       ; $6f62: $c7
    db $e4                                        ; $6f63: $e4
    sbc d                                         ; $6f64: $9a
    inc [hl]                                      ; $6f65: $34
    xor e                                         ; $6f66: $ab
    ld d, e                                       ; $6f67: $53
    ld a, [c]                                     ; $6f68: $f2
    dec hl                                        ; $6f69: $2b
    ret                                           ; $6f6a: $c9


    rst $08                                       ; $6f6b: $cf
    or d                                          ; $6f6c: $b2
    ld a, [hl+]                                   ; $6f6d: $2a
    ld c, l                                       ; $6f6e: $4d
    ld h, h                                       ; $6f6f: $64
    sub e                                         ; $6f70: $93
    rrca                                          ; $6f71: $0f
    db $d3                                        ; $6f72: $d3
    ld a, [$55d3]                                 ; $6f73: $fa $d3 $55
    ld b, [hl]                                    ; $6f76: $46
    ldh [$bb], a                                  ; $6f77: $e0 $bb
    ld h, d                                       ; $6f79: $62
    and a                                         ; $6f7a: $a7
    inc h                                         ; $6f7b: $24
    jp c, $c451                                   ; $6f7c: $da $51 $c4

    sub $89                                       ; $6f7f: $d6 $89
    xor a                                         ; $6f81: $af
    ldh a, [$63]                                  ; $6f82: $f0 $63
    ld c, c                                       ; $6f84: $49
    dec [hl]                                      ; $6f85: $35
    ld e, a                                       ; $6f86: $5f
    ld e, e                                       ; $6f87: $5b
    ld l, $05                                     ; $6f88: $2e $05
    cp e                                          ; $6f8a: $bb
    cp [hl]                                       ; $6f8b: $be
    or [hl]                                       ; $6f8c: $b6
    ld d, [hl]                                    ; $6f8d: $56
    push af                                       ; $6f8e: $f5
    ld a, c                                       ; $6f8f: $79
    xor $78                                       ; $6f90: $ee $78
    ld l, c                                       ; $6f92: $69
    ld l, h                                       ; $6f93: $6c
    ei                                            ; $6f94: $fb
    ld [de], a                                    ; $6f95: $12
    ld c, e                                       ; $6f96: $4b
    add hl, de                                    ; $6f97: $19
    ld a, a                                       ; $6f98: $7f
    cp l                                          ; $6f99: $bd
    xor h                                         ; $6f9a: $ac
    ld c, c                                       ; $6f9b: $49
    add e                                         ; $6f9c: $83
    jr nc, jr_027_6fdc                            ; $6f9d: $30 $3d

    ld a, a                                       ; $6f9f: $7f
    ld b, l                                       ; $6fa0: $45
    xor l                                         ; $6fa1: $ad
    ld c, a                                       ; $6fa2: $4f
    dec [hl]                                      ; $6fa3: $35
    ld e, a                                       ; $6fa4: $5f
    ld a, h                                       ; $6fa5: $7c
    dec d                                         ; $6fa6: $15
    ld a, d                                       ; $6fa7: $7a
    ld [hl], $2f                                  ; $6fa8: $36 $2f
    ld [$de6b], a                                 ; $6faa: $ea $6b $de
    ld de, $c706                                  ; $6fad: $11 $06 $c7
    ld a, [de]                                    ; $6fb0: $1a
    ld e, $cd                                     ; $6fb1: $1e $cd
    ld h, d                                       ; $6fb3: $62
    xor a                                         ; $6fb4: $af
    ld c, c                                       ; $6fb5: $49

Jump_027_6fb6:
    ld d, e                                       ; $6fb6: $53
    sub e                                         ; $6fb7: $93
    ld e, a                                       ; $6fb8: $5f
    ld h, l                                       ; $6fb9: $65
    inc b                                         ; $6fba: $04
    sbc [hl]                                      ; $6fbb: $9e
    ld [hl], c                                    ; $6fbc: $71
    rlca                                          ; $6fbd: $07
    xor [hl]                                      ; $6fbe: $ae
    call $d794                                    ; $6fbf: $cd $94 $d7
    ld h, [hl]                                    ; $6fc2: $66
    or [hl]                                       ; $6fc3: $b6
    ld h, h                                       ; $6fc4: $64
    cp b                                          ; $6fc5: $b8
    ldh a, [$bb]                                  ; $6fc6: $f0 $bb
    ld h, b                                       ; $6fc8: $60
    dec a                                         ; $6fc9: $3d
    xor a                                         ; $6fca: $af
    sub a                                         ; $6fcb: $97
    jp hl                                         ; $6fcc: $e9


    xor d                                         ; $6fcd: $aa
    inc [hl]                                      ; $6fce: $34
    db $e4                                        ; $6fcf: $e4
    cpl                                           ; $6fd0: $2f
    ld a, l                                       ; $6fd1: $7d
    ld d, a                                       ; $6fd2: $57
    ld b, [hl]                                    ; $6fd3: $46
    ldh [$b9], a                                  ; $6fd4: $e0 $b9
    dec hl                                        ; $6fd6: $2b
    ret                                           ; $6fd7: $c9


    rst $28                                       ; $6fd8: $ef
    inc hl                                        ; $6fd9: $23
    ld a, h                                       ; $6fda: $7c
    ld d, a                                       ; $6fdb: $57

jr_027_6fdc:
    inc c                                         ; $6fdc: $0c
    db $dd                                        ; $6fdd: $dd
    dec h                                         ; $6fde: $25
    db $ed                                        ; $6fdf: $ed
    rlca                                          ; $6fe0: $07
    ld c, b                                       ; $6fe1: $48
    reti                                          ; $6fe2: $d9


    ld l, c                                       ; $6fe3: $69
    and $8a                                       ; $6fe4: $e6 $8a
    ld a, h                                       ; $6fe6: $7c
    adc h                                         ; $6fe7: $8c
    db $e3                                        ; $6fe8: $e3
    db $d3                                        ; $6fe9: $d3
    ld b, h                                       ; $6fea: $44
    or [hl]                                       ; $6feb: $b6
    ld a, [hl-]                                   ; $6fec: $3a
    dec h                                         ; $6fed: $25
    adc a                                         ; $6fee: $8f
    jr nc, jr_027_7018                            ; $6fef: $30 $27

    ld h, l                                       ; $6ff1: $65
    sub $77                                       ; $6ff2: $d6 $77
    ld l, c                                       ; $6ff4: $69
    ld e, [hl]                                    ; $6ff5: $5e
    ld a, [hl]                                    ; $6ff6: $7e
    pop af                                        ; $6ff7: $f1
    or [hl]                                       ; $6ff8: $b6
    ld b, l                                       ; $6ff9: $45
    and l                                         ; $6ffa: $a5
    ld b, c                                       ; $6ffb: $41
    db $eb                                        ; $6ffc: $eb
    ld d, c                                       ; $6ffd: $51
    cp [hl]                                       ; $6ffe: $be
    ld e, c                                       ; $6fff: $59
    ld d, c                                       ; $7000: $51
    db $eb                                        ; $7001: $eb
    xor a                                         ; $7002: $af
    sbc l                                         ; $7003: $9d
    ld e, c                                       ; $7004: $59
    add a                                         ; $7005: $87
    ld l, c                                       ; $7006: $69
    dec sp                                        ; $7007: $3b
    adc l                                         ; $7008: $8d
    rst $28                                       ; $7009: $ef
    xor l                                         ; $700a: $ad

Jump_027_700b:
    cpl                                           ; $700b: $2f
    adc l                                         ; $700c: $8d
    sub a                                         ; $700d: $97
    ld c, e                                       ; $700e: $4b
    ld bc, $96c2                                  ; $700f: $01 $c2 $96
    ld e, d                                       ; $7012: $5a
    cp b                                          ; $7013: $b8
    ld a, [c]                                     ; $7014: $f2
    ld a, [c]                                     ; $7015: $f2
    di                                            ; $7016: $f3
    sbc h                                         ; $7017: $9c

jr_027_7018:
    inc a                                         ; $7018: $3c
    cp h                                          ; $7019: $bc
    ld c, d                                       ; $701a: $4a
    ld d, l                                       ; $701b: $55
    ld d, [hl]                                    ; $701c: $56
    sub d                                         ; $701d: $92
    sbc a                                         ; $701e: $9f
    rst $20                                       ; $701f: $e7
    db $e4                                        ; $7020: $e4
    jp $feb4                                      ; $7021: $c3 $b4 $fe


    ld [hl], h                                    ; $7024: $74
    sub l                                         ; $7025: $95
    ld de, $aef8                                  ; $7026: $11 $f8 $ae
    ld l, e                                       ; $7029: $6b
    and c                                         ; $702a: $a1
    ld l, e                                       ; $702b: $6b
    db $db                                        ; $702c: $db
    pop af                                        ; $702d: $f1
    ld de, $9606                                  ; $702e: $11 $06 $96
    pop af                                        ; $7031: $f1
    ld l, c                                       ; $7032: $69
    ld [hl+], a                                   ; $7033: $22
    sbc e                                         ; $7034: $9b
    ld bc, $31a3                                  ; $7035: $01 $a3 $31
    ld [hl], $93                                  ; $7038: $36 $93
    or a                                          ; $703a: $b7

jr_027_703b:
    ld e, a                                       ; $703b: $5f
    sub $a4                                       ; $703c: $d6 $a4
    sbc c                                         ; $703e: $99
    rst $20                                       ; $703f: $e7
    cp h                                          ; $7040: $bc
    db $fc                                        ; $7041: $fc
    adc $e8                                       ; $7042: $ce $e8
    jr nc, jr_027_703b                            ; $7044: $30 $f5

    ld h, a                                       ; $7046: $67
    db $eb                                        ; $7047: $eb
    sub [hl]                                      ; $7048: $96
    add [hl]                                      ; $7049: $86
    db $fc                                        ; $704a: $fc
    and l                                         ; $704b: $a5
    rst $28                                       ; $704c: $ef
    ld l, [hl]                                    ; $704d: $6e
    ld b, [hl]                                    ; $704e: $46
    ldh [$d7], a                                  ; $704f: $e0 $d7
    xor d                                         ; $7051: $aa
    call nz, $99da                                ; $7052: $c4 $da $99
    ld [hl], l                                    ; $7055: $75
    xor $5a                                       ; $7056: $ee $5a
    cp [hl]                                       ; $7058: $be
    ld c, d                                       ; $7059: $4a
    ld h, d                                       ; $705a: $62
    dec sp                                        ; $705b: $3b
    db $fd                                        ; $705c: $fd
    xor l                                         ; $705d: $ad
    rla                                           ; $705e: $17
    sbc [hl]                                      ; $705f: $9e
    db $ed                                        ; $7060: $ed
    ld e, b                                       ; $7061: $58
    halt                                          ; $7062: $76
    db $fd                                        ; $7063: $fd
    ld h, $71                                     ; $7064: $26 $71
    rst $10                                       ; $7066: $d7
    ld [hl], $be                                  ; $7067: $36 $be
    db $eb                                        ; $7069: $eb
    dec hl                                        ; $706a: $2b
    ld a, [bc]                                    ; $706b: $0a
    ld l, e                                       ; $706c: $6b
    rst $38                                       ; $706d: $ff
    db $d3                                        ; $706e: $d3
    jp nz, Jump_027_700b                          ; $706f: $c2 $0b $70

    add hl, hl                                    ; $7072: $29
    sbc b                                         ; $7073: $98
    dec l                                         ; $7074: $2d
    add hl, de                                    ; $7075: $19
    adc $cb                                       ; $7076: $ce $cb
    rrca                                          ; $7078: $0f

jr_027_7079:
    jp z, $eb47                                   ; $7079: $ca $47 $eb

    jp $94ec                                      ; $707c: $c3 $ec $94


    ld b, c                                       ; $707f: $41
    add [hl]                                      ; $7080: $86
    ccf                                           ; $7081: $3f
    cp a                                          ; $7082: $bf
    pop hl                                        ; $7083: $e1
    adc a                                         ; $7084: $8f
    sub d                                         ; $7085: $92
    ld b, a                                       ; $7086: $47
    jr jr_027_70c6                                ; $7087: $18 $3d

    ld c, e                                       ; $7089: $4b
    xor [hl]                                      ; $708a: $ae
    jr z, jr_027_7079                             ; $708b: $28 $ec

    ld a, [$f2aa]                                 ; $708d: $fa $aa $f2
    ld d, l                                       ; $7090: $55
    db $fd                                        ; $7091: $fd
    reti                                          ; $7092: $d9


    jp nc, $d778                                  ; $7093: $d2 $78 $d7

    or l                                          ; $7096: $b5
    ld h, $d5                                     ; $7097: $26 $d5
    ld de, $a706                                  ; $7099: $11 $06 $a7
    db $e4                                        ; $709c: $e4
    sub d                                         ; $709d: $92
    ld e, $cd                                     ; $709e: $1e $cd
    ld [c], a                                     ; $70a0: $e2
    db $e3                                        ; $70a1: $e3
    dec d                                         ; $70a2: $15
    or $d7                                        ; $70a3: $f6 $d7
    set 1, e                                      ; $70a5: $cb $cb
    ret nz                                        ; $70a7: $c0

jr_027_70a8:
    inc sp                                        ; $70a8: $33
    ld a, $2d                                     ; $70a9: $3e $2d
    ld h, l                                       ; $70ab: $65
    sub b                                         ; $70ac: $90
    pop hl                                        ; $70ad: $e1
    daa                                           ; $70ae: $27
    db $fd                                        ; $70af: $fd
    ld l, $ac                                     ; $70b0: $2e $ac
    ld h, e                                       ; $70b2: $63
    ld h, d                                       ; $70b3: $62
    cp h                                          ; $70b4: $bc
    inc d                                         ; $70b5: $14
    ld c, h                                       ; $70b6: $4c
    rst $10                                       ; $70b7: $d7
    ld de, $3aa5                                  ; $70b8: $11 $a5 $3a
    sbc d                                         ; $70bb: $9a
    and l                                         ; $70bc: $a5
    ld h, [hl]                                    ; $70bd: $66
    db $fd                                        ; $70be: $fd
    cp l                                          ; $70bf: $bd
    push af                                       ; $70c0: $f5
    ld l, c                                       ; $70c1: $69
    ld l, c                                       ; $70c2: $69
    db $db                                        ; $70c3: $db
    cpl                                           ; $70c4: $2f
    rst $08                                       ; $70c5: $cf

jr_027_70c6:
    and [hl]                                      ; $70c6: $a6
    sub e                                         ; $70c7: $93
    rst $20                                       ; $70c8: $e7
    ld d, l                                       ; $70c9: $55
    ret c                                         ; $70ca: $d8

    db $ec                                        ; $70cb: $ec
    sub h                                         ; $70cc: $94

jr_027_70cd:
    ld e, l                                       ; $70cd: $5d
    add a                                         ; $70ce: $87
    ret                                           ; $70cf: $c9


    cp e                                          ; $70d0: $bb
    ld de, $3b42                                  ; $70d1: $11 $42 $3b
    adc d                                         ; $70d4: $8a
    ret c                                         ; $70d5: $d8

    jr z, jr_027_712f                             ; $70d6: $28 $57

    sub d                                         ; $70d8: $92
    ld [$8297], a                                 ; $70d9: $ea $97 $82
    ld e, l                                       ; $70dc: $5d
    sbc d                                         ; $70dd: $9a
    sub a                                         ; $70de: $97
    ld e, a                                       ; $70df: $5f
    cp h                                          ; $70e0: $bc
    ld l, l                                       ; $70e1: $6d
    ld d, c                                       ; $70e2: $51
    ld l, c                                       ; $70e3: $69
    cp b                                          ; $70e4: $b8
    db $eb                                        ; $70e5: $eb
    call nz, $7857                                ; $70e6: $c4 $57 $78
    add h                                         ; $70e9: $84
    ld bc, $c547                                  ; $70ea: $01 $47 $c5
    jr c, jr_027_70a8                             ; $70ed: $38 $b9

    ld b, c                                       ; $70ef: $41
    ld [hl], c                                    ; $70f0: $71
    xor $ba                                       ; $70f1: $ee $ba
    rst $38                                       ; $70f3: $ff
    ld e, e                                       ; $70f4: $5b
    rra                                           ; $70f5: $1f
    cp b                                          ; $70f6: $b8
    ld l, e                                       ; $70f7: $6b
    jp nc, $acd4                                  ; $70f8: $d2 $d4 $ac

    cp a                                          ; $70fb: $bf
    and d                                         ; $70fc: $a2
    ld l, h                                       ; $70fd: $6c
    ld c, l                                       ; $70fe: $4d
    ld a, [de]                                    ; $70ff: $1a
    sbc c                                         ; $7100: $99
    ld l, l                                       ; $7101: $6d
    ld l, b                                       ; $7102: $68
    ld a, l                                       ; $7103: $7d
    nop                                           ; $7104: $00
    and l                                         ; $7105: $a5
    ld a, b                                       ; $7106: $78
    sbc a                                         ; $7107: $9f
    ld l, b                                       ; $7108: $68
    and a                                         ; $7109: $a7
    inc h                                         ; $710a: $24
    cp a                                          ; $710b: $bf
    sub d                                         ; $710c: $92
    db $fc                                        ; $710d: $fc
    ld a, [hl+]                                   ; $710e: $2a
    and l                                         ; $710f: $a5
    ld e, c                                       ; $7110: $59
    ld d, $bc                                     ; $7111: $16 $bc
    ld c, a                                       ; $7113: $4f
    ld l, $5b                                     ; $7114: $2e $5b
    jp c, Jump_027_72f3                           ; $7116: $da $f3 $72

    ld h, c                                       ; $7119: $61
    sub l                                         ; $711a: $95
    ld de, $aef8                                  ; $711b: $11 $f8 $ae
    jr jr_027_70cd                                ; $711e: $18 $ad

    ld a, [bc]                                    ; $7120: $0a
    di                                            ; $7121: $f3
    ld a, [c]                                     ; $7122: $f2
    cp e                                          ; $7123: $bb
    ld d, l                                       ; $7124: $55
    dec a                                         ; $7125: $3d
    cp $ec                                        ; $7126: $fe $ec
    dec hl                                        ; $7128: $2b
    ldh [$f7], a                                  ; $7129: $e0 $f7
    rla                                           ; $712b: $17
    inc sp                                        ; $712c: $33
    db $eb                                        ; $712d: $eb
    rst $08                                       ; $712e: $cf

jr_027_712f:
    halt                                          ; $712f: $76
    ld l, c                                       ; $7130: $69
    ld e, [hl]                                    ; $7131: $5e
    ld a, [hl]                                    ; $7132: $7e
    pop af                                        ; $7133: $f1
    or [hl]                                       ; $7134: $b6
    ld b, l                                       ; $7135: $45
    and l                                         ; $7136: $a5
    jp hl                                         ; $7137: $e9


    adc d                                         ; $7138: $8a
    ld bc, $1ebd                                  ; $7139: $01 $bd $1e
    and $e5                                       ; $713c: $e6 $e5
    ld [hl], a                                    ; $713e: $77
    xor e                                         ; $713f: $ab
    ld a, d                                       ; $7140: $7a
    ld a, h                                       ; $7141: $7c
    add h                                         ; $7142: $84
    sub b                                         ; $7143: $90
    add hl, bc                                    ; $7144: $09
    cp c                                          ; $7145: $b9
    ld l, e                                       ; $7146: $6b
    ld e, $66                                     ; $7147: $1e $66
    ld e, c                                       ; $7149: $59
    ld d, c                                       ; $714a: $51
    db $eb                                        ; $714b: $eb
    and e                                         ; $714c: $a3
    push af                                       ; $714d: $f5
    jr z, jr_027_718f                             ; $714e: $28 $3f

    cp c                                          ; $7150: $b9
    ld b, c                                       ; $7151: $41
    pop af                                        ; $7152: $f1
    or l                                          ; $7153: $b5
    inc sp                                        ; $7154: $33
    db $eb                                        ; $7155: $eb
    cp e                                          ; $7156: $bb
    ld b, b                                       ; $7157: $40
    dec [hl]                                      ; $7158: $35
    sbc a                                         ; $7159: $9f
    sub a                                         ; $715a: $97
    sub a                                         ; $715b: $97
    ld b, a                                       ; $715c: $47
    dec sp                                        ; $715d: $3b
    xor d                                         ; $715e: $aa
    ld a, [hl+]                                   ; $715f: $2a
    sbc c                                         ; $7160: $99
    ld e, l                                       ; $7161: $5d
    jr nc, @-$68                                  ; $7162: $30 $96

    or c                                          ; $7164: $b1
    and h                                         ; $7165: $a4
    sbc d                                         ; $7166: $9a
    xor a                                         ; $7167: $af
    xor b                                         ; $7168: $a8
    push af                                       ; $7169: $f5
    ld [hl], a                                    ; $716a: $77
    dec e                                         ; $716b: $1d
    db $ed                                        ; $716c: $ed
    sub h                                         ; $716d: $94
    db $f4                                        ; $716e: $f4
    ret                                           ; $716f: $c9


    dec c                                         ; $7170: $0d
    adc d                                         ; $7171: $8a
    adc a                                         ; $7172: $8f
    sub d                                         ; $7173: $92
    rst $20                                       ; $7174: $e7
    ld c, [hl]                                    ; $7175: $4e
    xor c                                         ; $7176: $a9
    pop hl                                        ; $7177: $e1
    or l                                          ; $7178: $b5
    ld b, c                                       ; $7179: $41
    db $eb                                        ; $717a: $eb
    ld e, c                                       ; $717b: $59
    ld e, [hl]                                    ; $717c: $5e
    ld a, [hl]                                    ; $717d: $7e
    ld d, l                                       ; $717e: $55
    sbc d                                         ; $717f: $9a
    ret z                                         ; $7180: $c8

    halt                                          ; $7181: $76
    ld a, l                                       ; $7182: $7d
    db $ed                                        ; $7183: $ed
    rst $28                                       ; $7184: $ef
    cp d                                          ; $7185: $ba
    sub e                                         ; $7186: $93
    or l                                          ; $7187: $b5
    ld l, c                                       ; $7188: $69
    rst $38                                       ; $7189: $ff
    ld [hl], h                                    ; $718a: $74
    daa                                           ; $718b: $27
    sbc e                                         ; $718c: $9b
    jr nz, @-$76                                  ; $718d: $20 $88

jr_027_718f:
    cp a                                          ; $718f: $bf
    dec bc                                        ; $7190: $0b
    inc bc                                        ; $7191: $03
    scf                                           ; $7192: $37
    xor h                                         ; $7193: $ac
    cp c                                          ; $7194: $b9
    inc d                                         ; $7195: $14
    db $ec                                        ; $7196: $ec
    ld a, [hl-]                                   ; $7197: $3a
    ld b, d                                       ; $7198: $42
    ld [$9603], sp                                ; $7199: $08 $03 $96
    dec d                                         ; $719c: $15
    or l                                          ; $719d: $b5
    cp $bc                                        ; $719e: $fe $bc
    db $fc                                        ; $71a0: $fc
    cp d                                          ; $71a1: $ba
    add hl, de                                    ; $71a2: $19
    add c                                         ; $71a3: $81
    ld e, a                                       ; $71a4: $5f
    jp c, $f2f3                                   ; $71a5: $da $f3 $f2

    dec sp                                        ; $71a8: $3b
    ld a, [hl-]                                   ; $71a9: $3a
    add e                                         ; $71aa: $83
    ei                                            ; $71ab: $fb
    add b                                         ; $71ac: $80
    sub $42                                       ; $71ad: $d6 $42
    rst $10                                       ; $71af: $d7
    or [hl]                                       ; $71b0: $b6
    db $e3                                        ; $71b1: $e3
    and e                                         ; $71b2: $a3
    ld [hl], l                                    ; $71b3: $75
    sub a                                         ; $71b4: $97
    or h                                          ; $71b5: $b4
    pop de                                        ; $71b6: $d1
    ld c, [hl]                                    ; $71b7: $4e
    inc sp                                        ; $71b8: $33
    ld d, a                                       ; $71b9: $57
    db $e4                                        ; $71ba: $e4
    ld h, e                                       ; $71bb: $63
    inc e                                         ; $71bc: $1c
    inc a                                         ; $71bd: $3c
    ld sp, hl                                     ; $71be: $f9
    jp nz, $e79f                                  ; $71bf: $c2 $9f $e7

    db $ec                                        ; $71c2: $ec
    ld c, e                                       ; $71c3: $4b
    ld l, h                                       ; $71c4: $6c
    cp d                                          ; $71c5: $ba
    ld a, [hl+]                                   ; $71c6: $2a
    dec c                                         ; $71c7: $0d
    ld sp, hl                                     ; $71c8: $f9
    ld c, e                                       ; $71c9: $4b
    rst $18                                       ; $71ca: $df
    sub l                                         ; $71cb: $95
    ld de, $b478                                  ; $71cc: $11 $78 $b4
    sub $a4                                       ; $71cf: $d6 $a4
    ld a, [hl-]                                   ; $71d1: $3a
    ld e, d                                       ; $71d2: $5a
    scf                                           ; $71d3: $37
    and l                                         ; $71d4: $a5
    dec [hl]                                      ; $71d5: $35
    ld l, c                                       ; $71d6: $69
    ld d, [hl]                                    ; $71d7: $56
    ld a, $76                                     ; $71d8: $3e $76
    ld d, $7e                                     ; $71da: $16 $7e
    ld d, a                                       ; $71dc: $57
    inc c                                         ; $71dd: $0c
    db $dd                                        ; $71de: $dd
    ld d, h                                       ; $71df: $54
    sbc $36                                       ; $71e0: $de $36
    ld [hl], c                                    ; $71e2: $71
    ld l, c                                       ; $71e3: $69
    rst $08                                       ; $71e4: $cf
    set 5, a                                      ; $71e5: $cb $ef
    ld h, h                                       ; $71e7: $64
    inc de                                        ; $71e8: $13
    inc b                                         ; $71e9: $04
    pop af                                        ; $71ea: $f1
    rst $10                                       ; $71eb: $d7
    ld [c], a                                     ; $71ec: $e2
    add [hl]                                      ; $71ed: $86
    db $dd                                        ; $71ee: $dd
    add a                                         ; $71ef: $87
    ld d, l                                       ; $71f0: $55
    ld d, c                                       ; $71f1: $51
    ld bc, $3324                                  ; $71f2: $01 $24 $33
    ld b, h                                       ; $71f5: $44
    sbc e                                         ; $71f6: $9b
    and l                                         ; $71f7: $a5
    ld h, [hl]                                    ; $71f8: $66
    db $fd                                        ; $71f9: $fd
    pop bc                                        ; $71fa: $c1
    ccf                                           ; $71fb: $3f
    xor l                                         ; $71fc: $ad
    ei                                            ; $71fd: $fb
    cp a                                          ; $71fe: $bf
    push af                                       ; $71ff: $f5
    ld h, c                                       ; $7200: $61
    ld b, c                                       ; $7201: $41
    ld e, [hl]                                    ; $7202: $5e
    ld a, [bc]                                    ; $7203: $0a
    halt                                          ; $7204: $76
    ld l, c                                       ; $7205: $69
    ld c, d                                       ; $7206: $4a
    ld l, h                                       ; $7207: $6c
    ld l, c                                       ; $7208: $69
    ld a, h                                       ; $7209: $7c
    ld l, c                                       ; $720a: $69
    rst $28                                       ; $720b: $ef
    ld a, [$abe4]                                 ; $720c: $fa $e4 $ab
    daa                                           ; $720f: $27
    adc a                                         ; $7210: $8f
    dec c                                         ; $7211: $0d
    jp nz, $6527                                  ; $7212: $c2 $27 $65

    sub $2f                                       ; $7215: $d6 $2f
    dec b                                         ; $7217: $05
    or e                                          ; $7218: $b3
    ld d, e                                       ; $7219: $53
    ld b, $19                                     ; $721a: $06 $19
    cp [hl]                                       ; $721c: $be
    sub a                                         ; $721d: $97
    ld c, e                                       ; $721e: $4b
    pop bc                                        ; $721f: $c1
    inc a                                         ; $7220: $3c
    daa                                           ; $7221: $27
    xor a                                         ; $7222: $af
    xor h                                         ; $7223: $ac
    dec hl                                        ; $7224: $2b
    ld b, $3d                                     ; $7225: $06 $3d
    set 1, e                                      ; $7227: $cb $cb
    rst $28                                       ; $7229: $ef
    jp nz, $fcbc                                  ; $722a: $c2 $bc $fc

    jp c, Jump_027_7599                           ; $722d: $da $99 $75

    xor $ba                                       ; $7230: $ee $ba
    rst $38                                       ; $7232: $ff
    ld e, e                                       ; $7233: $5b
    rra                                           ; $7234: $1f
    cp d                                          ; $7235: $ba
    ld h, d                                       ; $7236: $62
    and a                                         ; $7237: $a7
    cp a                                          ; $7238: $bf
    or d                                          ; $7239: $b2
    ld c, e                                       ; $723a: $4b
    pop bc                                        ; $723b: $c1
    ld l, $0c                                     ; $723c: $2e $0c
    ld c, h                                       ; $723e: $4c
    ld d, l                                       ; $723f: $55
    and [hl]                                      ; $7240: $a6
    ld l, e                                       ; $7241: $6b
    and a                                         ; $7242: $a7
    inc a                                         ; $7243: $3c
    ld e, d                                       ; $7244: $5a
    rrca                                          ; $7245: $0f
    ld l, c                                       ; $7246: $69
    ld b, $19                                     ; $7247: $06 $19
    cp $7a                                        ; $7249: $fe $7a
    sbc h                                         ; $724b: $9c
    cp c                                          ; $724c: $b9
    ld c, e                                       ; $724d: $4b
    ldh [$af], a                                  ; $724e: $e0 $af
    inc c                                         ; $7250: $0c
    ld h, c                                       ; $7251: $61
    dec a                                         ; $7252: $3d
    jp z, $73cb                                   ; $7253: $ca $cb $73

    rst $10                                       ; $7256: $d7
    xor d                                         ; $7257: $aa
    ld [hl+], a                                   ; $7258: $22
    dec c                                         ; $7259: $0d
    ld [hl], a                                    ; $725a: $77
    ld a, [de]                                    ; $725b: $1a
    jp Jump_027_5f04                              ; $725c: $c3 $04 $5f


    sub b                                         ; $725f: $90
    ret                                           ; $7260: $c9


    and [hl]                                      ; $7261: $a6
    jr nc, @+$7c                                  ; $7262: $30 $7a

    ld e, $61                                     ; $7264: $1e $61
    dec a                                         ; $7266: $3d
    adc d                                         ; $7267: $8a
    ld d, d                                       ; $7268: $52
    ld a, l                                       ; $7269: $7d
    ld c, l                                       ; $726a: $4d
    ld a, [de]                                    ; $726b: $1a
    or h                                          ; $726c: $b4
    sub $a4                                       ; $726d: $d6 $a4
    ld a, [hl-]                                   ; $726f: $3a
    ld b, $27                                     ; $7270: $06 $27
    db $dd                                        ; $7272: $dd
    ld a, [$32cf]                                 ; $7273: $fa $cf $32
    ret nc                                        ; $7276: $d0

    res 7, b                                      ; $7277: $cb $b8
    xor e                                         ; $7279: $ab
    ld l, c                                       ; $727a: $69
    inc c                                         ; $727b: $0c
    inc de                                        ; $727c: $13
    cp h                                          ; $727d: $bc
    add [hl]                                      ; $727e: $86
    jr nc, @-$51                                  ; $727f: $30 $ad

    rra                                           ; $7281: $1f
    ld h, e                                       ; $7282: $63
    ld [hl], d                                    ; $7283: $72
    rst $10                                       ; $7284: $d7
    xor d                                         ; $7285: $aa
    ld [hl+], a                                   ; $7286: $22
    dec c                                         ; $7287: $0d
    jp c, $ff71                                   ; $7288: $da $71 $ff

    pop af                                        ; $728b: $f1
    ld d, d                                       ; $728c: $52
    or b                                          ; $728d: $b0
    or $bb                                        ; $728e: $f6 $bb
    cp a                                          ; $7290: $bf
    ld [hl], h                                    ; $7291: $74
    push bc                                       ; $7292: $c5
    cp l                                          ; $7293: $bd
    ld e, $d0                                     ; $7294: $1e $d0
    ld e, d                                       ; $7296: $5a
    jr z, @-$39                                   ; $7297: $28 $c5

    pop de                                        ; $7299: $d1
    adc [hl]                                      ; $729a: $8e
    ld [hl], $3e                                  ; $729b: $36 $3e
    ld c, d                                       ; $729d: $4a
    sbc a                                         ; $729e: $9f
    add $38                                       ; $729f: $c6 $38
    cpl                                           ; $72a1: $2f
    ccf                                           ; $72a2: $3f
    ld e, [hl]                                    ; $72a3: $5e
    dec de                                        ; $72a4: $1b
    add h                                         ; $72a5: $84
    ld bc, $1547                                  ; $72a6: $01 $47 $15
    xor $bc                                       ; $72a9: $ee $bc
    xor b                                         ; $72ab: $a8
    rst $08                                       ; $72ac: $cf
    cp $8f                                        ; $72ad: $fe $8f
    or b                                          ; $72af: $b0
    or $bb                                        ; $72b0: $f6 $bb
    cp a                                          ; $72b2: $bf
    and b                                         ; $72b3: $a0
    ld e, c                                       ; $72b4: $59
    and $e5                                       ; $72b5: $e6 $e5
    ld d, d                                       ; $72b7: $52
    ld a, l                                       ; $72b8: $7d
    sub [hl]                                      ; $72b9: $96
    ld d, l                                       ; $72ba: $55
    ld c, d                                       ; $72bb: $4a
    sub e                                         ; $72bc: $93
    rrca                                          ; $72bd: $0f
    ccf                                           ; $72be: $3f
    ld l, h                                       ; $72bf: $6c
    cp a                                          ; $72c0: $bf
    call z, $85cb                                 ; $72c1: $cc $cb $85
    ld b, c                                       ; $72c4: $41
    rst $20                                       ; $72c5: $e7
    ld h, e                                       ; $72c6: $63
    db $e4                                        ; $72c7: $e4
    adc $33                                       ; $72c8: $ce $33
    ld de, $9606                                  ; $72ca: $11 $06 $96
    reti                                          ; $72cd: $d9


    ld l, c                                       ; $72ce: $69
    adc b                                         ; $72cf: $88
    call $afcb                                    ; $72d0: $cd $cb $af

jr_027_72d3:
    ld c, d                                       ; $72d3: $4a
    ld b, e                                       ; $72d4: $43
    cp $d2                                        ; $72d5: $fe $d2
    ld [hl], a                                    ; $72d7: $77
    ld h, l                                       ; $72d8: $65
    inc b                                         ; $72d9: $04
    ld a, [hl]                                    ; $72da: $7e
    db $ed                                        ; $72db: $ed
    call z, $c23a                                 ; $72dc: $cc $3a $c2
    dec a                                         ; $72df: $3d
    set 1, e                                      ; $72e0: $cb $cb
    ld e, e                                       ; $72e2: $5b
    ld e, a                                       ; $72e3: $5f
    add $2e                                       ; $72e4: $c6 $2e
    ld e, e                                       ; $72e6: $5b
    sub e                                         ; $72e7: $93
    ld h, [hl]                                    ; $72e8: $66
    or $25                                        ; $72e9: $f6 $25
    ld [hl], $2f                                  ; $72eb: $36 $2f
    rla                                           ; $72ed: $17
    cp d                                          ; $72ee: $ba
    ld h, d                                       ; $72ef: $62
    db $dd                                        ; $72f0: $dd
    rst $38                                       ; $72f1: $ff
    xor l                                         ; $72f2: $ad

Jump_027_72f3:
    rrca                                          ; $72f3: $0f
    dec hl                                        ; $72f4: $2b
    jp z, Jump_000_2e56                           ; $72f5: $ca $56 $2e

    ld h, e                                       ; $72f8: $63
    ld c, a                                       ; $72f9: $4f
    cp e                                          ; $72fa: $bb
    cp [hl]                                       ; $72fb: $be
    ld c, e                                       ; $72fc: $4b
    di                                            ; $72fd: $f3
    ld a, [c]                                     ; $72fe: $f2
    dec sp                                        ; $72ff: $3b

jr_027_7300:
    reti                                          ; $7300: $d9


    inc b                                         ; $7301: $04
    ld b, c                                       ; $7302: $41
    db $fc                                        ; $7303: $fc
    or l                                          ; $7304: $b5
    cp b                                          ; $7305: $b8
    ld h, c                                       ; $7306: $61
    rst $30                                       ; $7307: $f7
    ld h, c                                       ; $7308: $61
    ld d, l                                       ; $7309: $55
    ld d, h                                       ; $730a: $54
    nop                                           ; $730b: $00
    ret                                           ; $730c: $c9


    inc c                                         ; $730d: $0c
    ld de, $9606                                  ; $730e: $11 $06 $96
    add l                                         ; $7311: $85
    scf                                           ; $7312: $37
    jr z, jr_027_72d3                             ; $7313: $28 $be

    and d                                         ; $7315: $a2
    sub $5f                                       ; $7316: $d6 $5f
    sbc l                                         ; $7318: $9d
    sub d                                         ; $7319: $92
    and a                                         ; $731a: $a7
    ld e, l                                       ; $731b: $5d
    rra                                           ; $731c: $1f
    xor a                                         ; $731d: $af
    or b                                          ; $731e: $b0
    xor $ff                                       ; $731f: $ee $ff
    sub $07                                       ; $7321: $d6 $07
    or h                                          ; $7323: $b4
    cp $0f                                        ; $7324: $fe $0f
    ld e, d                                       ; $7326: $5a
    ld c, c                                       ; $7327: $49
    inc bc                                        ; $7328: $03
    cp a                                          ; $7329: $bf
    ld c, [hl]                                    ; $732a: $4e
    ld e, [hl]                                    ; $732b: $5e
    ld [hl], d                                    ; $732c: $72
    sbc b                                         ; $732d: $98
    rst $20                                       ; $732e: $e7
    adc [hl]                                      ; $732f: $8e
    sub a                                         ; $7330: $97
    add $b6                                       ; $7331: $c6 $b6
    cpl                                           ; $7333: $2f
    or c                                          ; $7334: $b1
    sub h                                         ; $7335: $94
    or l                                          ; $7336: $b5
    cp a                                          ; $7337: $bf
    ld d, d                                       ; $7338: $52
    inc bc                                        ; $7339: $03
    cp a                                          ; $733a: $bf
    ld h, $cd                                     ; $733b: $26 $cd
    db $e4                                        ; $733d: $e4
    xor e                                         ; $733e: $ab
    or h                                          ; $733f: $b4
    cp [hl]                                       ; $7340: $be
    inc a                                         ; $7341: $3c
    sbc e                                         ; $7342: $9b
    ld [de], a                                    ; $7343: $12
    sbc e                                         ; $7344: $9b
    cp h                                          ; $7345: $bc
    dec de                                        ; $7346: $1b
    and c                                         ; $7347: $a1
    ld h, a                                       ; $7348: $67
    inc bc                                        ; $7349: $03
    rst $08                                       ; $734a: $cf
    ld hl, sp-$4c                                 ; $734b: $f8 $b4
    ld a, b                                       ; $734d: $78
    db $db                                        ; $734e: $db
    and d                                         ; $734f: $a2
    jp nc, Jump_000_23ac                          ; $7350: $d2 $ac $23

    reti                                          ; $7353: $d9


    ld a, c                                       ; $7354: $79
    pop af                                        ; $7355: $f1
    ld b, $ed                                     ; $7356: $06 $ed
    ld hl, sp+$5c                                 ; $7358: $f8 $5c
    ld e, e                                       ; $735a: $5b
    xor e                                         ; $735b: $ab
    ld a, [$773c]                                 ; $735c: $fa $3c $77
    call z, $4fdb                                 ; $735f: $cc $db $4f
    push de                                       ; $7362: $d5
    rst $28                                       ; $7363: $ef
    xor b                                         ; $7364: $a8
    ld b, b                                       ; $7365: $40
    cpl                                           ; $7366: $2f
    add c                                         ; $7367: $81
    rst $28                                       ; $7368: $ef
    jr jr_027_7300                                ; $7369: $18 $95

    ld a, [$128e]                                 ; $736b: $fa $8e $12
    add a                                         ; $736e: $87
    ld d, l                                       ; $736f: $55
    ld d, c                                       ; $7370: $51
    ld bc, $b9e6                                  ; $7371: $01 $e6 $b9
    ld a, [hl+]                                   ; $7374: $2a
    jp Jump_027_7c4e                              ; $7375: $c3 $4e $7c


    rst $38                                       ; $7378: $ff
    dec [hl]                                      ; $7379: $35
    ld l, c                                       ; $737a: $69
    ld h, h                                       ; $737b: $64
    ld a, [bc]                                    ; $737c: $0a
    ld [hl], b                                    ; $737d: $70
    inc bc                                        ; $737e: $03
    ld a, [bc]                                    ; $737f: $0a
    sbc a                                         ; $7380: $9f
    inc e                                         ; $7381: $1c
    ld h, c                                       ; $7382: $61
    rst $00                                       ; $7383: $c7
    db $fd                                        ; $7384: $fd
    rst $00                                       ; $7385: $c7
    ld c, e                                       ; $7386: $4b
    pop bc                                        ; $7387: $c1
    jp c, $feef                                   ; $7388: $da $ef $fe

    jp nz, $ab5d                                  ; $738b: $c2 $5d $ab

    adc d                                         ; $738e: $8a
    inc [hl]                                      ; $738f: $34
    ld e, l                                       ; $7390: $5d
    ld sp, $1ebd                                  ; $7391: $31 $bd $1e
    cp b                                          ; $7394: $b8
    or e                                          ; $7395: $b3
    call z, Call_027_434e                         ; $7396: $cc $4e $43
    ld l, h                                       ; $7399: $6c
    ld e, [hl]                                    ; $739a: $5e
    ld a, [hl]                                    ; $739b: $7e
    ld d, l                                       ; $739c: $55
    ld a, [de]                                    ; $739d: $1a
    ld a, [c]                                     ; $739e: $f2
    sub a                                         ; $739f: $97
    cp [hl]                                       ; $73a0: $be
    dec hl                                        ; $73a1: $2b
    inc hl                                        ; $73a2: $23
    ldh a, [$bb]                                  ; $73a3: $f0 $bb
    inc b                                         ; $73a5: $04
    ld l, $a6                                     ; $73a6: $2e $a6
    ld a, [c]                                     ; $73a8: $f2
    sbc e                                         ; $73a9: $9b
    add h                                         ; $73aa: $84
    jr nc, @+$3f                                  ; $73ab: $30 $3d

    ccf                                           ; $73ad: $3f
    add $b1                                       ; $73ae: $c6 $b1
    and h                                         ; $73b0: $a4
    rst $20                                       ; $73b1: $e7
    xor [hl]                                      ; $73b2: $ae
    ld d, l                                       ; $73b3: $55
    ld b, l                                       ; $73b4: $45
    ld a, [de]                                    ; $73b5: $1a
    or h                                          ; $73b6: $b4
    sub e                                         ; $73b7: $93
    sub l                                         ; $73b8: $95
    ld l, c                                       ; $73b9: $69
    cp b                                          ; $73ba: $b8
    xor $97                                       ; $73bb: $ee $97
    xor d                                         ; $73bd: $aa
    rra                                           ; $73be: $1f
    ld a, a                                       ; $73bf: $7f
    ld h, e                                       ; $73c0: $63
    ld e, h                                       ; $73c1: $5c
    ei                                            ; $73c2: $fb
    ld d, a                                       ; $73c3: $57
    or h                                          ; $73c4: $b4
    db $d3                                        ; $73c5: $d3
    ld l, c                                       ; $73c6: $69
    and $b9                                       ; $73c7: $e6 $b9
    and d                                         ; $73c9: $a2
    sub $9f                                       ; $73ca: $d6 $9f

Jump_027_73cc:
jr_027_73cc:
    rla                                           ; $73cc: $17
    push af                                       ; $73cd: $f5
    or l                                          ; $73ce: $b5

Jump_027_73cf:
    inc sp                                        ; $73cf: $33
    db $eb                                        ; $73d0: $eb
    ld l, e                                       ; $73d1: $6b
    ld l, e                                       ; $73d2: $6b
    ld d, l                                       ; $73d3: $55
    ld e, a                                       ; $73d4: $5f
    jp nc, $fcbc                                  ; $73d5: $d2 $bc $fc

    and b                                         ; $73d8: $a0
    ld a, h                                       ; $73d9: $7c
    or h                                          ; $73da: $b4
    ld a, $20                                     ; $73db: $3e $20
    inc c                                         ; $73dd: $0c
    xor l                                         ; $73de: $ad
    ld a, [hl+]                                   ; $73df: $2a
    jp nc, $d974                                  ; $73e0: $d2 $74 $d9

    add hl, hl                                    ; $73e3: $29
    cp c                                          ; $73e4: $b9
    jr nc, jr_027_73cc                            ; $73e5: $30 $e5

    ld d, a                                       ; $73e7: $57
    ld a, [$7d2e]                                 ; $73e8: $fa $2e $7d
    sub a                                         ; $73eb: $97
    and h                                         ; $73ec: $a4
    ld a, [$80a5]                                 ; $73ed: $fa $a5 $80
    dec sp                                        ; $73f0: $3b
    set 4, b                                      ; $73f1: $cb $e0
    rra                                           ; $73f3: $1f
    ld h, c                                       ; $73f4: $61
    sub [hl]                                      ; $73f5: $96
    reti                                          ; $73f6: $d9


    ld l, c                                       ; $73f7: $69
    adc b                                         ; $73f8: $88
    call Call_027_4fcb                            ; $73f9: $cd $cb $4f
    ld l, [hl]                                    ; $73fc: $6e
    ld d, b                                       ; $73fd: $50
    ld a, h                                       ; $73fe: $7c
    db $ed                                        ; $73ff: $ed
    call z, $f8fa                                 ; $7400: $cc $fa $f8
    db $eb                                        ; $7403: $eb
    ld h, l                                       ; $7404: $65
    ld e, [hl]                                    ; $7405: $5e
    ld a, [hl]                                    ; $7406: $7e
    ld [hl], d                                    ; $7407: $72
    add e                                         ; $7408: $83
    ld [c], a                                     ; $7409: $e2
    xor e                                         ; $740a: $ab
    jp nc, $bf90                                  ; $740b: $d2 $90 $bf

    db $f4                                        ; $740e: $f4
    ld e, l                                       ; $740f: $5d
    add hl, de                                    ; $7410: $19
    add c                                         ; $7411: $81
    ld b, a                                       ; $7412: $47
    ld [$b129], sp                                ; $7413: $08 $29 $b1
    ld e, c                                       ; $7416: $59
    ld h, $ef                                     ; $7417: $26 $ef
    ld b, [hl]                                    ; $7419: $46
    add sp, -$27                                  ; $741a: $e8 $d9
    xor [hl]                                      ; $741c: $ae
    rst $08                                       ; $741d: $cf
    ld [hl], e                                    ; $741e: $73
    ld e, [hl]                                    ; $741f: $5e
    ld a, [hl]                                    ; $7420: $7e
    pop af                                        ; $7421: $f1
    or [hl]                                       ; $7422: $b6
    ld b, l                                       ; $7423: $45
    and l                                         ; $7424: $a5
    ld b, c                                       ; $7425: $41
    jr @-$37                                      ; $7426: $18 $c7

    ld [hl], d                                    ; $7428: $72
    xor b                                         ; $7429: $a8
    ld a, $c6                                     ; $742a: $3e $c6
    daa                                           ; $742c: $27
    rra                                           ; $742d: $1f
    rst $18                                       ; $742e: $df
    scf                                           ; $742f: $37
    rst $18                                       ; $7430: $df
    scf                                           ; $7431: $37
    sbc a                                         ; $7432: $9f
    ld d, d                                       ; $7433: $52
    rst $20                                       ; $7434: $e7
    xor [hl]                                      ; $7435: $ae
    ld d, l                                       ; $7436: $55
    ld b, l                                       ; $7437: $45
    ld a, [de]                                    ; $7438: $1a
    xor $ce                                       ; $7439: $ee $ce
    inc sp                                        ; $743b: $33
    ldh [$e3], a                                  ; $743c: $e0 $e3
    adc e                                         ; $743e: $8b
    ld a, [$7b2c]                                 ; $743f: $fa $2c $7b
    ld c, $9d                                     ; $7442: $0e $9d
    xor a                                         ; $7444: $af
    db $fc                                        ; $7445: $fc
    add hl, de                                    ; $7446: $19
    ld e, d                                       ; $7447: $5a

jr_027_7448:
    ld a, a                                       ; $7448: $7f
    db $fd                                        ; $7449: $fd
    xor [hl]                                      ; $744a: $ae
    and h                                         ; $744b: $a4
    add c                                         ; $744c: $81
    ld e, a                                       ; $744d: $5f
    daa                                           ; $744e: $27
    cpl                                           ; $744f: $2f
    add hl, sp                                    ; $7450: $39
    call z, $c773                                 ; $7451: $cc $73 $c7
    ld c, e                                       ; $7454: $4b
    rst $18                                       ; $7455: $df
    rst $00                                       ; $7456: $c7
    ld c, e                                       ; $7457: $4b
    rst $18                                       ; $7458: $df
    rst $00                                       ; $7459: $c7
    ld c, e                                       ; $745a: $4b
    ld h, e                                       ; $745b: $63
    db $db                                        ; $745c: $db
    sub a                                         ; $745d: $97
    ld e, b                                       ; $745e: $58
    ld a, [bc]                                    ; $745f: $0a
    jp nz, $d996                                  ; $7460: $c2 $96 $d9

    ld l, c                                       ; $7463: $69
    adc b                                         ; $7464: $88
    call Call_027_4fcb                            ; $7465: $cd $cb $4f
    ld l, [hl]                                    ; $7468: $6e
    ld d, b                                       ; $7469: $50
    ld a, h                                       ; $746a: $7c
    db $ed                                        ; $746b: $ed
    call z, $f8fa                                 ; $746c: $cc $fa $f8
    db $eb                                        ; $746f: $eb
    ld h, l                                       ; $7470: $65
    ld e, [hl]                                    ; $7471: $5e
    ld a, [hl]                                    ; $7472: $7e
    ld [hl], d                                    ; $7473: $72
    add e                                         ; $7474: $83
    ld [c], a                                     ; $7475: $e2
    xor e                                         ; $7476: $ab
    jp nc, $bf90                                  ; $7477: $d2 $90 $bf

    db $f4                                        ; $747a: $f4
    ld e, l                                       ; $747b: $5d
    add hl, de                                    ; $747c: $19
    add c                                         ; $747d: $81
    ld b, a                                       ; $747e: $47
    jr jr_027_7448                                ; $747f: $18 $c7

    ld [hl], d                                    ; $7481: $72
    xor b                                         ; $7482: $a8
    ld a, $c6                                     ; $7483: $3e $c6
    daa                                           ; $7485: $27
    rra                                           ; $7486: $1f
    rst $18                                       ; $7487: $df
    scf                                           ; $7488: $37
    rst $18                                       ; $7489: $df
    scf                                           ; $748a: $37
    sbc a                                         ; $748b: $9f
    ld d, d                                       ; $748c: $52
    rst $20                                       ; $748d: $e7
    xor [hl]                                      ; $748e: $ae
    ld d, l                                       ; $748f: $55
    ld b, l                                       ; $7490: $45
    ld a, [de]                                    ; $7491: $1a

jr_027_7492:
    xor $ce                                       ; $7492: $ee $ce
    inc sp                                        ; $7494: $33
    ldh [$e3], a                                  ; $7495: $e0 $e3
    adc e                                         ; $7497: $8b
    ld a, [$7b2c]                                 ; $7498: $fa $2c $7b
    ld c, $9d                                     ; $749b: $0e $9d
    xor a                                         ; $749d: $af
    db $fc                                        ; $749e: $fc
    add hl, de                                    ; $749f: $19
    ld e, d                                       ; $74a0: $5a
    ld a, a                                       ; $74a1: $7f
    db $fd                                        ; $74a2: $fd
    xor [hl]                                      ; $74a3: $ae
    and h                                         ; $74a4: $a4
    add c                                         ; $74a5: $81
    ld e, a                                       ; $74a6: $5f
    daa                                           ; $74a7: $27
    cpl                                           ; $74a8: $2f
    add hl, sp                                    ; $74a9: $39
    call z, $c773                                 ; $74aa: $cc $73 $c7
    ld c, e                                       ; $74ad: $4b
    rst $18                                       ; $74ae: $df
    rst $00                                       ; $74af: $c7
    ld c, e                                       ; $74b0: $4b
    rst $18                                       ; $74b1: $df
    rst $00                                       ; $74b2: $c7
    ld c, e                                       ; $74b3: $4b
    ld h, e                                       ; $74b4: $63
    db $db                                        ; $74b5: $db
    sub a                                         ; $74b6: $97
    ld e, b                                       ; $74b7: $58
    ld a, [bc]                                    ; $74b8: $0a
    jp c, $d7f1                                   ; $74b9: $da $f1 $d7

    ld a, [$7f0b]                                 ; $74bc: $fa $0b $7f
    ld e, [hl]                                    ; $74bf: $5e
    ld a, [hl]                                    ; $74c0: $7e
    db $ed                                        ; $74c1: $ed
    cp [hl]                                       ; $74c2: $be
    db $db                                        ; $74c3: $db
    ld a, l                                       ; $74c4: $7d
    or a                                          ; $74c5: $b7
    inc sp                                        ; $74c6: $33
    db $eb                                        ; $74c7: $eb
    ld d, e                                       ; $74c8: $53
    ld h, d                                       ; $74c9: $62
    or e                                          ; $74ca: $b3
    call nc, $9c62                                ; $74cb: $d4 $62 $9c
    cp h                                          ; $74ce: $bc

Jump_027_74cf:
    dec de                                        ; $74cf: $1b
    and c                                         ; $74d0: $a1
    ld e, l                                       ; $74d1: $5d
    sbc a                                         ; $74d2: $9f
    rst $20                                       ; $74d3: $e7
    ld c, [hl]                                    ; $74d4: $4e
    ld d, [hl]                                    ; $74d5: $56
    and [hl]                                      ; $74d6: $a6
    pop hl                                        ; $74d7: $e1
    cp d                                          ; $74d8: $ba

Jump_027_74d9:
    ld e, a                                       ; $74d9: $5f
    xor d                                         ; $74da: $aa
    ld e, $61                                     ; $74db: $1e $61
    xor l                                         ; $74dd: $ad
    cpl                                           ; $74de: $2f
    cp a                                          ; $74df: $bf
    db $eb                                        ; $74e0: $eb
    cp e                                          ; $74e1: $bb
    add b                                         ; $74e2: $80
    jr nc, jr_027_7492                            ; $74e3: $30 $ad

    ret                                           ; $74e5: $c9


    rst $28                                       ; $74e6: $ef
    jp nz, $349a                                  ; $74e7: $c2 $9a $34

    or d                                          ; $74ea: $b2
    adc [hl]                                      ; $74eb: $8e
    db $f4                                        ; $74ec: $f4
    db $dd                                        ; $74ed: $dd
    sub c                                         ; $74ee: $91
    cp [hl]                                       ; $74ef: $be
    dec sp                                        ; $74f0: $3b
    sub d                                         ; $74f1: $92
    rst $20                                       ; $74f2: $e7
    ld a, l                                       ; $74f3: $7d
    push hl                                       ; $74f4: $e5
    xor e                                         ; $74f5: $ab
    ld [hl-], a                                   ; $74f6: $32
    cp h                                          ; $74f7: $bc
    inc d                                         ; $74f8: $14
    ld [hl], b                                    ; $74f9: $70
    rst $10                                       ; $74fa: $d7
    xor d                                         ; $74fb: $aa
    ld [hl+], a                                   ; $74fc: $22
    ld c, l                                       ; $74fd: $4d
    ld d, a                                       ; $74fe: $57
    inc c                                         ; $74ff: $0c
    dec l                                         ; $7500: $2d
    sub h                                         ; $7501: $94
    ld [c], a                                     ; $7502: $e2
    call c, Call_027_5569                         ; $7503: $dc $69 $55
    ld [hl-], a                                   ; $7506: $32
    ld de, $1842                                  ; $7507: $11 $42 $18
    ld b, a                                       ; $750a: $47
    ccf                                           ; $750b: $3f
    ld hl, sp-$7e                                 ; $750c: $f8 $82
    cp [hl]                                       ; $750e: $be
    add e                                         ; $750f: $83
    cp [hl]                                       ; $7510: $be
    add e                                         ; $7511: $83
    rst $30                                       ; $7512: $f7
    or l                                          ; $7513: $b5
    or l                                          ; $7514: $b5
    xor d                                         ; $7515: $aa
    rst $08                                       ; $7516: $cf
    ld [hl], e                                    ; $7517: $73
    rst $10                                       ; $7518: $d7
    cp c                                          ; $7519: $b9
    ld l, e                                       ; $751a: $6b
    ld d, l                                       ; $751b: $55
    sub c                                         ; $751c: $91
    ld b, $61                                     ; $751d: $06 $61
    cp l                                          ; $751f: $bd
    jp nc, $acd4                                  ; $7520: $d2 $d4 $ac

    cp a                                          ; $7523: $bf
    ld c, e                                       ; $7524: $4b
    cp $22                                        ; $7525: $fe $22
    and [hl]                                      ; $7527: $a6
    db $e3                                        ; $7528: $e3
    rst $08                                       ; $7529: $cf
    and [hl]                                      ; $752a: $a6
    xor e                                         ; $752b: $ab
    and d                                         ; $752c: $a2
    ld [bc], a                                    ; $752d: $02
    db $ec                                        ; $752e: $ec
    jp nc, Jump_000_01e0                          ; $752f: $d2 $e0 $01

    ld l, [hl]                                    ; $7532: $6e
    ld d, d                                       ; $7533: $52
    sub a                                         ; $7534: $97
    push af                                       ; $7535: $f5
    jr z, @-$14                                   ; $7536: $28 $ea

    dec [hl]                                      ; $7538: $35
    sbc b                                         ; $7539: $98
    xor $a0                                       ; $753a: $ee $a0
    or l                                          ; $753c: $b5
    and [hl]                                      ; $753d: $a6
    add c                                         ; $753e: $81
    ld e, a                                       ; $753f: $5f
    rst $30                                       ; $7540: $f7
    cp h                                          ; $7541: $bc
    db $e4                                        ; $7542: $e4
    db $eb                                        ; $7543: $eb
    cp $a4                                        ; $7544: $fe $a4
    pop de                                        ; $7546: $d1
    sbc e                                         ; $7547: $9b
    ld l, $18                                     ; $7548: $2e $18
    ld [$31a1], sp                                ; $754a: $08 $a1 $31
    inc hl                                        ; $754d: $23
    sub a                                         ; $754e: $97
    add d                                         ; $754f: $82
    ld a, c                                       ; $7550: $79
    ld sp, hl                                     ; $7551: $f9
    pop af                                        ; $7552: $f1
    scf                                           ; $7553: $37
    or d                                          ; $7554: $b2
    ld c, d                                       ; $7555: $4a
    ld a, l                                       ; $7556: $7d
    rst $00                                       ; $7557: $c7
    xor e                                         ; $7558: $ab
    inc b                                         ; $7559: $04
    reti                                          ; $755a: $d9


    call nz, $8b5f                                ; $755b: $c4 $5f $8b
    res 5, l                                      ; $755e: $cb $ad
    rst $38                                       ; $7560: $ff
    jp nc, Jump_027_7f5e                          ; $7561: $d2 $5e $7f

    add a                                         ; $7564: $87
    push af                                       ; $7565: $f5
    rst $10                                       ; $7566: $d7
    rra                                           ; $7567: $1f
    ld [hl], a                                    ; $7568: $77
    ld e, [hl]                                    ; $7569: $5e
    ld a, [hl]                                    ; $756a: $7e
    db $fc                                        ; $756b: $fc
    adc l                                         ; $756c: $8d
    xor h                                         ; $756d: $ac
    ld d, d                                       ; $756e: $52
    add a                                         ; $756f: $87
    pop af                                        ; $7570: $f1
    cpl                                           ; $7571: $2f
    ccf                                           ; $7572: $3f
    cp $12                                        ; $7573: $fe $12
    ld e, l                                       ; $7575: $5d
    ld a, [bc]                                    ; $7576: $0a
    add $97                                       ; $7577: $c6 $97
    daa                                           ; $7579: $27
    add h                                         ; $757a: $84
    db $10                                        ; $757b: $10
    ld b, $dd                                     ; $757c: $06 $dd
    db $e3                                        ; $757e: $e3
    dec hl                                        ; $757f: $2b
    db $fc                                        ; $7580: $fc
    sbc [hl]                                      ; $7581: $9e
    adc $cb                                       ; $7582: $ce $cb
    ld h, [hl]                                    ; $7584: $66
    ld e, [hl]                                    ; $7585: $5e
    ld a, [hl]                                    ; $7586: $7e
    rlca                                          ; $7587: $07
    xor l                                         ; $7588: $ad
    dec [hl]                                      ; $7589: $35
    dec c                                         ; $758a: $0d
    db $fc                                        ; $758b: $fc
    cp d                                          ; $758c: $ba
    rst $20                                       ; $758d: $e7
    dec h                                         ; $758e: $25
    ld e, a                                       ; $758f: $5f
    rst $20                                       ; $7590: $e7
    ld c, c                                       ; $7591: $49
    and e                                         ; $7592: $a3
    scf                                           ; $7593: $37
    ld l, e                                       ; $7594: $6b
    jp nc, $acd4                                  ; $7595: $d2 $d4 $ac

    cp a                                          ; $7598: $bf

Jump_027_7599:
    ld d, a                                       ; $7599: $57
    and c                                         ; $759a: $a1
    ld h, a                                       ; $759b: $67
    or e                                          ; $759c: $b3
    ld d, e                                       ; $759d: $53
    halt                                          ; $759e: $76
    ret                                           ; $759f: $c9


    ld e, a                                       ; $75a0: $5f
    call nz, $fc74                                ; $75a1: $c4 $74 $fc
    ld d, d                                       ; $75a4: $52
    or b                                          ; $75a5: $b0
    or b                                          ; $75a6: $b0
    ld e, c                                       ; $75a7: $59
    dec d                                         ; $75a8: $15
    dec d                                         ; $75a9: $15
    add b                                         ; $75aa: $80
    cp e                                          ; $75ab: $bb
    xor $e9                                       ; $75ac: $ee $e9
    cp $d2                                        ; $75ae: $fe $d2
    dec b                                         ; $75b0: $05
    inc bc                                        ; $75b1: $03
    rlca                                          ; $75b2: $07
    xor l                                         ; $75b3: $ad
    dec [hl]                                      ; $75b4: $35
    dec c                                         ; $75b5: $0d
    db $fc                                        ; $75b6: $fc
    cp d                                          ; $75b7: $ba
    rst $20                                       ; $75b8: $e7
    dec h                                         ; $75b9: $25
    ld e, a                                       ; $75ba: $5f
    rst $20                                       ; $75bb: $e7
    ld c, c                                       ; $75bc: $49
    and e                                         ; $75bd: $a3
    scf                                           ; $75be: $37
    call c, Call_000_2c9d                         ; $75bf: $dc $9d $2c
    ld l, b                                       ; $75c2: $68
    db $dd                                        ; $75c3: $dd
    db $d3                                        ; $75c4: $d3
    db $fd                                        ; $75c5: $fd
    add l                                         ; $75c6: $85
    dec sp                                        ; $75c7: $3b
    dec sp                                        ; $75c8: $3b
    ld h, l                                       ; $75c9: $65
    ld d, c                                       ; $75ca: $51
    adc c                                         ; $75cb: $89
    ld e, l                                       ; $75cc: $5d
    ld a, [bc]                                    ; $75cd: $0a
    sub [hl]                                      ; $75ce: $96
    or h                                          ; $75cf: $b4
    or b                                          ; $75d0: $b0
    sbc c                                         ; $75d1: $99
    ld a, l                                       ; $75d2: $7d
    ccf                                           ; $75d3: $3f
    or d                                          ; $75d4: $b2
    ld l, $18                                     ; $75d5: $2e $18
    dec l                                         ; $75d7: $2d
    jp c, $7cac                                   ; $75d8: $da $ac $7c

    adc h                                         ; $75db: $8c
    add hl, sp                                    ; $75dc: $39
    rst $08                                       ; $75dd: $cf
    or l                                          ; $75de: $b5
    xor d                                         ; $75df: $aa
    ld c, b                                       ; $75e0: $48
    jp Jump_027_5bdd                              ; $75e1: $c3 $dd $5b


    ld e, a                                       ; $75e4: $5f
    sbc d                                         ; $75e5: $9a
    and h                                         ; $75e6: $a4
    ld b, a                                       ; $75e7: $47
    ld l, e                                       ; $75e8: $6b
    pop de                                        ; $75e9: $d1
    ld h, [hl]                                    ; $75ea: $66
    ld b, c                                       ; $75eb: $41
    ld h, $6b                                     ; $75ec: $26 $6b
    scf                                           ; $75ee: $37
    ccf                                           ; $75ef: $3f
    rst $08                                       ; $75f0: $cf
    dec e                                         ; $75f1: $1d
    or h                                          ; $75f2: $b4
    sub d                                         ; $75f3: $92
    ld b, $7e                                     ; $75f4: $06 $7e
    sbc l                                         ; $75f6: $9d
    cp h                                          ; $75f7: $bc
    db $e4                                        ; $75f8: $e4
    ret nz                                        ; $75f9: $c0

    ld e, l                                       ; $75fa: $5d
    xor e                                         ; $75fb: $ab
    adc d                                         ; $75fc: $8a
    inc [hl]                                      ; $75fd: $34
    call c, Call_000_29d9                         ; $75fe: $dc $d9 $29
    cp e                                          ; $7601: $bb
    db $e4                                        ; $7602: $e4
    cpl                                           ; $7603: $2f
    ld h, d                                       ; $7604: $62
    ld a, [hl-]                                   ; $7605: $3a
    ld a, [hl]                                    ; $7606: $7e
    add hl, hl                                    ; $7607: $29
    ld e, b                                       ; $7608: $58
    dec d                                         ; $7609: $15
    dec d                                         ; $760a: $15
    nop                                           ; $760b: $00
    ld h, c                                       ; $760c: $61
    cp l                                          ; $760d: $bd
    jp nc, Jump_027_662c                          ; $760e: $d2 $2c $66

    sub $57                                       ; $7611: $d6 $57
    cp a                                          ; $7613: $bf
    call nz, $f696                                ; $7614: $c4 $96 $f6
    ld [bc], a                                    ; $7617: $02
    ld sp, hl                                     ; $7618: $f9
    daa                                           ; $7619: $27
    xor $5a                                       ; $761a: $ee $5a
    ld d, l                                       ; $761c: $55
    and h                                         ; $761d: $a4
    ld b, c                                       ; $761e: $41
    jr jr_027_7668                                ; $761f: $18 $47

    ret                                           ; $7621: $c9


    xor a                                         ; $7622: $af
    ld c, c                                       ; $7623: $49
    or e                                          ; $7624: $b3
    xor h                                         ; $7625: $ac
    ld [hl], e                                    ; $7626: $73
    rst $10                                       ; $7627: $d7
    xor d                                         ; $7628: $aa
    ld [hl+], a                                   ; $7629: $22
    ld c, l                                       ; $762a: $4d
    ld d, a                                       ; $762b: $57
    inc c                                         ; $762c: $0c
    cp l                                          ; $762d: $bd
    jp nc, $2ac8                                  ; $762e: $d2 $c8 $2a

    inc hl                                        ; $7631: $23
    ldh a, [$bb]                                  ; $7632: $f0 $bb
    or b                                          ; $7634: $b0
    jr nz, @-$15                                  ; $7635: $20 $e9

    cp e                                          ; $7637: $bb
    ld h, b                                       ; $7638: $60
    ld b, a                                       ; $7639: $47
    ret                                           ; $763a: $c9


    ld d, e                                       ; $763b: $53
    call $a4d7                                    ; $763c: $cd $d7 $a4
    sbc c                                         ; $763f: $99
    db $fd                                        ; $7640: $fd
    rra                                           ; $7641: $1f
    cpl                                           ; $7642: $2f
    dec b                                         ; $7643: $05
    db $e3                                        ; $7644: $e3
    ccf                                           ; $7645: $3f
    ld b, [hl]                                    ; $7646: $46
    xor $5a                                       ; $7647: $ee $5a
    ld d, l                                       ; $7649: $55
    and h                                         ; $764a: $a4
    jp hl                                         ; $764b: $e9


    adc d                                         ; $764c: $8a
    ld bc, $1ebd                                  ; $764d: $01 $bd $1e
    cp b                                          ; $7650: $b8
    inc bc                                        ; $7651: $03
    cp d                                          ; $7652: $ba
    or [hl]                                       ; $7653: $b6
    dec e                                         ; $7654: $1d
    ld a, a                                       ; $7655: $7f
    ld b, b                                       ; $7656: $40
    add hl, hl                                    ; $7657: $29
    adc [hl]                                      ; $7658: $8e
    sub $fd                                       ; $7659: $d6 $fd
    rst $18                                       ; $765b: $df
    ld a, [$f3b0]                                 ; $765c: $fa $b0 $f3
    inc c                                         ; $765f: $0c
    ld hl, sp+$2a                                 ; $7660: $f8 $2a
    dec b                                         ; $7662: $05
    sbc a                                         ; $7663: $9f
    ld c, $3a                                     ; $7664: $0e $3a
    rra                                           ; $7666: $1f
    db $e3                                        ; $7667: $e3

jr_027_7668:
    sub d                                         ; $7668: $92
    ld d, $fe                                     ; $7669: $16 $fe
    sub h                                         ; $766b: $94
    ret c                                         ; $766c: $d8

    ld b, d                                       ; $766d: $42
    ld h, l                                       ; $766e: $65
    cp a                                          ; $766f: $bf
    ldh a, [rTAC]                                 ; $7670: $f0 $07
    or a                                          ; $7672: $b7
    xor d                                         ; $7673: $aa
    inc hl                                        ; $7674: $23
    inc c                                         ; $7675: $0c
    xor l                                         ; $7676: $ad
    cp a                                          ; $7677: $bf
    ld d, b                                       ; $7678: $50
    db $eb                                        ; $7679: $eb
    rrca                                          ; $767a: $0f
    ld a, e                                       ; $767b: $7b
    db $eb                                        ; $767c: $eb
    ld c, e                                       ; $767d: $4b
    sub e                                         ; $767e: $93
    db $f4                                        ; $767f: $f4
    add e                                         ; $7680: $83
    ld e, e                                       ; $7681: $5b
    push de                                       ; $7682: $d5
    pop de                                        ; $7683: $d1
    ld h, [hl]                                    ; $7684: $66
    pop af                                        ; $7685: $f1
    ld b, c                                       ; $7686: $41
    ld a, [de]                                    ; $7687: $1a
    ld h, d                                       ; $7688: $62
    or b                                          ; $7689: $b0
    ld a, b                                       ; $768a: $78
    db $eb                                        ; $768b: $eb
    ccf                                           ; $768c: $3f
    ld e, l                                       ; $768d: $5d
    ld h, l                                       ; $768e: $65
    inc b                                         ; $768f: $04
    ld a, [hl]                                    ; $7690: $7e
    sbc [hl]                                      ; $7691: $9e
    dec bc                                        ; $7692: $0b
    rra                                           ; $7693: $1f
    xor l                                         ; $7694: $ad
    ld d, a                                       ; $7695: $57
    sbc d                                         ; $7696: $9a
    ld b, c                                       ; $7697: $41
    ld c, c                                       ; $7698: $49
    inc de                                        ; $7699: $13
    reti                                          ; $769a: $d9


    ldh [$7f], a                                  ; $769b: $e0 $7f
    db $dd                                        ; $769d: $dd
    dec h                                         ; $769e: $25
    db $ed                                        ; $769f: $ed
    rlca                                          ; $76a0: $07
    ld c, b                                       ; $76a1: $48
    reti                                          ; $76a2: $d9


    ld l, c                                       ; $76a3: $69
    and $8a                                       ; $76a4: $e6 $8a
    ld a, h                                       ; $76a6: $7c
    adc h                                         ; $76a7: $8c
    ld c, e                                       ; $76a8: $4b
    sbc d                                         ; $76a9: $9a
    sub a                                         ; $76aa: $97
    sbc a                                         ; $76ab: $9f
    sub a                                         ; $76ac: $97
    dec hl                                        ; $76ad: $2b
    ld l, h                                       ; $76ae: $6c
    halt                                          ; $76af: $76
    call z, $b414                                 ; $76b0: $cc $14 $b4
    sub $af                                       ; $76b3: $d6 $af
    pop bc                                        ; $76b5: $c1
    cp h                                          ; $76b6: $bc
    db $fc                                        ; $76b7: $fc
    ld a, [hl+]                                   ; $76b8: $2a
    inc hl                                        ; $76b9: $23
    ldh a, [$7b]                                  ; $76ba: $f0 $7b
    ld c, $9d                                     ; $76bc: $0e $9d
    rla                                           ; $76be: $17
    ld e, a                                       ; $76bf: $5f
    ld a, c                                       ; $76c0: $79
    ld a, c                                       ; $76c1: $79
    add h                                         ; $76c2: $84
    ld bc, $d2bd                                  ; $76c3: $01 $bd $d2
    inc c                                         ; $76c6: $0c
    ld c, d                                       ; $76c7: $4a
    sbc d                                         ; $76c8: $9a
    ret z                                         ; $76c9: $c8

    ld b, $ff                                     ; $76ca: $06 $ff
    db $eb                                        ; $76cc: $eb
    ld l, $69                                     ; $76cd: $2e $69
    ccf                                           ; $76cf: $3f
    ld b, b                                       ; $76d0: $40
    jp z, $334e                                   ; $76d1: $ca $4e $33

    ld d, a                                       ; $76d4: $57
    db $e4                                        ; $76d5: $e4
    ld h, e                                       ; $76d6: $63
    ld e, h                                       ; $76d7: $5c
    jp nc, $fcbc                                  ; $76d8: $d2 $bc $fc

    cp h                                          ; $76db: $bc
    ld e, h                                       ; $76dc: $5c
    ld h, c                                       ; $76dd: $61
    or e                                          ; $76de: $b3
    ld h, e                                       ; $76df: $63

jr_027_76e0:
    and [hl]                                      ; $76e0: $a6
    and b                                         ; $76e1: $a0
    or l                                          ; $76e2: $b5
    ld a, [hl]                                    ; $76e3: $7e
    dec c                                         ; $76e4: $0d
    and $e5                                       ; $76e5: $e6 $e5
    ld d, a                                       ; $76e7: $57
    add hl, de                                    ; $76e8: $19
    add c                                         ; $76e9: $81
    rst $18                                       ; $76ea: $df
    ld [hl], e                                    ; $76eb: $73
    add sp, -$44                                  ; $76ec: $e8 $bc
    ld hl, sp-$36                                 ; $76ee: $f8 $ca
    sla e                                         ; $76f0: $cb $23
    inc c                                         ; $76f2: $0c
    sub [hl]                                      ; $76f3: $96
    pop af                                        ; $76f4: $f1
    ld c, a                                       ; $76f5: $4f
    ld a, $cf                                     ; $76f6: $3e $cf
    ld d, l                                       ; $76f8: $55
    ld b, l                                       ; $76f9: $45
    dec h                                         ; $76fa: $25
    inc e                                         ; $76fb: $1c
    ld d, h                                       ; $76fc: $54
    dec h                                         ; $76fd: $25
    inc sp                                        ; $76fe: $33
    adc [hl]                                      ; $76ff: $8e
    cpl                                           ; $7700: $2f
    ld c, a                                       ; $7701: $4f
    or e                                          ; $7702: $b3
    adc h                                         ; $7703: $8c
    ld d, a                                       ; $7704: $57
    ld e, b                                       ; $7705: $58
    sub e                                         ; $7706: $93
    add [hl]                                      ; $7707: $86
    add d                                         ; $7708: $82
    rla                                           ; $7709: $17
    xor $da                                       ; $770a: $ee $da
    add $77                                       ; $770c: $c6 $77
    ld a, l                                       ; $770e: $7d
    cp h                                          ; $770f: $bc
    jp nz, $bd28                                  ; $7710: $c2 $28 $bd

    ld e, h                                       ; $7713: $5c
    ld a, [bc]                                    ; $7714: $0a
    ld d, $6f                                     ; $7715: $16 $6f
    db $fd                                        ; $7717: $fd
    rst $20                                       ; $7718: $e7
    push hl                                       ; $7719: $e5
    ld [bc], a                                    ; $771a: $02
    jp nz, $9b27                                  ; $771b: $c2 $27 $9b

    ld [hl], b                                    ; $771e: $70
    and b                                         ; $771f: $a0
    dec c                                         ; $7720: $0d
    call z, $a2b2                                 ; $7721: $cc $b2 $a2
    sub $1f                                       ; $7724: $d6 $1f
    xor c                                         ; $7726: $a9
    dec de                                        ; $7727: $1b
    pop de                                        ; $7728: $d1
    cp b                                          ; $7729: $b8
    xor d                                         ; $772a: $aa
    xor b                                         ; $772b: $a8
    add h                                         ; $772c: $84
    call c, $8db5                                 ; $772d: $dc $b5 $8d
    rst $08                                       ; $7730: $cf
    ld [hl-], a                                   ; $7731: $32
    sub [hl]                                      ; $7732: $96
    ld d, h                                       ; $7733: $54
    di                                            ; $7734: $f3
    ld a, c                                       ; $7735: $79
    cp c                                          ; $7736: $b9
    ld d, h                                       ; $7737: $54
    sbc a                                         ; $7738: $9f
    rla                                           ; $7739: $17
    push af                                       ; $773a: $f5
    ld e, d                                       ; $773b: $5a
    adc h                                         ; $773c: $8c
    dec hl                                        ; $773d: $2b
    rra                                           ; $773e: $1f
    dec sp                                        ; $773f: $3b
    cp e                                          ; $7740: $bb
    inc [hl]                                      ; $7741: $34
    cpl                                           ; $7742: $2f
    rla                                           ; $7743: $17
    ld d, [hl]                                    ; $7744: $56
    ld b, l                                       ; $7745: $45
    dec b                                         ; $7746: $05
    ld b, b                                       ; $7747: $40
    jr jr_027_76e0                                ; $7748: $18 $96

    pop bc                                        ; $774a: $c1
    rst $38                                       ; $774b: $ff
    sbc d                                         ; $774c: $9a
    inc [hl]                                      ; $774d: $34
    ld h, e                                       ; $774e: $63
    sub a                                         ; $774f: $97
    ld d, c                                       ; $7750: $51
    call $e067                                    ; $7751: $cd $67 $e0
    rst $20                                       ; $7754: $e7
    push hl                                       ; $7755: $e5
    rst $10                                       ; $7756: $d7
    adc $ac                                       ; $7757: $ce $ac
    rst $08                                       ; $7759: $cf
    ld [hl], e                                    ; $775a: $73
    ld a, [c]                                     ; $775b: $f2
    ld h, c                                       ; $775c: $61
    ld e, d                                       ; $775d: $5a
    ld a, a                                       ; $775e: $7f
    ld c, l                                       ; $775f: $4d
    ld a, [de]                                    ; $7760: $1a
    ld e, c                                       ; $7761: $59
    ld h, l                                       ; $7762: $65
    inc b                                         ; $7763: $04
    ld e, $6d                                     ; $7764: $1e $6d
    sub [hl]                                      ; $7766: $96
    pop af                                        ; $7767: $f1
    scf                                           ; $7768: $37
    add $c9                                       ; $7769: $c6 $c9
    add a                                         ; $776b: $87
    ld l, c                                       ; $776c: $69
    db $fd                                        ; $776d: $fd
    ld e, l                                       ; $776e: $5d
    sbc a                                         ; $776f: $9f
    sbc l                                         ; $7770: $9d
    or d                                          ; $7771: $b2
    ld h, $0d                                     ; $7772: $26 $0d
    jp nz, Jump_000_24a7                          ; $7774: $c2 $a7 $24

    jp c, $c451                                   ; $7777: $da $51 $c4

    sub $89                                       ; $777a: $d6 $89
    xor a                                         ; $777c: $af
    ldh a, [$63]                                  ; $777d: $f0 $63
    ld c, c                                       ; $777f: $49
    dec [hl]                                      ; $7780: $35
    ld e, a                                       ; $7781: $5f
    ld e, e                                       ; $7782: $5b
    ld l, $05                                     ; $7783: $2e $05
    cp e                                          ; $7785: $bb
    cp [hl]                                       ; $7786: $be
    or [hl]                                       ; $7787: $b6
    ld d, [hl]                                    ; $7788: $56
    push af                                       ; $7789: $f5
    ld a, c                                       ; $778a: $79
    xor $78                                       ; $778b: $ee $78
    ld l, c                                       ; $778d: $69
    ld l, h                                       ; $778e: $6c
    ei                                            ; $778f: $fb
    ld [de], a                                    ; $7790: $12
    ld c, e                                       ; $7791: $4b
    add hl, de                                    ; $7792: $19

jr_027_7793:
    ld a, a                                       ; $7793: $7f
    cp l                                          ; $7794: $bd
    xor h                                         ; $7795: $ac
    ld c, c                                       ; $7796: $49
    add e                                         ; $7797: $83
    jr nc, jr_027_77d7                            ; $7798: $30 $3d

    adc d                                         ; $779a: $8a
    ld a, [$0d20]                                 ; $779b: $fa $20 $0d
    ld sp, $bc58                                  ; $779e: $31 $58 $bc
    push af                                       ; $77a1: $f5
    sbc a                                         ; $77a2: $9f
    xor $7c                                       ; $77a3: $ee $7c
    di                                            ; $77a5: $f3
    ldh [$37], a                                  ; $77a6: $e0 $37
    ld l, c                                       ; $77a8: $69
    halt                                          ; $77a9: $76
    jp z, $fe74                                   ; $77aa: $ca $74 $fe

    ld e, d                                       ; $77ad: $5a
    sub l                                         ; $77ae: $95
    rla                                           ; $77af: $17
    add h                                         ; $77b0: $84
    ld bc, $72c7                                  ; $77b1: $01 $c7 $72
    add sp, $24                                   ; $77b4: $e8 $24
    db $fc                                        ; $77b6: $fc
    xor [hl]                                      ; $77b7: $ae
    rst $08                                       ; $77b8: $cf
    ld [hl], e                                    ; $77b9: $73
    ld h, c                                       ; $77ba: $61
    ld h, $c5                                     ; $77bb: $26 $c5
    dec de                                        ; $77bd: $1b
    inc d                                         ; $77be: $14
    ld b, a                                       ; $77bf: $47
    dec sp                                        ; $77c0: $3b
    dec h                                         ; $77c1: $25
    cp c                                          ; $77c2: $b9
    db $e3                                        ; $77c3: $e3
    push af                                       ; $77c4: $f5
    ld a, [hl-]                                   ; $77c5: $3a
    ld [hl], a                                    ; $77c6: $77
    ld e, [hl]                                    ; $77c7: $5e
    call nc, $b06b                                ; $77c8: $d4 $6b $b0
    sub d                                         ; $77cb: $92
    db $fc                                        ; $77cc: $fc
    sbc d                                         ; $77cd: $9a
    inc [hl]                                      ; $77ce: $34
    sub e                                         ; $77cf: $93
    rrca                                          ; $77d0: $0f
    db $d3                                        ; $77d1: $d3
    ld a, [$55e3]                                 ; $77d2: $fa $e3 $55
    inc e                                         ; $77d5: $1c
    db $10                                        ; $77d6: $10

Jump_027_77d7:
jr_027_77d7:
    ld b, $2d                                     ; $77d7: $06 $2d
    add hl, hl                                    ; $77d9: $29
    jp nc, $c770                                  ; $77da: $d2 $70 $c7

    ld e, a                                       ; $77dd: $5f
    jr z, jr_027_7793                             ; $77de: $28 $b3

    xor h                                         ; $77e0: $ac
    ld c, d                                       ; $77e1: $4a
    inc de                                        ; $77e2: $13
    reti                                          ; $77e3: $d9


    jp z, $0ec7                                   ; $77e4: $ca $c7 $0e

    jp nz, $e4a7                                  ; $77e7: $c2 $a7 $e4

    ld l, $7b                                     ; $77ea: $2e $7b
    ld b, l                                       ; $77ec: $45
    jr @-$51                                      ; $77ed: $18 $ad

    ld l, d                                       ; $77ef: $6a
    db $fd                                        ; $77f0: $fd
    dec [hl]                                      ; $77f1: $35
    ld l, c                                       ; $77f2: $69
    and $72                                       ; $77f3: $e6 $72
    sbc a                                         ; $77f5: $9f
    dec c                                         ; $77f6: $0d

jr_027_77f7:
    ld d, d                                       ; $77f7: $52
    dec sp                                        ; $77f8: $3b
    ld d, e                                       ; $77f9: $53
    ld h, d                                       ; $77fa: $62
    db $e3                                        ; $77fb: $e3
    push de                                       ; $77fc: $d5
    ld e, a                                       ; $77fd: $5f
    cp d                                          ; $77fe: $ba
    ld h, d                                       ; $77ff: $62
    and a                                         ; $7800: $a7
    inc h                                         ; $7801: $24
    jp c, $dac9                                   ; $7802: $da $c9 $da

    or h                                          ; $7805: $b4
    ld a, a                                       ; $7806: $7f
    ld c, l                                       ; $7807: $4d
    sbc d                                         ; $7808: $9a
    ld b, c                                       ; $7809: $41
    ld c, c                                       ; $780a: $49
    inc de                                        ; $780b: $13
    reti                                          ; $780c: $d9


    ld h, d                                       ; $780d: $62
    ld h, [hl]                                    ; $780e: $66
    ld a, l                                       ; $780f: $7d
    rst $10                                       ; $7810: $d7
    ld h, a                                       ; $7811: $67
    ld a, [hl-]                                   ; $7812: $3a
    ld [$9603], sp                                ; $7813: $08 $03 $96
    or c                                          ; $7816: $b1
    and h                                         ; $7817: $a4
    sbc d                                         ; $7818: $9a
    rst $28                                       ; $7819: $ef
    xor l                                         ; $781a: $ad
    ld c, a                                       ; $781b: $4f
    xor e                                         ; $781c: $ab
    ld d, e                                       ; $781d: $53
    ld a, [c]                                     ; $781e: $f2
    dec hl                                        ; $781f: $2b
    ret                                           ; $7820: $c9


    rst $08                                       ; $7821: $cf
    ld [hl], e                                    ; $7822: $73
    ld a, [c]                                     ; $7823: $f2
    ld h, c                                       ; $7824: $61
    ld e, d                                       ; $7825: $5a
    ld a, a                                       ; $7826: $7f
    cp d                                          ; $7827: $ba
    di                                            ; $7828: $f3
    inc [hl]                                      ; $7829: $34
    inc e                                         ; $782a: $1c
    cp b                                          ; $782b: $b8
    ld e, [hl]                                    ; $782c: $5e
    ld b, d                                       ; $782d: $42
    jr jr_027_77f7                                ; $782e: $18 $c7

    ld a, [de]                                    ; $7830: $1a
    ld e, $cd                                     ; $7831: $1e $cd

Call_027_7833:
    ld h, d                                       ; $7833: $62
    xor a                                         ; $7834: $af
    ld c, c                                       ; $7835: $49
    ld d, e                                       ; $7836: $53
    sub e                                         ; $7837: $93
    ld e, a                                       ; $7838: $5f
    ld h, l                                       ; $7839: $65
    inc b                                         ; $783a: $04
    sbc [hl]                                      ; $783b: $9e
    ld [hl], c                                    ; $783c: $71
    rlca                                          ; $783d: $07
    xor [hl]                                      ; $783e: $ae
    call $d794                                    ; $783f: $cd $94 $d7
    ld h, [hl]                                    ; $7842: $66
    or [hl]                                       ; $7843: $b6
    ld h, h                                       ; $7844: $64
    cp b                                          ; $7845: $b8
    ldh a, [$bb]                                  ; $7846: $f0 $bb
    ld h, b                                       ; $7848: $60
    dec l                                         ; $7849: $2d

jr_027_784a:
    sub l                                         ; $784a: $95
    sbc b                                         ; $784b: $98
    halt                                          ; $784c: $76
    ei                                            ; $784d: $fb
    ld d, d                                       ; $784e: $52
    or b                                          ; $784f: $b0
    ldh a, [rTMA]                                 ; $7850: $f0 $06
    push bc                                       ; $7852: $c5
    rst $00                                       ; $7853: $c7
    and a                                         ; $7854: $a7
    call nc, $0611                                ; $7855: $d4 $11 $06
    sub [hl]                                      ; $7858: $96
    add c                                         ; $7859: $81
    ld l, e                                       ; $785a: $6b
    inc sp                                        ; $785b: $33
    push hl                                       ; $785c: $e5
    or l                                          ; $785d: $b5
    sbc c                                         ; $785e: $99
    dec l                                         ; $785f: $2d
    add hl, de                                    ; $7860: $19
    xor [hl]                                      ; $7861: $ae
    ld [hl-], a                                   ; $7862: $32
    ld [bc], a                                    ; $7863: $02
    rrca                                          ; $7864: $0f
    ld [$a703], sp                                ; $7865: $08 $03 $a7
    inc h                                         ; $7868: $24
    ld [hl], a                                    ; $7869: $77
    ld l, l                                       ; $786a: $6d
    db $e3                                        ; $786b: $e3
    or e                                          ; $786c: $b3
    xor h                                         ; $786d: $ac
    db $fd                                        ; $786e: $fd
    ld a, $2f                                     ; $786f: $3e $2f
    cpl                                           ; $7871: $2f
    ld e, a                                       ; $7872: $5f
    add e                                         ; $7873: $83
    jp hl                                         ; $7874: $e9


    jp c, $f599                                   ; $7875: $da $99 $f5

    ld b, c                                       ; $7878: $41
    add [hl]                                      ; $7879: $86
    rst $08                                       ; $787a: $cf
    sub a                                         ; $787b: $97

jr_027_787c:
    sub a                                         ; $787c: $97
    sbc a                                         ; $787d: $9f
    rla                                           ; $787e: $17
    push af                                       ; $787f: $f5
    ld d, l                                       ; $7880: $55
    ld l, c                                       ; $7881: $69
    ld [hl+], a                                   ; $7882: $22
    sbc e                                         ; $7883: $9b
    ld a, a                                       ; $7884: $7f
    adc h                                         ; $7885: $8c
    ld l, e                                       ; $7886: $6b
    jp nc, $24ac                                  ; $7887: $d2 $ac $24

    adc a                                         ; $788a: $8f
    jr nc, jr_027_784a                            ; $788b: $30 $bd

    jp nc, $e4d4                                  ; $788d: $d2 $d4 $e4

    ld h, a                                       ; $7890: $67
    adc b                                         ; $7891: $88
    cp l                                          ; $7892: $bd
    ld c, h                                       ; $7893: $4c
    ld d, a                                       ; $7894: $57
    add hl, de                                    ; $7895: $19
    add c                                         ; $7896: $81
    rst $28                                       ; $7897: $ef
    cp d                                          ; $7898: $ba
    and e                                         ; $7899: $a3
    push hl                                       ; $789a: $e5
    add $78                                       ; $789b: $c6 $78
    sub l                                         ; $789d: $95
    cp h                                          ; $789e: $bc
    bit 7, d                                      ; $789f: $cb $7a
    ld e, [hl]                                    ; $78a1: $5e
    jr z, @-$4b                                   ; $78a2: $28 $b3

    adc h                                         ; $78a4: $8c
    ld d, a                                       ; $78a5: $57
    sbc b                                         ; $78a6: $98
    ld hl, $b2f6                                  ; $78a7: $21 $f6 $b2
    and h                                         ; $78aa: $a4
    rst $20                                       ; $78ab: $e7
    adc $33                                       ; $78ac: $ce $33
    cp e                                          ; $78ae: $bb
    ld h, b                                       ; $78af: $60
    sub [hl]                                      ; $78b0: $96
    dec d                                         ; $78b1: $15
    or l                                          ; $78b2: $b5
    ld a, $d5                                     ; $78b3: $3e $d5
    ld a, h                                       ; $78b5: $7c
    xor [hl]                                      ; $78b6: $ae
    push af                                       ; $78b7: $f5
    and a                                         ; $78b8: $a7
    ld a, c                                       ; $78b9: $79
    ld d, c                                       ; $78ba: $51
    ld e, a                                       ; $78bb: $5f
    dec d                                         ; $78bc: $15
    dec d                                         ; $78bd: $15
    ld h, b                                       ; $78be: $60
    call $c23b                                    ; $78bf: $cd $3b $c2
    daa                                           ; $78c2: $27
    scf                                           ; $78c3: $37
    dec sp                                        ; $78c4: $3b
    add e                                         ; $78c5: $83
    xor d                                         ; $78c6: $aa
    ld hl, sp-$15                                 ; $78c7: $f8 $eb
    ld a, c                                       ; $78c9: $79
    add hl, bc                                    ; $78ca: $09

jr_027_78cb:
    inc a                                         ; $78cb: $3c
    ld l, c                                       ; $78cc: $69
    ld b, l                                       ; $78cd: $45
    reti                                          ; $78ce: $d9


    ld [hl], h                                    ; $78cf: $74
    sub l                                         ; $78d0: $95
    ld de, $b478                                  ; $78d1: $11 $78 $b4
    sub $1f                                       ; $78d4: $d6 $1f
    cp l                                          ; $78d6: $bd
    push af                                       ; $78d7: $f5

jr_027_78d8:
    ld h, l                                       ; $78d8: $65
    ld d, l                                       ; $78d9: $55
    sbc d                                         ; $78da: $9a
    ret z                                         ; $78db: $c8

    ld d, $bc                                     ; $78dc: $16 $bc
    ld c, a                                       ; $78de: $4f
    ld l, $5b                                     ; $78df: $2e $5b
    jp c, $8ebb                                   ; $78e1: $da $bb $8e

    jr nc, jr_027_787c                            ; $78e4: $30 $96

    or c                                          ; $78e6: $b1
    and h                                         ; $78e7: $a4
    sbc d                                         ; $78e8: $9a
    xor a                                         ; $78e9: $af
    ld c, [hl]                                    ; $78ea: $4e
    ret                                           ; $78eb: $c9


    ld c, a                                       ; $78ec: $4f
    xor c                                         ; $78ed: $a9
    pop af                                        ; $78ee: $f1
    ld [hl], d                                    ; $78ef: $72
    add hl, hl                                    ; $78f0: $29
    sbc b                                         ; $78f1: $98
    or [hl]                                       ; $78f2: $b6
    db $d3                                        ; $78f3: $d3
    ld hl, sp+$2a                                 ; $78f4: $f8 $2a
    inc hl                                        ; $78f6: $23
    ldh a, [$80]                                  ; $78f7: $f0 $80
    jr nc, jr_027_78d8                            ; $78f9: $30 $dd

    dec h                                         ; $78fb: $25
    db $ed                                        ; $78fc: $ed
    rlca                                          ; $78fd: $07
    ld c, b                                       ; $78fe: $48
    reti                                          ; $78ff: $d9


    ld l, c                                       ; $7900: $69
    and $8a                                       ; $7901: $e6 $8a
    ld a, h                                       ; $7903: $7c
    adc h                                         ; $7904: $8c
    db $e3                                        ; $7905: $e3
    db $d3                                        ; $7906: $d3
    ld b, h                                       ; $7907: $44
    or [hl]                                       ; $7908: $b6
    ld a, [hl-]                                   ; $7909: $3a
    dec h                                         ; $790a: $25
    adc a                                         ; $790b: $8f
    jr nc, jr_027_78cb                            ; $790c: $30 $bd

    jp nc, $894c                                  ; $790e: $d2 $4c $89

    xor l                                         ; $7911: $ad
    ld c, c                                       ; $7912: $49
    inc hl                                        ; $7913: $23
    xor e                                         ; $7914: $ab
    adc h                                         ; $7915: $8c
    ret nz                                        ; $7916: $c0

    xor a                                         ; $7917: $af
    adc d                                         ; $7918: $8a
    xor a                                         ; $7919: $af
    or d                                          ; $791a: $b2
    or h                                          ; $791b: $b4
    db $ed                                        ; $791c: $ed
    ld l, $18                                     ; $791d: $2e $18
    sub [hl]                                      ; $791f: $96
    ld d, l                                       ; $7920: $55
    ld l, c                                       ; $7921: $69
    ld [hl+], a                                   ; $7922: $22
    and e                                         ; $7923: $a3
    sbc d                                         ; $7924: $9a
    xor a                                         ; $7925: $af
    db $fd                                        ; $7926: $fd
    pop bc                                        ; $7927: $c1
    and l                                         ; $7928: $a5
    ld a, c                                       ; $7929: $79
    adc $3f                                       ; $792a: $ce $3f
    add $35                                       ; $792c: $c6 $35
    ld l, c                                       ; $792e: $69
    db $10                                        ; $792f: $10
    ld b, $3d                                     ; $7930: $06 $3d
    jp z, $ab37                                   ; $7932: $ca $37 $ab

    sub h                                         ; $7935: $94
    sub $fe                                       ; $7936: $d6 $fe
    ret                                           ; $7938: $c9


    add a                                         ; $7939: $87
    ld l, c                                       ; $793a: $69
    ld a, l                                       ; $793b: $7d
    sub $75                                       ; $793c: $d6 $75
    dec a                                         ; $793e: $3d
    adc d                                         ; $793f: $8a
    ld a, d                                       ; $7940: $7a
    dec c                                         ; $7941: $0d
    halt                                          ; $7942: $76
    ret                                           ; $7943: $c9


    ld e, a                                       ; $7944: $5f
    ld e, $fc                                     ; $7945: $1e $fc
    ld d, d                                       ; $7947: $52
    add b                                         ; $7948: $80
    jr nc, jr_027_7972                            ; $7949: $30 $27

    ld h, l                                       ; $794b: $65
    sub $77                                       ; $794c: $d6 $77

Jump_027_794e:
    ld l, c                                       ; $794e: $69
    ld e, [hl]                                    ; $794f: $5e
    ld a, [hl]                                    ; $7950: $7e
    pop af                                        ; $7951: $f1
    or [hl]                                       ; $7952: $b6
    ld b, l                                       ; $7953: $45
    and l                                         ; $7954: $a5
    ld b, c                                       ; $7955: $41
    db $eb                                        ; $7956: $eb
    ld d, c                                       ; $7957: $51
    cp [hl]                                       ; $7958: $be
    ld e, c                                       ; $7959: $59
    ld d, c                                       ; $795a: $51
    db $eb                                        ; $795b: $eb
    xor a                                         ; $795c: $af
    sbc l                                         ; $795d: $9d
    ld e, c                                       ; $795e: $59
    add a                                         ; $795f: $87
    ld l, c                                       ; $7960: $69
    dec sp                                        ; $7961: $3b
    adc l                                         ; $7962: $8d
    rst $28                                       ; $7963: $ef
    xor l                                         ; $7964: $ad
    cpl                                           ; $7965: $2f
    adc l                                         ; $7966: $8d
    sub a                                         ; $7967: $97
    ld c, e                                       ; $7968: $4b
    ld bc, $c7c2                                  ; $7969: $01 $c2 $c7
    and l                                         ; $796c: $a5
    xor h                                         ; $796d: $ac
    inc hl                                        ; $796e: $23
    ld e, d                                       ; $796f: $5a
    ld sp, hl                                     ; $7970: $f9
    xor l                                         ; $7971: $ad

jr_027_7972:
    sbc [hl]                                      ; $7972: $9e
    dec sp                                        ; $7973: $3b
    cp [hl]                                       ; $7974: $be
    inc [hl]                                      ; $7975: $34
    ld h, e                                       ; $7976: $63
    ld c, c                                       ; $7977: $49
    dec [hl]                                      ; $7978: $35
    ld e, a                                       ; $7979: $5f
    sub e                                         ; $797a: $93
    ld h, [hl]                                    ; $797b: $66
    ld a, [c]                                     ; $797c: $f2
    ld h, c                                       ; $797d: $61
    ld e, d                                       ; $797e: $5a
    ld a, a                                       ; $797f: $7f
    ld c, l                                       ; $7980: $4d
    ld a, [de]                                    ; $7981: $1a
    add c                                         ; $7982: $81
    adc a                                         ; $7983: $8f
    halt                                          ; $7984: $76
    ld d, a                                       ; $7985: $57
    inc c                                         ; $7986: $0c
    ld d, $7b                                     ; $7987: $16 $7b
    ld c, l                                       ; $7989: $4d
    sbc d                                         ; $798a: $9a
    db $dd                                        ; $798b: $dd
    add b                                         ; $798c: $80
    ld d, d                                       ; $798d: $52
    ld a, [hl]                                    ; $798e: $7e
    rst $10                                       ; $798f: $d7
    cp c                                          ; $7990: $b9
    dec bc                                        ; $7991: $0b
    or l                                          ; $7992: $b5
    ld l, c                                       ; $7993: $69
    rst $38                                       ; $7994: $ff
    xor [hl]                                      ; $7995: $ae
    rst $10                                       ; $7996: $d7
    ld h, d                                       ; $7997: $62
    ld e, h                                       ; $7998: $5c
    sub b                                         ; $7999: $90
    ld d, e                                       ; $799a: $53
    ld e, [hl]                                    ; $799b: $5e
    dec de                                        ; $799c: $1b
    add h                                         ; $799d: $84
    ld bc, $3727                                  ; $799e: $01 $27 $37
    db $eb                                        ; $79a1: $eb
    xor b                                         ; $79a2: $a8
    inc a                                         ; $79a3: $3c
    add hl, sp                                    ; $79a4: $39
    adc h                                         ; $79a5: $8c
    sbc $fa                                       ; $79a6: $de $fa
    or d                                          ; $79a8: $b2
    ld hl, sp-$42                                 ; $79a9: $f8 $be
    ldh a, [$57]                                  ; $79ab: $f0 $57
    add hl, de                                    ; $79ad: $19
    add c                                         ; $79ae: $81
    rst $20                                       ; $79af: $e7
    ld c, $72                                     ; $79b0: $0e $72
    sub [hl]                                      ; $79b2: $96

Jump_027_79b3:
    or c                                          ; $79b3: $b1
    and h                                         ; $79b4: $a4
    sbc d                                         ; $79b5: $9a
    xor a                                         ; $79b6: $af
    ld c, [hl]                                    ; $79b7: $4e
    ret                                           ; $79b8: $c9


    ld c, a                                       ; $79b9: $4f
    xor c                                         ; $79ba: $a9
    pop af                                        ; $79bb: $f1
    ld [hl], d                                    ; $79bc: $72
    add hl, hl                                    ; $79bd: $29

Jump_027_79be:
    sbc b                                         ; $79be: $98
    or [hl]                                       ; $79bf: $b6
    db $d3                                        ; $79c0: $d3
    ld hl, sp-$52                                 ; $79c1: $f8 $ae
    inc hl                                        ; $79c3: $23
    inc c                                         ; $79c4: $0c
    and a                                         ; $79c5: $a7
    inc h                                         ; $79c6: $24
    ld [hl], a                                    ; $79c7: $77
    ld l, l                                       ; $79c8: $6d
    db $e3                                        ; $79c9: $e3
    or e                                          ; $79ca: $b3
    adc h                                         ; $79cb: $8c
    cp a                                          ; $79cc: $bf
    ld d, b                                       ; $79cd: $50
    ld h, [hl]                                    ; $79ce: $66
    ld e, c                                       ; $79cf: $59
    sbc l                                         ; $79d0: $9d
    sbc [hl]                                      ; $79d1: $9e
    ld e, a                                       ; $79d2: $5f
    ld c, c                                       ; $79d3: $49
    ld a, [hl]                                    ; $79d4: $7e
    sbc [hl]                                      ; $79d5: $9e
    xor e                                         ; $79d6: $ab
    inc d                                         ; $79d7: $14
    ld a, h                                       ; $79d8: $7c
    ld e, [hl]                                    ; $79d9: $5e
    ld a, $44                                     ; $79da: $3e $44
    db $eb                                        ; $79dc: $eb
    ld d, c                                       ; $79dd: $51
    call nc, $a7c7                                ; $79de: $d4 $c7 $a7
    adc c                                         ; $79e1: $89
    ld l, h                                       ; $79e2: $6c

jr_027_79e3:
    db $ed                                        ; $79e3: $ed
    ld e, a                                       ; $79e4: $5f
    sub l                                         ; $79e5: $95
    add hl, de                                    ; $79e6: $19
    cp e                                          ; $79e7: $bb
    ld h, b                                       ; $79e8: $60
    ld b, a                                       ; $79e9: $47
    ld b, c                                       ; $79ea: $41
    ld a, l                                       ; $79eb: $7d
    daa                                           ; $79ec: $27
    dec hl                                        ; $79ed: $2b
    db $d3                                        ; $79ee: $d3
    ld [hl], b                                    ; $79ef: $70
    db $dd                                        ; $79f0: $dd
    cpl                                           ; $79f1: $2f
    ld d, l                                       ; $79f2: $55
    cp a                                          ; $79f3: $bf
    ld c, e                                       ; $79f4: $4b
    di                                            ; $79f5: $f3
    ld a, [c]                                     ; $79f6: $f2
    adc e                                         ; $79f7: $8b
    or a                                          ; $79f8: $b7
    dec l                                         ; $79f9: $2d
    ld a, [hl+]                                   ; $79fa: $2a
    dec c                                         ; $79fb: $0d
    ld e, d                                       ; $79fc: $5a
    ld c, e                                       ; $79fd: $4b
    ld sp, hl                                     ; $79fe: $f9
    ld d, l                                       ; $79ff: $55
    ld c, d                                       ; $7a00: $4a
    db $eb                                        ; $7a01: $eb
    db $e4                                        ; $7a02: $e4
    dec h                                         ; $7a03: $25
    ld e, a                                       ; $7a04: $5f
    sub e                                         ; $7a05: $93
    ld h, [hl]                                    ; $7a06: $66
    sub a                                         ; $7a07: $97
    and $e5                                       ; $7a08: $e6 $e5
    daa                                           ; $7a0a: $27
    scf                                           ; $7a0b: $37
    jr z, jr_027_7a4c                             ; $7a0c: $28 $3e

    halt                                          ; $7a0e: $76
    push hl                                       ; $7a0f: $e5
    dec hl                                        ; $7a10: $2b
    cp a                                          ; $7a11: $bf
    ld c, c                                       ; $7a12: $49
    ld [$2703], sp                                ; $7a13: $08 $03 $27
    scf                                           ; $7a16: $37
    db $eb                                        ; $7a17: $eb
    xor b                                         ; $7a18: $a8
    inc a                                         ; $7a19: $3c
    add hl, sp                                    ; $7a1a: $39
    call z, $b3c0                                 ; $7a1b: $cc $c0 $b3
    ld a, c                                       ; $7a1e: $79
    ld c, $b4                                     ; $7a1f: $0e $b4
    sbc c                                         ; $7a21: $99
    ld h, l                                       ; $7a22: $65
    cp h                                          ; $7a23: $bc
    jp nz, $9574                                  ; $7a24: $c2 $74 $95

    ld de, $b478                                  ; $7a27: $11 $78 $b4
    ld e, $e5                                     ; $7a2a: $1e $e5
    sbc e                                         ; $7a2c: $9b
    ret                                           ; $7a2d: $c9


    add a                                         ; $7a2e: $87
    ld l, c                                       ; $7a2f: $69
    ld a, l                                       ; $7a30: $7d
    or [hl]                                       ; $7a31: $b6
    ldh a, [$d7]                                  ; $7a32: $f0 $d7
    ld l, [hl]                                    ; $7a34: $6e
    ld b, $4f                                     ; $7a35: $06 $4f
    db $ec                                        ; $7a37: $ec
    ld d, d                                       ; $7a38: $52
    or b                                          ; $7a39: $b0

Call_027_7a3a:
    ldh a, [$57]                                  ; $7a3a: $f0 $57
    ld e, [hl]                                    ; $7a3c: $5e
    ld e, $61                                     ; $7a3d: $1e $61

Jump_027_7a3f:
    and a                                         ; $7a3f: $a7
    inc h                                         ; $7a40: $24
    ld [hl], a                                    ; $7a41: $77
    sub [hl]                                      ; $7a42: $96
    ld e, d                                       ; $7a43: $5a
    jr c, jr_027_79e3                             ; $7a44: $38 $9d

    ld a, l                                       ; $7a46: $7d
    dec b                                         ; $7a47: $05
    db $fc                                        ; $7a48: $fc
    cp $e2                                        ; $7a49: $fe $e2
    xor l                                         ; $7a4b: $ad

jr_027_7a4c:
    rst $38                                       ; $7a4c: $ff
    sbc d                                         ; $7a4d: $9a
    inc [hl]                                      ; $7a4e: $34
    ld [$bd03], sp                                ; $7a4f: $08 $03 $bd
    jp nc, Jump_000_23ac                          ; $7a52: $d2 $ac $23

    reti                                          ; $7a55: $d9


    sub $76                                       ; $7a56: $d6 $76
    ld l, h                                       ; $7a58: $6c
    ld b, [hl]                                    ; $7a59: $46
    rst $38                                       ; $7a5a: $ff
    ld l, h                                       ; $7a5b: $6c
    sbc [hl]                                      ; $7a5c: $9e
    ld h, e                                       ; $7a5d: $63
    add hl, sp                                    ; $7a5e: $39
    ret z                                         ; $7a5f: $c8

    ldh a, [rTAC]                                 ; $7a60: $f0 $07

jr_027_7a62:
    cpl                                           ; $7a62: $2f
    scf                                           ; $7a63: $37
    dec c                                         ; $7a64: $0d
    ld c, h                                       ; $7a65: $4c
    ld e, $5e                                     ; $7a66: $1e $5e
    and l                                         ; $7a68: $a5
    ld a, [hl+]                                   ; $7a69: $2a
    di                                            ; $7a6a: $f3
    ld e, h                                       ; $7a6b: $5c
    ld a, h                                       ; $7a6c: $7c
    dec d                                         ; $7a6d: $15
    ld e, d                                       ; $7a6e: $5a
    ld c, c                                       ; $7a6f: $49
    ld a, [hl]                                    ; $7a70: $7e
    sbc [hl]                                      ; $7a71: $9e
    ld h, e                                       ; $7a72: $63
    add hl, sp                                    ; $7a73: $39
    cpl                                           ; $7a74: $2f
    ld [$0308], a                                 ; $7a75: $ea $08 $03
    dec l                                         ; $7a78: $2d
    add hl, hl                                    ; $7a79: $29
    jp nc, $c770                                  ; $7a7a: $d2 $70 $c7

    rst $38                                       ; $7a7d: $ff
    adc d                                         ; $7a7e: $8a
    ld e, d                                       ; $7a7f: $5a
    sbc a                                         ; $7a80: $9f
    ld l, d                                       ; $7a81: $6a
    cp [hl]                                       ; $7a82: $be
    jr nz, jr_027_7a62                            ; $7a83: $20 $dd

    sbc a                                         ; $7a85: $9f
    and $39                                       ; $7a86: $e6 $39
    cpl                                           ; $7a88: $2f
    ld [$8aab], a                                 ; $7a89: $ea $ab $8a
    halt                                          ; $7a8c: $76

jr_027_7a8d:
    db $fc                                        ; $7a8d: $fc
    ld h, l                                       ; $7a8e: $65
    call $c23b                                    ; $7a8f: $cd $3b $c2
    dec a                                         ; $7a92: $3d
    adc e                                         ; $7a93: $8b
    ld a, [$ae58]                                 ; $7a94: $fa $58 $ae
    ld c, c                                       ; $7a97: $49
    or e                                          ; $7a98: $b3
    and d                                         ; $7a99: $a2
    sub $9f                                       ; $7a9a: $d6 $9f
    sub a                                         ; $7a9c: $97
    sub a                                         ; $7a9d: $97
    rst $20                                       ; $7a9e: $e7
    xor $94                                       ; $7a9f: $ee $94
    or a                                          ; $7aa1: $b7
    sbc $18                                       ; $7aa2: $de $18
    cp a                                          ; $7aa4: $bf
    dec hl                                        ; $7aa5: $2b
    ld b, $47                                     ; $7aa6: $06 $47
    db $ed                                        ; $7aa8: $ed

jr_027_7aa9:
    db $f4                                        ; $7aa9: $f4
    rrca                                          ; $7aaa: $0f
    ccf                                           ; $7aab: $3f
    ld l, h                                       ; $7aac: $6c
    adc e                                         ; $7aad: $8b
    add $b8                                       ; $7aae: $c6 $b8
    or b                                          ; $7ab0: $b0
    ld e, c                                       ; $7ab1: $59
    jr nz, @+$4c                                  ; $7ab2: $20 $4a

    inc l                                         ; $7ab4: $2c
    call nc, $93c1                                ; $7ab5: $d4 $c1 $93
    cpl                                           ; $7ab8: $2f
    ld a, h                                       ; $7ab9: $7c
    or h                                          ; $7aba: $b4
    sub [hl]                                      ; $7abb: $96
    ld a, [c]                                     ; $7abc: $f2
    xor e                                         ; $7abd: $ab
    ld d, e                                       ; $7abe: $53
    ld a, [c]                                     ; $7abf: $f2
    jr nc, jr_027_7a8d                            ; $7ac0: $30 $cb

    db $ec                                        ; $7ac2: $ec
    sub h                                         ; $7ac3: $94
    ldh [$7d], a                                  ; $7ac4: $e0 $7d
    ld e, [hl]                                    ; $7ac6: $5e
    ld l, $05                                     ; $7ac7: $2e $05
    add b                                         ; $7ac9: $80
    jr nc, jr_027_7aa9                            ; $7aca: $30 $dd

    and d                                         ; $7acc: $a2
    ld [bc], a                                    ; $7acd: $02
    ld [hl], h                                    ; $7ace: $74
    ld e, c                                       ; $7acf: $59
    adc e                                         ; $7ad0: $8b
    dec hl                                        ; $7ad1: $2b
    or c                                          ; $7ad2: $b1
    or l                                          ; $7ad3: $b5
    sbc e                                         ; $7ad4: $9b
    dec [hl]                                      ; $7ad5: $35
    ld l, c                                       ; $7ad6: $69
    ld h, h                                       ; $7ad7: $64
    ld l, l                                       ; $7ad8: $6d
    ret                                           ; $7ad9: $c9


    inc c                                         ; $7ada: $0c
    and c                                         ; $7adb: $a1
    dec bc                                        ; $7adc: $0b
    ld b, $dd                                     ; $7add: $06 $dd
    adc l                                         ; $7adf: $8d
    xor a                                         ; $7ae0: $af
    ld c, c                                       ; $7ae1: $49
    inc hl                                        ; $7ae2: $23
    sub e                                         ; $7ae3: $93
    dec de                                        ; $7ae4: $1b

jr_027_7ae5:
    inc d                                         ; $7ae5: $14
    ld e, a                                       ; $7ae6: $5f
    ld d, c                                       ; $7ae7: $51
    ld h, d                                       ; $7ae8: $62
    or b                                          ; $7ae9: $b0
    or h                                          ; $7aea: $b4
    cp [hl]                                       ; $7aeb: $be
    xor h                                         ; $7aec: $ac
    ld c, c                                       ; $7aed: $49
    inc hl                                        ; $7aee: $23
    ld l, e                                       ; $7aef: $6b
    ld c, e                                       ; $7af0: $4b
    ld h, [hl]                                    ; $7af1: $66
    ld [$6253], sp                                ; $7af2: $08 $53 $62
    inc bc                                        ; $7af5: $03
    ld l, l                                       ; $7af6: $6d
    ld d, [hl]                                    ; $7af7: $56
    dec sp                                        ; $7af8: $3b
    and e                                         ; $7af9: $a3
    db $d3                                        ; $7afa: $d3
    and l                                         ; $7afb: $a5
    add [hl]                                      ; $7afc: $86
    ld bc, $7467                                  ; $7afd: $01 $67 $74
    cp d                                          ; $7b00: $ba
    ld h, b                                       ; $7b01: $60
    ld h, a                                       ; $7b02: $67
    ld [hl], h                                    ; $7b03: $74
    cp d                                          ; $7b04: $ba
    ld h, b                                       ; $7b05: $60
    ld h, a                                       ; $7b06: $67
    ld [hl], h                                    ; $7b07: $74
    cp d                                          ; $7b08: $ba
    ld h, b                                       ; $7b09: $60
    db $dd                                        ; $7b0a: $dd
    ld [hl-], a                                   ; $7b0b: $32
    db $fc                                        ; $7b0c: $fc
    or l                                          ; $7b0d: $b5
    or l                                          ; $7b0e: $b5
    xor d                                         ; $7b0f: $aa
    xor a                                         ; $7b10: $af
    cp h                                          ; $7b11: $bc
    inc a                                         ; $7b12: $3c
    ld [hl], a                                    ; $7b13: $77
    db $ed                                        ; $7b14: $ed
    ld l, h                                       ; $7b15: $6c
    cp d                                          ; $7b16: $ba
    ld h, b                                       ; $7b17: $60
    rst $00                                       ; $7b18: $c7
    ld c, e                                       ; $7b19: $4b
    ld a, [hl+]                                   ; $7b1a: $2a
    ld hl, $1084                                  ; $7b1b: $21 $84 $10
    jp nz, $6527                                  ; $7b1e: $c2 $27 $65

    sub $61                                       ; $7b21: $d6 $61
    pop af                                        ; $7b23: $f1
    sub $7f                                       ; $7b24: $d6 $7f
    cp d                                          ; $7b26: $ba
    or [hl]                                       ; $7b27: $b6
    ld h, h                                       ; $7b28: $64
    db $fd                                        ; $7b29: $fd
    ld l, c                                       ; $7b2a: $69
    cp h                                          ; $7b2b: $bc
    ld e, h                                       ; $7b2c: $5c
    ld [hl], b                                    ; $7b2d: $70
    or h                                          ; $7b2e: $b4
    ld d, e                                       ; $7b2f: $53
    sub d                                         ; $7b30: $92
    ld a, [hl]                                    ; $7b31: $7e
    ld l, c                                       ; $7b32: $69
    xor a                                         ; $7b33: $af
    ld c, c                                       ; $7b34: $49
    or e                                          ; $7b35: $b3
    jr nc, jr_027_7ae5                            ; $7b36: $30 $ad

    cp a                                          ; $7b38: $bf
    sub h                                         ; $7b39: $94
    or c                                          ; $7b3a: $b1
    sbc h                                         ; $7b3b: $9c
    ld d, d                                       ; $7b3c: $52
    inc sp                                        ; $7b3d: $33
    dec sp                                        ; $7b3e: $3b
    ld [hl], $97                                  ; $7b3f: $36 $97
    add d                                         ; $7b41: $82
    pop af                                        ; $7b42: $f1
    push hl                                       ; $7b43: $e5
    add $9f                                       ; $7b44: $c6 $9f
    ld h, l                                       ; $7b46: $65
    xor [hl]                                      ; $7b47: $ae
    push af                                       ; $7b48: $f5
    sbc a                                         ; $7b49: $9f
    sub a                                         ; $7b4a: $97

Jump_027_7b4b:
    dec bc                                        ; $7b4b: $0b
    ld l, e                                       ; $7b4c: $6b
    ld h, a                                       ; $7b4d: $67
    inc sp                                        ; $7b4e: $33
    rst $08                                       ; $7b4f: $cf
    ld a, c                                       ; $7b50: $79
    ld sp, hl                                     ; $7b51: $f9
    ld e, c                                       ; $7b52: $59
    ret z                                         ; $7b53: $c8

    cp [hl]                                       ; $7b54: $be
    ld [de], a                                    ; $7b55: $12
    xor d                                         ; $7b56: $aa
    inc [hl]                                      ; $7b57: $34
    ld [$ad03], sp                                ; $7b58: $08 $03 $ad
    cp d                                          ; $7b5b: $ba
    and d                                         ; $7b5c: $a2
    dec hl                                        ; $7b5d: $2b
    jp c, $bd65                                   ; $7b5e: $da $65 $bd

    jp nc, Jump_027_4a0c                          ; $7b61: $d2 $0c $4a

    sbc d                                         ; $7b64: $9a
    ret z                                         ; $7b65: $c8

    ld d, [hl]                                    ; $7b66: $56
    call nc, $83fa                                ; $7b67: $d4 $fa $83
    ld a, a                                       ; $7b6a: $7f
    ld e, d                                       ; $7b6b: $5a
    cp c                                          ; $7b6c: $b9
    jr nc, jr_027_7bca                            ; $7b6d: $30 $5b

    xor e                                         ; $7b6f: $ab
    rst $20                                       ; $7b70: $e7
    adc $cb                                       ; $7b71: $ce $cb
    cpl                                           ; $7b73: $2f
    sub b                                         ; $7b74: $90
    ld d, a                                       ; $7b75: $57
    ld e, a                                       ; $7b76: $5f
    inc [hl]                                      ; $7b77: $34
    ld h, c                                       ; $7b78: $61
    and a                                         ; $7b79: $a7
    dec bc                                        ; $7b7a: $0b
    ld b, $2d                                     ; $7b7b: $06 $2d

jr_027_7b7d:
    push bc                                       ; $7b7d: $c5
    ld hl, sp+$4c                                 ; $7b7e: $f8 $4c
    add a                                         ; $7b80: $87
    cp e                                          ; $7b81: $bb
    sub e                                         ; $7b82: $93
    dec [hl]                                      ; $7b83: $35
    jp c, Jump_027_74d9                           ; $7b84: $da $d9 $74

    pop bc                                        ; $7b87: $c1
    dec a                                         ; $7b88: $3d
    adc e                                         ; $7b89: $8b
    ld a, d                                       ; $7b8a: $7a
    dec c                                         ; $7b8b: $0d
    and $e5                                       ; $7b8c: $e6 $e5
    ld b, d                                       ; $7b8e: $42
    ld d, a                                       ; $7b8f: $57
    inc c                                         ; $7b90: $0c
    ld d, $af                                     ; $7b91: $16 $af
    pop bc                                        ; $7b93: $c1
    cp h                                          ; $7b94: $bc
    xor b                                         ; $7b95: $a8
    rrca                                          ; $7b96: $0f
    call c, Call_000_2e74                         ; $7b97: $dc $74 $2e
    sbc e                                         ; $7b9a: $9b
    sub a                                         ; $7b9b: $97
    ld c, e                                       ; $7b9c: $4b
    pop bc                                        ; $7b9d: $c1
    ld c, [hl]                                    ; $7b9e: $4e
    ld c, d                                       ; $7b9f: $4a
    ld a, [bc]                                    ; $7ba0: $0a
    jp c, $9ee9                                   ; $7ba1: $da $e9 $9e

    ld h, c                                       ; $7ba4: $61
    dec c                                         ; $7ba5: $0d
    ld d, $88                                     ; $7ba6: $16 $88
    jp nc, $c9e0                                  ; $7ba8: $d2 $e0 $c9

    ld d, a                                       ; $7bab: $57
    ld l, [hl]                                    ; $7bac: $6e
    adc b                                         ; $7bad: $88
    jr nc, @+$3f                                  ; $7bae: $30 $3d

    adc d                                         ; $7bb0: $8a
    ld a, d                                       ; $7bb1: $7a
    dec c                                         ; $7bb2: $0d
    halt                                          ; $7bb3: $76
    jp z, Jump_027_6f5b                           ; $7bb4: $ca $5b $6f

    adc h                                         ; $7bb7: $8c
    ld e, a                                       ; $7bb8: $5f
    add e                                         ; $7bb9: $83
    sbc l                                         ; $7bba: $9d
    cp $e1                                        ; $7bbb: $fe $e1
    add a                                         ; $7bbd: $87
    ld l, l                                       ; $7bbe: $6d
    pop de                                        ; $7bbf: $d1
    jr jr_027_7b7d                                ; $7bc0: $18 $bb

    db $ec                                        ; $7bc2: $ec
    ld hl, sp+$6b                                 ; $7bc3: $f8 $6b
    db $fd                                        ; $7bc5: $fd
    ld e, l                                       ; $7bc6: $5d
    ld e, a                                       ; $7bc7: $5f
    ld e, e                                       ; $7bc8: $5b
    xor e                                         ; $7bc9: $ab

jr_027_7bca:
    ld a, d                                       ; $7bca: $7a
    rla                                           ; $7bcb: $17
    inc c                                         ; $7bcc: $0c
    db $dd                                        ; $7bcd: $dd
    ld [hl-], a                                   ; $7bce: $32
    db $fc                                        ; $7bcf: $fc
    dec b                                         ; $7bd0: $05
    rst $28                                       ; $7bd1: $ef
    cp e                                          ; $7bd2: $bb
    adc $5d                                       ; $7bd3: $ce $5d
    rst $30                                       ; $7bd5: $f7
    ld [hl], h                                    ; $7bd6: $74
    ld a, a                                       ; $7bd7: $7f
    jp hl                                         ; $7bd8: $e9


    add d                                         ; $7bd9: $82
    ld bc, $67c7                                  ; $7bda: $01 $c7 $67
    or d                                          ; $7bdd: $b2
    reti                                          ; $7bde: $d9


    add hl, hl                                    ; $7bdf: $29
    ld l, e                                       ; $7be0: $6b
    jp nc, $d770                                  ; $7be1: $d2 $70 $d7

    xor d                                         ; $7be4: $aa
    ld [hl+], a                                   ; $7be5: $22
    ld c, l                                       ; $7be6: $4d
    rla                                           ; $7be7: $17
    inc c                                         ; $7be8: $0c
    xor l                                         ; $7be9: $ad
    ld a, [hl+]                                   ; $7bea: $2a
    jp nc, $d770                                  ; $7beb: $d2 $70 $d7

    and h                                         ; $7bee: $a4
    ld e, c                                       ; $7bef: $59
    sub l                                         ; $7bf0: $95
    ld h, $b2                                     ; $7bf1: $26 $b2
    dec d                                         ; $7bf3: $15
    or l                                          ; $7bf4: $b5
    cp $82                                        ; $7bf5: $fe $82
    db $f4                                        ; $7bf7: $f4
    add hl, de                                    ; $7bf8: $19
    sbc b                                         ; $7bf9: $98
    add $b8                                       ; $7bfa: $c6 $b8
    ld c, e                                       ; $7bfc: $4b
    sbc [hl]                                      ; $7bfd: $9e
    ld [hl], e                                    ; $7bfe: $73
    ld c, c                                       ; $7bff: $49
    db $d3                                        ; $7c00: $d3
    adc [hl]                                      ; $7c01: $8e
    rst $18                                       ; $7c02: $df
    dec b                                         ; $7c03: $05
    inc bc                                        ; $7c04: $03
    and a                                         ; $7c05: $a7
    cp h                                          ; $7c06: $bc
    push af                                       ; $7c07: $f5

Jump_027_7c08:
    add $f8                                       ; $7c08: $c6 $f8
    ld e, l                                       ; $7c0a: $5d
    sub $9a                                       ; $7c0b: $d6 $9a
    db $fc                                        ; $7c0d: $fc
    ld d, h                                       ; $7c0e: $54
    ld a, [hl]                                    ; $7c0f: $7e
    ld c, l                                       ; $7c10: $4d
    sbc d                                         ; $7c11: $9a
    xor [hl]                                      ; $7c12: $ae
    jr jr_027_7c3c                                ; $7c13: $18 $27

    dec hl                                        ; $7c15: $2b
    db $d3                                        ; $7c16: $d3
    ld [hl], b                                    ; $7c17: $70
    db $dd                                        ; $7c18: $dd
    inc sp                                        ; $7c19: $33
    or h                                          ; $7c1a: $b4
    push hl                                       ; $7c1b: $e5
    sbc e                                         ; $7c1c: $9b
    ld e, l                                       ; $7c1d: $5d
    sbc d                                         ; $7c1e: $9a
    sub a                                         ; $7c1f: $97
    sbc a                                         ; $7c20: $9f
    add l                                         ; $7c21: $85
    db $ec                                        ; $7c22: $ec
    dec hl                                        ; $7c23: $2b
    and c                                         ; $7c24: $a1
    ld c, d                                       ; $7c25: $4a
    inc sp                                        ; $7c26: $33
    ei                                            ; $7c27: $fb
    ld [hl], d                                    ; $7c28: $72
    ld a, b                                       ; $7c29: $78
    or [hl]                                       ; $7c2a: $b6

jr_027_7c2b:
    ldh a, [$27]                                  ; $7c2b: $f0 $27
    scf                                           ; $7c2d: $37
    jr z, jr_027_7c6e                             ; $7c2e: $28 $3e

    db $d3                                        ; $7c30: $d3
    ld b, c                                       ; $7c31: $41
    jr jr_027_7bca                                ; $7c32: $18 $96

    ld h, l                                       ; $7c34: $65
    dec de                                        ; $7c35: $1b
    ld e, [hl]                                    ; $7c36: $5e
    xor h                                         ; $7c37: $ac
    rst $08                                       ; $7c38: $cf
    sub $a4                                       ; $7c39: $d6 $a4
    sub c                                         ; $7c3b: $91

jr_027_7c3c:
    push bc                                       ; $7c3c: $c5
    db $eb                                        ; $7c3d: $eb
    ld e, $7f                                     ; $7c3e: $1e $7f
    jp z, Jump_027_4fac                           ; $7c40: $ca $ac $4f

    ld l, [hl]                                    ; $7c43: $6e
    db $e4                                        ; $7c44: $e4
    cp c                                          ; $7c45: $b9
    ld l, e                                       ; $7c46: $6b
    ld d, l                                       ; $7c47: $55
    sub c                                         ; $7c48: $91
    ld h, [hl]                                    ; $7c49: $66
    db $dd                                        ; $7c4a: $dd
    db $d3                                        ; $7c4b: $d3
    db $fd                                        ; $7c4c: $fd
    dec b                                         ; $7c4d: $05

Jump_027_7c4e:
    ld h, c                                       ; $7c4e: $61
    ld h, a                                       ; $7c4f: $67
    add h                                         ; $7c50: $84
    ld [$17a1], sp                                ; $7c51: $08 $a1 $17
    add h                                         ; $7c54: $84
    sub b                                         ; $7c55: $90
    rla                                           ; $7c56: $17
    push af                                       ; $7c57: $f5
    ld e, l                                       ; $7c58: $5d
    ld b, b                                       ; $7c59: $40
    ld [$a761], sp                                ; $7c5a: $08 $61 $a7
    cp h                                          ; $7c5d: $bc
    push af                                       ; $7c5e: $f5
    ld h, l                                       ; $7c5f: $65
    inc l                                         ; $7c60: $2c
    rst $20                                       ; $7c61: $e7
    ld b, l                                       ; $7c62: $45
    ld a, l                                       ; $7c63: $7d
    ld a, [de]                                    ; $7c64: $1a
    add sp, $25                                   ; $7c65: $e8 $25
    or h                                          ; $7c67: $b4
    sbc [hl]                                      ; $7c68: $9e
    ld e, a                                       ; $7c69: $5f
    adc e                                         ; $7c6a: $8b
    ld [hl], c                                    ; $7c6b: $71
    xor [hl]                                      ; $7c6c: $ae
    or c                                          ; $7c6d: $b1

jr_027_7c6e:
    cp [hl]                                       ; $7c6e: $be
    xor b                                         ; $7c6f: $a8
    cp $82                                        ; $7c70: $fe $82
    sub $2d                                       ; $7c72: $d6 $2d
    ld a, [hl+]                                   ; $7c74: $2a
    ret nz                                        ; $7c75: $c0

    ret c                                         ; $7c76: $d8

    add l                                         ; $7c77: $85
    ldh a, [rSC]                                  ; $7c78: $f0 $02
    inc a                                         ; $7c7a: $3c
    ld b, e                                       ; $7c7b: $43
    jr jr_027_7c2b                                ; $7c7c: $18 $ad

    rra                                           ; $7c7e: $1f
    ld h, e                                       ; $7c7f: $63
    ld [hl], d                                    ; $7c80: $72
    ld [hl], a                                    ; $7c81: $77
    ld a, d                                       ; $7c82: $7a
    ld [de], a                                    ; $7c83: $12
    jp nz, Jump_000_01dd                          ; $7c84: $c2 $dd $01

    inc e                                         ; $7c87: $1c
    ld hl, $4c74                                  ; $7c88: $21 $74 $4c
    ld d, d                                       ; $7c8b: $52
    call $d707                                    ; $7c8c: $cd $07 $d7
    rst $10                                       ; $7c8f: $d7
    ld l, [hl]                                    ; $7c90: $6e
    sub $fa                                       ; $7c91: $d6 $fa
    ld [de], a                                    ; $7c93: $12
    sbc $a4                                       ; $7c94: $de $a4
    rst $20                                       ; $7c96: $e7
    ld c, $ca                                     ; $7c97: $0e $ca
    rst $10                                       ; $7c99: $d7
    ld h, b                                       ; $7c9a: $60
    db $ed                                        ; $7c9b: $ed
    cp a                                          ; $7c9c: $bf
    inc d                                         ; $7c9d: $14
    ld c, h                                       ; $7c9e: $4c
    ld d, a                                       ; $7c9f: $57
    and a                                         ; $7ca0: $a7
    db $e4                                        ; $7ca1: $e4
    ei                                            ; $7ca2: $fb
    cp [hl]                                       ; $7ca3: $be
    sbc $b7                                       ; $7ca4: $de $b7
    add $88                                       ; $7ca6: $c6 $88
    jr nc, jr_027_7ce7                            ; $7ca8: $30 $3d

    adc e                                         ; $7caa: $8b
    ld a, [$9efa]                                 ; $7cab: $fa $fa $9e
    ld b, $7a                                     ; $7cae: $06 $7a
    xor c                                         ; $7cb0: $a9
    dec hl                                        ; $7cb1: $2b
    ld b, $ad                                     ; $7cb2: $06 $ad
    ld a, [hl+]                                   ; $7cb4: $2a
    jp nc, $0770                                  ; $7cb5: $d2 $70 $07

    rst $10                                       ; $7cb8: $d7
    rst $10                                       ; $7cb9: $d7
    ld l, [hl]                                    ; $7cba: $6e
    ld d, $3e                                     ; $7cbb: $16 $3e
    sbc d                                         ; $7cbd: $9a
    ld h, l                                       ; $7cbe: $65
    ld [hl], l                                    ; $7cbf: $75
    ld c, d                                       ; $7cc0: $4a
    ld a, [hl]                                    ; $7cc1: $7e
    ld a, [de]                                    ; $7cc2: $1a
    db $e3                                        ; $7cc3: $e3
    or h                                          ; $7cc4: $b4
    sbc l                                         ; $7cc5: $9d
    add $d7                                       ; $7cc6: $c6 $d7
    ld a, [$ced2]                                 ; $7cc8: $fa $d2 $ce
    sbc b                                         ; $7ccb: $98
    ld b, c                                       ; $7ccc: $41
    add e                                         ; $7ccd: $83
    jr nc, @-$21                                  ; $7cce: $30 $dd

    db $e3                                        ; $7cd0: $e3
    dec hl                                        ; $7cd1: $2b
    db $fc                                        ; $7cd2: $fc
    db $ec                                        ; $7cd3: $ec
    ld c, e                                       ; $7cd4: $4b
    ld l, h                                       ; $7cd5: $6c
    ld a, [hl-]                                   ; $7cd6: $3a
    ld a, b                                       ; $7cd7: $78
    ld [hl], l                                    ; $7cd8: $75
    xor $c0                                       ; $7cd9: $ee $c0
    dec c                                         ; $7cdb: $0d
    ld a, e                                       ; $7cdc: $7b
    ld [hl], d                                    ; $7cdd: $72
    ld b, b                                       ; $7cde: $40
    jr @+$3f                                      ; $7cdf: $18 $3d

    set 6, e                                      ; $7ce1: $cb $f3
    call c, $5179                                 ; $7ce3: $dc $79 $51
    rra                                           ; $7ce6: $1f

jr_027_7ce7:
    xor a                                         ; $7ce7: $af
    or b                                          ; $7ce8: $b0
    ld a, [hl+]                                   ; $7ce9: $2a
    ld h, $3c                                     ; $7cea: $26 $3c
    jp nz, $ca3d                                  ; $7cec: $c2 $3d $ca

    rst $08                                       ; $7cef: $cf
    cp [hl]                                       ; $7cf0: $be
    ld [bc], a                                    ; $7cf1: $02
    cp [hl]                                       ; $7cf2: $be
    sub $97                                       ; $7cf3: $d6 $97
    halt                                          ; $7cf5: $76
    add $0c                                       ; $7cf6: $c6 $0c
    sbc d                                         ; $7cf8: $9a
    push bc                                       ; $7cf9: $c5
    rlca                                          ; $7cfa: $07
    ld c, b                                       ; $7cfb: $48
    jp c, $9585                                   ; $7cfc: $da $85 $95

    sub a                                         ; $7cff: $97
    or $2e                                        ; $7d00: $f6 $2e
    ld a, e                                       ; $7d02: $7b
    ld a, [c]                                     ; $7d03: $f2
    ld l, e                                       ; $7d04: $6b
    rst $18                                       ; $7d05: $df
    ld c, d                                       ; $7d06: $4a
    db $fd                                        ; $7d07: $fd
    ld h, $a1                                     ; $7d08: $26 $a1
    or l                                          ; $7d0a: $b5
    cp [hl]                                       ; $7d0b: $be
    or h                                          ; $7d0c: $b4
    ld h, c                                       ; $7d0d: $61
    ld a, [hl+]                                   ; $7d0e: $2a
    cp a                                          ; $7d0f: $bf
    dec de                                        ; $7d10: $1b
    halt                                          ; $7d11: $76
    ld d, d                                       ; $7d12: $52
    ld e, h                                       ; $7d13: $5c
    ret                                           ; $7d14: $c9


    ld [hl], a                                    ; $7d15: $77
    add hl, hl                                    ; $7d16: $29
    sub b                                         ; $7d17: $90
    ld h, a                                       ; $7d18: $67
    rst $30                                       ; $7d19: $f7
    ret                                           ; $7d1a: $c9


    ld h, c                                       ; $7d1b: $61
    sub a                                         ; $7d1c: $97
    ld d, $2a                                     ; $7d1d: $16 $2a
    dec [hl]                                      ; $7d1f: $35
    db $eb                                        ; $7d20: $eb
    and h                                         ; $7d21: $a4
    rst $18                                       ; $7d22: $df
    and h                                         ; $7d23: $a4
    reti                                          ; $7d24: $d9


    add hl, hl                                    ; $7d25: $29
    and c                                         ; $7d26: $a1
    adc c                                         ; $7d27: $89
    ld a, [$41dc]                                 ; $7d28: $fa $dc $41
    xor $fa                                       ; $7d2b: $ee $fa
    ld l, $ec                                     ; $7d2d: $2e $ec
    add [hl]                                      ; $7d2f: $86
    sbc l                                         ; $7d30: $9d
    inc d                                         ; $7d31: $14
    ld d, a                                       ; $7d32: $57
    ld a, [c]                                     ; $7d33: $f2
    ld a, c                                       ; $7d34: $79
    xor [hl]                                      ; $7d35: $ae
    ld c, [hl]                                    ; $7d36: $4e
    ret                                           ; $7d37: $c9


    cpl                                           ; $7d38: $2f
    jp hl                                         ; $7d39: $e9


    ld h, a                                       ; $7d3a: $67
    ld c, e                                       ; $7d3b: $4b
    add [hl]                                      ; $7d3c: $86
    di                                            ; $7d3d: $f3
    ld a, [c]                                     ; $7d3e: $f2
    ld c, e                                       ; $7d3f: $4b
    cpl                                           ; $7d40: $2f
    cpl                                           ; $7d41: $2f
    ld [$9603], sp                                ; $7d42: $08 $03 $96
    ld l, c                                       ; $7d45: $69

jr_027_7d46:
    sub h                                         ; $7d46: $94
    ld d, a                                       ; $7d47: $57
    sub $ac                                       ; $7d48: $d6 $ac
    ld c, [hl]                                    ; $7d4a: $4e
    ret                                           ; $7d4b: $c9


    ld [hl], a                                    ; $7d4c: $77
    pop bc                                        ; $7d4d: $c1
    rst $00                                       ; $7d4e: $c7
    ld c, e                                       ; $7d4f: $4b
    ld a, [hl+]                                   ; $7d50: $2a
    ld hl, $270c                                  ; $7d51: $21 $0c $27
    jr jr_027_7d46                                ; $7d54: $18 $f0

    push bc                                       ; $7d56: $c5
    ld e, e                                       ; $7d57: $5b
    rst $38                                       ; $7d58: $ff
    sub l                                         ; $7d59: $95
    rla                                           ; $7d5a: $17
    add h                                         ; $7d5b: $84
    ld bc, $6996                                  ; $7d5c: $01 $96 $69
    jr c, @+$07                                   ; $7d5f: $38 $05

    cp b                                          ; $7d61: $b8
    ld bc, $0a5d                                  ; $7d62: $01 $5d $0a
    or $5a                                        ; $7d65: $f6 $5a
    sub l                                         ; $7d67: $95
    and l                                         ; $7d68: $a5
    cp l                                          ; $7d69: $bd
    ld h, $cd                                     ; $7d6a: $26 $cd
    sub h                                         ; $7d6c: $94
    ld h, [hl]                                    ; $7d6d: $66
    and c                                         ; $7d6e: $a1
    ld b, b                                       ; $7d6f: $40
    sbc [hl]                                      ; $7d70: $9e
    db $dd                                        ; $7d71: $dd
    daa                                           ; $7d72: $27
    rst $18                                       ; $7d73: $df
    or c                                          ; $7d74: $b1
    ld d, h                                       ; $7d75: $54
    dec [hl]                                      ; $7d76: $35
    ld d, l                                       ; $7d77: $55
    call z, $b3ce                                 ; $7d78: $cc $ce $b3
    xor e                                         ; $7d7b: $ab
    ld l, b                                       ; $7d7c: $68
    cp l                                          ; $7d7d: $bd
    jp nc, $bf8c                                  ; $7d7e: $d2 $8c $bf

    ld sp, $fdae                                  ; $7d81: $31 $ae $fd
    db $d3                                        ; $7d84: $d3
    halt                                          ; $7d85: $76
    db $fc                                        ; $7d86: $fc
    ld a, c                                       ; $7d87: $79
    adc $c0                                       ; $7d88: $ce $c0
    rst $28                                       ; $7d8a: $ef
    ld a, [hl-]                                   ; $7d8b: $3a
    db $ec                                        ; $7d8c: $ec
    add $68                                       ; $7d8d: $c6 $68
    ret nz                                        ; $7d8f: $c0

    ld b, l                                       ; $7d90: $45
    db $fd                                        ; $7d91: $fd
    ld h, $c1                                     ; $7d92: $26 $c1
    inc a                                         ; $7d94: $3c
    ld [hl], a                                    ; $7d95: $77
    reti                                          ; $7d96: $d9


    sub e                                         ; $7d97: $93
    ld e, a                                       ; $7d98: $5f
    cp e                                          ; $7d99: $bb
    sbc c                                         ; $7d9a: $99
    ld d, d                                       ; $7d9b: $52
    or e                                          ; $7d9c: $b3
    ld a, [c]                                     ; $7d9d: $f2
    jp nc, $1846                                  ; $7d9e: $d2 $46 $18

    dec a                                         ; $7da1: $3d
    set 2, e                                      ; $7da2: $cb $d3
    sbc d                                         ; $7da4: $9a
    inc [hl]                                      ; $7da5: $34
    or e                                          ; $7da6: $b3
    cpl                                           ; $7da7: $2f
    or c                                          ; $7da8: $b1
    jp hl                                         ; $7da9: $e9


    jp z, Jump_027_7b4b                           ; $7daa: $ca $4b $7b

    add hl, hl                                    ; $7dad: $29
    ld c, e                                       ; $7dae: $4b
    cpl                                           ; $7daf: $2f
    cpl                                           ; $7db0: $2f
    cp e                                          ; $7db1: $bb
    inc d                                         ; $7db2: $14
    ret z                                         ; $7db3: $c8

    or e                                          ; $7db4: $b3
    ei                                            ; $7db5: $fb
    db $e4                                        ; $7db6: $e4
    ld l, e                                       ; $7db7: $6b
    jp nc, Jump_000_258c                          ; $7db8: $d2 $8c $25

    push de                                       ; $7dbb: $d5
    ld a, h                                       ; $7dbc: $7c
    ld a, [c]                                     ; $7dbd: $f2
    ld d, l                                       ; $7dbe: $55
    ld b, $74                                     ; $7dbf: $06 $74
    add hl, sp                                    ; $7dc1: $39
    ld a, $77                                     ; $7dc2: $3e $77
    dec e                                         ; $7dc4: $1d
    ld a, c                                       ; $7dc5: $79
    add b                                         ; $7dc6: $80
    ld e, l                                       ; $7dc7: $5d
    rst $18                                       ; $7dc8: $df
    dec h                                         ; $7dc9: $25
    rst $08                                       ; $7dca: $cf
    dec [hl]                                      ; $7dcb: $35
    ld l, c                                       ; $7dcc: $69
    ld h, h                                       ; $7dcd: $64
    rst $00                                       ; $7dce: $c7
    ld d, d                                       ; $7dcf: $52
    push de                                       ; $7dd0: $d5
    ld d, h                                       ; $7dd1: $54
    ld sp, $cf3b                                  ; $7dd2: $31 $3b $cf
    xor [hl]                                      ; $7dd5: $ae
    and d                                         ; $7dd6: $a2
    ld e, c                                       ; $7dd7: $59
    ld a, h                                       ; $7dd8: $7c
    db $fc                                        ; $7dd9: $fc
    adc l                                         ; $7dda: $8d
    ld [hl], c                                    ; $7ddb: $71
    db $ed                                        ; $7ddc: $ed
    ld e, a                                       ; $7ddd: $5f
    xor b                                         ; $7dde: $a8
    pop bc                                        ; $7ddf: $c1
    xor l                                         ; $7de0: $ad
    inc [hl]                                      ; $7de1: $34
    add $66                                       ; $7de2: $c6 $66
    sub a                                         ; $7de4: $97
    dec a                                         ; $7de5: $3d
    ld sp, hl                                     ; $7de6: $f9
    or l                                          ; $7de7: $b5
    rst $28                                       ; $7de8: $ef
    or e                                          ; $7de9: $b3
    add hl, hl                                    ; $7dea: $29
    or c                                          ; $7deb: $b1
    ld b, c                                       ; $7dec: $41
    adc d                                         ; $7ded: $8a
    ccf                                           ; $7dee: $3f
    ld b, e                                       ; $7def: $43
    db $eb                                        ; $7df0: $eb
    and c                                         ; $7df1: $a1
    push af                                       ; $7df2: $f5
    ld e, a                                       ; $7df3: $5f
    sub e                                         ; $7df4: $93
    ld b, [hl]                                    ; $7df5: $46
    halt                                          ; $7df6: $76
    inc l                                         ; $7df7: $2c
    ld d, l                                       ; $7df8: $55
    ld c, l                                       ; $7df9: $4d
    dec d                                         ; $7dfa: $15
    or e                                          ; $7dfb: $b3
    di                                            ; $7dfc: $f3
    db $ec                                        ; $7dfd: $ec
    ld [$d894], a                                 ; $7dfe: $ea $94 $d8
    ldh [rHDMA5], a                               ; $7e01: $e0 $55
    xor d                                         ; $7e03: $aa
    ld [hl-], a                                   ; $7e04: $32
    cpl                                           ; $7e05: $2f

Call_027_7e06:
    ccf                                           ; $7e06: $3f
    xor b                                         ; $7e07: $a8
    ld c, d                                       ; $7e08: $4a
    ld h, [hl]                                    ; $7e09: $66
    ld e, h                                       ; $7e0a: $5c
    jr nz, jr_027_7e76                            ; $7e0b: $20 $69

    adc b                                         ; $7e0d: $88
    pop bc                                        ; $7e0e: $c1
    db $ec                                        ; $7e0f: $ec
    sub h                                         ; $7e10: $94
    sub l                                         ; $7e11: $95
    sub a                                         ; $7e12: $97
    ld [hl], $a0                                  ; $7e13: $36 $a0
    dec e                                         ; $7e15: $1d
    sub e                                         ; $7e16: $93
    and e                                         ; $7e17: $a3
    db $f4                                        ; $7e18: $f4
    dec a                                         ; $7e19: $3d
    ld sp, hl                                     ; $7e1a: $f9
    res 7, h                                      ; $7e1b: $cb $bc
    db $fc                                        ; $7e1d: $fc
    adc [hl]                                      ; $7e1e: $8e
    ld c, e                                       ; $7e1f: $4b
    ld l, c                                       ; $7e20: $69
    ld e, a                                       ; $7e21: $5f

jr_027_7e22:
    add $9e                                       ; $7e22: $c6 $9e
    halt                                          ; $7e24: $76
    ld e, h                                       ; $7e25: $5c
    jp z, $a383                                   ; $7e26: $ca $83 $a3

    dec e                                         ; $7e29: $1d
    ld b, l                                       ; $7e2a: $45
    ld l, h                                       ; $7e2b: $6c
    inc l                                         ; $7e2c: $2c
    xor c                                         ; $7e2d: $a9
    and $93                                       ; $7e2e: $e6 $93
    ld [hl], a                                    ; $7e30: $77
    inc hl                                        ; $7e31: $23
    inc [hl]                                      ; $7e32: $34
    ld b, e                                       ; $7e33: $43
    ld a, [hl]                                    ; $7e34: $7e
    db $e3                                        ; $7e35: $e3
    sbc d                                         ; $7e36: $9a
    inc [hl]                                      ; $7e37: $34
    dec hl                                        ; $7e38: $2b
    ld l, d                                       ; $7e39: $6a
    db $fd                                        ; $7e3a: $fd
    ld a, c                                       ; $7e3b: $79
    ld sp, hl                                     ; $7e3c: $f9
    pop bc                                        ; $7e3d: $c1
    push hl                                       ; $7e3e: $e5
    or b                                          ; $7e3f: $b0
    ld a, [c]                                     ; $7e40: $f2
    jp nc, Jump_000_2586                          ; $7e41: $d2 $86 $25

    call $afcb                                    ; $7e44: $cd $cb $af
    cp h                                          ; $7e47: $bc
    or h                                          ; $7e48: $b4
    rla                                           ; $7e49: $17
    cpl                                           ; $7e4a: $2f
    ld hl, sp+$2c                                 ; $7e4b: $f8 $2c
    dec bc                                        ; $7e4d: $0b
    call nc, $f3fa                                ; $7e4e: $d4 $fa $f3
    ld e, h                                       ; $7e51: $5c
    sub e                                         ; $7e52: $93
    ld b, $61                                     ; $7e53: $06 $61
    cp l                                          ; $7e55: $bd
    jp nc, Jump_027_52ac                          ; $7e56: $d2 $ac $52

    sbc d                                         ; $7e59: $9a
    sbc l                                         ; $7e5a: $9d

jr_027_7e5b:
    ld sp, $bf26                                  ; $7e5b: $31 $26 $bf
    ldh a, [rPCM34]                               ; $7e5e: $f0 $77
    db $ed                                        ; $7e60: $ed
    dec [hl]                                      ; $7e61: $35
    ld l, c                                       ; $7e62: $69
    ld d, $6f                                     ; $7e63: $16 $6f
    db $fd                                        ; $7e65: $fd
    pop de                                        ; $7e66: $d1
    inc l                                         ; $7e67: $2c
    sub e                                         ; $7e68: $93
    xor a                                         ; $7e69: $af
    ld [hl-], a                                   ; $7e6a: $32
    and b                                         ; $7e6b: $a0
    set 6, c                                      ; $7e6c: $cb $f1
    rla                                           ; $7e6e: $17
    ld h, $f8                                     ; $7e6f: $26 $f8
    jp z, Jump_000_1b4b                           ; $7e71: $ca $4b $1b

    and [hl]                                      ; $7e74: $a6
    ld d, c                                       ; $7e75: $51

jr_027_7e76:
    ld e, [hl]                                    ; $7e76: $5e
    ld e, c                                       ; $7e77: $59
    add e                                         ; $7e78: $83

jr_027_7e79:
    jr nc, jr_027_7e22                            ; $7e79: $30 $a7

    inc h                                         ; $7e7b: $24
    ld [hl], a                                    ; $7e7c: $77
    sub [hl]                                      ; $7e7d: $96
    ld b, c                                       ; $7e7e: $41
    ld c, c                                       ; $7e7f: $49
    inc de                                        ; $7e80: $13
    reti                                          ; $7e81: $d9


    ld a, [hl-]                                   ; $7e82: $3a
    sub d                                         ; $7e83: $92
    ld l, l                                       ; $7e84: $6d
    ld l, l                                       ; $7e85: $6d
    rst $00                                       ; $7e86: $c7
    ld h, [hl]                                    ; $7e87: $66
    pop af                                        ; $7e88: $f1
    ld d, l                                       ; $7e89: $55
    ld l, b                                       ; $7e8a: $68
    rst $10                                       ; $7e8b: $d7
    sub a                                         ; $7e8c: $97
    or h                                          ; $7e8d: $b4
    or b                                          ; $7e8e: $b0
    ld e, c                                       ; $7e8f: $59
    ld a, [c]                                     ; $7e90: $f2
    add h                                         ; $7e91: $84
    jr nc, jr_027_7e5b                            ; $7e92: $30 $c7

    inc h                                         ; $7e94: $24
    push de                                       ; $7e95: $d5
    ld a, h                                       ; $7e96: $7c
    pop bc                                        ; $7e97: $c1
    ei                                            ; $7e98: $fb
    sub h                                         ; $7e99: $94
    sbc d                                         ; $7e9a: $9a
    ld a, c                                       ; $7e9b: $79
    ld c, c                                       ; $7e9c: $49
    ld hl, $82e8                                  ; $7e9d: $21 $e8 $82
    ld bc, $6aad                                  ; $7ea0: $01 $ad $6a
    db $fd                                        ; $7ea3: $fd
    ld e, l                                       ; $7ea4: $5d
    ld e, a                                       ; $7ea5: $5f
    sub e                                         ; $7ea6: $93
    ld b, [hl]                                    ; $7ea7: $46
    add $6b                                       ; $7ea8: $c6 $6b
    add e                                         ; $7eaa: $83
    jr nc, @+$2f                                  ; $7eab: $30 $2d

    rst $38                                       ; $7ead: $ff
    ld l, e                                       ; $7eae: $6b
    jp nc, $aa2c                                  ; $7eaf: $d2 $2c $aa

    cp a                                          ; $7eb2: $bf
    ld [hl], b                                    ; $7eb3: $70
    rst $10                                       ; $7eb4: $d7
    xor d                                         ; $7eb5: $aa
    ld [hl+], a                                   ; $7eb6: $22
    dec c                                         ; $7eb7: $0d
    jp nz, $d2bd                                  ; $7eb8: $c2 $bd $d2

    inc c                                         ; $7ebb: $0c
    ld c, d                                       ; $7ebc: $4a
    sbc d                                         ; $7ebd: $9a
    ret z                                         ; $7ebe: $c8

    ld d, $33                                     ; $7ebf: $16 $33
    db $eb                                        ; $7ec1: $eb
    ld c, e                                       ; $7ec2: $4b
    db $e3                                        ; $7ec3: $e3
    ld [hl], b                                    ; $7ec4: $70
    reti                                          ; $7ec5: $d9


    ld [hl], e                                    ; $7ec6: $73
    rst $10                                       ; $7ec7: $d7
    xor d                                         ; $7ec8: $aa
    ld [hl+], a                                   ; $7ec9: $22
    dec c                                         ; $7eca: $0d
    jp nz, $e4a7                                  ; $7ecb: $c2 $a7 $e4

    jp z, Jump_000_1b4b                           ; $7ece: $ca $4b $1b

    halt                                          ; $7ed1: $76
    ld l, c                                       ; $7ed2: $69
    push hl                                       ; $7ed3: $e5
    push hl                                       ; $7ed4: $e5
    cp c                                          ; $7ed5: $b9
    ld l, e                                       ; $7ed6: $6b
    ld d, l                                       ; $7ed7: $55
    sub c                                         ; $7ed8: $91
    ld b, $61                                     ; $7ed9: $06 $61
    dec a                                         ; $7edb: $3d
    jp z, Jump_027_5d85                           ; $7edc: $ca $85 $5d

    jr jr_027_7e79                                ; $7edf: $18 $98

    ld c, [hl]                                    ; $7ee1: $4e
    daa                                           ; $7ee2: $27
    pop hl                                        ; $7ee3: $e1
    reti                                          ; $7ee4: $d9


    inc a                                         ; $7ee5: $3c
    rst $10                                       ; $7ee6: $d7
    cp $29                                        ; $7ee7: $fe $29
    dec l                                         ; $7ee9: $2d
    adc l                                         ; $7eea: $8d
    jp $3f65                                      ; $7eeb: $c3 $65 $3f


    dec b                                         ; $7eee: $05
    cp b                                          ; $7eef: $b8
    ld bc, $4f85                                  ; $7ef0: $01 $85 $4f
    adc $5d                                       ; $7ef3: $ce $5d
    xor e                                         ; $7ef5: $ab
    adc d                                         ; $7ef6: $8a
    inc [hl]                                      ; $7ef7: $34
    ld [$c703], sp                                ; $7ef8: $08 $03 $c7
    db $e4                                        ; $7efb: $e4
    sbc d                                         ; $7efc: $9a
    inc [hl]                                      ; $7efd: $34
    xor e                                         ; $7efe: $ab
    ld d, e                                       ; $7eff: $53
    ld a, [c]                                     ; $7f00: $f2
    db $d3                                        ; $7f01: $d3
    dec b                                         ; $7f02: $05
    sbc c                                         ; $7f03: $99
    ld l, h                                       ; $7f04: $6c
    sbc l                                         ; $7f05: $9d
    xor b                                         ; $7f06: $a8
    push de                                       ; $7f07: $d5
    rst $08                                       ; $7f08: $cf
    ld [hl], e                                    ; $7f09: $73
    or $25                                        ; $7f0a: $f6 $25
    or [hl]                                       ; $7f0c: $b6
    ld a, [c]                                     ; $7f0d: $f2
    jp nc, Jump_000_2586                          ; $7f0e: $d2 $86 $25

    call $0fcb                                    ; $7f11: $cd $cb $0f

jr_027_7f14:
    xor d                                         ; $7f14: $aa

jr_027_7f15:
    sub d                                         ; $7f15: $92
    add hl, de                                    ; $7f16: $19
    rla                                           ; $7f17: $17
    ld c, b                                       ; $7f18: $48
    ld a, [de]                                    ; $7f19: $1a
    ld h, d                                       ; $7f1a: $62
    ret nc                                        ; $7f1b: $d0

    dec d                                         ; $7f1c: $15
    inc bc                                        ; $7f1d: $03
    daa                                           ; $7f1e: $27
    ld h, l                                       ; $7f1f: $65
    sub $57                                       ; $7f20: $d6 $57
    ld d, h                                       ; $7f22: $54
    ret c                                         ; $7f23: $d8

    db $ec                                        ; $7f24: $ec
    sub h                                         ; $7f25: $94
    add hl, de                                    ; $7f26: $19
    ld [hl-], a                                   ; $7f27: $32
    ld h, b                                       ; $7f28: $60
    inc [hl]                                      ; $7f29: $34
    adc $8d                                       ; $7f2a: $ce $8d
    db $ed                                        ; $7f2c: $ed
    or b                                          ; $7f2d: $b0
    or h                                          ; $7f2e: $b4
    rla                                           ; $7f2f: $17
    adc b                                         ; $7f30: $88
    ld [bc], a                                    ; $7f31: $02
    and b                                         ; $7f32: $a0
    push af                                       ; $7f33: $f5
    jr z, jr_027_7f15                             ; $7f34: $28 $df

    call nc, $17e4                                ; $7f36: $d4 $e4 $17
    ld l, a                                       ; $7f39: $6f
    db $fd                                        ; $7f3a: $fd
    rla                                           ; $7f3b: $17
    ld l, d                                       ; $7f3c: $6a
    ld b, b                                       ; $7f3d: $40
    rst $28                                       ; $7f3e: $ef
    jr nc, jr_027_7f7c                            ; $7f3f: $30 $3b

    ld h, l                                       ; $7f41: $65
    push hl                                       ; $7f42: $e5
    and l                                         ; $7f43: $a5
    dec c                                         ; $7f44: $0d
    ld d, e                                       ; $7f45: $53
    ld h, d                                       ; $7f46: $62
    ld c, e                                       ; $7f47: $4b
    cpl                                           ; $7f48: $2f

jr_027_7f49:
    cpl                                           ; $7f49: $2f
    db $eb                                        ; $7f4a: $eb
    and h                                         ; $7f4b: $a4
    rst $18                                       ; $7f4c: $df
    and h                                         ; $7f4d: $a4
    ld e, l                                       ; $7f4e: $5d
    ld a, [bc]                                    ; $7f4f: $0a
    db $e4                                        ; $7f50: $e4
    reti                                          ; $7f51: $d9


    ld a, l                                       ; $7f52: $7d
    ld [hl], d                                    ; $7f53: $72
    ld b, b                                       ; $7f54: $40
    jr jr_027_7f7e                                ; $7f55: $18 $27

    jr jr_027_7f49                                ; $7f57: $18 $f0

    add l                                         ; $7f59: $85
    ld e, d                                       ; $7f5a: $5a
    rst $38                                       ; $7f5b: $ff
    add c                                         ; $7f5c: $81
    sub c                                         ; $7f5d: $91

Jump_027_7f5e:
    sbc a                                         ; $7f5e: $9f
    rst $20                                       ; $7f5f: $e7
    adc d                                         ; $7f60: $8a
    ld e, d                                       ; $7f61: $5a
    ld a, a                                       ; $7f62: $7f
    ld c, l                                       ; $7f63: $4d
    ld a, [de]                                    ; $7f64: $1a
    add hl, de                                    ; $7f65: $19
    inc de                                        ; $7f66: $13
    dec c                                         ; $7f67: $0d
    sub d                                         ; $7f68: $92
    jp z, $bf65                                   ; $7f69: $ca $65 $bf

    jr nz, jr_027_7f14                            ; $7f6c: $20 $a6

    push af                                       ; $7f6e: $f5
    ld h, c                                       ; $7f6f: $61
    ld c, c                                       ; $7f70: $49
    cp e                                          ; $7f71: $bb
    or $9a                                        ; $7f72: $f6 $9a
    inc [hl]                                      ; $7f74: $34
    db $eb                                        ; $7f75: $eb
    call c, Call_000_3eaa                         ; $7f76: $dc $aa $3e
    cpl                                           ; $7f79: $2f
    rra                                           ; $7f7a: $1f
    and d                                         ; $7f7b: $a2

jr_027_7f7c:
    or l                                          ; $7f7c: $b5
    ld h, h                                       ; $7f7d: $64

jr_027_7f7e:
    ld hl, sp+$2b                                 ; $7f7e: $f8 $2b
    cpl                                           ; $7f80: $2f
    ld l, l                                       ; $7f81: $6d
    ld e, b                                       ; $7f82: $58
    and l                                         ; $7f83: $a5
    or h                                          ; $7f84: $b4
    ld h, d                                       ; $7f85: $62
    call nz, $8ba7                                ; $7f86: $c4 $a7 $8b
    rst $10                                       ; $7f89: $d7
    dec a                                         ; $7f8a: $3d
    ld a, $c2                                     ; $7f8b: $3e $c2
    xor l                                         ; $7f8d: $ad
    ld a, [de]                                    ; $7f8e: $1a
    ret z                                         ; $7f8f: $c8

    ld h, l                                       ; $7f90: $65
    call c, Call_027_45f1                         ; $7f91: $dc $f1 $45
    cp l                                          ; $7f94: $bd
    ld b, $d3                                     ; $7f95: $06 $d3
    dec b                                         ; $7f97: $05
    sbc c                                         ; $7f98: $99
    ld l, h                                       ; $7f99: $6c
    sbc l                                         ; $7f9a: $9d
    xor b                                         ; $7f9b: $a8
    push de                                       ; $7f9c: $d5
    cpl                                           ; $7f9d: $2f
    ld l, c                                       ; $7f9e: $69
    ld e, [hl]                                    ; $7f9f: $5e
    ld a, [hl]                                    ; $7fa0: $7e
    add c                                         ; $7fa1: $81
    and h                                         ; $7fa2: $a4
    ld hl, $f306                                  ; $7fa3: $21 $06 $f3
    sbc h                                         ; $7fa6: $9c
    ld a, l                                       ; $7fa7: $7d
    adc c                                         ; $7fa8: $89
    xor l                                         ; $7fa9: $ad
    cp h                                          ; $7faa: $bc
    or h                                          ; $7fab: $b4
    and c                                         ; $7fac: $a1
    dec hl                                        ; $7fad: $2b
    ld b, $ff                                     ; $7fae: $06 $ff
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
